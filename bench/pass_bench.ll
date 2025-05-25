; ModuleID = 'pass_bench.cpp'
source_filename = "pass_bench.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<long long, std::allocator<long long>>::_Vector_impl" }
%"struct.std::_Vector_base<long long, std::allocator<long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long long, std::allocator<long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long long, std::allocator<long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::mersenne_twister_engine" = type { [312 x i64], i64 }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::tuple.21" = type { %"struct.std::_Tuple_impl.22" }
%"struct.std::_Tuple_impl.22" = type { %"struct.std::_Head_base.23" }
%"struct.std::_Head_base.23" = type { ptr }
%"class.std::tuple.24" = type { i8 }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }

$_ZNSt6vectorIxSaIxEED2Ev = comdat any

$_ZSt11make_uniqueIN9benchmark8internal17FunctionBenchmarkEJRA13_KcRFvRNS0_5StateEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt6vectorIxSaIxEE17_M_default_appendEm = comdat any

$_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv = comdat any

$_ZSt19piecewise_construct = comdat any

@A_data = dso_local global %"class.std::vector" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@B_data = dso_local global %"class.std::vector" zeroinitializer, align 8
@_ZL27benchmark_uniq_2_benchmark_ = internal global ptr null, align 8
@.str = private unnamed_addr constant [13 x i8] c"BM_CubeOfSum\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"cached_ > 0\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"/usr/local/include/benchmark/benchmark.h\00", align 1
@__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv = private unnamed_addr constant [61 x i8] c"StateIterator &benchmark::State::StateIterator::operator++()\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"items_per_second\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_pass_bench.cpp, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_Z11cube_of_sumxx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #1 {
entry:
  %mul = mul nsw i64 %a, %a
  %mul1 = mul nsw i64 %mul, %a
  %mul2 = mul nsw i64 %a, 3
  %mul10 = mul i64 %b, %b
  %reass.add23 = add i64 %b, %a
  %reass.mul24 = mul i64 %mul2, %reass.add23
  %reass.add22 = add i64 %reass.mul24, %mul10
  %reass.mul = mul i64 %reass.add22, %b
  %add11 = add i64 %reass.mul, %mul1
  ret i64 %add11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIxSaIxEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
invoke.cont:
  %0 = load ptr, ptr %this, align 8, !tbaa !5
  %tobool.not.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i, label %_ZNSt12_Vector_baseIxSaIxEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont
  %_M_end_of_storage.i = getelementptr inbounds nuw i8, ptr %this, i64 16
  %1 = load ptr, ptr %_M_end_of_storage.i, align 8, !tbaa !11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %sub.ptr.sub.i) #20
  br label %_ZNSt12_Vector_baseIxSaIxEED2Ev.exit

_ZNSt12_Vector_baseIxSaIxEED2Ev.exit:             ; preds = %invoke.cont, %if.then.i.i
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_Z14InitializeDatav() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
entry:
  %rng = alloca %"class.std::mersenne_twister_engine", align 8
  %0 = load ptr, ptr @A_data, align 8, !tbaa !12
  %1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @A_data, i64 8), align 8, !tbaa !12
  %cmp.i.i = icmp eq ptr %0, %1
  br i1 %cmp.i.i, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %return

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %entry
  tail call void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) @A_data, i64 noundef 10000000)
  %2 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @B_data, i64 8), align 8, !tbaa !13
  %3 = load ptr, ptr @B_data, align 8, !tbaa !5
  %sub.ptr.lhs.cast.i.i15 = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast.i.i16 = ptrtoint ptr %3 to i64
  %sub.ptr.sub.i.i17 = sub i64 %sub.ptr.lhs.cast.i.i15, %sub.ptr.rhs.cast.i.i16
  %sub.ptr.div.i.i18 = ashr exact i64 %sub.ptr.sub.i.i17, 3
  %cmp.i19 = icmp ult i64 %sub.ptr.div.i.i18, 10000000
  br i1 %cmp.i19, label %if.then.i26, label %if.else.i20

if.then.i26:                                      ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %sub.i27 = sub nuw nsw i64 10000000, %sub.ptr.div.i.i18
  tail call void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) @B_data, i64 noundef %sub.i27)
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit28

if.else.i20:                                      ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %cmp4.i21.not = icmp eq i64 %sub.ptr.sub.i.i17, 80000000
  br i1 %cmp4.i21.not, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit28, label %if.then5.i22

if.then5.i22:                                     ; preds = %if.else.i20
  %add.ptr.i23 = getelementptr inbounds nuw i8, ptr %3, i64 80000000
  %tobool.not.i.i24 = icmp eq ptr %2, %add.ptr.i23
  br i1 %tobool.not.i.i24, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit28, label %invoke.cont.i.i25

invoke.cont.i.i25:                                ; preds = %if.then5.i22
  store ptr %add.ptr.i23, ptr getelementptr inbounds nuw (i8, ptr @B_data, i64 8), align 8, !tbaa !13
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit28

_ZNSt6vectorIxSaIxEE6resizeEm.exit28:             ; preds = %if.then.i26, %if.else.i20, %if.then5.i22, %invoke.cont.i.i25
  call void @llvm.lifetime.start.p0(i64 2504, ptr nonnull %rng) #21
  %call2 = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #21
  store i64 %call2, ptr %rng, align 8, !tbaa !14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.1, %_ZNSt6vectorIxSaIxEE6resizeEm.exit28
  %4 = phi i64 [ %call2, %_ZNSt6vectorIxSaIxEE6resizeEm.exit28 ], [ %add.i.i.1, %for.body.i.i.1 ]
  %__i.016.i.i = phi i64 [ 1, %_ZNSt6vectorIxSaIxEE6resizeEm.exit28 ], [ %inc.i.i.1, %for.body.i.i.1 ]
  %shr.i.i = lshr i64 %4, 62
  %xor.i.i = xor i64 %shr.i.i, %4
  %mul.i.i = mul i64 %xor.i.i, 6364136223846793005
  %add.i.i = add i64 %mul.i.i, %__i.016.i.i
  %arrayidx7.i.i = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %__i.016.i.i
  store i64 %add.i.i, ptr %arrayidx7.i.i, align 8, !tbaa !14
  %inc.i.i = add nuw nsw i64 %__i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %inc.i.i, 312
  br i1 %exitcond.not.i.i, label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit, label %for.body.i.i.1, !llvm.loop !16

for.body.i.i.1:                                   ; preds = %for.body.i.i
  %shr.i.i.1 = lshr i64 %add.i.i, 62
  %xor.i.i.1 = xor i64 %shr.i.i.1, %add.i.i
  %mul.i.i.1 = mul i64 %xor.i.i.1, 6364136223846793005
  %add.i.i.1 = add i64 %mul.i.i.1, %inc.i.i
  %arrayidx7.i.i.1 = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %inc.i.i
  store i64 %add.i.i.1, ptr %arrayidx7.i.i.1, align 8, !tbaa !14
  %inc.i.i.1 = add nuw nsw i64 %__i.016.i.i, 2
  br label %for.body.i.i

_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit: ; preds = %for.body.i.i
  %_M_p.i.i = getelementptr inbounds nuw i8, ptr %rng, i64 2496
  store i64 312, ptr %_M_p.i.i, align 8, !tbaa !18
  %arrayidx19.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %rng, i64 1248
  %arrayidx42.i.i = getelementptr inbounds nuw i8, ptr %rng, i64 2488
  %arrayidx49.i.i = getelementptr inbounds nuw i8, ptr %rng, i64 1240
  %arrayidx19.i.i = getelementptr inbounds nuw i8, ptr %rng, i64 2480
  %arrayidx23.i.i = getelementptr inbounds nuw i8, ptr %rng, i64 2488
  %arrayidx28.i.i = getelementptr inbounds nuw i8, ptr %rng, i64 1232
  %arrayidx19.i.i111 = getelementptr inbounds nuw i8, ptr %rng, i64 2480
  %arrayidx23.i.i114 = getelementptr inbounds nuw i8, ptr %rng, i64 2488
  %arrayidx28.i.i118 = getelementptr inbounds nuw i8, ptr %rng, i64 1232
  br label %if.then.i.i

for.cond.cleanup:                                 ; preds = %_ZNSt24uniform_int_distributionIxEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEExRT_.exit61
  call void @llvm.lifetime.end.p0(i64 2504, ptr nonnull %rng) #21
  br label %return

if.then.i.i:                                      ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit, %_ZNSt24uniform_int_distributionIxEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEExRT_.exit61
  %indvars.iv = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit ], [ %indvars.iv.next, %_ZNSt24uniform_int_distributionIxEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEExRT_.exit61 ]
  %call.i.i.i = call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %rng)
  %conv.i.i.i = zext i64 %call.i.i.i to i128
  %mul.i.i.i = mul nuw nsw i128 %conv.i.i.i, 201
  %conv2.i.i.i = trunc i128 %mul.i.i.i to i64
  %extract18.i.i.i = lshr i128 %mul.i.i.i, 64
  %extract.t19.i.i.i = trunc nuw nsw i128 %extract18.i.i.i to i64
  %or.cond = icmp ult i64 %conv2.i.i.i, 151
  br i1 %or.cond, label %while.body.i.i.i.preheader, label %if.then.i.i34

while.body.i.i.i.preheader:                       ; preds = %if.then.i.i
  %.pre = load i64, ptr %_M_p.i.i, align 8, !tbaa !18
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.preheader, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit
  %5 = phi i64 [ %.pre, %while.body.i.i.i.preheader ], [ %inc.i, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit ]
  %cmp.i63 = icmp ugt i64 %5, 311
  br i1 %cmp.i63, label %vector.ph176, label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit

vector.ph176:                                     ; preds = %while.body.i.i.i
  %.pre.i.i = load i64, ptr %rng, align 8, !tbaa !14
  %vector.recur.init179 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph176
  %index178 = phi i64 [ 0, %vector.ph176 ], [ %index.next183, %vector.body177 ]
  %vector.recur180 = phi <2 x i64> [ %vector.recur.init179, %vector.ph176 ], [ %wide.load181, %vector.body177 ]
  %6 = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %index178
  %7 = or disjoint i64 %index178, 1
  %8 = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %7
  %wide.load181 = load <2 x i64>, ptr %8, align 8, !tbaa !14
  %9 = shufflevector <2 x i64> %vector.recur180, <2 x i64> %wide.load181, <2 x i32> <i32 1, i32 2>
  %10 = and <2 x i64> %9, splat (i64 -2147483648)
  %11 = and <2 x i64> %wide.load181, splat (i64 2147483646)
  %12 = or disjoint <2 x i64> %11, %10
  %13 = add nuw nsw i64 %index178, 156
  %14 = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %13
  %wide.load182 = load <2 x i64>, ptr %14, align 8, !tbaa !14
  %15 = lshr exact <2 x i64> %12, splat (i64 1)
  %16 = xor <2 x i64> %15, %wide.load182
  %17 = and <2 x i64> %wide.load181, splat (i64 1)
  %18 = icmp eq <2 x i64> %17, zeroinitializer
  %19 = select <2 x i1> %18, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %20 = xor <2 x i64> %16, %19
  store <2 x i64> %20, ptr %6, align 8, !tbaa !14
  %index.next183 = add nuw i64 %index178, 2
  %21 = icmp eq i64 %index.next183, 156
  br i1 %21, label %vector.ph162, label %vector.body177, !llvm.loop !20

vector.ph162:                                     ; preds = %vector.body177
  %.pre74.i.i = load i64, ptr %arrayidx19.phi.trans.insert.i.i, align 8, !tbaa !14
  %vector.recur.init165 = insertelement <2 x i64> poison, i64 %.pre74.i.i, i64 1
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph162
  %index164 = phi i64 [ 0, %vector.ph162 ], [ %index.next170, %vector.body163 ]
  %vector.recur166 = phi <2 x i64> [ %vector.recur.init165, %vector.ph162 ], [ %wide.load168, %vector.body163 ]
  %offset.idx167 = add i64 %index164, 156
  %22 = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %offset.idx167
  %23 = add i64 %index164, 157
  %24 = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %23
  %wide.load168 = load <2 x i64>, ptr %24, align 8, !tbaa !14
  %25 = shufflevector <2 x i64> %vector.recur166, <2 x i64> %wide.load168, <2 x i32> <i32 1, i32 2>
  %26 = and <2 x i64> %25, splat (i64 -2147483648)
  %27 = and <2 x i64> %wide.load168, splat (i64 2147483646)
  %28 = or disjoint <2 x i64> %27, %26
  %29 = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %index164
  %wide.load169 = load <2 x i64>, ptr %29, align 8, !tbaa !14
  %30 = lshr exact <2 x i64> %28, splat (i64 1)
  %31 = xor <2 x i64> %30, %wide.load169
  %32 = and <2 x i64> %wide.load168, splat (i64 1)
  %33 = icmp eq <2 x i64> %32, zeroinitializer
  %34 = select <2 x i1> %33, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %35 = xor <2 x i64> %31, %34
  store <2 x i64> %35, ptr %22, align 8, !tbaa !14
  %index.next170 = add nuw i64 %index164, 2
  %36 = icmp eq i64 %index.next170, 154
  br i1 %36, label %for.body16.i.i, label %vector.body163, !llvm.loop !23

