; ModuleID = './MultiSource/Applications/SIBsim4/CMakeFiles/SIBsim4.dir/misc.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/SIBsim4/misc.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

@stdout = external global ptr, align 8
@argv0 = external global ptr, align 8
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\0A while processing:\0A%.256s\0A%.256s\0A\00", align 1
@dna_seq_head = external global [256 x i8], align 1
@rna_seq_head = external global [256 x i8], align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"malloc of %zd failed: %s (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"calloc of %zd, %zd failed: %s (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"realloc of %p to %zd failed: %s (%d)\0A\00", align 1

; Function Attrs: noreturn nounwind
define dso_local void @fatal(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #10
  call void @llvm.va_start.p0(ptr %3)
  %5 = load ptr, ptr @stdout, align 8, !tbaa !8
  %6 = call signext i32 @fflush(ptr noundef %5)
  %7 = load ptr, ptr @argv0, align 8, !tbaa !3
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #10
  %10 = load ptr, ptr @argv0, align 8, !tbaa !3
  %11 = call ptr @strrchr(ptr noundef %10, i32 noundef signext 47) #11
  store ptr %11, ptr %4, align 8, !tbaa !3
  %12 = load ptr, ptr @stderr, align 8, !tbaa !8
  %13 = load ptr, ptr %4, align 8, !tbaa !3
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 8, !tbaa !3
  %17 = getelementptr inbounds i8, ptr %16, i64 1
  br label %20

18:                                               ; preds = %9
  %19 = load ptr, ptr @argv0, align 8, !tbaa !3
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi ptr [ %17, %15 ], [ %19, %18 ]
  %22 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str, ptr noundef %21) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #10
  br label %23

23:                                               ; preds = %20, %1
  %24 = load ptr, ptr @stderr, align 8, !tbaa !8
  %25 = load ptr, ptr %2, align 8, !tbaa !3
  %26 = load ptr, ptr %3, align 8, !tbaa !10
  %27 = call signext i32 @vfprintf(ptr noundef %24, ptr noundef %25, ptr noundef %26) #10
  call void @llvm.va_end.p0(ptr %3)
  %28 = load ptr, ptr @stderr, align 8, !tbaa !8
  %29 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.1, ptr noundef @dna_seq_head, ptr noundef @rna_seq_head) #10
  call void @exit(i32 noundef signext 1) #12
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

declare signext i32 @fflush(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef signext) #4

; Function Attrs: nounwind
declare signext i32 @fprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
declare signext i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef signext) #0

; Function Attrs: nounwind
define dso_local ptr @xmalloc(i64 noundef %0) #5 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store i64 %0, ptr %2, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #10
  %4 = load i64, ptr %2, align 8, !tbaa !11
  %5 = call noalias ptr @malloc(i64 noundef %4) #13
  store ptr %5, ptr %3, align 8, !tbaa !10
  %6 = load ptr, ptr %3, align 8, !tbaa !10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i64, ptr %2, align 8, !tbaa !11
  %10 = call ptr @__errno_location() #14
  %11 = load i32, ptr %10, align 4, !tbaa !13
  %12 = call ptr @strerror(i32 noundef signext %11) #10
  %13 = call ptr @__errno_location() #14
  %14 = load i32, ptr %13, align 4, !tbaa !13
  call void (ptr, ...) @fatal(ptr noundef @.str.2, i64 noundef %9, ptr noundef %12, i32 noundef signext %14) #15
  unreachable

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #10
  ret ptr %16
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef signext) #5

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #7

; Function Attrs: nounwind
define dso_local ptr @xcalloc(i64 noundef %0, i64 noundef %1) #5 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store i64 %0, ptr %3, align 8, !tbaa !11
  store i64 %1, ptr %4, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #10
  %6 = load i64, ptr %3, align 8, !tbaa !11
  %7 = load i64, ptr %4, align 8, !tbaa !11
  %8 = call noalias ptr @calloc(i64 noundef %6, i64 noundef %7) #16
  store ptr %8, ptr %5, align 8, !tbaa !10
  %9 = load ptr, ptr %5, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i64, ptr %3, align 8, !tbaa !11
  %13 = load i64, ptr %4, align 8, !tbaa !11
  %14 = call ptr @__errno_location() #14
  %15 = load i32, ptr %14, align 4, !tbaa !13
  %16 = call ptr @strerror(i32 noundef signext %15) #10
  %17 = call ptr @__errno_location() #14
  %18 = load i32, ptr %17, align 4, !tbaa !13
  call void (ptr, ...) @fatal(ptr noundef @.str.3, i64 noundef %12, i64 noundef %13, ptr noundef %16, i32 noundef signext %18) #15
  unreachable

19:                                               ; preds = %2
  %20 = load ptr, ptr %5, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #10
  ret ptr %20
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #8

; Function Attrs: nounwind
define dso_local ptr @xrealloc(ptr noundef %0, i64 noundef %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !10
  store i64 %1, ptr %4, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #10
  %6 = load ptr, ptr %3, align 8, !tbaa !10
  %7 = load i64, ptr %4, align 8, !tbaa !11
  %8 = call ptr @realloc(ptr noundef %6, i64 noundef %7) #17
  store ptr %8, ptr %5, align 8, !tbaa !10
  %9 = load ptr, ptr %5, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !tbaa !10
  %13 = load i64, ptr %4, align 8, !tbaa !11
  %14 = call ptr @__errno_location() #14
  %15 = load i32, ptr %14, align 4, !tbaa !13
  %16 = call ptr @strerror(i32 noundef signext %15) #10
  %17 = call ptr @__errno_location() #14
  %18 = load i32, ptr %17, align 4, !tbaa !13
  call void (ptr, ...) @fatal(ptr noundef @.str.4, ptr noundef %12, i64 noundef %13, ptr noundef %16, i32 noundef signext %18) #15
  unreachable

19:                                               ; preds = %2
  %20 = load ptr, ptr %5, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #10
  ret ptr %20
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #9

attributes #0 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #6 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #7 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #8 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #9 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { noreturn }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 omnipotent char", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !6, i64 0}
