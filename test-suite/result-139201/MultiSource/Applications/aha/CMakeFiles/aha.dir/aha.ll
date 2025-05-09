; ModuleID = './MultiSource/Applications/aha/CMakeFiles/aha.dir/aha.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/aha/aha.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.anon.0 = type { i32, [3 x i32] }
%struct.anon = type { ptr, i32, i32, [3 x i32], ptr, ptr, ptr }

@debug = dso_local constant i32 0, align 4
@counters = dso_local constant i32 1, align 4
@trialx = dso_local global [17 x i32] [i32 1, i32 0, i32 -1, i32 -2147483648, i32 2147483647, i32 -2147483647, i32 2147483646, i32 19088743, i32 -1985229329, i32 -2, i32 2, i32 -3, i32 3, i32 -64, i32 64, i32 -5, i32 -31415], align 4
@dummy1 = dso_local global [7 x i32] [i32 0, i32 -1, i32 1, i32 -2147483648, i32 -2, i32 2, i32 3], align 4
@dummy2 = dso_local global [4 x i32] [i32 1, i32 2, i32 30, i32 31], align 4
@unacceptable = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-(\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"~(\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"divu\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" /u \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" & \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" ^ \00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"shl\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" << \00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"shr\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c" >>u \00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"shrs\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c" >>s \00", align 1
@isa = dso_local global [13 x { ptr, i32, i32, [3 x i32], [4 x i8], ptr, ptr, ptr }] [{ ptr, i32, i32, [3 x i32], [4 x i8], ptr, ptr, ptr } { ptr @neg, i32 1, i32 0, [3 x i32] [i32 11, i32 0, i32 0], [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2 }, { ptr, i32, i32, [3 x i32], [4 x i8], ptr, ptr, ptr } { ptr @Not, i32 1, i32 0, [3 x i32] [i32 11, i32 0, i32 0], [4 x i8] zeroinitializer, ptr @.str.3, ptr @.str.4, ptr @.str.2 }, { ptr, i32, i32, [3 x i32], [4 x i8], ptr, ptr, ptr } { ptr @add, i32 2, i32 1, [3 x i32] [i32 11, i32 2, i32 0], [4 x i8] zeroinitializer, ptr @.str.5, ptr @.str.6, ptr @.str.7 }, { ptr, i32, i32, [3 x i32], [4 x i8], ptr, ptr, ptr } { ptr @sub, i32 2, i32 0, [3 x i32] [i32 2, i32 2, i32 0], [4 x i8] zeroinitializer, ptr @.str.8, ptr @.str.6, ptr @.str.9 }, { ptr, i32, i32, [3 x i32], [4 x i8], ptr, ptr, ptr } { ptr @mul, i32 2, i32 1, [3 x i32] [i32 11, i32 3, i32 0], [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.6, ptr @.str.11 }, { ptr, i32, i32, [3 x i32], [4 x i8], ptr, ptr, ptr } { ptr @divide, i32 2, i32 0, [3 x i32] [i32 1, i32 3, i32 0], [4 x i8] zeroinitializer, ptr @.str.12, ptr @.str.6, ptr @.str.13 }, { ptr, i32, i32, [3 x i32], [4 x i8], ptr, ptr, ptr } { ptr @divu, i32 2, i32 0, [3 x i32] [i32 1, i32 1, i32 0], [4 x i8] zeroinitializer, ptr @.str.14, ptr @.str.6, ptr @.str.15 }, { ptr, i32, i32, [3 x i32], [4 x i8], ptr, ptr, ptr } { ptr @And, i32 2, i32 1, [3 x i32] [i32 11, i32 2, i32 0], [4 x i8] zeroinitializer, ptr @.str.16, ptr @.str.6, ptr @.str.17 }, { ptr, i32, i32, [3 x i32], [4 x i8], ptr, ptr, ptr } { ptr @Or, i32 2, i32 1, [3 x i32] [i32 11, i32 2, i32 0], [4 x i8] zeroinitializer, ptr @.str.18, ptr @.str.6, ptr @.str.19 }, { ptr, i32, i32, [3 x i32], [4 x i8], ptr, ptr, ptr } { ptr @Xor, i32 2, i32 1, [3 x i32] [i32 11, i32 2, i32 0], [4 x i8] zeroinitializer, ptr @.str.20, ptr @.str.6, ptr @.str.21 }, { ptr, i32, i32, [3 x i32], [4 x i8], ptr, ptr, ptr } { ptr @shl, i32 2, i32 0, [3 x i32] [i32 1, i32 7, i32 0], [4 x i8] zeroinitializer, ptr @.str.22, ptr @.str.6, ptr @.str.23 }, { ptr, i32, i32, [3 x i32], [4 x i8], ptr, ptr, ptr } { ptr @shr, i32 2, i32 0, [3 x i32] [i32 1, i32 7, i32 0], [4 x i8] zeroinitializer, ptr @.str.24, ptr @.str.6, ptr @.str.25 }, { ptr, i32, i32, [3 x i32], [4 x i8], ptr, ptr, ptr } { ptr @shrs, i32 2, i32 0, [3 x i32] [i32 3, i32 7, i32 0], [4 x i8] zeroinitializer, ptr @.str.26, ptr @.str.6, ptr @.str.27 }], align 8
@r = dso_local global [17 x i32] [i32 0, i32 -1, i32 1, i32 -2147483648, i32 -2, i32 2, i32 3, i32 1, i32 2, i32 30, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4
@.str.28 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"0x%X\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@pgm = dso_local global [5 x %struct.anon.0] zeroinitializer, align 4
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c")\00", align 1
@numi = dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [13 x i8] c"   %-5s r%d,\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"r%d\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"   Expr: \00", align 1
@check.itrialx = internal global i32 0, align 4
@corr_result = dso_local global i32 0, align 4
@correct_result = dso_local global [17 x i32] zeroinitializer, align 4
@.str.39 = private unnamed_addr constant [32 x i8] c"\0AFound a %d-operation program:\0A\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"Searching for programs with %d operations.\0A\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"Found %d solutions.\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"Counters = \00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@counter = dso_local global [5 x i32] zeroinitializer, align 4
@.str.44 = private unnamed_addr constant [12 x i8] c"total = %d\0A\00", align 1

; Function Attrs: nounwind
define dso_local signext i32 @neg(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = sub nsw i32 0, %7
  ret i32 %8
}

; Function Attrs: nounwind
define dso_local signext i32 @Not(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: nounwind
define dso_local signext i32 @pop(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5
  %8 = load i32, ptr %4, align 4, !tbaa !3
  store i32 %8, ptr %7, align 4, !tbaa !3
  %9 = load i32, ptr %7, align 4, !tbaa !3
  %10 = load i32, ptr %7, align 4, !tbaa !3
  %11 = lshr i32 %10, 1
  %12 = and i32 %11, 1431655765
  %13 = sub i32 %9, %12
  store i32 %13, ptr %7, align 4, !tbaa !3
  %14 = load i32, ptr %7, align 4, !tbaa !3
  %15 = and i32 %14, 858993459
  %16 = load i32, ptr %7, align 4, !tbaa !3
  %17 = lshr i32 %16, 2
  %18 = and i32 %17, 858993459
  %19 = add i32 %15, %18
  store i32 %19, ptr %7, align 4, !tbaa !3
  %20 = load i32, ptr %7, align 4, !tbaa !3
  %21 = load i32, ptr %7, align 4, !tbaa !3
  %22 = lshr i32 %21, 4
  %23 = add i32 %20, %22
  %24 = and i32 %23, 252645135
  store i32 %24, ptr %7, align 4, !tbaa !3
  %25 = load i32, ptr %7, align 4, !tbaa !3
  %26 = load i32, ptr %7, align 4, !tbaa !3
  %27 = shl i32 %26, 8
  %28 = add i32 %25, %27
  store i32 %28, ptr %7, align 4, !tbaa !3
  %29 = load i32, ptr %7, align 4, !tbaa !3
  %30 = load i32, ptr %7, align 4, !tbaa !3
  %31 = shl i32 %30, 16
  %32 = add i32 %29, %31
  store i32 %32, ptr %7, align 4, !tbaa !3
  %33 = load i32, ptr %7, align 4, !tbaa !3
  %34 = lshr i32 %33, 24
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5
  ret i32 %34
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local signext i32 @nlz(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !3
  store i32 %1, ptr %6, align 4, !tbaa !3
  store i32 %2, ptr %7, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5
  %11 = load i32, ptr %5, align 4, !tbaa !3
  store i32 %11, ptr %8, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #5
  %12 = load i32, ptr %8, align 4, !tbaa !3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 32, ptr %4, align 4
  store i32 1, ptr %10, align 4
  br label %55

15:                                               ; preds = %3
  store i32 0, ptr %9, align 4, !tbaa !3
  %16 = load i32, ptr %8, align 4, !tbaa !3
  %17 = icmp ule i32 %16, 65535
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, ptr %9, align 4, !tbaa !3
  %20 = add nsw i32 %19, 16
  store i32 %20, ptr %9, align 4, !tbaa !3
  %21 = load i32, ptr %8, align 4, !tbaa !3
  %22 = shl i32 %21, 16
  store i32 %22, ptr %8, align 4, !tbaa !3
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, ptr %8, align 4, !tbaa !3
  %25 = icmp ule i32 %24, 16777215
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, ptr %9, align 4, !tbaa !3
  %28 = add nsw i32 %27, 8
  store i32 %28, ptr %9, align 4, !tbaa !3
  %29 = load i32, ptr %8, align 4, !tbaa !3
  %30 = shl i32 %29, 8
  store i32 %30, ptr %8, align 4, !tbaa !3
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, ptr %8, align 4, !tbaa !3
  %33 = icmp ule i32 %32, 268435455
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, ptr %9, align 4, !tbaa !3
  %36 = add nsw i32 %35, 4
  store i32 %36, ptr %9, align 4, !tbaa !3
  %37 = load i32, ptr %8, align 4, !tbaa !3
  %38 = shl i32 %37, 4
  store i32 %38, ptr %8, align 4, !tbaa !3
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, ptr %8, align 4, !tbaa !3
  %41 = icmp ule i32 %40, 1073741823
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, ptr %9, align 4, !tbaa !3
  %44 = add nsw i32 %43, 2
  store i32 %44, ptr %9, align 4, !tbaa !3
  %45 = load i32, ptr %8, align 4, !tbaa !3
  %46 = shl i32 %45, 2
  store i32 %46, ptr %8, align 4, !tbaa !3
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, ptr %8, align 4, !tbaa !3
  %49 = icmp ule i32 %48, 2147483647
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, ptr %9, align 4, !tbaa !3
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %9, align 4, !tbaa !3
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, ptr %9, align 4, !tbaa !3
  store i32 %54, ptr %4, align 4
  store i32 1, ptr %10, align 4
  br label %55

55:                                               ; preds = %53, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5
  %56 = load i32, ptr %4, align 4
  ret i32 %56
}

; Function Attrs: nounwind
define dso_local signext i32 @rev(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5
  %8 = load i32, ptr %4, align 4, !tbaa !3
  store i32 %8, ptr %7, align 4, !tbaa !3
  %9 = load i32, ptr %7, align 4, !tbaa !3
  %10 = and i32 %9, 1431655765
  %11 = shl i32 %10, 1
  %12 = load i32, ptr %7, align 4, !tbaa !3
  %13 = lshr i32 %12, 1
  %14 = and i32 %13, 1431655765
  %15 = or i32 %11, %14
  store i32 %15, ptr %7, align 4, !tbaa !3
  %16 = load i32, ptr %7, align 4, !tbaa !3
  %17 = and i32 %16, 858993459
  %18 = shl i32 %17, 2
  %19 = load i32, ptr %7, align 4, !tbaa !3
  %20 = lshr i32 %19, 2
  %21 = and i32 %20, 858993459
  %22 = or i32 %18, %21
  store i32 %22, ptr %7, align 4, !tbaa !3
  %23 = load i32, ptr %7, align 4, !tbaa !3
  %24 = and i32 %23, 252645135
  %25 = shl i32 %24, 4
  %26 = load i32, ptr %7, align 4, !tbaa !3
  %27 = lshr i32 %26, 4
  %28 = and i32 %27, 252645135
  %29 = or i32 %25, %28
  store i32 %29, ptr %7, align 4, !tbaa !3
  %30 = load i32, ptr %7, align 4, !tbaa !3
  %31 = shl i32 %30, 24
  %32 = load i32, ptr %7, align 4, !tbaa !3
  %33 = and i32 %32, 65280
  %34 = shl i32 %33, 8
  %35 = or i32 %31, %34
  %36 = load i32, ptr %7, align 4, !tbaa !3
  %37 = lshr i32 %36, 8
  %38 = and i32 %37, 65280
  %39 = or i32 %35, %38
  %40 = load i32, ptr %7, align 4, !tbaa !3
  %41 = lshr i32 %40, 24
  %42 = or i32 %39, %41
  store i32 %42, ptr %7, align 4, !tbaa !3
  %43 = load i32, ptr %7, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5
  ret i32 %43
}

; Function Attrs: nounwind
define dso_local signext i32 @add(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = load i32, ptr %5, align 4, !tbaa !3
  %9 = add nsw i32 %7, %8
  ret i32 %9
}

; Function Attrs: nounwind
define dso_local signext i32 @sub(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = load i32, ptr %5, align 4, !tbaa !3
  %9 = sub nsw i32 %7, %8
  ret i32 %9
}

; Function Attrs: nounwind
define dso_local signext i32 @mul(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = load i32, ptr %5, align 4, !tbaa !3
  %9 = mul nsw i32 %7, %8
  ret i32 %9
}

; Function Attrs: nounwind
define dso_local signext i32 @divide(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !3
  store i32 %1, ptr %6, align 4, !tbaa !3
  store i32 %2, ptr %7, align 4, !tbaa !3
  %8 = load i32, ptr %6, align 4, !tbaa !3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %6, align 4, !tbaa !3
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, ptr %5, align 4, !tbaa !3
  %15 = icmp eq i32 %14, -2147483648
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 1, ptr @unacceptable, align 4, !tbaa !3
  store i32 0, ptr %4, align 4
  br label %21

17:                                               ; preds = %13, %10
  %18 = load i32, ptr %5, align 4, !tbaa !3
  %19 = load i32, ptr %6, align 4, !tbaa !3
  %20 = sdiv i32 %18, %19
  store i32 %20, ptr %4, align 4
  br label %21

21:                                               ; preds = %17, %16
  %22 = load i32, ptr %4, align 4
  ret i32 %22
}

; Function Attrs: nounwind
define dso_local signext i32 @divu(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !3
  store i32 %1, ptr %6, align 4, !tbaa !3
  store i32 %2, ptr %7, align 4, !tbaa !3
  %8 = load i32, ptr %6, align 4, !tbaa !3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 1, ptr @unacceptable, align 4, !tbaa !3
  store i32 0, ptr %4, align 4
  br label %15

11:                                               ; preds = %3
  %12 = load i32, ptr %5, align 4, !tbaa !3
  %13 = load i32, ptr %6, align 4, !tbaa !3
  %14 = udiv i32 %12, %13
  store i32 %14, ptr %4, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = load i32, ptr %4, align 4
  ret i32 %16
}

; Function Attrs: nounwind
define dso_local signext i32 @And(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = load i32, ptr %5, align 4, !tbaa !3
  %9 = and i32 %7, %8
  ret i32 %9
}

; Function Attrs: nounwind
define dso_local signext i32 @Or(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = load i32, ptr %5, align 4, !tbaa !3
  %9 = or i32 %7, %8
  ret i32 %9
}

; Function Attrs: nounwind
define dso_local signext i32 @Xor(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = load i32, ptr %5, align 4, !tbaa !3
  %9 = xor i32 %7, %8
  ret i32 %9
}

; Function Attrs: nounwind
define dso_local signext i32 @rotl(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5
  %8 = load i32, ptr %5, align 4, !tbaa !3
  %9 = and i32 %8, 63
  store i32 %9, ptr %7, align 4, !tbaa !3
  %10 = load i32, ptr %4, align 4, !tbaa !3
  %11 = load i32, ptr %7, align 4, !tbaa !3
  %12 = shl i32 %10, %11
  %13 = load i32, ptr %4, align 4, !tbaa !3
  %14 = load i32, ptr %7, align 4, !tbaa !3
  %15 = sub nsw i32 32, %14
  %16 = lshr i32 %13, %15
  %17 = or i32 %12, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5
  ret i32 %17
}

; Function Attrs: nounwind
define dso_local signext i32 @shl(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !3
  store i32 %1, ptr %6, align 4, !tbaa !3
  store i32 %2, ptr %7, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5
  %10 = load i32, ptr %6, align 4, !tbaa !3
  %11 = and i32 %10, 63
  store i32 %11, ptr %8, align 4, !tbaa !3
  %12 = load i32, ptr %8, align 4, !tbaa !3
  %13 = icmp sge i32 %12, 32
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %19

15:                                               ; preds = %3
  %16 = load i32, ptr %5, align 4, !tbaa !3
  %17 = load i32, ptr %8, align 4, !tbaa !3
  %18 = shl i32 %16, %17
  store i32 %18, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %19

19:                                               ; preds = %15, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5
  %20 = load i32, ptr %4, align 4
  ret i32 %20
}

; Function Attrs: nounwind
define dso_local signext i32 @shr(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !3
  store i32 %1, ptr %6, align 4, !tbaa !3
  store i32 %2, ptr %7, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5
  %10 = load i32, ptr %6, align 4, !tbaa !3
  %11 = and i32 %10, 63
  store i32 %11, ptr %8, align 4, !tbaa !3
  %12 = load i32, ptr %8, align 4, !tbaa !3
  %13 = icmp sge i32 %12, 32
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %19

15:                                               ; preds = %3
  %16 = load i32, ptr %5, align 4, !tbaa !3
  %17 = load i32, ptr %8, align 4, !tbaa !3
  %18 = lshr i32 %16, %17
  store i32 %18, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %19

19:                                               ; preds = %15, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5
  %20 = load i32, ptr %4, align 4
  ret i32 %20
}

; Function Attrs: nounwind
define dso_local signext i32 @shrs(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !3
  store i32 %1, ptr %6, align 4, !tbaa !3
  store i32 %2, ptr %7, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5
  %10 = load i32, ptr %6, align 4, !tbaa !3
  %11 = and i32 %10, 63
  store i32 %11, ptr %8, align 4, !tbaa !3
  %12 = load i32, ptr %8, align 4, !tbaa !3
  %13 = icmp sge i32 %12, 32
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, ptr %5, align 4, !tbaa !3
  %16 = ashr i32 %15, 31
  store i32 %16, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %21

17:                                               ; preds = %3
  %18 = load i32, ptr %5, align 4, !tbaa !3
  %19 = load i32, ptr %8, align 4, !tbaa !3
  %20 = ashr i32 %18, %19
  store i32 %20, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %21

21:                                               ; preds = %17, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5
  %22 = load i32, ptr %4, align 4
  ret i32 %22
}

; Function Attrs: nounwind
define dso_local signext i32 @cmpeq(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = load i32, ptr %5, align 4, !tbaa !3
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: nounwind
define dso_local signext i32 @cmplt(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = load i32, ptr %5, align 4, !tbaa !3
  %9 = icmp slt i32 %7, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: nounwind
define dso_local signext i32 @cmpltu(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = load i32, ptr %5, align 4, !tbaa !3
  %9 = icmp ult i32 %7, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: nounwind
define dso_local signext i32 @seleq(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i32, ptr %5, align 4, !tbaa !3
  br label %13

11:                                               ; preds = %3
  %12 = load i32, ptr %6, align 4, !tbaa !3
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind
define dso_local signext i32 @sellt(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i32, ptr %5, align 4, !tbaa !3
  br label %13

11:                                               ; preds = %3
  %12 = load i32, ptr %6, align 4, !tbaa !3
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind
define dso_local signext i32 @selle(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i32, ptr %5, align 4, !tbaa !3
  br label %13

11:                                               ; preds = %3
  %12 = load i32, ptr %6, align 4, !tbaa !3
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind
define dso_local void @print_expr(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #5
  %6 = load i32, ptr %2, align 4, !tbaa !3
  %7 = icmp slt i32 %6, 11
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4, !tbaa !3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [17 x i32], ptr @r, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !3
  %13 = icmp sle i32 -31, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load i32, ptr %2, align 4, !tbaa !3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [17 x i32], ptr @r, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !3
  %19 = icmp sle i32 %18, 31
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, ptr %2, align 4, !tbaa !3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [17 x i32], ptr @r, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !3
  %25 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.28, i32 noundef signext %24)
  br label %32

26:                                               ; preds = %14, %8
  %27 = load i32, ptr %2, align 4, !tbaa !3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [17 x i32], ptr @r, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !3
  %31 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.29, i32 noundef signext %30)
  br label %32

32:                                               ; preds = %26, %20
  br label %92

33:                                               ; preds = %1
  %34 = load i32, ptr %2, align 4, !tbaa !3
  %35 = icmp eq i32 %34, 11
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.30)
  br label %91

38:                                               ; preds = %33
  %39 = load i32, ptr %2, align 4, !tbaa !3
  %40 = sub nsw i32 %39, 12
  store i32 %40, ptr %3, align 4, !tbaa !3
  %41 = load i32, ptr %3, align 4, !tbaa !3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %42
  %44 = getelementptr inbounds nuw %struct.anon.0, ptr %43, i32 0, i32 0
  %45 = load i32, ptr %44, align 4, !tbaa !7
  store i32 %45, ptr %5, align 4, !tbaa !3
  %46 = load i32, ptr %5, align 4, !tbaa !3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %47
  %49 = getelementptr inbounds nuw %struct.anon, ptr %48, i32 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !9
  %51 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.31, ptr noundef %50)
  store i32 0, ptr %4, align 4, !tbaa !3
  br label %52

52:                                               ; preds = %87, %38
  %53 = load i32, ptr %4, align 4, !tbaa !3
  %54 = load i32, ptr %5, align 4, !tbaa !3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %55
  %57 = getelementptr inbounds nuw %struct.anon, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !13
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %52
  %61 = load i32, ptr %3, align 4, !tbaa !3
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %62
  %64 = getelementptr inbounds nuw %struct.anon.0, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %4, align 4, !tbaa !3
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x i32], ptr %64, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !3
  call void @print_expr(i32 noundef signext %68)
  %69 = load i32, ptr %4, align 4, !tbaa !3
  %70 = load i32, ptr %5, align 4, !tbaa !3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %71
  %73 = getelementptr inbounds nuw %struct.anon, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !13
  %75 = sub nsw i32 %74, 1
  %76 = icmp slt i32 %69, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %60
  %78 = load i32, ptr %5, align 4, !tbaa !3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %79
  %81 = getelementptr inbounds nuw %struct.anon, ptr %80, i32 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !14
  %83 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.31, ptr noundef %82)
  br label %86

84:                                               ; preds = %60
  %85 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.32)
  br label %86

86:                                               ; preds = %84, %77
  br label %87

87:                                               ; preds = %86
  %88 = load i32, ptr %4, align 4, !tbaa !3
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %4, align 4, !tbaa !3
  br label %52, !llvm.loop !15

90:                                               ; preds = %52
  br label %91

91:                                               ; preds = %90, %36
  br label %92

92:                                               ; preds = %91, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5
  ret void
}

declare signext i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
define dso_local void @print_pgm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %5

5:                                                ; preds = %87, %0
  %6 = load i32, ptr %1, align 4, !tbaa !3
  %7 = load i32, ptr @numi, align 4, !tbaa !3
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %90

9:                                                ; preds = %5
  %10 = load i32, ptr %1, align 4, !tbaa !3
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %11
  %13 = getelementptr inbounds nuw %struct.anon.0, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 4, !tbaa !7
  store i32 %14, ptr %3, align 4, !tbaa !3
  %15 = load i32, ptr %3, align 4, !tbaa !3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %16
  %18 = getelementptr inbounds nuw %struct.anon, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = load i32, ptr %1, align 4, !tbaa !3
  %21 = add nsw i32 %20, 1
  %22 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.33, ptr noundef %19, i32 noundef signext %21)
  store i32 0, ptr %2, align 4, !tbaa !3
  br label %23

23:                                               ; preds = %82, %9
  %24 = load i32, ptr %2, align 4, !tbaa !3
  %25 = load i32, ptr %3, align 4, !tbaa !3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %26
  %28 = getelementptr inbounds nuw %struct.anon, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !13
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %85

31:                                               ; preds = %23
  %32 = load i32, ptr %1, align 4, !tbaa !3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %33
  %35 = getelementptr inbounds nuw %struct.anon.0, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %2, align 4, !tbaa !3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x i32], ptr %35, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !3
  store i32 %39, ptr %4, align 4, !tbaa !3
  %40 = load i32, ptr %4, align 4, !tbaa !3
  %41 = icmp slt i32 %40, 11
  br i1 %41, label %42, label %59

42:                                               ; preds = %31
  %43 = load i32, ptr %4, align 4, !tbaa !3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [17 x i32], ptr @r, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !3
  store i32 %46, ptr %4, align 4, !tbaa !3
  %47 = load i32, ptr %4, align 4, !tbaa !3
  %48 = icmp sge i32 %47, -31
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, ptr %4, align 4, !tbaa !3
  %51 = icmp sle i32 %50, 31
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, ptr %4, align 4, !tbaa !3
  %54 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.28, i32 noundef signext %53)
  br label %58

55:                                               ; preds = %49, %42
  %56 = load i32, ptr %4, align 4, !tbaa !3
  %57 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.29, i32 noundef signext %56)
  br label %58

58:                                               ; preds = %55, %52
  br label %70

59:                                               ; preds = %31
  %60 = load i32, ptr %4, align 4, !tbaa !3
  %61 = icmp eq i32 %60, 11
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.34)
  br label %69