for.body16.i.i:                                   ; preds = %vector.body163
  %vector.recur.extract172 = extractelement <2 x i64> %wide.load168, i64 1
  %and20.i.i = and i64 %vector.recur.extract172, -2147483648
  %37 = load i64, ptr %arrayidx23.i.i, align 8, !tbaa !14
  %and24.i.i = and i64 %37, 2147483646
  %or25.i.i = or disjoint i64 %and24.i.i, %and20.i.i
  %38 = load i64, ptr %arrayidx28.i.i, align 8, !tbaa !14
  %shr29.i.i = lshr exact i64 %or25.i.i, 1
  %xor30.i.i = xor i64 %shr29.i.i, %38
  %and31.i.i = and i64 %37, 1
  %tobool32.not.i.i = icmp eq i64 %and31.i.i, 0
  %cond33.i.i = select i1 %tobool32.not.i.i, i64 0, i64 -5403634167711393303
  %xor34.i.i = xor i64 %xor30.i.i, %cond33.i.i
  store i64 %xor34.i.i, ptr %arrayidx19.i.i, align 8, !tbaa !14
  %39 = load i64, ptr %arrayidx42.i.i, align 8, !tbaa !14
  %and43.i.i = and i64 %39, -2147483648
  %40 = load i64, ptr %rng, align 8, !tbaa !14
  %and46.i.i = and i64 %40, 2147483646
  %or47.i.i = or disjoint i64 %and46.i.i, %and43.i.i
  %41 = load i64, ptr %arrayidx49.i.i, align 8, !tbaa !14
  %shr50.i.i = lshr exact i64 %or47.i.i, 1
  %xor51.i.i = xor i64 %shr50.i.i, %41
  %and52.i.i = and i64 %40, 1
  %tobool53.not.i.i = icmp eq i64 %and52.i.i, 0
  %cond54.i.i = select i1 %tobool53.not.i.i, i64 0, i64 -5403634167711393303
  %xor55.i.i = xor i64 %xor51.i.i, %cond54.i.i
  store i64 %xor55.i.i, ptr %arrayidx42.i.i, align 8, !tbaa !14
  br label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit

_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit: ; preds = %while.body.i.i.i, %for.body16.i.i
  %42 = phi i64 [ 0, %for.body16.i.i ], [ %5, %while.body.i.i.i ]
  %inc.i = add nuw nsw i64 %42, 1
  store i64 %inc.i, ptr %_M_p.i.i, align 8, !tbaa !18
  %arrayidx.i = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %42
  %43 = load i64, ptr %arrayidx.i, align 8, !tbaa !14
  %shr.i = lshr i64 %43, 29
  %and.i = and i64 %shr.i, 22906492245
  %xor.i = xor i64 %and.i, %43
  %shl.i = shl i64 %xor.i, 17
  %and3.i = and i64 %shl.i, 8202884508482404352
  %xor4.i = xor i64 %and3.i, %xor.i
  %shl5.i = shl i64 %xor4.i, 37
  %and6.i = and i64 %shl5.i, -2270628950310912
  %xor7.i = xor i64 %and6.i, %xor4.i
  %shr8.i = lshr i64 %xor7.i, 43
  %xor9.i = xor i64 %shr8.i, %xor7.i
  %conv5.i.i.i = zext i64 %xor9.i to i128
  %mul7.i.i.i = mul nuw nsw i128 %conv5.i.i.i, 201
  %conv8.i.i.i = trunc i128 %mul7.i.i.i to i64
  %cmp3.i.i.i = icmp ult i64 %conv8.i.i.i, 151
  br i1 %cmp3.i.i.i, label %while.body.i.i.i, label %while.cond.if.end.loopexit_crit_edge.i.i.i, !llvm.loop !24

while.cond.if.end.loopexit_crit_edge.i.i.i:       ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit
  %extract22.le.i.i.i = lshr i128 %mul7.i.i.i, 64
  %extract.t23.le.i.i.i = trunc nuw nsw i128 %extract22.le.i.i.i to i64
  br label %if.then.i.i34

if.then.i.i34:                                    ; preds = %while.cond.if.end.loopexit_crit_edge.i.i.i, %if.then.i.i
  %__ret.0.i.i = phi i64 [ %extract.t19.i.i.i, %if.then.i.i ], [ %extract.t23.le.i.i.i, %while.cond.if.end.loopexit_crit_edge.i.i.i ]
  %add17.i.i = add nsw i64 %__ret.0.i.i, -100
  %44 = load ptr, ptr @A_data, align 8, !tbaa !5
  %add.ptr.i30 = getelementptr inbounds nuw i64, ptr %44, i64 %indvars.iv
  store i64 %add17.i.i, ptr %add.ptr.i30, align 8, !tbaa !25
  %call.i.i.i36 = call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %rng)
  %conv.i.i.i37 = zext i64 %call.i.i.i36 to i128
  %mul.i.i.i39 = mul nuw nsw i128 %conv.i.i.i37, 201
  %conv2.i.i.i40 = trunc i128 %mul.i.i.i39 to i64
  %extract18.i.i.i42 = lshr i128 %mul.i.i.i39, 64
  %extract.t19.i.i.i43 = trunc nuw nsw i128 %extract18.i.i.i42 to i64
  %or.cond143 = icmp ult i64 %conv2.i.i.i40, 151
  br i1 %or.cond143, label %while.body.i.i.i50.preheader, label %_ZNSt24uniform_int_distributionIxEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEExRT_.exit61

while.body.i.i.i50.preheader:                     ; preds = %if.then.i.i34
  %.pre146 = load i64, ptr %_M_p.i.i, align 8, !tbaa !18
  br label %while.body.i.i.i50

while.body.i.i.i50:                               ; preds = %while.body.i.i.i50.preheader, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit138
  %45 = phi i64 [ %.pre146, %while.body.i.i.i50.preheader ], [ %inc.i74, %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit138 ]
  %cmp.i73 = icmp ugt i64 %45, 311
  br i1 %cmp.i73, label %vector.ph149, label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit138

vector.ph149:                                     ; preds = %while.body.i.i.i50
  %.pre.i.i88 = load i64, ptr %rng, align 8, !tbaa !14
  %vector.recur.init152 = insertelement <2 x i64> poison, i64 %.pre.i.i88, i64 1
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph149
  %index151 = phi i64 [ 0, %vector.ph149 ], [ %index.next156, %vector.body150 ]
  %vector.recur153 = phi <2 x i64> [ %vector.recur.init152, %vector.ph149 ], [ %wide.load154, %vector.body150 ]
  %46 = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %index151
  %47 = or disjoint i64 %index151, 1
  %48 = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %47
  %wide.load154 = load <2 x i64>, ptr %48, align 8, !tbaa !14
  %49 = shufflevector <2 x i64> %vector.recur153, <2 x i64> %wide.load154, <2 x i32> <i32 1, i32 2>
  %50 = and <2 x i64> %49, splat (i64 -2147483648)
  %51 = and <2 x i64> %wide.load154, splat (i64 2147483646)
  %52 = or disjoint <2 x i64> %51, %50
  %53 = add nuw nsw i64 %index151, 156
  %54 = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %53
  %wide.load155 = load <2 x i64>, ptr %54, align 8, !tbaa !14
  %55 = lshr exact <2 x i64> %52, splat (i64 1)
  %56 = xor <2 x i64> %55, %wide.load155
  %57 = and <2 x i64> %wide.load154, splat (i64 1)
  %58 = icmp eq <2 x i64> %57, zeroinitializer
  %59 = select <2 x i1> %58, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %60 = xor <2 x i64> %56, %59
  store <2 x i64> %60, ptr %46, align 8, !tbaa !14
  %index.next156 = add nuw i64 %index151, 2
  %61 = icmp eq i64 %index.next156, 156
  br i1 %61, label %vector.ph, label %vector.body150, !llvm.loop !27

vector.ph:                                        ; preds = %vector.body150
  %.pre74.i.i108 = load i64, ptr %arrayidx19.phi.trans.insert.i.i, align 8, !tbaa !14
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre74.i.i108, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %offset.idx = add i64 %index, 156
  %62 = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %offset.idx
  %63 = add i64 %index, 157
  %64 = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %63
  %wide.load = load <2 x i64>, ptr %64, align 8, !tbaa !14
  %65 = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %66 = and <2 x i64> %65, splat (i64 -2147483648)
  %67 = and <2 x i64> %wide.load, splat (i64 2147483646)
  %68 = or disjoint <2 x i64> %67, %66
  %69 = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %index
  %wide.load147 = load <2 x i64>, ptr %69, align 8, !tbaa !14
  %70 = lshr exact <2 x i64> %68, splat (i64 1)
  %71 = xor <2 x i64> %70, %wide.load147
  %72 = and <2 x i64> %wide.load, splat (i64 1)
  %73 = icmp eq <2 x i64> %72, zeroinitializer
  %74 = select <2 x i1> %73, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %75 = xor <2 x i64> %71, %74
  store <2 x i64> %75, ptr %62, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2
  %76 = icmp eq i64 %index.next, 154
  br i1 %76, label %for.body16.i.i109, label %vector.body, !llvm.loop !28

for.body16.i.i109:                                ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %and20.i.i112 = and i64 %vector.recur.extract, -2147483648
  %77 = load i64, ptr %arrayidx23.i.i114, align 8, !tbaa !14
  %and24.i.i115 = and i64 %77, 2147483646
  %or25.i.i116 = or disjoint i64 %and24.i.i115, %and20.i.i112
  %78 = load i64, ptr %arrayidx28.i.i118, align 8, !tbaa !14
  %shr29.i.i119 = lshr exact i64 %or25.i.i116, 1
  %xor30.i.i120 = xor i64 %shr29.i.i119, %78
  %and31.i.i121 = and i64 %77, 1
  %tobool32.not.i.i122 = icmp eq i64 %and31.i.i121, 0
  %cond33.i.i123 = select i1 %tobool32.not.i.i122, i64 0, i64 -5403634167711393303
  %xor34.i.i124 = xor i64 %xor30.i.i120, %cond33.i.i123
  store i64 %xor34.i.i124, ptr %arrayidx19.i.i111, align 8, !tbaa !14
  %79 = load i64, ptr %arrayidx42.i.i, align 8, !tbaa !14
  %and43.i.i128 = and i64 %79, -2147483648
  %80 = load i64, ptr %rng, align 8, !tbaa !14
  %and46.i.i129 = and i64 %80, 2147483646
  %or47.i.i130 = or disjoint i64 %and46.i.i129, %and43.i.i128
  %81 = load i64, ptr %arrayidx49.i.i, align 8, !tbaa !14
  %shr50.i.i132 = lshr exact i64 %or47.i.i130, 1
  %xor51.i.i133 = xor i64 %shr50.i.i132, %81
  %and52.i.i134 = and i64 %80, 1
  %tobool53.not.i.i135 = icmp eq i64 %and52.i.i134, 0
  %cond54.i.i136 = select i1 %tobool53.not.i.i135, i64 0, i64 -5403634167711393303
  %xor55.i.i137 = xor i64 %xor51.i.i133, %cond54.i.i136
  store i64 %xor55.i.i137, ptr %arrayidx42.i.i, align 8, !tbaa !14
  br label %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit138

