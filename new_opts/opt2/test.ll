; ModuleID = 'new_opts/opt2/test.cpp'
source_filename = "new_opts/opt2/test.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local signext i16 @_Z5test1sss(i16 signext %0, i16 signext %1, i16 signext %2) local_unnamed_addr #0 {
  %4 = sext i16 %0 to i32
  %5 = mul nsw i32 %4, %4
  %6 = sext i16 %1 to i32
  %7 = sext i16 %2 to i32
  %8 = shl nsw i32 %4, 1
  %9 = shl nsw i32 %6, 1
  %10 = add nsw i32 %8, %7
  %11 = add nsw i32 %10, %9
  %12 = mul i32 %11, %7
  %13 = add nsw i32 %8, %6
  %14 = mul i32 %13, %6
  %15 = add i32 %14, %5
  %16 = add i32 %15, %12
  %17 = trunc i32 %16 to i16
  ret i16 %17
}

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
