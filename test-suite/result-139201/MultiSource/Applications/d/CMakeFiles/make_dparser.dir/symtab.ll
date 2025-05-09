; ModuleID = './MultiSource/Applications/d/CMakeFiles/make_dparser.dir/symtab.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/d/symtab.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.D_Scope = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.D_Sym = type { ptr, i32, i32, ptr, ptr, i32 }
%struct.D_SymHash = type { i32, i32, %struct.anon }
%struct.anon = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.0 = type { i32, i32, ptr, [3 x ptr] }

@.str = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SCOPE %X: \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"  owned: %d, kind: %d, \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"  LL\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"  HASH\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: nounwind
define dso_local ptr @new_D_Scope(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #7
  %4 = call noalias ptr @malloc(i64 noundef 72) #8
  store ptr %4, ptr %3, align 8, !tbaa !3
  %5 = load ptr, ptr %3, align 8, !tbaa !3
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 72, i1 false)
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !tbaa !3
  %10 = load i8, ptr %9, align 8
  %11 = lshr i8 %10, 1
  %12 = and i8 %11, 3
  %13 = zext i8 %12 to i32
  %14 = load ptr, ptr %3, align 8, !tbaa !3
  %15 = trunc i32 %13 to i8
  %16 = load i8, ptr %14, align 8
  %17 = and i8 %15, 3
  %18 = shl i8 %17, 1
  %19 = and i8 %16, -7
  %20 = or i8 %19, %18
  store i8 %20, ptr %14, align 8
  %21 = zext i8 %17 to i32
  %22 = load ptr, ptr %2, align 8, !tbaa !3
  %23 = load ptr, ptr %3, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.D_Scope, ptr %23, i32 0, i32 4
  store ptr %22, ptr %24, align 8, !tbaa !8
  %25 = load ptr, ptr %2, align 8, !tbaa !3
  %26 = load ptr, ptr %3, align 8, !tbaa !3
  %27 = getelementptr inbounds nuw %struct.D_Scope, ptr %26, i32 0, i32 5
  store ptr %25, ptr %27, align 8, !tbaa !13
  %28 = load ptr, ptr %2, align 8, !tbaa !3
  %29 = load ptr, ptr %3, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.D_Scope, ptr %29, i32 0, i32 6
  store ptr %28, ptr %30, align 8, !tbaa !14
  %31 = load ptr, ptr %2, align 8, !tbaa !3
  %32 = getelementptr inbounds nuw %struct.D_Scope, ptr %31, i32 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !15
  %34 = load ptr, ptr %3, align 8, !tbaa !3
  %35 = getelementptr inbounds nuw %struct.D_Scope, ptr %34, i32 0, i32 8
  store ptr %33, ptr %35, align 8, !tbaa !16
  %36 = load ptr, ptr %3, align 8, !tbaa !3
  %37 = load ptr, ptr %2, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw %struct.D_Scope, ptr %37, i32 0, i32 7
  store ptr %36, ptr %38, align 8, !tbaa !15
  br label %43

39:                                               ; preds = %1
  %40 = call ptr @new_D_SymHash()
  %41 = load ptr, ptr %3, align 8, !tbaa !3
  %42 = getelementptr inbounds nuw %struct.D_Scope, ptr %41, i32 0, i32 2
  store ptr %40, ptr %42, align 8, !tbaa !17
  br label %43

43:                                               ; preds = %39, %8
  %44 = load ptr, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #7
  ret ptr %44
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local ptr @enter_D_Scope(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  %7 = call noalias ptr @malloc(i64 noundef 72) #8
  store ptr %7, ptr %5, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  %8 = load ptr, ptr %4, align 8, !tbaa !3
  %9 = getelementptr inbounds nuw %struct.D_Scope, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  store ptr %10, ptr %6, align 8, !tbaa !3
  %11 = load ptr, ptr %5, align 8, !tbaa !3
  call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 72, i1 false)
  %12 = load ptr, ptr %6, align 8, !tbaa !3
  %13 = load ptr, ptr %5, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.D_Scope, ptr %13, i32 0, i32 5
  store ptr %12, ptr %14, align 8, !tbaa !13
  %15 = load ptr, ptr %4, align 8, !tbaa !3
  %16 = load i8, ptr %15, align 8
  %17 = lshr i8 %16, 1
  %18 = and i8 %17, 3
  %19 = zext i8 %18 to i32
  %20 = load ptr, ptr %5, align 8, !tbaa !3
  %21 = trunc i32 %19 to i8
  %22 = load i8, ptr %20, align 8
  %23 = and i8 %21, 3
  %24 = shl i8 %23, 1
  %25 = and i8 %22, -7
  %26 = or i8 %25, %24
  store i8 %26, ptr %20, align 8
  %27 = zext i8 %23 to i32
  %28 = load ptr, ptr %4, align 8, !tbaa !3
  %29 = load ptr, ptr %5, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.D_Scope, ptr %29, i32 0, i32 4
  store ptr %28, ptr %30, align 8, !tbaa !8
  %31 = load ptr, ptr %3, align 8, !tbaa !3
  %32 = load ptr, ptr %5, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.D_Scope, ptr %32, i32 0, i32 6
  store ptr %31, ptr %33, align 8, !tbaa !14
  %34 = load ptr, ptr %3, align 8, !tbaa !3
  %35 = getelementptr inbounds nuw %struct.D_Scope, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !15
  %37 = load ptr, ptr %5, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw %struct.D_Scope, ptr %37, i32 0, i32 8
  store ptr %36, ptr %38, align 8, !tbaa !16
  %39 = load ptr, ptr %5, align 8, !tbaa !3
  %40 = load ptr, ptr %3, align 8, !tbaa !3
  %41 = getelementptr inbounds nuw %struct.D_Scope, ptr %40, i32 0, i32 7
  store ptr %39, ptr %41, align 8, !tbaa !15
  %42 = load ptr, ptr %5, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  ret ptr %42
}

