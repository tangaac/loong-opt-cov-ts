; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/token.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/token.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

@_K_bto = dso_local global [50000 x ptr] zeroinitializer, align 8
@_K_ato = dso_local global [50000 x ptr] zeroinitializer, align 8
@_K_atm = dso_local global i32 0, align 4
@_K_btm = dso_local global i32 0, align 4

; Function Attrs: nounwind
define dso_local void @K_settoken(i32 noundef signext %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store ptr %2, ptr %6, align 8, !tbaa !7
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load ptr, ptr %6, align 8, !tbaa !7
  %11 = load i32, ptr %5, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [50000 x ptr], ptr @_K_bto, i64 0, i64 %12
  store ptr %10, ptr %13, align 8, !tbaa !7
  br label %19

14:                                               ; preds = %3
  %15 = load ptr, ptr %6, align 8, !tbaa !7
  %16 = load i32, ptr %5, align 4, !tbaa !3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [50000 x ptr], ptr @_K_ato, i64 0, i64 %17
  store ptr %15, ptr %18, align 8, !tbaa !7
  br label %19

19:                                               ; preds = %14, %9
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