64:                                               ; preds = %59
  %65 = load i32, ptr %4, align 4, !tbaa !3
  %66 = sub nsw i32 %65, 12
  %67 = add nsw i32 %66, 1
  %68 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.35, i32 noundef signext %67)
  br label %69

69:                                               ; preds = %64, %62
  br label %70

70:                                               ; preds = %69, %58
  %71 = load i32, ptr %2, align 4, !tbaa !3
  %72 = load i32, ptr %3, align 4, !tbaa !3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %73
  %75 = getelementptr inbounds nuw %struct.anon, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !13
  %77 = sub nsw i32 %76, 1
  %78 = icmp slt i32 %71, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.36)
  br label %81

81:                                               ; preds = %79, %70
  br label %82

82:                                               ; preds = %81
  %83 = load i32, ptr %2, align 4, !tbaa !3
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %2, align 4, !tbaa !3
  br label %23, !llvm.loop !18

85:                                               ; preds = %23
  %86 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.37)
  br label %87

87:                                               ; preds = %85
  %88 = load i32, ptr %1, align 4, !tbaa !3
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %1, align 4, !tbaa !3
  br label %5, !llvm.loop !19

90:                                               ; preds = %5
  %91 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.38)
  %92 = load i32, ptr @numi, align 4, !tbaa !3
  %93 = sub nsw i32 %92, 1
  %94 = add nsw i32 %93, 12
  call void @print_expr(i32 noundef signext %94)
  %95 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.37)
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #5
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @check(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5
  br label %6

6:                                                ; preds = %12, %1
  %7 = load i32, ptr %3, align 4, !tbaa !3
  call void @simulate_one_instruction(i32 noundef signext %7)
  %8 = load i32, ptr %3, align 4, !tbaa !3
  %9 = load i32, ptr @numi, align 4, !tbaa !3
  %10 = sub nsw i32 %9, 1
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load i32, ptr %3, align 4, !tbaa !3
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %3, align 4, !tbaa !3
  br label %6

15:                                               ; preds = %6
  %16 = load i32, ptr @unacceptable, align 4, !tbaa !3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, ptr @unacceptable, align 4, !tbaa !3
  store i32 0, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %76

19:                                               ; preds = %15
  %20 = load i32, ptr @numi, align 4, !tbaa !3
  %21 = sub nsw i32 %20, 1
  %22 = add nsw i32 %21, 12
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [17 x i32], ptr @r, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !3
  %26 = load i32, ptr @corr_result, align 4, !tbaa !3
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %76

29:                                               ; preds = %19
  store i32 0, ptr %4, align 4, !tbaa !3
  br label %30

30:                                               ; preds = %72, %29
  %31 = load i32, ptr %4, align 4, !tbaa !3
  %32 = icmp slt i32 %31, 16
  br i1 %32, label %33, label %75

33:                                               ; preds = %30
  %34 = load i32, ptr @check.itrialx, align 4, !tbaa !3
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @check.itrialx, align 4, !tbaa !3
  %36 = load i32, ptr @check.itrialx, align 4, !tbaa !3
  %37 = icmp sge i32 %36, 17
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, ptr @check.itrialx, align 4, !tbaa !3
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, ptr @check.itrialx, align 4, !tbaa !3
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [17 x i32], ptr @trialx, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !3
  store i32 %43, ptr getelementptr inbounds ([17 x i32], ptr @r, i64 0, i64 11), align 4, !tbaa !3
  %44 = load i32, ptr @check.itrialx, align 4, !tbaa !3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [17 x i32], ptr @correct_result, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !3
  store i32 %47, ptr @corr_result, align 4, !tbaa !3
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %48

48:                                               ; preds = %54, %39
  %49 = load i32, ptr %3, align 4, !tbaa !3
  %50 = load i32, ptr @numi, align 4, !tbaa !3
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, ptr %3, align 4, !tbaa !3
  call void @simulate_one_instruction(i32 noundef signext %53)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %3, align 4, !tbaa !3
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %3, align 4, !tbaa !3
  br label %48, !llvm.loop !20

57:                                               ; preds = %48
  %58 = load i32, ptr @unacceptable, align 4, !tbaa !3
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, ptr @unacceptable, align 4, !tbaa !3
  store i32 0, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %76

61:                                               ; preds = %57
  %62 = load i32, ptr @numi, align 4, !tbaa !3
  %63 = add nsw i32 %62, 12
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [17 x i32], ptr @r, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !3
  %68 = load i32, ptr @corr_result, align 4, !tbaa !3
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 0, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %76

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %4, align 4, !tbaa !3
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %4, align 4, !tbaa !3
  br label %30, !llvm.loop !21

75:                                               ; preds = %30
  store i32 1, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %76

76:                                               ; preds = %75, %70, %60, %28, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5
  %77 = load i32, ptr %2, align 4
  ret i32 %77
}