; Function Attrs: nounwind
define dso_local void @free_D_Scope(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i32 %1, ptr %4, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  br label %8

8:                                                ; preds = %22, %2
  %9 = load ptr, ptr %3, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.D_Scope, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.D_Scope, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = getelementptr inbounds nuw %struct.D_Scope, ptr %16, i32 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !16
  store ptr %18, ptr %5, align 8, !tbaa !3
  %19 = load ptr, ptr %3, align 8, !tbaa !3
  %20 = getelementptr inbounds nuw %struct.D_Scope, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  call void @free_D_Scope(ptr noundef %21, i32 noundef signext 0)
  br label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr %5, align 8, !tbaa !3
  %24 = load ptr, ptr %3, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.D_Scope, ptr %24, i32 0, i32 7
  store ptr %23, ptr %25, align 8, !tbaa !15
  br label %8, !llvm.loop !19

26:                                               ; preds = %8
  %27 = load ptr, ptr %3, align 8, !tbaa !3
  %28 = load i8, ptr %27, align 8
  %29 = and i8 %28, 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, ptr %4, align 4, !tbaa !18
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store i32 1, ptr %7, align 4
  br label %86

36:                                               ; preds = %32, %26
  %37 = load ptr, ptr %3, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw %struct.D_Scope, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !17
  %40 = icmp ne ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load ptr, ptr %3, align 8, !tbaa !3
  %43 = getelementptr inbounds nuw %struct.D_Scope, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !17
  call void @free_D_SymHash(ptr noundef %44)
  br label %65

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %60, %45
  %47 = load ptr, ptr %3, align 8, !tbaa !3
  %48 = getelementptr inbounds nuw %struct.D_Scope, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !21
  %50 = icmp ne ptr %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load ptr, ptr %3, align 8, !tbaa !3
  %53 = getelementptr inbounds nuw %struct.D_Scope, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !21
  %55 = getelementptr inbounds nuw %struct.D_Sym, ptr %54, i32 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !22
  store ptr %56, ptr %6, align 8, !tbaa !25
  %57 = load ptr, ptr %3, align 8, !tbaa !3
  %58 = getelementptr inbounds nuw %struct.D_Scope, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !21
  call void @free_D_Sym(ptr noundef %59)
  br label %60

60:                                               ; preds = %51
  %61 = load ptr, ptr %6, align 8, !tbaa !25
  %62 = load ptr, ptr %3, align 8, !tbaa !3
  %63 = getelementptr inbounds nuw %struct.D_Scope, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 8, !tbaa !21
  br label %46, !llvm.loop !26

64:                                               ; preds = %46
  br label %65

65:                                               ; preds = %64, %41
  br label %66

66:                                               ; preds = %80, %65
  %67 = load ptr, ptr %3, align 8, !tbaa !3
  %68 = getelementptr inbounds nuw %struct.D_Scope, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !27
  %70 = icmp ne ptr %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load ptr, ptr %3, align 8, !tbaa !3
  %73 = getelementptr inbounds nuw %struct.D_Scope, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !27
  %75 = getelementptr inbounds nuw %struct.D_Sym, ptr %74, i32 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !22
  store ptr %76, ptr %6, align 8, !tbaa !25
  %77 = load ptr, ptr %3, align 8, !tbaa !3
  %78 = getelementptr inbounds nuw %struct.D_Scope, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !27
  call void @free_D_Sym(ptr noundef %79)
  br label %80

80:                                               ; preds = %71
  %81 = load ptr, ptr %6, align 8, !tbaa !25
  %82 = load ptr, ptr %3, align 8, !tbaa !3
  %83 = getelementptr inbounds nuw %struct.D_Scope, ptr %82, i32 0, i32 3
  store ptr %81, ptr %83, align 8, !tbaa !27
  br label %66, !llvm.loop !28

84:                                               ; preds = %66
  %85 = load ptr, ptr %3, align 8, !tbaa !3
  call void @free(ptr noundef %85) #7
  store i32 0, ptr %7, align 4
  br label %86

86:                                               ; preds = %84, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  %87 = load i32, ptr %7, align 4
  switch i32 %87, label %89 [
    i32 0, label %88
    i32 1, label %88
  ]

88:                                               ; preds = %86, %86
  ret void

89:                                               ; preds = %86
  unreachable
}

