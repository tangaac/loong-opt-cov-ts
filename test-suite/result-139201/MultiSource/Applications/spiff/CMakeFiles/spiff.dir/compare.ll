; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/compare.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/compare.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct._K_str = type { i32, i32, i32, ptr, ptr, ptr }
%struct._T_tstr = type { i32, ptr, ptr }
%struct.R_flstr = type { i32, i32, ptr }

@_K_ato = external global [0 x ptr], align 8
@_K_bto = external global [0 x ptr], align 8
@.str = private unnamed_addr constant [32 x i8] c"fell off switch in _X_cmptokens\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"_X_floatdiff called with a null tolerance\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"bad value for type of tolerance in floatdiff\00", align 1

; Function Attrs: nounwind
define dso_local signext i32 @X_com(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !3
  store i32 %1, ptr %6, align 4, !tbaa !3
  store i32 %2, ptr %7, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #5
  %11 = load i32, ptr %5, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  store ptr %14, ptr %8, align 8, !tbaa !7
  %15 = load i32, ptr %6, align 4, !tbaa !3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !7
  store ptr %18, ptr %9, align 8, !tbaa !7
  %19 = load i32, ptr %7, align 4, !tbaa !3
  %20 = and i32 %19, 2
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load ptr, ptr %8, align 8, !tbaa !7
  %24 = getelementptr inbounds nuw %struct._K_str, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = load ptr, ptr %9, align 8, !tbaa !7
  %27 = getelementptr inbounds nuw %struct._K_str, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = load i32, ptr %7, align 4, !tbaa !3
  %30 = call signext i32 @_X_strcmp(ptr noundef %25, ptr noundef %28, i32 noundef signext %29)
  store i32 %30, ptr %4, align 4
  store i32 1, ptr %10, align 4
  br label %36

31:                                               ; preds = %3
  %32 = load ptr, ptr %8, align 8, !tbaa !7
  %33 = load ptr, ptr %9, align 8, !tbaa !7
  %34 = load i32, ptr %7, align 4, !tbaa !3
  %35 = call signext i32 @_X_cmptokens(ptr noundef %32, ptr noundef %33, i32 noundef signext %34)
  store i32 %35, ptr %4, align 4
  store i32 1, ptr %10, align 4
  br label %36

36:                                               ; preds = %31, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #5
  %37 = load i32, ptr %4, align 4
  ret i32 %37
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define internal signext i32 @_X_strcmp(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !14
  store ptr %1, ptr %6, align 8, !tbaa !14
  store i32 %2, ptr %7, align 4, !tbaa !3
  %12 = load i32, ptr %7, align 4, !tbaa !3
  %13 = and i32 %12, 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %99

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %85, %15
  %17 = load ptr, ptr %5, align 8, !tbaa !14
  %18 = icmp ne ptr null, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8, !tbaa !14
  %21 = load i8, ptr %20, align 1, !tbaa !15
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 0, %22
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %90

26:                                               ; preds = %24
  %27 = call ptr @__ctype_b_loc() #6
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = load ptr, ptr %5, align 8, !tbaa !14
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = sext i8 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i16, ptr %28, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !18
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, 1024
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %26
  %39 = call ptr @__ctype_b_loc() #6
  %40 = load ptr, ptr %39, align 8, !tbaa !16
  %41 = load ptr, ptr %6, align 8, !tbaa !14
  %42 = load i8, ptr %41, align 1, !tbaa !15
  %43 = sext i8 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, ptr %40, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !18
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 1024
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5
  %51 = call ptr @__ctype_tolower_loc() #6
  %52 = load ptr, ptr %51, align 8, !tbaa !20
  %53 = load ptr, ptr %5, align 8, !tbaa !14
  %54 = load i8, ptr %53, align 1, !tbaa !15
  %55 = sext i8 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %52, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !3
  store i32 %58, ptr %8, align 4, !tbaa !3
  %59 = load i32, ptr %8, align 4, !tbaa !3
  store i32 %59, ptr %9, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5
  %60 = load i32, ptr %9, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #5
  %61 = call ptr @__ctype_tolower_loc() #6
  %62 = load ptr, ptr %61, align 8, !tbaa !20
  %63 = load ptr, ptr %6, align 8, !tbaa !14
  %64 = load i8, ptr %63, align 1, !tbaa !15
  %65 = sext i8 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %62, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !3
  store i32 %68, ptr %10, align 4, !tbaa !3
  %69 = load i32, ptr %10, align 4, !tbaa !3
  store i32 %69, ptr %11, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #5
  %70 = load i32, ptr %11, align 4, !tbaa !3
  %71 = icmp ne i32 %60, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %50
  store i32 1, ptr %4, align 4
  br label %103

73:                                               ; preds = %50
  br label %84

74:                                               ; preds = %38, %26
  %75 = load ptr, ptr %5, align 8, !tbaa !14
  %76 = load i8, ptr %75, align 1, !tbaa !15
  %77 = sext i8 %76 to i32
  %78 = load ptr, ptr %6, align 8, !tbaa !14
  %79 = load i8, ptr %78, align 1, !tbaa !15
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 1, ptr %4, align 4
  br label %103

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %73
  br label %85

85:                                               ; preds = %84
  %86 = load ptr, ptr %5, align 8, !tbaa !14
  %87 = getelementptr inbounds nuw i8, ptr %86, i32 1
  store ptr %87, ptr %5, align 8, !tbaa !14
  %88 = load ptr, ptr %6, align 8, !tbaa !14
  %89 = getelementptr inbounds nuw i8, ptr %88, i32 1
  store ptr %89, ptr %6, align 8, !tbaa !14
  br label %16, !llvm.loop !22

90:                                               ; preds = %24
  %91 = load ptr, ptr %5, align 8, !tbaa !14
  %92 = load i8, ptr %91, align 1, !tbaa !15
  %93 = sext i8 %92 to i32
  %94 = load ptr, ptr %6, align 8, !tbaa !14
  %95 = load i8, ptr %94, align 1, !tbaa !15
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %93, %96
  %98 = zext i1 %97 to i32
  store i32 %98, ptr %4, align 4
  br label %103

99:                                               ; preds = %3
  %100 = load ptr, ptr %5, align 8, !tbaa !14
  %101 = load ptr, ptr %6, align 8, !tbaa !14
  %102 = call signext i32 @strcmp(ptr noundef %100, ptr noundef %101) #7
  store i32 %102, ptr %4, align 4
  br label %103

103:                                              ; preds = %99, %90, %82, %72
  %104 = load i32, ptr %4, align 4
  ret i32 %104
}

; Function Attrs: nounwind
define internal signext i32 @_X_cmptokens(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !7
  store ptr %1, ptr %6, align 8, !tbaa !7
  store i32 %2, ptr %7, align 4, !tbaa !3
  %8 = load ptr, ptr %5, align 8, !tbaa !7
  %9 = getelementptr inbounds nuw %struct._K_str, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !24
  %11 = load ptr, ptr %6, align 8, !tbaa !7
  %12 = getelementptr inbounds nuw %struct._K_str, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !24
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, ptr %4, align 4
  br label %45

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 8, !tbaa !7
  %18 = getelementptr inbounds nuw %struct._K_str, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !24
  switch i32 %19, label %44 [
    i32 1, label %20
    i32 2, label %29
  ]

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8, !tbaa !7
  %22 = getelementptr inbounds nuw %struct._K_str, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = load ptr, ptr %6, align 8, !tbaa !7
  %25 = getelementptr inbounds nuw %struct._K_str, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = load i32, ptr %7, align 4, !tbaa !3
  %28 = call signext i32 @_X_strcmp(ptr noundef %23, ptr noundef %26, i32 noundef signext %27)
  store i32 %28, ptr %4, align 4
  br label %45

29:                                               ; preds = %16
  %30 = load ptr, ptr %5, align 8, !tbaa !7
  %31 = getelementptr inbounds nuw %struct._K_str, ptr %30, i32 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !25
  %33 = load ptr, ptr %6, align 8, !tbaa !7
  %34 = getelementptr inbounds nuw %struct._K_str, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !25
  %36 = load ptr, ptr %5, align 8, !tbaa !7
  %37 = getelementptr inbounds nuw %struct._K_str, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !26
  %39 = load ptr, ptr %6, align 8, !tbaa !7
  %40 = getelementptr inbounds nuw %struct._K_str, ptr %39, i32 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !26
  %42 = call ptr @T_picktol(ptr noundef %38, ptr noundef %41)
  %43 = call signext i32 @_X_floatdiff(ptr noundef %32, ptr noundef %35, ptr noundef %42)
  store i32 %43, ptr %4, align 4
  br label %45

44:                                               ; preds = %16
  call void @Z_fatal(ptr noundef @.str)
  store i32 -1, ptr %4, align 4
  br label %45

45:                                               ; preds = %44, %29, %20, %15
  %46 = load i32, ptr %4, align 4
  ret i32 %46
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() #2

; Function Attrs: nounwind willreturn memory(read)
declare signext i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
define internal signext i32 @_X_floatdiff(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !27
  store ptr %1, ptr %6, align 8, !tbaa !27
  store ptr %2, ptr %7, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #5
  %12 = load ptr, ptr %7, align 8, !tbaa !28
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  call void @Z_fatal(ptr noundef @.str.1)
  br label %15

15:                                               ; preds = %14, %3
  %16 = load ptr, ptr %7, align 8, !tbaa !28
  store ptr %16, ptr %10, align 8, !tbaa !28
  br label %17

17:                                               ; preds = %66, %15
  %18 = load ptr, ptr %10, align 8, !tbaa !28
  %19 = icmp eq ptr %18, null
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %70

21:                                               ; preds = %17
  %22 = load ptr, ptr %10, align 8, !tbaa !28
  %23 = getelementptr inbounds nuw %struct._T_tstr, ptr %22, i32 0, i32 0
  %24 = load i32, ptr %23, align 8, !tbaa !29
  %25 = icmp eq i32 2, %24
  br i1 %25, label %64, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %10, align 8, !tbaa !28
  %28 = getelementptr inbounds nuw %struct._T_tstr, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !29
  %30 = icmp eq i32 0, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %26
  %32 = load ptr, ptr %10, align 8, !tbaa !28
  %33 = getelementptr inbounds nuw %struct._T_tstr, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !31
  %35 = getelementptr inbounds nuw %struct.R_flstr, ptr %34, i32 0, i32 0
  %36 = load i32, ptr %35, align 8, !tbaa !32
  %37 = icmp eq i32 0, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load ptr, ptr %10, align 8, !tbaa !28
  %40 = getelementptr inbounds nuw %struct._T_tstr, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !31
  %42 = getelementptr inbounds nuw %struct.R_flstr, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = call signext i32 @strcmp(ptr noundef %43, ptr noundef @.str.2) #7
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %38, %31
  %47 = load ptr, ptr %5, align 8, !tbaa !27
  %48 = call signext i32 @R_getexp(ptr noundef %47)
  %49 = load ptr, ptr %10, align 8, !tbaa !28
  %50 = getelementptr inbounds nuw %struct._T_tstr, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !31
  %52 = call signext i32 @R_getexp(ptr noundef %51)
  %53 = sub nsw i32 %52, 1
  %54 = icmp slt i32 %48, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load ptr, ptr %6, align 8, !tbaa !27
  %57 = call signext i32 @R_getexp(ptr noundef %56)
  %58 = load ptr, ptr %10, align 8, !tbaa !28
  %59 = getelementptr inbounds nuw %struct._T_tstr, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !31
  %61 = call signext i32 @R_getexp(ptr noundef %60)
  %62 = sub nsw i32 %61, 1
  %63 = icmp slt i32 %57, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55, %21
  store i32 0, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %134

65:                                               ; preds = %55, %46, %38, %26
  br label %66

66:                                               ; preds = %65
  %67 = load ptr, ptr %10, align 8, !tbaa !28
  %68 = getelementptr inbounds nuw %struct._T_tstr, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !35
  store ptr %69, ptr %10, align 8, !tbaa !28
  br label %17, !llvm.loop !36

70:                                               ; preds = %17
  %71 = load ptr, ptr %5, align 8, !tbaa !27
  %72 = getelementptr inbounds nuw %struct.R_flstr, ptr %71, i32 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !37
  %74 = load ptr, ptr %6, align 8, !tbaa !27
  %75 = getelementptr inbounds nuw %struct.R_flstr, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !37
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load ptr, ptr %5, align 8, !tbaa !27
  %80 = load ptr, ptr %6, align 8, !tbaa !27
  %81 = call ptr @F_floatmagadd(ptr noundef %79, ptr noundef %80)
  store ptr %81, ptr %8, align 8, !tbaa !27
  br label %86

82:                                               ; preds = %70
  %83 = load ptr, ptr %5, align 8, !tbaa !27
  %84 = load ptr, ptr %6, align 8, !tbaa !27
  %85 = call ptr @F_floatsub(ptr noundef %83, ptr noundef %84)
  store ptr %85, ptr %8, align 8, !tbaa !27
  br label %86

86:                                               ; preds = %82, %78
  %87 = load ptr, ptr %7, align 8, !tbaa !28
  store ptr %87, ptr %10, align 8, !tbaa !28
  br label %88

88:                                               ; preds = %129, %86
  %89 = load ptr, ptr %10, align 8, !tbaa !28
  %90 = icmp eq ptr %89, null
  %91 = xor i1 %90, true
  br i1 %91, label %92, label %133

92:                                               ; preds = %88
  %93 = load ptr, ptr %10, align 8, !tbaa !28
  %94 = getelementptr inbounds nuw %struct._T_tstr, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !31
  store ptr %95, ptr %9, align 8, !tbaa !27
  %96 = load ptr, ptr %10, align 8, !tbaa !28
  %97 = getelementptr inbounds nuw %struct._T_tstr, ptr %96, i32 0, i32 0
  %98 = load i32, ptr %97, align 8, !tbaa !29
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %122

101:                                              ; preds = %92
  %102 = load ptr, ptr %10, align 8, !tbaa !28
  %103 = getelementptr inbounds nuw %struct._T_tstr, ptr %102, i32 0, i32 0
  %104 = load i32, ptr %103, align 8, !tbaa !29
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load ptr, ptr %5, align 8, !tbaa !27
  %108 = load ptr, ptr %6, align 8, !tbaa !27
  %109 = call signext i32 @F_floatcmp(ptr noundef %107, ptr noundef %108)
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load ptr, ptr %5, align 8, !tbaa !27
  %113 = load ptr, ptr %9, align 8, !tbaa !27
  %114 = call ptr @F_floatmul(ptr noundef %112, ptr noundef %113)
  store ptr %114, ptr %9, align 8, !tbaa !27
  br label %119

115:                                              ; preds = %106
  %116 = load ptr, ptr %6, align 8, !tbaa !27
  %117 = load ptr, ptr %9, align 8, !tbaa !27
  %118 = call ptr @F_floatmul(ptr noundef %116, ptr noundef %117)
  store ptr %118, ptr %9, align 8, !tbaa !27
  br label %119

119:                                              ; preds = %115, %111
  br label %121

120:                                              ; preds = %101
  call void @Z_fatal(ptr noundef @.str.3)
  br label %121

121:                                              ; preds = %120, %119
  br label %122

122:                                              ; preds = %121, %100
  %123 = load ptr, ptr %8, align 8, !tbaa !27
  %124 = load ptr, ptr %9, align 8, !tbaa !27
  %125 = call signext i32 @F_floatcmp(ptr noundef %123, ptr noundef %124)
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i32 0, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %134

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128
  %130 = load ptr, ptr %10, align 8, !tbaa !28
  %131 = getelementptr inbounds nuw %struct._T_tstr, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !35
  store ptr %132, ptr %10, align 8, !tbaa !28
  br label %88, !llvm.loop !38

133:                                              ; preds = %88
  store i32 1, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %134

134:                                              ; preds = %133, %127, %64
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #5
  %135 = load i32, ptr %4, align 4
  ret i32 %135
}

declare ptr @T_picktol(...) #4

declare void @Z_fatal(...) #4

declare signext i32 @R_getexp(...) #4

declare ptr @F_floatmagadd(...) #4

declare ptr @F_floatsub(...) #4

declare signext i32 @F_floatcmp(ptr noundef, ptr noundef) #4

declare ptr @F_floatmul(...) #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }
attributes #7 = { nounwind willreturn memory(read) }

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
!9 = !{!10, !11, i64 16}
!10 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !11, i64 16, !12, i64 24, !13, i64 32}
!11 = !{!"p1 omnipotent char", !8, i64 0}
!12 = !{!"p1 _ZTS7R_flstr", !8, i64 0}
!13 = !{!"p1 _ZTS7_T_tstr", !8, i64 0}
!14 = !{!11, !11, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 short", !8, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !5, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 int", !8, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!10, !4, i64 8}
!25 = !{!10, !12, i64 24}
!26 = !{!10, !13, i64 32}
!27 = !{!12, !12, i64 0}
!28 = !{!13, !13, i64 0}
!29 = !{!30, !4, i64 0}
!30 = !{!"_T_tstr", !4, i64 0, !12, i64 8, !13, i64 16}
!31 = !{!30, !12, i64 8}
!32 = !{!33, !4, i64 0}
!33 = !{!"R_flstr", !4, i64 0, !4, i64 4, !11, i64 8}
!34 = !{!33, !11, i64 8}
!35 = !{!30, !13, i64 16}
!36 = distinct !{!36, !23}
!37 = !{!33, !4, i64 4}
!38 = distinct !{!38, !23}
