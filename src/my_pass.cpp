#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PatternMatch.h"
#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

using namespace llvm;
using namespace llvm::PatternMatch;

namespace {

const uint64_t three = 3;

bool matchA3A(Value *Term, Value *A) {
  Value *op1, *op2;
  if (!match(Term, m_Mul(m_Value(op1), m_Value(op2))))
    return false;

  if (op2 == A) {
    if (match(op1, m_Mul(m_Specific(A), m_SpecificInt(three))) ||
        match(op1, m_Mul(m_SpecificInt(three), m_Specific(A)))) {
      return true;
    }
  }

  if (op1 == A) {
    if (match(op2, m_Mul(m_Specific(A), m_SpecificInt(three))) ||
        match(op2, m_Mul(m_SpecificInt(three), m_Specific(A)))) {
      return true;
    }
  }

  return false;
}

bool matchA3plusBtimesB(Value *Term, Value *A, Value *B) {
  Value *op1, *op2;
  if (!match(Term, m_Mul(m_Value(op1), m_Value(op2))))
    return false;

  Value *A3plusB_expr = nullptr;
  Value *B_operand = nullptr;

  if (op2 == B) {
    A3plusB_expr = op1;
    B_operand = op2;
  } else if (op1 == B) {
    A3plusB_expr = op2;
    B_operand = op1;
  } else {
    return false;
  }

  Value *A3_expr;
  Value *B_in_add_operand;

  if (!match(A3plusB_expr,
             m_Add(m_Value(A3_expr), m_Value(B_in_add_operand)))) {
    return false;
  }

  if (B_in_add_operand != B) {
    if (A3_expr == B) {
      std::swap(A3_expr, B_in_add_operand);
    } else {
      return false;
    }
  }

  if (match(A3_expr, m_Mul(m_Specific(A), m_SpecificInt(three))) ||
      match(A3_expr, m_Mul(m_SpecificInt(three), m_Specific(A)))) {
    return true;
  }

  return false;
}

bool matchX1(Value *X, Value *A, Value *B) {
  //  (((A*3)+B)*B + (A*3)*A)*B

  Value *Op1, *Op2;
  if (!match(X, m_Add(m_Value(Op1), m_Value(Op2)))) {
    return false;
  }

  if (matchA3A(Op1, A) && matchA3plusBtimesB(Op2, A, B)) {
    return true;
  }

  if (matchA3A(Op2, A) && matchA3plusBtimesB(Op1, A, B)) {
    return true;
  }

  return false;
}

bool matchSquare(Value *Term) {
  Value *op1, *op2;
  return (match(Term, m_Mul(m_Value(op1), m_Value(op2))) && op1 == op2);
}

bool matchAPlusB(Value *Term, Value *A, Value *B) {
  return match(Term, m_Add(m_Specific(A), m_Specific(B))) ||
         match(Term, m_Add(m_Specific(B), m_Specific(A)));
}

bool matchA3(Value *Term, Value *A) {
  return match(Term, m_Mul(m_Specific(A), m_SpecificInt(3)));
}

bool matchX2(Value *X, Value *A, Value *B) {
  // ((A*3 + B) * B + A*3*A)*A
  Value *op1, *op2;
  if (!match(X, m_Add(m_Value(op1), m_Value(op2)))) {
    return false;
  }

  Value *other;
  if (matchSquare(op1)) {
    other = op2;
  } else if (matchSquare(op2)) {
    other = op1;
  } else {
    return false;
  }

  Value *op3, *op4;
  if (!match(other, m_Mul(m_Value(op3), m_Value(op4)))) {
    return false;
  }

  if (!matchA3(op3, A) && !matchA3(op4, A)) {
    return false;
  }

  if (!matchAPlusB(op4, A, B) && !matchAPlusB(op3, A, B)) {
    return false;
  }

  return true;
}

bool matchXTimesB(Value *XTimesB, Value *A, Value *&B_out) {
  Value *Op1, *Op2;
  if (!match(XTimesB, m_Mul(m_Value(Op1), m_Value(Op2)))) {
    return false;
  }

  if (matchX1(Op1, A, Op2)) {
    B_out = Op2;
    errs() << "MyPeepholePass: B is " << *Op2 << "\n";
    return true;
  }

  if (matchX1(Op2, A, Op1)) {
    B_out = Op1;
    errs() << "MyPeepholePass: B is " << *Op1 << "\n";
    return true;
  }

  if (matchX2(Op1, A, Op2)) {
    B_out = Op2;
    return true;
  }

  if (matchX2(Op2, A, Op1)) {
    B_out = Op1;
    return true;
  }

  return false;
}

bool matchACubed(Value *V, Value *&A) {
  Value *MulAAA_op1, *MulAAA_op2;
  if (!match(V, m_Mul(m_Value(MulAAA_op1), m_Value(MulAAA_op2))))
    return false;

  Value *AA_op1_v1, *AA_op2_v1;
  if (match(MulAAA_op1, m_Mul(m_Value(AA_op1_v1), m_Value(AA_op2_v1))) &&
      AA_op1_v1 == AA_op2_v1 && MulAAA_op2 == AA_op1_v1) {
    A = AA_op1_v1;
    return true;
  } else {
    Value *AA_op1_v2, *AA_op2_v2;
    if (match(MulAAA_op2, m_Mul(m_Value(AA_op1_v2), m_Value(AA_op2_v2))) &&
        AA_op1_v2 == AA_op2_v2 && MulAAA_op1 == AA_op1_v2) {
      A = AA_op1_v2;
      return true;
    }
  }

  return false;
}

bool optimizeCubeOfSum(Function &F) {
  bool modified = false;

  for (BasicBlock &BB : F) {
    for (Instruction &I : BB) {
      Value *PotentialRootVal = &I;

      Value *Captured_A = nullptr;
      Value *Captured_B = nullptr;

      // Допустим, мы ожидаем ( ( ( (A*3)+B )*B + (A*3)*A )*B ) + (A*A*A)

      // 1. Сначала найдем кандидата на A*A*A. Оттуда извлечем A.
      // 2. Затем извлечем B из X * B.
      // 3. Проверим всю оставшуюся структуру с этими A и B.

      Value *Y, *Z;
      if (!match(PotentialRootVal, m_Add(m_Value(Y), m_Value(Z))))
        continue;

      errs() << "MyPeepholePass: Found root\n";

      Value *XTimesB = nullptr;
      if (matchACubed(Y, Captured_A))
        XTimesB = Z;
      else if (matchACubed(Z, Captured_A))
        XTimesB = Y;
      else
        continue;

      errs() << "MyPeepholePass: Found A " << *Captured_A << '\n';

      if (!matchXTimesB(XTimesB, Captured_A, Captured_B))
        continue;

      errs() << "MyPeepholePass: Matched (A+B)^3 for instr " << I
             << " with A=" << *Captured_A << ", B=" << *Captured_B << "\n";

      IRBuilder<> Builder(&I);

      bool original_had_nsw = false;
      bool original_had_nuw = false;

      if (auto *OrigRootInst =
              dyn_cast<OverflowingBinaryOperator>(PotentialRootVal)) {
        if (OrigRootInst->hasNoSignedWrap()) {
          original_had_nsw = true;
        }
        if (OrigRootInst->hasNoUnsignedWrap()) {
          original_had_nuw = true;
        }
      }

      Value *Sum_AB, *Sum_AB_sq, *NewCalcVal;

      if (original_had_nsw) {
        Sum_AB = Builder.CreateNSWAdd(Captured_A, Captured_B, "sum_ab_opt_nsw");
        Sum_AB_sq = Builder.CreateNSWMul(Sum_AB, Sum_AB, "sum_ab_sq_opt_nsw");
        NewCalcVal =
            Builder.CreateNSWMul(Sum_AB_sq, Sum_AB, "cub_sum_ab_opt_nsw");
      } else if (original_had_nuw) {
        Sum_AB = Builder.CreateNUWAdd(Captured_A, Captured_B, "sum_ab_opt_nuw");
        Sum_AB_sq = Builder.CreateNUWMul(Sum_AB, Sum_AB, "sum_ab_sq_opt_nuw");
        NewCalcVal =
            Builder.CreateNUWMul(Sum_AB_sq, Sum_AB, "cub_sum_ab_opt_nuw");
      } else {
        Sum_AB = Builder.CreateAdd(Captured_A, Captured_B, "sum_ab_opt");
        Sum_AB_sq = Builder.CreateMul(Sum_AB, Sum_AB, "sum_ab_sq_opt");
        NewCalcVal = Builder.CreateMul(Sum_AB_sq, Sum_AB, "cub_sum_ab_opt");
      }

      I.replaceAllUsesWith(NewCalcVal);
      modified = true;
    }
  }

  return modified;
}

class MyPeepholePass : public PassInfoMixin<MyPeepholePass> {
public:
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &AM) {
    errs() << "myPeepholePass: start";
    bool modified = optimizeCubeOfSum(F);
    return modified ? PreservedAnalyses::none() : PreservedAnalyses::all();
  }

  static StringRef name() { return "MyPeepholePass"; }
};

} // namespace

extern "C" LLVM_ATTRIBUTE_WEAK PassPluginLibraryInfo llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "myPeepholePass", "v0.1",
          [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "myPeepholePass") {
                    FPM.addPass(MyPeepholePass());
                    return true;
                  }
                  return false;
                });
            
            PB.registerPeepholeEPCallback(
                [](FunctionPassManager &FPM, OptimizationLevel Level) {
                    if (Level.getSpeedupLevel() > 0) { 
                        errs() << "Plugin: Registering MyActualPeepholePass via PeepholeEPCallback\n";
                        FPM.addPass(MyPeepholePass());
                    }
                }
            );
          }};
}