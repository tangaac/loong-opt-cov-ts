; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/spiff.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/spiff.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

@_K_btm = external global i32, align 4
@_K_atm = external global i32, align 4
@_L_brlm = external global i32, align 4
@_L_arlm = external global i32, align 4
@_Y_flags = internal global i32 0, align 4
@_Y_vflag = internal global i32 0, align 4
@_Y_eflag = internal global i32 0, align 4
@_T_gtol = external global ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't open command file\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"literal  \22   \22    \\ \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"comment  /*  */\09 \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"literal  &&\09\09 \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"literal  ||\09\09 \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"literal  <=\09\09 \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"literal  >=\09\09 \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"literal  !=\09\09 \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"literal  ==\09\09 \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"literal  --\09\09 \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"literal  ++\09\09 \00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"literal  <<\09\09 \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"literal  >>\09\09 \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"literal  ->\09\09 \00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"addalpha _\09\09 \00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"tol      a0 \09\09 \00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"literal  '    '    \\\09\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"comment  #    $\09\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"tol      a0 \09\09\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"literal  '\09'     ' \00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"comment  ^C   $\09\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"literal  \22 \09\22\09\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"comment  ; \09$\09\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"literal ' \09'\09\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"literal \22\09\22\09\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"comment (*\09*)\09\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"literal :=\09\09\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"literal <>\09\09\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"literal <=\09\09\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"literal >=\09\09\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"don't understand arguments\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"spiff requires two file names.\0A\00", align 1

; Function Attrs: nounwind
define dso_local signext i32 @main(i32 noundef signext %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x ptr], align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #5
  %11 = load i32, ptr %4, align 4, !tbaa !3
  %12 = load ptr, ptr %5, align 8, !tbaa !7
  %13 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 0
  %14 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1
  call void @_Y_doargs(i32 noundef signext %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %8)
  call void @T_initdefault()
  store i32 0, ptr %9, align 4, !tbaa !3
  br label %15

15:                                               ; preds = %41, %2
  %16 = load i32, ptr %9, align 4, !tbaa !3
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load i32, ptr %9, align 4, !tbaa !3
  %20 = load i32, ptr %9, align 4, !tbaa !3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = call signext i32 @L_init_file(i32 noundef signext %19, ptr noundef %23)
  %25 = load i32, ptr %9, align 4, !tbaa !3
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 0, ptr @_K_btm, align 4, !tbaa !3
  br label %29

28:                                               ; preds = %18
  store i32 0, ptr @_K_atm, align 4, !tbaa !3
  br label %29

29:                                               ; preds = %28, %27
  %30 = phi i32 [ 0, %27 ], [ 0, %28 ]
  %31 = load i32, ptr %9, align 4, !tbaa !3
  %32 = load i32, ptr %9, align 4, !tbaa !3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, ptr @_L_brlm, align 4, !tbaa !3
  br label %38

36:                                               ; preds = %29
  %37 = load i32, ptr @_L_arlm, align 4, !tbaa !3
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, ptr @_Y_flags, align 4, !tbaa !3
  call void @P_file_parse(i32 noundef signext %31, i32 noundef signext 0, i32 noundef signext %39, i32 noundef signext %40)
  br label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %9, align 4, !tbaa !3
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %9, align 4, !tbaa !3
  br label %15, !llvm.loop !13

44:                                               ; preds = %15
  %45 = load i32, ptr @_Y_vflag, align 4, !tbaa !3
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, ptr @_Y_flags, align 4, !tbaa !3
  %49 = call signext i32 @V_visual(i32 noundef signext %48)
  store i32 %49, ptr %3, align 4
  store i32 1, ptr %10, align 4
  br label %87

50:                                               ; preds = %44
  %51 = load i32, ptr %8, align 4, !tbaa !3
  %52 = icmp eq i32 -1, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, ptr @_K_atm, align 4, !tbaa !3
  %55 = load i32, ptr @_K_btm, align 4, !tbaa !3
  %56 = add nsw i32 %54, %55
  store i32 %56, ptr %8, align 4, !tbaa !3
  br label %57

