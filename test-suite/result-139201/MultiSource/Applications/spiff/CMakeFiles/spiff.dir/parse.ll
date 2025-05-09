; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/parse.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/parse.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct._K_str = type { i32, i32, i32, ptr, ptr, ptr }
%struct._W_bolstruct = type { [16 x i8], [16 x i8], [16 x i8] }
%struct._W_comstruct = type { [16 x i8], [16 x i8], [16 x i8], i32 }
%struct._W_litstruct = type { [16 x i8], [16 x i8], [16 x i8] }

@_P_alpha = internal global [256 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [47 x i8] c"too many characters added to extended alphabet\00", align 1
@_P_fnumb = internal global i32 0, align 4
@_P_start = internal global i32 0, align 4
@_P_lcount = internal global i32 0, align 4
@_P_flags = internal global i32 0, align 4
@_P_dummyline = internal global [2 x i8] zeroinitializer, align 1
@_P_nextchr = internal global ptr null, align 8
@_P_has_content = internal global i32 0, align 4
@_P_next_tol = internal global i32 0, align 4
@_L_bc = external global [0 x i32], align 4
@_L_btlm = external global i32, align 4
@_L_atlm = external global i32, align 4
@_L_ac = external global [0 x i32], align 4
@_P_realline = internal global i32 0, align 4
@Z_err_buf = external global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"parser got confused at end of file\0A\00", align 1
@_L_bclm = external global i32, align 4
@_L_aclm = external global i32, align 4
@_P_firstchr = internal global ptr null, align 8
@_L_btlindex = external global [0 x i32], align 4
@_L_atlindex = external global [0 x i32], align 4
@_K_btm = external global i32, align 4
@_K_atm = external global i32, align 4
@_L_bi = external global [0 x i32], align 4
@_L_ai = external global [0 x i32], align 4
@_P_stringsize = internal global i32 0, align 4
@_L_bl = external global [0 x ptr], align 8
@_L_bclindex = external global [0 x i32], align 4
@_L_al = external global [0 x ptr], align 8
@_L_aclindex = external global [0 x i32], align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"warning -- to many tokens in file only first %d tokens will be used.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"scanned %d words from file #%d\0A\00", align 1

; Function Attrs: nounwind
define dso_local void @P_addalpha(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1024 x i8], align 1
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 1024, ptr %3) #5
  %4 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 0
  %5 = load ptr, ptr %2, align 8, !tbaa !3
  call void @S_wordcpy(ptr noundef %4, ptr noundef %5)
  %6 = call i64 @strlen(ptr noundef @_P_alpha) #6
  %7 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 0
  %8 = call i64 @strlen(ptr noundef %7) #6
  %9 = add i64 %6, %8
  %10 = icmp uge i64 %9, 256
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  call void @Z_fatal(ptr noundef @.str)
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 0
  %14 = call ptr @strcat(ptr noundef @_P_alpha, ptr noundef %13) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr %3) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare void @S_wordcpy(...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare void @Z_fatal(...) #2

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local void @P_file_parse(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !8
  store i32 %1, ptr %6, align 4, !tbaa !8
  store i32 %2, ptr %7, align 4, !tbaa !8
  store i32 %3, ptr %8, align 4, !tbaa !8
  %9 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %9, ptr @_P_fnumb, align 4, !tbaa !8
  %10 = load i32, ptr %6, align 4, !tbaa !8
  store i32 %10, ptr @_P_start, align 4, !tbaa !8
  %11 = load i32, ptr %7, align 4, !tbaa !8
  store i32 %11, ptr @_P_lcount, align 4, !tbaa !8
  %12 = load i32, ptr %8, align 4, !tbaa !8
  store i32 %12, ptr @_P_flags, align 4, !tbaa !8
  call void @_P_initparser()
  store ptr @_P_dummyline, ptr @_P_nextchr, align 8, !tbaa !3
  store i32 0, ptr @_P_has_content, align 4, !tbaa !8
  store i32 0, ptr @_P_next_tol, align 4, !tbaa !8
  %13 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %22

20:                                               ; preds = %15
  %21 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [0 x i32], ptr @_L_bc, i64 0, i64 %24
  store i32 0, ptr %25, align 4, !tbaa !8
  br label %37

26:                                               ; preds = %4
  %27 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %33

31:                                               ; preds = %26
  %32 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @_L_ac, i64 0, i64 %35
  store i32 0, ptr %36, align 4, !tbaa !8
  br label %37

37:                                               ; preds = %33, %22
  %38 = phi i32 [ 0, %22 ], [ 0, %33 ]
  %39 = load i32, ptr @_P_start, align 4, !tbaa !8
  %40 = sub nsw i32 %39, 1
  store i32 %40, ptr @_P_realline, align 4, !tbaa !8
  call void @_P_do_parse()
  %41 = load i32, ptr @_P_has_content, align 4, !tbaa !8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %95

43:                                               ; preds = %37
  %44 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.1) #5
  call void @Z_complain(ptr noundef @Z_err_buf)
  %45 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, ptr @_L_bclm, align 4, !tbaa !8
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr @_L_bclm, align 4, !tbaa !8
  br label %53

50:                                               ; preds = %43
  %51 = load i32, ptr @_L_aclm, align 4, !tbaa !8
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr @_L_aclm, align 4, !tbaa !8
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %48, %47 ], [ %51, %50 ]
  %55 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %64

62:                                               ; preds = %57
  %63 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [0 x i32], ptr @_L_bc, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %94

70:                                               ; preds = %53
  %71 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %77

75:                                               ; preds = %70
  %76 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [0 x i32], ptr @_L_ac, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %77, %64
  %84 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr @_L_btlm, align 4, !tbaa !8
  br label %92

89:                                               ; preds = %83
  %90 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr @_L_atlm, align 4, !tbaa !8
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i32 [ %87, %86 ], [ %90, %89 ]
  br label %94

94:                                               ; preds = %92, %77, %64
  br label %95

95:                                               ; preds = %94, %37
  ret void
}

; Function Attrs: nounwind
declare signext i32 @sprintf(ptr noundef, ptr noundef, ...) #0

declare void @Z_complain(...) #2

; Function Attrs: nounwind
define internal void @_P_initparser() #0 {
  store i8 0, ptr @_P_dummyline, align 1, !tbaa !10
  call void @C_clear_cmd()
  call void @T_clear_tols()
  call void @W_clearcoms()
  call void @W_clearlits()
  call void @_P_alpha_clear()
  call void @C_docmds()
  ret void
}

declare void @C_clear_cmd(...) #2

declare void @T_clear_tols(...) #2

declare void @W_clearcoms(...) #2

declare void @W_clearlits(...) #2

declare void @C_docmds(...) #2

; Function Attrs: nounwind
define internal void @_P_alpha_clear() #0 {
  store i8 0, ptr @_P_alpha, align 1, !tbaa !10
  ret void
}

; Function Attrs: nounwind
define internal void @_P_do_parse() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #5
  br label %13

13:                                               ; preds = %614, %64, %52, %34, %24, %0
  br label %14

14:                                               ; preds = %13
  %15 = call signext i32 @_P_needmore()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = call signext i32 @_P_nextline()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, ptr %11, align 4
  br label %615

21:                                               ; preds = %17
  %22 = load i32, ptr @_P_has_content, align 4, !tbaa !8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %13

