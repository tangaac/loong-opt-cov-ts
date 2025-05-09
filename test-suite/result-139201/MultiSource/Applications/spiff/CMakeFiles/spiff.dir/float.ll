; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/float.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/float.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.R_flstr = type { i32, i32, ptr }

@Z_err_buf = external global [0 x i8], align 1
@.str = private unnamed_addr constant [33 x i8] c"didn't use up all of %s in atocf\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@F_floatsub.result = internal global ptr null, align 8
@F_floatsub.needinit = internal global i32 1, align 4
@F_floatsub.man1 = internal global [200 x i8] zeroinitializer, align 1
@F_floatsub.man2 = internal global [200 x i8] zeroinitializer, align 1
@F_floatsub.diff = internal global [200 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"mantissas didn't get lined up properly in floatsub\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"lengths not equal in F_floatsub\00", align 1
@F_floatcmp.man1 = internal global [200 x i8] zeroinitializer, align 1
@F_floatcmp.man2 = internal global [200 x i8] zeroinitializer, align 1
@F_floatmul.prod = internal global [200 x i8] zeroinitializer, align 1
@F_floatmul.man1 = internal global [200 x i8] zeroinitializer, align 1
@F_floatmul.man2 = internal global [200 x i8] zeroinitializer, align 1
@F_floatmul.result = internal global ptr null, align 8
@F_floatmul.needinit = internal global i32 1, align 4
@F_floatmagadd.result = internal global ptr null, align 8
@F_floatmagadd.needinit = internal global i32 1, align 4
@F_floatmagadd.man1 = internal global [200 x i8] zeroinitializer, align 1
@F_floatmagadd.man2 = internal global [200 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"numbers differ by too much in magnitude\00", align 1
@_F_stradd.result = internal global [200 x i8] zeroinitializer, align 1

; Function Attrs: nounwind
define dso_local signext i32 @F_isfloat(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !3
  store i32 %1, ptr %6, align 4, !tbaa !8
  store i32 %2, ptr %7, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6
  store i32 0, ptr %8, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6
  store i32 0, ptr %9, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6
  store i32 0, ptr %10, align 4, !tbaa !8
  %12 = load i32, ptr %7, align 4, !tbaa !8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8, !tbaa !3
  %16 = load i8, ptr %15, align 1, !tbaa !10
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 43, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %5, align 8, !tbaa !3
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 45, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %14
  %25 = load ptr, ptr %5, align 8, !tbaa !3
  %26 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %26, ptr %5, align 8, !tbaa !3
  %27 = load i32, ptr %8, align 4, !tbaa !8
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %8, align 4, !tbaa !8
  br label %29

29:                                               ; preds = %24, %19, %3
  br label %30

30:                                               ; preds = %42, %29
  %31 = call ptr @__ctype_b_loc() #7
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  %33 = load ptr, ptr %5, align 8, !tbaa !3
  %34 = load i8, ptr %33, align 1, !tbaa !10
  %35 = sext i8 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, ptr %32, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !13
  %39 = zext i16 %38 to i32
  %40 = and i32 %39, 2048
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  store i32 1, ptr %10, align 4, !tbaa !8
  %43 = load ptr, ptr %5, align 8, !tbaa !3
  %44 = getelementptr inbounds nuw i8, ptr %43, i32 1
  store ptr %44, ptr %5, align 8, !tbaa !3
  %45 = load i32, ptr %8, align 4, !tbaa !8
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %8, align 4, !tbaa !8
  br label %30, !llvm.loop !15

47:                                               ; preds = %30
  %48 = load ptr, ptr %5, align 8, !tbaa !3
  %49 = load i8, ptr %48, align 1, !tbaa !10
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 46, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load ptr, ptr %5, align 8, !tbaa !3
  %54 = getelementptr inbounds nuw i8, ptr %53, i32 1
  store ptr %54, ptr %5, align 8, !tbaa !3
  %55 = load i32, ptr %8, align 4, !tbaa !8
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %8, align 4, !tbaa !8
  br label %62

57:                                               ; preds = %47
  %58 = load i32, ptr %6, align 4, !tbaa !8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %160

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %52
  br label %63

63:                                               ; preds = %75, %62
  %64 = call ptr @__ctype_b_loc() #7
  %65 = load ptr, ptr %64, align 8, !tbaa !11
  %66 = load ptr, ptr %5, align 8, !tbaa !3
  %67 = load i8, ptr %66, align 1, !tbaa !10
  %68 = sext i8 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i16, ptr %65, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !13
  %72 = zext i16 %71 to i32
  %73 = and i32 %72, 2048
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  store i32 1, ptr %10, align 4, !tbaa !8
  %76 = load ptr, ptr %5, align 8, !tbaa !3
  %77 = getelementptr inbounds nuw i8, ptr %76, i32 1
  store ptr %77, ptr %5, align 8, !tbaa !3
  %78 = load i32, ptr %8, align 4, !tbaa !8
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %8, align 4, !tbaa !8
  br label %63, !llvm.loop !17

80:                                               ; preds = %63
  %81 = load i32, ptr %10, align 4, !tbaa !8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  store i32 0, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %160

84:                                               ; preds = %80
  %85 = load ptr, ptr %5, align 8, !tbaa !3
  %86 = load i8, ptr %85, align 1, !tbaa !10
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 101, %87
  br i1 %88, label %104, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr %5, align 8, !tbaa !3
  %91 = load i8, ptr %90, align 1, !tbaa !10
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 69, %92
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = load ptr, ptr %5, align 8, !tbaa !3
  %96 = load i8, ptr %95, align 1, !tbaa !10
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 100, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load ptr, ptr %5, align 8, !tbaa !3
  %101 = load i8, ptr %100, align 1, !tbaa !10
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 68, %102
  br i1 %103, label %104, label %156

104:                                              ; preds = %99, %94, %89, %84
  %105 = load ptr, ptr %5, align 8, !tbaa !3
  %106 = getelementptr inbounds nuw i8, ptr %105, i32 1
  store ptr %106, ptr %5, align 8, !tbaa !3
  %107 = load i32, ptr %9, align 4, !tbaa !8
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %9, align 4, !tbaa !8
  %109 = load ptr, ptr %5, align 8, !tbaa !3
  %110 = load i8, ptr %109, align 1, !tbaa !10
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 43, %111
  br i1 %112, label %118, label %113

113:                                              ; preds = %104
  %114 = load ptr, ptr %5, align 8, !tbaa !3
  %115 = load i8, ptr %114, align 1, !tbaa !10
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 45, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %113, %104
  %119 = load ptr, ptr %5, align 8, !tbaa !3
  %120 = getelementptr inbounds nuw i8, ptr %119, i32 1
  store ptr %120, ptr %5, align 8, !tbaa !3
  %121 = load i32, ptr %9, align 4, !tbaa !8
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %9, align 4, !tbaa !8
  br label %123

123:                                              ; preds = %118, %113
  %124 = call ptr @__ctype_b_loc() #7
  %125 = load ptr, ptr %124, align 8, !tbaa !11
  %126 = load ptr, ptr %5, align 8, !tbaa !3
  %127 = load i8, ptr %126, align 1, !tbaa !10
  %128 = sext i8 %127 to i32
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i16, ptr %125, i64 %129
  %131 = load i16, ptr %130, align 2, !tbaa !13
  %132 = zext i16 %131 to i32
  %133 = and i32 %132, 2048
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %123
  %136 = load i32, ptr %8, align 4, !tbaa !8
  store i32 %136, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %160

137:                                              ; preds = %123
  br label %138

138:                                              ; preds = %150, %137
  %139 = call ptr @__ctype_b_loc() #7
  %140 = load ptr, ptr %139, align 8, !tbaa !11
  %141 = load ptr, ptr %5, align 8, !tbaa !3
  %142 = load i8, ptr %141, align 1, !tbaa !10
  %143 = sext i8 %142 to i32
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i16, ptr %140, i64 %144
  %146 = load i16, ptr %145, align 2, !tbaa !13
  %147 = zext i16 %146 to i32
  %148 = and i32 %147, 2048
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %138
  %151 = load ptr, ptr %5, align 8, !tbaa !3
  %152 = getelementptr inbounds nuw i8, ptr %151, i32 1
  store ptr %152, ptr %5, align 8, !tbaa !3
  %153 = load i32, ptr %9, align 4, !tbaa !8
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %9, align 4, !tbaa !8
  br label %138, !llvm.loop !18

155:                                              ; preds = %138
  br label %156

156:                                              ; preds = %155, %99
  %157 = load i32, ptr %8, align 4, !tbaa !8
  %158 = load i32, ptr %9, align 4, !tbaa !8
  %159 = add nsw i32 %157, %158
  store i32 %159, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %160

160:                                              ; preds = %156, %135, %83, %60
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6
  %161 = load i32, ptr %4, align 4
  ret i32 %161
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local ptr @F_atof(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [200 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #6
  %14 = load ptr, ptr %4, align 8, !tbaa !3
  store ptr %14, ptr %6, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 200, ptr %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6
  store i32 0, ptr %8, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6
  store i32 0, ptr %9, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #6
  %15 = call ptr @R_makefloat()
  store ptr %15, ptr %12, align 8, !tbaa !19
  %16 = load ptr, ptr %12, align 8, !tbaa !19
  %17 = getelementptr inbounds nuw %struct.R_flstr, ptr %16, i32 0, i32 1
  store i32 0, ptr %17, align 4, !tbaa !21
  store i32 0, ptr %11, align 4, !tbaa !8
  %18 = getelementptr inbounds [200 x i8], ptr %7, i64 0, i64 0
  store i8 0, ptr %18, align 1, !tbaa !10
  %19 = load ptr, ptr %4, align 8, !tbaa !3
  %20 = load i8, ptr %19, align 1, !tbaa !10
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 43, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load ptr, ptr %4, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw i8, ptr %24, i32 1
  store ptr %25, ptr %4, align 8, !tbaa !3
  br label %37

26:                                               ; preds = %2
  %27 = load ptr, ptr %4, align 8, !tbaa !3
  %28 = load i8, ptr %27, align 1, !tbaa !10
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 45, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load ptr, ptr %12, align 8, !tbaa !19
  %33 = getelementptr inbounds nuw %struct.R_flstr, ptr %32, i32 0, i32 1
  store i32 1, ptr %33, align 4, !tbaa !21
  %34 = load ptr, ptr %4, align 8, !tbaa !3
  %35 = getelementptr inbounds nuw i8, ptr %34, i32 1
  store ptr %35, ptr %4, align 8, !tbaa !3
  br label %36

36:                                               ; preds = %31, %26
  br label %37

37:                                               ; preds = %36, %23
  br label %38

38:                                               ; preds = %43, %37
  %39 = load ptr, ptr %4, align 8, !tbaa !3
  %40 = load i8, ptr %39, align 1, !tbaa !10
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 48, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load ptr, ptr %4, align 8, !tbaa !3
  %45 = getelementptr inbounds nuw i8, ptr %44, i32 1
  store ptr %45, ptr %4, align 8, !tbaa !3
  br label %38, !llvm.loop !23

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %59, %46
  %48 = call ptr @__ctype_b_loc() #7
  %49 = load ptr, ptr %48, align 8, !tbaa !11
  %50 = load ptr, ptr %4, align 8, !tbaa !3
  %51 = load i8, ptr %50, align 1, !tbaa !10
  %52 = sext i8 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i16, ptr %49, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !13
  %56 = zext i16 %55 to i32
  %57 = and i32 %56, 2048
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %47
  store i32 1, ptr %9, align 4, !tbaa !8
  %60 = load ptr, ptr %4, align 8, !tbaa !3
  %61 = getelementptr inbounds nuw i8, ptr %60, i32 1
  store ptr %61, ptr %4, align 8, !tbaa !3
  %62 = load i8, ptr %60, align 1, !tbaa !10
  %63 = load i32, ptr %8, align 4, !tbaa !8
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %8, align 4, !tbaa !8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds [200 x i8], ptr %7, i64 0, i64 %65
  store i8 %62, ptr %66, align 1, !tbaa !10
  %67 = load i32, ptr %8, align 4, !tbaa !8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [200 x i8], ptr %7, i64 0, i64 %68
  store i8 0, ptr %69, align 1, !tbaa !10
  %70 = load i32, ptr %11, align 4, !tbaa !8
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %11, align 4, !tbaa !8
  br label %47, !llvm.loop !24

72:                                               ; preds = %47
  %73 = load ptr, ptr %4, align 8, !tbaa !3
  %74 = load i8, ptr %73, align 1, !tbaa !10
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 46, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load ptr, ptr %4, align 8, !tbaa !3
  %79 = getelementptr inbounds nuw i8, ptr %78, i32 1
  store ptr %79, ptr %4, align 8, !tbaa !3
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, ptr %9, align 4, !tbaa !8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %89, %83
  %85 = load ptr, ptr %4, align 8, !tbaa !3
  %86 = load i8, ptr %85, align 1, !tbaa !10
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 48, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load ptr, ptr %4, align 8, !tbaa !3
  %91 = getelementptr inbounds nuw i8, ptr %90, i32 1
  store ptr %91, ptr %4, align 8, !tbaa !3
  %92 = load i32, ptr %11, align 4, !tbaa !8
  %93 = add nsw i32 %92, -1
  store i32 %93, ptr %11, align 4, !tbaa !8
  br label %84, !llvm.loop !25

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %80
  br label %96

96:                                               ; preds = %108, %95
  %97 = call ptr @__ctype_b_loc() #7
  %98 = load ptr, ptr %97, align 8, !tbaa !11
  %99 = load ptr, ptr %4, align 8, !tbaa !3
  %100 = load i8, ptr %99, align 1, !tbaa !10
  %101 = sext i8 %100 to i32
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i16, ptr %98, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !13
  %105 = zext i16 %104 to i32
  %106 = and i32 %105, 2048
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %96
  %109 = load ptr, ptr %4, align 8, !tbaa !3
  %110 = getelementptr inbounds nuw i8, ptr %109, i32 1
  store ptr %110, ptr %4, align 8, !tbaa !3
  %111 = load i8, ptr %109, align 1, !tbaa !10
  %112 = load i32, ptr %8, align 4, !tbaa !8
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %8, align 4, !tbaa !8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds [200 x i8], ptr %7, i64 0, i64 %114
  store i8 %111, ptr %115, align 1, !tbaa !10
  %116 = load i32, ptr %8, align 4, !tbaa !8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [200 x i8], ptr %7, i64 0, i64 %117
  store i8 0, ptr %118, align 1, !tbaa !10
  br label %96, !llvm.loop !26

119:                                              ; preds = %96
  %120 = load ptr, ptr %4, align 8, !tbaa !3
  %121 = load i8, ptr %120, align 1, !tbaa !10
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 101, %122
  br i1 %123, label %139, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %4, align 8, !tbaa !3
  %126 = load i8, ptr %125, align 1, !tbaa !10
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 69, %127
  br i1 %128, label %139, label %129

129:                                              ; preds = %124
  %130 = load ptr, ptr %4, align 8, !tbaa !3
  %131 = load i8, ptr %130, align 1, !tbaa !10
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 100, %132
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr %4, align 8, !tbaa !3
  %136 = load i8, ptr %135, align 1, !tbaa !10
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 68, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %134, %129, %124, %119
  %140 = load ptr, ptr %4, align 8, !tbaa !3
  %141 = getelementptr inbounds nuw i8, ptr %140, i32 1
  store ptr %141, ptr %4, align 8, !tbaa !3
  %142 = load ptr, ptr %4, align 8, !tbaa !3
  %143 = call signext i32 @atoi(ptr noundef %142) #8
  %144 = load i32, ptr %11, align 4, !tbaa !8
  %145 = add nsw i32 %144, %143
  store i32 %145, ptr %11, align 4, !tbaa !8
  br label %146

146:                                              ; preds = %139, %134
  %147 = load i32, ptr %5, align 4, !tbaa !8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %187

149:                                              ; preds = %146
  %150 = load ptr, ptr %4, align 8, !tbaa !3
  %151 = load i8, ptr %150, align 1, !tbaa !10
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 43, %152
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load ptr, ptr %4, align 8, !tbaa !3
  %156 = load i8, ptr %155, align 1, !tbaa !10
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 45, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %154, %149
  %160 = load ptr, ptr %4, align 8, !tbaa !3
  %161 = getelementptr inbounds nuw i8, ptr %160, i32 1
  store ptr %161, ptr %4, align 8, !tbaa !3
  br label %162

162:                                              ; preds = %159, %154
  br label %163

163:                                              ; preds = %175, %162
  %164 = call ptr @__ctype_b_loc() #7
  %165 = load ptr, ptr %164, align 8, !tbaa !11
  %166 = load ptr, ptr %4, align 8, !tbaa !3
  %167 = load i8, ptr %166, align 1, !tbaa !10
  %168 = sext i8 %167 to i32
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i16, ptr %165, i64 %169
  %171 = load i16, ptr %170, align 2, !tbaa !13
  %172 = zext i16 %171 to i32
  %173 = and i32 %172, 2048
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %163
  %176 = load ptr, ptr %4, align 8, !tbaa !3
  %177 = getelementptr inbounds nuw i8, ptr %176, i32 1
  store ptr %177, ptr %4, align 8, !tbaa !3
  br label %163, !llvm.loop !27

178:                                              ; preds = %163
  %179 = load ptr, ptr %4, align 8, !tbaa !3
  %180 = load i8, ptr %179, align 1, !tbaa !10
  %181 = sext i8 %180 to i32
  %182 = icmp ne i32 0, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load ptr, ptr %6, align 8, !tbaa !3
  %185 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str, ptr noundef %184) #6
  call void @Z_fatal(ptr noundef @Z_err_buf)
  br label %186

186:                                              ; preds = %183, %178
  br label %187

187:                                              ; preds = %186, %146
  store i32 0, ptr %10, align 4, !tbaa !8
  br label %188

188:                                              ; preds = %211, %187
  %189 = load i32, ptr %10, align 4, !tbaa !8
  %190 = load i32, ptr %8, align 4, !tbaa !8
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %214

192:                                              ; preds = %188
  %193 = load i32, ptr %10, align 4, !tbaa !8
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [200 x i8], ptr %7, i64 0, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !10
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 48
  br i1 %198, label %199, label %210

199:                                              ; preds = %192
  %200 = getelementptr inbounds [200 x i8], ptr %7, i64 0, i64 0
  call void @S_trimzeros(ptr noundef %200)
  %201 = load ptr, ptr %12, align 8, !tbaa !19
  %202 = getelementptr inbounds nuw %struct.R_flstr, ptr %201, i32 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !28
  %204 = getelementptr inbounds [200 x i8], ptr %7, i64 0, i64 0
  %205 = call ptr @strcpy(ptr noundef %203, ptr noundef %204) #6
  %206 = load i32, ptr %11, align 4, !tbaa !8
  %207 = load ptr, ptr %12, align 8, !tbaa !19
  %208 = getelementptr inbounds nuw %struct.R_flstr, ptr %207, i32 0, i32 0
  store i32 %206, ptr %208, align 8, !tbaa !29
  %209 = load ptr, ptr %12, align 8, !tbaa !19
  store ptr %209, ptr %3, align 8
  store i32 1, ptr %13, align 4
  br label %224

210:                                              ; preds = %192
  br label %211

211:                                              ; preds = %210
  %212 = load i32, ptr %10, align 4, !tbaa !8
  %213 = add nsw i32 %212, 1
  store i32 %213, ptr %10, align 4, !tbaa !8
  br label %188, !llvm.loop !30

214:                                              ; preds = %188
  %215 = load ptr, ptr %12, align 8, !tbaa !19
  %216 = getelementptr inbounds nuw %struct.R_flstr, ptr %215, i32 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !28
  %218 = call ptr @strcpy(ptr noundef %217, ptr noundef @.str.1) #6
  %219 = load ptr, ptr %12, align 8, !tbaa !19
  %220 = getelementptr inbounds nuw %struct.R_flstr, ptr %219, i32 0, i32 0
  store i32 0, ptr %220, align 8, !tbaa !29
  %221 = load ptr, ptr %12, align 8, !tbaa !19
  %222 = getelementptr inbounds nuw %struct.R_flstr, ptr %221, i32 0, i32 1
  store i32 0, ptr %222, align 4, !tbaa !21
  %223 = load ptr, ptr %12, align 8, !tbaa !19
  store ptr %223, ptr %3, align 8
  store i32 1, ptr %13, align 4
  br label %224

224:                                              ; preds = %214, %199
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 200, ptr %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #6
  %225 = load ptr, ptr %3, align 8
  ret ptr %225
}

declare ptr @R_makefloat(...) #3

; Function Attrs: inlinehint nounwind willreturn memory(read)
define available_externally signext i32 @atoi(ptr noundef nonnull %0) #4 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8, !tbaa !3
  %4 = call i64 @strtol(ptr noundef %3, ptr noundef null, i32 noundef signext 10) #6
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind
declare signext i32 @sprintf(ptr noundef, ptr noundef, ...) #0

declare void @Z_fatal(...) #3

declare void @S_trimzeros(...) #3

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
define dso_local ptr @F_floatsub(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store ptr %0, ptr %4, align 8, !tbaa !19
  store ptr %1, ptr %5, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #6
  %16 = load i32, ptr @F_floatsub.needinit, align 4, !tbaa !8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call ptr @R_makefloat()
  store ptr %19, ptr @F_floatsub.result, align 8, !tbaa !19
  store i32 0, ptr @F_floatsub.needinit, align 4, !tbaa !8
  br label %20

20:                                               ; preds = %18, %2
  store i8 0, ptr @F_floatsub.man1, align 1, !tbaa !10
  store i8 0, ptr @F_floatsub.man2, align 1, !tbaa !10
  %21 = load ptr, ptr %4, align 8, !tbaa !19
  %22 = call signext i32 @R_getexp(ptr noundef %21)
  store i32 %22, ptr %6, align 4, !tbaa !8
  %23 = load ptr, ptr %5, align 8, !tbaa !19
  %24 = call signext i32 @R_getexp(ptr noundef %23)
  store i32 %24, ptr %7, align 4, !tbaa !8
  br label %25

25:                                               ; preds = %29, %20
  %26 = load i32, ptr %6, align 4, !tbaa !8
  %27 = load i32, ptr %7, align 4, !tbaa !8
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = call ptr @strcat(ptr noundef @F_floatsub.man1, ptr noundef @.str.1) #6
  %31 = load i32, ptr %6, align 4, !tbaa !8
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %6, align 4, !tbaa !8
  br label %25, !llvm.loop !31

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %38, %33
  %35 = load i32, ptr %6, align 4, !tbaa !8
  %36 = load i32, ptr %7, align 4, !tbaa !8
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = call ptr @strcat(ptr noundef @F_floatsub.man2, ptr noundef @.str.1) #6
  %40 = load i32, ptr %7, align 4, !tbaa !8
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %7, align 4, !tbaa !8
  br label %34, !llvm.loop !32

42:                                               ; preds = %34
  %43 = load i32, ptr %6, align 4, !tbaa !8
  %44 = load i32, ptr %7, align 4, !tbaa !8
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  call void @Z_fatal(ptr noundef @.str.2)
  br label %47

47:                                               ; preds = %46, %42
  %48 = load ptr, ptr %4, align 8, !tbaa !19
  %49 = getelementptr inbounds nuw %struct.R_flstr, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !28
  %51 = call ptr @strcat(ptr noundef @F_floatsub.man1, ptr noundef %50) #6
  %52 = load ptr, ptr %5, align 8, !tbaa !19
  %53 = getelementptr inbounds nuw %struct.R_flstr, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !28
  %55 = call ptr @strcat(ptr noundef @F_floatsub.man2, ptr noundef %54) #6
  %56 = call signext i32 @strcmp(ptr noundef @F_floatsub.man1, ptr noundef @F_floatsub.man2) #8
  store i32 %56, ptr %11, align 4, !tbaa !8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %47
  %59 = load ptr, ptr @F_floatsub.result, align 8, !tbaa !19
  %60 = getelementptr inbounds nuw %struct.R_flstr, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !28
  %62 = call ptr @strcpy(ptr noundef %61, ptr noundef @.str.1) #6
  %63 = load ptr, ptr @F_floatsub.result, align 8, !tbaa !19
  %64 = getelementptr inbounds nuw %struct.R_flstr, ptr %63, i32 0, i32 0
  store i32 0, ptr %64, align 8, !tbaa !29
  %65 = load ptr, ptr @F_floatsub.result, align 8, !tbaa !19
  %66 = getelementptr inbounds nuw %struct.R_flstr, ptr %65, i32 0, i32 1
  store i32 0, ptr %66, align 4, !tbaa !21
  %67 = load ptr, ptr @F_floatsub.result, align 8, !tbaa !19
  store ptr %67, ptr %3, align 8
  store i32 1, ptr %14, align 4
  br label %193

68:                                               ; preds = %47
  %69 = call i64 @strlen(ptr noundef @F_floatsub.man1) #8
  %70 = call i64 @strlen(ptr noundef @F_floatsub.man2) #8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = call i64 @strlen(ptr noundef @F_floatsub.man1) #8
  %74 = call i64 @strlen(ptr noundef @F_floatsub.man2) #8
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  call void @addzeros(ptr noundef @F_floatsub.man2, i32 noundef signext %76)
  br label %87

77:                                               ; preds = %68
  %78 = call i64 @strlen(ptr noundef @F_floatsub.man1) #8
  %79 = call i64 @strlen(ptr noundef @F_floatsub.man2) #8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = call i64 @strlen(ptr noundef @F_floatsub.man2) #8
  %83 = call i64 @strlen(ptr noundef @F_floatsub.man1) #8
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  call void @addzeros(ptr noundef @F_floatsub.man1, i32 noundef signext %85)
  br label %86

86:                                               ; preds = %81, %77
  br label %87

87:                                               ; preds = %86, %72
  %88 = call i64 @strlen(ptr noundef @F_floatsub.man1) #8
  %89 = call i64 @strlen(ptr noundef @F_floatsub.man2) #8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  call void @Z_fatal(ptr noundef @.str.3)
  br label %92

92:                                               ; preds = %91, %87
  %93 = load i32, ptr %11, align 4, !tbaa !8
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store ptr @F_floatsub.man2, ptr %9, align 8, !tbaa !3
  store ptr @F_floatsub.man1, ptr %10, align 8, !tbaa !3
  br label %97

96:                                               ; preds = %92
  store ptr @F_floatsub.man1, ptr %9, align 8, !tbaa !3
  store ptr @F_floatsub.man2, ptr %10, align 8, !tbaa !3
  br label %97

97:                                               ; preds = %96, %95
  %98 = load ptr, ptr %9, align 8, !tbaa !3
  %99 = call i64 @strlen(ptr noundef %98) #8
  %100 = sub i64 %99, 1
  %101 = trunc i64 %100 to i32
  store i32 %101, ptr %12, align 4, !tbaa !8
  store i32 0, ptr %13, align 4, !tbaa !8
  %102 = load ptr, ptr %9, align 8, !tbaa !3
  %103 = call i64 @strlen(ptr noundef %102) #8
  %104 = getelementptr inbounds nuw [200 x i8], ptr @F_floatsub.diff, i64 0, i64 %103
  store i8 0, ptr %104, align 1, !tbaa !10
  br label %105

105:                                              ; preds = %167, %97
  %106 = load i32, ptr %12, align 4, !tbaa !8
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %170

108:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 1, ptr %15) #6
  %109 = load i32, ptr %13, align 4, !tbaa !8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %108
  %112 = load ptr, ptr %9, align 8, !tbaa !3
  %113 = load i32, ptr %12, align 4, !tbaa !8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %112, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !10
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 48
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  store i8 57, ptr %15, align 1, !tbaa !10
  br label %129

120:                                              ; preds = %111
  %121 = load ptr, ptr %9, align 8, !tbaa !3
  %122 = load i32, ptr %12, align 4, !tbaa !8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, ptr %121, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !10
  %126 = sext i8 %125 to i32
  %127 = sub nsw i32 %126, 1
  %128 = trunc i32 %127 to i8
  store i8 %128, ptr %15, align 1, !tbaa !10
  store i32 0, ptr %13, align 4, !tbaa !8
  br label %129

129:                                              ; preds = %120, %119
  br label %152

130:                                              ; preds = %108
  %131 = load ptr, ptr %9, align 8, !tbaa !3
  %132 = load i32, ptr %12, align 4, !tbaa !8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %131, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !10
  %136 = sext i8 %135 to i32
  %137 = load ptr, ptr %10, align 8, !tbaa !3
  %138 = load i32, ptr %12, align 4, !tbaa !8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, ptr %137, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !10
  %142 = sext i8 %141 to i32
  %143 = icmp slt i32 %136, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %130
  store i8 58, ptr %15, align 1, !tbaa !10
  store i32 1, ptr %13, align 4, !tbaa !8
  br label %151

145:                                              ; preds = %130
  %146 = load ptr, ptr %9, align 8, !tbaa !3
  %147 = load i32, ptr %12, align 4, !tbaa !8
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, ptr %146, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !10
  store i8 %150, ptr %15, align 1, !tbaa !10
  br label %151

151:                                              ; preds = %145, %144
  br label %152

152:                                              ; preds = %151, %129
  %153 = load i8, ptr %15, align 1, !tbaa !10
  %154 = sext i8 %153 to i32
  %155 = load ptr, ptr %10, align 8, !tbaa !3
  %156 = load i32, ptr %12, align 4, !tbaa !8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %155, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !10
  %160 = sext i8 %159 to i32
  %161 = sub nsw i32 %154, %160
  %162 = add nsw i32 %161, 48
  %163 = trunc i32 %162 to i8
  %164 = load i32, ptr %12, align 4, !tbaa !8
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [200 x i8], ptr @F_floatsub.diff, i64 0, i64 %165
  store i8 %163, ptr %166, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 1, ptr %15) #6
  br label %167

167:                                              ; preds = %152
  %168 = load i32, ptr %12, align 4, !tbaa !8
  %169 = add nsw i32 %168, -1
  store i32 %169, ptr %12, align 4, !tbaa !8
  br label %105, !llvm.loop !33

170:                                              ; preds = %105
  store ptr @F_floatsub.diff, ptr %8, align 8, !tbaa !3
  br label %171

171:                                              ; preds = %176, %170
  %172 = load ptr, ptr %8, align 8, !tbaa !3
  %173 = load i8, ptr %172, align 1, !tbaa !10
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 48, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load ptr, ptr %8, align 8, !tbaa !3
  %178 = getelementptr inbounds nuw i8, ptr %177, i32 1
  store ptr %178, ptr %8, align 8, !tbaa !3
  %179 = load i32, ptr %6, align 4, !tbaa !8
  %180 = add nsw i32 %179, -1
  store i32 %180, ptr %6, align 4, !tbaa !8
  br label %171, !llvm.loop !34

181:                                              ; preds = %171
  %182 = load i32, ptr %6, align 4, !tbaa !8
  %183 = load ptr, ptr @F_floatsub.result, align 8, !tbaa !19
  %184 = getelementptr inbounds nuw %struct.R_flstr, ptr %183, i32 0, i32 0
  store i32 %182, ptr %184, align 8, !tbaa !29
  %185 = load ptr, ptr @F_floatsub.result, align 8, !tbaa !19
  %186 = getelementptr inbounds nuw %struct.R_flstr, ptr %185, i32 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !28
  %188 = load ptr, ptr %8, align 8, !tbaa !3
  %189 = call ptr @strcpy(ptr noundef %187, ptr noundef %188) #6
  %190 = load ptr, ptr @F_floatsub.result, align 8, !tbaa !19
  %191 = getelementptr inbounds nuw %struct.R_flstr, ptr %190, i32 0, i32 1
  store i32 0, ptr %191, align 4, !tbaa !21
  %192 = load ptr, ptr @F_floatsub.result, align 8, !tbaa !19
  store ptr %192, ptr %3, align 8
  store i32 1, ptr %14, align 4
  br label %193

193:                                              ; preds = %181, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6
  %194 = load ptr, ptr %3, align 8
  ret ptr %194
}

declare signext i32 @R_getexp(...) #3

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare signext i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nounwind
define internal void @addzeros(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i32 %1, ptr %4, align 4, !tbaa !8
  br label %5

5:                                                ; preds = %11, %2
  %6 = load i32, ptr %4, align 4, !tbaa !8
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !tbaa !3
  %10 = call ptr @strcat(ptr noundef %9, ptr noundef @.str.1) #6
  br label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 4, !tbaa !8
  %13 = add nsw i32 %12, -1
  store i32 %13, ptr %4, align 4, !tbaa !8
  br label %5, !llvm.loop !35

14:                                               ; preds = %5
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @F_floatcmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !19
  store ptr %1, ptr %5, align 8, !tbaa !19
  %6 = load ptr, ptr %4, align 8, !tbaa !19
  %7 = getelementptr inbounds nuw %struct.R_flstr, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8, !tbaa !29
  %9 = icmp eq i32 0, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !tbaa !19
  %12 = getelementptr inbounds nuw %struct.R_flstr, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !28
  %14 = call signext i32 @strcmp(ptr noundef %13, ptr noundef @.str.1) #8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %5, align 8, !tbaa !19
  %18 = getelementptr inbounds nuw %struct.R_flstr, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8, !tbaa !29
  %20 = icmp eq i32 0, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load ptr, ptr %5, align 8, !tbaa !19
  %23 = getelementptr inbounds nuw %struct.R_flstr, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !28
  %25 = call signext i32 @strcmp(ptr noundef %24, ptr noundef @.str.1) #8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, ptr %3, align 4
  br label %66

28:                                               ; preds = %21, %16
  store i32 -1, ptr %3, align 4
  br label %66

29:                                               ; preds = %10, %2
  %30 = load ptr, ptr %5, align 8, !tbaa !19
  %31 = getelementptr inbounds nuw %struct.R_flstr, ptr %30, i32 0, i32 0
  %32 = load i32, ptr %31, align 8, !tbaa !29
  %33 = icmp eq i32 0, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load ptr, ptr %5, align 8, !tbaa !19
  %36 = getelementptr inbounds nuw %struct.R_flstr, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !28
  %38 = call signext i32 @strcmp(ptr noundef %37, ptr noundef @.str.1) #8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 1, ptr %3, align 4
  br label %66

41:                                               ; preds = %34, %29
  br label %42

42:                                               ; preds = %41
  %43 = load ptr, ptr %4, align 8, !tbaa !19
  %44 = call signext i32 @R_getexp(ptr noundef %43)
  %45 = load ptr, ptr %5, align 8, !tbaa !19
  %46 = call signext i32 @R_getexp(ptr noundef %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 -1, ptr %3, align 4
  br label %66

49:                                               ; preds = %42
  %50 = load ptr, ptr %4, align 8, !tbaa !19
  %51 = call signext i32 @R_getexp(ptr noundef %50)
  %52 = load ptr, ptr %5, align 8, !tbaa !19
  %53 = call signext i32 @R_getexp(ptr noundef %52)
  %54 = icmp sgt i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, ptr %3, align 4
  br label %66

56:                                               ; preds = %49
  %57 = load ptr, ptr %4, align 8, !tbaa !19
  %58 = getelementptr inbounds nuw %struct.R_flstr, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !28
  %60 = call ptr @strcpy(ptr noundef @F_floatcmp.man1, ptr noundef %59) #6
  call void @S_trimzeros(ptr noundef @F_floatcmp.man1)
  %61 = load ptr, ptr %5, align 8, !tbaa !19
  %62 = getelementptr inbounds nuw %struct.R_flstr, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !28
  %64 = call ptr @strcpy(ptr noundef @F_floatcmp.man2, ptr noundef %63) #6
  call void @S_trimzeros(ptr noundef @F_floatcmp.man2)
  %65 = call signext i32 @strcmp(ptr noundef @F_floatcmp.man1, ptr noundef @F_floatcmp.man2) #8
  store i32 %65, ptr %3, align 4
  br label %66

66:                                               ; preds = %56, %55, %48, %40, %28, %27
  %67 = load i32, ptr %3, align 4
  ret i32 %67
}

; Function Attrs: nounwind
define dso_local ptr @F_floatmul(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !19
  store ptr %1, ptr %5, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6
  store i32 0, ptr %7, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6
  store i32 0, ptr %8, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #6
  %16 = load i32, ptr @F_floatmul.needinit, align 4, !tbaa !8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call ptr @R_makefloat()
  store ptr %19, ptr @F_floatmul.result, align 8, !tbaa !19
  store i32 0, ptr @F_floatmul.needinit, align 4, !tbaa !8
  br label %20

20:                                               ; preds = %18, %2
  %21 = load ptr, ptr %4, align 8, !tbaa !19
  %22 = getelementptr inbounds nuw %struct.R_flstr, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 8, !tbaa !29
  %24 = icmp eq i32 0, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load ptr, ptr %4, align 8, !tbaa !19
  %27 = getelementptr inbounds nuw %struct.R_flstr, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !28
  %29 = call signext i32 @strcmp(ptr noundef %28, ptr noundef @.str.1) #8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %25, %20
  %32 = load ptr, ptr %5, align 8, !tbaa !19
  %33 = getelementptr inbounds nuw %struct.R_flstr, ptr %32, i32 0, i32 0
  %34 = load i32, ptr %33, align 8, !tbaa !29
  %35 = icmp eq i32 0, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load ptr, ptr %5, align 8, !tbaa !19
  %38 = getelementptr inbounds nuw %struct.R_flstr, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !28
  %40 = call signext i32 @strcmp(ptr noundef %39, ptr noundef @.str.1) #8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %36, %25
  %43 = load ptr, ptr @F_floatmul.result, align 8, !tbaa !19
  %44 = getelementptr inbounds nuw %struct.R_flstr, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !28
  %46 = call ptr @strcpy(ptr noundef %45, ptr noundef @.str.1) #6
  %47 = load ptr, ptr @F_floatmul.result, align 8, !tbaa !19
  %48 = getelementptr inbounds nuw %struct.R_flstr, ptr %47, i32 0, i32 0
  store i32 0, ptr %48, align 8, !tbaa !29
  %49 = load ptr, ptr @F_floatmul.result, align 8, !tbaa !19
  %50 = getelementptr inbounds nuw %struct.R_flstr, ptr %49, i32 0, i32 1
  store i32 0, ptr %50, align 4, !tbaa !21
  %51 = load ptr, ptr @F_floatmul.result, align 8, !tbaa !19
  store ptr %51, ptr %3, align 8
  store i32 1, ptr %15, align 4
  br label %167

52:                                               ; preds = %36, %31
  %53 = load ptr, ptr %4, align 8, !tbaa !19
  %54 = getelementptr inbounds nuw %struct.R_flstr, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !28
  %56 = call ptr @strcpy(ptr noundef @F_floatmul.man1, ptr noundef %55) #6
  %57 = load ptr, ptr %5, align 8, !tbaa !19
  %58 = getelementptr inbounds nuw %struct.R_flstr, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !28
  %60 = call ptr @strcpy(ptr noundef @F_floatmul.man2, ptr noundef %59) #6
  %61 = call i64 @strlen(ptr noundef @F_floatmul.man1) #8
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds nuw i8, ptr @F_floatmul.man1, i64 %62
  store ptr %63, ptr %11, align 8, !tbaa !3
  %64 = call i64 @strlen(ptr noundef @F_floatmul.man2) #8
  %65 = sub i64 %64, 1
  %66 = getelementptr inbounds nuw i8, ptr @F_floatmul.man2, i64 %65
  store ptr %66, ptr %12, align 8, !tbaa !3
  br label %67

67:                                               ; preds = %70, %52
  %68 = load ptr, ptr %11, align 8, !tbaa !3
  %69 = icmp uge ptr %68, @F_floatmul.man1
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load ptr, ptr %11, align 8, !tbaa !3
  %72 = load i8, ptr %71, align 1, !tbaa !10
  %73 = sext i8 %72 to i32
  %74 = sub nsw i32 %73, 48
  %75 = load i32, ptr %7, align 4, !tbaa !8
  %76 = add nsw i32 %75, %74
  store i32 %76, ptr %7, align 4, !tbaa !8
  %77 = load ptr, ptr %11, align 8, !tbaa !3
  %78 = getelementptr inbounds i8, ptr %77, i32 -1
  store ptr %78, ptr %11, align 8, !tbaa !3
  br label %67, !llvm.loop !36

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %83, %79
  %81 = load ptr, ptr %12, align 8, !tbaa !3
  %82 = icmp uge ptr %81, @F_floatmul.man2
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load ptr, ptr %12, align 8, !tbaa !3
  %85 = load i8, ptr %84, align 1, !tbaa !10
  %86 = sext i8 %85 to i32
  %87 = sub nsw i32 %86, 48
  %88 = load i32, ptr %8, align 4, !tbaa !8
  %89 = add nsw i32 %88, %87
  store i32 %89, ptr %8, align 4, !tbaa !8
  %90 = load ptr, ptr %12, align 8, !tbaa !3
  %91 = getelementptr inbounds i8, ptr %90, i32 -1
  store ptr %91, ptr %12, align 8, !tbaa !3
  br label %80, !llvm.loop !37

92:                                               ; preds = %80
  %93 = load i32, ptr %7, align 4, !tbaa !8
  %94 = load i32, ptr %8, align 4, !tbaa !8
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store ptr @F_floatmul.man1, ptr %13, align 8, !tbaa !3
  store ptr @F_floatmul.man2, ptr %14, align 8, !tbaa !3
  br label %98

97:                                               ; preds = %92
  store ptr @F_floatmul.man2, ptr %13, align 8, !tbaa !3
  store ptr @F_floatmul.man1, ptr %14, align 8, !tbaa !3
  br label %98

98:                                               ; preds = %97, %96
  %99 = load ptr, ptr %13, align 8, !tbaa !3
  call void @S_trimzeros(ptr noundef %99)
  %100 = load ptr, ptr %14, align 8, !tbaa !3
  call void @S_trimzeros(ptr noundef %100)
  %101 = load ptr, ptr %13, align 8, !tbaa !3
  %102 = call i64 @strlen(ptr noundef %101) #8
  %103 = load ptr, ptr %14, align 8, !tbaa !3
  %104 = call i64 @strlen(ptr noundef %103) #8
  %105 = add i64 %102, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, ptr %10, align 4, !tbaa !8
  %107 = load ptr, ptr %14, align 8, !tbaa !3
  %108 = load ptr, ptr %14, align 8, !tbaa !3
  %109 = call i64 @strlen(ptr noundef %108) #8
  %110 = sub i64 %109, 1
  %111 = getelementptr inbounds nuw i8, ptr %107, i64 %110
  store ptr %111, ptr %6, align 8, !tbaa !3
  %112 = call ptr @strcpy(ptr noundef @F_floatmul.prod, ptr noundef @.str.1) #6
  br label %113

113:                                              ; preds = %130, %98
  %114 = load ptr, ptr %6, align 8, !tbaa !3
  %115 = load ptr, ptr %14, align 8, !tbaa !3
  %116 = icmp uge ptr %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %113
  store i32 0, ptr %9, align 4, !tbaa !8
  br label %118

118:                                              ; preds = %127, %117
  %119 = load i32, ptr %9, align 4, !tbaa !8
  %120 = load ptr, ptr %6, align 8, !tbaa !3
  %121 = load i8, ptr %120, align 1, !tbaa !10
  %122 = sext i8 %121 to i32
  %123 = sub nsw i32 %122, 48
  %124 = icmp slt i32 %119, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load ptr, ptr %13, align 8, !tbaa !3
  call void @_F_stradd(ptr noundef @F_floatmul.prod, ptr noundef %126)
  br label %127

127:                                              ; preds = %125
  %128 = load i32, ptr %9, align 4, !tbaa !8
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %9, align 4, !tbaa !8
  br label %118, !llvm.loop !38

130:                                              ; preds = %118
  %131 = load ptr, ptr %13, align 8, !tbaa !3
  call void @addzeros(ptr noundef %131, i32 noundef signext 1)
  %132 = load ptr, ptr %6, align 8, !tbaa !3
  %133 = getelementptr inbounds i8, ptr %132, i32 -1
  store ptr %133, ptr %6, align 8, !tbaa !3
  br label %113, !llvm.loop !39

134:                                              ; preds = %113
  %135 = load ptr, ptr @F_floatmul.result, align 8, !tbaa !19
  %136 = getelementptr inbounds nuw %struct.R_flstr, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !28
  %138 = call ptr @strcpy(ptr noundef %137, ptr noundef @F_floatmul.prod) #6
  %139 = load ptr, ptr %4, align 8, !tbaa !19
  %140 = call signext i32 @R_getexp(ptr noundef %139)
  %141 = load ptr, ptr %5, align 8, !tbaa !19
  %142 = call signext i32 @R_getexp(ptr noundef %141)
  %143 = add nsw i32 %140, %142
  %144 = load i32, ptr %10, align 4, !tbaa !8
  %145 = sub nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = call i64 @strlen(ptr noundef @F_floatmul.prod) #8
  %148 = add i64 %146, %147
  %149 = trunc i64 %148 to i32
  %150 = load ptr, ptr @F_floatmul.result, align 8, !tbaa !19
  %151 = getelementptr inbounds nuw %struct.R_flstr, ptr %150, i32 0, i32 0
  store i32 %149, ptr %151, align 8, !tbaa !29
  %152 = load ptr, ptr %4, align 8, !tbaa !19
  %153 = getelementptr inbounds nuw %struct.R_flstr, ptr %152, i32 0, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !21
  %155 = load ptr, ptr %5, align 8, !tbaa !19
  %156 = getelementptr inbounds nuw %struct.R_flstr, ptr %155, i32 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !21
  %158 = icmp eq i32 %154, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %134
  %160 = load ptr, ptr @F_floatmul.result, align 8, !tbaa !19
  %161 = getelementptr inbounds nuw %struct.R_flstr, ptr %160, i32 0, i32 1
  store i32 0, ptr %161, align 4, !tbaa !21
  br label %165

162:                                              ; preds = %134
  %163 = load ptr, ptr @F_floatmul.result, align 8, !tbaa !19
  %164 = getelementptr inbounds nuw %struct.R_flstr, ptr %163, i32 0, i32 1
  store i32 1, ptr %164, align 4, !tbaa !21
  br label %165

165:                                              ; preds = %162, %159
  %166 = load ptr, ptr @F_floatmul.result, align 8, !tbaa !19
  store ptr %166, ptr %3, align 8
  store i32 1, ptr %15, align 4
  br label %167

167:                                              ; preds = %165, %42
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #6
  %168 = load ptr, ptr %3, align 8
  ret ptr %168
}

; Function Attrs: nounwind
define internal void @_F_stradd(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #6
  %12 = load ptr, ptr %3, align 8, !tbaa !3
  %13 = load ptr, ptr %3, align 8, !tbaa !3
  %14 = call i64 @strlen(ptr noundef %13) #8
  %15 = sub i64 %14, 1
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 %15
  store ptr %16, ptr %5, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #6
  %17 = load ptr, ptr %4, align 8, !tbaa !3
  %18 = load ptr, ptr %4, align 8, !tbaa !3
  %19 = call i64 @strlen(ptr noundef %18) #8
  %20 = sub i64 %19, 1
  %21 = getelementptr inbounds nuw i8, ptr %17, i64 %20
  store ptr %21, ptr %6, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #6
  store ptr getelementptr inbounds (i8, ptr @_F_stradd.result, i64 199), ptr %7, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6
  store i32 0, ptr %8, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6
  %22 = load ptr, ptr %7, align 8, !tbaa !3
  %23 = getelementptr inbounds i8, ptr %22, i32 -1
  store ptr %23, ptr %7, align 8, !tbaa !3
  store i8 0, ptr %22, align 1, !tbaa !10
  br label %24

24:                                               ; preds = %70, %2
  %25 = load ptr, ptr %5, align 8, !tbaa !3
  %26 = load ptr, ptr %3, align 8, !tbaa !3
  %27 = icmp uge ptr %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %6, align 8, !tbaa !3
  %30 = load ptr, ptr %4, align 8, !tbaa !3
  %31 = icmp uge ptr %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ true, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %76

34:                                               ; preds = %32
  %35 = load ptr, ptr %5, align 8, !tbaa !3
  %36 = load ptr, ptr %3, align 8, !tbaa !3
  %37 = icmp uge ptr %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8, !tbaa !3
  %40 = load i8, ptr %39, align 1, !tbaa !10
  %41 = sext i8 %40 to i32
  %42 = sub nsw i32 %41, 48
  store i32 %42, ptr %10, align 4, !tbaa !8
  %43 = load ptr, ptr %5, align 8, !tbaa !3
  %44 = getelementptr inbounds i8, ptr %43, i32 -1
  store ptr %44, ptr %5, align 8, !tbaa !3
  br label %46

45:                                               ; preds = %34
  store i32 0, ptr %10, align 4, !tbaa !8
  br label %46

46:                                               ; preds = %45, %38
  %47 = load ptr, ptr %6, align 8, !tbaa !3
  %48 = load ptr, ptr %4, align 8, !tbaa !3
  %49 = icmp uge ptr %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load ptr, ptr %6, align 8, !tbaa !3
  %52 = load i8, ptr %51, align 1, !tbaa !10
  %53 = sext i8 %52 to i32
  %54 = sub nsw i32 %53, 48
  store i32 %54, ptr %11, align 4, !tbaa !8
  %55 = load ptr, ptr %6, align 8, !tbaa !3
  %56 = getelementptr inbounds i8, ptr %55, i32 -1
  store ptr %56, ptr %6, align 8, !tbaa !3
  br label %58

57:                                               ; preds = %46
  store i32 0, ptr %11, align 4, !tbaa !8
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, ptr %10, align 4, !tbaa !8
  %60 = load i32, ptr %11, align 4, !tbaa !8
  %61 = add nsw i32 %59, %60
  %62 = load i32, ptr %8, align 4, !tbaa !8
  %63 = add nsw i32 %61, %62
  store i32 %63, ptr %9, align 4, !tbaa !8
  %64 = load i32, ptr %9, align 4, !tbaa !8
  %65 = icmp sgt i32 %64, 9
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  store i32 1, ptr %8, align 4, !tbaa !8
  %67 = load i32, ptr %9, align 4, !tbaa !8
  %68 = sub nsw i32 %67, 10
  store i32 %68, ptr %9, align 4, !tbaa !8
  br label %70

69:                                               ; preds = %58
  store i32 0, ptr %8, align 4, !tbaa !8
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i32, ptr %9, align 4, !tbaa !8
  %72 = add nsw i32 %71, 48
  %73 = trunc i32 %72 to i8
  %74 = load ptr, ptr %7, align 8, !tbaa !3
  %75 = getelementptr inbounds i8, ptr %74, i32 -1
  store ptr %75, ptr %7, align 8, !tbaa !3
  store i8 %73, ptr %74, align 1, !tbaa !10
  br label %24, !llvm.loop !40

76:                                               ; preds = %32
  %77 = load i32, ptr %8, align 4, !tbaa !8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load ptr, ptr %7, align 8, !tbaa !3
  store i8 49, ptr %80, align 1, !tbaa !10
  br label %84

81:                                               ; preds = %76
  %82 = load ptr, ptr %7, align 8, !tbaa !3
  %83 = getelementptr inbounds nuw i8, ptr %82, i32 1
  store ptr %83, ptr %7, align 8, !tbaa !3
  br label %84

84:                                               ; preds = %81, %79
  %85 = load ptr, ptr %3, align 8, !tbaa !3
  %86 = load ptr, ptr %7, align 8, !tbaa !3
  %87 = call ptr @strcpy(ptr noundef %85, ptr noundef %86) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #6
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @_F_xor(i32 noundef signext %0, i32 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !8
  store i32 %1, ptr %4, align 4, !tbaa !8
  %5 = load i32, ptr %3, align 4, !tbaa !8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4, !tbaa !8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7, %2
  %11 = load i32, ptr %3, align 4, !tbaa !8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %4, align 4, !tbaa !8
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi i1 [ true, %7 ], [ %17, %16 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: nounwind
define dso_local signext i32 @_F_ABSDIFF(i32 noundef signext %0, i32 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !8
  store i32 %1, ptr %5, align 4, !tbaa !8
  %6 = load i32, ptr %4, align 4, !tbaa !8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, ptr %4, align 4, !tbaa !8
  %10 = sub nsw i32 0, %9
  br label %13

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4, !tbaa !8
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %10, %8 ], [ %12, %11 ]
  %15 = load i32, ptr %5, align 4, !tbaa !8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, ptr %5, align 4, !tbaa !8
  %19 = sub nsw i32 0, %18
  br label %22

20:                                               ; preds = %13
  %21 = load i32, ptr %5, align 4, !tbaa !8
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %21, %20 ]
  %24 = icmp slt i32 %14, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load i32, ptr %5, align 4, !tbaa !8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, ptr %5, align 4, !tbaa !8
  %30 = sub nsw i32 0, %29
  br label %33

31:                                               ; preds = %25
  %32 = load i32, ptr %5, align 4, !tbaa !8
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ %30, %28 ], [ %32, %31 ]
  %35 = load i32, ptr %4, align 4, !tbaa !8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, ptr %4, align 4, !tbaa !8
  %39 = sub nsw i32 0, %38
  br label %42

40:                                               ; preds = %33
  %41 = load i32, ptr %4, align 4, !tbaa !8
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %39, %37 ], [ %41, %40 ]
  %44 = sub nsw i32 %34, %43
  store i32 %44, ptr %3, align 4
  br label %65

45:                                               ; preds = %22
  %46 = load i32, ptr %4, align 4, !tbaa !8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, ptr %4, align 4, !tbaa !8
  %50 = sub nsw i32 0, %49
  br label %53

51:                                               ; preds = %45
  %52 = load i32, ptr %4, align 4, !tbaa !8
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi i32 [ %50, %48 ], [ %52, %51 ]
  %55 = load i32, ptr %5, align 4, !tbaa !8
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, ptr %5, align 4, !tbaa !8
  %59 = sub nsw i32 0, %58
  br label %62

60:                                               ; preds = %53
  %61 = load i32, ptr %5, align 4, !tbaa !8
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i32 [ %59, %57 ], [ %61, %60 ]
  %64 = sub nsw i32 %54, %63
  store i32 %64, ptr %3, align 4
  br label %65

65:                                               ; preds = %62, %42
  %66 = load i32, ptr %3, align 4
  ret i32 %66
}

; Function Attrs: nounwind
define dso_local ptr @F_floatmagadd(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !19
  store ptr %1, ptr %4, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #6
  %9 = load i32, ptr @F_floatmagadd.needinit, align 4, !tbaa !8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call ptr @R_makefloat()
  store ptr %12, ptr @F_floatmagadd.result, align 8, !tbaa !19
  store i32 0, ptr @F_floatmagadd.needinit, align 4, !tbaa !8
  br label %13

13:                                               ; preds = %11, %2
  %14 = call ptr @strcpy(ptr noundef @F_floatmagadd.man1, ptr noundef @.str.4) #6
  %15 = call ptr @strcpy(ptr noundef @F_floatmagadd.man2, ptr noundef @.str.4) #6
  %16 = load ptr, ptr %3, align 8, !tbaa !19
  %17 = call signext i32 @R_getexp(ptr noundef %16)
  %18 = icmp slt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load ptr, ptr %4, align 8, !tbaa !19
  %21 = call signext i32 @R_getexp(ptr noundef %20)
  %22 = icmp slt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call signext i32 @_F_xor(i32 noundef signext %19, i32 noundef signext %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %13
  %27 = load ptr, ptr %3, align 8, !tbaa !19
  %28 = call signext i32 @R_getexp(ptr noundef %27)
  %29 = load ptr, ptr %4, align 8, !tbaa !19
  %30 = call signext i32 @R_getexp(ptr noundef %29)
  %31 = call signext i32 @_F_ABSDIFF(i32 noundef signext %28, i32 noundef signext %30)
  store i32 %31, ptr %5, align 4, !tbaa !8
  br label %58

32:                                               ; preds = %13
  %33 = load ptr, ptr %3, align 8, !tbaa !19
  %34 = call signext i32 @R_getexp(ptr noundef %33)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load ptr, ptr %3, align 8, !tbaa !19
  %38 = call signext i32 @R_getexp(ptr noundef %37)
  %39 = sub nsw i32 0, %38
  br label %43

40:                                               ; preds = %32
  %41 = load ptr, ptr %3, align 8, !tbaa !19
  %42 = call signext i32 @R_getexp(ptr noundef %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i32 [ %39, %36 ], [ %42, %40 ]
  %45 = load ptr, ptr %4, align 8, !tbaa !19
  %46 = call signext i32 @R_getexp(ptr noundef %45)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load ptr, ptr %4, align 8, !tbaa !19
  %50 = call signext i32 @R_getexp(ptr noundef %49)
  %51 = sub nsw i32 0, %50
  br label %55

52:                                               ; preds = %43
  %53 = load ptr, ptr %4, align 8, !tbaa !19
  %54 = call signext i32 @R_getexp(ptr noundef %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i32 [ %51, %48 ], [ %54, %52 ]
  %57 = add nsw i32 %44, %56
  store i32 %57, ptr %5, align 4, !tbaa !8
  br label %58

58:                                               ; preds = %55, %26
  %59 = load i32, ptr %5, align 4, !tbaa !8
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %58
  %62 = load ptr, ptr %3, align 8, !tbaa !19
  %63 = call signext i32 @R_getexp(ptr noundef %62)
  %64 = load ptr, ptr %4, align 8, !tbaa !19
  %65 = call signext i32 @R_getexp(ptr noundef %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load i32, ptr %5, align 4, !tbaa !8
  %69 = sext i32 %68 to i64
  %70 = load ptr, ptr %3, align 8, !tbaa !19
  %71 = getelementptr inbounds nuw %struct.R_flstr, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !28
  %73 = call i64 @strlen(ptr noundef %72) #8
  %74 = add i64 %69, %73
  %75 = icmp ugt i64 %74, 199
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.5) #6
  call void @Z_fatal(ptr noundef @Z_err_buf)
  br label %78

78:                                               ; preds = %76, %67
  br label %91

79:                                               ; preds = %61
  %80 = load i32, ptr %5, align 4, !tbaa !8
  %81 = sext i32 %80 to i64
  %82 = load ptr, ptr %4, align 8, !tbaa !19
  %83 = getelementptr inbounds nuw %struct.R_flstr, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !28
  %85 = call i64 @strlen(ptr noundef %84) #8
  %86 = add i64 %81, %85
  %87 = icmp ugt i64 %86, 199
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.5) #6
  call void @Z_fatal(ptr noundef @Z_err_buf)
  br label %90

90:                                               ; preds = %88, %79
  br label %91

91:                                               ; preds = %90, %78
  br label %118

92:                                               ; preds = %58
  %93 = load ptr, ptr %3, align 8, !tbaa !19
  %94 = getelementptr inbounds nuw %struct.R_flstr, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !28
  %96 = call i64 @strlen(ptr noundef %95) #8
  %97 = load ptr, ptr %4, align 8, !tbaa !19
  %98 = getelementptr inbounds nuw %struct.R_flstr, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !28
  %100 = call i64 @strlen(ptr noundef %99) #8
  %101 = icmp ugt i64 %96, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load ptr, ptr %3, align 8, !tbaa !19
  %104 = getelementptr inbounds nuw %struct.R_flstr, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !28
  %106 = call i64 @strlen(ptr noundef %105) #8
  br label %112

107:                                              ; preds = %92
  %108 = load ptr, ptr %4, align 8, !tbaa !19
  %109 = getelementptr inbounds nuw %struct.R_flstr, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !28
  %111 = call i64 @strlen(ptr noundef %110) #8
  br label %112

112:                                              ; preds = %107, %102
  %113 = phi i64 [ %106, %102 ], [ %111, %107 ]
  %114 = icmp ugt i64 %113, 198
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.5) #6
  call void @Z_fatal(ptr noundef @Z_err_buf)
  br label %117

117:                                              ; preds = %115, %112
  br label %118

118:                                              ; preds = %117, %91
  %119 = load ptr, ptr %3, align 8, !tbaa !19
  %120 = call signext i32 @R_getexp(ptr noundef %119)
  %121 = load ptr, ptr %4, align 8, !tbaa !19
  %122 = call signext i32 @R_getexp(ptr noundef %121)
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, ptr %5, align 4, !tbaa !8
  call void @addzeros(ptr noundef @F_floatmagadd.man1, i32 noundef signext %125)
  %126 = load ptr, ptr %4, align 8, !tbaa !19
  %127 = call signext i32 @R_getexp(ptr noundef %126)
  store i32 %127, ptr %6, align 4, !tbaa !8
  br label %132

128:                                              ; preds = %118
  %129 = load i32, ptr %5, align 4, !tbaa !8
  call void @addzeros(ptr noundef @F_floatmagadd.man2, i32 noundef signext %129)
  %130 = load ptr, ptr %3, align 8, !tbaa !19
  %131 = call signext i32 @R_getexp(ptr noundef %130)
  store i32 %131, ptr %6, align 4, !tbaa !8
  br label %132

132:                                              ; preds = %128, %124
  %133 = load ptr, ptr %3, align 8, !tbaa !19
  %134 = getelementptr inbounds nuw %struct.R_flstr, ptr %133, i32 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !28
  %136 = call ptr @strcat(ptr noundef @F_floatmagadd.man1, ptr noundef %135) #6
  %137 = load ptr, ptr %4, align 8, !tbaa !19
  %138 = getelementptr inbounds nuw %struct.R_flstr, ptr %137, i32 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !28
  %140 = call ptr @strcat(ptr noundef @F_floatmagadd.man2, ptr noundef %139) #6
  %141 = call i64 @strlen(ptr noundef @F_floatmagadd.man1) #8
  %142 = call i64 @strlen(ptr noundef @F_floatmagadd.man2) #8
  %143 = icmp ugt i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %132
  %145 = call i64 @strlen(ptr noundef @F_floatmagadd.man1) #8
  br label %148

146:                                              ; preds = %132
  %147 = call i64 @strlen(ptr noundef @F_floatmagadd.man2) #8
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i64 [ %145, %144 ], [ %147, %146 ]
  %150 = trunc i64 %149 to i32
  store i32 %150, ptr %7, align 4, !tbaa !8
  call void @_F_stradd(ptr noundef @F_floatmagadd.man1, ptr noundef @F_floatmagadd.man2)
  %151 = call i64 @strlen(ptr noundef @F_floatmagadd.man1) #8
  %152 = load i32, ptr %7, align 4, !tbaa !8
  %153 = sext i32 %152 to i64
  %154 = sub i64 %151, %153
  %155 = load i32, ptr %6, align 4, !tbaa !8
  %156 = sext i32 %155 to i64
  %157 = add i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, ptr %6, align 4, !tbaa !8
  store ptr @F_floatmagadd.man1, ptr %8, align 8, !tbaa !3
  br label %159

159:                                              ; preds = %164, %148
  %160 = load ptr, ptr %8, align 8, !tbaa !3
  %161 = load i8, ptr %160, align 1, !tbaa !10
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 48, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load ptr, ptr %8, align 8, !tbaa !3
  %166 = getelementptr inbounds nuw i8, ptr %165, i32 1
  store ptr %166, ptr %8, align 8, !tbaa !3
  %167 = load i32, ptr %6, align 4, !tbaa !8
  %168 = add nsw i32 %167, -1
  store i32 %168, ptr %6, align 4, !tbaa !8
  br label %159, !llvm.loop !41

169:                                              ; preds = %159
  %170 = load ptr, ptr @F_floatmagadd.result, align 8, !tbaa !19
  %171 = getelementptr inbounds nuw %struct.R_flstr, ptr %170, i32 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !28
  %173 = load ptr, ptr %8, align 8, !tbaa !3
  %174 = call ptr @strcpy(ptr noundef %172, ptr noundef %173) #6
  %175 = load i32, ptr %6, align 4, !tbaa !8
  %176 = load ptr, ptr @F_floatmagadd.result, align 8, !tbaa !19
  %177 = getelementptr inbounds nuw %struct.R_flstr, ptr %176, i32 0, i32 0
  store i32 %175, ptr %177, align 8, !tbaa !29
  %178 = load ptr, ptr @F_floatmagadd.result, align 8, !tbaa !19
  %179 = getelementptr inbounds nuw %struct.R_flstr, ptr %178, i32 0, i32 1
  store i32 0, ptr %179, align 4, !tbaa !21
  %180 = load ptr, ptr @F_floatmagadd.result, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6
  ret ptr %180
}

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef signext) #0

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { inlinehint nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind willreturn memory(read) }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 short", !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS7R_flstr", !5, i64 0}
!21 = !{!22, !9, i64 4}
!22 = !{!"R_flstr", !9, i64 0, !9, i64 4, !4, i64 8}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = !{!22, !4, i64 8}
!29 = !{!22, !9, i64 0}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