; Function Attrs: inlinehint nounwind
define internal void @simulate_one_instruction(i32 noundef signext %0) #3 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #5
  %6 = load i32, ptr %2, align 4, !tbaa !3
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %7
  %9 = getelementptr inbounds nuw %struct.anon.0, ptr %8, i32 0, i32 1
  %10 = getelementptr inbounds [3 x i32], ptr %9, i64 0, i64 0
  %11 = load i32, ptr %10, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [17 x i32], ptr @r, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !3
  store i32 %14, ptr %3, align 4, !tbaa !3
  %15 = load i32, ptr %2, align 4, !tbaa !3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %16
  %18 = getelementptr inbounds nuw %struct.anon.0, ptr %17, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i32], ptr %18, i64 0, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [17 x i32], ptr @r, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !3
  store i32 %23, ptr %4, align 4, !tbaa !3
  %24 = load i32, ptr %2, align 4, !tbaa !3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %25
  %27 = getelementptr inbounds nuw %struct.anon.0, ptr %26, i32 0, i32 1
  %28 = getelementptr inbounds [3 x i32], ptr %27, i64 0, i64 2
  %29 = load i32, ptr %28, align 4, !tbaa !3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [17 x i32], ptr @r, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !3
  store i32 %32, ptr %5, align 4, !tbaa !3
  %33 = load i32, ptr %2, align 4, !tbaa !3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %34
  %36 = getelementptr inbounds nuw %struct.anon.0, ptr %35, i32 0, i32 0
  %37 = load i32, ptr %36, align 4, !tbaa !7
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %38
  %40 = getelementptr inbounds nuw %struct.anon, ptr %39, i32 0, i32 0
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = load i32, ptr %3, align 4, !tbaa !3
  %43 = load i32, ptr %4, align 4, !tbaa !3
  %44 = load i32, ptr %5, align 4, !tbaa !3
  %45 = call signext i32 %41(i32 noundef signext %42, i32 noundef signext %43, i32 noundef signext %44)
  %46 = load i32, ptr %2, align 4, !tbaa !3
  %47 = add nsw i32 %46, 12
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [17 x i32], ptr @r, i64 0, i64 %48
  store i32 %45, ptr %49, align 4, !tbaa !3
  %50 = load i32, ptr %2, align 4, !tbaa !3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [5 x i32], ptr @counter, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !3
  %54 = add i32 %53, 1
  %55 = load i32, ptr %2, align 4, !tbaa !3
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [5 x i32], ptr @counter, i64 0, i64 %56
  store i32 %54, ptr %57, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5
  ret void
}