; Function Attrs: nounwind
define internal void @free_D_SymHash(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #7
  store i32 0, ptr %3, align 4, !tbaa !18
  br label %5

5:                                                ; preds = %52, %1
  %6 = load i32, ptr %3, align 4, !tbaa !18
  %7 = load ptr, ptr %2, align 8, !tbaa !29
  %8 = getelementptr inbounds nuw %struct.D_SymHash, ptr %7, i32 0, i32 2
  %9 = getelementptr inbounds nuw %struct.anon, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8, !tbaa !30
  %11 = icmp ult i32 %6, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %42, %12
  %14 = load ptr, ptr %2, align 8, !tbaa !29
  %15 = getelementptr inbounds nuw %struct.D_SymHash, ptr %14, i32 0, i32 2
  %16 = getelementptr inbounds nuw %struct.anon, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = load i32, ptr %3, align 4, !tbaa !18
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !25
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %51

23:                                               ; preds = %13
  %24 = load ptr, ptr %2, align 8, !tbaa !29
  %25 = getelementptr inbounds nuw %struct.D_SymHash, ptr %24, i32 0, i32 2
  %26 = getelementptr inbounds nuw %struct.anon, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = load i32, ptr %3, align 4, !tbaa !18
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !25
  %32 = getelementptr inbounds nuw %struct.D_Sym, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  store ptr %33, ptr %4, align 8, !tbaa !25
  %34 = load ptr, ptr %2, align 8, !tbaa !29
  %35 = getelementptr inbounds nuw %struct.D_SymHash, ptr %34, i32 0, i32 2
  %36 = getelementptr inbounds nuw %struct.anon, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = load i32, ptr %3, align 4, !tbaa !18
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !25
  call void @free_D_Sym(ptr noundef %41)
  br label %42

42:                                               ; preds = %23
  %43 = load ptr, ptr %4, align 8, !tbaa !25
  %44 = load ptr, ptr %2, align 8, !tbaa !29
  %45 = getelementptr inbounds nuw %struct.D_SymHash, ptr %44, i32 0, i32 2
  %46 = getelementptr inbounds nuw %struct.anon, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = load i32, ptr %3, align 4, !tbaa !18
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %47, i64 %49
  store ptr %43, ptr %50, align 8, !tbaa !25
  br label %13, !llvm.loop !36

51:                                               ; preds = %13
  br label %52

52:                                               ; preds = %51
  %53 = load i32, ptr %3, align 4, !tbaa !18
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %3, align 4, !tbaa !18
  br label %5, !llvm.loop !37

55:                                               ; preds = %5
  %56 = load ptr, ptr %2, align 8, !tbaa !29
  %57 = getelementptr inbounds nuw %struct.D_SymHash, ptr %56, i32 0, i32 2
  %58 = getelementptr inbounds nuw %struct.anon, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  call void @free(ptr noundef %59) #7
  %60 = load ptr, ptr %2, align 8, !tbaa !29
  call void @free(ptr noundef %60) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_D_Sym(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !25
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  call void @free(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind
define dso_local ptr @commit_D_Scope(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #7
  %6 = load ptr, ptr %3, align 8, !tbaa !3
  store ptr %6, ptr %4, align 8, !tbaa !3
  %7 = load ptr, ptr %3, align 8, !tbaa !3
  %8 = getelementptr inbounds nuw %struct.D_Scope, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8, !tbaa !3
  store ptr %12, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %33

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %19, %13
  %15 = load ptr, ptr %4, align 8, !tbaa !3
  %16 = getelementptr inbounds nuw %struct.D_Scope, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !8
  %18 = icmp ne ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load ptr, ptr %4, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.D_Scope, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !8
  store ptr %22, ptr %4, align 8, !tbaa !3
  br label %14, !llvm.loop !38

23:                                               ; preds = %14
  %24 = load ptr, ptr %3, align 8, !tbaa !3
  %25 = load ptr, ptr %4, align 8, !tbaa !3
  %26 = getelementptr inbounds nuw %struct.D_Scope, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  call void @commit_ll(ptr noundef %24, ptr noundef %27)
  %28 = load ptr, ptr %3, align 8, !tbaa !3
  %29 = load ptr, ptr %4, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.D_Scope, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !17
  call void @commit_update(ptr noundef %28, ptr noundef %31)
  %32 = load ptr, ptr %4, align 8, !tbaa !3
  store ptr %32, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %33

33:                                               ; preds = %23, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #7
  %34 = load ptr, ptr %2, align 8
  ret ptr %34
}

; Function Attrs: nounwind
define internal void @commit_ll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  %6 = load ptr, ptr %3, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.D_Scope, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !3
  %12 = getelementptr inbounds nuw %struct.D_Scope, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !8
  %14 = load ptr, ptr %4, align 8, !tbaa !29
  call void @commit_ll(ptr noundef %13, ptr noundef %14)
  br label %15

15:                                               ; preds = %30, %10
  %16 = load ptr, ptr %3, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.D_Scope, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.D_Scope, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  %24 = getelementptr inbounds nuw %struct.D_Sym, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  store ptr %25, ptr %5, align 8, !tbaa !25
  %26 = load ptr, ptr %4, align 8, !tbaa !29
  %27 = load ptr, ptr %3, align 8, !tbaa !3
  %28 = getelementptr inbounds nuw %struct.D_Scope, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !21
  call void @symhash_add(ptr noundef %26, ptr noundef %29)
  br label %30

30:                                               ; preds = %20
  %31 = load ptr, ptr %5, align 8, !tbaa !25
  %32 = load ptr, ptr %3, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.D_Scope, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 8, !tbaa !21
  br label %15, !llvm.loop !39

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  ret void
}

; Function Attrs: nounwind
define internal void @commit_update(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  store i32 0, ptr %5, align 4, !tbaa !18
  br label %7

7:                                                ; preds = %37, %2
  %8 = load i32, ptr %5, align 4, !tbaa !18
  %9 = load ptr, ptr %4, align 8, !tbaa !29
  %10 = getelementptr inbounds nuw %struct.D_SymHash, ptr %9, i32 0, i32 2
  %11 = getelementptr inbounds nuw %struct.anon, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8, !tbaa !30
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %7
  %15 = load ptr, ptr %4, align 8, !tbaa !29
  %16 = getelementptr inbounds nuw %struct.D_SymHash, ptr %15, i32 0, i32 2
  %17 = getelementptr inbounds nuw %struct.anon, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = load i32, ptr %5, align 4, !tbaa !18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !25
  store ptr %22, ptr %6, align 8, !tbaa !25
  br label %23

23:                                               ; preds = %32, %14
  %24 = load ptr, ptr %6, align 8, !tbaa !25
  %25 = icmp ne ptr %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load ptr, ptr %3, align 8, !tbaa !3
  %28 = load ptr, ptr %6, align 8, !tbaa !25
  %29 = call ptr @current_D_Sym(ptr noundef %27, ptr noundef %28)
  %30 = load ptr, ptr %6, align 8, !tbaa !25
  %31 = getelementptr inbounds nuw %struct.D_Sym, ptr %30, i32 0, i32 3
  store ptr %29, ptr %31, align 8, !tbaa !40
  br label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !25
  %34 = getelementptr inbounds nuw %struct.D_Sym, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  store ptr %35, ptr %6, align 8, !tbaa !25
  br label %23, !llvm.loop !41

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %5, align 4, !tbaa !18
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %5, align 4, !tbaa !18
  br label %7, !llvm.loop !42

40:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  ret void
}

; Function Attrs: nounwind
define dso_local ptr @new_D_Sym(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !43
  store ptr %2, ptr %7, align 8, !tbaa !43
  store i32 %3, ptr %8, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7
  %11 = load ptr, ptr %7, align 8, !tbaa !43
  %12 = load ptr, ptr %6, align 8, !tbaa !43
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %9, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #7
  %17 = load i32, ptr %8, align 4, !tbaa !18
  %18 = sext i32 %17 to i64
  %19 = call noalias ptr @malloc(i64 noundef %18) #8
  store ptr %19, ptr %10, align 8, !tbaa !25
  %20 = load ptr, ptr %10, align 8, !tbaa !25
  %21 = load i32, ptr %8, align 4, !tbaa !18
  %22 = sext i32 %21 to i64
  call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 %22, i1 false)
  %23 = load ptr, ptr %6, align 8, !tbaa !43
  %24 = load ptr, ptr %10, align 8, !tbaa !25
  %25 = getelementptr inbounds nuw %struct.D_Sym, ptr %24, i32 0, i32 0
  store ptr %23, ptr %25, align 8, !tbaa !44
  %26 = load i32, ptr %9, align 4, !tbaa !18
  %27 = load ptr, ptr %10, align 8, !tbaa !25
  %28 = getelementptr inbounds nuw %struct.D_Sym, ptr %27, i32 0, i32 1
  store i32 %26, ptr %28, align 8, !tbaa !45
  %29 = load ptr, ptr %6, align 8, !tbaa !43
  %30 = load i32, ptr %9, align 4, !tbaa !18
  %31 = call signext i32 @strhashl(ptr noundef %29, i32 noundef signext %30)
  %32 = load ptr, ptr %10, align 8, !tbaa !25
  %33 = getelementptr inbounds nuw %struct.D_Sym, ptr %32, i32 0, i32 2
  store i32 %31, ptr %33, align 4, !tbaa !46
  %34 = load ptr, ptr %5, align 8, !tbaa !3
  %35 = getelementptr inbounds nuw %struct.D_Scope, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !17
  %37 = icmp ne ptr %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %4
  %39 = load ptr, ptr %5, align 8, !tbaa !3
  %40 = getelementptr inbounds nuw %struct.D_Scope, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !17
  %42 = load ptr, ptr %10, align 8, !tbaa !25
  call void @symhash_add(ptr noundef %41, ptr noundef %42)
  br label %52

43:                                               ; preds = %4
  %44 = load ptr, ptr %5, align 8, !tbaa !3
  %45 = getelementptr inbounds nuw %struct.D_Scope, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !21
  %47 = load ptr, ptr %10, align 8, !tbaa !25
  %48 = getelementptr inbounds nuw %struct.D_Sym, ptr %47, i32 0, i32 4
  store ptr %46, ptr %48, align 8, !tbaa !22
  %49 = load ptr, ptr %10, align 8, !tbaa !25
  %50 = load ptr, ptr %5, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.D_Scope, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 8, !tbaa !21
  br label %52

52:                                               ; preds = %43, %38
  %53 = load ptr, ptr %10, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7
  ret ptr %53
}

declare signext i32 @strhashl(ptr noundef, i32 noundef signext) #4

; Function Attrs: nounwind
define internal void @symhash_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.anon.0, align 8
  %11 = alloca %struct.anon.0, align 8
  store ptr %0, ptr %3, align 8, !tbaa !29
  store ptr %1, ptr %4, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  %12 = load ptr, ptr %4, align 8, !tbaa !25
  %13 = getelementptr inbounds nuw %struct.D_Sym, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = load ptr, ptr %3, align 8, !tbaa !29
  %16 = getelementptr inbounds nuw %struct.D_SymHash, ptr %15, i32 0, i32 2
  %17 = getelementptr inbounds nuw %struct.anon, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8, !tbaa !30
  %19 = urem i32 %14, %18
  store i32 %19, ptr %6, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #7
  %20 = load ptr, ptr %3, align 8, !tbaa !29
  %21 = getelementptr inbounds nuw %struct.D_SymHash, ptr %20, i32 0, i32 2
  %22 = getelementptr inbounds nuw %struct.anon, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  store ptr %23, ptr %8, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr %10) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr %11) #7
  %24 = load ptr, ptr %3, align 8, !tbaa !29
  %25 = getelementptr inbounds nuw %struct.D_SymHash, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 8, !tbaa !48
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !48
  %28 = load ptr, ptr %8, align 8, !tbaa !47
  %29 = load i32, ptr %6, align 4, !tbaa !18
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !25
  %33 = load ptr, ptr %4, align 8, !tbaa !25
  %34 = getelementptr inbounds nuw %struct.D_Sym, ptr %33, i32 0, i32 4
  store ptr %32, ptr %34, align 8, !tbaa !22
  %35 = load ptr, ptr %4, align 8, !tbaa !25
  %36 = load ptr, ptr %8, align 8, !tbaa !47
  %37 = load i32, ptr %6, align 4, !tbaa !18
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %36, i64 %38
  store ptr %35, ptr %39, align 8, !tbaa !25
  %40 = load ptr, ptr %3, align 8, !tbaa !29
  %41 = getelementptr inbounds nuw %struct.D_SymHash, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 8, !tbaa !48
  %43 = load ptr, ptr %3, align 8, !tbaa !29
  %44 = getelementptr inbounds nuw %struct.D_SymHash, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !49
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %235