_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit138: ; preds = %while.body.i.i.i50, %for.body16.i.i109
  %82 = phi i64 [ 0, %for.body16.i.i109 ], [ %45, %while.body.i.i.i50 ]
  %inc.i74 = add nuw nsw i64 %82, 1
  store i64 %inc.i74, ptr %_M_p.i.i, align 8, !tbaa !18
  %arrayidx.i75 = getelementptr inbounds nuw [312 x i64], ptr %rng, i64 0, i64 %82
  %83 = load i64, ptr %arrayidx.i75, align 8, !tbaa !14
  %shr.i76 = lshr i64 %83, 29
  %and.i77 = and i64 %shr.i76, 22906492245
  %xor.i78 = xor i64 %and.i77, %83
  %shl.i79 = shl i64 %xor.i78, 17
  %and3.i80 = and i64 %shl.i79, 8202884508482404352
  %xor4.i81 = xor i64 %and3.i80, %xor.i78
  %shl5.i82 = shl i64 %xor4.i81, 37
  %and6.i83 = and i64 %shl5.i82, -2270628950310912
  %xor7.i84 = xor i64 %and6.i83, %xor4.i81
  %shr8.i85 = lshr i64 %xor7.i84, 43
  %xor9.i86 = xor i64 %shr8.i85, %xor7.i84
  %conv5.i.i.i52 = zext i64 %xor9.i86 to i128
  %mul7.i.i.i53 = mul nuw nsw i128 %conv5.i.i.i52, 201
  %conv8.i.i.i54 = trunc i128 %mul7.i.i.i53 to i64
  %cmp3.i.i.i55 = icmp ult i64 %conv8.i.i.i54, 151
  br i1 %cmp3.i.i.i55, label %while.body.i.i.i50, label %while.cond.if.end.loopexit_crit_edge.i.i.i56, !llvm.loop !24

while.cond.if.end.loopexit_crit_edge.i.i.i56:     ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv.exit138
  %extract22.le.i.i.i57 = lshr i128 %mul7.i.i.i53, 64
  %extract.t23.le.i.i.i58 = trunc nuw nsw i128 %extract22.le.i.i.i57 to i64
  br label %_ZNSt24uniform_int_distributionIxEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEExRT_.exit61

_ZNSt24uniform_int_distributionIxEclISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEExRT_.exit61: ; preds = %if.then.i.i34, %while.cond.if.end.loopexit_crit_edge.i.i.i56
  %__ret.0.i.i48 = phi i64 [ %extract.t19.i.i.i43, %if.then.i.i34 ], [ %extract.t23.le.i.i.i58, %while.cond.if.end.loopexit_crit_edge.i.i.i56 ]
  %add17.i.i49 = add nsw i64 %__ret.0.i.i48, -100
  %84 = load ptr, ptr @B_data, align 8, !tbaa !5
  %add.ptr.i62 = getelementptr inbounds nuw i64, ptr %84, i64 %indvars.iv
  store i64 %add17.i.i49, ptr %add.ptr.i62, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10000000
  br i1 %exitcond.not, label %for.cond.cleanup, label %if.then.i.i, !llvm.loop !29

return:                                           ; preds = %entry, %for.cond.cleanup
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #5

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #5

declare noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalESt10unique_ptrINS0_9BenchmarkESt14default_deleteIS2_EE(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11make_uniqueIN9benchmark8internal17FunctionBenchmarkEJRA13_KcRFvRNS0_5StateEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.2") align 8 %agg.result, ptr noundef nonnull align 1 dereferenceable(13) %__args, ptr noundef nonnull %__args1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
entry:
  %__dnew.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %call = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ref.tmp) #21
  %0 = getelementptr inbounds nuw i8, ptr %ref.tmp, i64 16
  store ptr %0, ptr %ref.tmp, align 8, !tbaa !30
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %__args) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__dnew.i.i) #21
  store i64 %call.i.i, ptr %__dnew.i.i, align 8, !tbaa !14
  %cmp.i.i = icmp ugt i64 %call.i.i, 15
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  %call2.i11.i11 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %__dnew.i.i, i64 noundef 0)
          to label %call2.i11.i.noexc unwind label %lpad

call2.i11.i.noexc:                                ; preds = %if.then.i.i
  store ptr %call2.i11.i11, ptr %ref.tmp, align 8, !tbaa !33
  %1 = load i64, ptr %__dnew.i.i, align 8, !tbaa !14
  store i64 %1, ptr %0, align 8, !tbaa !35
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %call2.i11.i.noexc, %entry
  %2 = phi ptr [ %call2.i11.i11, %call2.i11.i.noexc ], [ %0, %entry ]
  switch i64 %call.i.i, label %if.end.i.i.i.i.i [
    i64 1, label %if.then.i.i.i.i
    i64 0, label %invoke.cont
  ]

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  %3 = load i8, ptr %__args, align 1, !tbaa !35
  store i8 %3, ptr %2, align 1, !tbaa !35
  br label %invoke.cont

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %__args, i64 %call.i.i, i1 false)
  br label %invoke.cont

invoke.cont:                                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i, %if.end.i.i
  %4 = load i64, ptr %__dnew.i.i, align 8, !tbaa !14
  %_M_string_length.i.i.i.i = getelementptr inbounds nuw i8, ptr %ref.tmp, i64 8
  store i64 %4, ptr %_M_string_length.i.i.i.i, align 8, !tbaa !36
  %5 = load ptr, ptr %ref.tmp, align 8, !tbaa !33
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 %4
  store i8 0, ptr %arrayidx.i.i.i, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__dnew.i.i) #21
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312) %call, ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %call, align 8, !tbaa !37
  %func_.i = getelementptr inbounds nuw i8, ptr %call, i64 304
  store ptr %__args1, ptr %func_.i, align 8, !tbaa !39
  store ptr %call, ptr %agg.result, align 8, !tbaa !71
  %6 = load ptr, ptr %ref.tmp, align 8, !tbaa !33
  %cmp.i.i.i = icmp eq ptr %6, %0
  br i1 %cmp.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %if.then.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %invoke.cont5
  %7 = load i64, ptr %_M_string_length.i.i.i.i, align 8, !tbaa !36
  %cmp3.i.i.i = icmp ult i64 %7, 16
  call void @llvm.assume(i1 %cmp3.i.i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

if.then.i.i12:                                    ; preds = %invoke.cont5
  %8 = load i64, ptr %0, align 8, !tbaa !35
  %add.i.i.i = add i64 %8, 1
  call void @_ZdlPvm(ptr noundef %6, i64 noundef %add.i.i.i) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %if.then.i.i12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp) #21
  ret void

lpad:                                             ; preds = %if.then.i.i
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad4:                                            ; preds = %invoke.cont
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = load ptr, ptr %ref.tmp, align 8, !tbaa !33
  %cmp.i.i.i13 = icmp eq ptr %11, %0
  br i1 %cmp.i.i.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16, label %if.then.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16: ; preds = %lpad4
  %12 = load i64, ptr %_M_string_length.i.i.i.i, align 8, !tbaa !36
  %cmp3.i.i.i18 = icmp ult i64 %12, 16
  call void @llvm.assume(i1 %cmp3.i.i.i18)
  br label %ehcleanup

if.then.i.i14:                                    ; preds = %lpad4
  %13 = load i64, ptr %0, align 8, !tbaa !35
  %add.i.i.i15 = add i64 %13, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %add.i.i.i15) #20
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16, %lpad
  %.pn = phi { ptr, i32 } [ %9, %lpad ], [ %10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16 ], [ %10, %if.then.i.i14 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp) #21
  call void @_ZdlPvm(ptr noundef nonnull %call, i64 noundef 312) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL12BM_CubeOfSumRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %state) #4 personality ptr @__gxx_personality_v0 {
entry:
  %__dnew.i.i = alloca i64, align 8
  %ref.tmp2.i = alloca %"class.std::__cxx11::basic_string", align 8
  %local_sum = alloca i64, align 8
  tail call void @_Z14InitializeDatav()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %local_sum) #21
  store i64 0, ptr %local_sum, align 8, !tbaa !25
  %skipped_.i = getelementptr inbounds nuw i8, ptr %state, i64 28
  %0 = load i32, ptr %skipped_.i, align 4, !tbaa !73
  %cmp.i32.not = icmp ne i32 %0, 0
  %max_iterations.i29 = getelementptr inbounds nuw i8, ptr %state, i64 16
  %1 = load i64, ptr %max_iterations.i29, align 16
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %state)
  %cmp.not.i.not5053 = icmp eq i64 %1, 0
  %cmp.not.i.not50 = select i1 %cmp.i32.not, i1 true, i1 %cmp.not.i.not5053
  br i1 %cmp.not.i.not50, label %for.cond.cleanup, label %for.cond3.preheader, !prof !94

for.cond:                                         ; preds = %for.cond.cleanup4
  %dec.i = add nsw i64 %__begin1.sroa.0.051, -1
  %cmp.not.i.not = icmp eq i64 %dec.i, 0
  br i1 %cmp.not.i.not, label %for.cond.cleanup, label %for.cond3.preheader, !prof !95

for.cond3.preheader:                              ; preds = %entry, %for.cond
  %__begin1.sroa.0.051 = phi i64 [ %dec.i, %for.cond ], [ %1, %entry ]
  %2 = load ptr, ptr @A_data, align 8, !tbaa !5
  %3 = load ptr, ptr @B_data, align 8, !tbaa !5
  %local_sum.promoted = load i64, ptr %local_sum, align 8, !tbaa !25
  br label %for.body5

for.cond.cleanup:                                 ; preds = %for.cond, %entry
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %state)
  %started_.i = getelementptr inbounds nuw i8, ptr %state, i64 24
  %4 = load i8, ptr %started_.i, align 8, !tbaa !96, !range !97, !noundef !98
  %loadedv.i = trunc nuw i8 %4 to i1
  br i1 %loadedv.i, label %if.end.i26, label %_ZNK9benchmark5State10iterationsEv.exit, !prof !99

if.end.i26:                                       ; preds = %for.cond.cleanup
  %5 = load i64, ptr %max_iterations.i29, align 16, !tbaa !100
  %6 = load i64, ptr %state, align 64, !tbaa !101
  %sub.i = sub i64 %5, %6
  %batch_leftover_.i = getelementptr inbounds nuw i8, ptr %state, i64 8
  %7 = load i64, ptr %batch_leftover_.i, align 8, !tbaa !102
  %add.i = add nsw i64 %sub.i, %7
  %8 = mul nsw i64 %add.i, 10000000
  %9 = sitofp i64 %8 to double
  br label %_ZNK9benchmark5State10iterationsEv.exit

_ZNK9benchmark5State10iterationsEv.exit:          ; preds = %for.cond.cleanup, %if.end.i26
  %retval.0.i = phi double [ %9, %if.end.i26 ], [ 0.000000e+00, %for.cond.cleanup ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ref.tmp2.i) #21
  %10 = getelementptr inbounds nuw i8, ptr %ref.tmp2.i, i64 16
  store ptr %10, ptr %ref.tmp2.i, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %__dnew.i.i) #21
  store i64 16, ptr %__dnew.i.i, align 8, !tbaa !14
  %call2.i11.i34 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp2.i, ptr noundef nonnull align 8 dereferenceable(8) %__dnew.i.i, i64 noundef 0)
  store ptr %call2.i11.i34, ptr %ref.tmp2.i, align 8, !tbaa !33
  %11 = load i64, ptr %__dnew.i.i, align 8, !tbaa !14
  store i64 %11, ptr %10, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %call2.i11.i34, ptr noundef nonnull align 1 dereferenceable(16) @.str.6, i64 16, i1 false)
  %_M_string_length.i.i.i.i = getelementptr inbounds nuw i8, ptr %ref.tmp2.i, i64 8
  store i64 %11, ptr %_M_string_length.i.i.i.i, align 8, !tbaa !36
  %12 = load ptr, ptr %ref.tmp2.i, align 8, !tbaa !33
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 %11
  store i8 0, ptr %arrayidx.i.i.i, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %__dnew.i.i) #21
  %counters.i = getelementptr inbounds nuw i8, ptr %state, i64 64
  %call.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %counters.i, ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp2.i)
          to label %_ZN9benchmark5State17SetItemsProcessedEl.exit unwind label %lpad4.i

lpad4.i:                                          ; preds = %_ZNK9benchmark5State10iterationsEv.exit
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = load ptr, ptr %ref.tmp2.i, align 8, !tbaa !33
  %cmp.i.i.i = icmp eq ptr %14, %10
  br i1 %cmp.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %if.then.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %lpad4.i
  %15 = load i64, ptr %_M_string_length.i.i.i.i, align 8, !tbaa !36
  %cmp3.i.i.i = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %cmp3.i.i.i)
  br label %ehcleanup.i

