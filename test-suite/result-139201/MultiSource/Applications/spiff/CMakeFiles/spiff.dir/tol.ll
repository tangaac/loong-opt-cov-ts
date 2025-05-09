; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/tol.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/tol.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct._T_tstr = type { i32, ptr, ptr }
%struct.R_flstr = type { i32, i32, ptr }

@_T_gtol = dso_local global ptr null, align 8
@T_initdefault.called_before = internal global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"T_initdefault called more than once\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"1e-10\00", align 1
@_T_tols = internal global [10 x ptr] zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"too many tolerances per line\00", align 1
@Z_err_buf = external global [0 x i8], align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s : negative tolerances don't make any sense\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"%s : relative tolerances greater than 2 don't make any sense\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"don't understand tolerance type '%c'\0A\00", align 1
@_T_getspec.retval = internal global [1024 x i8] zeroinitializer, align 1

; Function Attrs: nounwind
define dso_local void @T_initdefault() #0 {
  %1 = load i32, ptr @T_initdefault.called_before, align 4, !tbaa !3
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @Z_fatal(ptr noundef @.str)
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @_T_gtol, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @_T_addtol(ptr noundef @_T_gtol, i32 noundef signext 0, ptr noundef @.str.1)
  call void @_T_addtol(ptr noundef @_T_gtol, i32 noundef signext 1, ptr noundef @.str.1)
  br label %8

8:                                                ; preds = %7, %4
  store i32 1, ptr @T_initdefault.called_before, align 4, !tbaa !3
  ret void
}

declare void @Z_fatal(...) #1

; Function Attrs: nounwind
define dso_local void @T_clear_tols() #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #3
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %2

2:                                                ; preds = %9, %0
  %3 = load i32, ptr %1, align 4, !tbaa !3
  %4 = icmp slt i32 %3, 10
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4, !tbaa !3
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [10 x ptr], ptr @_T_tols, i64 0, i64 %7
  call void @_T_tolclear(ptr noundef %8)
  br label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %1, align 4, !tbaa !3
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %1, align 4, !tbaa !3
  br label %2, !llvm.loop !10

12:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind
define internal void @_T_tolclear(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !12
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  store ptr null, ptr %3, align 8, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind
define dso_local void @T_setdef(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !15
  call void @_T_defclear()
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  call void @_T_settol(ptr noundef @_T_gtol, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind
define internal void @_T_settol(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 8, !tbaa !12
  store ptr %1, ptr %4, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 1, ptr %5) #3
  br label %6

6:                                                ; preds = %33, %2
  %7 = load ptr, ptr %4, align 8, !tbaa !15
  %8 = load i8, ptr %7, align 1, !tbaa !17
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 0, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %6
  call void @S_skipspace(ptr noundef %4)
  %12 = load ptr, ptr %4, align 8, !tbaa !15
  %13 = load i8, ptr %12, align 1, !tbaa !17
  store i8 %13, ptr %5, align 1, !tbaa !17
  %14 = load ptr, ptr %4, align 8, !tbaa !15
  %15 = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %15, ptr %4, align 8, !tbaa !15
  call void @S_skipspace(ptr noundef %4)
  %16 = load i8, ptr %5, align 1, !tbaa !17
  %17 = sext i8 %16 to i32
  switch i32 %17, label %29 [
    i32 97, label %18
    i32 114, label %21
    i32 105, label %24
    i32 100, label %26
  ]

18:                                               ; preds = %11
  %19 = load ptr, ptr %3, align 8, !tbaa !12
  %20 = load ptr, ptr %4, align 8, !tbaa !15
  call void @_T_addtol(ptr noundef %19, i32 noundef signext 0, ptr noundef %20)
  br label %33

21:                                               ; preds = %11
  %22 = load ptr, ptr %3, align 8, !tbaa !12
  %23 = load ptr, ptr %4, align 8, !tbaa !15
  call void @_T_addtol(ptr noundef %22, i32 noundef signext 1, ptr noundef %23)
  br label %33

24:                                               ; preds = %11
  %25 = load ptr, ptr %3, align 8, !tbaa !12
  call void @_T_addtol(ptr noundef %25, i32 noundef signext 2, ptr noundef null)
  br label %33

26:                                               ; preds = %11
  %27 = load ptr, ptr %3, align 8, !tbaa !12
  %28 = load ptr, ptr @_T_gtol, align 8, !tbaa !7
  call void @_T_appendtols(ptr noundef %27, ptr noundef %28)
  br label %33

29:                                               ; preds = %11
  %30 = load i8, ptr %5, align 1, !tbaa !17
  %31 = sext i8 %30 to i32
  %32 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.6, i32 noundef signext %31) #3
  call void @Z_fatal(ptr noundef @Z_err_buf)
  br label %33

33:                                               ; preds = %29, %26, %24, %21, %18
  call void @S_nextword(ptr noundef %4)
  br label %6, !llvm.loop !18

34:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 1, ptr %5) #3
  ret void
}

