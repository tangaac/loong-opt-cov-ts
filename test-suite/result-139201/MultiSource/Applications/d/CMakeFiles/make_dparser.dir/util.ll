; ModuleID = './MultiSource/Applications/d/CMakeFiles/make_dparser.dir/util.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/d/util.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%struct.AbstractVec = type { i32, i32, ptr, [3 x ptr] }
%struct.AbstractStack = type { ptr, ptr, ptr, [8 x ptr] }
%struct.hash_fns_t = type { ptr, ptr, [2 x ptr] }

@prime2 = dso_local global [29 x i32] [i32 1, i32 3, i32 7, i32 13, i32 31, i32 61, i32 127, i32 251, i32 509, i32 1021, i32 2039, i32 4093, i32 8191, i32 16381, i32 32749, i32 65521, i32 131071, i32 262139, i32 524287, i32 1048573, i32 2097143, i32 4194301, i32 8388593, i32 16777213, i32 33554393, i32 67108859, i32 134217689, i32 268435399, i32 536870909], align 4
@verbose_level = dso_local global i32 0, align 4
@debug_level = dso_local global i32 0, align 4
@test_level = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"fail: %s\0A\00", align 1
@stderr = external global ptr, align 8

; Function Attrs: nounwind
define dso_local ptr @d_dup_pathname_str(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #11
  %6 = load ptr, ptr %3, align 8, !tbaa !3
  store ptr %6, ptr %4, align 8, !tbaa !3
  %7 = load ptr, ptr %3, align 8, !tbaa !3
  %8 = icmp ne ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call noalias ptr @strdup(ptr noundef @.str) #11
  store ptr %10, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %46

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 8, !tbaa !3
  %13 = load i8, ptr %12, align 1, !tbaa !8
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 34
  br i1 %15, label %16, label %39

16:                                               ; preds = %11
  %17 = load ptr, ptr %4, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %18, ptr %4, align 8, !tbaa !3
  br label %19

19:                                               ; preds = %31, %16
  %20 = load ptr, ptr %4, align 8, !tbaa !3
  %21 = load i8, ptr %20, align 1, !tbaa !8
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load ptr, ptr %4, align 8, !tbaa !3
  %26 = load i8, ptr %25, align 1, !tbaa !8
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 34
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load ptr, ptr %4, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw i8, ptr %32, i32 1
  store ptr %33, ptr %4, align 8, !tbaa !3
  br label %19, !llvm.loop !9

34:                                               ; preds = %29
  %35 = load ptr, ptr %3, align 8, !tbaa !3
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  %37 = load ptr, ptr %4, align 8, !tbaa !3
  %38 = call ptr @dup_str(ptr noundef %36, ptr noundef %37)
  store ptr %38, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %46

39:                                               ; preds = %11
  %40 = load ptr, ptr %3, align 8, !tbaa !3
  %41 = load ptr, ptr %3, align 8, !tbaa !3
  %42 = load ptr, ptr %3, align 8, !tbaa !3
  %43 = call i64 @strlen(ptr noundef %42) #12
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 %43
  %45 = call ptr @dup_str(ptr noundef %40, ptr noundef %44)
  store ptr %45, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %46

46:                                               ; preds = %39, %34, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #11
  %47 = load ptr, ptr %2, align 8
  ret ptr %47
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #0

; Function Attrs: nounwind
define dso_local ptr @dup_str(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #11
  %7 = load ptr, ptr %4, align 8, !tbaa !3
  %8 = load ptr, ptr %3, align 8, !tbaa !3
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, ptr %5, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #11
  %13 = load i32, ptr %5, align 4, !tbaa !11
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = call noalias ptr @malloc(i64 noundef %15) #13
  store ptr %16, ptr %6, align 8, !tbaa !3
  %17 = load ptr, ptr %6, align 8, !tbaa !3
  %18 = load ptr, ptr %3, align 8, !tbaa !3
  %19 = load i32, ptr %5, align 4, !tbaa !11
  %20 = sext i32 %19 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %18, i64 %20, i1 false)
  %21 = load ptr, ptr %6, align 8, !tbaa !3
  %22 = load i32, ptr %5, align 4, !tbaa !11
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  store i8 0, ptr %24, align 1, !tbaa !8
  %25 = load ptr, ptr %6, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #11
  ret ptr %25
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
define dso_local signext i32 @strhashl(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i32 %1, ptr %4, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #11
  store i32 0, ptr %5, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #11
  store i32 0, ptr %7, align 4, !tbaa !11
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, ptr %7, align 4, !tbaa !11
  %10 = load i32, ptr %4, align 4, !tbaa !11
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load i32, ptr %5, align 4, !tbaa !11
  %14 = shl i32 %13, 4
  %15 = load ptr, ptr %3, align 8, !tbaa !3
  %16 = load i8, ptr %15, align 1, !tbaa !8
  %17 = sext i8 %16 to i32
  %18 = add i32 %14, %17
  store i32 %18, ptr %5, align 4, !tbaa !11
  %19 = load i32, ptr %5, align 4, !tbaa !11
  %20 = and i32 %19, -268435456
  store i32 %20, ptr %6, align 4, !tbaa !11
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load i32, ptr %5, align 4, !tbaa !11
  %24 = load i32, ptr %6, align 4, !tbaa !11
  %25 = lshr i32 %24, 24
  %26 = xor i32 %23, %25
  %27 = load i32, ptr %6, align 4, !tbaa !11
  %28 = xor i32 %26, %27
  store i32 %28, ptr %5, align 4, !tbaa !11
  br label %29

29:                                               ; preds = %22, %12
  br label %30

30:                                               ; preds = %29
  %31 = load i32, ptr %7, align 4, !tbaa !11
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %7, align 4, !tbaa !11
  %33 = load ptr, ptr %3, align 8, !tbaa !3
  %34 = getelementptr inbounds nuw i8, ptr %33, i32 1
  store ptr %34, ptr %3, align 8, !tbaa !3
  br label %8, !llvm.loop !13

35:                                               ; preds = %8
  %36 = load i32, ptr %5, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #11
  ret i32 %36
}

; Function Attrs: nounwind
define dso_local signext i32 @buf_read(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !14
  store ptr %2, ptr %7, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 128, ptr %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #11
  %11 = load ptr, ptr %6, align 8, !tbaa !14
  store ptr null, ptr %11, align 8, !tbaa !3
  %12 = load ptr, ptr %7, align 8, !tbaa !17
  store i32 0, ptr %12, align 4, !tbaa !11
  %13 = load ptr, ptr %5, align 8, !tbaa !3
  %14 = call signext i32 (ptr, i32, ...) @open(ptr noundef %13, i32 noundef signext 0)
  store i32 %14, ptr %9, align 4, !tbaa !11
  %15 = load i32, ptr %9, align 4, !tbaa !11
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, ptr %4, align 4
  store i32 1, ptr %10, align 4
  br label %55

18:                                               ; preds = %3
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 128, i1 false)
  %19 = load i32, ptr %9, align 4, !tbaa !11
  %20 = call signext i32 @fstat(i32 noundef signext %19, ptr noundef %8) #11
  %21 = getelementptr inbounds nuw %struct.stat, ptr %8, i32 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !19
  %23 = trunc i64 %22 to i32
  %24 = load ptr, ptr %7, align 8, !tbaa !17
  store i32 %23, ptr %24, align 4, !tbaa !11
  %25 = load ptr, ptr %7, align 8, !tbaa !17
  %26 = load i32, ptr %25, align 4, !tbaa !11
  %27 = add nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = call noalias ptr @malloc(i64 noundef %28) #13
  %30 = load ptr, ptr %6, align 8, !tbaa !14
  store ptr %29, ptr %30, align 8, !tbaa !3
  %31 = load ptr, ptr %6, align 8, !tbaa !14
  %32 = load ptr, ptr %31, align 8, !tbaa !3
  %33 = load ptr, ptr %7, align 8, !tbaa !17
  %34 = load i32, ptr %33, align 4, !tbaa !11
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %32, i64 %35
  store i8 0, ptr %36, align 1, !tbaa !8
  %37 = load ptr, ptr %6, align 8, !tbaa !14
  %38 = load ptr, ptr %37, align 8, !tbaa !3
  %39 = load ptr, ptr %7, align 8, !tbaa !17
  %40 = load i32, ptr %39, align 4, !tbaa !11
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %38, i64 %42
  store i8 0, ptr %43, align 1, !tbaa !8
  %44 = load i32, ptr %9, align 4, !tbaa !11
  %45 = load ptr, ptr %6, align 8, !tbaa !14
  %46 = load ptr, ptr %45, align 8, !tbaa !3
  %47 = load ptr, ptr %7, align 8, !tbaa !17
  %48 = load i32, ptr %47, align 4, !tbaa !11
  %49 = sext i32 %48 to i64
  %50 = call i64 @read(i32 noundef signext %44, ptr noundef %46, i64 noundef %49)
  %51 = load i32, ptr %9, align 4, !tbaa !11
  %52 = call signext i32 @close(i32 noundef signext %51)
  %53 = load ptr, ptr %7, align 8, !tbaa !17
  %54 = load i32, ptr %53, align 4, !tbaa !11
  store i32 %54, ptr %4, align 4
  store i32 1, ptr %10, align 4
  br label %55

55:                                               ; preds = %18, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr %8) #11
  %56 = load i32, ptr %4, align 4
  ret i32 %56
}

