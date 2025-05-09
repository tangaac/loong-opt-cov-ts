; ModuleID = './MultiSource/Applications/d/CMakeFiles/make_dparser.dir/version.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/d/version.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".%d\00", align 1

; Function Attrs: nounwind
define dso_local void @d_version(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8, !tbaa !3
  %4 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str, i32 noundef signext 1, i32 noundef signext 2) #1
  %5 = load ptr, ptr %2, align 8, !tbaa !3
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  store ptr %7, ptr %2, align 8, !tbaa !3
  %8 = load ptr, ptr %2, align 8, !tbaa !3
  %9 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef %8, ptr noundef @.str.1, i32 noundef signext 5725) #1
  %10 = load ptr, ptr %2, align 8, !tbaa !3
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  store ptr %12, ptr %2, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind
declare signext i32 @sprintf(ptr noundef, ptr noundef, ...) #0

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 omnipotent char", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
