; RUN: %opt %load_plugin -passes=myPeepholePass,dce -S < %s | %FileCheck %s

define i64 @test_basic_cube_sum(i64 %a, i64 %b) {
entry:
  %a_sq = mul nsw i64 %a, %a
  %a_cub = mul nsw i64 %a_sq, %a
  %a_times_3 = mul nsw i64 %a, 3
  %term_a3_plus_b = add nsw i64 %a_times_3, %b
  %term_a3_plus_b_times_b = mul nsw i64 %term_a3_plus_b, %b
  %term_a3_times_a = mul nsw i64 %a_times_3, %a
  %x_outer_candidate = add nsw i64 %term_a3_plus_b_times_b, %term_a3_times_a
  %other_part_candidate = mul nsw i64 %x_outer_candidate, %b
  %result = add nsw i64 %other_part_candidate, %a_cub
  ret i64 %result

; CHECK-LABEL: @test_basic_cube_sum(i64 %a, i64 %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add nsw i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul nsw i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul nsw i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
;
; CHECK-NOT: %a_sq = mul
; CHECK-NOT: %a_cub = mul
; CHECK-NOT: %a_times_3 = mul
; CHECK-NOT: %term_a3_plus_b = add
; CHECK-NOT: %term_a3_plus_b_times_b = mul
; CHECK-NOT: %term_a3_times_a = mul
; CHECK-NOT: %x_outer_candidate = add
; CHECK-NOT: %other_part_candidate = mul
; CHECK-NOT: %result = add {{.*}}, %a_cub 
}