; Function Attrs: nounwind
define dso_local void @T_tolline(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #3
  call void @T_clear_tols()
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %4

4:                                                ; preds = %19, %1
  %5 = load ptr, ptr %2, align 8, !tbaa !15
  %6 = load i8, ptr %5, align 1, !tbaa !17
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 0, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = load i32, ptr %3, align 4, !tbaa !3
  %11 = icmp sge i32 %10, 10
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @Z_fatal(ptr noundef @.str.2)
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, ptr %3, align 4, !tbaa !3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x ptr], ptr @_T_tols, i64 0, i64 %15
  %17 = load ptr, ptr %2, align 8, !tbaa !15
  %18 = call ptr @_T_getspec(ptr noundef %17)
  call void @_T_settol(ptr noundef %16, ptr noundef %18)
  br label %19

19:                                               ; preds = %13
  %20 = load i32, ptr %3, align 4, !tbaa !3
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %3, align 4, !tbaa !3
  %22 = load ptr, ptr %2, align 8, !tbaa !15
  %23 = call ptr @_T_nextspec(ptr noundef %22)
  store ptr %23, ptr %2, align 8, !tbaa !15
  br label %4, !llvm.loop !19

24:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #3
  ret void
}

; Function Attrs: nounwind
define internal ptr @_T_getspec(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #3
  store ptr @_T_getspec.retval, ptr %3, align 8, !tbaa !15
  br label %4

4:                                                ; preds = %16, %1
  %5 = load ptr, ptr %2, align 8, !tbaa !15
  %6 = load i8, ptr %5, align 1, !tbaa !17
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 59, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = load ptr, ptr %2, align 8, !tbaa !15
  %11 = load i8, ptr %10, align 1, !tbaa !17
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 0, %12
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi i1 [ false, %4 ], [ %13, %9 ]
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = load ptr, ptr %2, align 8, !tbaa !15
  %18 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %18, ptr %2, align 8, !tbaa !15
  %19 = load i8, ptr %17, align 1, !tbaa !17
  %20 = load ptr, ptr %3, align 8, !tbaa !15
  %21 = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %21, ptr %3, align 8, !tbaa !15
  store i8 %19, ptr %20, align 1, !tbaa !17
  br label %4, !llvm.loop !20

22:                                               ; preds = %14
  %23 = load ptr, ptr %3, align 8, !tbaa !15
  store i8 0, ptr %23, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #3
  ret ptr @_T_getspec.retval
}

; Function Attrs: nounwind
define internal ptr @_T_nextspec(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !15
  br label %3

3:                                                ; preds = %16, %1
  %4 = load ptr, ptr %2, align 8, !tbaa !15
  %5 = load i8, ptr %4, align 1, !tbaa !17
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 59, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !15
  %10 = load i8, ptr %9, align 1, !tbaa !17
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 0, %11
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i1 [ false, %3 ], [ %12, %8 ]
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %15
  %17 = load ptr, ptr %2, align 8, !tbaa !15
  %18 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %18, ptr %2, align 8, !tbaa !15
  br label %3, !llvm.loop !21

19:                                               ; preds = %13
  %20 = load ptr, ptr %2, align 8, !tbaa !15
  %21 = load i8, ptr %20, align 1, !tbaa !17
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 59, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load ptr, ptr %2, align 8, !tbaa !15
  %26 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %26, ptr %2, align 8, !tbaa !15
  br label %27

27:                                               ; preds = %24, %19
  %28 = load ptr, ptr %2, align 8, !tbaa !15
  ret ptr %28
}