47:                                               ; preds = %2
  %48 = load ptr, ptr %3, align 8, !tbaa !29
  %49 = getelementptr inbounds nuw %struct.D_SymHash, ptr %48, i32 0, i32 2
  %50 = getelementptr inbounds nuw %struct.anon, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !35
  %52 = getelementptr inbounds nuw %struct.anon.0, ptr %10, i32 0, i32 2
  store ptr %51, ptr %52, align 8, !tbaa !50
  %53 = load ptr, ptr %3, align 8, !tbaa !29
  %54 = getelementptr inbounds nuw %struct.D_SymHash, ptr %53, i32 0, i32 2
  %55 = getelementptr inbounds nuw %struct.anon, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8, !tbaa !30
  %57 = getelementptr inbounds nuw %struct.anon.0, ptr %10, i32 0, i32 0
  store i32 %56, ptr %57, align 8, !tbaa !51
  %58 = load ptr, ptr %3, align 8, !tbaa !29
  %59 = getelementptr inbounds nuw %struct.D_SymHash, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !49
  %61 = load ptr, ptr %3, align 8, !tbaa !29
  %62 = getelementptr inbounds nuw %struct.D_SymHash, ptr %61, i32 0, i32 2
  %63 = getelementptr inbounds nuw %struct.anon, ptr %62, i32 0, i32 0
  store i32 %60, ptr %63, align 8, !tbaa !30
  %64 = load ptr, ptr %3, align 8, !tbaa !29
  %65 = getelementptr inbounds nuw %struct.D_SymHash, ptr %64, i32 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !49
  %67 = mul nsw i32 %66, 2
  %68 = add nsw i32 %67, 1
  %69 = load ptr, ptr %3, align 8, !tbaa !29
  %70 = getelementptr inbounds nuw %struct.D_SymHash, ptr %69, i32 0, i32 1
  store i32 %68, ptr %70, align 4, !tbaa !49
  %71 = load ptr, ptr %3, align 8, !tbaa !29
  %72 = getelementptr inbounds nuw %struct.D_SymHash, ptr %71, i32 0, i32 2
  %73 = getelementptr inbounds nuw %struct.anon, ptr %72, i32 0, i32 0
  %74 = load i32, ptr %73, align 8, !tbaa !30
  %75 = zext i32 %74 to i64
  %76 = mul i64 %75, 8
  %77 = call noalias ptr @malloc(i64 noundef %76) #8
  %78 = load ptr, ptr %3, align 8, !tbaa !29
  %79 = getelementptr inbounds nuw %struct.D_SymHash, ptr %78, i32 0, i32 2
  %80 = getelementptr inbounds nuw %struct.anon, ptr %79, i32 0, i32 2
  store ptr %77, ptr %80, align 8, !tbaa !35
  %81 = load ptr, ptr %3, align 8, !tbaa !29
  %82 = getelementptr inbounds nuw %struct.D_SymHash, ptr %81, i32 0, i32 2
  %83 = getelementptr inbounds nuw %struct.anon, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !35
  %85 = load ptr, ptr %3, align 8, !tbaa !29
  %86 = getelementptr inbounds nuw %struct.D_SymHash, ptr %85, i32 0, i32 2
  %87 = getelementptr inbounds nuw %struct.anon, ptr %86, i32 0, i32 0
  %88 = load i32, ptr %87, align 8, !tbaa !30
  %89 = zext i32 %88 to i64
  %90 = mul i64 %89, 8
  call void @llvm.memset.p0.i64(ptr align 8 %84, i8 0, i64 %90, i1 false)
  %91 = load ptr, ptr %3, align 8, !tbaa !29
  %92 = getelementptr inbounds nuw %struct.D_SymHash, ptr %91, i32 0, i32 2
  %93 = getelementptr inbounds nuw %struct.anon, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !35
  store ptr %94, ptr %8, align 8, !tbaa !47
  %95 = load ptr, ptr %3, align 8, !tbaa !29
  %96 = getelementptr inbounds nuw %struct.D_SymHash, ptr %95, i32 0, i32 2
  %97 = getelementptr inbounds nuw %struct.anon, ptr %96, i32 0, i32 0
  %98 = load i32, ptr %97, align 8, !tbaa !30
  store i32 %98, ptr %7, align 4, !tbaa !18
  br label %99

99:                                               ; preds = %47
  %100 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 0
  store i32 0, ptr %100, align 8, !tbaa !51
  %101 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 2
  store ptr null, ptr %101, align 8, !tbaa !50
  br label %102

102:                                              ; preds = %99
  br label %103

103:                                              ; preds = %102
  store i32 0, ptr %5, align 4, !tbaa !18
  br label %104

104:                                              ; preds = %188, %103
  %105 = load i32, ptr %5, align 4, !tbaa !18
  %106 = getelementptr inbounds nuw %struct.anon.0, ptr %10, i32 0, i32 0
  %107 = load i32, ptr %106, align 8, !tbaa !51
  %108 = icmp ult i32 %105, %107
  br i1 %108, label %109, label %191

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %186, %109
  %111 = getelementptr inbounds nuw %struct.anon.0, ptr %10, i32 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !50
  %113 = load i32, ptr %5, align 4, !tbaa !18
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds nuw ptr, ptr %112, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !25
  %117 = icmp ne ptr %116, null
  br i1 %117, label %118, label %187

118:                                              ; preds = %110
  %119 = getelementptr inbounds nuw %struct.anon.0, ptr %10, i32 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !50
  %121 = load i32, ptr %5, align 4, !tbaa !18
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds nuw ptr, ptr %120, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !25
  store ptr %124, ptr %9, align 8, !tbaa !25
  %125 = load ptr, ptr %9, align 8, !tbaa !25
  %126 = getelementptr inbounds nuw %struct.D_Sym, ptr %125, i32 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !22
  %128 = getelementptr inbounds nuw %struct.anon.0, ptr %10, i32 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !50
  %130 = load i32, ptr %5, align 4, !tbaa !18
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds nuw ptr, ptr %129, i64 %131
  store ptr %127, ptr %132, align 8, !tbaa !25
  br label %133

133:                                              ; preds = %118
  %134 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !50
  %136 = icmp ne ptr %135, null
  br i1 %136, label %147, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr %9, align 8, !tbaa !25
  %139 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 3
  %140 = getelementptr inbounds [3 x ptr], ptr %139, i64 0, i64 0
  %141 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 2
  store ptr %140, ptr %141, align 8, !tbaa !50
  %142 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 0
  %143 = load i32, ptr %142, align 8, !tbaa !51
  %144 = add i32 %143, 1
  store i32 %144, ptr %142, align 8, !tbaa !51
  %145 = zext i32 %143 to i64
  %146 = getelementptr inbounds nuw ptr, ptr %140, i64 %145
  store ptr %138, ptr %146, align 8, !tbaa !25
  br label %186