if.then.i.i35:                                    ; preds = %lpad4.i
  %16 = load i64, ptr %10, align 8, !tbaa !35
  %add.i.i.i = add i64 %16, 1
  call void @_ZdlPvm(ptr noundef %14, i64 noundef %add.i.i.i) #20
  br label %ehcleanup.i

ehcleanup.i:                                      ; preds = %if.then.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp2.i) #21
  resume { ptr, i32 } %13

_ZN9benchmark5State17SetItemsProcessedEl.exit:    ; preds = %_ZNK9benchmark5State10iterationsEv.exit
  store double %retval.0.i, ptr %call.i, align 8, !tbaa !103
  %ref.tmp.i.sroa.5.0.call.i.sroa_idx = getelementptr inbounds nuw i8, ptr %call.i, i64 8
  store i32 1, ptr %ref.tmp.i.sroa.5.0.call.i.sroa_idx, align 8, !tbaa !104
  %ref.tmp.i.sroa.6.0.call.i.sroa_idx = getelementptr inbounds nuw i8, ptr %call.i, i64 12
  store i32 1000, ptr %ref.tmp.i.sroa.6.0.call.i.sroa_idx, align 4, !tbaa !106
  %17 = load ptr, ptr %ref.tmp2.i, align 8, !tbaa !33
  %cmp.i.i.i37 = icmp eq ptr %17, %10
  br i1 %cmp.i.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i41, label %if.then.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i41: ; preds = %_ZN9benchmark5State17SetItemsProcessedEl.exit
  %18 = load i64, ptr %_M_string_length.i.i.i.i, align 8, !tbaa !36
  %cmp3.i.i.i43 = icmp ult i64 %18, 16
  call void @llvm.assume(i1 %cmp3.i.i.i43)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

if.then.i.i38:                                    ; preds = %_ZN9benchmark5State17SetItemsProcessedEl.exit
  %19 = load i64, ptr %10, align 8, !tbaa !35
  %add.i.i.i39 = add i64 %19, 1
  call void @_ZdlPvm(ptr noundef %17, i64 noundef %add.i.i.i39) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i41, %if.then.i.i38
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp2.i) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %local_sum) #21
  ret void

for.cond.cleanup4:                                ; preds = %for.body5
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %local_sum, i64 %add) #21, !srcloc !108
  %cmp.i = icmp sgt i64 %__begin1.sroa.0.051, 0
  br i1 %cmp.i, label %for.cond, label %cond.false.i

cond.false.i:                                     ; preds = %for.cond.cleanup4
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1076, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable

for.body5:                                        ; preds = %for.cond3.preheader, %for.body5
  %indvars.iv = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next, %for.body5 ]
  %add4748 = phi i64 [ %local_sum.promoted, %for.cond3.preheader ], [ %add, %for.body5 ]
  %add.ptr.i = getelementptr inbounds nuw i64, ptr %2, i64 %indvars.iv
  %20 = load i64, ptr %add.ptr.i, align 8, !tbaa !25
  %add.ptr.i45 = getelementptr inbounds nuw i64, ptr %3, i64 %indvars.iv
  %21 = load i64, ptr %add.ptr.i45, align 8, !tbaa !25
  %mul.i = mul nsw i64 %20, %20
  %mul1.i = mul nsw i64 %mul.i, %20
  %mul2.i = mul nsw i64 %20, 3
  %mul10.i = mul i64 %21, %21
  %reass.add23.i = add i64 %21, %20
  %reass.mul24.i = mul i64 %mul2.i, %reass.add23.i
  %reass.add22.i = add i64 %reass.mul24.i, %mul10.i
  %reass.mul.i = mul i64 %reass.add22.i, %21
  %add11.i = add i64 %add4748, %mul1.i
  %add = add i64 %add11.i, %reass.mul.i
  store i64 %add, ptr %local_sum, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10000000
  br i1 %exitcond.not, label %for.cond.cleanup4, label %for.body5, !llvm.loop !109
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #5

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #8 {
entry:
  %argc.addr = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !110
  tail call void @_Z14InitializeDatav()
  call void @_ZN9benchmark10InitializeEPiPPcPFvvE(ptr noundef nonnull %argc.addr, ptr noundef %argv, ptr noundef nonnull @_ZN9benchmark16PrintDefaultHelpEv)
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !110
  %call = call noundef zeroext i1 @_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc(i32 noundef %0, ptr noundef %argv)
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv()
  call void @_ZN9benchmark8ShutdownEv()
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

declare void @_ZN9benchmark10InitializeEPiPPcPFvvE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN9benchmark16PrintDefaultHelpEv() #0

declare noundef zeroext i1 @_ZN9benchmark27ReportUnrecognizedArgumentsEiPPc(i32 noundef, ptr noundef) local_unnamed_addr #0

declare noundef i64 @_ZN9benchmark22RunSpecifiedBenchmarksEv() local_unnamed_addr #0

declare void @_ZN9benchmark8ShutdownEv() local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(32) %__k) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp9 = alloca %"class.std::tuple.21", align 8
  %ref.tmp10 = alloca %"class.std::tuple.24", align 1
  %_M_parent.i.i.i.i = getelementptr inbounds nuw i8, ptr %this, i64 16
  %0 = load ptr, ptr %_M_parent.i.i.i.i, align 8, !tbaa !111
  %add.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %this, i64 8
  %cmp.not9.i.i.i = icmp eq ptr %0, null
  br i1 %cmp.not9.i.i.i, label %if.then, label %while.body.lr.ph.i.i.i

while.body.lr.ph.i.i.i:                           ; preds = %entry
  %_M_string_length.i10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %__k, i64 8
  %1 = load i64, ptr %_M_string_length.i10.i.i.i.i.i.i, align 8, !tbaa !36
  %2 = load ptr, ptr %__k, align 8
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %while.body.lr.ph.i.i.i
  %__x.addr.011.i.i.i = phi ptr [ %0, %while.body.lr.ph.i.i.i ], [ %__x.addr.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %__y.addr.010.i.i.i = phi ptr [ %add.ptr.i.i.i, %while.body.lr.ph.i.i.i ], [ %__y.addr.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %_M_string_length.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %__x.addr.011.i.i.i, i64 40
  %3 = load i64, ptr %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !36
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %3)
  %cmp.i11.i.i.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %cmp.i11.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %while.body.i.i.i
  %_M_storage.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %__x.addr.011.i.i.i, i64 32
  %4 = load ptr, ptr %_M_storage.i.i.i.i.i, align 8, !tbaa !33
  %call.i.i.i.i.i.i.i = tail call i32 @memcmp(ptr noundef %4, ptr noundef %2, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %while.body.i.i.i
  %sub.i.i.i.i.i.i.i = sub i64 %3, %1
  %spec.select6.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %sub.i.i.i.i.i.i.i, i64 -2147483648)
  %retval.07.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select6.i.i.i.i.i.i.i, i64 2147483647)
  %retval.0.i12.i.i.i.i.i.i = trunc nsw i64 %retval.07.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %if.then.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %__r.0.i.i.i.i.i.i = phi i32 [ %call.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %retval.0.i12.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ]
  %cmp.i.i.i.i.i = icmp slt i32 %__r.0.i.i.i.i.i.i, 0
  %__y.addr.1.i.i.i = select i1 %cmp.i.i.i.i.i, ptr %__y.addr.010.i.i.i, ptr %__x.addr.011.i.i.i
  %__x.addr.1.in.v.i.i.i = select i1 %cmp.i.i.i.i.i, i64 24, i64 16
  %__x.addr.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %__x.addr.011.i.i.i, i64 %__x.addr.1.in.v.i.i.i
  %__x.addr.1.i.i.i = load ptr, ptr %__x.addr.1.in.i.i.i, align 8, !tbaa !112
  %cmp.not.i.i.i = icmp eq ptr %__x.addr.1.i.i.i, null
  br i1 %cmp.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %while.body.i.i.i, !llvm.loop !113

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %cmp.i = icmp eq ptr %__y.addr.1.i.i.i, %add.ptr.i.i.i
  br i1 %cmp.i, label %if.then, label %lor.rhs

lor.rhs:                                          ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %_M_string_length.i10.i.i.i = getelementptr inbounds nuw i8, ptr %__y.addr.1.i.i.i, i64 40
  %5 = load i64, ptr %_M_string_length.i10.i.i.i, align 8, !tbaa !36
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %5, i64 %1)
  %cmp.i11.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %cmp.i11.i.i.i, label %if.then.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %lor.rhs
  %_M_storage.i.i = getelementptr inbounds nuw i8, ptr %__y.addr.1.i.i.i, i64 32
  %6 = load ptr, ptr %_M_storage.i.i, align 8, !tbaa !33
  %call.i.i.i.i = tail call i32 @memcmp(ptr noundef %2, ptr noundef %6, i64 noundef %.sroa.speculated.i.i.i) #21
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

if.then.i.i.i:                                    ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %lor.rhs
  %sub.i.i.i.i = sub i64 %1, %5
  %spec.select6.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %sub.i.i.i.i, i64 -2147483648)
  %retval.07.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select6.i.i.i.i, i64 2147483647)
  %retval.0.i12.i.i.i = trunc nsw i64 %retval.07.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %if.then.i.i.i
  %__r.0.i.i.i = phi i32 [ %call.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %retval.0.i12.i.i.i, %if.then.i.i.i ]
  %cmp.i.i = icmp slt i32 %__r.0.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %__y.addr.0.lcssa.i.i.i23 = phi ptr [ %__y.addr.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %__y.addr.1.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit ], [ %add.ptr.i.i.i, %entry ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref.tmp9) #21
  store ptr %__k, ptr %ref.tmp9, align 8, !tbaa !114, !alias.scope !115
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ref.tmp10) #21
  %call12 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr %__y.addr.0.lcssa.i.i.i23, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp9, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp10)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ref.tmp10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref.tmp9) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %__i.sroa.0.0 = phi ptr [ %call12, %if.then ], [ %__y.addr.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %second = getelementptr inbounds nuw i8, ptr %__i.sroa.0.0, i64 64
  ret ptr %second
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr %__pos.coerce, ptr noundef nonnull align 1 dereferenceable(1) %__args, ptr noundef nonnull align 8 dereferenceable(8) %__args1, ptr noundef nonnull align 1 dereferenceable(1) %__args3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__z = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %__z) #21
  store ptr %this, ptr %__z, align 8, !tbaa !118
  %call5.i.i.i.i = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22
  %_M_storage.i.i.i.i = getelementptr inbounds nuw i8, ptr %call5.i.i.i.i, i64 32
  %0 = load i64, ptr %__args1, align 8, !tbaa !114
  %1 = inttoptr i64 %0 to ptr
  %2 = getelementptr inbounds nuw i8, ptr %call5.i.i.i.i, i64 48
  store ptr %2, ptr %_M_storage.i.i.i.i, align 8, !tbaa !30
  %3 = load ptr, ptr %1, align 8, !tbaa !33
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %cmp.i.i.i.i.i.i.i = icmp eq ptr %3, %4
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %entry
  %_M_string_length.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load i64, ptr %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !36
  %cmp3.i.i.i.i.i.i.i = icmp ult i64 %5, 16
  tail call void @llvm.assume(i1 %cmp3.i.i.i.i.i.i.i)
  %add.i.i.i.i.i.i = add nuw nsw i64 %5, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(1) %4, i64 %add.i.i.i.i.i.i, i1 false)
  br label %invoke.cont

if.else.i.i.i.i.i.i:                              ; preds = %entry
  store ptr %3, ptr %_M_storage.i.i.i.i, align 8, !tbaa !33
  %6 = load i64, ptr %4, align 8, !tbaa !35
  store i64 %6, ptr %2, align 8, !tbaa !35
  %_M_string_length.i30.i.i.i.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i = load i64, ptr %_M_string_length.i30.i.i.i.i.phi.trans.insert.i.i, align 8, !tbaa !36
  br label %invoke.cont