57:                                               ; preds = %53, %50
  store i32 0, ptr %9, align 4, !tbaa !3
  br label %58

58:                                               ; preds = %77, %57
  %59 = load i32, ptr %9, align 4, !tbaa !3
  %60 = icmp sle i32 %59, 30000
  br i1 %60, label %61, label %80

61:                                               ; preds = %58
  %62 = load i32, ptr @_Y_eflag, align 4, !tbaa !3
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, ptr @_K_atm, align 4, !tbaa !3
  %66 = load i32, ptr @_K_btm, align 4, !tbaa !3
  %67 = load i32, ptr %8, align 4, !tbaa !3
  %68 = load i32, ptr @_Y_flags, align 4, !tbaa !3
  %69 = call ptr @Q_do_exact(i32 noundef signext %65, i32 noundef signext %66, i32 noundef signext %67, i32 noundef signext %68)
  store ptr %69, ptr %6, align 8, !tbaa !15
  br label %76

70:                                               ; preds = %61
  %71 = load i32, ptr @_K_atm, align 4, !tbaa !3
  %72 = load i32, ptr @_K_btm, align 4, !tbaa !3
  %73 = load i32, ptr %8, align 4, !tbaa !3
  %74 = load i32, ptr @_Y_flags, align 4, !tbaa !3
  %75 = call ptr @G_do_miller(i32 noundef signext %71, i32 noundef signext %72, i32 noundef signext %73, i32 noundef signext %74)
  store ptr %75, ptr %6, align 8, !tbaa !15
  br label %76

76:                                               ; preds = %70, %64
  br label %77

77:                                               ; preds = %76
  %78 = load i32, ptr %9, align 4, !tbaa !3
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %9, align 4, !tbaa !3
  br label %58, !llvm.loop !17

80:                                               ; preds = %58
  %81 = load ptr, ptr %6, align 8, !tbaa !15
  %82 = icmp ne ptr null, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load ptr, ptr %6, align 8, !tbaa !15
  %85 = load i32, ptr @_Y_flags, align 4, !tbaa !3
  call void @O_output(ptr noundef %84, i32 noundef signext %85)
  store i32 1, ptr %3, align 4
  store i32 1, ptr %10, align 4
  br label %87

86:                                               ; preds = %80
  store i32 0, ptr %3, align 4
  store i32 1, ptr %10, align 4
  br label %87

87:                                               ; preds = %86, %83, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #5
  %88 = load i32, ptr %3, align 4
  ret i32 %88
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare void @T_initdefault(...) #2

declare signext i32 @L_init_file(i32 noundef signext, ptr noundef) #2

declare void @P_file_parse(...) #2

declare signext i32 @V_visual(i32 noundef signext) #2

declare ptr @Q_do_exact(...) #2

declare ptr @G_do_miller(...) #2