declare signext i32 @open(ptr noundef, i32 noundef signext, ...) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare signext i32 @fstat(i32 noundef signext, ptr noundef) #0

declare i64 @read(i32 noundef signext, ptr noundef, i64 noundef) #5

declare signext i32 @close(i32 noundef signext) #5

; Function Attrs: nounwind
define dso_local ptr @sbuf_read(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #11
  %7 = load ptr, ptr %3, align 8, !tbaa !3
  %8 = call signext i32 @buf_read(ptr noundef %7, ptr noundef %4, ptr noundef %5)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store ptr null, ptr %2, align 8
  store i32 1, ptr %6, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 8, !tbaa !3
  store ptr %12, ptr %2, align 8
  store i32 1, ptr %6, align 4
  br label %13

13:                                               ; preds = %11, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #11
  %14 = load ptr, ptr %2, align 8
  ret ptr %14
}

; Function Attrs: nounwind
define dso_local void @d_fail(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [256 x i8], align 1
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 256, ptr %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #11
  call void @llvm.va_start.p0(ptr %4)
  %5 = getelementptr inbounds [256 x i8], ptr %3, i64 0, i64 0
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  %7 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %5, i64 noundef 255, ptr noundef @.str.1, ptr noundef %6) #11
  %8 = load ptr, ptr @stderr, align 8, !tbaa !23
  %9 = getelementptr inbounds [256 x i8], ptr %3, i64 0, i64 0
  %10 = load ptr, ptr %4, align 8, !tbaa !25
  %11 = call signext i32 @vfprintf(ptr noundef %8, ptr noundef %9, ptr noundef %10) #11
  call void @llvm.va_end.p0(ptr %4)
  call void @exit(i32 noundef signext 1) #14
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nounwind
declare signext i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind
declare signext i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef signext) #8

; Function Attrs: nounwind
define dso_local void @vec_add_internal(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !25
  store ptr %1, ptr %4, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #11
  %8 = load ptr, ptr %3, align 8, !tbaa !25
  store ptr %8, ptr %5, align 8, !tbaa !26
  %9 = load ptr, ptr %5, align 8, !tbaa !26
  %10 = getelementptr inbounds nuw %struct.AbstractVec, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 8, !tbaa !28
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 8, !tbaa !26
  %15 = getelementptr inbounds nuw %struct.AbstractVec, ptr %14, i32 0, i32 3
  %16 = getelementptr inbounds [3 x ptr], ptr %15, i64 0, i64 0
  %17 = load ptr, ptr %5, align 8, !tbaa !26
  %18 = getelementptr inbounds nuw %struct.AbstractVec, ptr %17, i32 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !30
  br label %89

19:                                               ; preds = %2
  %20 = load ptr, ptr %5, align 8, !tbaa !26
  %21 = getelementptr inbounds nuw %struct.AbstractVec, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !30
  %23 = load ptr, ptr %5, align 8, !tbaa !26
  %24 = getelementptr inbounds nuw %struct.AbstractVec, ptr %23, i32 0, i32 3
  %25 = getelementptr inbounds [3 x ptr], ptr %24, i64 0, i64 0
  %26 = icmp eq ptr %22, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %19
  %28 = call noalias ptr @malloc(i64 noundef 64) #13
  %29 = load ptr, ptr %5, align 8, !tbaa !26
  %30 = getelementptr inbounds nuw %struct.AbstractVec, ptr %29, i32 0, i32 2
  store ptr %28, ptr %30, align 8, !tbaa !30
  %31 = load ptr, ptr %5, align 8, !tbaa !26
  %32 = getelementptr inbounds nuw %struct.AbstractVec, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !30
  %34 = load ptr, ptr %5, align 8, !tbaa !26
  %35 = getelementptr inbounds nuw %struct.AbstractVec, ptr %34, i32 0, i32 3
  %36 = getelementptr inbounds [3 x ptr], ptr %35, i64 0, i64 0
  %37 = load ptr, ptr %5, align 8, !tbaa !26
  %38 = getelementptr inbounds nuw %struct.AbstractVec, ptr %37, i32 0, i32 0
  %39 = load i32, ptr %38, align 8, !tbaa !28
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %36, i64 %41, i1 false)
  br label %88

42:                                               ; preds = %19
  %43 = load ptr, ptr %5, align 8, !tbaa !26
  %44 = getelementptr inbounds nuw %struct.AbstractVec, ptr %43, i32 0, i32 0
  %45 = load i32, ptr %44, align 8, !tbaa !28
  %46 = and i32 %45, 7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %87

48:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #11
  %49 = load ptr, ptr %5, align 8, !tbaa !26
  %50 = getelementptr inbounds nuw %struct.AbstractVec, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8, !tbaa !28
  store i32 %51, ptr %6, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #11
  store i32 4, ptr %7, align 4, !tbaa !11
  %52 = load i32, ptr %6, align 4, !tbaa !11
  %53 = ashr i32 %52, 3
  store i32 %53, ptr %6, align 4, !tbaa !11
  br label %54

54:                                               ; preds = %59, %48
  %55 = load i32, ptr %6, align 4, !tbaa !11
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, ptr %6, align 4, !tbaa !11
  %61 = ashr i32 %60, 1
  store i32 %61, ptr %6, align 4, !tbaa !11
  %62 = load i32, ptr %7, align 4, !tbaa !11
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %7, align 4, !tbaa !11
  br label %54, !llvm.loop !31

64:                                               ; preds = %54
  %65 = load i32, ptr %6, align 4, !tbaa !11
  %66 = ashr i32 %65, 1
  store i32 %66, ptr %6, align 4, !tbaa !11
  %67 = load ptr, ptr %5, align 8, !tbaa !26
  %68 = getelementptr inbounds nuw %struct.AbstractVec, ptr %67, i32 0, i32 0
  %69 = load i32, ptr %68, align 8, !tbaa !28
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, ptr %6, align 4, !tbaa !11
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %71, %64
  %75 = load i32, ptr %7, align 4, !tbaa !11
  %76 = shl i32 1, %75
  store i32 %76, ptr %7, align 4, !tbaa !11
  %77 = load ptr, ptr %5, align 8, !tbaa !26
  %78 = getelementptr inbounds nuw %struct.AbstractVec, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !30
  %80 = load i32, ptr %7, align 4, !tbaa !11
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 8
  %83 = call ptr @realloc(ptr noundef %79, i64 noundef %82) #15
  %84 = load ptr, ptr %5, align 8, !tbaa !26
  %85 = getelementptr inbounds nuw %struct.AbstractVec, ptr %84, i32 0, i32 2
  store ptr %83, ptr %85, align 8, !tbaa !30
  br label %86

86:                                               ; preds = %74, %71
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #11
  br label %87

87:                                               ; preds = %86, %42
  br label %88

88:                                               ; preds = %87, %27
  br label %89

89:                                               ; preds = %88, %13
  %90 = load ptr, ptr %4, align 8, !tbaa !25
  %91 = load ptr, ptr %5, align 8, !tbaa !26
  %92 = getelementptr inbounds nuw %struct.AbstractVec, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !30
  %94 = load ptr, ptr %5, align 8, !tbaa !26
  %95 = getelementptr inbounds nuw %struct.AbstractVec, ptr %94, i32 0, i32 0
  %96 = load i32, ptr %95, align 8, !tbaa !28
  %97 = add i32 %96, 1
  store i32 %97, ptr %95, align 8, !tbaa !28
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds nuw ptr, ptr %93, i64 %98
  store ptr %90, ptr %99, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #11
  ret void
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #9