invoke.cont:                                      ; preds = %if.else.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %7 = phi i64 [ %5, %if.then.i.i.i.i.i.i ], [ %.pre.i.i, %if.else.i.i.i.i.i.i ]
  %_M_node.i = getelementptr inbounds nuw i8, ptr %__z, i64 8
  %_M_string_length.i30.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %_M_string_length.i31.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %call5.i.i.i.i, i64 40
  store i64 %7, ptr %_M_string_length.i31.i.i.i.i.i.i, align 8, !tbaa !36
  store ptr %4, ptr %1, align 8, !tbaa !33
  store i64 0, ptr %_M_string_length.i30.i.i.i.i.i.i, align 8, !tbaa !36
  store i8 0, ptr %4, align 1, !tbaa !35
  %second.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %call5.i.i.i.i, i64 64
  store double 0.000000e+00, ptr %second.i.i.i.i.i, align 8, !tbaa !120
  %flags.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %call5.i.i.i.i, i64 72
  store i32 0, ptr %flags.i.i.i.i.i.i, align 8, !tbaa !122
  %oneK.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %call5.i.i.i.i, i64 76
  store i32 1000, ptr %oneK.i.i.i.i.i.i, align 4, !tbaa !123
  store ptr %call5.i.i.i.i, ptr %_M_node.i, align 8, !tbaa !124
  %call8 = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr %__pos.coerce, ptr noundef nonnull align 8 dereferenceable(32) %_M_storage.i.i.i.i)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont
  %8 = extractvalue { ptr, ptr } %call8, 0
  %9 = extractvalue { ptr, ptr } %call8, 1
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then.i, label %if.then

if.then:                                          ; preds = %invoke.cont7
  %cmp.not.i.i = icmp ne ptr %8, null
  %add.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %this, i64 8
  %cmp2.i.i = icmp eq ptr %9, %add.ptr.i.i.i
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 true, i1 %cmp2.i.i
  br i1 %or.cond.i.i, label %cleanup.thread, label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %if.then
  %10 = load i64, ptr %_M_string_length.i31.i.i.i.i.i.i, align 8, !tbaa !36
  %_M_string_length.i10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 40
  %11 = load i64, ptr %_M_string_length.i10.i.i.i.i.i, align 8, !tbaa !36
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %11, i64 %10)
  %cmp.i11.i.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %cmp.i11.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %lor.rhs.i.i
  %_M_storage.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  %12 = load ptr, ptr %_M_storage.i.i.i.i.i, align 8, !tbaa !33
  %13 = load ptr, ptr %_M_storage.i.i.i.i, align 8, !tbaa !33
  %call.i.i.i.i.i.i = tail call i32 @memcmp(ptr noundef %13, ptr noundef %12, i64 noundef %.sroa.speculated.i.i.i.i.i) #21
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %lor.rhs.i.i
  %sub.i.i.i.i.i.i = sub i64 %10, %11
  %spec.select6.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %sub.i.i.i.i.i.i, i64 -2147483648)
  %retval.07.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select6.i.i.i.i.i.i, i64 2147483647)
  %retval.0.i12.i.i.i.i.i = trunc nsw i64 %retval.07.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %if.then.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %__r.0.i.i.i.i.i = phi i32 [ %call.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %retval.0.i12.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %cmp.i.i.i.i = icmp slt i32 %__r.0.i.i.i.i.i, 0
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %14 = phi i1 [ true, %if.then ], [ %cmp.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %14, ptr noundef nonnull %call5.i.i.i.i, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(32) %add.ptr.i.i.i) #21
  %_M_node_count.i.i = getelementptr inbounds nuw i8, ptr %this, i64 40
  %15 = load i64, ptr %_M_node_count.i.i, align 8, !tbaa !127
  %inc.i.i = add i64 %15, 1
  store i64 %inc.i.i, ptr %_M_node_count.i.i, align 8, !tbaa !127
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit

lpad:                                             ; preds = %invoke.cont
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %__z) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %__z) #21
  resume { ptr, i32 } %16

if.then.i:                                        ; preds = %invoke.cont7
  %17 = load ptr, ptr %_M_storage.i.i.i.i, align 8, !tbaa !33
  %cmp.i.i.i.i.i.i.i22 = icmp eq ptr %17, %2
  br i1 %cmp.i.i.i.i.i.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %if.then.i
  %18 = load i64, ptr %_M_string_length.i31.i.i.i.i.i.i, align 8, !tbaa !36
  %cmp3.i.i.i.i.i.i.i25 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %cmp3.i.i.i.i.i.i.i25)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i

if.then.i.i.i.i.i.i23:                            ; preds = %if.then.i
  %19 = load i64, ptr %2, align 8, !tbaa !35
  %add.i.i.i.i.i.i.i = add i64 %19, 1
  tail call void @_ZdlPvm(ptr noundef %17, i64 noundef %add.i.i.i.i.i.i.i) #20
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i: ; preds = %if.then.i.i.i.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %call5.i.i.i.i, i64 noundef 80) #20
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit: ; preds = %cleanup.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i
  %retval.sroa.0.028 = phi ptr [ %call5.i.i.i.i, %cleanup.thread ], [ %8, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %__z) #21
  ret ptr %retval.sroa.0.028
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr %__position.coerce, ptr noundef nonnull align 8 dereferenceable(32) %__k) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %this, i64 8
  %cmp = icmp eq ptr %__position.coerce, %add.ptr.i
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %_M_node_count.i = getelementptr inbounds nuw i8, ptr %this, i64 40
  %0 = load i64, ptr %_M_node_count.i, align 8, !tbaa !127
  %cmp5.not = icmp eq i64 %0, 0
  br i1 %cmp5.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %_M_right.i = getelementptr inbounds nuw i8, ptr %this, i64 32
  %1 = load ptr, ptr %_M_right.i, align 8, !tbaa !112
  %_M_string_length.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %2 = load i64, ptr %_M_string_length.i.i.i.i, align 8, !tbaa !36
  %_M_string_length.i10.i.i.i = getelementptr inbounds nuw i8, ptr %__k, i64 8
  %3 = load i64, ptr %_M_string_length.i10.i.i.i, align 8, !tbaa !36
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %3, i64 %2)
  %cmp.i11.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %cmp.i11.i.i.i, label %if.then.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %land.lhs.true
  %_M_storage.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %4 = load ptr, ptr %__k, align 8, !tbaa !33
  %5 = load ptr, ptr %_M_storage.i.i.i, align 8, !tbaa !33
  %call.i.i.i.i = tail call i32 @memcmp(ptr noundef %5, ptr noundef %4, i64 noundef %.sroa.speculated.i.i.i) #21
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

if.then.i.i.i:                                    ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %land.lhs.true
  %sub.i.i.i.i = sub i64 %2, %3
  %spec.select6.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %sub.i.i.i.i, i64 -2147483648)
  %retval.07.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select6.i.i.i.i, i64 2147483647)
  %retval.0.i12.i.i.i = trunc nsw i64 %retval.07.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %if.then.i.i.i
  %__r.0.i.i.i = phi i32 [ %call.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %retval.0.i12.i.i.i, %if.then.i.i.i ]
  %cmp.i.i = icmp slt i32 %__r.0.i.i.i, 0
  br i1 %cmp.i.i, label %cleanup76, label %if.else

if.else:                                          ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %if.then
  %call11 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(32) %__k)
  %6 = extractvalue { ptr, ptr } %call11, 0
  %7 = extractvalue { ptr, ptr } %call11, 1
  br label %cleanup76

if.else12:                                        ; preds = %entry
  %_M_string_length.i.i.i.i87 = getelementptr inbounds nuw i8, ptr %__k, i64 8
  %8 = load i64, ptr %_M_string_length.i.i.i.i87, align 8, !tbaa !36
  %_M_string_length.i10.i.i.i88 = getelementptr inbounds nuw i8, ptr %__position.coerce, i64 40
  %9 = load i64, ptr %_M_string_length.i10.i.i.i88, align 8, !tbaa !36
  %.sroa.speculated.i.i.i89 = tail call i64 @llvm.umin.i64(i64 %9, i64 %8)
  %cmp.i11.i.i.i90 = icmp eq i64 %.sroa.speculated.i.i.i89, 0
  br i1 %cmp.i11.i.i.i90, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit101, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i91

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i91: ; preds = %if.else12
  %_M_storage.i.i.i86 = getelementptr inbounds nuw i8, ptr %__position.coerce, i64 32
  %10 = load ptr, ptr %_M_storage.i.i.i86, align 8, !tbaa !33
  %11 = load ptr, ptr %__k, align 8, !tbaa !33
  %call.i.i.i.i92 = tail call i32 @memcmp(ptr noundef %11, ptr noundef %10, i64 noundef %.sroa.speculated.i.i.i89) #21
  %tobool.not.i.i.i93 = icmp eq i32 %call.i.i.i.i92, 0
  br i1 %tobool.not.i.i.i93, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit101.thread179, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit101.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit101: ; preds = %if.else12
  %sub.i.i.i.i97 = sub i64 %8, %9
  %cmp.i.i95 = icmp slt i64 %sub.i.i.i.i97, 0
  br i1 %cmp.i.i95, label %if.then17, label %if.then.i.i.i134

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit101.thread179: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i91
  %sub.i.i.i.i97180 = sub i64 %8, %9
  %cmp.i.i95184 = icmp slt i64 %sub.i.i.i.i97180, 0
  br i1 %cmp.i.i95184, label %if.then17, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i129

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit101.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i91
  %cmp.i.i95178 = icmp slt i32 %call.i.i.i.i92, 0
  br i1 %cmp.i.i95178, label %if.then17, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i129

if.then17:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit101.thread179, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit101.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit101
  %_M_left.i = getelementptr inbounds nuw i8, ptr %this, i64 24
  %12 = load ptr, ptr %_M_left.i, align 8, !tbaa !112
  %cmp20 = icmp eq ptr %12, %__position.coerce
  br i1 %cmp20, label %cleanup76, label %if.else24

if.else24:                                        ; preds = %if.then17
  %call.i = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %__position.coerce) #24
  %_M_string_length.i.i.i.i106 = getelementptr inbounds nuw i8, ptr %call.i, i64 40
  %13 = load i64, ptr %_M_string_length.i.i.i.i106, align 8, !tbaa !36
  %.sroa.speculated.i.i.i108 = tail call i64 @llvm.umin.i64(i64 %8, i64 %13)
  %cmp.i11.i.i.i109 = icmp eq i64 %.sroa.speculated.i.i.i108, 0
  br i1 %cmp.i11.i.i.i109, label %if.then.i.i.i115, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i110

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i110: ; preds = %if.else24
  %_M_storage.i.i.i105 = getelementptr inbounds nuw i8, ptr %call.i, i64 32
  %14 = load ptr, ptr %__k, align 8, !tbaa !33
  %15 = load ptr, ptr %_M_storage.i.i.i105, align 8, !tbaa !33
  %call.i.i.i.i111 = tail call i32 @memcmp(ptr noundef %15, ptr noundef %14, i64 noundef %.sroa.speculated.i.i.i108) #21
  %tobool.not.i.i.i112 = icmp eq i32 %call.i.i.i.i111, 0
  br i1 %tobool.not.i.i.i112, label %if.then.i.i.i115, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit120

if.then.i.i.i115:                                 ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i110, %if.else24
  %sub.i.i.i.i116 = sub i64 %13, %8
  %spec.select6.i.i.i.i117 = tail call i64 @llvm.smax.i64(i64 %sub.i.i.i.i116, i64 -2147483648)
  %retval.07.i.i.i.i118 = tail call i64 @llvm.smin.i64(i64 %spec.select6.i.i.i.i117, i64 2147483647)
  %retval.0.i12.i.i.i119 = trunc nsw i64 %retval.07.i.i.i.i118 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit120

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit120: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i110, %if.then.i.i.i115
  %__r.0.i.i.i113 = phi i32 [ %call.i.i.i.i111, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i110 ], [ %retval.0.i12.i.i.i119, %if.then.i.i.i115 ]
  %cmp.i.i114 = icmp slt i32 %__r.0.i.i.i113, 0
  br i1 %cmp.i.i114, label %if.then30, label %if.else40

if.then30:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit120
  %_M_right.i121 = getelementptr inbounds nuw i8, ptr %call.i, i64 24
  %16 = load ptr, ptr %_M_right.i121, align 8, !tbaa !128
  %cmp33 = icmp eq ptr %16, null
  %spec.select = select i1 %cmp33, ptr null, ptr %__position.coerce
  %spec.select186 = select i1 %cmp33, ptr %call.i, ptr %__position.coerce
  br label %cleanup76