25:                                               ; preds = %21
  %26 = load ptr, ptr @_P_firstchr, align 8, !tbaa !3
  %27 = call ptr @W_isbol(ptr noundef %26)
  store ptr %27, ptr %5, align 8, !tbaa !11
  %28 = icmp ne ptr %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load ptr, ptr %5, align 8, !tbaa !11
  %31 = call signext i32 @_P_bolsnarf(ptr noundef %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, ptr %11, align 4
  br label %615

34:                                               ; preds = %29
  br label %13

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %14
  %37 = load i32, ptr @_P_flags, align 4, !tbaa !8
  %38 = and i32 1, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %36
  %41 = call ptr @__ctype_b_loc() #7
  %42 = load ptr, ptr %41, align 8, !tbaa !12
  %43 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %44 = load i8, ptr %43, align 1, !tbaa !10
  %45 = sext i8 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i16, ptr %42, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !14
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 8192
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %54 = getelementptr inbounds nuw i8, ptr %53, i32 1
  store ptr %54, ptr @_P_nextchr, align 8, !tbaa !3
  br label %13

55:                                               ; preds = %40, %36
  %56 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %57 = call ptr @W_iscom(ptr noundef %56)
  store ptr %57, ptr %6, align 8, !tbaa !11
  %58 = icmp ne ptr %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load ptr, ptr %6, align 8, !tbaa !11
  %61 = call signext i32 @_P_comsnarf(ptr noundef %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, ptr %11, align 4
  br label %615

64:                                               ; preds = %59
  br label %13

65:                                               ; preds = %55
  %66 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %75

73:                                               ; preds = %68
  %74 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [0 x i32], ptr @_L_bc, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %179, label %94

81:                                               ; preds = %65
  %82 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %88

86:                                               ; preds = %81
  %87 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [0 x i32], ptr @_L_ac, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %179, label %94

94:                                               ; preds = %88, %75
  %95 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %94
  %98 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, ptr @_L_bclm, align 4, !tbaa !8
  br label %104

102:                                              ; preds = %97
  %103 = load i32, ptr @_L_aclm, align 4, !tbaa !8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %112

110:                                              ; preds = %104
  %111 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %114
  store i32 %105, ptr %115, align 4, !tbaa !8
  br label %135

116:                                              ; preds = %94
  %117 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, ptr @_L_bclm, align 4, !tbaa !8
  br label %123

121:                                              ; preds = %116
  %122 = load i32, ptr @_L_aclm, align 4, !tbaa !8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %131

129:                                              ; preds = %123
  %130 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %133
  store i32 %124, ptr %134, align 4, !tbaa !8
  br label %135

135:                                              ; preds = %131, %112
  %136 = phi i32 [ %105, %112 ], [ %124, %131 ]
  %137 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %135
  %140 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, ptr @_K_btm, align 4, !tbaa !8
  br label %146

144:                                              ; preds = %139
  %145 = load i32, ptr @_K_atm, align 4, !tbaa !8
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  %148 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %154

152:                                              ; preds = %146
  %153 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [0 x i32], ptr @_L_bi, i64 0, i64 %156
  store i32 %147, ptr %157, align 4, !tbaa !8
  br label %177

158:                                              ; preds = %135
  %159 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load i32, ptr @_K_btm, align 4, !tbaa !8
  br label %165

163:                                              ; preds = %158
  %164 = load i32, ptr @_K_atm, align 4, !tbaa !8
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %167 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %173

171:                                              ; preds = %165
  %172 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [0 x i32], ptr @_L_ai, i64 0, i64 %175
  store i32 %166, ptr %176, align 4, !tbaa !8
  br label %177

177:                                              ; preds = %173, %154
  %178 = phi i32 [ %147, %154 ], [ %166, %173 ]
  br label %179

179:                                              ; preds = %177, %88, %75
  %180 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %179
  %183 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %189

187:                                              ; preds = %182
  %188 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !8
  br label %206

194:                                              ; preds = %179
  %195 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %201

199:                                              ; preds = %194
  %200 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i32 [ %198, %197 ], [ %200, %199 ]
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !8
  br label %206

206:                                              ; preds = %201, %189
  %207 = phi i32 [ %193, %189 ], [ %205, %201 ]
  store i32 %207, ptr %8, align 4, !tbaa !8
  %208 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %209 = load ptr, ptr @_P_firstchr, align 8, !tbaa !3
  %210 = ptrtoint ptr %208 to i64
  %211 = ptrtoint ptr %209 to i64
  %212 = sub i64 %210, %211
  %213 = trunc i64 %212 to i32
  store i32 %213, ptr %10, align 4, !tbaa !8
  %214 = call ptr @_Z_myalloc(i64 noundef 40)
  store ptr %214, ptr %4, align 8, !tbaa !11
  %215 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %206
  %218 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %221

219:                                              ; preds = %206
  %220 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %221

221:                                              ; preds = %219, %217
  %222 = phi i32 [ %218, %217 ], [ %220, %219 ]
  %223 = load ptr, ptr %4, align 8, !tbaa !11
  %224 = getelementptr inbounds nuw %struct._K_str, ptr %223, i32 0, i32 0
  store i32 %222, ptr %224, align 8, !tbaa !16
  %225 = load i32, ptr %10, align 4, !tbaa !8
  %226 = load ptr, ptr %4, align 8, !tbaa !11
  %227 = getelementptr inbounds nuw %struct._K_str, ptr %226, i32 0, i32 1
  store i32 %225, ptr %227, align 4, !tbaa !20
  store i32 0, ptr %3, align 4, !tbaa !8
  %228 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %229 = call ptr @W_islit(ptr noundef %228)
  store ptr %229, ptr %7, align 8, !tbaa !11
  %230 = icmp ne ptr %229, null
  br i1 %230, label %231, label %370

231:                                              ; preds = %221
  %232 = load ptr, ptr %7, align 8, !tbaa !11
  %233 = call signext i32 @_P_litsnarf(ptr noundef %232)
  store i32 %233, ptr %3, align 4, !tbaa !8
  %234 = load ptr, ptr %4, align 8, !tbaa !11
  %235 = getelementptr inbounds nuw %struct._K_str, ptr %234, i32 0, i32 2
  store i32 1, ptr %235, align 8, !tbaa !21
  %236 = load i32, ptr @_P_stringsize, align 4, !tbaa !8
  call void @S_allocstr(ptr noundef %1, i32 noundef signext %236)
  %237 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %231
  %240 = load i32, ptr @_L_bclm, align 4, !tbaa !8
  br label %243

241:                                              ; preds = %231
  %242 = load i32, ptr @_L_aclm, align 4, !tbaa !8
  br label %243

243:                                              ; preds = %241, %239
  %244 = phi i32 [ %240, %239 ], [ %242, %241 ]
  store i32 %244, ptr %9, align 4, !tbaa !8
  %245 = load i32, ptr %9, align 4, !tbaa !8
  %246 = load i32, ptr %8, align 4, !tbaa !8
  %247 = icmp sgt i32 %245, %246
  br i1 %247, label %248, label %334

248:                                              ; preds = %243
  %249 = load ptr, ptr %1, align 8, !tbaa !3
  %250 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %248
  %253 = load i32, ptr %8, align 4, !tbaa !8
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [0 x i32], ptr @_L_bclindex, i64 0, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !8
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [0 x ptr], ptr @_L_bl, i64 0, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !3
  br label %268

260:                                              ; preds = %248
  %261 = load i32, ptr %8, align 4, !tbaa !8
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [0 x i32], ptr @_L_aclindex, i64 0, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !8
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [0 x ptr], ptr @_L_al, i64 0, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !3
  br label %268

268:                                              ; preds = %260, %252
  %269 = phi ptr [ %259, %252 ], [ %267, %260 ]
  %270 = load i32, ptr %10, align 4, !tbaa !8
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, ptr %269, i64 %271
  %273 = call ptr @strcpy(ptr noundef %249, ptr noundef %272) #5
  %274 = load i32, ptr %8, align 4, !tbaa !8
  %275 = add nsw i32 %274, 1
  store i32 %275, ptr %2, align 4, !tbaa !8
  br label %276

276:                                              ; preds = %303, %268
  %277 = load i32, ptr %2, align 4, !tbaa !8
  %278 = load i32, ptr %9, align 4, !tbaa !8
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %306

280:                                              ; preds = %276
  %281 = load ptr, ptr %1, align 8, !tbaa !3
  %282 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %280
  %285 = load i32, ptr %2, align 4, !tbaa !8
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [0 x i32], ptr @_L_bclindex, i64 0, i64 %286
  %288 = load i32, ptr %287, align 4, !tbaa !8
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [0 x ptr], ptr @_L_bl, i64 0, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !3
  br label %300

292:                                              ; preds = %280
  %293 = load i32, ptr %2, align 4, !tbaa !8
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [0 x i32], ptr @_L_aclindex, i64 0, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !8
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [0 x ptr], ptr @_L_al, i64 0, i64 %297
  %299 = load ptr, ptr %298, align 8, !tbaa !3
  br label %300

300:                                              ; preds = %292, %284
  %301 = phi ptr [ %291, %284 ], [ %299, %292 ]
  %302 = call ptr @strcat(ptr noundef %281, ptr noundef %301) #5
  br label %303

303:                                              ; preds = %300
  %304 = load i32, ptr %2, align 4, !tbaa !8
  %305 = add nsw i32 %304, 1
  store i32 %305, ptr %2, align 4, !tbaa !8
  br label %276, !llvm.loop !22

306:                                              ; preds = %276
  %307 = load ptr, ptr %1, align 8, !tbaa !3
  %308 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %306
  %311 = load i32, ptr %9, align 4, !tbaa !8
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [0 x i32], ptr @_L_bclindex, i64 0, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !8
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [0 x ptr], ptr @_L_bl, i64 0, i64 %315
  %317 = load ptr, ptr %316, align 8, !tbaa !3
  br label %326

318:                                              ; preds = %306
  %319 = load i32, ptr %9, align 4, !tbaa !8
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [0 x i32], ptr @_L_aclindex, i64 0, i64 %320
  %322 = load i32, ptr %321, align 4, !tbaa !8
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [0 x ptr], ptr @_L_al, i64 0, i64 %323
  %325 = load ptr, ptr %324, align 8, !tbaa !3
  br label %326

326:                                              ; preds = %318, %310
  %327 = phi ptr [ %317, %310 ], [ %325, %318 ]
  %328 = load i32, ptr @_P_stringsize, align 4, !tbaa !8
  %329 = sext i32 %328 to i64
  %330 = load ptr, ptr %1, align 8, !tbaa !3
  %331 = call i64 @strlen(ptr noundef %330) #6
  %332 = sub i64 %329, %331
  %333 = call ptr @strncat(ptr noundef %307, ptr noundef %327, i64 noundef %332) #5
  br label %366

334:                                              ; preds = %243
  %335 = load ptr, ptr %1, align 8, !tbaa !3
  %336 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %334
  %339 = load i32, ptr %8, align 4, !tbaa !8
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [0 x i32], ptr @_L_bclindex, i64 0, i64 %340
  %342 = load i32, ptr %341, align 4, !tbaa !8
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [0 x ptr], ptr @_L_bl, i64 0, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !3
  br label %354

346:                                              ; preds = %334
  %347 = load i32, ptr %8, align 4, !tbaa !8
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [0 x i32], ptr @_L_aclindex, i64 0, i64 %348
  %350 = load i32, ptr %349, align 4, !tbaa !8
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [0 x ptr], ptr @_L_al, i64 0, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !3
  br label %354

354:                                              ; preds = %346, %338
  %355 = phi ptr [ %345, %338 ], [ %353, %346 ]
  %356 = load i32, ptr %10, align 4, !tbaa !8
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i8, ptr %355, i64 %357
  %359 = load i32, ptr @_P_stringsize, align 4, !tbaa !8
  %360 = sext i32 %359 to i64
  %361 = call ptr @strncpy(ptr noundef %335, ptr noundef %358, i64 noundef %360) #5
  %362 = load ptr, ptr %1, align 8, !tbaa !3
  %363 = load i32, ptr @_P_stringsize, align 4, !tbaa !8
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8, ptr %362, i64 %364
  store i8 0, ptr %365, align 1, !tbaa !10
  br label %366

366:                                              ; preds = %354, %326
  %367 = load ptr, ptr %1, align 8, !tbaa !3
  %368 = load ptr, ptr %4, align 8, !tbaa !11
  %369 = getelementptr inbounds nuw %struct._K_str, ptr %368, i32 0, i32 3
  store ptr %367, ptr %369, align 8, !tbaa !24
  br label %532

370:                                              ; preds = %221
  %371 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %372 = load i32, ptr @_P_flags, align 4, !tbaa !8
  %373 = and i32 %372, 32
  %374 = load i32, ptr @_P_flags, align 4, !tbaa !8
  %375 = and i32 %374, 16
  %376 = call signext i32 @F_isfloat(ptr noundef %371, i32 noundef signext %373, i32 noundef signext %375)
  store i32 %376, ptr %2, align 4, !tbaa !8
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %411

378:                                              ; preds = %370
  %379 = load ptr, ptr %4, align 8, !tbaa !11
  %380 = getelementptr inbounds nuw %struct._K_str, ptr %379, i32 0, i32 3
  %381 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %382 = load i32, ptr %2, align 4, !tbaa !8
  call void @S_savenstr(ptr noundef %380, ptr noundef %381, i32 noundef signext %382)
  %383 = load ptr, ptr %4, align 8, !tbaa !11
  %384 = getelementptr inbounds nuw %struct._K_str, ptr %383, i32 0, i32 2
  store i32 2, ptr %384, align 8, !tbaa !21
  %385 = load i32, ptr @_P_flags, align 4, !tbaa !8
  %386 = and i32 %385, 2
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %399, label %388

388:                                              ; preds = %378
  %389 = load ptr, ptr %4, align 8, !tbaa !11
  %390 = getelementptr inbounds nuw %struct._K_str, ptr %389, i32 0, i32 3
  %391 = load ptr, ptr %390, align 8, !tbaa !24
  %392 = call ptr @F_atof(ptr noundef %391, i32 noundef signext 1)
  %393 = load ptr, ptr %4, align 8, !tbaa !11
  %394 = getelementptr inbounds nuw %struct._K_str, ptr %393, i32 0, i32 4
  store ptr %392, ptr %394, align 8, !tbaa !25
  %395 = load i32, ptr @_P_next_tol, align 4, !tbaa !8
  %396 = call ptr @T_gettol(i32 noundef signext %395)
  %397 = load ptr, ptr %4, align 8, !tbaa !11
  %398 = getelementptr inbounds nuw %struct._K_str, ptr %397, i32 0, i32 5
  store ptr %396, ptr %398, align 8, !tbaa !26
  br label %399

399:                                              ; preds = %388, %378
  %400 = load i32, ptr @_P_next_tol, align 4, !tbaa !8
  %401 = call signext i32 @T_moretols(i32 noundef signext %400)
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %399
  %404 = load i32, ptr @_P_next_tol, align 4, !tbaa !8
  %405 = add nsw i32 %404, 1
  store i32 %405, ptr @_P_next_tol, align 4, !tbaa !8
  br label %406

406:                                              ; preds = %403, %399
  %407 = load i32, ptr %2, align 4, !tbaa !8
  %408 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %409 = sext i32 %407 to i64
  %410 = getelementptr inbounds i8, ptr %408, i64 %409
  store ptr %410, ptr @_P_nextchr, align 8, !tbaa !3
  br label %531

411:                                              ; preds = %370
  %412 = call ptr @__ctype_b_loc() #7
  %413 = load ptr, ptr %412, align 8, !tbaa !12
  %414 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %415 = load i8, ptr %414, align 1, !tbaa !10
  %416 = sext i8 %415 to i32
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i16, ptr %413, i64 %417
  %419 = load i16, ptr %418, align 2, !tbaa !14
  %420 = zext i16 %419 to i32
  %421 = and i32 %420, 2048
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %453

423:                                              ; preds = %411
  %424 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  store ptr %424, ptr %1, align 8, !tbaa !3
  br label %425

425:                                              ; preds = %438, %423
  %426 = call ptr @__ctype_b_loc() #7
  %427 = load ptr, ptr %426, align 8, !tbaa !12
  %428 = load ptr, ptr %1, align 8, !tbaa !3
  %429 = load i8, ptr %428, align 1, !tbaa !10
  %430 = sext i8 %429 to i32
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i16, ptr %427, i64 %431
  %433 = load i16, ptr %432, align 2, !tbaa !14
  %434 = zext i16 %433 to i32
  %435 = and i32 %434, 2048
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %441

437:                                              ; preds = %425
  br label %438

438:                                              ; preds = %437
  %439 = load ptr, ptr %1, align 8, !tbaa !3
  %440 = getelementptr inbounds nuw i8, ptr %439, i32 1
  store ptr %440, ptr %1, align 8, !tbaa !3
  br label %425, !llvm.loop !27

441:                                              ; preds = %425
  %442 = load ptr, ptr %4, align 8, !tbaa !11
  %443 = getelementptr inbounds nuw %struct._K_str, ptr %442, i32 0, i32 3
  %444 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %445 = load ptr, ptr %1, align 8, !tbaa !3
  %446 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %447 = ptrtoint ptr %445 to i64
  %448 = ptrtoint ptr %446 to i64
  %449 = sub i64 %447, %448
  call void @S_savenstr(ptr noundef %443, ptr noundef %444, i64 noundef %449)
  %450 = load ptr, ptr %4, align 8, !tbaa !11
  %451 = getelementptr inbounds nuw %struct._K_str, ptr %450, i32 0, i32 2
  store i32 1, ptr %451, align 8, !tbaa !21
  %452 = load ptr, ptr %1, align 8, !tbaa !3
  store ptr %452, ptr @_P_nextchr, align 8, !tbaa !3
  br label %530

453:                                              ; preds = %411
  %454 = call ptr @__ctype_b_loc() #7
  %455 = load ptr, ptr %454, align 8, !tbaa !12
  %456 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %457 = load i8, ptr %456, align 1, !tbaa !10
  %458 = sext i8 %457 to i32
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i16, ptr %455, i64 %459
  %461 = load i16, ptr %460, align 2, !tbaa !14
  %462 = zext i16 %461 to i32
  %463 = and i32 %462, 1024
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %471, label %465

465:                                              ; preds = %453
  %466 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %467 = load i8, ptr %466, align 1, !tbaa !10
  %468 = sext i8 %467 to i32
  %469 = call signext i32 @_P_in_alpha(i32 noundef signext %468)
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %521

471:                                              ; preds = %465, %453
  %472 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  store ptr %472, ptr %1, align 8, !tbaa !3
  br label %473

473:                                              ; preds = %506, %471
  %474 = call ptr @__ctype_b_loc() #7
  %475 = load ptr, ptr %474, align 8, !tbaa !12
  %476 = load ptr, ptr %1, align 8, !tbaa !3
  %477 = load i8, ptr %476, align 1, !tbaa !10
  %478 = sext i8 %477 to i32
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i16, ptr %475, i64 %479
  %481 = load i16, ptr %480, align 2, !tbaa !14
  %482 = zext i16 %481 to i32
  %483 = and i32 %482, 1024
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %503, label %485

485:                                              ; preds = %473
  %486 = call ptr @__ctype_b_loc() #7
  %487 = load ptr, ptr %486, align 8, !tbaa !12
  %488 = load ptr, ptr %1, align 8, !tbaa !3
  %489 = load i8, ptr %488, align 1, !tbaa !10
  %490 = sext i8 %489 to i32
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i16, ptr %487, i64 %491
  %493 = load i16, ptr %492, align 2, !tbaa !14
  %494 = zext i16 %493 to i32
  %495 = and i32 %494, 2048
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %503, label %497

497:                                              ; preds = %485
  %498 = load ptr, ptr %1, align 8, !tbaa !3
  %499 = load i8, ptr %498, align 1, !tbaa !10
  %500 = sext i8 %499 to i32
  %501 = call signext i32 @_P_in_alpha(i32 noundef signext %500)
  %502 = icmp ne i32 %501, 0
  br label %503

503:                                              ; preds = %497, %485, %473
  %504 = phi i1 [ true, %485 ], [ true, %473 ], [ %502, %497 ]
  br i1 %504, label %505, label %509

505:                                              ; preds = %503
  br label %506

506:                                              ; preds = %505
  %507 = load ptr, ptr %1, align 8, !tbaa !3
  %508 = getelementptr inbounds nuw i8, ptr %507, i32 1
  store ptr %508, ptr %1, align 8, !tbaa !3
  br label %473, !llvm.loop !28

509:                                              ; preds = %503
  %510 = load ptr, ptr %4, align 8, !tbaa !11
  %511 = getelementptr inbounds nuw %struct._K_str, ptr %510, i32 0, i32 3
  %512 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %513 = load ptr, ptr %1, align 8, !tbaa !3
  %514 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %515 = ptrtoint ptr %513 to i64
  %516 = ptrtoint ptr %514 to i64
  %517 = sub i64 %515, %516
  call void @S_savenstr(ptr noundef %511, ptr noundef %512, i64 noundef %517)
  %518 = load ptr, ptr %4, align 8, !tbaa !11
  %519 = getelementptr inbounds nuw %struct._K_str, ptr %518, i32 0, i32 2
  store i32 1, ptr %519, align 8, !tbaa !21
  %520 = load ptr, ptr %1, align 8, !tbaa !3
  store ptr %520, ptr @_P_nextchr, align 8, !tbaa !3
  br label %529

521:                                              ; preds = %465
  %522 = load ptr, ptr %4, align 8, !tbaa !11
  %523 = getelementptr inbounds nuw %struct._K_str, ptr %522, i32 0, i32 3
  %524 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  call void @S_savenstr(ptr noundef %523, ptr noundef %524, i32 noundef signext 1)
  %525 = load ptr, ptr %4, align 8, !tbaa !11
  %526 = getelementptr inbounds nuw %struct._K_str, ptr %525, i32 0, i32 2
  store i32 1, ptr %526, align 8, !tbaa !21
  %527 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %528 = getelementptr inbounds nuw i8, ptr %527, i32 1
  store ptr %528, ptr @_P_nextchr, align 8, !tbaa !3
  br label %529

529:                                              ; preds = %521, %509
  br label %530

530:                                              ; preds = %529, %441
  br label %531

531:                                              ; preds = %530, %406
  br label %532

532:                                              ; preds = %531, %366
  %533 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %534 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %538

536:                                              ; preds = %532
  %537 = load i32, ptr @_K_btm, align 4, !tbaa !8
  br label %540

538:                                              ; preds = %532
  %539 = load i32, ptr @_K_atm, align 4, !tbaa !8
  br label %540

540:                                              ; preds = %538, %536
  %541 = phi i32 [ %537, %536 ], [ %539, %538 ]
  %542 = load ptr, ptr %4, align 8, !tbaa !11
  call void @K_settoken(i32 noundef signext %533, i32 noundef signext %541, ptr noundef %542)
  %543 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %558

545:                                              ; preds = %540
  %546 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %550

548:                                              ; preds = %545
  %549 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %552

550:                                              ; preds = %545
  %551 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %552

552:                                              ; preds = %550, %548
  %553 = phi i32 [ %549, %548 ], [ %551, %550 ]
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds [0 x i32], ptr @_L_bc, i64 0, i64 %554
  %556 = load i32, ptr %555, align 4, !tbaa !8
  %557 = add nsw i32 %556, 1
  store i32 %557, ptr %555, align 4, !tbaa !8
  br label %571

558:                                              ; preds = %540
  %559 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %563

561:                                              ; preds = %558
  %562 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %565

563:                                              ; preds = %558
  %564 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %565

565:                                              ; preds = %563, %561
  %566 = phi i32 [ %562, %561 ], [ %564, %563 ]
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [0 x i32], ptr @_L_ac, i64 0, i64 %567
  %569 = load i32, ptr %568, align 4, !tbaa !8
  %570 = add nsw i32 %569, 1
  store i32 %570, ptr %568, align 4, !tbaa !8
  br label %571

571:                                              ; preds = %565, %552
  %572 = phi i32 [ %556, %552 ], [ %569, %565 ]
  %573 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %578

575:                                              ; preds = %571
  %576 = load i32, ptr @_K_btm, align 4, !tbaa !8
  %577 = add nsw i32 %576, 1
  store i32 %577, ptr @_K_btm, align 4, !tbaa !8
  br label %581

578:                                              ; preds = %571
  %579 = load i32, ptr @_K_atm, align 4, !tbaa !8
  %580 = add nsw i32 %579, 1
  store i32 %580, ptr @_K_atm, align 4, !tbaa !8
  br label %581

581:                                              ; preds = %578, %575
  %582 = phi i32 [ %577, %575 ], [ %580, %578 ]
  %583 = icmp sge i32 %582, 50000
  br i1 %583, label %584, label %586

584:                                              ; preds = %581
  %585 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.2, i32 noundef signext 50000) #5
  call void @Z_complain(ptr noundef @Z_err_buf)
  store i32 1, ptr %11, align 4
  br label %615

586:                                              ; preds = %581
  %587 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %591

589:                                              ; preds = %586
  %590 = load i32, ptr @_K_btm, align 4, !tbaa !8
  br label %593

591:                                              ; preds = %586
  %592 = load i32, ptr @_K_atm, align 4, !tbaa !8
  br label %593

593:                                              ; preds = %591, %589
  %594 = phi i32 [ %590, %589 ], [ %592, %591 ]
  %595 = srem i32 %594, 1000
  %596 = icmp eq i32 0, %595
  br i1 %596, label %597, label %610

597:                                              ; preds = %593
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #5
  %598 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %602

600:                                              ; preds = %597
  %601 = load i32, ptr @_K_btm, align 4, !tbaa !8
  br label %604

602:                                              ; preds = %597
  %603 = load i32, ptr @_K_atm, align 4, !tbaa !8
  br label %604

604:                                              ; preds = %602, %600
  %605 = phi i32 [ %601, %600 ], [ %603, %602 ]
  store i32 %605, ptr %12, align 4, !tbaa !8
  %606 = load i32, ptr %12, align 4, !tbaa !8
  %607 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %608 = add nsw i32 %607, 1
  %609 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.3, i32 noundef signext %606, i32 noundef signext %608) #5
  call void @Z_chatter(ptr noundef @Z_err_buf)
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #5
  br label %610