147:                                              ; preds = %133
  %148 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !50
  %150 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 3
  %151 = getelementptr inbounds [3 x ptr], ptr %150, i64 0, i64 0
  %152 = icmp eq ptr %149, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %147
  %154 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 0
  %155 = load i32, ptr %154, align 8, !tbaa !51
  %156 = icmp ult i32 %155, 3
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = load ptr, ptr %9, align 8, !tbaa !25
  %159 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !50
  %161 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 0
  %162 = load i32, ptr %161, align 8, !tbaa !51
  %163 = add i32 %162, 1
  store i32 %163, ptr %161, align 8, !tbaa !51
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds nuw ptr, ptr %160, i64 %164
  store ptr %158, ptr %165, align 8, !tbaa !25
  br label %186

166:                                              ; preds = %153
  br label %182

167:                                              ; preds = %147
  %168 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 0
  %169 = load i32, ptr %168, align 8, !tbaa !51
  %170 = and i32 %169, 7
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load ptr, ptr %9, align 8, !tbaa !25
  %174 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !50
  %176 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 0
  %177 = load i32, ptr %176, align 8, !tbaa !51
  %178 = add i32 %177, 1
  store i32 %178, ptr %176, align 8, !tbaa !51
  %179 = zext i32 %177 to i64
  %180 = getelementptr inbounds nuw ptr, ptr %175, i64 %179
  store ptr %173, ptr %180, align 8, !tbaa !25
  br label %186

181:                                              ; preds = %167
  br label %182

182:                                              ; preds = %181, %166
  br label %183

183:                                              ; preds = %182
  %184 = load ptr, ptr %9, align 8, !tbaa !25
  call void @vec_add_internal(ptr noundef %11, ptr noundef %184)
  br label %185

185:                                              ; preds = %183
  br label %186

186:                                              ; preds = %185, %172, %157, %137
  br label %110, !llvm.loop !52

187:                                              ; preds = %110
  br label %188

188:                                              ; preds = %187
  %189 = load i32, ptr %5, align 4, !tbaa !18
  %190 = add i32 %189, 1
  store i32 %190, ptr %5, align 4, !tbaa !18
  br label %104, !llvm.loop !53

191:                                              ; preds = %104
  br label %192

192:                                              ; preds = %200, %191
  %193 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !50
  %195 = load i32, ptr %5, align 4, !tbaa !18
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds nuw ptr, ptr %194, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !25
  %199 = icmp ne ptr %198, null
  br i1 %199, label %200, label %232

200:                                              ; preds = %192
  %201 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !50
  %203 = load i32, ptr %5, align 4, !tbaa !18
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds nuw ptr, ptr %202, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !25
  store ptr %206, ptr %9, align 8, !tbaa !25
  %207 = load ptr, ptr %9, align 8, !tbaa !25
  %208 = getelementptr inbounds nuw %struct.D_Sym, ptr %207, i32 0, i32 4
  %209 = load ptr, ptr %208, align 8, !tbaa !22
  %210 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !50
  %212 = load i32, ptr %5, align 4, !tbaa !18
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds nuw ptr, ptr %211, i64 %213
  store ptr %209, ptr %214, align 8, !tbaa !25
  %215 = load ptr, ptr %9, align 8, !tbaa !25
  %216 = getelementptr inbounds nuw %struct.D_Sym, ptr %215, i32 0, i32 2
  %217 = load i32, ptr %216, align 4, !tbaa !46
  %218 = load i32, ptr %7, align 4, !tbaa !18
  %219 = urem i32 %217, %218
  store i32 %219, ptr %6, align 4, !tbaa !18
  %220 = load ptr, ptr %8, align 8, !tbaa !47
  %221 = load i32, ptr %6, align 4, !tbaa !18
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds nuw ptr, ptr %220, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !25
  %225 = load ptr, ptr %9, align 8, !tbaa !25
  %226 = getelementptr inbounds nuw %struct.D_Sym, ptr %225, i32 0, i32 4
  store ptr %224, ptr %226, align 8, !tbaa !22
  %227 = load ptr, ptr %9, align 8, !tbaa !25
  %228 = load ptr, ptr %8, align 8, !tbaa !47
  %229 = load i32, ptr %6, align 4, !tbaa !18
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds nuw ptr, ptr %228, i64 %230
  store ptr %227, ptr %231, align 8, !tbaa !25
  br label %192, !llvm.loop !54

232:                                              ; preds = %192
  %233 = getelementptr inbounds nuw %struct.anon.0, ptr %10, i32 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !50
  call void @free(ptr noundef %234) #7
  br label %235

235:                                              ; preds = %232, %2
  call void @llvm.lifetime.end.p0(i64 40, ptr %11) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  ret void
}

; Function Attrs: nounwind
define dso_local ptr @current_D_Sym(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  %9 = load ptr, ptr %5, align 8, !tbaa !25
  %10 = getelementptr inbounds nuw %struct.D_Sym, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 8, !tbaa !25
  %15 = getelementptr inbounds nuw %struct.D_Sym, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  store ptr %16, ptr %5, align 8, !tbaa !25
  br label %17

17:                                               ; preds = %13, %2
  %18 = load ptr, ptr %4, align 8, !tbaa !3
  store ptr %18, ptr %6, align 8, !tbaa !3
  br label %19

19:                                               ; preds = %43, %17
  %20 = load ptr, ptr %6, align 8, !tbaa !3
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.D_Scope, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !27
  store ptr %25, ptr %7, align 8, !tbaa !25
  br label %26

26:                                               ; preds = %38, %22
  %27 = load ptr, ptr %7, align 8, !tbaa !25
  %28 = icmp ne ptr %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load ptr, ptr %7, align 8, !tbaa !25
  %31 = getelementptr inbounds nuw %struct.D_Sym, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !40
  %33 = load ptr, ptr %5, align 8, !tbaa !25
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load ptr, ptr %7, align 8, !tbaa !25
  store ptr %36, ptr %3, align 8
  store i32 1, ptr %8, align 4
  br label %49

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %7, align 8, !tbaa !25
  %40 = getelementptr inbounds nuw %struct.D_Sym, ptr %39, i32 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  store ptr %41, ptr %7, align 8, !tbaa !25
  br label %26, !llvm.loop !55

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr %6, align 8, !tbaa !3
  %45 = getelementptr inbounds nuw %struct.D_Scope, ptr %44, i32 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !14
  store ptr %46, ptr %6, align 8, !tbaa !3
  br label %19, !llvm.loop !56

47:                                               ; preds = %19
  %48 = load ptr, ptr %5, align 8, !tbaa !25
  store ptr %48, ptr %3, align 8
  store i32 1, ptr %8, align 4
  br label %49

49:                                               ; preds = %47, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  %50 = load ptr, ptr %3, align 8
  ret ptr %50
}

; Function Attrs: nounwind
define dso_local ptr @find_sym_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %7, align 8, !tbaa !3
  store ptr %1, ptr %8, align 8, !tbaa !3
  store ptr %2, ptr %9, align 8, !tbaa !43
  store i32 %3, ptr %10, align 4, !tbaa !18
  store i32 %4, ptr %11, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #7
  %14 = load ptr, ptr %8, align 8, !tbaa !3
  %15 = icmp ne ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store ptr null, ptr %6, align 8
  store i32 1, ptr %13, align 4
  br label %97