if.else40:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit120
  %call41 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(32) %__k)
  %17 = extractvalue { ptr, ptr } %call41, 0
  %18 = extractvalue { ptr, ptr } %call41, 1
  br label %cleanup76

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i129: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit101.thread179, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit101.thread
  %call.i.i.i.i130 = tail call i32 @memcmp(ptr noundef %10, ptr noundef %11, i64 noundef %.sroa.speculated.i.i.i89) #21
  %tobool.not.i.i.i131 = icmp eq i32 %call.i.i.i.i130, 0
  br i1 %tobool.not.i.i.i131, label %if.then.i.i.i134, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit139

if.then.i.i.i134:                                 ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit101, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i129
  %sub.i.i.i.i135 = sub i64 %9, %8
  %spec.select6.i.i.i.i136 = tail call i64 @llvm.smax.i64(i64 %sub.i.i.i.i135, i64 -2147483648)
  %retval.07.i.i.i.i137 = tail call i64 @llvm.smin.i64(i64 %spec.select6.i.i.i.i136, i64 2147483647)
  %retval.0.i12.i.i.i138 = trunc nsw i64 %retval.07.i.i.i.i137 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit139

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit139: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i129, %if.then.i.i.i134
  %__r.0.i.i.i132 = phi i32 [ %call.i.i.i.i130, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i129 ], [ %retval.0.i12.i.i.i138, %if.then.i.i.i134 ]
  %cmp.i.i133 = icmp slt i32 %__r.0.i.i.i132, 0
  br i1 %cmp.i.i133, label %if.then47, label %cleanup76

if.then47:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit139
  %_M_right.i140 = getelementptr inbounds nuw i8, ptr %this, i64 32
  %19 = load ptr, ptr %_M_right.i140, align 8, !tbaa !112
  %cmp50 = icmp eq ptr %19, %__position.coerce
  br i1 %cmp50, label %cleanup76, label %if.else54

if.else54:                                        ; preds = %if.then47
  %call.i143 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %__position.coerce) #24
  %_M_string_length.i10.i.i.i146 = getelementptr inbounds nuw i8, ptr %call.i143, i64 40
  %20 = load i64, ptr %_M_string_length.i10.i.i.i146, align 8, !tbaa !36
  %.sroa.speculated.i.i.i147 = tail call i64 @llvm.umin.i64(i64 %20, i64 %8)
  %cmp.i11.i.i.i148 = icmp eq i64 %.sroa.speculated.i.i.i147, 0
  br i1 %cmp.i11.i.i.i148, label %if.then.i.i.i154, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i149

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i149: ; preds = %if.else54
  %_M_storage.i.i.i144 = getelementptr inbounds nuw i8, ptr %call.i143, i64 32
  %21 = load ptr, ptr %_M_storage.i.i.i144, align 8, !tbaa !33
  %22 = load ptr, ptr %__k, align 8, !tbaa !33
  %call.i.i.i.i150 = tail call i32 @memcmp(ptr noundef %22, ptr noundef %21, i64 noundef %.sroa.speculated.i.i.i147) #21
  %tobool.not.i.i.i151 = icmp eq i32 %call.i.i.i.i150, 0
  br i1 %tobool.not.i.i.i151, label %if.then.i.i.i154, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit159

if.then.i.i.i154:                                 ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i149, %if.else54
  %sub.i.i.i.i155 = sub i64 %8, %20
  %spec.select6.i.i.i.i156 = tail call i64 @llvm.smax.i64(i64 %sub.i.i.i.i155, i64 -2147483648)
  %retval.07.i.i.i.i157 = tail call i64 @llvm.smin.i64(i64 %spec.select6.i.i.i.i156, i64 2147483647)
  %retval.0.i12.i.i.i158 = trunc nsw i64 %retval.07.i.i.i.i157 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit159

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit159: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i149, %if.then.i.i.i154
  %__r.0.i.i.i152 = phi i32 [ %call.i.i.i.i150, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i149 ], [ %retval.0.i12.i.i.i158, %if.then.i.i.i154 ]
  %cmp.i.i153 = icmp slt i32 %__r.0.i.i.i152, 0
  br i1 %cmp.i.i153, label %if.then60, label %if.else70

if.then60:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit159
  %_M_right.i160 = getelementptr inbounds nuw i8, ptr %__position.coerce, i64 24
  %23 = load ptr, ptr %_M_right.i160, align 8, !tbaa !128
  %cmp63 = icmp eq ptr %23, null
  %spec.select187 = select i1 %cmp63, ptr null, ptr %call.i143
  %spec.select188 = select i1 %cmp63, ptr %__position.coerce, ptr %call.i143
  br label %cleanup76

if.else70:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit159
  %call71 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(32) %__k)
  %24 = extractvalue { ptr, ptr } %call71, 0
  %25 = extractvalue { ptr, ptr } %call71, 1
  br label %cleanup76

cleanup76:                                        ; preds = %if.then60, %if.then30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit139, %if.else70, %if.then47, %if.else40, %if.then17, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %if.else
  %retval.sroa.0.2 = phi ptr [ %6, %if.else ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %17, %if.else40 ], [ %12, %if.then17 ], [ %24, %if.else70 ], [ null, %if.then47 ], [ %__position.coerce, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit139 ], [ %spec.select, %if.then30 ], [ %spec.select187, %if.then60 ]
  %retval.sroa.12.2 = phi ptr [ %7, %if.else ], [ %1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %18, %if.else40 ], [ %12, %if.then17 ], [ %25, %if.else70 ], [ %19, %if.then47 ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit139 ], [ %spec.select186, %if.then30 ], [ %spec.select188, %if.then60 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %retval.sroa.0.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %retval.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_node = getelementptr inbounds nuw i8, ptr %this, i64 8
  %0 = load ptr, ptr %_M_node, align 8, !tbaa !124
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_storage.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %1 = load ptr, ptr %_M_storage.i.i.i, align 8, !tbaa !33
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %cmp.i.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %cmp.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %if.then.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %if.then
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i64, ptr %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !36
  %cmp3.i.i.i.i.i.i = icmp ult i64 %3, 16
  tail call void @llvm.assume(i1 %cmp3.i.i.i.i.i.i)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

if.then.i.i.i.i.i:                                ; preds = %if.then
  %4 = load i64, ptr %2, align 8, !tbaa !35
  %add.i.i.i.i.i.i = add i64 %4, 1
  tail call void @_ZdlPvm(ptr noundef %1, i64 noundef %add.i.i.i.i.i.i) #20
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %if.then.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #20
  br label %if.end

if.end:                                           ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %entry
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(32) %__k) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_parent.i.i = getelementptr inbounds nuw i8, ptr %this, i64 16
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %this, i64 8
  %__x.054 = load ptr, ptr %_M_parent.i.i, align 8, !tbaa !112
  %cmp.not55 = icmp eq ptr %__x.054, null
  br i1 %cmp.not55, label %if.then, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %_M_string_length.i.i.i.i = getelementptr inbounds nuw i8, ptr %__k, i64 8
  %0 = load i64, ptr %_M_string_length.i.i.i.i, align 8, !tbaa !36
  %1 = load ptr, ptr %__k, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %__x.056 = phi ptr [ %__x.054, %while.body.lr.ph ], [ %__x.0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %_M_string_length.i10.i.i.i = getelementptr inbounds nuw i8, ptr %__x.056, i64 40
  %2 = load i64, ptr %_M_string_length.i10.i.i.i, align 8, !tbaa !36
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %0)
  %cmp.i11.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %cmp.i11.i.i.i, label %if.then.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %while.body
  %_M_storage.i.i = getelementptr inbounds nuw i8, ptr %__x.056, i64 32
  %3 = load ptr, ptr %_M_storage.i.i, align 8, !tbaa !33
  %call.i.i.i.i = tail call i32 @memcmp(ptr noundef %1, ptr noundef %3, i64 noundef %.sroa.speculated.i.i.i) #21
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

if.then.i.i.i:                                    ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %while.body
  %sub.i.i.i.i = sub i64 %0, %2
  %spec.select6.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %sub.i.i.i.i, i64 -2147483648)
  %retval.07.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select6.i.i.i.i, i64 2147483647)
  %retval.0.i12.i.i.i = trunc nsw i64 %retval.07.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %if.then.i.i.i
  %__r.0.i.i.i = phi i32 [ %call.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %retval.0.i12.i.i.i, %if.then.i.i.i ]
  %cmp.i.i = icmp slt i32 %__r.0.i.i.i, 0
  %cond.in.v = select i1 %cmp.i.i, i64 16, i64 24
  %cond.in = getelementptr inbounds nuw i8, ptr %__x.056, i64 %cond.in.v
  %__x.0 = load ptr, ptr %cond.in, align 8, !tbaa !112
  %cmp.not = icmp eq ptr %__x.0, null
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !129

while.end:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %cmp.i.i, label %if.then, label %if.end12

if.then:                                          ; preds = %entry, %while.end
  %__y.0.lcssa60 = phi ptr [ %__x.056, %while.end ], [ %add.ptr.i, %entry ]
  %_M_left.i25 = getelementptr inbounds nuw i8, ptr %this, i64 24
  %4 = load ptr, ptr %_M_left.i25, align 8, !tbaa !130
  %cmp.i = icmp eq ptr %__y.0.lcssa60, %4
  br i1 %cmp.i, label %cleanup, label %if.else

if.else:                                          ; preds = %if.then
  %call.i = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %__y.0.lcssa60) #24
  br label %if.end12

if.end12:                                         ; preds = %if.else, %while.end
  %__y.0.lcssa61 = phi ptr [ %__y.0.lcssa60, %if.else ], [ %__x.056, %while.end ]
  %__j.sroa.0.0 = phi ptr [ %call.i, %if.else ], [ %__x.056, %while.end ]
  %_M_string_length.i.i.i.i26 = getelementptr inbounds nuw i8, ptr %__j.sroa.0.0, i64 40
  %5 = load i64, ptr %_M_string_length.i.i.i.i26, align 8, !tbaa !36
  %_M_string_length.i10.i.i.i27 = getelementptr inbounds nuw i8, ptr %__k, i64 8
  %6 = load i64, ptr %_M_string_length.i10.i.i.i27, align 8, !tbaa !36
  %.sroa.speculated.i.i.i28 = tail call i64 @llvm.umin.i64(i64 %6, i64 %5)
  %cmp.i11.i.i.i29 = icmp eq i64 %.sroa.speculated.i.i.i28, 0
  br i1 %cmp.i11.i.i.i29, label %if.then.i.i.i35, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i30

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i30: ; preds = %if.end12
  %_M_storage.i.i.i = getelementptr inbounds nuw i8, ptr %__j.sroa.0.0, i64 32
  %7 = load ptr, ptr %__k, align 8, !tbaa !33
  %8 = load ptr, ptr %_M_storage.i.i.i, align 8, !tbaa !33
  %call.i.i.i.i31 = tail call i32 @memcmp(ptr noundef %8, ptr noundef %7, i64 noundef %.sroa.speculated.i.i.i28) #21
  %tobool.not.i.i.i32 = icmp eq i32 %call.i.i.i.i31, 0
  br i1 %tobool.not.i.i.i32, label %if.then.i.i.i35, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit40

if.then.i.i.i35:                                  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i30, %if.end12
  %sub.i.i.i.i36 = sub i64 %5, %6
  %spec.select6.i.i.i.i37 = tail call i64 @llvm.smax.i64(i64 %sub.i.i.i.i36, i64 -2147483648)
  %retval.07.i.i.i.i38 = tail call i64 @llvm.smin.i64(i64 %spec.select6.i.i.i.i37, i64 2147483647)
  %retval.0.i12.i.i.i39 = trunc nsw i64 %retval.07.i.i.i.i38 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit40

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit40: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i30, %if.then.i.i.i35
  %__r.0.i.i.i33 = phi i32 [ %call.i.i.i.i31, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i30 ], [ %retval.0.i12.i.i.i39, %if.then.i.i.i35 ]
  %cmp.i.i34 = icmp slt i32 %__r.0.i.i.i33, 0
  %spec.select = select i1 %cmp.i.i34, ptr null, ptr %__j.sroa.0.0
  %spec.select53 = select i1 %cmp.i.i34, ptr %__y.0.lcssa61, ptr null
  br label %cleanup