; Function Attrs: nounwind
define dso_local signext i32 @vec_eq(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !25
  store ptr %1, ptr %5, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #11
  %10 = load ptr, ptr %4, align 8, !tbaa !25
  store ptr %10, ptr %6, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #11
  %11 = load ptr, ptr %5, align 8, !tbaa !25
  store ptr %11, ptr %7, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #11
  %12 = load ptr, ptr %6, align 8, !tbaa !26
  %13 = getelementptr inbounds nuw %struct.AbstractVec, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8, !tbaa !28
  %15 = load ptr, ptr %7, align 8, !tbaa !26
  %16 = getelementptr inbounds nuw %struct.AbstractVec, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8, !tbaa !28
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  store i32 1, ptr %9, align 4
  br label %49

20:                                               ; preds = %2
  store i32 0, ptr %8, align 4, !tbaa !11
  br label %21

21:                                               ; preds = %45, %20
  %22 = load i32, ptr %8, align 4, !tbaa !11
  %23 = load ptr, ptr %6, align 8, !tbaa !26
  %24 = getelementptr inbounds nuw %struct.AbstractVec, ptr %23, i32 0, i32 0
  %25 = load i32, ptr %24, align 8, !tbaa !28
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = load ptr, ptr %6, align 8, !tbaa !26
  %29 = getelementptr inbounds nuw %struct.AbstractVec, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !30
  %31 = load i32, ptr %8, align 4, !tbaa !11
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds nuw ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !25
  %35 = load ptr, ptr %7, align 8, !tbaa !26
  %36 = getelementptr inbounds nuw %struct.AbstractVec, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !30
  %38 = load i32, ptr %8, align 4, !tbaa !11
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !25
  %42 = icmp ne ptr %34, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  store i32 0, ptr %3, align 4
  store i32 1, ptr %9, align 4
  br label %49

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %8, align 4, !tbaa !11
  %47 = add i32 %46, 1
  store i32 %47, ptr %8, align 4, !tbaa !11
  br label %21, !llvm.loop !32

48:                                               ; preds = %21
  store i32 1, ptr %3, align 4
  store i32 1, ptr %9, align 4
  br label %49

49:                                               ; preds = %48, %43, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #11
  %50 = load i32, ptr %3, align 4
  ret i32 %50
}

; Function Attrs: nounwind
define dso_local ptr @stack_push_internal(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !33
  store ptr %1, ptr %4, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #11
  %6 = load ptr, ptr %3, align 8, !tbaa !33
  %7 = getelementptr inbounds nuw %struct.AbstractStack, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = load ptr, ptr %3, align 8, !tbaa !33
  %10 = getelementptr inbounds nuw %struct.AbstractStack, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8, !tbaa !37
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %5, align 4, !tbaa !11
  %17 = load ptr, ptr %3, align 8, !tbaa !33
  %18 = getelementptr inbounds nuw %struct.AbstractStack, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8, !tbaa !37
  %20 = load ptr, ptr %3, align 8, !tbaa !33
  %21 = getelementptr inbounds nuw %struct.AbstractStack, ptr %20, i32 0, i32 3
  %22 = getelementptr inbounds [8 x ptr], ptr %21, i64 0, i64 0
  %23 = icmp eq ptr %19, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load i32, ptr %5, align 4, !tbaa !11
  %26 = mul nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = call noalias ptr @malloc(i64 noundef %28) #13
  %30 = load ptr, ptr %3, align 8, !tbaa !33
  %31 = getelementptr inbounds nuw %struct.AbstractStack, ptr %30, i32 0, i32 2
  store ptr %29, ptr %31, align 8, !tbaa !35
  %32 = load ptr, ptr %3, align 8, !tbaa !33
  %33 = getelementptr inbounds nuw %struct.AbstractStack, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = load ptr, ptr %3, align 8, !tbaa !33
  %36 = getelementptr inbounds nuw %struct.AbstractStack, ptr %35, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8, !tbaa !37
  %38 = load i32, ptr %5, align 4, !tbaa !11
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %34, ptr align 8 %37, i64 %40, i1 false)
  br label %52

41:                                               ; preds = %2
  %42 = load ptr, ptr %3, align 8, !tbaa !33
  %43 = getelementptr inbounds nuw %struct.AbstractStack, ptr %42, i32 0, i32 0
  %44 = load ptr, ptr %43, align 8, !tbaa !37
  %45 = load i32, ptr %5, align 4, !tbaa !11
  %46 = mul nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = call ptr @realloc(ptr noundef %44, i64 noundef %48) #15
  %50 = load ptr, ptr %3, align 8, !tbaa !33
  %51 = getelementptr inbounds nuw %struct.AbstractStack, ptr %50, i32 0, i32 2
  store ptr %49, ptr %51, align 8, !tbaa !35
  br label %52

52:                                               ; preds = %41, %24
  %53 = load ptr, ptr %3, align 8, !tbaa !33
  %54 = getelementptr inbounds nuw %struct.AbstractStack, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  %56 = load ptr, ptr %3, align 8, !tbaa !33
  %57 = getelementptr inbounds nuw %struct.AbstractStack, ptr %56, i32 0, i32 0
  store ptr %55, ptr %57, align 8, !tbaa !37
  %58 = load ptr, ptr %3, align 8, !tbaa !33
  %59 = getelementptr inbounds nuw %struct.AbstractStack, ptr %58, i32 0, i32 1
  store ptr %55, ptr %59, align 8, !tbaa !38
  %60 = load i32, ptr %5, align 4, !tbaa !11
  %61 = load ptr, ptr %3, align 8, !tbaa !33
  %62 = getelementptr inbounds nuw %struct.AbstractStack, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !35
  %64 = sext i32 %60 to i64
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  store ptr %65, ptr %62, align 8, !tbaa !35
  %66 = load i32, ptr %5, align 4, !tbaa !11
  %67 = mul nsw i32 %66, 2
  %68 = load ptr, ptr %3, align 8, !tbaa !33
  %69 = getelementptr inbounds nuw %struct.AbstractStack, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !38
  %71 = sext i32 %67 to i64
  %72 = getelementptr inbounds ptr, ptr %70, i64 %71
  store ptr %72, ptr %69, align 8, !tbaa !38
  %73 = load ptr, ptr %4, align 8, !tbaa !25
  %74 = load ptr, ptr %3, align 8, !tbaa !33
  %75 = getelementptr inbounds nuw %struct.AbstractStack, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !35
  %77 = getelementptr inbounds nuw ptr, ptr %76, i32 1
  store ptr %77, ptr %75, align 8, !tbaa !35
  store ptr %73, ptr %76, align 8, !tbaa !25
  %78 = load ptr, ptr %4, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #11
  ret ptr %78
}

; Function Attrs: nounwind
define dso_local signext i32 @set_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.AbstractVec, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !25
  store ptr %1, ptr %5, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #11
  %13 = load ptr, ptr %4, align 8, !tbaa !25
  store ptr %13, ptr %6, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 40, ptr %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #11
  %14 = load ptr, ptr %6, align 8, !tbaa !26
  %15 = getelementptr inbounds nuw %struct.AbstractVec, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8, !tbaa !28
  store i32 %16, ptr %9, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #11
  %17 = load i32, ptr %9, align 4, !tbaa !11
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %80

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #11
  %20 = load ptr, ptr %5, align 8, !tbaa !25
  %21 = ptrtoint ptr %20 to i64
  store i64 %21, ptr %11, align 8, !tbaa !39
  %22 = load i64, ptr %11, align 8, !tbaa !39
  %23 = load i32, ptr %9, align 4, !tbaa !11
  %24 = sext i32 %23 to i64
  %25 = urem i64 %22, %24
  store i64 %25, ptr %11, align 8, !tbaa !39
  %26 = load i64, ptr %11, align 8, !tbaa !39
  %27 = trunc i64 %26 to i32
  store i32 %27, ptr %10, align 4, !tbaa !11
  store i32 0, ptr %8, align 4, !tbaa !11
  br label %28

28:                                               ; preds = %69, %19
  %29 = load i32, ptr %10, align 4, !tbaa !11
  %30 = load ptr, ptr %6, align 8, !tbaa !26
  %31 = getelementptr inbounds nuw %struct.AbstractVec, ptr %30, i32 0, i32 0
  %32 = load i32, ptr %31, align 8, !tbaa !28
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, ptr %8, align 4, !tbaa !11
  %36 = icmp slt i32 %35, 5
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i1 [ false, %28 ], [ %36, %34 ]
  br i1 %38, label %39, label %76

39:                                               ; preds = %37
  %40 = load ptr, ptr %6, align 8, !tbaa !26
  %41 = getelementptr inbounds nuw %struct.AbstractVec, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  %43 = load i32, ptr %10, align 4, !tbaa !11
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds nuw ptr, ptr %42, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !25
  %47 = icmp ne ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %39
  %49 = load ptr, ptr %5, align 8, !tbaa !25
  %50 = load ptr, ptr %6, align 8, !tbaa !26
  %51 = getelementptr inbounds nuw %struct.AbstractVec, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !30
  %53 = load i32, ptr %10, align 4, !tbaa !11
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds nuw ptr, ptr %52, i64 %54
  store ptr %49, ptr %55, align 8, !tbaa !25
  store i32 1, ptr %3, align 4
  store i32 1, ptr %12, align 4
  br label %77

