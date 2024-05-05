; ModuleID = 'float-compare.c'
source_filename = "float-compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"a = %.20f\0Ab = %.20f\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"a == b ? %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store i32 0, ptr %1, align 4
  store double 2.000000e-01, ptr %2, align 8
  %4 = call double @sqrt(double noundef 5.000000e+00) #3
  %5 = fdiv double 1.000000e+00, %4
  %6 = call double @sqrt(double noundef 5.000000e+00) #3
  %7 = fdiv double %5, %6
  store double %7, ptr %3, align 8
  %8 = load double, ptr %2, align 8
  %9 = load double, ptr %3, align 8
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %8, double noundef %9)
  %11 = load double, ptr %2, align 8
  %12 = load double, ptr %3, align 8
  %13 = fcmp oeq double %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, ptr @.str.2, ptr @.str.3
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %15)
  ret i32 0
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 19.0.0git (https://github.com/llvm/llvm-project.git bfb868201f821047015465fb3f0afa6daa321b5f)"}