cleanup:                                          ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit40, %if.then
  %retval.sroa.0.0 = phi ptr [ null, %if.then ], [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit40 ]
  %retval.sroa.4.0 = phi ptr [ %__y.0.lcssa60, %if.then ], [ %spec.select53, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit40 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %retval.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %retval.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %cmp.not = icmp eq i64 %__n, 0
  br i1 %cmp.not, label %if.end42, label %if.then

if.then:                                          ; preds = %entry
  %_M_finish.i = getelementptr inbounds nuw i8, ptr %this, i64 8
  %0 = load ptr, ptr %_M_finish.i, align 8, !tbaa !13
  %1 = load ptr, ptr %this, align 8, !tbaa !5
  %sub.ptr.lhs.cast.i = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 3
  %_M_end_of_storage = getelementptr inbounds nuw i8, ptr %this, i64 16
  %2 = load ptr, ptr %_M_end_of_storage, align 8, !tbaa !11
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.lhs.cast.i
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %cmp4 = icmp ult i64 %sub.ptr.div.i, 1152921504606846976
  tail call void @llvm.assume(i1 %cmp4)
  %sub = xor i64 %sub.ptr.div.i, 1152921504606846975
  %cmp6 = icmp ule i64 %sub.ptr.div, %sub
  tail call void @llvm.assume(i1 %cmp6)
  %cmp8.not = icmp ult i64 %sub.ptr.div, %__n
  br i1 %cmp8.not, label %if.else, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then
  store i64 0, ptr %0, align 8, !tbaa !25
  %incdec.ptr.i.i.i = getelementptr i8, ptr %0, i64 8
  %cmp.i.i.i.i.i = icmp eq i64 %__n, 1
  br i1 %cmp.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  %3 = shl i64 %__n, 3
  %4 = add i64 %3, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %incdec.ptr.i.i.i, i8 0, i64 %4, i1 false), !tbaa !25
  %add.ptr.i.i.i.i.i = getelementptr i64, ptr %0, i64 %__n
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit: ; preds = %if.then.i.i.i, %if.end.i.i.i.i.i
  %__first.addr.0.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.then.i.i.i ], [ %add.ptr.i.i.i.i.i, %if.end.i.i.i.i.i ]
  store ptr %__first.addr.0.i.i.i, ptr %_M_finish.i, align 8, !tbaa !13
  br label %if.end42

if.else:                                          ; preds = %if.then
  %cmp.i = icmp ult i64 %sub, %__n
  br i1 %cmp.i, label %if.then.i, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit

if.then.i:                                        ; preds = %if.else
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit:    ; preds = %if.else
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %sub.ptr.div.i, i64 %__n)
  %add.i = add nuw nsw i64 %.sroa.speculated.i, %sub.ptr.div.i
  %5 = tail call i64 @llvm.umin.i64(i64 %add.i, i64 1152921504606846975)
  %mul.i.i = shl nuw nsw i64 %5, 3
  %call5.i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i) #22
  %add.ptr = getelementptr inbounds nuw i8, ptr %call5.i.i, i64 %sub.ptr.sub.i
  store i64 0, ptr %add.ptr, align 8, !tbaa !25
  %cmp.i.i.i.i.i66 = icmp eq i64 %__n, 1
  br i1 %cmp.i.i.i.i.i66, label %invoke.cont, label %if.end.i.i.i.i.i67

if.end.i.i.i.i.i67:                               ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %incdec.ptr.i.i.i65 = getelementptr i8, ptr %add.ptr, i64 8
  %6 = shl nuw nsw i64 %__n, 3
  %7 = add nsw i64 %6, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %incdec.ptr.i.i.i65, i8 0, i64 %7, i1 false), !tbaa !25
  br label %invoke.cont

invoke.cont:                                      ; preds = %if.end.i.i.i.i.i67, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %cmp.i.i.i = icmp sgt i64 %sub.ptr.sub.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i71, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit

if.then.i.i.i71:                                  ; preds = %invoke.cont
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %call5.i.i, ptr align 8 %1, i64 %sub.ptr.sub.i, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit: ; preds = %invoke.cont, %if.then.i.i.i71
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %_ZZNSt6vectorIxSaIxEE17_M_default_appendEmEN6_GuardD2Ev.exit, label %if.then.i72

if.then.i72:                                      ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef %sub.ptr.sub30) #20
  br label %_ZZNSt6vectorIxSaIxEE17_M_default_appendEmEN6_GuardD2Ev.exit

_ZZNSt6vectorIxSaIxEE17_M_default_appendEmEN6_GuardD2Ev.exit: ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit, %if.then.i72
  store ptr %call5.i.i, ptr %this, align 8, !tbaa !5
  %add.ptr35 = getelementptr inbounds nuw i64, ptr %add.ptr, i64 %__n
  store ptr %add.ptr35, ptr %_M_finish.i, align 8, !tbaa !13
  %add.ptr38 = getelementptr inbounds nuw i64, ptr %call5.i.i, i64 %5
  store ptr %add.ptr38, ptr %_M_end_of_storage, align 8, !tbaa !11
  br label %if.end42

if.end42:                                         ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, %_ZZNSt6vectorIxSaIxEE17_M_default_appendEmEN6_GuardD2Ev.exit, %entry
  ret void
}

; Function Attrs: cold noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %this) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_p = getelementptr inbounds nuw i8, ptr %this, i64 2496
  %0 = load i64, ptr %_M_p, align 8, !tbaa !18
  %cmp = icmp ugt i64 %0, 311
  br i1 %cmp, label %vector.ph, label %if.end

vector.ph:                                        ; preds = %entry
  %.pre.i = load i64, ptr %this, align 8, !tbaa !14
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %1 = getelementptr inbounds nuw [312 x i64], ptr %this, i64 0, i64 %index
  %2 = or disjoint i64 %index, 1
  %3 = getelementptr inbounds nuw [312 x i64], ptr %this, i64 0, i64 %2
  %wide.load = load <2 x i64>, ptr %3, align 8, !tbaa !14
  %4 = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %5 = and <2 x i64> %4, splat (i64 -2147483648)
  %6 = and <2 x i64> %wide.load, splat (i64 2147483646)
  %7 = or disjoint <2 x i64> %6, %5
  %8 = add nuw nsw i64 %index, 156
  %9 = getelementptr inbounds nuw [312 x i64], ptr %this, i64 0, i64 %8
  %wide.load18 = load <2 x i64>, ptr %9, align 8, !tbaa !14
  %10 = lshr exact <2 x i64> %7, splat (i64 1)
  %11 = xor <2 x i64> %10, %wide.load18
  %12 = and <2 x i64> %wide.load, splat (i64 1)
  %13 = icmp eq <2 x i64> %12, zeroinitializer
  %14 = select <2 x i1> %13, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %15 = xor <2 x i64> %11, %14
  store <2 x i64> %15, ptr %1, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2
  %16 = icmp eq i64 %index.next, 156
  br i1 %16, label %vector.ph20, label %vector.body, !llvm.loop !131

vector.ph20:                                      ; preds = %vector.body
  %arrayidx19.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %this, i64 1248
  %.pre74.i = load i64, ptr %arrayidx19.phi.trans.insert.i, align 8, !tbaa !14
  %vector.recur.init23 = insertelement <2 x i64> poison, i64 %.pre74.i, i64 1
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph20
  %index22 = phi i64 [ 0, %vector.ph20 ], [ %index.next27, %vector.body21 ]
  %vector.recur24 = phi <2 x i64> [ %vector.recur.init23, %vector.ph20 ], [ %wide.load25, %vector.body21 ]
  %offset.idx = add i64 %index22, 156
  %17 = getelementptr inbounds nuw [312 x i64], ptr %this, i64 0, i64 %offset.idx
  %18 = add i64 %index22, 157
  %19 = getelementptr inbounds nuw [312 x i64], ptr %this, i64 0, i64 %18
  %wide.load25 = load <2 x i64>, ptr %19, align 8, !tbaa !14
  %20 = shufflevector <2 x i64> %vector.recur24, <2 x i64> %wide.load25, <2 x i32> <i32 1, i32 2>
  %21 = and <2 x i64> %20, splat (i64 -2147483648)
  %22 = and <2 x i64> %wide.load25, splat (i64 2147483646)
  %23 = or disjoint <2 x i64> %22, %21
  %24 = getelementptr inbounds nuw [312 x i64], ptr %this, i64 0, i64 %index22
  %wide.load26 = load <2 x i64>, ptr %24, align 8, !tbaa !14
  %25 = lshr exact <2 x i64> %23, splat (i64 1)
  %26 = xor <2 x i64> %25, %wide.load26
  %27 = and <2 x i64> %wide.load25, splat (i64 1)
  %28 = icmp eq <2 x i64> %27, zeroinitializer
  %29 = select <2 x i1> %28, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %30 = xor <2 x i64> %26, %29
  store <2 x i64> %30, ptr %17, align 8, !tbaa !14
  %index.next27 = add nuw i64 %index22, 2
  %31 = icmp eq i64 %index.next27, 154
  br i1 %31, label %for.body16.i, label %vector.body21, !llvm.loop !132

for.body16.i:                                     ; preds = %vector.body21
  %vector.recur.extract29 = extractelement <2 x i64> %wide.load25, i64 1
  %arrayidx19.i = getelementptr inbounds nuw i8, ptr %this, i64 2480
  %and20.i = and i64 %vector.recur.extract29, -2147483648
  %arrayidx23.i = getelementptr inbounds nuw i8, ptr %this, i64 2488
  %32 = load i64, ptr %arrayidx23.i, align 8, !tbaa !14
  %and24.i = and i64 %32, 2147483646
  %or25.i = or disjoint i64 %and24.i, %and20.i
  %arrayidx28.i = getelementptr inbounds nuw i8, ptr %this, i64 1232
  %33 = load i64, ptr %arrayidx28.i, align 8, !tbaa !14
  %shr29.i = lshr exact i64 %or25.i, 1
  %xor30.i = xor i64 %shr29.i, %33
  %and31.i = and i64 %32, 1
  %tobool32.not.i = icmp eq i64 %and31.i, 0
  %cond33.i = select i1 %tobool32.not.i, i64 0, i64 -5403634167711393303
  %xor34.i = xor i64 %xor30.i, %cond33.i
  store i64 %xor34.i, ptr %arrayidx19.i, align 8, !tbaa !14
  %arrayidx42.i = getelementptr inbounds nuw i8, ptr %this, i64 2488
  %34 = load i64, ptr %arrayidx42.i, align 8, !tbaa !14
  %and43.i = and i64 %34, -2147483648
  %35 = load i64, ptr %this, align 8, !tbaa !14
  %and46.i = and i64 %35, 2147483646
  %or47.i = or disjoint i64 %and46.i, %and43.i
  %arrayidx49.i = getelementptr inbounds nuw i8, ptr %this, i64 1240
  %36 = load i64, ptr %arrayidx49.i, align 8, !tbaa !14
  %shr50.i = lshr exact i64 %or47.i, 1
  %xor51.i = xor i64 %shr50.i, %36
  %and52.i = and i64 %35, 1
  %tobool53.not.i = icmp eq i64 %and52.i, 0
  %cond54.i = select i1 %tobool53.not.i, i64 0, i64 -5403634167711393303
  %xor55.i = xor i64 %xor51.i, %cond54.i
  store i64 %xor55.i, ptr %arrayidx42.i, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %for.body16.i, %entry
  %37 = phi i64 [ 0, %for.body16.i ], [ %0, %entry ]
  %inc = add nuw nsw i64 %37, 1
  store i64 %inc, ptr %_M_p, align 8, !tbaa !18
  %arrayidx = getelementptr inbounds nuw [312 x i64], ptr %this, i64 0, i64 %37
  %38 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %shr = lshr i64 %38, 29
  %and = and i64 %shr, 22906492245
  %xor = xor i64 %and, %38
  %shl = shl i64 %xor, 17
  %and3 = and i64 %shl, 8202884508482404352
  %xor4 = xor i64 %and3, %xor
  %shl5 = shl i64 %xor4, 37
  %and6 = and i64 %shl5, -2270628950310912
  %xor7 = xor i64 %and6, %xor4
  %shr8 = lshr i64 %xor7, 43
  %xor9 = xor i64 %shr8, %xor7
  ret i64 %xor9
}