17:                                               ; preds = %5
  %18 = load ptr, ptr %8, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.D_Scope, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !17
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = load ptr, ptr %8, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.D_Scope, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !17
  %26 = getelementptr inbounds nuw %struct.D_SymHash, ptr %25, i32 0, i32 2
  %27 = getelementptr inbounds nuw %struct.anon, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = load i32, ptr %11, align 4, !tbaa !18
  %30 = load ptr, ptr %8, align 8, !tbaa !3
  %31 = getelementptr inbounds nuw %struct.D_Scope, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  %33 = getelementptr inbounds nuw %struct.D_SymHash, ptr %32, i32 0, i32 2
  %34 = getelementptr inbounds nuw %struct.anon, ptr %33, i32 0, i32 0
  %35 = load i32, ptr %34, align 8, !tbaa !30
  %36 = urem i32 %29, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds nuw ptr, ptr %28, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !25
  store ptr %39, ptr %12, align 8, !tbaa !25
  br label %44

40:                                               ; preds = %17
  %41 = load ptr, ptr %8, align 8, !tbaa !3
  %42 = getelementptr inbounds nuw %struct.D_Scope, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !21
  store ptr %43, ptr %12, align 8, !tbaa !25
  br label %44

44:                                               ; preds = %40, %22
  br label %45

45:                                               ; preds = %70, %44
  %46 = load ptr, ptr %12, align 8, !tbaa !25
  %47 = icmp ne ptr %46, null
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = load ptr, ptr %12, align 8, !tbaa !25
  %50 = getelementptr inbounds nuw %struct.D_Sym, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !46
  %52 = load i32, ptr %11, align 4, !tbaa !18
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load ptr, ptr %12, align 8, !tbaa !25
  %56 = getelementptr inbounds nuw %struct.D_Sym, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !45
  %58 = load i32, ptr %10, align 4, !tbaa !18
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load ptr, ptr %12, align 8, !tbaa !25
  %62 = getelementptr inbounds nuw %struct.D_Sym, ptr %61, i32 0, i32 0
  %63 = load ptr, ptr %62, align 8, !tbaa !44
  %64 = load ptr, ptr %9, align 8, !tbaa !43
  %65 = load i32, ptr %10, align 4, !tbaa !18
  %66 = sext i32 %65 to i64
  %67 = call signext i32 @strncmp(ptr noundef %63, ptr noundef %64, i64 noundef %66) #9
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br label %74

70:                                               ; preds = %60, %54, %48
  %71 = load ptr, ptr %12, align 8, !tbaa !25
  %72 = getelementptr inbounds nuw %struct.D_Sym, ptr %71, i32 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !22
  store ptr %73, ptr %12, align 8, !tbaa !25
  br label %45, !llvm.loop !57

74:                                               ; preds = %69, %45
  %75 = load ptr, ptr %12, align 8, !tbaa !25
  %76 = icmp ne ptr %75, null
  br i1 %76, label %93, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %8, align 8, !tbaa !3
  %79 = getelementptr inbounds nuw %struct.D_Scope, ptr %78, i32 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !8
  %81 = icmp ne ptr %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load ptr, ptr %7, align 8, !tbaa !3
  %84 = load ptr, ptr %8, align 8, !tbaa !3
  %85 = getelementptr inbounds nuw %struct.D_Scope, ptr %84, i32 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !8
  %87 = load ptr, ptr %9, align 8, !tbaa !43
  %88 = load i32, ptr %10, align 4, !tbaa !18
  %89 = load i32, ptr %11, align 4, !tbaa !18
  %90 = call ptr @find_sym_internal(ptr noundef %83, ptr noundef %86, ptr noundef %87, i32 noundef signext %88, i32 noundef signext %89)
  store ptr %90, ptr %6, align 8
  store i32 1, ptr %13, align 4
  br label %97

91:                                               ; preds = %77
  %92 = load ptr, ptr %12, align 8, !tbaa !25
  store ptr %92, ptr %6, align 8
  store i32 1, ptr %13, align 4
  br label %97

93:                                               ; preds = %74
  %94 = load ptr, ptr %7, align 8, !tbaa !3
  %95 = load ptr, ptr %12, align 8, !tbaa !25
  %96 = call ptr @current_D_Sym(ptr noundef %94, ptr noundef %95)
  store ptr %96, ptr %6, align 8
  store i32 1, ptr %13, align 4
  br label %97

97:                                               ; preds = %93, %91, %82, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #7
  %98 = load ptr, ptr %6, align 8
  ret ptr %98
}