56:                                               ; preds = %39
  %57 = load ptr, ptr %6, align 8, !tbaa !26
  %58 = getelementptr inbounds nuw %struct.AbstractVec, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !30
  %60 = load i32, ptr %10, align 4, !tbaa !11
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw ptr, ptr %59, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !25
  %64 = load ptr, ptr %5, align 8, !tbaa !25
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i32 0, ptr %3, align 4
  store i32 1, ptr %12, align 4
  br label %77

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load i32, ptr %10, align 4, !tbaa !11
  %71 = add i32 %70, 1
  %72 = load i32, ptr %9, align 4, !tbaa !11
  %73 = urem i32 %71, %72
  store i32 %73, ptr %10, align 4, !tbaa !11
  %74 = load i32, ptr %8, align 4, !tbaa !11
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %8, align 4, !tbaa !11
  br label %28, !llvm.loop !40

76:                                               ; preds = %37
  store i32 0, ptr %12, align 4
  br label %77

77:                                               ; preds = %76, %66, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #11
  %78 = load i32, ptr %12, align 4
  switch i32 %78, label %139 [
    i32 0, label %79
  ]

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79, %2
  %81 = load i32, ptr %9, align 4, !tbaa !11
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds nuw %struct.AbstractVec, ptr %7, i32 0, i32 2
  store ptr null, ptr %84, align 8, !tbaa !30
  %85 = load ptr, ptr %6, align 8, !tbaa !26
  %86 = getelementptr inbounds nuw %struct.AbstractVec, ptr %85, i32 0, i32 1
  store i32 2, ptr %86, align 4, !tbaa !41
  br label %102

87:                                               ; preds = %80
  %88 = load ptr, ptr %6, align 8, !tbaa !26
  %89 = getelementptr inbounds nuw %struct.AbstractVec, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !30
  %91 = getelementptr inbounds nuw %struct.AbstractVec, ptr %7, i32 0, i32 2
  store ptr %90, ptr %91, align 8, !tbaa !30
  %92 = load ptr, ptr %6, align 8, !tbaa !26
  %93 = getelementptr inbounds nuw %struct.AbstractVec, ptr %92, i32 0, i32 0
  %94 = load i32, ptr %93, align 8, !tbaa !28
  %95 = getelementptr inbounds nuw %struct.AbstractVec, ptr %7, i32 0, i32 0
  store i32 %94, ptr %95, align 8, !tbaa !28
  %96 = load ptr, ptr %6, align 8, !tbaa !26
  %97 = getelementptr inbounds nuw %struct.AbstractVec, ptr %96, i32 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !41
  %99 = add i32 %98, 1
  %100 = load ptr, ptr %6, align 8, !tbaa !26
  %101 = getelementptr inbounds nuw %struct.AbstractVec, ptr %100, i32 0, i32 1
  store i32 %99, ptr %101, align 4, !tbaa !41
  br label %102

102:                                              ; preds = %87, %83
  %103 = load ptr, ptr %6, align 8, !tbaa !26
  %104 = getelementptr inbounds nuw %struct.AbstractVec, ptr %103, i32 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !41
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds nuw [29 x i32], ptr @prime2, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !11
  %109 = load ptr, ptr %6, align 8, !tbaa !26
  %110 = getelementptr inbounds nuw %struct.AbstractVec, ptr %109, i32 0, i32 0
  store i32 %108, ptr %110, align 8, !tbaa !28
  %111 = load ptr, ptr %6, align 8, !tbaa !26
  %112 = getelementptr inbounds nuw %struct.AbstractVec, ptr %111, i32 0, i32 0
  %113 = load i32, ptr %112, align 8, !tbaa !28
  %114 = zext i32 %113 to i64
  %115 = mul i64 %114, 8
  %116 = call noalias ptr @malloc(i64 noundef %115) #13
  %117 = load ptr, ptr %6, align 8, !tbaa !26
  %118 = getelementptr inbounds nuw %struct.AbstractVec, ptr %117, i32 0, i32 2
  store ptr %116, ptr %118, align 8, !tbaa !30
  %119 = load ptr, ptr %6, align 8, !tbaa !26
  %120 = getelementptr inbounds nuw %struct.AbstractVec, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !30
  %122 = load ptr, ptr %6, align 8, !tbaa !26
  %123 = getelementptr inbounds nuw %struct.AbstractVec, ptr %122, i32 0, i32 0
  %124 = load i32, ptr %123, align 8, !tbaa !28
  %125 = zext i32 %124 to i64
  %126 = mul i64 %125, 8
  call void @llvm.memset.p0.i64(ptr align 8 %121, i8 0, i64 %126, i1 false)
  %127 = getelementptr inbounds nuw %struct.AbstractVec, ptr %7, i32 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !30
  %129 = icmp ne ptr %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %102
  %131 = load ptr, ptr %4, align 8, !tbaa !25
  %132 = call signext i32 @set_union(ptr noundef %131, ptr noundef %7)
  %133 = getelementptr inbounds nuw %struct.AbstractVec, ptr %7, i32 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !30
  call void @free(ptr noundef %134) #11
  br label %135

135:                                              ; preds = %130, %102
  %136 = load ptr, ptr %6, align 8, !tbaa !26
  %137 = load ptr, ptr %5, align 8, !tbaa !25
  %138 = call signext i32 @set_add(ptr noundef %136, ptr noundef %137)
  store i32 %138, ptr %3, align 4
  store i32 1, ptr %12, align 4
  br label %139

139:                                              ; preds = %135, %77
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #11
  %140 = load i32, ptr %3, align 4
  ret i32 %140
}