declare void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_pass_bench.cpp() #16 section ".text.startup" personality ptr @__gxx_personality_v0 {
entry:
  %agg.tmp.i = alloca %"class.std::unique_ptr", align 8
  %ref.tmp.i = alloca %"class.std::unique_ptr.2", align 8
  %call.i = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv()
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @A_data, i8 0, i64 24, i1 false)
  %0 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIxSaIxEED2Ev, ptr nonnull @A_data, ptr nonnull @__dso_handle) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @B_data, i8 0, i64 24, i1 false)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIxSaIxEED2Ev, ptr nonnull @B_data, ptr nonnull @__dso_handle) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref.tmp.i) #21
  call void @_ZSt11make_uniqueIN9benchmark8internal17FunctionBenchmarkEJRA13_KcRFvRNS0_5StateEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %ref.tmp.i, ptr noundef nonnull align 1 dereferenceable(13) @.str, ptr noundef nonnull @_ZL12BM_CubeOfSumRN9benchmark5StateE)
  %2 = load ptr, ptr %ref.tmp.i, align 8, !tbaa !71
  store ptr null, ptr %ref.tmp.i, align 8, !tbaa !71
  store ptr %2, ptr %agg.tmp.i, align 8, !tbaa !133
  %call.i1 = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalESt10unique_ptrINS0_9BenchmarkESt14default_deleteIS2_EE(ptr noundef nonnull %agg.tmp.i)
          to label %invoke.cont.i unwind label %lpad.i

invoke.cont.i:                                    ; preds = %entry
  %3 = load ptr, ptr %agg.tmp.i, align 8, !tbaa !136
  %cmp.not.i.i = icmp eq ptr %3, null
  br i1 %cmp.not.i.i, label %_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN9benchmark8internal9BenchmarkEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN9benchmark8internal9BenchmarkEEclEPS2_.exit.i.i: ; preds = %invoke.cont.i
  %vtable.i.i.i = load ptr, ptr %3, align 8, !tbaa !37
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 8
  %4 = load ptr, ptr %vfn.i.i.i, align 8
  call void %4(ptr noundef nonnull align 8 dereferenceable(304) %3) #21
  br label %_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN9benchmark8internal9BenchmarkEEclEPS2_.exit.i.i, %invoke.cont.i
  store ptr null, ptr %agg.tmp.i, align 8, !tbaa !136
  %5 = load ptr, ptr %ref.tmp.i, align 8, !tbaa !71
  %cmp.not.i2.i = icmp eq ptr %5, null
  br i1 %cmp.not.i2.i, label %__cxx_global_var_init.3.exit, label %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit.i
  %vtable.i.i3.i = load ptr, ptr %5, align 8, !tbaa !37
  %vfn.i.i4.i = getelementptr inbounds nuw i8, ptr %vtable.i.i3.i, i64 8
  %6 = load ptr, ptr %vfn.i.i4.i, align 8
  call void %6(ptr noundef nonnull align 8 dereferenceable(312) %5) #21
  br label %__cxx_global_var_init.3.exit

lpad.i:                                           ; preds = %entry
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = load ptr, ptr %agg.tmp.i, align 8, !tbaa !136
  %cmp.not.i5.i = icmp eq ptr %8, null
  br i1 %cmp.not.i5.i, label %_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit9.i, label %_ZNKSt14default_deleteIN9benchmark8internal9BenchmarkEEclEPS2_.exit.i6.i

_ZNKSt14default_deleteIN9benchmark8internal9BenchmarkEEclEPS2_.exit.i6.i: ; preds = %lpad.i
  %vtable.i.i7.i = load ptr, ptr %8, align 8, !tbaa !37
  %vfn.i.i8.i = getelementptr inbounds nuw i8, ptr %vtable.i.i7.i, i64 8
  %9 = load ptr, ptr %vfn.i.i8.i, align 8
  call void %9(ptr noundef nonnull align 8 dereferenceable(304) %8) #21
  br label %_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit9.i

_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit9.i: ; preds = %_ZNKSt14default_deleteIN9benchmark8internal9BenchmarkEEclEPS2_.exit.i6.i, %lpad.i
  store ptr null, ptr %agg.tmp.i, align 8, !tbaa !136
  %10 = load ptr, ptr %ref.tmp.i, align 8, !tbaa !71
  %cmp.not.i10.i = icmp eq ptr %10, null
  br i1 %cmp.not.i10.i, label %_ZNSt10unique_ptrIN9benchmark8internal17FunctionBenchmarkESt14default_deleteIS2_EED2Ev.exit14.i, label %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i11.i

_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i11.i: ; preds = %_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit9.i
  %vtable.i.i12.i = load ptr, ptr %10, align 8, !tbaa !37
  %vfn.i.i13.i = getelementptr inbounds nuw i8, ptr %vtable.i.i12.i, i64 8
  %11 = load ptr, ptr %vfn.i.i13.i, align 8
  call void %11(ptr noundef nonnull align 8 dereferenceable(312) %10) #21
  br label %_ZNSt10unique_ptrIN9benchmark8internal17FunctionBenchmarkESt14default_deleteIS2_EED2Ev.exit14.i

_ZNSt10unique_ptrIN9benchmark8internal17FunctionBenchmarkESt14default_deleteIS2_EED2Ev.exit14.i: ; preds = %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i11.i, %_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit9.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref.tmp.i) #21
  resume { ptr, i32 } %7

__cxx_global_var_init.3.exit:                     ; preds = %_ZNSt10unique_ptrIN9benchmark8internal9BenchmarkESt14default_deleteIS2_EED2Ev.exit.i, %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref.tmp.i) #21
  store ptr %call.i1, ptr @_ZL27benchmark_uniq_2_benchmark_, align 8, !tbaa !136
  %12 = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZL27benchmark_uniq_2_benchmark_)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git ca912c7c08156e0c20cdd25f7cb0d3a277847a71)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataE", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"p1 long long", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!6, !7, i64 16}
!12 = !{!7, !7, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!19, !15, i64 2496}
!19 = !{!"_ZTSSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE", !9, i64 0, !15, i64 2496}
!20 = distinct !{!20, !17, !21, !22}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !17, !21, !22}
!24 = distinct !{!24, !17}
!25 = !{!26, !26, i64 0}
!26 = !{!"long long", !9, i64 0}
!27 = distinct !{!27, !17, !21, !22}
!28 = distinct !{!28, !17, !21, !22}
!29 = distinct !{!29, !17}
!30 = !{!31, !32, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !32, i64 0}
!32 = !{!"p1 omnipotent char", !8, i64 0}
!33 = !{!34, !32, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0, !15, i64 8, !9, i64 16}
!35 = !{!9, !9, i64 0}
!36 = !{!34, !15, i64 8}
!37 = !{!38, !38, i64 0}
!38 = !{!"vtable pointer", !10, i64 0}
!39 = !{!40, !8, i64 304}
!40 = !{!"_ZTSN9benchmark8internal17FunctionBenchmarkE", !41, i64 0, !8, i64 304}
!41 = !{!"_ZTSN9benchmark8internal9BenchmarkE", !34, i64 8, !42, i64 40, !43, i64 48, !48, i64 72, !53, i64 96, !54, i64 100, !55, i64 104, !56, i64 112, !56, i64 120, !15, i64 128, !55, i64 136, !54, i64 140, !54, i64 141, !54, i64 142, !57, i64 144, !8, i64 152, !58, i64 160, !63, i64 184, !68, i64 208, !68, i64 240, !70, i64 272}
!42 = !{!"_ZTSN9benchmark8internal21AggregationReportModeE", !9, i64 0}
!43 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !44, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0}
!48 = !{!"_ZTSSt6vectorIS_IlSaIlEESaIS1_EE", !49, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE12_Vector_implE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"p1 _ZTSSt6vectorIlSaIlEE", !8, i64 0}
!53 = !{!"_ZTSN9benchmark8TimeUnitE", !9, i64 0}
!54 = !{!"bool", !9, i64 0}
!55 = !{!"int", !9, i64 0}
!56 = !{!"double", !9, i64 0}
!57 = !{!"_ZTSN9benchmark4BigOE", !9, i64 0}
!58 = !{!"_ZTSSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE", !59, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE", !60, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE12_Vector_implE", !61, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!62 = !{!"p1 _ZTSN9benchmark8internal10StatisticsE", !8, i64 0}
!63 = !{!"_ZTSSt6vectorIiSaIiEE", !64, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !66, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!67 = !{!"p1 int", !8, i64 0}
!68 = !{!"_ZTSSt8functionIFvRKN9benchmark5StateEEE", !69, i64 0, !8, i64 24}
!69 = !{!"_ZTSSt14_Function_base", !9, i64 0, !8, i64 16}
!70 = !{!"_ZTSSt8functionIFSt10unique_ptrIN9benchmark16ThreadRunnerBaseESt14default_deleteIS2_EEiEE", !69, i64 0, !8, i64 24}
!71 = !{!72, !72, i64 0}
!72 = !{!"p1 _ZTSN9benchmark8internal17FunctionBenchmarkE", !8, i64 0}
!73 = !{!74, !75, i64 28}
!74 = !{!"_ZTSN9benchmark5StateE", !15, i64 0, !15, i64 8, !15, i64 16, !54, i64 24, !54, i64 25, !75, i64 28, !76, i64 32, !15, i64 56, !81, i64 64, !34, i64 112, !55, i64 144, !55, i64 148, !90, i64 152, !91, i64 160, !92, i64 168, !93, i64 176}
!75 = !{!"_ZTSN9benchmark8internal7SkippedE", !9, i64 0}
!76 = !{!"_ZTSSt6vectorIlSaIlEE", !77, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!80 = !{!"p1 long", !8, i64 0}
!81 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !82, i64 0}
!82 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !83, i64 0}
!83 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !84, i64 0, !86, i64 8}
!84 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !85, i64 0}
!85 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!86 = !{!"_ZTSSt15_Rb_tree_header", !87, i64 0, !15, i64 32}
!87 = !{!"_ZTSSt18_Rb_tree_node_base", !88, i64 0, !89, i64 8, !89, i64 16, !89, i64 24}
!88 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!89 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !8, i64 0}
!90 = !{!"p1 _ZTSN9benchmark8internal11ThreadTimerE", !8, i64 0}
!91 = !{!"p1 _ZTSN9benchmark8internal13ThreadManagerE", !8, i64 0}
!92 = !{!"p1 _ZTSN9benchmark8internal23PerfCountersMeasurementE", !8, i64 0}
!93 = !{!"p1 _ZTSN9benchmark15ProfilerManagerE", !8, i64 0}
!94 = !{!"branch_weights", i32 1, i32 127}
!95 = !{!"branch_weights", i32 127, i32 255873}
!96 = !{!74, !54, i64 24}
!97 = !{i8 0, i8 2}
!98 = !{}
!99 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!100 = !{!74, !15, i64 16}
!101 = !{!74, !15, i64 0}
!102 = !{!74, !15, i64 8}
!103 = !{!56, !56, i64 0}
!104 = !{!105, !105, i64 0}
!105 = !{!"_ZTSN9benchmark7Counter5FlagsE", !9, i64 0}
!106 = !{!107, !107, i64 0}
!107 = !{!"_ZTSN9benchmark7Counter4OneKE", !9, i64 0}
!108 = !{i64 40416}
!109 = distinct !{!109, !17}
!110 = !{!55, !55, i64 0}
!111 = !{!86, !89, i64 8}
!112 = !{!89, !89, i64 0}
!113 = distinct !{!113, !17}
!114 = !{!47, !47, i64 0}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: %agg.result"}
!117 = distinct !{!117, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!118 = !{!119, !119, i64 0}
!119 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !8, i64 0}
!120 = !{!121, !56, i64 0}
!121 = !{!"_ZTSN9benchmark7CounterE", !56, i64 0, !105, i64 8, !107, i64 12}
!122 = !{!121, !105, i64 8}
!123 = !{!121, !107, i64 12}
!124 = !{!125, !126, i64 8}
!125 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeE", !119, i64 0, !126, i64 8}
!126 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEEE", !8, i64 0}
!127 = !{!86, !15, i64 32}
!128 = !{!87, !89, i64 24}
!129 = distinct !{!129, !17}
!130 = !{!86, !89, i64 16}
!131 = distinct !{!131, !17, !21, !22}
!132 = distinct !{!132, !17, !21, !22}
!133 = !{!134, !135, i64 0}
!134 = !{!"_ZTSSt10_Head_baseILm0EPN9benchmark8internal9BenchmarkELb0EE", !135, i64 0}
!135 = !{!"p1 _ZTSN9benchmark8internal9BenchmarkE", !8, i64 0}
!136 = !{!135, !135, i64 0}