; Function Attrs: nounwind willreturn memory(read)
declare signext i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nounwind
define dso_local ptr @find_D_Sym(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !43
  store ptr %2, ptr %6, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  %9 = load ptr, ptr %6, align 8, !tbaa !43
  %10 = load ptr, ptr %5, align 8, !tbaa !43
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, ptr %7, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  %15 = load ptr, ptr %5, align 8, !tbaa !43
  %16 = load i32, ptr %7, align 4, !tbaa !18
  %17 = call signext i32 @strhashl(ptr noundef %15, i32 noundef signext %16)
  store i32 %17, ptr %8, align 4, !tbaa !18
  %18 = load ptr, ptr %4, align 8, !tbaa !3
  %19 = load ptr, ptr %4, align 8, !tbaa !3
  %20 = load ptr, ptr %5, align 8, !tbaa !43
  %21 = load i32, ptr %7, align 4, !tbaa !18
  %22 = load i32, ptr %8, align 4, !tbaa !18
  %23 = call ptr @find_sym_internal(ptr noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef signext %21, i32 noundef signext %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  ret ptr %23
}

; Function Attrs: nounwind
define dso_local ptr @find_D_Sym_in_Scope(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !43
  store ptr %2, ptr %7, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7
  %12 = load ptr, ptr %7, align 8, !tbaa !43
  %13 = load ptr, ptr %6, align 8, !tbaa !43
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, ptr %9, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7
  %18 = load ptr, ptr %6, align 8, !tbaa !43
  %19 = load i32, ptr %9, align 4, !tbaa !18
  %20 = call signext i32 @strhashl(ptr noundef %18, i32 noundef signext %19)
  store i32 %20, ptr %10, align 4, !tbaa !18
  br label %21

21:                                               ; preds = %99, %3
  %22 = load ptr, ptr %5, align 8, !tbaa !3
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %103

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 8, !tbaa !3
  %26 = getelementptr inbounds nuw %struct.D_Scope, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = icmp ne ptr %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load ptr, ptr %5, align 8, !tbaa !3
  %31 = getelementptr inbounds nuw %struct.D_Scope, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  %33 = getelementptr inbounds nuw %struct.D_SymHash, ptr %32, i32 0, i32 2
  %34 = getelementptr inbounds nuw %struct.anon, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = load i32, ptr %10, align 4, !tbaa !18
  %37 = load ptr, ptr %5, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw %struct.D_Scope, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !17
  %40 = getelementptr inbounds nuw %struct.D_SymHash, ptr %39, i32 0, i32 2
  %41 = getelementptr inbounds nuw %struct.anon, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 8, !tbaa !30
  %43 = urem i32 %36, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds nuw ptr, ptr %35, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !25
  store ptr %46, ptr %8, align 8, !tbaa !25
  br label %51

47:                                               ; preds = %24
  %48 = load ptr, ptr %5, align 8, !tbaa !3
  %49 = getelementptr inbounds nuw %struct.D_Scope, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !21
  store ptr %50, ptr %8, align 8, !tbaa !25
  br label %51

51:                                               ; preds = %47, %29
  br label %52

52:                                               ; preds = %78, %51
  %53 = load ptr, ptr %8, align 8, !tbaa !25
  %54 = icmp ne ptr %53, null
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load ptr, ptr %8, align 8, !tbaa !25
  %57 = getelementptr inbounds nuw %struct.D_Sym, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !46
  %59 = load i32, ptr %10, align 4, !tbaa !18
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %55
  %62 = load ptr, ptr %8, align 8, !tbaa !25
  %63 = getelementptr inbounds nuw %struct.D_Sym, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !45
  %65 = load i32, ptr %9, align 4, !tbaa !18
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load ptr, ptr %8, align 8, !tbaa !25
  %69 = getelementptr inbounds nuw %struct.D_Sym, ptr %68, i32 0, i32 0
  %70 = load ptr, ptr %69, align 8, !tbaa !44
  %71 = load ptr, ptr %6, align 8, !tbaa !43
  %72 = load i32, ptr %9, align 4, !tbaa !18
  %73 = sext i32 %72 to i64
  %74 = call signext i32 @strncmp(ptr noundef %70, ptr noundef %71, i64 noundef %73) #9
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %67
  %77 = load ptr, ptr %8, align 8, !tbaa !25
  store ptr %77, ptr %4, align 8
  store i32 1, ptr %11, align 4
  br label %104

78:                                               ; preds = %67, %61, %55
  %79 = load ptr, ptr %8, align 8, !tbaa !25
  %80 = getelementptr inbounds nuw %struct.D_Sym, ptr %79, i32 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !22
  store ptr %81, ptr %8, align 8, !tbaa !25
  br label %52, !llvm.loop !58

82:                                               ; preds = %52
  %83 = load ptr, ptr %5, align 8, !tbaa !3
  %84 = getelementptr inbounds nuw %struct.D_Scope, ptr %83, i32 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !8
  %86 = icmp ne ptr %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load ptr, ptr %5, align 8, !tbaa !3
  %89 = getelementptr inbounds nuw %struct.D_Scope, ptr %88, i32 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !8
  %91 = getelementptr inbounds nuw %struct.D_Scope, ptr %90, i32 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !13
  %93 = load ptr, ptr %5, align 8, !tbaa !3
  %94 = getelementptr inbounds nuw %struct.D_Scope, ptr %93, i32 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !13
  %96 = icmp ne ptr %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87, %82
  br label %103

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98
  %100 = load ptr, ptr %5, align 8, !tbaa !3
  %101 = getelementptr inbounds nuw %struct.D_Scope, ptr %100, i32 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !8
  store ptr %102, ptr %5, align 8, !tbaa !3
  br label %21, !llvm.loop !59

103:                                              ; preds = %97, %21
  store ptr null, ptr %4, align 8
  store i32 1, ptr %11, align 4
  br label %104

104:                                              ; preds = %103, %76
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #7
  %105 = load ptr, ptr %4, align 8
  ret ptr %105
}

; Function Attrs: nounwind
define dso_local ptr @update_D_Sym(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !25
  store i32 %2, ptr %6, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  %8 = load ptr, ptr %4, align 8, !tbaa !3
  %9 = load ptr, ptr %5, align 8, !tbaa !25
  %10 = call ptr @current_D_Sym(ptr noundef %8, ptr noundef %9)
  store ptr %10, ptr %5, align 8, !tbaa !25
  %11 = load i32, ptr %6, align 4, !tbaa !18
  %12 = sext i32 %11 to i64
  %13 = call noalias ptr @malloc(i64 noundef %12) #8
  store ptr %13, ptr %7, align 8, !tbaa !25
  %14 = load ptr, ptr %7, align 8, !tbaa !25
  %15 = load ptr, ptr %5, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %15, i64 40, i1 false)
  %16 = load ptr, ptr %5, align 8, !tbaa !25
  %17 = getelementptr inbounds nuw %struct.D_Sym, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load ptr, ptr %5, align 8, !tbaa !25
  %22 = getelementptr inbounds nuw %struct.D_Sym, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !40
  store ptr %23, ptr %5, align 8, !tbaa !25
  br label %24

24:                                               ; preds = %20, %3
  %25 = load ptr, ptr %5, align 8, !tbaa !25
  %26 = load ptr, ptr %7, align 8, !tbaa !25
  %27 = getelementptr inbounds nuw %struct.D_Sym, ptr %26, i32 0, i32 3
  store ptr %25, ptr %27, align 8, !tbaa !40
  %28 = load ptr, ptr %4, align 8, !tbaa !3
  %29 = getelementptr inbounds nuw %struct.D_Scope, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !27
  %31 = load ptr, ptr %7, align 8, !tbaa !25
  %32 = getelementptr inbounds nuw %struct.D_Sym, ptr %31, i32 0, i32 4
  store ptr %30, ptr %32, align 8, !tbaa !22
  %33 = load ptr, ptr %7, align 8, !tbaa !25
  %34 = load ptr, ptr %4, align 8, !tbaa !3
  %35 = getelementptr inbounds nuw %struct.D_Scope, ptr %34, i32 0, i32 3
  store ptr %33, ptr %35, align 8, !tbaa !27
  %36 = load ptr, ptr %7, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  ret ptr %36
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind
define dso_local void @print_sym(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #7
  %4 = load ptr, ptr %2, align 8, !tbaa !25
  %5 = getelementptr inbounds nuw %struct.D_Sym, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %9, ptr %3, align 8, !tbaa !43
  %10 = load ptr, ptr %3, align 8, !tbaa !43
  %11 = load ptr, ptr %2, align 8, !tbaa !25
  %12 = getelementptr inbounds nuw %struct.D_Sym, ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = load ptr, ptr %2, align 8, !tbaa !25
  %15 = getelementptr inbounds nuw %struct.D_Sym, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !45
  %17 = sext i32 %16 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %13, i64 %17, i1 false)
  %18 = load ptr, ptr %2, align 8, !tbaa !25
  %19 = getelementptr inbounds nuw %struct.D_Sym, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = load ptr, ptr %2, align 8, !tbaa !25
  %22 = getelementptr inbounds nuw %struct.D_Sym, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !45
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %20, i64 %24
  store i8 0, ptr %25, align 1, !tbaa !60
  %26 = load ptr, ptr %3, align 8, !tbaa !43
  %27 = call signext i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %26)
  %28 = load ptr, ptr %3, align 8, !tbaa !43
  call void @free(ptr noundef %28) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #7
  ret void
}

declare signext i32 @printf(ptr noundef, ...) #4

; Function Attrs: nounwind
define dso_local void @print_scope(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %5 = load ptr, ptr %2, align 8, !tbaa !3
  %6 = ptrtoint ptr %5 to i64
  %7 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %6)
  %8 = load ptr, ptr %2, align 8, !tbaa !3
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  %11 = zext i8 %10 to i32
  %12 = load ptr, ptr %2, align 8, !tbaa !3
  %13 = load i8, ptr %12, align 8
  %14 = lshr i8 %13, 1
  %15 = and i8 %14, 3
  %16 = zext i8 %15 to i32
  %17 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef signext %11, i32 noundef signext %16)
  %18 = load ptr, ptr %2, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.D_Scope, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %24

24:                                               ; preds = %22, %1
  %25 = load ptr, ptr %2, align 8, !tbaa !3
  %26 = getelementptr inbounds nuw %struct.D_Scope, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = icmp ne ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %31

31:                                               ; preds = %29, %24
  %32 = load ptr, ptr %2, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.D_Scope, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !17
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  store i32 0, ptr %3, align 4, !tbaa !18
  br label %37