; Function Attrs: nounwind
define dso_local signext i32 @T_moretols(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  %3 = load i32, ptr %2, align 4, !tbaa !3
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !tbaa !3
  %7 = icmp sgt i32 9, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i32, ptr %2, align 4, !tbaa !3
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [10 x ptr], ptr @_T_tols, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %8, %5, %1
  %17 = phi i1 [ false, %5 ], [ false, %1 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: nounwind
define dso_local ptr @T_gettol(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  %3 = load i32, ptr %2, align 4, !tbaa !3
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [10 x ptr], ptr @_T_tols, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  ret ptr %6
}

; Function Attrs: nounwind
define dso_local ptr @T_picktol(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !7
  store ptr %1, ptr %5, align 8, !tbaa !7
  %6 = load ptr, ptr %4, align 8, !tbaa !7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !7
  store ptr %9, ptr %3, align 8
  br label %17

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 8, !tbaa !7
  store ptr %14, ptr %3, align 8
  br label %17

15:                                               ; preds = %10
  %16 = load ptr, ptr @_T_gtol, align 8, !tbaa !7
  store ptr %16, ptr %3, align 8
  br label %17

17:                                               ; preds = %15, %13, %8
  %18 = load ptr, ptr %3, align 8
  ret ptr %18
}

; Function Attrs: nounwind
define dso_local void @_T_appendtols(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !12
  store ptr %1, ptr %4, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #3
  %6 = load ptr, ptr %3, align 8, !tbaa !12
  %7 = load ptr, ptr %6, align 8, !tbaa !7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !tbaa !7
  %11 = load ptr, ptr %3, align 8, !tbaa !12
  store ptr %10, ptr %11, align 8, !tbaa !7
  br label %30

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !tbaa !12
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  store ptr %14, ptr %5, align 8, !tbaa !7
  br label %15

15:                                               ; preds = %22, %12
  %16 = load ptr, ptr %5, align 8, !tbaa !7
  %17 = getelementptr inbounds nuw %struct._T_tstr, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = icmp eq ptr %18, null
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %5, align 8, !tbaa !7
  %24 = getelementptr inbounds nuw %struct._T_tstr, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  store ptr %25, ptr %5, align 8, !tbaa !7
  br label %15, !llvm.loop !25

26:                                               ; preds = %15
  %27 = load ptr, ptr %4, align 8, !tbaa !7
  %28 = load ptr, ptr %5, align 8, !tbaa !7
  %29 = getelementptr inbounds nuw %struct._T_tstr, ptr %28, i32 0, i32 2
  store ptr %27, ptr %29, align 8, !tbaa !22
  br label %30

30:                                               ; preds = %26, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #3
  ret void
}

; Function Attrs: nounwind
define dso_local void @_T_addtol(ptr noundef %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !12
  store i32 %1, ptr %5, align 4, !tbaa !3
  store ptr %2, ptr %6, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #3
  %8 = load ptr, ptr %4, align 8, !tbaa !12
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = call ptr @_Z_myalloc(i64 noundef 24)
  %13 = load ptr, ptr %4, align 8, !tbaa !12
  store ptr %12, ptr %13, align 8, !tbaa !7
  store ptr %12, ptr %7, align 8, !tbaa !7
  br label %35

14:                                               ; preds = %3
  %15 = load ptr, ptr %4, align 8, !tbaa !12
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  store ptr %16, ptr %7, align 8, !tbaa !7
  br label %17

17:                                               ; preds = %24, %14
  %18 = load ptr, ptr %7, align 8, !tbaa !7
  %19 = getelementptr inbounds nuw %struct._T_tstr, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr %7, align 8, !tbaa !7
  %26 = getelementptr inbounds nuw %struct._T_tstr, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  store ptr %27, ptr %7, align 8, !tbaa !7
  br label %17, !llvm.loop !26

28:                                               ; preds = %17
  %29 = call ptr @_Z_myalloc(i64 noundef 24)
  %30 = load ptr, ptr %7, align 8, !tbaa !7
  %31 = getelementptr inbounds nuw %struct._T_tstr, ptr %30, i32 0, i32 2
  store ptr %29, ptr %31, align 8, !tbaa !22
  %32 = load ptr, ptr %7, align 8, !tbaa !7
  %33 = getelementptr inbounds nuw %struct._T_tstr, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  store ptr %34, ptr %7, align 8, !tbaa !7
  br label %35

35:                                               ; preds = %28, %11
  %36 = load i32, ptr %5, align 4, !tbaa !3
  %37 = load ptr, ptr %7, align 8, !tbaa !7
  %38 = getelementptr inbounds nuw %struct._T_tstr, ptr %37, i32 0, i32 0
  store i32 %36, ptr %38, align 8, !tbaa !27
  %39 = load ptr, ptr %7, align 8, !tbaa !7
  %40 = getelementptr inbounds nuw %struct._T_tstr, ptr %39, i32 0, i32 2
  store ptr null, ptr %40, align 8, !tbaa !22
  %41 = load i32, ptr %5, align 4, !tbaa !3
  %42 = icmp eq i32 2, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load ptr, ptr %7, align 8, !tbaa !7
  %45 = getelementptr inbounds nuw %struct._T_tstr, ptr %44, i32 0, i32 1
  store ptr null, ptr %45, align 8, !tbaa !28
  br label %74

46:                                               ; preds = %35
  %47 = load ptr, ptr %6, align 8, !tbaa !15
  %48 = call ptr @F_atof(ptr noundef %47, i32 noundef signext 0)
  %49 = load ptr, ptr %7, align 8, !tbaa !7
  %50 = getelementptr inbounds nuw %struct._T_tstr, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 8, !tbaa !28
  %51 = load ptr, ptr %7, align 8, !tbaa !7
  %52 = getelementptr inbounds nuw %struct._T_tstr, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !28
  %54 = getelementptr inbounds nuw %struct.R_flstr, ptr %53, i32 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !29
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load ptr, ptr %6, align 8, !tbaa !15
  %59 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.3, ptr noundef %58) #3
  call void @Z_fatal(ptr noundef @Z_err_buf)
  br label %60

60:                                               ; preds = %57, %46
  %61 = load i32, ptr %5, align 4, !tbaa !3
  %62 = icmp eq i32 1, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load ptr, ptr %7, align 8, !tbaa !7
  %65 = getelementptr inbounds nuw %struct._T_tstr, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !28
  %67 = call ptr @F_atof(ptr noundef @.str.4, i32 noundef signext 1)
  %68 = call signext i32 @F_floatcmp(ptr noundef %66, ptr noundef %67)
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load ptr, ptr %6, align 8, !tbaa !15
  %72 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.5, ptr noundef %71) #3
  call void @Z_fatal(ptr noundef @Z_err_buf)
  br label %73

73:                                               ; preds = %70, %63, %60
  br label %74

74:                                               ; preds = %73, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #3
  ret void
}

declare ptr @_Z_myalloc(...) #1

declare ptr @F_atof(...) #1

; Function Attrs: nounwind
declare signext i32 @sprintf(ptr noundef, ptr noundef, ...) #0

declare signext i32 @F_floatcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define internal void @_T_defclear() #0 {
  call void @_T_tolclear(ptr noundef @_T_gtol)
  ret void
}

declare void @S_skipspace(...) #1

declare void @S_nextword(...) #1

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTS7_T_tstr", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"p2 _ZTS7_T_tstr", !14, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 omnipotent char", !9, i64 0}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = !{!23, !8, i64 16}
!23 = !{!"_T_tstr", !4, i64 0, !24, i64 8, !8, i64 16}
!24 = !{!"p1 _ZTS7R_flstr", !9, i64 0}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = !{!23, !4, i64 0}
!28 = !{!23, !24, i64 8}
!29 = !{!30, !4, i64 4}
!30 = !{!"R_flstr", !4, i64 0, !4, i64 4, !16, i64 8}
