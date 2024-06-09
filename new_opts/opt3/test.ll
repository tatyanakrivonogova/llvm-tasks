; ModuleID = 'new_opts/opt3/test.cpp'
source_filename = "new_opts/opt3/test.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @_Z4testi(i32 %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 1
  br i1 %2, label %3, label %27

3:                                                ; preds = %1
  %4 = add i32 %0, -1
  %5 = add i32 %0, -2
  %6 = and i32 %4, 3
  %7 = icmp ult i32 %5, 3
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = sub i32 %4, %6
  br label %29

10:                                               ; preds = %29, %3
  %11 = phi i32 [ undef, %3 ], [ %55, %29 ]
  %12 = phi i32 [ 1, %3 ], [ %56, %29 ]
  %13 = phi i32 [ 0, %3 ], [ %55, %29 ]
  %14 = icmp eq i32 %6, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %10, %15
  %16 = phi i32 [ %24, %15 ], [ %12, %10 ]
  %17 = phi i32 [ %23, %15 ], [ %13, %10 ]
  %18 = phi i32 [ %25, %15 ], [ %6, %10 ]
  %19 = sitofp i32 %16 to double
  %20 = fmul double %19, %19
  %21 = sitofp i32 %17 to double
  %22 = fadd double %20, %21
  %23 = fptosi double %22 to i32
  %24 = add nuw nsw i32 %16, 1
  %25 = add i32 %18, -1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %15, !llvm.loop !2

27:                                               ; preds = %10, %15, %1
  %28 = phi i32 [ 0, %1 ], [ %11, %10 ], [ %23, %15 ]
  ret i32 %28

29:                                               ; preds = %29, %8
  %30 = phi i32 [ 1, %8 ], [ %56, %29 ]
  %31 = phi i32 [ 0, %8 ], [ %55, %29 ]
  %32 = phi i32 [ %9, %8 ], [ %57, %29 ]
  %33 = sitofp i32 %30 to double
  %34 = fmul double %33, %33
  %35 = sitofp i32 %31 to double
  %36 = fadd double %34, %35
  %37 = fptosi double %36 to i32
  %38 = add nuw nsw i32 %30, 1
  %39 = sitofp i32 %38 to double
  %40 = fmul double %39, %39
  %41 = sitofp i32 %37 to double
  %42 = fadd double %40, %41
  %43 = fptosi double %42 to i32
  %44 = add nuw nsw i32 %30, 2
  %45 = sitofp i32 %44 to double
  %46 = fmul double %45, %45
  %47 = sitofp i32 %43 to double
  %48 = fadd double %46, %47
  %49 = fptosi double %48 to i32
  %50 = add nuw nsw i32 %30, 3
  %51 = sitofp i32 %50 to double
  %52 = fmul double %51, %51
  %53 = sitofp i32 %49 to double
  %54 = fadd double %52, %53
  %55 = fptosi double %54 to i32
  %56 = add nuw nsw i32 %30, 4
  %57 = add i32 %32, -4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %10, label %29
}

attributes #0 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.disable"}