; Function Attrs: nounwind
define dso_local void @fix_operands(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #5
  %7 = load i32, ptr %2, align 4, !tbaa !3
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %8
  %10 = getelementptr inbounds nuw %struct.anon.0, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 4, !tbaa !7
  store i32 %11, ptr %5, align 4, !tbaa !3
  %12 = load i32, ptr %2, align 4, !tbaa !3
  %13 = load i32, ptr @numi, align 4, !tbaa !3
  %14 = sub nsw i32 %13, 1
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %130

16:                                               ; preds = %1
  %17 = load i32, ptr @numi, align 4, !tbaa !3
  %18 = add nsw i32 %17, 12
  %19 = sub nsw i32 %18, 2
  store i32 %19, ptr %3, align 4, !tbaa !3
  %20 = load i32, ptr %2, align 4, !tbaa !3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %21
  %23 = getelementptr inbounds nuw %struct.anon.0, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds [3 x i32], ptr %23, i64 0, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !3
  %26 = load i32, ptr %3, align 4, !tbaa !3
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %16
  %29 = load i32, ptr %2, align 4, !tbaa !3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %30
  %32 = getelementptr inbounds nuw %struct.anon.0, ptr %31, i32 0, i32 1
  %33 = getelementptr inbounds [3 x i32], ptr %32, i64 0, i64 2
  %34 = load i32, ptr %33, align 4, !tbaa !3
  %35 = load i32, ptr %3, align 4, !tbaa !3
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load i32, ptr %3, align 4, !tbaa !3
  %39 = load i32, ptr %2, align 4, !tbaa !3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %40
  %42 = getelementptr inbounds nuw %struct.anon.0, ptr %41, i32 0, i32 1
  %43 = getelementptr inbounds [3 x i32], ptr %42, i64 0, i64 0
  store i32 %38, ptr %43, align 4, !tbaa !3
  br label %44

44:                                               ; preds = %37, %28, %16
  %45 = load i32, ptr %3, align 4, !tbaa !3
  %46 = sub nsw i32 %45, 1
  store i32 %46, ptr %4, align 4, !tbaa !3
  %47 = load i32, ptr %4, align 4, !tbaa !3
  %48 = icmp sge i32 %47, 12
  br i1 %48, label %49, label %129

49:                                               ; preds = %44
  %50 = load i32, ptr %2, align 4, !tbaa !3
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %52
  %54 = getelementptr inbounds nuw %struct.anon.0, ptr %53, i32 0, i32 1
  %55 = getelementptr inbounds [3 x i32], ptr %54, i64 0, i64 0
  %56 = load i32, ptr %55, align 4, !tbaa !3
  %57 = load i32, ptr %4, align 4, !tbaa !3
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %129

59:                                               ; preds = %49
  %60 = load i32, ptr %2, align 4, !tbaa !3
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %62
  %64 = getelementptr inbounds nuw %struct.anon.0, ptr %63, i32 0, i32 1
  %65 = getelementptr inbounds [3 x i32], ptr %64, i64 0, i64 1
  %66 = load i32, ptr %65, align 4, !tbaa !3
  %67 = load i32, ptr %4, align 4, !tbaa !3
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %129

69:                                               ; preds = %59
  %70 = load i32, ptr %2, align 4, !tbaa !3
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %72
  %74 = getelementptr inbounds nuw %struct.anon.0, ptr %73, i32 0, i32 1
  %75 = getelementptr inbounds [3 x i32], ptr %74, i64 0, i64 2
  %76 = load i32, ptr %75, align 4, !tbaa !3
  %77 = load i32, ptr %4, align 4, !tbaa !3
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %129

79:                                               ; preds = %69
  %80 = load i32, ptr %2, align 4, !tbaa !3
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %81
  %83 = getelementptr inbounds nuw %struct.anon.0, ptr %82, i32 0, i32 1
  %84 = getelementptr inbounds [3 x i32], ptr %83, i64 0, i64 1
  %85 = load i32, ptr %84, align 4, !tbaa !3
  %86 = load i32, ptr %4, align 4, !tbaa !3
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %129

88:                                               ; preds = %79
  %89 = load i32, ptr %2, align 4, !tbaa !3
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %90
  %92 = getelementptr inbounds nuw %struct.anon.0, ptr %91, i32 0, i32 1
  %93 = getelementptr inbounds [3 x i32], ptr %92, i64 0, i64 2
  %94 = load i32, ptr %93, align 4, !tbaa !3
  %95 = load i32, ptr %4, align 4, !tbaa !3
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %129

97:                                               ; preds = %88
  %98 = load i32, ptr %2, align 4, !tbaa !3
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %99
  %101 = getelementptr inbounds nuw %struct.anon.0, ptr %100, i32 0, i32 1
  %102 = getelementptr inbounds [3 x i32], ptr %101, i64 0, i64 0
  %103 = load i32, ptr %102, align 4, !tbaa !3
  %104 = load i32, ptr %4, align 4, !tbaa !3
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %97
  %107 = load i32, ptr %4, align 4, !tbaa !3
  %108 = load i32, ptr %2, align 4, !tbaa !3
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %109
  %111 = getelementptr inbounds nuw %struct.anon.0, ptr %110, i32 0, i32 1
  %112 = getelementptr inbounds [3 x i32], ptr %111, i64 0, i64 0
  store i32 %107, ptr %112, align 4, !tbaa !3
  br label %128

113:                                              ; preds = %97
  %114 = load i32, ptr %5, align 4, !tbaa !3
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %115
  %117 = getelementptr inbounds nuw %struct.anon, ptr %116, i32 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !13
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load i32, ptr %4, align 4, !tbaa !3
  %122 = load i32, ptr %2, align 4, !tbaa !3
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %123
  %125 = getelementptr inbounds nuw %struct.anon.0, ptr %124, i32 0, i32 1
  %126 = getelementptr inbounds [3 x i32], ptr %125, i64 0, i64 1
  store i32 %121, ptr %126, align 4, !tbaa !3
  br label %127

127:                                              ; preds = %120, %113
  br label %128

128:                                              ; preds = %127, %106
  br label %129

129:                                              ; preds = %128, %88, %79, %69, %59, %49, %44
  br label %130

130:                                              ; preds = %129, %1
  %131 = load i32, ptr %5, align 4, !tbaa !3
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %132
  %134 = getelementptr inbounds nuw %struct.anon, ptr %133, i32 0, i32 2
  %135 = load i32, ptr %134, align 4, !tbaa !23
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %164

137:                                              ; preds = %130
  %138 = load i32, ptr %2, align 4, !tbaa !3
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %139
  %141 = getelementptr inbounds nuw %struct.anon.0, ptr %140, i32 0, i32 1
  %142 = getelementptr inbounds [3 x i32], ptr %141, i64 0, i64 0
  %143 = load i32, ptr %142, align 4, !tbaa !3
  %144 = load i32, ptr %2, align 4, !tbaa !3
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %145
  %147 = getelementptr inbounds nuw %struct.anon.0, ptr %146, i32 0, i32 1
  %148 = getelementptr inbounds [3 x i32], ptr %147, i64 0, i64 1
  %149 = load i32, ptr %148, align 4, !tbaa !3
  %150 = icmp slt i32 %143, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %137
  %152 = load i32, ptr %2, align 4, !tbaa !3
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %153
  %155 = getelementptr inbounds nuw %struct.anon.0, ptr %154, i32 0, i32 1
  %156 = getelementptr inbounds [3 x i32], ptr %155, i64 0, i64 1
  %157 = load i32, ptr %156, align 4, !tbaa !3
  %158 = load i32, ptr %2, align 4, !tbaa !3
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %159
  %161 = getelementptr inbounds nuw %struct.anon.0, ptr %160, i32 0, i32 1
  %162 = getelementptr inbounds [3 x i32], ptr %161, i64 0, i64 0
  store i32 %157, ptr %162, align 4, !tbaa !3
  br label %163

163:                                              ; preds = %151, %137
  store i32 1, ptr %6, align 4
  br label %209

164:                                              ; preds = %130
  %165 = load i32, ptr %2, align 4, !tbaa !3
  %166 = load i32, ptr @numi, align 4, !tbaa !3
  %167 = sub nsw i32 %166, 1
  %168 = icmp ne i32 %165, %167
  br i1 %168, label %169, label %208

169:                                              ; preds = %164
  %170 = load i32, ptr %2, align 4, !tbaa !3
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %171
  %173 = getelementptr inbounds nuw %struct.anon.0, ptr %172, i32 0, i32 1
  %174 = getelementptr inbounds [3 x i32], ptr %173, i64 0, i64 0
  %175 = load i32, ptr %174, align 4, !tbaa !3
  %176 = icmp slt i32 %175, 11
  br i1 %176, label %177, label %207

177:                                              ; preds = %169
  %178 = load i32, ptr %2, align 4, !tbaa !3
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %179
  %181 = getelementptr inbounds nuw %struct.anon.0, ptr %180, i32 0, i32 1
  %182 = getelementptr inbounds [3 x i32], ptr %181, i64 0, i64 1
  %183 = load i32, ptr %182, align 4, !tbaa !3
  %184 = icmp slt i32 %183, 11
  br i1 %184, label %185, label %207

185:                                              ; preds = %177
  %186 = load i32, ptr %2, align 4, !tbaa !3
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %187
  %189 = getelementptr inbounds nuw %struct.anon.0, ptr %188, i32 0, i32 1
  %190 = getelementptr inbounds [3 x i32], ptr %189, i64 0, i64 2
  %191 = load i32, ptr %190, align 4, !tbaa !3
  %192 = icmp slt i32 %191, 11
  br i1 %192, label %193, label %207

193:                                              ; preds = %185
  %194 = load i32, ptr %5, align 4, !tbaa !3
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %195
  %197 = getelementptr inbounds nuw %struct.anon, ptr %196, i32 0, i32 2
  %198 = load i32, ptr %197, align 4, !tbaa !23
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  call void @abort() #6
  unreachable

201:                                              ; preds = %193
  %202 = load i32, ptr %2, align 4, !tbaa !3
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %203
  %205 = getelementptr inbounds nuw %struct.anon.0, ptr %204, i32 0, i32 1
  %206 = getelementptr inbounds [3 x i32], ptr %205, i64 0, i64 0
  store i32 11, ptr %206, align 4, !tbaa !3
  br label %207

207:                                              ; preds = %201, %185, %177, %169
  br label %208

208:                                              ; preds = %207, %164
  store i32 0, ptr %6, align 4
  br label %209

209:                                              ; preds = %208, %163
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5
  %210 = load i32, ptr %6, align 4
  switch i32 %210, label %212 [
    i32 0, label %211
    i32 1, label %211
  ]

211:                                              ; preds = %209, %209
  ret void

212:                                              ; preds = %209
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind
define dso_local signext i32 @search() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5
  %6 = load i32, ptr @trialx, align 4, !tbaa !3
  store i32 %6, ptr getelementptr inbounds ([17 x i32], ptr @r, i64 0, i64 11), align 4, !tbaa !3
  %7 = load i32, ptr @correct_result, align 4, !tbaa !3
  store i32 %7, ptr @corr_result, align 4, !tbaa !3
  store i32 0, ptr %4, align 4, !tbaa !3
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %8

8:                                                ; preds = %25, %0
  %9 = load i32, ptr %3, align 4, !tbaa !3
  %10 = call signext i32 @check(i32 noundef signext %9)
  store i32 %10, ptr %2, align 4, !tbaa !3
  %11 = load i32, ptr %2, align 4, !tbaa !3
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i32, ptr %4, align 4, !tbaa !3
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %4, align 4, !tbaa !3
  %16 = load i32, ptr @numi, align 4, !tbaa !3
  %17 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.39, i32 noundef signext %16)
  call void @print_pgm(i32 noundef signext 3)
  %18 = load i32, ptr %4, align 4, !tbaa !3
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, ptr %4, align 4, !tbaa !3
  store i32 %21, ptr %1, align 4
  store i32 1, ptr %5, align 4
  br label %30

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %8
  %24 = call signext i32 @increment()
  store i32 %24, ptr %3, align 4, !tbaa !3
  br label %25

