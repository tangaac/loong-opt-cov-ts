; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/misc.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/misc.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

@_Z_qflag = internal global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"spiff -- \00", align 1
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of Memory\0A\00", align 1
@Z_err_buf = dso_local global [1024 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"The files differ in more than %d places\0A\00", align 1

; Function Attrs: nounwind
define dso_local void @Z_setquiet() #0 {
  store i32 1, ptr @_Z_qflag, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind
define dso_local void @Z_chatter(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !7
  %3 = load i32, ptr @_Z_qflag, align 4, !tbaa !3
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @stderr, align 8, !tbaa !10
  %7 = call signext i32 @fputs(ptr noundef @.str, ptr noundef %6)
  %8 = load ptr, ptr %2, align 8, !tbaa !7
  %9 = load ptr, ptr @stderr, align 8, !tbaa !10
  %10 = call signext i32 @fputs(ptr noundef %8, ptr noundef %9)
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

declare signext i32 @fputs(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local void @Z_complain(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !7
  %3 = load i32, ptr @_Z_qflag, align 4, !tbaa !3
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !7
  %7 = load ptr, ptr @stderr, align 8, !tbaa !10
  %8 = call signext i32 @fputs(ptr noundef %6, ptr noundef %7)
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind
define dso_local void @_Z_qfatal(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !7
  call void @V_cleanup()
  call void @O_cleanup()
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  call void @Z_complain(ptr noundef %3)
  call void @_Z_errexit()
  ret void
}

declare void @V_cleanup(...) #1

declare void @O_cleanup(...) #1

; Function Attrs: nounwind
define dso_local void @Z_fatal(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !7
  call void @V_cleanup()
  call void @O_cleanup()
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = load ptr, ptr @stderr, align 8, !tbaa !10
  %5 = call signext i32 @fputs(ptr noundef %3, ptr noundef %4)
  call void @_Z_errexit()
  ret void
}

; Function Attrs: nounwind
define dso_local ptr @_Z_myalloc(i32 noundef signext %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #5
  %6 = load i32, ptr %3, align 4, !tbaa !3
  %7 = zext i32 %6 to i64
  %8 = call noalias ptr @calloc(i64 noundef %7, i64 noundef 1) #6
  store ptr %8, ptr %4, align 8, !tbaa !12
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load ptr, ptr %4, align 8, !tbaa !12
  store ptr %11, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %14

12:                                               ; preds = %1
  call void @Z_fatal(ptr noundef @.str.1)
  %13 = load ptr, ptr %4, align 8, !tbaa !12
  store ptr %13, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %14

14:                                               ; preds = %12, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #5
  %15 = load ptr, ptr %2, align 8
  ret ptr %15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind
define dso_local void @Z_exceed(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  %3 = load i32, ptr %2, align 4, !tbaa !3
  %4 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.2, i32 noundef signext %3) #5
  call void @_Z_qfatal(ptr noundef @Z_err_buf)
  ret void
}

; Function Attrs: nounwind
declare signext i32 @sprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind
define internal void @_Z_errexit() #0 {
  call void @exit(i32 noundef signext 2) #7
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef signext) #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0,1) }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 int", !9, i64 0}