; Function Attrs: nounwind
define dso_local signext i32 @set_union(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !25
  store ptr %1, ptr %4, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #11
  %8 = load ptr, ptr %4, align 8, !tbaa !25
  store ptr %8, ptr %5, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #11
  store i32 0, ptr %7, align 4, !tbaa !11
  store i32 0, ptr %6, align 4, !tbaa !11
  br label %9

9:                                                ; preds = %42, %2
  %10 = load i32, ptr %6, align 4, !tbaa !11
  %11 = load ptr, ptr %5, align 8, !tbaa !26
  %12 = getelementptr inbounds nuw %struct.AbstractVec, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !28
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %9
  %16 = load ptr, ptr %5, align 8, !tbaa !26
  %17 = getelementptr inbounds nuw %struct.AbstractVec, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !30
  %19 = load i32, ptr %6, align 4, !tbaa !11
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds nuw ptr, ptr %18, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !25
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %15
  %25 = load ptr, ptr %3, align 8, !tbaa !25
  %26 = load ptr, ptr %5, align 8, !tbaa !26
  %27 = getelementptr inbounds nuw %struct.AbstractVec, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !30
  %29 = load i32, ptr %6, align 4, !tbaa !11
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !25
  %33 = call signext i32 @set_add(ptr noundef %25, ptr noundef %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i32, ptr %7, align 4, !tbaa !11
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %35, %24
  %39 = phi i1 [ true, %24 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  store i32 %40, ptr %7, align 4, !tbaa !11
  br label %41

41:                                               ; preds = %38, %15
  br label %42

42:                                               ; preds = %41
  %43 = load i32, ptr %6, align 4, !tbaa !11
  %44 = add i32 %43, 1
  store i32 %44, ptr %6, align 4, !tbaa !11
  br label %9, !llvm.loop !42

45:                                               ; preds = %9
  %46 = load i32, ptr %7, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #11
  ret i32 %46
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind
define dso_local ptr @set_add_fn(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.AbstractVec, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !25
  store ptr %1, ptr %6, align 8, !tbaa !25
  store ptr %2, ptr %7, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #11
  %16 = load ptr, ptr %5, align 8, !tbaa !25
  store ptr %16, ptr %8, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 40, ptr %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #11
  %17 = load ptr, ptr %7, align 8, !tbaa !43
  %18 = getelementptr inbounds nuw %struct.hash_fns_t, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = load ptr, ptr %6, align 8, !tbaa !25
  %21 = load ptr, ptr %7, align 8, !tbaa !43
  %22 = call signext i32 %19(ptr noundef %20, ptr noundef %21)
  store i32 %22, ptr %10, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #11
  %23 = load ptr, ptr %8, align 8, !tbaa !26
  %24 = getelementptr inbounds nuw %struct.AbstractVec, ptr %23, i32 0, i32 0
  %25 = load i32, ptr %24, align 8, !tbaa !28
  store i32 %25, ptr %12, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #11
  %26 = load i32, ptr %12, align 4, !tbaa !11
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %98

28:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #11
  %29 = load i32, ptr %10, align 4, !tbaa !11
  %30 = load i32, ptr %12, align 4, !tbaa !11
  %31 = urem i32 %29, %30
  store i32 %31, ptr %14, align 4, !tbaa !11
  %32 = load i32, ptr %14, align 4, !tbaa !11
  store i32 %32, ptr %13, align 4, !tbaa !11
  store i32 0, ptr %11, align 4, !tbaa !11
  br label %33

33:                                               ; preds = %87, %28
  %34 = load i32, ptr %13, align 4, !tbaa !11
  %35 = load ptr, ptr %8, align 8, !tbaa !26
  %36 = getelementptr inbounds nuw %struct.AbstractVec, ptr %35, i32 0, i32 0
  %37 = load i32, ptr %36, align 8, !tbaa !28
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, ptr %11, align 4, !tbaa !11
  %41 = icmp slt i32 %40, 5
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i1 [ false, %33 ], [ %41, %39 ]
  br i1 %43, label %44, label %94

44:                                               ; preds = %42
  %45 = load ptr, ptr %8, align 8, !tbaa !26
  %46 = getelementptr inbounds nuw %struct.AbstractVec, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !30
  %48 = load i32, ptr %13, align 4, !tbaa !11
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds nuw ptr, ptr %47, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !25
  %52 = icmp ne ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %44
  %54 = load ptr, ptr %6, align 8, !tbaa !25
  %55 = load ptr, ptr %8, align 8, !tbaa !26
  %56 = getelementptr inbounds nuw %struct.AbstractVec, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !30
  %58 = load i32, ptr %13, align 4, !tbaa !11
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw ptr, ptr %57, i64 %59
  store ptr %54, ptr %60, align 8, !tbaa !25
  %61 = load ptr, ptr %6, align 8, !tbaa !25
  store ptr %61, ptr %4, align 8
  store i32 1, ptr %15, align 4
  br label %95

62:                                               ; preds = %44
  %63 = load ptr, ptr %7, align 8, !tbaa !43
  %64 = getelementptr inbounds nuw %struct.hash_fns_t, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !47
  %66 = load ptr, ptr %8, align 8, !tbaa !26
  %67 = getelementptr inbounds nuw %struct.AbstractVec, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !30
  %69 = load i32, ptr %13, align 4, !tbaa !11
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds nuw ptr, ptr %68, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !25
  %73 = load ptr, ptr %6, align 8, !tbaa !25
  %74 = load ptr, ptr %7, align 8, !tbaa !43
  %75 = call signext i32 %65(ptr noundef %72, ptr noundef %73, ptr noundef %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %62
  %78 = load ptr, ptr %8, align 8, !tbaa !26
  %79 = getelementptr inbounds nuw %struct.AbstractVec, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !30
  %81 = load i32, ptr %13, align 4, !tbaa !11
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds nuw ptr, ptr %80, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !25
  store ptr %84, ptr %4, align 8
  store i32 1, ptr %15, align 4
  br label %95

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  %88 = load i32, ptr %13, align 4, !tbaa !11
  %89 = add i32 %88, 1
  %90 = load i32, ptr %12, align 4, !tbaa !11
  %91 = urem i32 %89, %90
  store i32 %91, ptr %13, align 4, !tbaa !11
  %92 = load i32, ptr %11, align 4, !tbaa !11
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %11, align 4, !tbaa !11
  br label %33, !llvm.loop !48

94:                                               ; preds = %42
  store i32 0, ptr %15, align 4
  br label %95

95:                                               ; preds = %94, %77, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #11
  %96 = load i32, ptr %15, align 4
  switch i32 %96, label %158 [
    i32 0, label %97
  ]

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97, %3
  %99 = load i32, ptr %12, align 4, !tbaa !11
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds nuw %struct.AbstractVec, ptr %9, i32 0, i32 2
  store ptr null, ptr %102, align 8, !tbaa !30
  %103 = load ptr, ptr %8, align 8, !tbaa !26
  %104 = getelementptr inbounds nuw %struct.AbstractVec, ptr %103, i32 0, i32 1
  store i32 2, ptr %104, align 4, !tbaa !41
  br label %120

105:                                              ; preds = %98
  %106 = load ptr, ptr %8, align 8, !tbaa !26
  %107 = getelementptr inbounds nuw %struct.AbstractVec, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !30
  %109 = getelementptr inbounds nuw %struct.AbstractVec, ptr %9, i32 0, i32 2
  store ptr %108, ptr %109, align 8, !tbaa !30
  %110 = load ptr, ptr %8, align 8, !tbaa !26
  %111 = getelementptr inbounds nuw %struct.AbstractVec, ptr %110, i32 0, i32 0
  %112 = load i32, ptr %111, align 8, !tbaa !28
  %113 = getelementptr inbounds nuw %struct.AbstractVec, ptr %9, i32 0, i32 0
  store i32 %112, ptr %113, align 8, !tbaa !28
  %114 = load ptr, ptr %8, align 8, !tbaa !26
  %115 = getelementptr inbounds nuw %struct.AbstractVec, ptr %114, i32 0, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !41
  %117 = add i32 %116, 1
  %118 = load ptr, ptr %8, align 8, !tbaa !26
  %119 = getelementptr inbounds nuw %struct.AbstractVec, ptr %118, i32 0, i32 1
  store i32 %117, ptr %119, align 4, !tbaa !41
  br label %120

120:                                              ; preds = %105, %101
  %121 = load ptr, ptr %8, align 8, !tbaa !26
  %122 = getelementptr inbounds nuw %struct.AbstractVec, ptr %121, i32 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !41
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds nuw [29 x i32], ptr @prime2, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !11
  %127 = load ptr, ptr %8, align 8, !tbaa !26
  %128 = getelementptr inbounds nuw %struct.AbstractVec, ptr %127, i32 0, i32 0
  store i32 %126, ptr %128, align 8, !tbaa !28
  %129 = load ptr, ptr %8, align 8, !tbaa !26
  %130 = getelementptr inbounds nuw %struct.AbstractVec, ptr %129, i32 0, i32 0
  %131 = load i32, ptr %130, align 8, !tbaa !28
  %132 = zext i32 %131 to i64
  %133 = mul i64 %132, 8
  %134 = call noalias ptr @malloc(i64 noundef %133) #13
  %135 = load ptr, ptr %8, align 8, !tbaa !26
  %136 = getelementptr inbounds nuw %struct.AbstractVec, ptr %135, i32 0, i32 2
  store ptr %134, ptr %136, align 8, !tbaa !30
  %137 = load ptr, ptr %8, align 8, !tbaa !26
  %138 = getelementptr inbounds nuw %struct.AbstractVec, ptr %137, i32 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !30
  %140 = load ptr, ptr %8, align 8, !tbaa !26
  %141 = getelementptr inbounds nuw %struct.AbstractVec, ptr %140, i32 0, i32 0
  %142 = load i32, ptr %141, align 8, !tbaa !28
  %143 = zext i32 %142 to i64
  %144 = mul i64 %143, 8
  call void @llvm.memset.p0.i64(ptr align 8 %139, i8 0, i64 %144, i1 false)
  %145 = getelementptr inbounds nuw %struct.AbstractVec, ptr %9, i32 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !30
  %147 = icmp ne ptr %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %120
  %149 = load ptr, ptr %5, align 8, !tbaa !25
  %150 = load ptr, ptr %7, align 8, !tbaa !43
  call void @set_union_fn(ptr noundef %149, ptr noundef %9, ptr noundef %150)
  %151 = getelementptr inbounds nuw %struct.AbstractVec, ptr %9, i32 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !30
  call void @free(ptr noundef %152) #11
  br label %153

153:                                              ; preds = %148, %120
  %154 = load ptr, ptr %8, align 8, !tbaa !26
  %155 = load ptr, ptr %6, align 8, !tbaa !25
  %156 = load ptr, ptr %7, align 8, !tbaa !43
  %157 = call ptr @set_add_fn(ptr noundef %154, ptr noundef %155, ptr noundef %156)
  store ptr %157, ptr %4, align 8
  store i32 1, ptr %15, align 4
  br label %158

158:                                              ; preds = %153, %95
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #11
  %159 = load ptr, ptr %4, align 8
  ret ptr %159
}

; Function Attrs: nounwind
define dso_local void @set_union_fn(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !25
  store ptr %1, ptr %5, align 8, !tbaa !25
  store ptr %2, ptr %6, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #11
  %9 = load ptr, ptr %5, align 8, !tbaa !25
  store ptr %9, ptr %7, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #11
  store i32 0, ptr %8, align 4, !tbaa !11
  br label %10

10:                                               ; preds = %37, %3
  %11 = load i32, ptr %8, align 4, !tbaa !11
  %12 = load ptr, ptr %7, align 8, !tbaa !26
  %13 = getelementptr inbounds nuw %struct.AbstractVec, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8, !tbaa !28
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load ptr, ptr %7, align 8, !tbaa !26
  %18 = getelementptr inbounds nuw %struct.AbstractVec, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  %20 = load i32, ptr %8, align 4, !tbaa !11
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds nuw ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load ptr, ptr %4, align 8, !tbaa !25
  %27 = load ptr, ptr %7, align 8, !tbaa !26
  %28 = getelementptr inbounds nuw %struct.AbstractVec, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !30
  %30 = load i32, ptr %8, align 4, !tbaa !11
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds nuw ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !25
  %34 = load ptr, ptr %6, align 8, !tbaa !43
  %35 = call ptr @set_add_fn(ptr noundef %26, ptr noundef %33, ptr noundef %34)
  br label %36

36:                                               ; preds = %25, %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %8, align 4, !tbaa !11
  %39 = add i32 %38, 1
  store i32 %39, ptr %8, align 4, !tbaa !11
  br label %10, !llvm.loop !49

40:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #11
  ret void
}

; Function Attrs: nounwind
define dso_local void @set_to_vec(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.AbstractVec, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #11
  %6 = load ptr, ptr %2, align 8, !tbaa !25
  store ptr %6, ptr %3, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 40, ptr %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #11
  %7 = load ptr, ptr %3, align 8, !tbaa !26
  %8 = getelementptr inbounds nuw %struct.AbstractVec, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8, !tbaa !28
  %10 = getelementptr inbounds nuw %struct.AbstractVec, ptr %4, i32 0, i32 0
  store i32 %9, ptr %10, align 8, !tbaa !28
  %11 = load ptr, ptr %3, align 8, !tbaa !26
  %12 = getelementptr inbounds nuw %struct.AbstractVec, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = getelementptr inbounds nuw %struct.AbstractVec, ptr %4, i32 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !30
  %15 = load ptr, ptr %3, align 8, !tbaa !26
  %16 = getelementptr inbounds nuw %struct.AbstractVec, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !30
  %18 = load ptr, ptr %3, align 8, !tbaa !26
  %19 = getelementptr inbounds nuw %struct.AbstractVec, ptr %18, i32 0, i32 3
  %20 = getelementptr inbounds [3 x ptr], ptr %19, i64 0, i64 0
  %21 = icmp eq ptr %17, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = getelementptr inbounds nuw %struct.AbstractVec, ptr %4, i32 0, i32 3
  %24 = getelementptr inbounds [3 x ptr], ptr %23, i64 0, i64 0
  %25 = load ptr, ptr %3, align 8, !tbaa !26
  %26 = getelementptr inbounds nuw %struct.AbstractVec, ptr %25, i32 0, i32 3
  %27 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %27, i64 24, i1 false)
  %28 = getelementptr inbounds nuw %struct.AbstractVec, ptr %4, i32 0, i32 3
  %29 = getelementptr inbounds [3 x ptr], ptr %28, i64 0, i64 0
  %30 = getelementptr inbounds nuw %struct.AbstractVec, ptr %4, i32 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !30
  br label %31

31:                                               ; preds = %22, %1
  %32 = load ptr, ptr %3, align 8, !tbaa !26
  %33 = getelementptr inbounds nuw %struct.AbstractVec, ptr %32, i32 0, i32 0
  store i32 0, ptr %33, align 8, !tbaa !28
  %34 = load ptr, ptr %3, align 8, !tbaa !26
  %35 = getelementptr inbounds nuw %struct.AbstractVec, ptr %34, i32 0, i32 2
  store ptr null, ptr %35, align 8, !tbaa !30
  store i32 0, ptr %5, align 4, !tbaa !11
  br label %36

36:                                               ; preds = %58, %31
  %37 = load i32, ptr %5, align 4, !tbaa !11
  %38 = getelementptr inbounds nuw %struct.AbstractVec, ptr %4, i32 0, i32 0
  %39 = load i32, ptr %38, align 8, !tbaa !28
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = getelementptr inbounds nuw %struct.AbstractVec, ptr %4, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !30
  %44 = load i32, ptr %5, align 4, !tbaa !11
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds nuw ptr, ptr %43, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !25
  %48 = icmp ne ptr %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load ptr, ptr %3, align 8, !tbaa !26
  %51 = getelementptr inbounds nuw %struct.AbstractVec, ptr %4, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !30
  %53 = load i32, ptr %5, align 4, !tbaa !11
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds nuw ptr, ptr %52, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !25
  call void @vec_add_internal(ptr noundef %50, ptr noundef %56)
  br label %57

57:                                               ; preds = %49, %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %5, align 4, !tbaa !11
  %60 = add i32 %59, 1
  store i32 %60, ptr %5, align 4, !tbaa !11
  br label %36, !llvm.loop !50

61:                                               ; preds = %36
  %62 = getelementptr inbounds nuw %struct.AbstractVec, ptr %4, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !30
  call void @free(ptr noundef %63) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #11
  ret void
}

; Function Attrs: nounwind
define dso_local void @int_list_diff(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !17
  store ptr %1, ptr %5, align 8, !tbaa !17
  store ptr %2, ptr %6, align 8, !tbaa !17
  br label %7

7:                                                ; preds = %3, %36, %67
  %8 = load ptr, ptr %5, align 8, !tbaa !17
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %68

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %64, %12
  %14 = load ptr, ptr %6, align 8, !tbaa !17
  %15 = load i32, ptr %14, align 4, !tbaa !11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %22, %17
  %19 = load ptr, ptr %5, align 8, !tbaa !17
  %20 = load i32, ptr %19, align 4, !tbaa !11
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !17
  %24 = getelementptr inbounds nuw i32, ptr %23, i32 1
  store ptr %24, ptr %5, align 8, !tbaa !17
  %25 = load i32, ptr %23, align 4, !tbaa !11
  %26 = load ptr, ptr %4, align 8, !tbaa !17
  %27 = getelementptr inbounds nuw i32, ptr %26, i32 1
  store ptr %27, ptr %4, align 8, !tbaa !17
  store i32 %25, ptr %26, align 4, !tbaa !11
  br label %18, !llvm.loop !51

28:                                               ; preds = %18
  br label %68

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %57, %29
  %31 = load ptr, ptr %5, align 8, !tbaa !17
  %32 = load i32, ptr %31, align 4, !tbaa !11
  %33 = load ptr, ptr %6, align 8, !tbaa !17
  %34 = load i32, ptr %33, align 4, !tbaa !11
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load ptr, ptr %5, align 8, !tbaa !17
  %38 = getelementptr inbounds nuw i32, ptr %37, i32 1
  store ptr %38, ptr %5, align 8, !tbaa !17
  %39 = load ptr, ptr %6, align 8, !tbaa !17
  %40 = getelementptr inbounds nuw i32, ptr %39, i32 1
  store ptr %40, ptr %6, align 8, !tbaa !17
  br label %7

41:                                               ; preds = %30
  %42 = load ptr, ptr %5, align 8, !tbaa !17
  %43 = load i32, ptr %42, align 4, !tbaa !11
  %44 = load ptr, ptr %6, align 8, !tbaa !17
  %45 = load i32, ptr %44, align 4, !tbaa !11
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load ptr, ptr %5, align 8, !tbaa !17
  %49 = getelementptr inbounds nuw i32, ptr %48, i32 1
  store ptr %49, ptr %5, align 8, !tbaa !17
  %50 = load i32, ptr %48, align 4, !tbaa !11
  %51 = load ptr, ptr %4, align 8, !tbaa !17
  %52 = getelementptr inbounds nuw i32, ptr %51, i32 1
  store ptr %52, ptr %4, align 8, !tbaa !17
  store i32 %50, ptr %51, align 4, !tbaa !11
  %53 = load ptr, ptr %5, align 8, !tbaa !17
  %54 = load i32, ptr %53, align 4, !tbaa !11
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %68

57:                                               ; preds = %47
  br label %30

58:                                               ; preds = %41
  %59 = load ptr, ptr %6, align 8, !tbaa !17
  %60 = load i32, ptr %59, align 4, !tbaa !11
  %61 = load ptr, ptr %5, align 8, !tbaa !17
  %62 = load i32, ptr %61, align 4, !tbaa !11
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load ptr, ptr %6, align 8, !tbaa !17
  %66 = getelementptr inbounds nuw i32, ptr %65, i32 1
  store ptr %66, ptr %6, align 8, !tbaa !17
  br label %13

67:                                               ; preds = %58
  br label %7

68:                                               ; preds = %56, %28, %11
  %69 = load ptr, ptr %4, align 8, !tbaa !17
  %70 = getelementptr inbounds nuw i32, ptr %69, i32 1
  store ptr %70, ptr %4, align 8, !tbaa !17
  store i32 -1, ptr %69, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind
define dso_local void @int_list_intersect(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !17
  store ptr %1, ptr %5, align 8, !tbaa !17
  store ptr %2, ptr %6, align 8, !tbaa !17
  br label %7

7:                                                ; preds = %3, %25, %56
  %8 = load ptr, ptr %5, align 8, !tbaa !17
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %57

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %53, %12
  %14 = load ptr, ptr %6, align 8, !tbaa !17
  %15 = load i32, ptr %14, align 4, !tbaa !11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %57

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %46, %18
  %20 = load ptr, ptr %5, align 8, !tbaa !17
  %21 = load i32, ptr %20, align 4, !tbaa !11
  %22 = load ptr, ptr %6, align 8, !tbaa !17
  %23 = load i32, ptr %22, align 4, !tbaa !11
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load ptr, ptr %5, align 8, !tbaa !17
  %27 = getelementptr inbounds nuw i32, ptr %26, i32 1
  store ptr %27, ptr %5, align 8, !tbaa !17
  %28 = load i32, ptr %26, align 4, !tbaa !11
  %29 = load ptr, ptr %4, align 8, !tbaa !17
  %30 = getelementptr inbounds nuw i32, ptr %29, i32 1
  store ptr %30, ptr %4, align 8, !tbaa !17
  store i32 %28, ptr %29, align 4, !tbaa !11
  %31 = load ptr, ptr %6, align 8, !tbaa !17
  %32 = getelementptr inbounds nuw i32, ptr %31, i32 1
  store ptr %32, ptr %6, align 8, !tbaa !17
  br label %7

33:                                               ; preds = %19
  %34 = load ptr, ptr %5, align 8, !tbaa !17
  %35 = load i32, ptr %34, align 4, !tbaa !11
  %36 = load ptr, ptr %6, align 8, !tbaa !17
  %37 = load i32, ptr %36, align 4, !tbaa !11
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load ptr, ptr %5, align 8, !tbaa !17
  %41 = getelementptr inbounds nuw i32, ptr %40, i32 1
  store ptr %41, ptr %5, align 8, !tbaa !17
  %42 = load ptr, ptr %5, align 8, !tbaa !17
  %43 = load i32, ptr %42, align 4, !tbaa !11
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %57

46:                                               ; preds = %39
  br label %19

47:                                               ; preds = %33
  %48 = load ptr, ptr %6, align 8, !tbaa !17
  %49 = load i32, ptr %48, align 4, !tbaa !11
  %50 = load ptr, ptr %5, align 8, !tbaa !17
  %51 = load i32, ptr %50, align 4, !tbaa !11
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load ptr, ptr %6, align 8, !tbaa !17
  %55 = getelementptr inbounds nuw i32, ptr %54, i32 1
  store ptr %55, ptr %6, align 8, !tbaa !17
  br label %13

56:                                               ; preds = %47
  br label %7

57:                                               ; preds = %45, %17, %11
  %58 = load ptr, ptr %4, align 8, !tbaa !17
  %59 = getelementptr inbounds nuw i32, ptr %58, i32 1
  store ptr %59, ptr %4, align 8, !tbaa !17
  store i32 -1, ptr %58, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind
define dso_local ptr @int_list_dup(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #11
  %6 = load ptr, ptr %2, align 8, !tbaa !17
  store ptr %6, ptr %3, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #11
  br label %7

7:                                                ; preds = %11, %1
  %8 = load ptr, ptr %3, align 8, !tbaa !17
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8, !tbaa !17
  %13 = getelementptr inbounds nuw i32, ptr %12, i32 1
  store ptr %13, ptr %3, align 8, !tbaa !17
  br label %7, !llvm.loop !52

14:                                               ; preds = %7
  %15 = load ptr, ptr %3, align 8, !tbaa !17
  %16 = load ptr, ptr %2, align 8, !tbaa !17
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = add nsw i64 %20, 1
  %22 = mul i64 %21, 4
  %23 = call noalias ptr @malloc(i64 noundef %22) #13
  store ptr %23, ptr %4, align 8, !tbaa !17
  store ptr %23, ptr %5, align 8, !tbaa !17
  %24 = load ptr, ptr %2, align 8, !tbaa !17
  store ptr %24, ptr %3, align 8, !tbaa !17
  br label %25

25:                                               ; preds = %29, %14
  %26 = load ptr, ptr %3, align 8, !tbaa !17
  %27 = load i32, ptr %26, align 4, !tbaa !11
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load ptr, ptr %3, align 8, !tbaa !17
  %31 = getelementptr inbounds nuw i32, ptr %30, i32 1
  store ptr %31, ptr %3, align 8, !tbaa !17
  %32 = load i32, ptr %30, align 4, !tbaa !11
  %33 = load ptr, ptr %4, align 8, !tbaa !17
  %34 = getelementptr inbounds nuw i32, ptr %33, i32 1
  store ptr %34, ptr %4, align 8, !tbaa !17
  store i32 %32, ptr %33, align 4, !tbaa !11
  br label %25, !llvm.loop !53

35:                                               ; preds = %25
  %36 = load ptr, ptr %4, align 8, !tbaa !17
  %37 = getelementptr inbounds nuw i32, ptr %36, i32 1
  store ptr %37, ptr %4, align 8, !tbaa !17
  store i32 -1, ptr %36, align 4, !tbaa !11
  %38 = load ptr, ptr %5, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #11
  ret ptr %38
}

; Function Attrs: nounwind
define dso_local ptr @escape_string(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #11
  %5 = load ptr, ptr %2, align 8, !tbaa !3
  %6 = call i64 @strlen(ptr noundef %5) #12
  %7 = add i64 %6, 1
  %8 = mul i64 %7, 4
  %9 = call noalias ptr @malloc(i64 noundef %8) #13
  store ptr %9, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #11
  %10 = load ptr, ptr %3, align 8, !tbaa !3
  store ptr %10, ptr %4, align 8, !tbaa !3
  br label %11

11:                                               ; preds = %131, %1
  %12 = load ptr, ptr %2, align 8, !tbaa !3
  %13 = load i8, ptr %12, align 1, !tbaa !8
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %134

15:                                               ; preds = %11
  %16 = load ptr, ptr %2, align 8, !tbaa !3
  %17 = load i8, ptr %16, align 1, !tbaa !8
  %18 = sext i8 %17 to i32
  switch i32 %18, label %61 [
    i32 8, label %19
    i32 12, label %24
    i32 10, label %29
    i32 13, label %34
    i32 9, label %39
    i32 11, label %44
    i32 7, label %49
    i32 92, label %54
    i32 34, label %54
  ]

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %21, ptr %3, align 8, !tbaa !3
  store i8 92, ptr %20, align 1, !tbaa !8
  %22 = load ptr, ptr %3, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw i8, ptr %22, i32 1
  store ptr %23, ptr %3, align 8, !tbaa !3
  store i8 98, ptr %22, align 1, !tbaa !8
  br label %130

24:                                               ; preds = %15
  %25 = load ptr, ptr %3, align 8, !tbaa !3
  %26 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %26, ptr %3, align 8, !tbaa !3
  store i8 92, ptr %25, align 1, !tbaa !8
  %27 = load ptr, ptr %3, align 8, !tbaa !3
  %28 = getelementptr inbounds nuw i8, ptr %27, i32 1
  store ptr %28, ptr %3, align 8, !tbaa !3
  store i8 102, ptr %27, align 1, !tbaa !8
  br label %130

29:                                               ; preds = %15
  %30 = load ptr, ptr %3, align 8, !tbaa !3
  %31 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %31, ptr %3, align 8, !tbaa !3
  store i8 92, ptr %30, align 1, !tbaa !8
  %32 = load ptr, ptr %3, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw i8, ptr %32, i32 1
  store ptr %33, ptr %3, align 8, !tbaa !3
  store i8 110, ptr %32, align 1, !tbaa !8
  br label %130

34:                                               ; preds = %15
  %35 = load ptr, ptr %3, align 8, !tbaa !3
  %36 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %36, ptr %3, align 8, !tbaa !3
  store i8 92, ptr %35, align 1, !tbaa !8
  %37 = load ptr, ptr %3, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw i8, ptr %37, i32 1
  store ptr %38, ptr %3, align 8, !tbaa !3
  store i8 114, ptr %37, align 1, !tbaa !8
  br label %130

39:                                               ; preds = %15
  %40 = load ptr, ptr %3, align 8, !tbaa !3
  %41 = getelementptr inbounds nuw i8, ptr %40, i32 1
  store ptr %41, ptr %3, align 8, !tbaa !3
  store i8 92, ptr %40, align 1, !tbaa !8
  %42 = load ptr, ptr %3, align 8, !tbaa !3
  %43 = getelementptr inbounds nuw i8, ptr %42, i32 1
  store ptr %43, ptr %3, align 8, !tbaa !3
  store i8 116, ptr %42, align 1, !tbaa !8
  br label %130

44:                                               ; preds = %15
  %45 = load ptr, ptr %3, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw i8, ptr %45, i32 1
  store ptr %46, ptr %3, align 8, !tbaa !3
  store i8 92, ptr %45, align 1, !tbaa !8
  %47 = load ptr, ptr %3, align 8, !tbaa !3
  %48 = getelementptr inbounds nuw i8, ptr %47, i32 1
  store ptr %48, ptr %3, align 8, !tbaa !3
  store i8 118, ptr %47, align 1, !tbaa !8
  br label %130

49:                                               ; preds = %15
  %50 = load ptr, ptr %3, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw i8, ptr %50, i32 1
  store ptr %51, ptr %3, align 8, !tbaa !3
  store i8 92, ptr %50, align 1, !tbaa !8
  %52 = load ptr, ptr %3, align 8, !tbaa !3
  %53 = getelementptr inbounds nuw i8, ptr %52, i32 1
  store ptr %53, ptr %3, align 8, !tbaa !3
  store i8 97, ptr %52, align 1, !tbaa !8
  br label %130

54:                                               ; preds = %15, %15
  %55 = load ptr, ptr %3, align 8, !tbaa !3
  %56 = getelementptr inbounds nuw i8, ptr %55, i32 1
  store ptr %56, ptr %3, align 8, !tbaa !3
  store i8 92, ptr %55, align 1, !tbaa !8
  %57 = load ptr, ptr %2, align 8, !tbaa !3
  %58 = load i8, ptr %57, align 1, !tbaa !8
  %59 = load ptr, ptr %3, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw i8, ptr %59, i32 1
  store ptr %60, ptr %3, align 8, !tbaa !3
  store i8 %58, ptr %59, align 1, !tbaa !8
  br label %130

61:                                               ; preds = %15
  %62 = call ptr @__ctype_b_loc() #16
  %63 = load ptr, ptr %62, align 8, !tbaa !54
  %64 = load ptr, ptr %2, align 8, !tbaa !3
  %65 = load i8, ptr %64, align 1, !tbaa !8
  %66 = sext i8 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i16, ptr %63, i64 %67
  %69 = load i16, ptr %68, align 2, !tbaa !56
  %70 = zext i16 %69 to i32
  %71 = and i32 %70, 16384
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load ptr, ptr %2, align 8, !tbaa !3
  %75 = load i8, ptr %74, align 1, !tbaa !8
  %76 = load ptr, ptr %3, align 8, !tbaa !3
  %77 = getelementptr inbounds nuw i8, ptr %76, i32 1
  store ptr %77, ptr %3, align 8, !tbaa !3
  store i8 %75, ptr %76, align 1, !tbaa !8
  br label %129

78:                                               ; preds = %61
  %79 = load ptr, ptr %3, align 8, !tbaa !3
  %80 = getelementptr inbounds nuw i8, ptr %79, i32 1
  store ptr %80, ptr %3, align 8, !tbaa !3
  store i8 92, ptr %79, align 1, !tbaa !8
  %81 = load ptr, ptr %3, align 8, !tbaa !3
  %82 = getelementptr inbounds nuw i8, ptr %81, i32 1
  store ptr %82, ptr %3, align 8, !tbaa !3
  store i8 120, ptr %81, align 1, !tbaa !8
  %83 = load ptr, ptr %2, align 8, !tbaa !3
  %84 = load i8, ptr %83, align 1, !tbaa !8
  %85 = sext i8 %84 to i32
  %86 = ashr i32 %85, 4
  %87 = icmp sgt i32 %86, 9
  br i1 %87, label %88, label %95

88:                                               ; preds = %78
  %89 = load ptr, ptr %2, align 8, !tbaa !3
  %90 = load i8, ptr %89, align 1, !tbaa !8
  %91 = sext i8 %90 to i32
  %92 = ashr i32 %91, 4
  %93 = sub nsw i32 %92, 10
  %94 = add nsw i32 %93, 65
  br label %101

95:                                               ; preds = %78
  %96 = load ptr, ptr %2, align 8, !tbaa !3
  %97 = load i8, ptr %96, align 1, !tbaa !8
  %98 = sext i8 %97 to i32
  %99 = ashr i32 %98, 4
  %100 = add nsw i32 %99, 48
  br label %101

101:                                              ; preds = %95, %88
  %102 = phi i32 [ %94, %88 ], [ %100, %95 ]
  %103 = trunc i32 %102 to i8
  %104 = load ptr, ptr %3, align 8, !tbaa !3
  %105 = getelementptr inbounds nuw i8, ptr %104, i32 1
  store ptr %105, ptr %3, align 8, !tbaa !3
  store i8 %103, ptr %104, align 1, !tbaa !8
  %106 = load ptr, ptr %2, align 8, !tbaa !3
  %107 = load i8, ptr %106, align 1, !tbaa !8
  %108 = sext i8 %107 to i32
  %109 = and i32 %108, 15
  %110 = icmp sgt i32 %109, 9
  br i1 %110, label %111, label %118

111:                                              ; preds = %101
  %112 = load ptr, ptr %2, align 8, !tbaa !3
  %113 = load i8, ptr %112, align 1, !tbaa !8
  %114 = sext i8 %113 to i32
  %115 = and i32 %114, 15
  %116 = sub nsw i32 %115, 10
  %117 = add nsw i32 %116, 65
  br label %124

118:                                              ; preds = %101
  %119 = load ptr, ptr %2, align 8, !tbaa !3
  %120 = load i8, ptr %119, align 1, !tbaa !8
  %121 = sext i8 %120 to i32
  %122 = and i32 %121, 15
  %123 = add nsw i32 %122, 48
  br label %124

124:                                              ; preds = %118, %111
  %125 = phi i32 [ %117, %111 ], [ %123, %118 ]
  %126 = trunc i32 %125 to i8
  %127 = load ptr, ptr %3, align 8, !tbaa !3
  %128 = getelementptr inbounds nuw i8, ptr %127, i32 1
  store ptr %128, ptr %3, align 8, !tbaa !3
  store i8 %126, ptr %127, align 1, !tbaa !8
  br label %129

129:                                              ; preds = %124, %73
  br label %130

130:                                              ; preds = %129, %54, %49, %44, %39, %34, %29, %24, %19
  br label %131

131:                                              ; preds = %130
  %132 = load ptr, ptr %2, align 8, !tbaa !3
  %133 = getelementptr inbounds nuw i8, ptr %132, i32 1
  store ptr %133, ptr %2, align 8, !tbaa !3
  br label %11, !llvm.loop !58

134:                                              ; preds = %11
  %135 = load ptr, ptr %3, align 8, !tbaa !3
  store i8 0, ptr %135, align 1, !tbaa !8
  %136 = load ptr, ptr %4, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #11
  ret ptr %136
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #10

; Function Attrs: nounwind
define dso_local void @d_free(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !25
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  call void @free(ptr noundef %3) #11
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #9 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #10 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(1) }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 omnipotent char", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = distinct !{!13, !10}
!14 = !{!15, !15, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !5, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 int", !5, i64 0}
!19 = !{!20, !21, i64 48}
!20 = !{!"stat", !21, i64 0, !21, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !21, i64 32, !21, i64 40, !21, i64 48, !12, i64 56, !12, i64 60, !21, i64 64, !22, i64 72, !22, i64 88, !22, i64 104, !6, i64 120}
!21 = !{!"long", !6, i64 0}
!22 = !{!"timespec", !21, i64 0, !21, i64 8}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTS8_IO_FILE", !5, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTS11AbstractVec", !5, i64 0}
!28 = !{!29, !12, i64 0}
!29 = !{!"AbstractVec", !12, i64 0, !12, i64 4, !16, i64 8, !6, i64 16}
!30 = !{!29, !16, i64 8}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTS13AbstractStack", !5, i64 0}
!35 = !{!36, !16, i64 16}
!36 = !{!"AbstractStack", !16, i64 0, !16, i64 8, !16, i64 16, !6, i64 24}
!37 = !{!36, !16, i64 0}
!38 = !{!36, !16, i64 8}
!39 = !{!21, !21, i64 0}
!40 = distinct !{!40, !10}
!41 = !{!29, !12, i64 4}
!42 = distinct !{!42, !10}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 _ZTS10hash_fns_t", !5, i64 0}
!45 = !{!46, !5, i64 0}
!46 = !{!"hash_fns_t", !5, i64 0, !5, i64 8, !6, i64 16}
!47 = !{!46, !5, i64 8}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 short", !5, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"short", !6, i64 0}
!58 = distinct !{!58, !10}