25:                                               ; preds = %23
  %26 = load i32, ptr %3, align 4, !tbaa !3
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %8, label %28, !llvm.loop !24

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 4, !tbaa !3
  store i32 %29, ptr %1, align 4
  store i32 1, ptr %5, align 4
  br label %30

30:                                               ; preds = %28, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #5
  %31 = load i32, ptr %1, align 4
  ret i32 %31
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @increment() #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #5
  %8 = load i32, ptr @numi, align 4, !tbaa !3
  %9 = sub nsw i32 %8, 1
  store i32 %9, ptr %2, align 4, !tbaa !3
  br label %10

10:                                               ; preds = %179, %0
  %11 = load i32, ptr %2, align 4, !tbaa !3
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %182

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 4, !tbaa !3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %15
  %17 = getelementptr inbounds nuw %struct.anon.0, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 4, !tbaa !7
  store i32 %18, ptr %4, align 4, !tbaa !3
  %19 = load i32, ptr %4, align 4, !tbaa !3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %20
  %22 = getelementptr inbounds nuw %struct.anon, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !13
  store i32 %23, ptr %6, align 4, !tbaa !3
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %24

24:                                               ; preds = %94, %13
  %25 = load i32, ptr %3, align 4, !tbaa !3
  %26 = load i32, ptr %6, align 4, !tbaa !3
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %97

