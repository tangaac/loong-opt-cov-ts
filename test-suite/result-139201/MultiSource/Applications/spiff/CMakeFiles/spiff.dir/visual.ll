; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/visual.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/visual.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"visual mode is not available on this machine\0A\00", align 1

; Function Attrs: nounwind
define dso_local signext i32 @V_visual(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  call void @Z_fatal(ptr noundef @.str)
  %3 = load i32, ptr %2, align 4, !tbaa !3
  %4 = sub nsw i32 0, %3
  ret i32 %4
}

declare void @Z_fatal(...) #1

; Function Attrs: nounwind
define dso_local void @V_cleanup() #0 {
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
