; RUN: %opt %load_plugin -passes=myPeepholePass,dce -S < %s | %FileCheck %s


define dso_local noundef i64 @_Z12cube_of_sum0xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, %a
  %mul1 = mul i64 %mul, %a
  %mul4 = mul i64 %a, 3
  %mul6 = mul i64 %mul4, %a
  %reass.add23 = add i64 %mul4, %b
  %reass.mul24 = mul i64 %reass.add23, %b
  %reass.add22 = add i64 %reass.mul24, %mul6
  %reass.mul = mul i64 %reass.add22, %b
  %add11 = add i64 %reass.mul, %mul1
  ret i64 %add11


; CHECK-LABEL: @_Z12cube_of_sum0xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z12cube_of_sum1xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, %a
  %mul1 = mul i64 %mul, %a
  %mul3 = mul i64 %b, %b
  %mul4 = mul i64 %a, 3
  %reass.add23 = add i64 %b, %a
  %reass.mul24 = mul i64 %mul4, %reass.add23
  %reass.add22 = add i64 %reass.mul24, %mul3
  %reass.mul = mul i64 %reass.add22, %b
  %add11 = add i64 %reass.mul, %mul1
  ret i64 %add11

; CHECK-LABEL: @_Z12cube_of_sum1xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z12cube_of_sum2xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, %a
  %mul1 = mul i64 %mul, %a
  %mul2 = mul i64 %a, 3
  %mul6 = mul i64 %b, %b
  %reass.add23 = add i64 %b, %a
  %reass.mul24 = mul i64 %mul2, %reass.add23
  %reass.add22 = add i64 %reass.mul24, %mul6
  %reass.mul = mul i64 %reass.add22, %b
  %add11 = add i64 %reass.mul, %mul1
  ret i64 %add11

; CHECK-LABEL: @_Z12cube_of_sum2xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z12cube_of_sum3xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, %a
  %mul1 = mul i64 %mul, %a
  %mul2 = mul i64 %a, 3
  %mul10 = mul i64 %b, %b
  %reass.add23 = add i64 %b, %a
  %reass.mul24 = mul i64 %mul2, %reass.add23
  %reass.add22 = add i64 %reass.mul24, %mul10
  %reass.mul = mul i64 %reass.add22, %b
  %add11 = add i64 %reass.mul, %mul1
  ret i64 %add11

; CHECK-LABEL: @_Z12cube_of_sum3xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z12cube_of_sum4xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, %a
  %mul1 = mul i64 %mul, %a
  %mul2 = mul i64 %a, 3
  %mul6 = mul i64 %b, %b
  %reass.add23 = add i64 %b, %a
  %reass.mul24 = mul i64 %mul2, %reass.add23
  %reass.add22 = add i64 %reass.mul24, %mul6
  %reass.mul = mul i64 %reass.add22, %b
  %add11 = add i64 %reass.mul, %mul1
  ret i64 %add11

; CHECK-LABEL: @_Z12cube_of_sum4xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z12cube_of_sum5xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, %a
  %mul1 = mul i64 %mul, %a
  %mul2 = mul i64 %a, 3
  %mul7 = mul i64 %mul2, %a
  %reass.add23 = add i64 %mul2, %b
  %reass.mul24 = mul i64 %reass.add23, %b
  %reass.add22 = add i64 %reass.mul24, %mul7
  %reass.mul = mul i64 %reass.add22, %b
  %add11 = add i64 %reass.mul, %mul1
  ret i64 %add11

; CHECK-LABEL: @_Z12cube_of_sum5xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z12cube_of_sum6xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul2 = mul i64 %a, %a
  %mul3 = mul i64 %mul2, %a
  %mul4 = mul i64 %a, 3
  %mul6 = mul i64 %mul4, %a
  %reass.add23 = add i64 %mul4, %b
  %reass.mul24 = mul i64 %reass.add23, %b
  %reass.add22 = add i64 %reass.mul24, %mul6
  %reass.mul = mul i64 %reass.add22, %b
  %add11 = add i64 %reass.mul, %mul3
  ret i64 %add11

; CHECK-LABEL: @_Z12cube_of_sum6xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z12cube_of_sum7xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul1 = mul i64 %b, %b
  %mul2 = mul i64 %a, %a
  %mul3 = mul i64 %mul2, %a
  %mul4 = mul i64 %a, 3
  %reass.add23 = add i64 %b, %a
  %reass.mul24 = mul i64 %mul4, %reass.add23
  %reass.add22 = add i64 %reass.mul24, %mul1
  %reass.mul = mul i64 %reass.add22, %b
  %add11 = add i64 %reass.mul, %mul3
  ret i64 %add11