28:                                               ; preds = %24
  %29 = load i32, ptr %2, align 4, !tbaa !3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %30
  %32 = getelementptr inbounds nuw %struct.anon.0, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %3, align 4, !tbaa !3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x i32], ptr %32, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !3
  store i32 %36, ptr %5, align 4, !tbaa !3
  %37 = load i32, ptr %5, align 4, !tbaa !3
  %38 = icmp slt i32 %37, 6
  br i1 %38, label %39, label %49

39:                                               ; preds = %28
  %40 = load i32, ptr %2, align 4, !tbaa !3
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %41
  %43 = getelementptr inbounds nuw %struct.anon.0, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %3, align 4, !tbaa !3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x i32], ptr %43, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !3
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %46, align 4, !tbaa !3
  br label %97

49:                                               ; preds = %28
  %50 = load i32, ptr %5, align 4, !tbaa !3
  %51 = icmp eq i32 %50, 6
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i32, ptr %2, align 4, !tbaa !3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %54
  %56 = getelementptr inbounds nuw %struct.anon.0, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %3, align 4, !tbaa !3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x i32], ptr %56, i64 0, i64 %58
  store i32 11, ptr %59, align 4, !tbaa !3
  br label %97

60:                                               ; preds = %49
  %61 = load i32, ptr %5, align 4, !tbaa !3
  %62 = load i32, ptr %2, align 4, !tbaa !3
  %63 = add nsw i32 %62, 12
  %64 = sub nsw i32 %63, 1
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load i32, ptr %2, align 4, !tbaa !3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %68
  %70 = getelementptr inbounds nuw %struct.anon.0, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %3, align 4, !tbaa !3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x i32], ptr %70, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !3
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %73, align 4, !tbaa !3
  br label %97

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %4, align 4, !tbaa !3
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %80
  %82 = getelementptr inbounds nuw %struct.anon, ptr %81, i32 0, i32 3
  %83 = load i32, ptr %3, align 4, !tbaa !3
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x i32], ptr %82, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !3
  %87 = load i32, ptr %2, align 4, !tbaa !3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %88
  %90 = getelementptr inbounds nuw %struct.anon.0, ptr %89, i32 0, i32 1
  %91 = load i32, ptr %3, align 4, !tbaa !3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [3 x i32], ptr %90, i64 0, i64 %92
  store i32 %86, ptr %93, align 4, !tbaa !3
  br label %94

