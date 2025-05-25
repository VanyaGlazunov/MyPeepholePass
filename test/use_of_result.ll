; RUN: %opt %load_plugin -passes=myPeepholePass -S < %s | %FileCheck %s


define i64 @test_use_of_result(i64 %a, i64 %b, i64 %c) {
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
  %final_result = add nsw i64 %result, %c
  ret i64 %final_result

; CHECK-LABEL: @test_use_of_result 
; CHECK: %[[CUB_SUM_AB_OPT:.+]] = mul nsw i64 %{{.*}}, %{{.*}}
; CHECK: %final_result = add nsw i64 %[[CUB_SUM_AB_OPT:.+]], %c
; CHECK: ret i64 %final_result 
}