37:                                               ; preds = %70, %36
  %38 = load i32, ptr %3, align 4, !tbaa !18
  %39 = load ptr, ptr %2, align 8, !tbaa !3
  %40 = getelementptr inbounds nuw %struct.D_Scope, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !17
  %42 = getelementptr inbounds nuw %struct.D_SymHash, ptr %41, i32 0, i32 2
  %43 = getelementptr inbounds nuw %struct.anon, ptr %42, i32 0, i32 0
  %44 = load i32, ptr %43, align 8, !tbaa !30
  %45 = icmp ult i32 %38, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %37
  %47 = load ptr, ptr %2, align 8, !tbaa !3
  %48 = getelementptr inbounds nuw %struct.D_Scope, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !17
  %50 = getelementptr inbounds nuw %struct.D_SymHash, ptr %49, i32 0, i32 2
  %51 = getelementptr inbounds nuw %struct.anon, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = load i32, ptr %3, align 4, !tbaa !18
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %52, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !25
  %57 = icmp ne ptr %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %46
  %59 = load ptr, ptr %2, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.D_Scope, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !17
  %62 = getelementptr inbounds nuw %struct.D_SymHash, ptr %61, i32 0, i32 2
  %63 = getelementptr inbounds nuw %struct.anon, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = load i32, ptr %3, align 4, !tbaa !18
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !25
  call void @print_sym(ptr noundef %68)
  br label %69

69:                                               ; preds = %58, %46
  br label %70

70:                                               ; preds = %69
  %71 = load i32, ptr %3, align 4, !tbaa !18
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %3, align 4, !tbaa !18
  br label %37, !llvm.loop !61

73:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  br label %87

74:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #7
  %75 = load ptr, ptr %2, align 8, !tbaa !3
  %76 = getelementptr inbounds nuw %struct.D_Scope, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !21
  store ptr %77, ptr %4, align 8, !tbaa !25
  br label %78

78:                                               ; preds = %81, %74
  %79 = load ptr, ptr %4, align 8, !tbaa !25
  %80 = icmp ne ptr %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load ptr, ptr %4, align 8, !tbaa !25
  call void @print_sym(ptr noundef %82)
  %83 = load ptr, ptr %4, align 8, !tbaa !25
  %84 = getelementptr inbounds nuw %struct.D_Sym, ptr %83, i32 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !22
  store ptr %85, ptr %4, align 8, !tbaa !25
  br label %78, !llvm.loop !62

86:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #7
  br label %87

87:                                               ; preds = %86, %73
  %88 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %89 = load ptr, ptr %2, align 8, !tbaa !3
  %90 = getelementptr inbounds nuw %struct.D_Scope, ptr %89, i32 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !8
  %92 = icmp ne ptr %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load ptr, ptr %2, align 8, !tbaa !3
  %95 = getelementptr inbounds nuw %struct.D_Scope, ptr %94, i32 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !8
  call void @print_scope(ptr noundef %96)
  br label %97

97:                                               ; preds = %93, %87
  ret void
}

; Function Attrs: nounwind
define internal ptr @new_D_SymHash() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #7
  %2 = call noalias ptr @malloc(i64 noundef 48) #8
  store ptr %2, ptr %1, align 8, !tbaa !29
  %3 = load ptr, ptr %1, align 8, !tbaa !29
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 48, i1 false)
  %4 = load ptr, ptr %1, align 8, !tbaa !29
  %5 = getelementptr inbounds nuw %struct.D_SymHash, ptr %4, i32 0, i32 1
  store i32 6275, ptr %5, align 4, !tbaa !49
  %6 = load ptr, ptr %1, align 8, !tbaa !29
  %7 = getelementptr inbounds nuw %struct.D_SymHash, ptr %6, i32 0, i32 2
  %8 = getelementptr inbounds nuw %struct.anon, ptr %7, i32 0, i32 0
  store i32 3137, ptr %8, align 8, !tbaa !30
  %9 = load ptr, ptr %1, align 8, !tbaa !29
  %10 = getelementptr inbounds nuw %struct.D_SymHash, ptr %9, i32 0, i32 2
  %11 = getelementptr inbounds nuw %struct.anon, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8, !tbaa !30
  %13 = zext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = call noalias ptr @malloc(i64 noundef %14) #8
  %16 = load ptr, ptr %1, align 8, !tbaa !29
  %17 = getelementptr inbounds nuw %struct.D_SymHash, ptr %16, i32 0, i32 2
  %18 = getelementptr inbounds nuw %struct.anon, ptr %17, i32 0, i32 2
  store ptr %15, ptr %18, align 8, !tbaa !35
  %19 = load ptr, ptr %1, align 8, !tbaa !29
  %20 = getelementptr inbounds nuw %struct.D_SymHash, ptr %19, i32 0, i32 2
  %21 = getelementptr inbounds nuw %struct.anon, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = load ptr, ptr %1, align 8, !tbaa !29
  %24 = getelementptr inbounds nuw %struct.D_SymHash, ptr %23, i32 0, i32 2
  %25 = getelementptr inbounds nuw %struct.anon, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 8, !tbaa !30
  %27 = zext i32 %26 to i64
  %28 = mul i64 %27, 8
  call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %28, i1 false)
  %29 = load ptr, ptr %1, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #7
  ret ptr %29
}

declare void @vec_add_internal(ptr noundef, ptr noundef) #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 _ZTS7D_Scope", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !4, i64 32}
!9 = !{!"D_Scope", !10, i64 0, !10, i64 0, !11, i64 8, !12, i64 16, !11, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64}
!10 = !{!"int", !6, i64 0}
!11 = !{!"p1 _ZTS5D_Sym", !5, i64 0}
!12 = !{!"p1 _ZTS9D_SymHash", !5, i64 0}
!13 = !{!9, !4, i64 40}
!14 = !{!9, !4, i64 48}
!15 = !{!9, !4, i64 56}
!16 = !{!9, !4, i64 64}
!17 = !{!9, !12, i64 16}
!18 = !{!10, !10, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!9, !11, i64 8}
!22 = !{!23, !11, i64 24}
!23 = !{!"D_Sym", !24, i64 0, !10, i64 8, !10, i64 12, !11, i64 16, !11, i64 24, !10, i64 32}
!24 = !{!"p1 omnipotent char", !5, i64 0}
!25 = !{!11, !11, i64 0}
!26 = distinct !{!26, !20}
!27 = !{!9, !11, i64 24}
!28 = distinct !{!28, !20}
!29 = !{!12, !12, i64 0}
!30 = !{!31, !10, i64 8}
!31 = !{!"D_SymHash", !10, i64 0, !10, i64 4, !32, i64 8}
!32 = !{!"", !10, i64 0, !10, i64 4, !33, i64 8, !6, i64 16}
!33 = !{!"p2 _ZTS5D_Sym", !34, i64 0}
!34 = !{!"any p2 pointer", !5, i64 0}
!35 = !{!31, !33, i64 16}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !20}
!40 = !{!23, !11, i64 16}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = !{!24, !24, i64 0}
!44 = !{!23, !24, i64 0}
!45 = !{!23, !10, i64 8}
!46 = !{!23, !10, i64 12}
!47 = !{!33, !33, i64 0}
!48 = !{!31, !10, i64 0}
!49 = !{!31, !10, i64 4}
!50 = !{!32, !33, i64 8}
!51 = !{!32, !10, i64 0}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !20}
!60 = !{!6, !6, i64 0}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !20}
