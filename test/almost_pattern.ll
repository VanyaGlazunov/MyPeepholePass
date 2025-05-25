; RUN: %opt %load_plugin -passes=myPeepholePass -S < %s | %FileCheck %s

define i64 @test_almost_pattern(i64 %a, i64 %b) {
  %a_sq = mul nsw i64 %a, %a
  %a_cub = mul nsw i64 %a_sq, %a
  %a_times_3 = mul nsw i64 %a, 3
  %term_a3_plus_b = add nsw i64 %a_times_3, %a
  %term_a3_plus_b_times_b = mul nsw i64 %term_a3_plus_b, %b
  %term_a3_times_a = mul nsw i64 %a_times_3, %a
  %x_outer_candidate = add nsw i64 %term_a3_plus_b_times_b, %term_a3_times_a
  %other_part_candidate = mul nsw i64 %x_outer_candidate, %b
  %result = add nsw i64 %other_part_candidate, %a_cub
  ret i64 %result

; CHECK-LABEL: @test_almost_pattern
; CHECK: %term_a3_plus_b = add nsw i64 %a_times_3, %a

; CHECK-NOT: add nsw i64 %a, %b ; 
}

define i64 @wrong_const(i64 %a, i64 %b) {
  %a_sq = mul nsw i64 %a, %a
  %a_cub = mul nsw i64 %a_sq, %a
  %a_times_3 = mul nsw i64 %a, 2
  %term_a3_plus_b = add nsw i64 %a_times_3, %a
  %term_a3_plus_b_times_b = mul nsw i64 %term_a3_plus_b, %b
  %term_a3_times_a = mul nsw i64 %a_times_3, %a
  %x_outer_candidate = add nsw i64 %term_a3_plus_b_times_b, %term_a3_times_a
  %other_part_candidate = mul nsw i64 %x_outer_candidate, %b
  %result = add nsw i64 %other_part_candidate, %a_cub
  ret i64 %result

; CHECK-LABEL: @wrong_const
; CHECK: %a_times_3 = mul nsw i64 %a, 2

; CHECK-NOT: add nsw i64 %a, %b ; 
}