94:                                               ; preds = %78
  %95 = load i32, ptr %3, align 4, !tbaa !3
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %3, align 4, !tbaa !3
  br label %24, !llvm.loop !25

97:                                               ; preds = %66, %52, %39, %24
  %98 = load i32, ptr %3, align 4, !tbaa !3
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, ptr %2, align 4, !tbaa !3
  store i32 %101, ptr %1, align 4
  store i32 1, ptr %7, align 4
  br label %183

102:                                              ; preds = %97
  %103 = load i32, ptr %3, align 4, !tbaa !3
  %104 = load i32, ptr %6, align 4, !tbaa !3
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, ptr %2, align 4, !tbaa !3
  call void @fix_operands(i32 noundef signext %107)
  %108 = load i32, ptr %2, align 4, !tbaa !3
  store i32 %108, ptr %1, align 4
  store i32 1, ptr %7, align 4
  br label %183

109:                                              ; preds = %102
  %110 = load i32, ptr %4, align 4, !tbaa !3
  %111 = icmp slt i32 %110, 12
  br i1 %111, label %112, label %155

112:                                              ; preds = %109
  %113 = load i32, ptr %4, align 4, !tbaa !3
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr %4, align 4, !tbaa !3
  %115 = load i32, ptr %4, align 4, !tbaa !3
  %116 = load i32, ptr %2, align 4, !tbaa !3
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %117
  %119 = getelementptr inbounds nuw %struct.anon.0, ptr %118, i32 0, i32 0
  store i32 %115, ptr %119, align 4, !tbaa !7
  %120 = load i32, ptr %4, align 4, !tbaa !3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %121
  %123 = getelementptr inbounds nuw %struct.anon, ptr %122, i32 0, i32 3
  %124 = getelementptr inbounds [3 x i32], ptr %123, i64 0, i64 0
  %125 = load i32, ptr %124, align 8, !tbaa !3
  %126 = load i32, ptr %2, align 4, !tbaa !3
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %127
  %129 = getelementptr inbounds nuw %struct.anon.0, ptr %128, i32 0, i32 1
  %130 = getelementptr inbounds [3 x i32], ptr %129, i64 0, i64 0
  store i32 %125, ptr %130, align 4, !tbaa !3
  %131 = load i32, ptr %4, align 4, !tbaa !3
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %132
  %134 = getelementptr inbounds nuw %struct.anon, ptr %133, i32 0, i32 3
  %135 = getelementptr inbounds [3 x i32], ptr %134, i64 0, i64 1
  %136 = load i32, ptr %135, align 4, !tbaa !3
  %137 = load i32, ptr %2, align 4, !tbaa !3
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %138
  %140 = getelementptr inbounds nuw %struct.anon.0, ptr %139, i32 0, i32 1
  %141 = getelementptr inbounds [3 x i32], ptr %140, i64 0, i64 1
  store i32 %136, ptr %141, align 4, !tbaa !3
  %142 = load i32, ptr %4, align 4, !tbaa !3
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [13 x %struct.anon], ptr @isa, i64 0, i64 %143
  %145 = getelementptr inbounds nuw %struct.anon, ptr %144, i32 0, i32 3
  %146 = getelementptr inbounds [3 x i32], ptr %145, i64 0, i64 2
  %147 = load i32, ptr %146, align 8, !tbaa !3
  %148 = load i32, ptr %2, align 4, !tbaa !3
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %149
  %151 = getelementptr inbounds nuw %struct.anon.0, ptr %150, i32 0, i32 1
  %152 = getelementptr inbounds [3 x i32], ptr %151, i64 0, i64 2
  store i32 %147, ptr %152, align 4, !tbaa !3
  %153 = load i32, ptr %2, align 4, !tbaa !3
  call void @fix_operands(i32 noundef signext %153)
  %154 = load i32, ptr %2, align 4, !tbaa !3
  store i32 %154, ptr %1, align 4
  store i32 1, ptr %7, align 4
  br label %183

155:                                              ; preds = %109
  %156 = load i32, ptr %2, align 4, !tbaa !3
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %157
  %159 = getelementptr inbounds nuw %struct.anon.0, ptr %158, i32 0, i32 0
  store i32 0, ptr %159, align 4, !tbaa !7
  %160 = load i32, ptr getelementptr inbounds nuw (%struct.anon, ptr @isa, i32 0, i32 3), align 8, !tbaa !3
  %161 = load i32, ptr %2, align 4, !tbaa !3
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %162
  %164 = getelementptr inbounds nuw %struct.anon.0, ptr %163, i32 0, i32 1
  %165 = getelementptr inbounds [3 x i32], ptr %164, i64 0, i64 0
  store i32 %160, ptr %165, align 4, !tbaa !3
  %166 = load i32, ptr getelementptr inbounds ([3 x i32], ptr getelementptr inbounds nuw (%struct.anon, ptr @isa, i32 0, i32 3), i64 0, i64 1), align 4, !tbaa !3
  %167 = load i32, ptr %2, align 4, !tbaa !3
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %168
  %170 = getelementptr inbounds nuw %struct.anon.0, ptr %169, i32 0, i32 1
  %171 = getelementptr inbounds [3 x i32], ptr %170, i64 0, i64 1
  store i32 %166, ptr %171, align 4, !tbaa !3
  %172 = load i32, ptr getelementptr inbounds ([3 x i32], ptr getelementptr inbounds nuw (%struct.anon, ptr @isa, i32 0, i32 3), i64 0, i64 2), align 8, !tbaa !3
  %173 = load i32, ptr %2, align 4, !tbaa !3
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %174
  %176 = getelementptr inbounds nuw %struct.anon.0, ptr %175, i32 0, i32 1
  %177 = getelementptr inbounds [3 x i32], ptr %176, i64 0, i64 2
  store i32 %172, ptr %177, align 4, !tbaa !3
  %178 = load i32, ptr %2, align 4, !tbaa !3
  call void @fix_operands(i32 noundef signext %178)
  br label %179