; CHECK-LABEL: @_Z12cube_of_sum7xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z12cube_of_sum8xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul2 = mul i64 %a, 3
  %mul3 = mul i64 %mul2, %a
  %mul5 = mul i64 %a, %a
  %mul6 = mul i64 %mul5, %a
  %reass.add23 = add i64 %mul2, %b
  %reass.mul24 = mul i64 %reass.add23, %b
  %reass.add = add i64 %reass.mul24, %mul3
  %reass.mul = mul i64 %reass.add, %b
  %add11 = add i64 %reass.mul, %mul6
  ret i64 %add11

; CHECK-LABEL: @_Z12cube_of_sum8xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z12cube_of_sum9xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul2 = mul i64 %a, 3
  %mul3 = mul i64 %mul2, %a
  %reass.add = add i64 %mul2, %b
  %reass.mul = mul i64 %reass.add, %b
  %add23 = add i64 %reass.mul, %mul3
  %add8 = mul i64 %add23, %b
  %mul9 = mul i64 %a, %a
  %mul10 = mul i64 %mul9, %a
  %add11 = add i64 %add8, %mul10
  ret i64 %add11

; CHECK-LABEL: @_Z12cube_of_sum9xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z13cube_of_sum10xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul2 = mul i64 %a, 3
  %mul323 = add i64 %mul2, %b
  %add = mul i64 %mul323, %b
  %mul5 = mul i64 %a, %a
  %mul6 = mul i64 %mul5, %a
  %mul10 = mul i64 %mul2, %a
  %reass.add = add i64 %add, %mul10
  %reass.mul = mul i64 %reass.add, %b
  %add11 = add i64 %reass.mul, %mul6
  ret i64 %add11

; CHECK-LABEL: @_Z13cube_of_sum10xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z13cube_of_sum11xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul2 = mul i64 %a, 3
  %mul323 = add i64 %mul2, %b
  %mul122 = mul i64 %mul323, %b
  %mul6 = mul i64 %mul2, %a
  %add24 = add i64 %mul122, %mul6
  %add8 = mul i64 %add24, %b
  %mul9 = mul i64 %a, %a
  %mul10 = mul i64 %mul9, %a
  %add11 = add i64 %add8, %mul10
  ret i64 %add11

; CHECK-LABEL: @_Z13cube_of_sum11xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z13cube_of_sum12xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, 3
  %mul3 = mul i64 %a, %a
  %mul4 = mul i64 %mul3, %a
  %mul6 = mul i64 %b, %b
  %reass.add23 = add i64 %b, %a
  %reass.mul24 = mul i64 %mul, %reass.add23
  %reass.add22 = add i64 %reass.mul24, %mul6
  %reass.mul = mul i64 %reass.add22, %b
  %add11 = add i64 %reass.mul, %mul4
  ret i64 %add11

; CHECK-LABEL: @_Z13cube_of_sum12xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z13cube_of_sum13xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, 3
  %mul3 = mul i64 %a, %a
  %mul4 = mul i64 %mul3, %a
  %mul10 = mul i64 %b, %b
  %reass.add23 = add i64 %b, %a
  %reass.mul24 = mul i64 %mul, %reass.add23
  %reass.add22 = add i64 %reass.mul24, %mul10
  %reass.mul = mul i64 %reass.add22, %b
  %add11 = add i64 %reass.mul, %mul4
  ret i64 %add11

; CHECK-LABEL: @_Z13cube_of_sum13xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z13cube_of_sum14xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, 3
  %mul3 = mul i64 %b, %b
  %mul5 = mul i64 %a, %a
  %mul6 = mul i64 %mul5, %a
  %reass.add23 = add i64 %b, %a
  %reass.mul24 = mul i64 %mul, %reass.add23
  %reass.add = add i64 %reass.mul24, %mul3
  %reass.mul = mul i64 %reass.add, %b
  %add11 = add i64 %reass.mul, %mul6
  ret i64 %add11

; CHECK-LABEL: @_Z13cube_of_sum14xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z13cube_of_sum15xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, 3
  %mul3 = mul i64 %b, %b
  %reass.add = add i64 %b, %a
  %reass.mul = mul i64 %mul, %reass.add
  %add23 = add i64 %reass.mul, %mul3
  %add8 = mul i64 %add23, %b
  %mul9 = mul i64 %a, %a
  %mul10 = mul i64 %mul9, %a
  %add11 = add i64 %add8, %mul10
  ret i64 %add11

; CHECK-LABEL: @_Z13cube_of_sum15xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z13cube_of_sum16xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul423 = add i64 %b, %a
  %mul222 = mul i64 %a, 3
  %add = mul i64 %mul222, %mul423
  %mul6 = mul i64 %a, %a
  %mul7 = mul i64 %mul6, %a
  %mul10 = mul i64 %b, %b
  %reass.add = add i64 %add, %mul10
  %reass.mul = mul i64 %reass.add, %b
  %add11 = add i64 %reass.mul, %mul7
  ret i64 %add11