declare void @O_output(...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define internal void @_Y_doargs(i32 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [1024 x i8], align 1
  %13 = alloca ptr, align 8
  store i32 %0, ptr %6, align 4, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store ptr %2, ptr %8, align 8, !tbaa !7
  store ptr %3, ptr %9, align 8, !tbaa !7
  store ptr %4, ptr %10, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #5
  %14 = load ptr, ptr %10, align 8, !tbaa !18
  store i32 -1, ptr %14, align 4, !tbaa !3
  br label %15

15:                                               ; preds = %168, %5
  %16 = load i32, ptr %6, align 4, !tbaa !3
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load ptr, ptr %7, align 8, !tbaa !7
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = getelementptr inbounds i8, ptr %21, i64 0
  %23 = load i8, ptr %22, align 1, !tbaa !20
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br label %26

26:                                               ; preds = %18, %15
  %27 = phi i1 [ false, %15 ], [ %25, %18 ]
  br i1 %27, label %28, label %173

28:                                               ; preds = %26
  %29 = load ptr, ptr %7, align 8, !tbaa !7
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = getelementptr inbounds i8, ptr %31, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !20
  %34 = sext i8 %33 to i32
  switch i32 %34, label %167 [
    i32 116, label %35
    i32 119, label %38
    i32 98, label %41
    i32 99, label %44
    i32 100, label %47
    i32 109, label %50
    i32 97, label %53
    i32 114, label %74
    i32 105, label %95
    i32 101, label %96
    i32 118, label %97
    i32 113, label %98
    i32 115, label %99
    i32 102, label %120
    i32 67, label %155
    i32 83, label %156
    i32 70, label %157
    i32 76, label %158
    i32 77, label %159
    i32 48, label %160
    i32 49, label %160
    i32 50, label %160
    i32 51, label %160
    i32 52, label %160
    i32 53, label %160
    i32 54, label %160
    i32 55, label %160
    i32 56, label %160
    i32 57, label %160
  ]

35:                                               ; preds = %28
  %36 = load i32, ptr @_Y_flags, align 4, !tbaa !3
  %37 = or i32 %36, 8
  store i32 %37, ptr @_Y_flags, align 4, !tbaa !3
  br label %168

38:                                               ; preds = %28
  %39 = load i32, ptr @_Y_flags, align 4, !tbaa !3
  %40 = or i32 %39, 1
  store i32 %40, ptr @_Y_flags, align 4, !tbaa !3
  br label %168

41:                                               ; preds = %28
  %42 = load i32, ptr @_Y_flags, align 4, !tbaa !3
  %43 = or i32 %42, 2
  store i32 %43, ptr @_Y_flags, align 4, !tbaa !3
  br label %168

44:                                               ; preds = %28
  %45 = load i32, ptr @_Y_flags, align 4, !tbaa !3
  %46 = or i32 %45, 4
  store i32 %46, ptr @_Y_flags, align 4, !tbaa !3
  br label %168

47:                                               ; preds = %28
  %48 = load i32, ptr @_Y_flags, align 4, !tbaa !3
  %49 = or i32 %48, 32
  store i32 %49, ptr @_Y_flags, align 4, !tbaa !3
  br label %168

50:                                               ; preds = %28
  %51 = load i32, ptr @_Y_flags, align 4, !tbaa !3
  %52 = or i32 %51, 16
  store i32 %52, ptr @_Y_flags, align 4, !tbaa !3
  br label %168

53:                                               ; preds = %28
  %54 = load ptr, ptr %7, align 8, !tbaa !7
  %55 = getelementptr inbounds ptr, ptr %54, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !11
  %57 = call i64 @strlen(ptr noundef %56) #6
  %58 = icmp eq i64 %57, 2
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load ptr, ptr %7, align 8, !tbaa !7
  %61 = getelementptr inbounds nuw ptr, ptr %60, i32 1
  store ptr %61, ptr %7, align 8, !tbaa !7
  %62 = load i32, ptr %6, align 4, !tbaa !3
  %63 = add nsw i32 %62, -1
  store i32 %63, ptr %6, align 4, !tbaa !3
  %64 = load ptr, ptr %7, align 8, !tbaa !7
  %65 = getelementptr inbounds ptr, ptr %64, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  store ptr %66, ptr %11, align 8, !tbaa !11
  br label %72

67:                                               ; preds = %53
  %68 = load ptr, ptr %7, align 8, !tbaa !7
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !11
  %71 = getelementptr inbounds i8, ptr %70, i64 2
  store ptr %71, ptr %11, align 8, !tbaa !11
  br label %72

72:                                               ; preds = %67, %59
  %73 = load ptr, ptr %11, align 8, !tbaa !11
  call void @_T_addtol(ptr noundef @_T_gtol, i32 noundef signext 0, ptr noundef %73)
  br label %168

74:                                               ; preds = %28
  %75 = load ptr, ptr %7, align 8, !tbaa !7
  %76 = getelementptr inbounds ptr, ptr %75, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !11
  %78 = call i64 @strlen(ptr noundef %77) #6
  %79 = icmp eq i64 %78, 2
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load ptr, ptr %7, align 8, !tbaa !7
  %82 = getelementptr inbounds nuw ptr, ptr %81, i32 1
  store ptr %82, ptr %7, align 8, !tbaa !7
  %83 = load i32, ptr %6, align 4, !tbaa !3
  %84 = add nsw i32 %83, -1
  store i32 %84, ptr %6, align 4, !tbaa !3
  %85 = load ptr, ptr %7, align 8, !tbaa !7
  %86 = getelementptr inbounds ptr, ptr %85, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !11
  store ptr %87, ptr %11, align 8, !tbaa !11
  br label %93

88:                                               ; preds = %74
  %89 = load ptr, ptr %7, align 8, !tbaa !7
  %90 = getelementptr inbounds ptr, ptr %89, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !11
  %92 = getelementptr inbounds i8, ptr %91, i64 2
  store ptr %92, ptr %11, align 8, !tbaa !11
  br label %93

93:                                               ; preds = %88, %80
  %94 = load ptr, ptr %11, align 8, !tbaa !11
  call void @_T_addtol(ptr noundef @_T_gtol, i32 noundef signext 1, ptr noundef %94)
  br label %168

95:                                               ; preds = %28
  call void @_T_addtol(ptr noundef @_T_gtol, i32 noundef signext 2, ptr noundef null)
  br label %168

96:                                               ; preds = %28
  store i32 1, ptr @_Y_eflag, align 4, !tbaa !3
  br label %168

97:                                               ; preds = %28
  store i32 1, ptr @_Y_vflag, align 4, !tbaa !3
  br label %168

98:                                               ; preds = %28
  call void @Z_setquiet()
  br label %168

99:                                               ; preds = %28
  %100 = load ptr, ptr %7, align 8, !tbaa !7
  %101 = getelementptr inbounds ptr, ptr %100, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !11
  %103 = call i64 @strlen(ptr noundef %102) #6
  %104 = icmp eq i64 %103, 2
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load ptr, ptr %7, align 8, !tbaa !7
  %107 = getelementptr inbounds nuw ptr, ptr %106, i32 1
  store ptr %107, ptr %7, align 8, !tbaa !7
  %108 = load i32, ptr %6, align 4, !tbaa !3
  %109 = add nsw i32 %108, -1
  store i32 %109, ptr %6, align 4, !tbaa !3
  %110 = load ptr, ptr %7, align 8, !tbaa !7
  %111 = getelementptr inbounds ptr, ptr %110, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !11
  store ptr %112, ptr %11, align 8, !tbaa !11
  br label %118

113:                                              ; preds = %99
  %114 = load ptr, ptr %7, align 8, !tbaa !7
  %115 = getelementptr inbounds ptr, ptr %114, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !11
  %117 = getelementptr inbounds i8, ptr %116, i64 2
  store ptr %117, ptr %11, align 8, !tbaa !11
  br label %118

118:                                              ; preds = %113, %105
  %119 = load ptr, ptr %11, align 8, !tbaa !11
  call void @_Y_cmdlines(ptr noundef %119)
  br label %168

120:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 1024, ptr %12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #5
  %121 = load ptr, ptr %7, align 8, !tbaa !7
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !11
  %124 = call i64 @strlen(ptr noundef %123) #6
  %125 = icmp eq i64 %124, 2
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load ptr, ptr %7, align 8, !tbaa !7
  %128 = getelementptr inbounds nuw ptr, ptr %127, i32 1
  store ptr %128, ptr %7, align 8, !tbaa !7
  %129 = load i32, ptr %6, align 4, !tbaa !3
  %130 = add nsw i32 %129, -1
  store i32 %130, ptr %6, align 4, !tbaa !3
  %131 = load ptr, ptr %7, align 8, !tbaa !7
  %132 = getelementptr inbounds ptr, ptr %131, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !11
  store ptr %133, ptr %11, align 8, !tbaa !11
  br label %139

134:                                              ; preds = %120
  %135 = load ptr, ptr %7, align 8, !tbaa !7
  %136 = getelementptr inbounds ptr, ptr %135, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !11
  %138 = getelementptr inbounds i8, ptr %137, i64 2
  store ptr %138, ptr %11, align 8, !tbaa !11
  br label %139

139:                                              ; preds = %134, %126
  %140 = load ptr, ptr %11, align 8, !tbaa !11
  %141 = call noalias ptr @fopen(ptr noundef %140, ptr noundef @.str)
  store ptr %141, ptr %13, align 8, !tbaa !21
  %142 = icmp eq ptr null, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  call void @Z_fatal(ptr noundef @.str.1)
  br label %144

144:                                              ; preds = %143, %139
  br label %145

145:                                              ; preds = %150, %144
  %146 = getelementptr inbounds [1024 x i8], ptr %12, i64 0, i64 0
  %147 = load ptr, ptr %13, align 8, !tbaa !21
  %148 = call ptr @fgets(ptr noundef %146, i32 noundef signext 1024, ptr noundef %147)
  %149 = icmp ne ptr null, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = getelementptr inbounds [1024 x i8], ptr %12, i64 0, i64 0
  call void @C_addcmd(ptr noundef %151)
  br label %145, !llvm.loop !23

152:                                              ; preds = %145
  %153 = load ptr, ptr %13, align 8, !tbaa !21
  %154 = call signext i32 @fclose(ptr noundef %153)
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr %12) #5
  br label %168

155:                                              ; preds = %28
  call void @C_addcmd(ptr noundef @.str.2)
  call void @C_addcmd(ptr noundef @.str.3)
  call void @C_addcmd(ptr noundef @.str.4)
  call void @C_addcmd(ptr noundef @.str.5)
  call void @C_addcmd(ptr noundef @.str.6)
  call void @C_addcmd(ptr noundef @.str.7)
  call void @C_addcmd(ptr noundef @.str.8)
  call void @C_addcmd(ptr noundef @.str.9)
  call void @C_addcmd(ptr noundef @.str.10)
  call void @C_addcmd(ptr noundef @.str.11)
  call void @C_addcmd(ptr noundef @.str.12)
  call void @C_addcmd(ptr noundef @.str.13)
  call void @C_addcmd(ptr noundef @.str.14)
  call void @C_addcmd(ptr noundef @.str.15)
  call void @C_addcmd(ptr noundef @.str.16)
  br label %168

156:                                              ; preds = %28
  call void @C_addcmd(ptr noundef @.str.17)
  call void @C_addcmd(ptr noundef @.str.18)
  call void @C_addcmd(ptr noundef @.str.19)
  br label %168

157:                                              ; preds = %28
  call void @C_addcmd(ptr noundef @.str.20)
  call void @C_addcmd(ptr noundef @.str.21)
  call void @C_addcmd(ptr noundef @.str.19)
  br label %168

158:                                              ; preds = %28
  call void @C_addcmd(ptr noundef @.str.22)
  call void @C_addcmd(ptr noundef @.str.23)
  call void @C_addcmd(ptr noundef @.str.19)
  br label %168

159:                                              ; preds = %28
  call void @C_addcmd(ptr noundef @.str.24)
  call void @C_addcmd(ptr noundef @.str.25)
  call void @C_addcmd(ptr noundef @.str.26)
  call void @C_addcmd(ptr noundef @.str.27)
  call void @C_addcmd(ptr noundef @.str.28)
  call void @C_addcmd(ptr noundef @.str.29)
  call void @C_addcmd(ptr noundef @.str.30)
  call void @C_addcmd(ptr noundef @.str.19)
  br label %168

160:                                              ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %161 = load ptr, ptr %7, align 8, !tbaa !7
  %162 = getelementptr inbounds ptr, ptr %161, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !11
  %164 = getelementptr inbounds i8, ptr %163, i64 1
  %165 = call signext i32 @atoi(ptr noundef %164) #6
  %166 = load ptr, ptr %10, align 8, !tbaa !18
  store i32 %165, ptr %166, align 4, !tbaa !3
  br label %168

167:                                              ; preds = %28
  call void @Z_fatal(ptr noundef @.str.31)
  br label %168

168:                                              ; preds = %167, %160, %159, %158, %157, %156, %155, %152, %118, %98, %97, %96, %95, %93, %72, %50, %47, %44, %41, %38, %35
  %169 = load ptr, ptr %7, align 8, !tbaa !7
  %170 = getelementptr inbounds nuw ptr, ptr %169, i32 1
  store ptr %170, ptr %7, align 8, !tbaa !7
  %171 = load i32, ptr %6, align 4, !tbaa !3
  %172 = add nsw i32 %171, -1
  store i32 %172, ptr %6, align 4, !tbaa !3
  br label %15, !llvm.loop !24

173:                                              ; preds = %26
  %174 = load i32, ptr %6, align 4, !tbaa !3
  %175 = icmp ne i32 %174, 3
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  call void @Z_fatal(ptr noundef @.str.32)
  br label %177

177:                                              ; preds = %176, %173
  %178 = load ptr, ptr %7, align 8, !tbaa !7
  %179 = getelementptr inbounds ptr, ptr %178, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !11
  %181 = load ptr, ptr %8, align 8, !tbaa !7
  store ptr %180, ptr %181, align 8, !tbaa !11
  %182 = load ptr, ptr %7, align 8, !tbaa !7
  %183 = getelementptr inbounds ptr, ptr %182, i64 2
  %184 = load ptr, ptr %183, align 8, !tbaa !11
  %185 = load ptr, ptr %9, align 8, !tbaa !7
  store ptr %184, ptr %185, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #5
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare void @_T_addtol(...) #2

declare void @Z_setquiet(...) #2

; Function Attrs: nounwind
define internal void @_Y_cmdlines(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1024 x i8], align 1
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 1024, ptr %3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #5
  br label %5

5:                                                ; preds = %40, %1
  %6 = load ptr, ptr %2, align 8, !tbaa !11
  %7 = load i8, ptr %6, align 1, !tbaa !20
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 0, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %5
  %11 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 0
  store ptr %11, ptr %4, align 8, !tbaa !11
  br label %12

12:                                               ; preds = %24, %10
  %13 = load ptr, ptr %2, align 8, !tbaa !11
  %14 = load i8, ptr %13, align 1, !tbaa !20
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 0, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 8, !tbaa !11
  %19 = load i8, ptr %18, align 1, !tbaa !20
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 10, %20
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = load ptr, ptr %2, align 8, !tbaa !11
  %26 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %26, ptr %2, align 8, !tbaa !11
  %27 = load i8, ptr %25, align 1, !tbaa !20
  %28 = load ptr, ptr %4, align 8, !tbaa !11
  %29 = getelementptr inbounds nuw i8, ptr %28, i32 1
  store ptr %29, ptr %4, align 8, !tbaa !11
  store i8 %27, ptr %28, align 1, !tbaa !20
  br label %12, !llvm.loop !25

30:                                               ; preds = %22
  %31 = load ptr, ptr %4, align 8, !tbaa !11
  store i8 0, ptr %31, align 1, !tbaa !20
  %32 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 0
  call void @C_addcmd(ptr noundef %32)
  %33 = load ptr, ptr %2, align 8, !tbaa !11
  %34 = load i8, ptr %33, align 1, !tbaa !20
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 10, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load ptr, ptr %2, align 8, !tbaa !11
  %39 = getelementptr inbounds nuw i8, ptr %38, i32 1
  store ptr %39, ptr %2, align 8, !tbaa !11
  br label %40

40:                                               ; preds = %37, %30
  br label %5, !llvm.loop !26

41:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr %3) #5
  ret void
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare void @Z_fatal(...) #2

declare ptr @fgets(ptr noundef, i32 noundef signext, ptr noundef) #2

declare void @C_addcmd(...) #2

declare signext i32 @fclose(ptr noundef) #2

; Function Attrs: inlinehint nounwind willreturn memory(read)
define available_externally signext i32 @atoi(ptr noundef nonnull %0) #4 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !11
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = call i64 @strtol(ptr noundef %3, ptr noundef null, i32 noundef signext 10) #5
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef signext) #0

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { inlinehint nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p2 omnipotent char", !9, i64 0}
!9 = !{!"any p2 pointer", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS3edt", !10, i64 0}
!17 = distinct !{!17, !14}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 int", !10, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