179:                                              ; preds = %155
  %180 = load i32, ptr %2, align 4, !tbaa !3
  %181 = add nsw i32 %180, -1
  store i32 %181, ptr %2, align 4, !tbaa !3
  br label %10, !llvm.loop !26

182:                                              ; preds = %10
  store i32 -1, ptr %1, align 4
  store i32 1, ptr %7, align 4
  br label %183

183:                                              ; preds = %182, %112, %106, %100
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #5
  %184 = load i32, ptr %1, align 4
  ret i32 %184
}

; Function Attrs: nounwind
define dso_local signext i32 @main(i32 noundef signext %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5
  store i32 0, ptr %7, align 4, !tbaa !3
  store i32 1, ptr @numi, align 4, !tbaa !3
  br label %9

9:                                                ; preds = %94, %2
  %10 = load i32, ptr @numi, align 4, !tbaa !3
  %11 = icmp sle i32 %10, 5
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %7, align 4, !tbaa !3
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i1 [ false, %9 ], [ %14, %12 ]
  br i1 %16, label %17, label %97

17:                                               ; preds = %15
  %18 = load i32, ptr @numi, align 4, !tbaa !3
  %19 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.40, i32 noundef signext %18)
  store i32 0, ptr %6, align 4, !tbaa !3
  br label %20

20:                                               ; preds = %32, %17
  %21 = load i32, ptr %6, align 4, !tbaa !3
  %22 = icmp slt i32 %21, 17
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, ptr %6, align 4, !tbaa !3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [17 x i32], ptr @trialx, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !3
  %28 = call signext i32 @userfun(i32 noundef signext %27)
  %29 = load i32, ptr %6, align 4, !tbaa !3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [17 x i32], ptr @correct_result, i64 0, i64 %30
  store i32 %28, ptr %31, align 4, !tbaa !3
  br label %32

32:                                               ; preds = %23
  %33 = load i32, ptr %6, align 4, !tbaa !3
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %6, align 4, !tbaa !3
  br label %20, !llvm.loop !30

35:                                               ; preds = %20
  store i32 0, ptr %6, align 4, !tbaa !3
  br label %36

36:                                               ; preds = %64, %35
  %37 = load i32, ptr %6, align 4, !tbaa !3
  %38 = load i32, ptr @numi, align 4, !tbaa !3
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = load i32, ptr %6, align 4, !tbaa !3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %42
  %44 = getelementptr inbounds nuw %struct.anon.0, ptr %43, i32 0, i32 0
  store i32 0, ptr %44, align 4, !tbaa !7
  %45 = load i32, ptr getelementptr inbounds nuw (%struct.anon, ptr @isa, i32 0, i32 3), align 8, !tbaa !3
  %46 = load i32, ptr %6, align 4, !tbaa !3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %47
  %49 = getelementptr inbounds nuw %struct.anon.0, ptr %48, i32 0, i32 1
  %50 = getelementptr inbounds [3 x i32], ptr %49, i64 0, i64 0
  store i32 %45, ptr %50, align 4, !tbaa !3
  %51 = load i32, ptr getelementptr inbounds ([3 x i32], ptr getelementptr inbounds nuw (%struct.anon, ptr @isa, i32 0, i32 3), i64 0, i64 1), align 4, !tbaa !3
  %52 = load i32, ptr %6, align 4, !tbaa !3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %53
  %55 = getelementptr inbounds nuw %struct.anon.0, ptr %54, i32 0, i32 1
  %56 = getelementptr inbounds [3 x i32], ptr %55, i64 0, i64 1
  store i32 %51, ptr %56, align 4, !tbaa !3
  %57 = load i32, ptr getelementptr inbounds ([3 x i32], ptr getelementptr inbounds nuw (%struct.anon, ptr @isa, i32 0, i32 3), i64 0, i64 2), align 8, !tbaa !3
  %58 = load i32, ptr %6, align 4, !tbaa !3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [5 x %struct.anon.0], ptr @pgm, i64 0, i64 %59
  %61 = getelementptr inbounds nuw %struct.anon.0, ptr %60, i32 0, i32 1
  %62 = getelementptr inbounds [3 x i32], ptr %61, i64 0, i64 2
  store i32 %57, ptr %62, align 4, !tbaa !3
  %63 = load i32, ptr %6, align 4, !tbaa !3
  call void @fix_operands(i32 noundef signext %63)
  br label %64

64:                                               ; preds = %40
  %65 = load i32, ptr %6, align 4, !tbaa !3
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %6, align 4, !tbaa !3
  br label %36, !llvm.loop !31

67:                                               ; preds = %36
  %68 = call signext i32 @search()
  store i32 %68, ptr %7, align 4, !tbaa !3
  %69 = load i32, ptr %7, align 4, !tbaa !3
  %70 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.41, i32 noundef signext %69)
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5
  store i32 0, ptr %8, align 4, !tbaa !3
  %71 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.42)
  store i32 0, ptr %6, align 4, !tbaa !3
  br label %72

72:                                               ; preds = %88, %67
  %73 = load i32, ptr %6, align 4, !tbaa !3
  %74 = load i32, ptr @numi, align 4, !tbaa !3
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load i32, ptr %6, align 4, !tbaa !3
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [5 x i32], ptr @counter, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !3
  %81 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.43, i32 noundef signext %80)
  %82 = load i32, ptr %8, align 4, !tbaa !3
  %83 = load i32, ptr %6, align 4, !tbaa !3
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [5 x i32], ptr @counter, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !3
  %87 = add i32 %82, %86
  store i32 %87, ptr %8, align 4, !tbaa !3
  br label %88

88:                                               ; preds = %76
  %89 = load i32, ptr %6, align 4, !tbaa !3
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %6, align 4, !tbaa !3
  br label %72, !llvm.loop !32

91:                                               ; preds = %72
  %92 = load i32, ptr %8, align 4, !tbaa !3
  %93 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.44, i32 noundef signext %92)
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5
  br label %94

94:                                               ; preds = %91
  %95 = load i32, ptr @numi, align 4, !tbaa !3
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr @numi, align 4, !tbaa !3
  br label %9, !llvm.loop !33

97:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #5
  ret i32 0
}

declare signext i32 @userfun(i32 noundef signext) #2

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"", !4, i64 0, !5, i64 4}
!9 = !{!10, !12, i64 40}
!10 = !{!"", !11, i64 0, !4, i64 8, !4, i64 12, !5, i64 16, !12, i64 32, !12, i64 40, !12, i64 48}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!10, !4, i64 8}
!14 = !{!10, !12, i64 48}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!10, !12, i64 32}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = !{!10, !11, i64 0}
!23 = !{!10, !4, i64 12}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = !{!28, !28, i64 0}
!28 = !{!"p2 omnipotent char", !29, i64 0}
!29 = !{!"any p2 pointer", !11, i64 0}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