610:                                              ; preds = %604, %593
  %611 = load i32, ptr %3, align 4, !tbaa !8
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %610
  store i32 1, ptr %11, align 4
  br label %615

614:                                              ; preds = %610
  br label %13

615:                                              ; preds = %613, %584, %63, %33, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #5
  ret void
}

declare ptr @W_isbol(...) #2

; Function Attrs: nounwind
define internal signext i32 @_P_bolsnarf(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 0
  %7 = call i64 @strlen(ptr noundef %6) #6
  %8 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %7
  store ptr %9, ptr @_P_nextchr, align 8, !tbaa !3
  %10 = load ptr, ptr %3, align 8, !tbaa !11
  %11 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds [16 x i8], ptr %11, i64 0, i64 0
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 0, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  br label %90

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %61, %87
  %19 = call signext i32 @_P_needmore()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = call signext i32 @_P_nextline()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1, ptr %2, align 4
  br label %90

25:                                               ; preds = %21
  %26 = load i32, ptr @_P_has_content, align 4, !tbaa !8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %3, align 8, !tbaa !11
  %30 = call signext i32 @W_is_bol(ptr noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, ptr %2, align 4
  br label %90

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %25
  br label %35

35:                                               ; preds = %34, %18
  %36 = load ptr, ptr %3, align 8, !tbaa !11
  %37 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %36, i32 0, i32 2
  %38 = getelementptr inbounds [16 x i8], ptr %37, i64 0, i64 0
  %39 = load i8, ptr %38, align 1, !tbaa !10
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 0, %40
  br i1 %41, label %42, label %73

42:                                               ; preds = %35
  %43 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %44 = load ptr, ptr %3, align 8, !tbaa !11
  %45 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %44, i32 0, i32 2
  %46 = getelementptr inbounds [16 x i8], ptr %45, i64 0, i64 0
  %47 = call signext i32 @S_wordcmp(ptr noundef %43, ptr noundef %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %42
  %50 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %51 = load ptr, ptr %3, align 8, !tbaa !11
  %52 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %51, i32 0, i32 2
  %53 = getelementptr inbounds [16 x i8], ptr %52, i64 0, i64 0
  %54 = call i64 @strlen(ptr noundef %53) #6
  %55 = getelementptr inbounds nuw i8, ptr %50, i64 %54
  %56 = load ptr, ptr %3, align 8, !tbaa !11
  %57 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %56, i32 0, i32 1
  %58 = getelementptr inbounds [16 x i8], ptr %57, i64 0, i64 0
  %59 = call signext i32 @S_wordcmp(ptr noundef %55, ptr noundef %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %49
  %62 = load ptr, ptr %3, align 8, !tbaa !11
  %63 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %62, i32 0, i32 2
  %64 = getelementptr inbounds [16 x i8], ptr %63, i64 0, i64 0
  %65 = call i64 @strlen(ptr noundef %64) #6
  %66 = load ptr, ptr %3, align 8, !tbaa !11
  %67 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %66, i32 0, i32 1
  %68 = getelementptr inbounds [16 x i8], ptr %67, i64 0, i64 0
  %69 = call i64 @strlen(ptr noundef %68) #6
  %70 = add i64 %65, %69
  %71 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 %70
  store ptr %72, ptr @_P_nextchr, align 8, !tbaa !3
  br label %18

73:                                               ; preds = %49, %42, %35
  %74 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %75 = load ptr, ptr %3, align 8, !tbaa !11
  %76 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %75, i32 0, i32 1
  %77 = getelementptr inbounds [16 x i8], ptr %76, i64 0, i64 0
  %78 = call signext i32 @S_wordcmp(ptr noundef %74, ptr noundef %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load ptr, ptr %3, align 8, !tbaa !11
  %82 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %81, i32 0, i32 1
  %83 = getelementptr inbounds [16 x i8], ptr %82, i64 0, i64 0
  %84 = call i64 @strlen(ptr noundef %83) #6
  %85 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 %84
  store ptr %86, ptr @_P_nextchr, align 8, !tbaa !3
  store i32 0, ptr %2, align 4
  br label %90

87:                                               ; preds = %73
  %88 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %89 = getelementptr inbounds nuw i8, ptr %88, i32 1
  store ptr %89, ptr @_P_nextchr, align 8, !tbaa !3
  br label %18

90:                                               ; preds = %80, %32, %24, %16
  %91 = load i32, ptr %2, align 4
  ret i32 %91
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #4

declare ptr @W_iscom(...) #2

; Function Attrs: nounwind
define internal signext i32 @_P_comsnarf(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5
  store i32 1, ptr %4, align 4, !tbaa !8
  %6 = load ptr, ptr %3, align 8, !tbaa !11
  %7 = getelementptr inbounds nuw %struct._W_comstruct, ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds [16 x i8], ptr %7, i64 0, i64 0
  %9 = call i64 @strlen(ptr noundef %8) #6
  %10 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 %9
  store ptr %11, ptr @_P_nextchr, align 8, !tbaa !3
  %12 = load ptr, ptr %3, align 8, !tbaa !11
  %13 = getelementptr inbounds nuw %struct._W_comstruct, ptr %12, i32 0, i32 1
  %14 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0
  %15 = load i8, ptr %14, align 4, !tbaa !10
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 0, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %125

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %122, %113, %101, %64, %19
  br label %21

21:                                               ; preds = %20
  %22 = call signext i32 @_P_needmore()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = call signext i32 @_P_nextline()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %125

28:                                               ; preds = %24
  %29 = load i32, ptr @_P_has_content, align 4, !tbaa !8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %3, align 8, !tbaa !11
  %33 = call signext i32 @W_is_com(ptr noundef %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %125

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %28
  br label %38

38:                                               ; preds = %37, %21
  %39 = load ptr, ptr %3, align 8, !tbaa !11
  %40 = getelementptr inbounds nuw %struct._W_comstruct, ptr %39, i32 0, i32 2
  %41 = getelementptr inbounds [16 x i8], ptr %40, i64 0, i64 0
  %42 = load i8, ptr %41, align 4, !tbaa !10
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 0, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %38
  %46 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %47 = load ptr, ptr %3, align 8, !tbaa !11
  %48 = getelementptr inbounds nuw %struct._W_comstruct, ptr %47, i32 0, i32 2
  %49 = getelementptr inbounds [16 x i8], ptr %48, i64 0, i64 0
  %50 = call signext i32 @S_wordcmp(ptr noundef %46, ptr noundef %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %76, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %54 = load ptr, ptr %3, align 8, !tbaa !11
  %55 = getelementptr inbounds nuw %struct._W_comstruct, ptr %54, i32 0, i32 2
  %56 = getelementptr inbounds [16 x i8], ptr %55, i64 0, i64 0
  %57 = call i64 @strlen(ptr noundef %56) #6
  %58 = getelementptr inbounds nuw i8, ptr %53, i64 %57
  %59 = load ptr, ptr %3, align 8, !tbaa !11
  %60 = getelementptr inbounds nuw %struct._W_comstruct, ptr %59, i32 0, i32 1
  %61 = getelementptr inbounds [16 x i8], ptr %60, i64 0, i64 0
  %62 = call signext i32 @S_wordcmp(ptr noundef %58, ptr noundef %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %52
  %65 = load ptr, ptr %3, align 8, !tbaa !11
  %66 = getelementptr inbounds nuw %struct._W_comstruct, ptr %65, i32 0, i32 2
  %67 = getelementptr inbounds [16 x i8], ptr %66, i64 0, i64 0
  %68 = call i64 @strlen(ptr noundef %67) #6
  %69 = load ptr, ptr %3, align 8, !tbaa !11
  %70 = getelementptr inbounds nuw %struct._W_comstruct, ptr %69, i32 0, i32 1
  %71 = getelementptr inbounds [16 x i8], ptr %70, i64 0, i64 0
  %72 = call i64 @strlen(ptr noundef %71) #6
  %73 = add i64 %68, %72
  %74 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 %73
  store ptr %75, ptr @_P_nextchr, align 8, !tbaa !3
  br label %20

76:                                               ; preds = %52, %45, %38
  %77 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %78 = load ptr, ptr %3, align 8, !tbaa !11
  %79 = getelementptr inbounds nuw %struct._W_comstruct, ptr %78, i32 0, i32 1
  %80 = getelementptr inbounds [16 x i8], ptr %79, i64 0, i64 0
  %81 = call signext i32 @S_wordcmp(ptr noundef %77, ptr noundef %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %76
  %84 = load ptr, ptr %3, align 8, !tbaa !11
  %85 = getelementptr inbounds nuw %struct._W_comstruct, ptr %84, i32 0, i32 1
  %86 = getelementptr inbounds [16 x i8], ptr %85, i64 0, i64 0
  %87 = call i64 @strlen(ptr noundef %86) #6
  %88 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 %87
  store ptr %89, ptr @_P_nextchr, align 8, !tbaa !3
  %90 = load ptr, ptr %3, align 8, !tbaa !11
  %91 = call signext i32 @W_is_nesting(ptr noundef %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %83
  %94 = load i32, ptr %4, align 4, !tbaa !8
  %95 = add nsw i32 %94, -1
  store i32 %95, ptr %4, align 4, !tbaa !8
  %96 = load i32, ptr %4, align 4, !tbaa !8
  %97 = icmp eq i32 0, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 0, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %125

99:                                               ; preds = %93
  br label %101

100:                                              ; preds = %83
  store i32 0, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %125

101:                                              ; preds = %99
  br label %20

102:                                              ; preds = %76
  %103 = load ptr, ptr %3, align 8, !tbaa !11
  %104 = call signext i32 @W_is_nesting(ptr noundef %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %108 = load ptr, ptr %3, align 8, !tbaa !11
  %109 = getelementptr inbounds nuw %struct._W_comstruct, ptr %108, i32 0, i32 1
  %110 = getelementptr inbounds [16 x i8], ptr %109, i64 0, i64 0
  %111 = call signext i32 @S_wordcmp(ptr noundef %107, ptr noundef %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %106
  %114 = load ptr, ptr %3, align 8, !tbaa !11
  %115 = getelementptr inbounds nuw %struct._W_comstruct, ptr %114, i32 0, i32 1
  %116 = getelementptr inbounds [16 x i8], ptr %115, i64 0, i64 0
  %117 = call i64 @strlen(ptr noundef %116) #6
  %118 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 %117
  store ptr %119, ptr @_P_nextchr, align 8, !tbaa !3
  %120 = load i32, ptr %4, align 4, !tbaa !8
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %4, align 4, !tbaa !8
  br label %20

122:                                              ; preds = %106, %102
  %123 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %124 = getelementptr inbounds nuw i8, ptr %123, i32 1
  store ptr %124, ptr @_P_nextchr, align 8, !tbaa !3
  br label %20

125:                                              ; preds = %100, %98, %35, %27, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5
  %126 = load i32, ptr %2, align 4
  ret i32 %126
}

declare ptr @_Z_myalloc(...) #2

declare ptr @W_islit(...) #2

; Function Attrs: nounwind
define internal signext i32 @_P_litsnarf(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  store i32 0, ptr @_P_stringsize, align 4, !tbaa !8
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds nuw %struct._W_litstruct, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 0
  %7 = call i64 @strlen(ptr noundef %6) #6
  %8 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %7
  store ptr %9, ptr @_P_nextchr, align 8, !tbaa !3
  %10 = load ptr, ptr %3, align 8, !tbaa !11
  %11 = getelementptr inbounds nuw %struct._W_litstruct, ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds [16 x i8], ptr %11, i64 0, i64 0
  %13 = call i64 @strlen(ptr noundef %12) #6
  %14 = load i32, ptr @_P_stringsize, align 4, !tbaa !8
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, ptr @_P_stringsize, align 4, !tbaa !8
  %18 = load ptr, ptr %3, align 8, !tbaa !11
  %19 = getelementptr inbounds nuw %struct._W_litstruct, ptr %18, i32 0, i32 1
  %20 = getelementptr inbounds [16 x i8], ptr %19, i64 0, i64 0
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 0, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  br label %121

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %69, %116
  %27 = call signext i32 @_P_needmore()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = call signext i32 @_P_nextline()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, ptr %2, align 4
  br label %121

33:                                               ; preds = %29
  %34 = load i32, ptr @_P_has_content, align 4, !tbaa !8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %3, align 8, !tbaa !11
  %38 = call signext i32 @W_is_lit(ptr noundef %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, ptr %2, align 4
  br label %121

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %33
  br label %43

43:                                               ; preds = %42, %26
  %44 = load ptr, ptr %3, align 8, !tbaa !11
  %45 = getelementptr inbounds nuw %struct._W_litstruct, ptr %44, i32 0, i32 2
  %46 = getelementptr inbounds [16 x i8], ptr %45, i64 0, i64 0
  %47 = load i8, ptr %46, align 1, !tbaa !10
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 0, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %43
  %51 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %52 = load ptr, ptr %3, align 8, !tbaa !11
  %53 = getelementptr inbounds nuw %struct._W_litstruct, ptr %52, i32 0, i32 2
  %54 = getelementptr inbounds [16 x i8], ptr %53, i64 0, i64 0
  %55 = call signext i32 @S_wordcmp(ptr noundef %51, ptr noundef %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %94, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %59 = load ptr, ptr %3, align 8, !tbaa !11
  %60 = getelementptr inbounds nuw %struct._W_litstruct, ptr %59, i32 0, i32 2
  %61 = getelementptr inbounds [16 x i8], ptr %60, i64 0, i64 0
  %62 = call i64 @strlen(ptr noundef %61) #6
  %63 = getelementptr inbounds nuw i8, ptr %58, i64 %62
  %64 = load ptr, ptr %3, align 8, !tbaa !11
  %65 = getelementptr inbounds nuw %struct._W_litstruct, ptr %64, i32 0, i32 1
  %66 = getelementptr inbounds [16 x i8], ptr %65, i64 0, i64 0
  %67 = call signext i32 @S_wordcmp(ptr noundef %63, ptr noundef %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %94, label %69

69:                                               ; preds = %57
  %70 = load ptr, ptr %3, align 8, !tbaa !11
  %71 = getelementptr inbounds nuw %struct._W_litstruct, ptr %70, i32 0, i32 2
  %72 = getelementptr inbounds [16 x i8], ptr %71, i64 0, i64 0
  %73 = call i64 @strlen(ptr noundef %72) #6
  %74 = load ptr, ptr %3, align 8, !tbaa !11
  %75 = getelementptr inbounds nuw %struct._W_litstruct, ptr %74, i32 0, i32 1
  %76 = getelementptr inbounds [16 x i8], ptr %75, i64 0, i64 0
  %77 = call i64 @strlen(ptr noundef %76) #6
  %78 = add i64 %73, %77
  %79 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 %78
  store ptr %80, ptr @_P_nextchr, align 8, !tbaa !3
  %81 = load ptr, ptr %3, align 8, !tbaa !11
  %82 = getelementptr inbounds nuw %struct._W_litstruct, ptr %81, i32 0, i32 2
  %83 = getelementptr inbounds [16 x i8], ptr %82, i64 0, i64 0
  %84 = call i64 @strlen(ptr noundef %83) #6
  %85 = load ptr, ptr %3, align 8, !tbaa !11
  %86 = getelementptr inbounds nuw %struct._W_litstruct, ptr %85, i32 0, i32 1
  %87 = getelementptr inbounds [16 x i8], ptr %86, i64 0, i64 0
  %88 = call i64 @strlen(ptr noundef %87) #6
  %89 = add i64 %84, %88
  %90 = load i32, ptr @_P_stringsize, align 4, !tbaa !8
  %91 = sext i32 %90 to i64
  %92 = add i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, ptr @_P_stringsize, align 4, !tbaa !8
  br label %26

94:                                               ; preds = %57, %50, %43
  %95 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %96 = load ptr, ptr %3, align 8, !tbaa !11
  %97 = getelementptr inbounds nuw %struct._W_litstruct, ptr %96, i32 0, i32 1
  %98 = getelementptr inbounds [16 x i8], ptr %97, i64 0, i64 0
  %99 = call signext i32 @S_wordcmp(ptr noundef %95, ptr noundef %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %94
  %102 = load ptr, ptr %3, align 8, !tbaa !11
  %103 = getelementptr inbounds nuw %struct._W_litstruct, ptr %102, i32 0, i32 1
  %104 = getelementptr inbounds [16 x i8], ptr %103, i64 0, i64 0
  %105 = call i64 @strlen(ptr noundef %104) #6
  %106 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 %105
  store ptr %107, ptr @_P_nextchr, align 8, !tbaa !3
  %108 = load ptr, ptr %3, align 8, !tbaa !11
  %109 = getelementptr inbounds nuw %struct._W_litstruct, ptr %108, i32 0, i32 1
  %110 = getelementptr inbounds [16 x i8], ptr %109, i64 0, i64 0
  %111 = call i64 @strlen(ptr noundef %110) #6
  %112 = load i32, ptr @_P_stringsize, align 4, !tbaa !8
  %113 = sext i32 %112 to i64
  %114 = add i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, ptr @_P_stringsize, align 4, !tbaa !8
  store i32 0, ptr %2, align 4
  br label %121

116:                                              ; preds = %94
  %117 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %118 = getelementptr inbounds nuw i8, ptr %117, i32 1
  store ptr %118, ptr @_P_nextchr, align 8, !tbaa !3
  %119 = load i32, ptr @_P_stringsize, align 4, !tbaa !8
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr @_P_stringsize, align 4, !tbaa !8
  br label %26

121:                                              ; preds = %101, %40, %32, %24
  %122 = load i32, ptr %2, align 4
  ret i32 %122
}

declare void @S_allocstr(...) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
declare ptr @strncat(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #0

declare signext i32 @F_isfloat(ptr noundef, i32 noundef signext, i32 noundef signext) #2

declare void @S_savenstr(...) #2

declare ptr @F_atof(...) #2

declare ptr @T_gettol(...) #2

declare signext i32 @T_moretols(i32 noundef signext) #2

; Function Attrs: nounwind
define internal signext i32 @_P_in_alpha(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = trunc i32 %0 to i8
  store i8 %4, ptr %3, align 1, !tbaa !10
  %5 = load i8, ptr %3, align 1, !tbaa !10
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 0, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %14

9:                                                ; preds = %1
  %10 = load i8, ptr %3, align 1, !tbaa !10
  %11 = sext i8 %10 to i32
  %12 = call ptr @index(ptr noundef @_P_alpha, i32 noundef signext %11) #6
  %13 = ptrtoint ptr %12 to i32
  store i32 %13, ptr %2, align 4
  br label %14

14:                                               ; preds = %9, %8
  %15 = load i32, ptr %2, align 4
  ret i32 %15
}

declare void @K_settoken(...) #2

declare void @Z_chatter(...) #2

; Function Attrs: nounwind
define internal signext i32 @_P_needmore() #0 {
  %1 = load ptr, ptr @_P_nextchr, align 8, !tbaa !3
  %2 = load i8, ptr %1, align 1, !tbaa !10
  %3 = sext i8 %2 to i32
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind
define internal signext i32 @_P_nextline() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @_P_has_content, align 4, !tbaa !8
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %81

4:                                                ; preds = %0
  %5 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32, ptr @_L_bclm, align 4, !tbaa !8
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @_L_bclm, align 4, !tbaa !8
  br label %13

10:                                               ; preds = %4
  %11 = load i32, ptr @_L_aclm, align 4, !tbaa !8
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr @_L_aclm, align 4, !tbaa !8
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %8, %7 ], [ %11, %10 ]
  %15 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %24

22:                                               ; preds = %17
  %23 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [0 x i32], ptr @_L_bc, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %80

30:                                               ; preds = %13
  %31 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %37

35:                                               ; preds = %30
  %36 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i32], ptr @_L_ac, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %80

43:                                               ; preds = %37, %24
  %44 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr @_L_btlm, align 4, !tbaa !8
  br label %52

49:                                               ; preds = %43
  %50 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr @_L_atlm, align 4, !tbaa !8
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ %47, %46 ], [ %50, %49 ]
  %54 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %63

61:                                               ; preds = %56
  %62 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [0 x i32], ptr @_L_bc, i64 0, i64 %65
  store i32 0, ptr %66, align 4, !tbaa !8
  br label %78

67:                                               ; preds = %52
  %68 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, ptr @_L_btlm, align 4, !tbaa !8
  br label %74

72:                                               ; preds = %67
  %73 = load i32, ptr @_L_atlm, align 4, !tbaa !8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [0 x i32], ptr @_L_ac, i64 0, i64 %76
  store i32 0, ptr %77, align 4, !tbaa !8
  br label %78

78:                                               ; preds = %74, %63
  %79 = phi i32 [ 0, %63 ], [ 0, %74 ]
  br label %80

80:                                               ; preds = %78, %37, %24
  store i32 0, ptr @_P_has_content, align 4, !tbaa !8
  br label %81

81:                                               ; preds = %80, %0
  store i32 0, ptr @_P_next_tol, align 4, !tbaa !8
  %82 = load i32, ptr @_P_realline, align 4, !tbaa !8
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr @_P_realline, align 4, !tbaa !8
  %84 = load i32, ptr @_P_realline, align 4, !tbaa !8
  %85 = load i32, ptr @_P_start, align 4, !tbaa !8
  %86 = load i32, ptr @_P_lcount, align 4, !tbaa !8
  %87 = add nsw i32 %85, %86
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i32 1, ptr %1, align 4
  br label %139

90:                                               ; preds = %81
  %91 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, ptr @_P_realline, align 4, !tbaa !8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [0 x ptr], ptr @_L_bl, i64 0, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !3
  br label %103

98:                                               ; preds = %90
  %99 = load i32, ptr @_P_realline, align 4, !tbaa !8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [0 x ptr], ptr @_L_al, i64 0, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !3
  br label %103

103:                                              ; preds = %98, %93
  %104 = phi ptr [ %97, %93 ], [ %102, %98 ]
  store ptr %104, ptr @_P_nextchr, align 8, !tbaa !3
  store ptr %104, ptr @_P_firstchr, align 8, !tbaa !3
  %105 = load ptr, ptr @_P_firstchr, align 8, !tbaa !3
  %106 = call signext i32 @C_is_cmd(ptr noundef %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store ptr @_P_dummyline, ptr @_P_nextchr, align 8, !tbaa !3
  store i32 0, ptr @_P_has_content, align 4, !tbaa !8
  br label %138

109:                                              ; preds = %103
  %110 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load i32, ptr @_P_realline, align 4, !tbaa !8
  %114 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, ptr @_L_bclm, align 4, !tbaa !8
  br label %120

118:                                              ; preds = %112
  %119 = load i32, ptr @_L_aclm, align 4, !tbaa !8
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [0 x i32], ptr @_L_bclindex, i64 0, i64 %122
  store i32 %113, ptr %123, align 4, !tbaa !8
  br label %136

124:                                              ; preds = %109
  %125 = load i32, ptr @_P_realline, align 4, !tbaa !8
  %126 = load i32, ptr @_P_fnumb, align 4, !tbaa !8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, ptr @_L_bclm, align 4, !tbaa !8
  br label %132

130:                                              ; preds = %124
  %131 = load i32, ptr @_L_aclm, align 4, !tbaa !8
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [0 x i32], ptr @_L_aclindex, i64 0, i64 %134
  store i32 %125, ptr %135, align 4, !tbaa !8
  br label %136

136:                                              ; preds = %132, %120
  %137 = phi i32 [ %113, %120 ], [ %125, %132 ]
  store i32 1, ptr @_P_has_content, align 4, !tbaa !8
  br label %138

138:                                              ; preds = %136, %108
  store i32 0, ptr %1, align 4
  br label %139

139:                                              ; preds = %138, %89
  %140 = load i32, ptr %1, align 4
  ret i32 %140
}

declare signext i32 @C_is_cmd(...) #2

declare signext i32 @W_is_bol(...) #2

declare signext i32 @S_wordcmp(...) #2

declare signext i32 @W_is_com(...) #2

declare signext i32 @W_is_nesting(ptr noundef) #2

declare signext i32 @W_is_lit(...) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @index(ptr noundef, i32 noundef signext) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind willreturn memory(none) }

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
!9 = !{!"int", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 short", !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !6, i64 0}
!16 = !{!17, !9, i64 0}
!17 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !4, i64 16, !18, i64 24, !19, i64 32}
!18 = !{!"p1 _ZTS7R_flstr", !5, i64 0}
!19 = !{!"p1 _ZTS7_T_tstr", !5, i64 0}
!20 = !{!17, !9, i64 4}
!21 = !{!17, !9, i64 8}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!17, !4, i64 16}
!25 = !{!17, !18, i64 24}
!26 = !{!17, !19, i64 32}
!27 = distinct !{!27, !23}
!28 = distinct !{!28, !23}
