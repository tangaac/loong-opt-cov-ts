; ModuleID = './MultiSource/Applications/aha/CMakeFiles/aha.dir/userfun.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/aha/userfun.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

; Function Attrs: nounwind
define dso_local signext i32 @userfun(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  %3 = load i32, ptr %2, align 4, !tbaa !3
  %4 = and i32 %3, -4
  %5 = load i32, ptr %2, align 4, !tbaa !3
  %6 = and i32 %5, 1
  %7 = shl i32 %6, 1
  %8 = or i32 %4, %7
  %9 = load i32, ptr %2, align 4, !tbaa !3
  %10 = and i32 %9, 2
  %11 = ashr i32 %10, 1
  %12 = or i32 %8, %11
  ret i32 %12
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