; CHECK-LABEL: @_Z13cube_of_sum16xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z13cube_of_sum17xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, 3
  %mul423 = add i64 %b, %a
  %mul222 = mul i64 %mul, %mul423
  %mul6 = mul i64 %b, %b
  %add24 = add i64 %mul222, %mul6
  %add8 = mul i64 %add24, %b
  %mul9 = mul i64 %a, %a
  %mul10 = mul i64 %mul9, %a
  %add11 = add i64 %add8, %mul10
  ret i64 %add11

; CHECK-LABEL: @_Z13cube_of_sum17xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z13cube_of_sum18xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, 3
  %mul3 = mul i64 %a, %a
  %mul4 = mul i64 %mul3, %a
  %mul6 = mul i64 %b, %b
  %reass.add23 = add i64 %b, %a
  %reass.mul24 = mul i64 %mul, %reass.add23
  %reass.add22 = add i64 %reass.mul24, %mul6
  %reass.mul = mul i64 %reass.add22, %b
  %add11 = add i64 %reass.mul, %mul4
  ret i64 %add11

; CHECK-LABEL: @_Z13cube_of_sum18xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z13cube_of_sum19xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, 3
  %mul3 = mul i64 %a, %a
  %mul4 = mul i64 %mul3, %a
  %mul7 = mul i64 %mul, %a
  %reass.add23 = add i64 %mul, %b
  %reass.mul24 = mul i64 %reass.add23, %b
  %reass.add22 = add i64 %reass.mul24, %mul7
  %reass.mul = mul i64 %reass.add22, %b
  %add11 = add i64 %reass.mul, %mul4
  ret i64 %add11

; CHECK-LABEL: @_Z13cube_of_sum19xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z13cube_of_sum20xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, 3
  %mul123 = add i64 %mul, %b
  %add = mul i64 %mul123, %b
  %mul5 = mul i64 %a, %a
  %mul6 = mul i64 %mul5, %a
  %mul10 = mul i64 %mul, %a
  %reass.add = add i64 %add, %mul10
  %reass.mul = mul i64 %reass.add, %b
  %add11 = add i64 %reass.mul, %mul6
  ret i64 %add11

; CHECK-LABEL: @_Z13cube_of_sum20xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z13cube_of_sum21xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, 3
  %mul123 = add i64 %mul, %b
  %mul222 = mul i64 %mul123, %b
  %mul6 = mul i64 %mul, %a
  %add24 = add i64 %mul222, %mul6
  %add8 = mul i64 %add24, %b
  %mul9 = mul i64 %a, %a
  %mul10 = mul i64 %mul9, %a
  %add11 = add i64 %add8, %mul10
  ret i64 %add11

; CHECK-LABEL: @_Z13cube_of_sum21xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z13cube_of_sum22xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul423 = add i64 %b, %a
  %mul222 = mul i64 %a, 3
  %add = mul i64 %mul222, %mul423
  %mul6 = mul i64 %a, %a
  %mul7 = mul i64 %mul6, %a
  %mul10 = mul i64 %b, %b
  %reass.add = add i64 %add, %mul10
  %reass.mul = mul i64 %reass.add, %b
  %add11 = add i64 %reass.mul, %mul7
  ret i64 %add11

; CHECK-LABEL: @_Z13cube_of_sum22xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}

define dso_local noundef i64 @_Z13cube_of_sum23xx(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %mul = mul i64 %a, 3
  %mul423 = add i64 %b, %a
  %mul222 = mul i64 %mul, %mul423
  %mul6 = mul i64 %b, %b
  %add24 = add i64 %mul222, %mul6
  %add8 = mul i64 %add24, %b
  %mul9 = mul i64 %a, %a
  %mul10 = mul i64 %mul9, %a
  %add11 = add i64 %add8, %mul10
  ret i64 %add11

; CHECK-LABEL: @_Z13cube_of_sum23xx(i64 noundef %a, i64 noundef %b)
; CHECK-NEXT: entry:
; CHECK-DAG: %[[SUM_AB_OPT:.+]] = add i64 %a, %b
; CHECK-DAG: %[[SUM_AB_SQ_OPT:.+]] = mul i64 %[[SUM_AB_OPT]], %[[SUM_AB_OPT]]
; CHECK-DAG: %[[CUB_SUM_AB_OPT:.+]] = mul i64 %[[SUM_AB_SQ_OPT]], %[[SUM_AB_OPT]]
; CHECK: ret i64 %[[CUB_SUM_AB_OPT]]
}
