; ModuleID = './MultiSource/Applications/sgefa/CMakeFiles/sgefa.dir/blas.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/sgefa/blas.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

; Function Attrs: nounwind
define dso_local signext i32 @isamax(i32 noundef signext %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !7
  store i32 %2, ptr %7, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #3
  store float 0.000000e+00, ptr %8, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #3
  store i32 0, ptr %10, align 4, !tbaa !3
  %12 = load i32, ptr %5, align 4, !tbaa !3
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, ptr %10, align 4, !tbaa !3
  store i32 %15, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %154

16:                                               ; preds = %3
  %17 = load i32, ptr %7, align 4, !tbaa !3
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %95

19:                                               ; preds = %16
  %20 = load i32, ptr %7, align 4, !tbaa !3
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8, !tbaa !7
  %24 = load i32, ptr %5, align 4, !tbaa !3
  %25 = sub nsw i32 0, %24
  %26 = add nsw i32 %25, 1
  %27 = load i32, ptr %7, align 4, !tbaa !3
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, ptr %23, i64 %30
  store ptr %31, ptr %6, align 8, !tbaa !7
  br label %32

32:                                               ; preds = %22, %19
  store i32 0, ptr %10, align 4, !tbaa !3
  %33 = load ptr, ptr %6, align 8, !tbaa !7
  %34 = load float, ptr %33, align 4, !tbaa !10
  %35 = fpext float %34 to double
  %36 = fcmp ogt double %35, 0.000000e+00
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load ptr, ptr %6, align 8, !tbaa !7
  %39 = load float, ptr %38, align 4, !tbaa !10
  br label %44

40:                                               ; preds = %32
  %41 = load ptr, ptr %6, align 8, !tbaa !7
  %42 = load float, ptr %41, align 4, !tbaa !10
  %43 = fneg float %42
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi float [ %39, %37 ], [ %43, %40 ]
  store float %45, ptr %8, align 4, !tbaa !10
  %46 = load i32, ptr %7, align 4, !tbaa !3
  %47 = load ptr, ptr %6, align 8, !tbaa !7
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds float, ptr %47, i64 %48
  store ptr %49, ptr %6, align 8, !tbaa !7
  store i32 1, ptr %9, align 4, !tbaa !3
  br label %50

50:                                               ; preds = %86, %44
  %51 = load i32, ptr %9, align 4, !tbaa !3
  %52 = load i32, ptr %5, align 4, !tbaa !3
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %50
  %55 = load ptr, ptr %6, align 8, !tbaa !7
  %56 = load float, ptr %55, align 4, !tbaa !10
  %57 = fpext float %56 to double
  %58 = fcmp ogt double %57, 0.000000e+00
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load ptr, ptr %6, align 8, !tbaa !7
  %61 = load float, ptr %60, align 4, !tbaa !10
  br label %66

62:                                               ; preds = %54
  %63 = load ptr, ptr %6, align 8, !tbaa !7
  %64 = load float, ptr %63, align 4, !tbaa !10
  %65 = fneg float %64
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi float [ %61, %59 ], [ %65, %62 ]
  %68 = load float, ptr %8, align 4, !tbaa !10
  %69 = fcmp ogt float %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load i32, ptr %9, align 4, !tbaa !3
  store i32 %71, ptr %10, align 4, !tbaa !3
  %72 = load ptr, ptr %6, align 8, !tbaa !7
  %73 = load float, ptr %72, align 4, !tbaa !10
  %74 = fpext float %73 to double
  %75 = fcmp ogt double %74, 0.000000e+00
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load ptr, ptr %6, align 8, !tbaa !7
  %78 = load float, ptr %77, align 4, !tbaa !10
  br label %83

79:                                               ; preds = %70
  %80 = load ptr, ptr %6, align 8, !tbaa !7
  %81 = load float, ptr %80, align 4, !tbaa !10
  %82 = fneg float %81
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi float [ %78, %76 ], [ %82, %79 ]
  store float %84, ptr %8, align 4, !tbaa !10
  br label %85

85:                                               ; preds = %83, %66
  br label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %9, align 4, !tbaa !3
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %9, align 4, !tbaa !3
  %89 = load i32, ptr %7, align 4, !tbaa !3
  %90 = load ptr, ptr %6, align 8, !tbaa !7
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds float, ptr %90, i64 %91
  store ptr %92, ptr %6, align 8, !tbaa !7
  br label %50, !llvm.loop !12

93:                                               ; preds = %50
  %94 = load i32, ptr %10, align 4, !tbaa !3
  store i32 %94, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %154

95:                                               ; preds = %16
  store i32 0, ptr %10, align 4, !tbaa !3
  %96 = load ptr, ptr %6, align 8, !tbaa !7
  %97 = load float, ptr %96, align 4, !tbaa !10
  %98 = fpext float %97 to double
  %99 = fcmp ogt double %98, 0.000000e+00
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load ptr, ptr %6, align 8, !tbaa !7
  %102 = load float, ptr %101, align 4, !tbaa !10
  br label %107

103:                                              ; preds = %95
  %104 = load ptr, ptr %6, align 8, !tbaa !7
  %105 = load float, ptr %104, align 4, !tbaa !10
  %106 = fneg float %105
  br label %107

107:                                              ; preds = %103, %100
  %108 = phi float [ %102, %100 ], [ %106, %103 ]
  store float %108, ptr %8, align 4, !tbaa !10
  %109 = load ptr, ptr %6, align 8, !tbaa !7
  %110 = getelementptr inbounds nuw float, ptr %109, i32 1
  store ptr %110, ptr %6, align 8, !tbaa !7
  store i32 1, ptr %9, align 4, !tbaa !3
  br label %111

111:                                              ; preds = %147, %107
  %112 = load i32, ptr %9, align 4, !tbaa !3
  %113 = load i32, ptr %5, align 4, !tbaa !3
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %152

115:                                              ; preds = %111
  %116 = load ptr, ptr %6, align 8, !tbaa !7
  %117 = load float, ptr %116, align 4, !tbaa !10
  %118 = fpext float %117 to double
  %119 = fcmp ogt double %118, 0.000000e+00
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load ptr, ptr %6, align 8, !tbaa !7
  %122 = load float, ptr %121, align 4, !tbaa !10
  br label %127

123:                                              ; preds = %115
  %124 = load ptr, ptr %6, align 8, !tbaa !7
  %125 = load float, ptr %124, align 4, !tbaa !10
  %126 = fneg float %125
  br label %127

127:                                              ; preds = %123, %120
  %128 = phi float [ %122, %120 ], [ %126, %123 ]
  %129 = load float, ptr %8, align 4, !tbaa !10
  %130 = fcmp ogt float %128, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %127
  %132 = load i32, ptr %9, align 4, !tbaa !3
  store i32 %132, ptr %10, align 4, !tbaa !3
  %133 = load ptr, ptr %6, align 8, !tbaa !7
  %134 = load float, ptr %133, align 4, !tbaa !10
  %135 = fpext float %134 to double
  %136 = fcmp ogt double %135, 0.000000e+00
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load ptr, ptr %6, align 8, !tbaa !7
  %139 = load float, ptr %138, align 4, !tbaa !10
  br label %144

140:                                              ; preds = %131
  %141 = load ptr, ptr %6, align 8, !tbaa !7
  %142 = load float, ptr %141, align 4, !tbaa !10
  %143 = fneg float %142
  br label %144

144:                                              ; preds = %140, %137
  %145 = phi float [ %139, %137 ], [ %143, %140 ]
  store float %145, ptr %8, align 4, !tbaa !10
  br label %146

146:                                              ; preds = %144, %127
  br label %147

147:                                              ; preds = %146
  %148 = load i32, ptr %9, align 4, !tbaa !3
  %149 = add nsw i32 %148, 1
  store i32 %149, ptr %9, align 4, !tbaa !3
  %150 = load ptr, ptr %6, align 8, !tbaa !7
  %151 = getelementptr inbounds nuw float, ptr %150, i32 1
  store ptr %151, ptr %6, align 8, !tbaa !7
  br label %111, !llvm.loop !14

152:                                              ; preds = %111
  %153 = load i32, ptr %10, align 4, !tbaa !3
  store i32 %153, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %154

154:                                              ; preds = %152, %93, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #3
  %155 = load i32, ptr %4, align 4
  ret i32 %155
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local void @saxpy(i32 noundef signext %0, double noundef %1, ptr noundef %2, i32 noundef signext %3, ptr noundef %4, i32 noundef signext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = fptrunc double %1 to float
  store i32 %0, ptr %7, align 4, !tbaa !3
  store float %15, ptr %8, align 4, !tbaa !10
  store ptr %2, ptr %9, align 8, !tbaa !7
  store i32 %3, ptr %10, align 4, !tbaa !3
  store ptr %4, ptr %11, align 8, !tbaa !7
  store i32 %5, ptr %12, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #3
  %16 = load i32, ptr %7, align 4, !tbaa !3
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %6
  %19 = load float, ptr %8, align 4, !tbaa !10
  %20 = fpext float %19 to double
  %21 = fcmp oeq double %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %6
  store i32 1, ptr %14, align 4
  br label %128

23:                                               ; preds = %18
  %24 = load i32, ptr %10, align 4, !tbaa !3
  %25 = load i32, ptr %12, align 4, !tbaa !3
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %23
  %28 = load i32, ptr %10, align 4, !tbaa !3
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  store i32 0, ptr %13, align 4, !tbaa !3
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i32, ptr %13, align 4, !tbaa !3
  %33 = load i32, ptr %7, align 4, !tbaa !3
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load float, ptr %8, align 4, !tbaa !10
  %37 = load ptr, ptr %9, align 8, !tbaa !7
  %38 = load float, ptr %37, align 4, !tbaa !10
  %39 = load ptr, ptr %11, align 8, !tbaa !7
  %40 = load float, ptr %39, align 4, !tbaa !10
  %41 = call float @llvm.fmuladd.f32(float %36, float %38, float %40)
  store float %41, ptr %39, align 4, !tbaa !10
  br label %42

42:                                               ; preds = %35
  %43 = load i32, ptr %13, align 4, !tbaa !3
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %13, align 4, !tbaa !3
  %45 = load ptr, ptr %11, align 8, !tbaa !7
  %46 = getelementptr inbounds nuw float, ptr %45, i32 1
  store ptr %46, ptr %11, align 8, !tbaa !7
  %47 = load ptr, ptr %9, align 8, !tbaa !7
  %48 = getelementptr inbounds nuw float, ptr %47, i32 1
  store ptr %48, ptr %9, align 8, !tbaa !7
  br label %31, !llvm.loop !15

49:                                               ; preds = %31
  store i32 1, ptr %14, align 4
  br label %128

50:                                               ; preds = %27
  %51 = load i32, ptr %10, align 4, !tbaa !3
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %50
  store i32 0, ptr %13, align 4, !tbaa !3
  br label %54

54:                                               ; preds = %65, %53
  %55 = load i32, ptr %13, align 4, !tbaa !3
  %56 = load i32, ptr %7, align 4, !tbaa !3
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load float, ptr %8, align 4, !tbaa !10
  %60 = load ptr, ptr %9, align 8, !tbaa !7
  %61 = load float, ptr %60, align 4, !tbaa !10
  %62 = load ptr, ptr %11, align 8, !tbaa !7
  %63 = load float, ptr %62, align 4, !tbaa !10
  %64 = call float @llvm.fmuladd.f32(float %59, float %61, float %63)
  store float %64, ptr %62, align 4, !tbaa !10
  br label %65

65:                                               ; preds = %58
  %66 = load i32, ptr %13, align 4, !tbaa !3
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %13, align 4, !tbaa !3
  %68 = load i32, ptr %10, align 4, !tbaa !3
  %69 = load ptr, ptr %9, align 8, !tbaa !7
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds float, ptr %69, i64 %70
  store ptr %71, ptr %9, align 8, !tbaa !7
  %72 = load i32, ptr %10, align 4, !tbaa !3
  %73 = load ptr, ptr %11, align 8, !tbaa !7
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds float, ptr %73, i64 %74
  store ptr %75, ptr %11, align 8, !tbaa !7
  br label %54, !llvm.loop !16

76:                                               ; preds = %54
  store i32 1, ptr %14, align 4
  br label %128

77:                                               ; preds = %50
  br label %78

78:                                               ; preds = %77, %23
  %79 = load i32, ptr %10, align 4, !tbaa !3
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i32, ptr %7, align 4, !tbaa !3
  %83 = sub nsw i32 0, %82
  %84 = add nsw i32 %83, 1
  %85 = load i32, ptr %10, align 4, !tbaa !3
  %86 = mul nsw i32 %84, %85
  %87 = add nsw i32 %86, 1
  %88 = load ptr, ptr %9, align 8, !tbaa !7
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds float, ptr %88, i64 %89
  store ptr %90, ptr %9, align 8, !tbaa !7
  br label %91

91:                                               ; preds = %81, %78
  %92 = load i32, ptr %12, align 4, !tbaa !3
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i32, ptr %7, align 4, !tbaa !3
  %96 = sub nsw i32 0, %95
  %97 = add nsw i32 %96, 1
  %98 = load i32, ptr %12, align 4, !tbaa !3
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %99, 1
  %101 = load ptr, ptr %11, align 8, !tbaa !7
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds float, ptr %101, i64 %102
  store ptr %103, ptr %11, align 8, !tbaa !7
  br label %104

104:                                              ; preds = %94, %91
  store i32 0, ptr %13, align 4, !tbaa !3
  br label %105

105:                                              ; preds = %116, %104
  %106 = load i32, ptr %13, align 4, !tbaa !3
  %107 = load i32, ptr %7, align 4, !tbaa !3
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  %110 = load float, ptr %8, align 4, !tbaa !10
  %111 = load ptr, ptr %9, align 8, !tbaa !7
  %112 = load float, ptr %111, align 4, !tbaa !10
  %113 = load ptr, ptr %11, align 8, !tbaa !7
  %114 = load float, ptr %113, align 4, !tbaa !10
  %115 = call float @llvm.fmuladd.f32(float %110, float %112, float %114)
  store float %115, ptr %113, align 4, !tbaa !10
  br label %116

116:                                              ; preds = %109
  %117 = load i32, ptr %13, align 4, !tbaa !3
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr %13, align 4, !tbaa !3
  %119 = load i32, ptr %10, align 4, !tbaa !3
  %120 = load ptr, ptr %9, align 8, !tbaa !7
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds float, ptr %120, i64 %121
  store ptr %122, ptr %9, align 8, !tbaa !7
  %123 = load i32, ptr %12, align 4, !tbaa !3
  %124 = load ptr, ptr %11, align 8, !tbaa !7
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds float, ptr %124, i64 %125
  store ptr %126, ptr %11, align 8, !tbaa !7
  br label %105, !llvm.loop !17

127:                                              ; preds = %105
  store i32 0, ptr %14, align 4
  br label %128

128:                                              ; preds = %127, %76, %49, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #3
  %129 = load i32, ptr %14, align 4
  switch i32 %129, label %131 [
    i32 0, label %130
    i32 1, label %130
  ]

130:                                              ; preds = %128, %128
  ret void

131:                                              ; preds = %128
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind
define dso_local void @saxpyx(i32 noundef signext %0, double noundef %1, ptr noundef %2, i32 noundef signext %3, ptr noundef %4, i32 noundef signext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = fptrunc double %1 to float
  store i32 %0, ptr %7, align 4, !tbaa !3
  store float %15, ptr %8, align 4, !tbaa !10
  store ptr %2, ptr %9, align 8, !tbaa !7
  store i32 %3, ptr %10, align 4, !tbaa !3
  store ptr %4, ptr %11, align 8, !tbaa !7
  store i32 %5, ptr %12, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #3
  %16 = load i32, ptr %7, align 4, !tbaa !3
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %6
  %19 = load float, ptr %8, align 4, !tbaa !10
  %20 = fpext float %19 to double
  %21 = fcmp oeq double %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %6
  store i32 1, ptr %14, align 4
  br label %131

23:                                               ; preds = %18
  %24 = load i32, ptr %10, align 4, !tbaa !3
  %25 = load i32, ptr %12, align 4, !tbaa !3
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %80

27:                                               ; preds = %23
  %28 = load i32, ptr %10, align 4, !tbaa !3
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  store i32 0, ptr %13, align 4, !tbaa !3
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, ptr %13, align 4, !tbaa !3
  %33 = load i32, ptr %7, align 4, !tbaa !3
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load ptr, ptr %11, align 8, !tbaa !7
  %37 = load float, ptr %36, align 4, !tbaa !10
  %38 = load float, ptr %8, align 4, !tbaa !10
  %39 = load ptr, ptr %9, align 8, !tbaa !7
  %40 = load float, ptr %39, align 4, !tbaa !10
  %41 = call float @llvm.fmuladd.f32(float %38, float %40, float %37)
  %42 = load ptr, ptr %9, align 8, !tbaa !7
  store float %41, ptr %42, align 4, !tbaa !10
  br label %43

43:                                               ; preds = %35
  %44 = load i32, ptr %13, align 4, !tbaa !3
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %13, align 4, !tbaa !3
  %46 = load ptr, ptr %9, align 8, !tbaa !7
  %47 = getelementptr inbounds nuw float, ptr %46, i32 1
  store ptr %47, ptr %9, align 8, !tbaa !7
  %48 = load ptr, ptr %11, align 8, !tbaa !7
  %49 = getelementptr inbounds nuw float, ptr %48, i32 1
  store ptr %49, ptr %11, align 8, !tbaa !7
  br label %31, !llvm.loop !18

50:                                               ; preds = %31
  store i32 1, ptr %14, align 4
  br label %131

51:                                               ; preds = %27
  %52 = load i32, ptr %10, align 4, !tbaa !3
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %51
  store i32 0, ptr %13, align 4, !tbaa !3
  br label %55

55:                                               ; preds = %67, %54
  %56 = load i32, ptr %13, align 4, !tbaa !3
  %57 = load i32, ptr %7, align 4, !tbaa !3
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load ptr, ptr %11, align 8, !tbaa !7
  %61 = load float, ptr %60, align 4, !tbaa !10
  %62 = load float, ptr %8, align 4, !tbaa !10
  %63 = load ptr, ptr %9, align 8, !tbaa !7
  %64 = load float, ptr %63, align 4, !tbaa !10
  %65 = call float @llvm.fmuladd.f32(float %62, float %64, float %61)
  %66 = load ptr, ptr %9, align 8, !tbaa !7
  store float %65, ptr %66, align 4, !tbaa !10
  br label %67

67:                                               ; preds = %59
  %68 = load i32, ptr %13, align 4, !tbaa !3
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %13, align 4, !tbaa !3
  %70 = load i32, ptr %10, align 4, !tbaa !3
  %71 = load ptr, ptr %9, align 8, !tbaa !7
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds float, ptr %71, i64 %72
  store ptr %73, ptr %9, align 8, !tbaa !7
  %74 = load i32, ptr %10, align 4, !tbaa !3
  %75 = load ptr, ptr %11, align 8, !tbaa !7
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds float, ptr %75, i64 %76
  store ptr %77, ptr %11, align 8, !tbaa !7
  br label %55, !llvm.loop !19

78:                                               ; preds = %55
  store i32 1, ptr %14, align 4
  br label %131

79:                                               ; preds = %51
  br label %80

80:                                               ; preds = %79, %23
  %81 = load i32, ptr %10, align 4, !tbaa !3
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32, ptr %7, align 4, !tbaa !3
  %85 = sub nsw i32 0, %84
  %86 = add nsw i32 %85, 1
  %87 = load i32, ptr %10, align 4, !tbaa !3
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %88, 1
  %90 = load ptr, ptr %9, align 8, !tbaa !7
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds float, ptr %90, i64 %91
  store ptr %92, ptr %9, align 8, !tbaa !7
  br label %93

93:                                               ; preds = %83, %80
  %94 = load i32, ptr %12, align 4, !tbaa !3
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i32, ptr %7, align 4, !tbaa !3
  %98 = sub nsw i32 0, %97
  %99 = add nsw i32 %98, 1
  %100 = load i32, ptr %12, align 4, !tbaa !3
  %101 = mul nsw i32 %99, %100
  %102 = add nsw i32 %101, 1
  %103 = load ptr, ptr %11, align 8, !tbaa !7
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds float, ptr %103, i64 %104
  store ptr %105, ptr %11, align 8, !tbaa !7
  br label %106

106:                                              ; preds = %96, %93
  store i32 0, ptr %13, align 4, !tbaa !3
  br label %107

107:                                              ; preds = %119, %106
  %108 = load i32, ptr %13, align 4, !tbaa !3
  %109 = load i32, ptr %7, align 4, !tbaa !3
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %107
  %112 = load ptr, ptr %11, align 8, !tbaa !7
  %113 = load float, ptr %112, align 4, !tbaa !10
  %114 = load float, ptr %8, align 4, !tbaa !10
  %115 = load ptr, ptr %9, align 8, !tbaa !7
  %116 = load float, ptr %115, align 4, !tbaa !10
  %117 = call float @llvm.fmuladd.f32(float %114, float %116, float %113)
  %118 = load ptr, ptr %9, align 8, !tbaa !7
  store float %117, ptr %118, align 4, !tbaa !10
  br label %119

119:                                              ; preds = %111
  %120 = load i32, ptr %13, align 4, !tbaa !3
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %13, align 4, !tbaa !3
  %122 = load i32, ptr %10, align 4, !tbaa !3
  %123 = load ptr, ptr %9, align 8, !tbaa !7
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds float, ptr %123, i64 %124
  store ptr %125, ptr %9, align 8, !tbaa !7
  %126 = load i32, ptr %12, align 4, !tbaa !3
  %127 = load ptr, ptr %11, align 8, !tbaa !7
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds float, ptr %127, i64 %128
  store ptr %129, ptr %11, align 8, !tbaa !7
  br label %107, !llvm.loop !20

130:                                              ; preds = %107
  store i32 0, ptr %14, align 4
  br label %131

131:                                              ; preds = %130, %78, %50, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #3
  %132 = load i32, ptr %14, align 4
  switch i32 %132, label %134 [
    i32 0, label %133
    i32 1, label %133
  ]

133:                                              ; preds = %131, %131
  ret void

134:                                              ; preds = %131
  unreachable
}

; Function Attrs: nounwind
define dso_local void @scopy(i32 noundef signext %0, ptr noundef %1, i32 noundef signext %2, ptr noundef %3, i32 noundef signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %6, align 4, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !3
  store ptr %3, ptr %9, align 8, !tbaa !7
  store i32 %4, ptr %10, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #3
  %13 = load i32, ptr %6, align 4, !tbaa !3
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 1, ptr %12, align 4
  br label %110

16:                                               ; preds = %5
  %17 = load i32, ptr %8, align 4, !tbaa !3
  %18 = load i32, ptr %10, align 4, !tbaa !3
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  %21 = load i32, ptr %8, align 4, !tbaa !3
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  store i32 0, ptr %11, align 4, !tbaa !3
  br label %24

24:                                               ; preds = %34, %23
  %25 = load i32, ptr %11, align 4, !tbaa !3
  %26 = load i32, ptr %6, align 4, !tbaa !3
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load ptr, ptr %7, align 8, !tbaa !7
  %30 = getelementptr inbounds nuw float, ptr %29, i32 1
  store ptr %30, ptr %7, align 8, !tbaa !7
  %31 = load float, ptr %29, align 4, !tbaa !10
  %32 = load ptr, ptr %9, align 8, !tbaa !7
  %33 = getelementptr inbounds nuw float, ptr %32, i32 1
  store ptr %33, ptr %9, align 8, !tbaa !7
  store float %31, ptr %32, align 4, !tbaa !10
  br label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %11, align 4, !tbaa !3
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %11, align 4, !tbaa !3
  br label %24, !llvm.loop !21

37:                                               ; preds = %24
  store i32 1, ptr %12, align 4
  br label %110

38:                                               ; preds = %20
  %39 = load i32, ptr %8, align 4, !tbaa !3
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  store i32 0, ptr %11, align 4, !tbaa !3
  br label %42

42:                                               ; preds = %50, %41
  %43 = load i32, ptr %11, align 4, !tbaa !3
  %44 = load i32, ptr %6, align 4, !tbaa !3
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load ptr, ptr %7, align 8, !tbaa !7
  %48 = load float, ptr %47, align 4, !tbaa !10
  %49 = load ptr, ptr %9, align 8, !tbaa !7
  store float %48, ptr %49, align 4, !tbaa !10
  br label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %11, align 4, !tbaa !3
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %11, align 4, !tbaa !3
  %53 = load i32, ptr %8, align 4, !tbaa !3
  %54 = load ptr, ptr %7, align 8, !tbaa !7
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds float, ptr %54, i64 %55
  store ptr %56, ptr %7, align 8, !tbaa !7
  %57 = load i32, ptr %8, align 4, !tbaa !3
  %58 = load ptr, ptr %9, align 8, !tbaa !7
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds float, ptr %58, i64 %59
  store ptr %60, ptr %9, align 8, !tbaa !7
  br label %42, !llvm.loop !22

61:                                               ; preds = %42
  store i32 1, ptr %12, align 4
  br label %110

62:                                               ; preds = %38
  br label %63

63:                                               ; preds = %62, %16
  %64 = load i32, ptr %8, align 4, !tbaa !3
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i32, ptr %6, align 4, !tbaa !3
  %68 = sub nsw i32 0, %67
  %69 = add nsw i32 %68, 1
  %70 = load i32, ptr %8, align 4, !tbaa !3
  %71 = mul nsw i32 %69, %70
  %72 = add nsw i32 %71, 1
  %73 = load ptr, ptr %7, align 8, !tbaa !7
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds float, ptr %73, i64 %74
  store ptr %75, ptr %7, align 8, !tbaa !7
  br label %76

76:                                               ; preds = %66, %63
  %77 = load i32, ptr %10, align 4, !tbaa !3
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32, ptr %6, align 4, !tbaa !3
  %81 = sub nsw i32 0, %80
  %82 = add nsw i32 %81, 1
  %83 = load i32, ptr %10, align 4, !tbaa !3
  %84 = mul nsw i32 %82, %83
  %85 = add nsw i32 %84, 1
  %86 = load ptr, ptr %9, align 8, !tbaa !7
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds float, ptr %86, i64 %87
  store ptr %88, ptr %9, align 8, !tbaa !7
  br label %89

89:                                               ; preds = %79, %76
  store i32 0, ptr %11, align 4, !tbaa !3
  br label %90

90:                                               ; preds = %98, %89
  %91 = load i32, ptr %11, align 4, !tbaa !3
  %92 = load i32, ptr %6, align 4, !tbaa !3
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load ptr, ptr %9, align 8, !tbaa !7
  %96 = load float, ptr %95, align 4, !tbaa !10
  %97 = load ptr, ptr %7, align 8, !tbaa !7
  store float %96, ptr %97, align 4, !tbaa !10
  br label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %11, align 4, !tbaa !3
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %11, align 4, !tbaa !3
  %101 = load i32, ptr %8, align 4, !tbaa !3
  %102 = load ptr, ptr %7, align 8, !tbaa !7
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds float, ptr %102, i64 %103
  store ptr %104, ptr %7, align 8, !tbaa !7
  %105 = load i32, ptr %10, align 4, !tbaa !3
  %106 = load ptr, ptr %9, align 8, !tbaa !7
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds float, ptr %106, i64 %107
  store ptr %108, ptr %9, align 8, !tbaa !7
  br label %90, !llvm.loop !23

109:                                              ; preds = %90
  store i32 1, ptr %12, align 4
  br label %110

110:                                              ; preds = %109, %61, %37, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #3
  ret void
}

; Function Attrs: nounwind
define dso_local double @sdot(i32 noundef signext %0, ptr noundef %1, i32 noundef signext %2, ptr noundef %3, i32 noundef signext %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  store i32 %0, ptr %7, align 4, !tbaa !3
  store ptr %1, ptr %8, align 8, !tbaa !7
  store i32 %2, ptr %9, align 4, !tbaa !3
  store ptr %3, ptr %10, align 8, !tbaa !7
  store i32 %4, ptr %11, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #3
  store float 0.000000e+00, ptr %13, align 4, !tbaa !10
  %15 = load i32, ptr %7, align 4, !tbaa !3
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load float, ptr %13, align 4, !tbaa !10
  %19 = fpext float %18 to double
  store double %19, ptr %6, align 8
  store i32 1, ptr %14, align 4
  br label %131

20:                                               ; preds = %5
  %21 = load i32, ptr %9, align 4, !tbaa !3
  %22 = load i32, ptr %11, align 4, !tbaa !3
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %20
  %25 = load i32, ptr %9, align 4, !tbaa !3
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  store i32 0, ptr %12, align 4, !tbaa !3
  br label %28

28:                                               ; preds = %39, %27
  %29 = load i32, ptr %12, align 4, !tbaa !3
  %30 = load i32, ptr %7, align 4, !tbaa !3
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load ptr, ptr %8, align 8, !tbaa !7
  %34 = load float, ptr %33, align 4, !tbaa !10
  %35 = load ptr, ptr %10, align 8, !tbaa !7
  %36 = load float, ptr %35, align 4, !tbaa !10
  %37 = load float, ptr %13, align 4, !tbaa !10
  %38 = call float @llvm.fmuladd.f32(float %34, float %36, float %37)
  store float %38, ptr %13, align 4, !tbaa !10
  br label %39

39:                                               ; preds = %32
  %40 = load i32, ptr %12, align 4, !tbaa !3
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %12, align 4, !tbaa !3
  %42 = load ptr, ptr %8, align 8, !tbaa !7
  %43 = getelementptr inbounds nuw float, ptr %42, i32 1
  store ptr %43, ptr %8, align 8, !tbaa !7
  %44 = load ptr, ptr %10, align 8, !tbaa !7
  %45 = getelementptr inbounds nuw float, ptr %44, i32 1
  store ptr %45, ptr %10, align 8, !tbaa !7
  br label %28, !llvm.loop !24

46:                                               ; preds = %28
  %47 = load float, ptr %13, align 4, !tbaa !10
  %48 = fpext float %47 to double
  store double %48, ptr %6, align 8
  store i32 1, ptr %14, align 4
  br label %131

49:                                               ; preds = %24
  %50 = load i32, ptr %9, align 4, !tbaa !3
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %49
  store i32 0, ptr %12, align 4, !tbaa !3
  br label %53

53:                                               ; preds = %64, %52
  %54 = load i32, ptr %12, align 4, !tbaa !3
  %55 = load i32, ptr %7, align 4, !tbaa !3
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load ptr, ptr %8, align 8, !tbaa !7
  %59 = load float, ptr %58, align 4, !tbaa !10
  %60 = load ptr, ptr %10, align 8, !tbaa !7
  %61 = load float, ptr %60, align 4, !tbaa !10
  %62 = load float, ptr %13, align 4, !tbaa !10
  %63 = call float @llvm.fmuladd.f32(float %59, float %61, float %62)
  store float %63, ptr %13, align 4, !tbaa !10
  br label %64

64:                                               ; preds = %57
  %65 = load i32, ptr %12, align 4, !tbaa !3
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %12, align 4, !tbaa !3
  %67 = load i32, ptr %9, align 4, !tbaa !3
  %68 = load ptr, ptr %8, align 8, !tbaa !7
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds float, ptr %68, i64 %69
  store ptr %70, ptr %8, align 8, !tbaa !7
  %71 = load i32, ptr %9, align 4, !tbaa !3
  %72 = load ptr, ptr %10, align 8, !tbaa !7
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds float, ptr %72, i64 %73
  store ptr %74, ptr %10, align 8, !tbaa !7
  br label %53, !llvm.loop !25

75:                                               ; preds = %53
  %76 = load float, ptr %13, align 4, !tbaa !10
  %77 = fpext float %76 to double
  store double %77, ptr %6, align 8
  store i32 1, ptr %14, align 4
  br label %131

78:                                               ; preds = %49
  br label %79

79:                                               ; preds = %78, %20
  %80 = load i32, ptr %9, align 4, !tbaa !3
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, ptr %7, align 4, !tbaa !3
  %84 = sub nsw i32 0, %83
  %85 = add nsw i32 %84, 1
  %86 = load i32, ptr %9, align 4, !tbaa !3
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %87, 1
  %89 = load ptr, ptr %8, align 8, !tbaa !7
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds float, ptr %89, i64 %90
  store ptr %91, ptr %8, align 8, !tbaa !7
  br label %92

92:                                               ; preds = %82, %79
  %93 = load i32, ptr %11, align 4, !tbaa !3
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i32, ptr %7, align 4, !tbaa !3
  %97 = sub nsw i32 0, %96
  %98 = add nsw i32 %97, 1
  %99 = load i32, ptr %11, align 4, !tbaa !3
  %100 = mul nsw i32 %98, %99
  %101 = add nsw i32 %100, 1
  %102 = load ptr, ptr %10, align 8, !tbaa !7
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds float, ptr %102, i64 %103
  store ptr %104, ptr %10, align 8, !tbaa !7
  br label %105

105:                                              ; preds = %95, %92
  store i32 0, ptr %12, align 4, !tbaa !3
  br label %106

106:                                              ; preds = %117, %105
  %107 = load i32, ptr %12, align 4, !tbaa !3
  %108 = load i32, ptr %7, align 4, !tbaa !3
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %106
  %111 = load ptr, ptr %8, align 8, !tbaa !7
  %112 = load float, ptr %111, align 4, !tbaa !10
  %113 = load ptr, ptr %10, align 8, !tbaa !7
  %114 = load float, ptr %113, align 4, !tbaa !10
  %115 = load float, ptr %13, align 4, !tbaa !10
  %116 = call float @llvm.fmuladd.f32(float %112, float %114, float %115)
  store float %116, ptr %13, align 4, !tbaa !10
  br label %117

117:                                              ; preds = %110
  %118 = load i32, ptr %12, align 4, !tbaa !3
  %119 = add nsw i32 %118, 1
  store i32 %119, ptr %12, align 4, !tbaa !3
  %120 = load i32, ptr %9, align 4, !tbaa !3
  %121 = load ptr, ptr %8, align 8, !tbaa !7
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds float, ptr %121, i64 %122
  store ptr %123, ptr %8, align 8, !tbaa !7
  %124 = load i32, ptr %11, align 4, !tbaa !3
  %125 = load ptr, ptr %10, align 8, !tbaa !7
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds float, ptr %125, i64 %126
  store ptr %127, ptr %10, align 8, !tbaa !7
  br label %106, !llvm.loop !26

128:                                              ; preds = %106
  %129 = load float, ptr %13, align 4, !tbaa !10
  %130 = fpext float %129 to double
  store double %130, ptr %6, align 8
  store i32 1, ptr %14, align 4
  br label %131

131:                                              ; preds = %128, %75, %46, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #3
  %132 = load double, ptr %6, align 8
  ret double %132
}

; Function Attrs: nounwind
define dso_local double @snrm2(i32 noundef signext %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !7
  store i32 %2, ptr %7, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #3
  store i32 3, ptr %9, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #3
  store double 0.000000e+00, ptr %10, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #3
  %16 = load i32, ptr %5, align 4, !tbaa !3
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, ptr %7, align 4, !tbaa !3
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %3
  %22 = load double, ptr %10, align 8, !tbaa !27
  store double %22, ptr %4, align 8
  store i32 1, ptr %15, align 4
  br label %340

23:                                               ; preds = %18
  %24 = call double @r1mach()
  %25 = fdiv double 0x3696D601AD376AB9, %24
  %26 = call double @sqrt(double noundef %25) #3, !tbaa !3
  store double %26, ptr %11, align 8, !tbaa !27
  %27 = call double @sqrt(double noundef 0x47D2CED32A16A1B1) #3, !tbaa !3
  store double %27, ptr %12, align 8, !tbaa !27
  %28 = load double, ptr %12, align 8, !tbaa !27
  %29 = load i32, ptr %5, align 4, !tbaa !3
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %28, %30
  store double %31, ptr %13, align 8, !tbaa !27
  store i32 0, ptr %8, align 4, !tbaa !3
  br label %32

32:                                               ; preds = %43, %23
  %33 = load i32, ptr %8, align 4, !tbaa !3
  %34 = load i32, ptr %5, align 4, !tbaa !3
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load ptr, ptr %6, align 8, !tbaa !7
  %38 = load float, ptr %37, align 4, !tbaa !10
  %39 = fpext float %38 to double
  %40 = fcmp oeq double %39, 0.000000e+00
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i1 [ false, %32 ], [ %40, %36 ]
  br i1 %42, label %43, label %50

43:                                               ; preds = %41
  %44 = load i32, ptr %8, align 4, !tbaa !3
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %8, align 4, !tbaa !3
  %46 = load i32, ptr %7, align 4, !tbaa !3
  %47 = load ptr, ptr %6, align 8, !tbaa !7
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds float, ptr %47, i64 %48
  store ptr %49, ptr %6, align 8, !tbaa !7
  br label %32, !llvm.loop !29

50:                                               ; preds = %41
  %51 = load i32, ptr %8, align 4, !tbaa !3
  %52 = load i32, ptr %5, align 4, !tbaa !3
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load double, ptr %10, align 8, !tbaa !27
  store double %55, ptr %4, align 8
  store i32 1, ptr %15, align 4
  br label %340

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %160, %56
  %58 = load ptr, ptr %6, align 8, !tbaa !7
  %59 = load float, ptr %58, align 4, !tbaa !10
  %60 = fpext float %59 to double
  %61 = fcmp ogt double %60, 0.000000e+00
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load ptr, ptr %6, align 8, !tbaa !7
  %64 = load float, ptr %63, align 4, !tbaa !10
  br label %69

65:                                               ; preds = %57
  %66 = load ptr, ptr %6, align 8, !tbaa !7
  %67 = load float, ptr %66, align 4, !tbaa !10
  %68 = fneg float %67
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi float [ %64, %62 ], [ %68, %65 ]
  %71 = fpext float %70 to double
  %72 = load double, ptr %11, align 8, !tbaa !27
  %73 = fcmp ogt double %71, %72
  br i1 %73, label %74, label %117

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %106, %74
  %76 = load i32, ptr %8, align 4, !tbaa !3
  %77 = load i32, ptr %5, align 4, !tbaa !3
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %75
  %80 = load ptr, ptr %6, align 8, !tbaa !7
  %81 = load float, ptr %80, align 4, !tbaa !10
  %82 = fpext float %81 to double
  %83 = fcmp ogt double %82, 0.000000e+00
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load ptr, ptr %6, align 8, !tbaa !7
  %86 = load float, ptr %85, align 4, !tbaa !10
  br label %91

87:                                               ; preds = %79
  %88 = load ptr, ptr %6, align 8, !tbaa !7
  %89 = load float, ptr %88, align 4, !tbaa !10
  %90 = fneg float %89
  br label %91

91:                                               ; preds = %87, %84
  %92 = phi float [ %86, %84 ], [ %90, %87 ]
  %93 = fpext float %92 to double
  %94 = load double, ptr %13, align 8, !tbaa !27
  %95 = fcmp ogt double %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %237

97:                                               ; preds = %91
  %98 = load ptr, ptr %6, align 8, !tbaa !7
  %99 = load float, ptr %98, align 4, !tbaa !10
  %100 = load ptr, ptr %6, align 8, !tbaa !7
  %101 = load float, ptr %100, align 4, !tbaa !10
  %102 = fmul float %99, %101
  %103 = fpext float %102 to double
  %104 = load double, ptr %10, align 8, !tbaa !27
  %105 = fadd double %104, %103
  store double %105, ptr %10, align 8, !tbaa !27
  br label %106

106:                                              ; preds = %97
  %107 = load i32, ptr %8, align 4, !tbaa !3
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %8, align 4, !tbaa !3
  %109 = load i32, ptr %7, align 4, !tbaa !3
  %110 = load ptr, ptr %6, align 8, !tbaa !7
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds float, ptr %110, i64 %111
  store ptr %112, ptr %6, align 8, !tbaa !7
  br label %75, !llvm.loop !30

113:                                              ; preds = %75
  %114 = load double, ptr %10, align 8, !tbaa !27
  %115 = call double @sqrt(double noundef %114) #3, !tbaa !3
  store double %115, ptr %10, align 8, !tbaa !27
  %116 = load double, ptr %10, align 8, !tbaa !27
  store double %116, ptr %4, align 8
  store i32 1, ptr %15, align 4
  br label %340

117:                                              ; preds = %69
  %118 = load ptr, ptr %6, align 8, !tbaa !7
  %119 = load float, ptr %118, align 4, !tbaa !10
  %120 = fpext float %119 to double
  %121 = fcmp ogt double %120, 0.000000e+00
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load ptr, ptr %6, align 8, !tbaa !7
  %124 = load float, ptr %123, align 4, !tbaa !10
  br label %129

125:                                              ; preds = %117
  %126 = load ptr, ptr %6, align 8, !tbaa !7
  %127 = load float, ptr %126, align 4, !tbaa !10
  %128 = fneg float %127
  br label %129

129:                                              ; preds = %125, %122
  %130 = phi float [ %124, %122 ], [ %128, %125 ]
  store float %130, ptr %14, align 4, !tbaa !10
  %131 = load i32, ptr %7, align 4, !tbaa !3
  %132 = load ptr, ptr %6, align 8, !tbaa !7
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds float, ptr %132, i64 %133
  store ptr %134, ptr %6, align 8, !tbaa !7
  %135 = load i32, ptr %8, align 4, !tbaa !3
  %136 = add nsw i32 %135, 1
  store i32 %136, ptr %8, align 4, !tbaa !3
  %137 = load double, ptr %10, align 8, !tbaa !27
  %138 = fadd double %137, 1.000000e+00
  store double %138, ptr %10, align 8, !tbaa !27
  br label %139

139:                                              ; preds = %224, %129
  %140 = load i32, ptr %8, align 4, !tbaa !3
  %141 = load i32, ptr %5, align 4, !tbaa !3
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %231

143:                                              ; preds = %139
  %144 = load ptr, ptr %6, align 8, !tbaa !7
  %145 = load float, ptr %144, align 4, !tbaa !10
  %146 = fpext float %145 to double
  %147 = fcmp ogt double %146, 0.000000e+00
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load ptr, ptr %6, align 8, !tbaa !7
  %150 = load float, ptr %149, align 4, !tbaa !10
  br label %155

151:                                              ; preds = %143
  %152 = load ptr, ptr %6, align 8, !tbaa !7
  %153 = load float, ptr %152, align 4, !tbaa !10
  %154 = fneg float %153
  br label %155

155:                                              ; preds = %151, %148
  %156 = phi float [ %150, %148 ], [ %154, %151 ]
  %157 = fpext float %156 to double
  %158 = load double, ptr %11, align 8, !tbaa !27
  %159 = fcmp ogt double %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load double, ptr %10, align 8, !tbaa !27
  %162 = load float, ptr %14, align 4, !tbaa !10
  %163 = fpext float %162 to double
  %164 = fmul double %161, %163
  %165 = load float, ptr %14, align 4, !tbaa !10
  %166 = fpext float %165 to double
  %167 = fmul double %164, %166
  store double %167, ptr %10, align 8, !tbaa !27
  br label %57

168:                                              ; preds = %155
  %169 = load ptr, ptr %6, align 8, !tbaa !7
  %170 = load float, ptr %169, align 4, !tbaa !10
  %171 = fpext float %170 to double
  %172 = fcmp ogt double %171, 0.000000e+00
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load ptr, ptr %6, align 8, !tbaa !7
  %175 = load float, ptr %174, align 4, !tbaa !10
  br label %180

176:                                              ; preds = %168
  %177 = load ptr, ptr %6, align 8, !tbaa !7
  %178 = load float, ptr %177, align 4, !tbaa !10
  %179 = fneg float %178
  br label %180

180:                                              ; preds = %176, %173
  %181 = phi float [ %175, %173 ], [ %179, %176 ]
  %182 = load float, ptr %14, align 4, !tbaa !10
  %183 = fcmp ogt float %181, %182
  br i1 %183, label %184, label %211

184:                                              ; preds = %180
  %185 = load double, ptr %10, align 8, !tbaa !27
  %186 = load float, ptr %14, align 4, !tbaa !10
  %187 = load ptr, ptr %6, align 8, !tbaa !7
  %188 = load float, ptr %187, align 4, !tbaa !10
  %189 = fdiv float %186, %188
  %190 = fpext float %189 to double
  %191 = fmul double %185, %190
  %192 = load float, ptr %14, align 4, !tbaa !10
  %193 = load ptr, ptr %6, align 8, !tbaa !7
  %194 = load float, ptr %193, align 4, !tbaa !10
  %195 = fdiv float %192, %194
  %196 = fpext float %195 to double
  %197 = call double @llvm.fmuladd.f64(double %191, double %196, double 1.000000e+00)
  store double %197, ptr %10, align 8, !tbaa !27
  %198 = load ptr, ptr %6, align 8, !tbaa !7
  %199 = load float, ptr %198, align 4, !tbaa !10
  %200 = fpext float %199 to double
  %201 = fcmp ogt double %200, 0.000000e+00
  br i1 %201, label %202, label %205

202:                                              ; preds = %184
  %203 = load ptr, ptr %6, align 8, !tbaa !7
  %204 = load float, ptr %203, align 4, !tbaa !10
  br label %209

205:                                              ; preds = %184
  %206 = load ptr, ptr %6, align 8, !tbaa !7
  %207 = load float, ptr %206, align 4, !tbaa !10
  %208 = fneg float %207
  br label %209

209:                                              ; preds = %205, %202
  %210 = phi float [ %204, %202 ], [ %208, %205 ]
  store float %210, ptr %14, align 4, !tbaa !10
  br label %224

211:                                              ; preds = %180
  %212 = load ptr, ptr %6, align 8, !tbaa !7
  %213 = load float, ptr %212, align 4, !tbaa !10
  %214 = load float, ptr %14, align 4, !tbaa !10
  %215 = fdiv float %213, %214
  %216 = load ptr, ptr %6, align 8, !tbaa !7
  %217 = load float, ptr %216, align 4, !tbaa !10
  %218 = load float, ptr %14, align 4, !tbaa !10
  %219 = fdiv float %217, %218
  %220 = fmul float %215, %219
  %221 = fpext float %220 to double
  %222 = load double, ptr %10, align 8, !tbaa !27
  %223 = fadd double %222, %221
  store double %223, ptr %10, align 8, !tbaa !27
  br label %224

224:                                              ; preds = %211, %209
  %225 = load i32, ptr %8, align 4, !tbaa !3
  %226 = add nsw i32 %225, 1
  store i32 %226, ptr %8, align 4, !tbaa !3
  %227 = load i32, ptr %7, align 4, !tbaa !3
  %228 = load ptr, ptr %6, align 8, !tbaa !7
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds float, ptr %228, i64 %229
  store ptr %230, ptr %6, align 8, !tbaa !7
  br label %139, !llvm.loop !31

231:                                              ; preds = %139
  %232 = load float, ptr %14, align 4, !tbaa !10
  %233 = fpext float %232 to double
  %234 = load double, ptr %10, align 8, !tbaa !27
  %235 = call double @sqrt(double noundef %234) #3, !tbaa !3
  %236 = fmul double %233, %235
  store double %236, ptr %4, align 8
  store i32 1, ptr %15, align 4
  br label %340

237:                                              ; preds = %96
  %238 = load double, ptr %10, align 8, !tbaa !27
  %239 = load ptr, ptr %6, align 8, !tbaa !7
  %240 = load float, ptr %239, align 4, !tbaa !10
  %241 = fpext float %240 to double
  %242 = fdiv double %238, %241
  %243 = load ptr, ptr %6, align 8, !tbaa !7
  %244 = load float, ptr %243, align 4, !tbaa !10
  %245 = fpext float %244 to double
  %246 = fdiv double %242, %245
  %247 = fadd double 1.000000e+00, %246
  store double %247, ptr %10, align 8, !tbaa !27
  %248 = load ptr, ptr %6, align 8, !tbaa !7
  %249 = load float, ptr %248, align 4, !tbaa !10
  %250 = fpext float %249 to double
  %251 = fcmp ogt double %250, 0.000000e+00
  br i1 %251, label %252, label %255

252:                                              ; preds = %237
  %253 = load ptr, ptr %6, align 8, !tbaa !7
  %254 = load float, ptr %253, align 4, !tbaa !10
  br label %259

255:                                              ; preds = %237
  %256 = load ptr, ptr %6, align 8, !tbaa !7
  %257 = load float, ptr %256, align 4, !tbaa !10
  %258 = fneg float %257
  br label %259

259:                                              ; preds = %255, %252
  %260 = phi float [ %254, %252 ], [ %258, %255 ]
  store float %260, ptr %14, align 4, !tbaa !10
  %261 = load i32, ptr %7, align 4, !tbaa !3
  %262 = load ptr, ptr %6, align 8, !tbaa !7
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds float, ptr %262, i64 %263
  store ptr %264, ptr %6, align 8, !tbaa !7
  %265 = load i32, ptr %8, align 4, !tbaa !3
  %266 = add nsw i32 %265, 1
  store i32 %266, ptr %8, align 4, !tbaa !3
  br label %267

267:                                              ; preds = %327, %259
  %268 = load i32, ptr %8, align 4, !tbaa !3
  %269 = load i32, ptr %5, align 4, !tbaa !3
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %334

271:                                              ; preds = %267
  %272 = load ptr, ptr %6, align 8, !tbaa !7
  %273 = load float, ptr %272, align 4, !tbaa !10
  %274 = fpext float %273 to double
  %275 = fcmp ogt double %274, 0.000000e+00
  br i1 %275, label %276, label %279

276:                                              ; preds = %271
  %277 = load ptr, ptr %6, align 8, !tbaa !7
  %278 = load float, ptr %277, align 4, !tbaa !10
  br label %283

279:                                              ; preds = %271
  %280 = load ptr, ptr %6, align 8, !tbaa !7
  %281 = load float, ptr %280, align 4, !tbaa !10
  %282 = fneg float %281
  br label %283

283:                                              ; preds = %279, %276
  %284 = phi float [ %278, %276 ], [ %282, %279 ]
  %285 = load float, ptr %14, align 4, !tbaa !10
  %286 = fcmp ogt float %284, %285
  br i1 %286, label %287, label %314

287:                                              ; preds = %283
  %288 = load double, ptr %10, align 8, !tbaa !27
  %289 = load float, ptr %14, align 4, !tbaa !10
  %290 = load ptr, ptr %6, align 8, !tbaa !7
  %291 = load float, ptr %290, align 4, !tbaa !10
  %292 = fdiv float %289, %291
  %293 = fpext float %292 to double
  %294 = fmul double %288, %293
  %295 = load float, ptr %14, align 4, !tbaa !10
  %296 = load ptr, ptr %6, align 8, !tbaa !7
  %297 = load float, ptr %296, align 4, !tbaa !10
  %298 = fdiv float %295, %297
  %299 = fpext float %298 to double
  %300 = call double @llvm.fmuladd.f64(double %294, double %299, double 1.000000e+00)
  store double %300, ptr %10, align 8, !tbaa !27
  %301 = load ptr, ptr %6, align 8, !tbaa !7
  %302 = load float, ptr %301, align 4, !tbaa !10
  %303 = fpext float %302 to double
  %304 = fcmp ogt double %303, 0.000000e+00
  br i1 %304, label %305, label %308

305:                                              ; preds = %287
  %306 = load ptr, ptr %6, align 8, !tbaa !7
  %307 = load float, ptr %306, align 4, !tbaa !10
  br label %312

308:                                              ; preds = %287
  %309 = load ptr, ptr %6, align 8, !tbaa !7
  %310 = load float, ptr %309, align 4, !tbaa !10
  %311 = fneg float %310
  br label %312

312:                                              ; preds = %308, %305
  %313 = phi float [ %307, %305 ], [ %311, %308 ]
  store float %313, ptr %14, align 4, !tbaa !10
  br label %327

314:                                              ; preds = %283
  %315 = load ptr, ptr %6, align 8, !tbaa !7
  %316 = load float, ptr %315, align 4, !tbaa !10
  %317 = load float, ptr %14, align 4, !tbaa !10
  %318 = fdiv float %316, %317
  %319 = load ptr, ptr %6, align 8, !tbaa !7
  %320 = load float, ptr %319, align 4, !tbaa !10
  %321 = load float, ptr %14, align 4, !tbaa !10
  %322 = fdiv float %320, %321
  %323 = fmul float %318, %322
  %324 = fpext float %323 to double
  %325 = load double, ptr %10, align 8, !tbaa !27
  %326 = fadd double %325, %324
  store double %326, ptr %10, align 8, !tbaa !27
  br label %327

327:                                              ; preds = %314, %312
  %328 = load i32, ptr %8, align 4, !tbaa !3
  %329 = add nsw i32 %328, 1
  store i32 %329, ptr %8, align 4, !tbaa !3
  %330 = load i32, ptr %7, align 4, !tbaa !3
  %331 = load ptr, ptr %6, align 8, !tbaa !7
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds float, ptr %331, i64 %332
  store ptr %333, ptr %6, align 8, !tbaa !7
  br label %267, !llvm.loop !32

334:                                              ; preds = %267
  %335 = load float, ptr %14, align 4, !tbaa !10
  %336 = fpext float %335 to double
  %337 = load double, ptr %10, align 8, !tbaa !27
  %338 = call double @sqrt(double noundef %337) #3, !tbaa !3
  %339 = fmul double %336, %338
  store double %339, ptr %4, align 8
  store i32 1, ptr %15, align 4
  br label %340

340:                                              ; preds = %334, %231, %113, %54, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #3
  %341 = load double, ptr %4, align 8
  ret double %341
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind
define dso_local double @r1mach() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #3
  store float 1.000000e+00, ptr %1, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #3
  br label %3

3:                                                ; preds = %12, %0
  %4 = load float, ptr %1, align 4, !tbaa !10
  %5 = fpext float %4 to double
  %6 = fmul double %5, 5.000000e-01
  %7 = fptrunc double %6 to float
  store float %7, ptr %1, align 4, !tbaa !10
  %8 = load float, ptr %1, align 4, !tbaa !10
  %9 = fpext float %8 to double
  %10 = fadd double 1.000000e+00, %9
  %11 = fptrunc double %10 to float
  store float %11, ptr %2, align 4, !tbaa !10
  br label %12

12:                                               ; preds = %3
  %13 = load float, ptr %2, align 4, !tbaa !10
  %14 = fpext float %13 to double
  %15 = fcmp une double %14, 1.000000e+00
  br i1 %15, label %3, label %16, !llvm.loop !33

16:                                               ; preds = %12
  %17 = load float, ptr %1, align 4, !tbaa !10
  %18 = fpext float %17 to double
  %19 = fmul double %18, 2.000000e+00
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #3
  ret double %19
}

; Function Attrs: nounwind
define dso_local signext i32 @min0(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8, i32 noundef signext %9, i32 noundef signext %10, i32 noundef signext %11, i32 noundef signext %12, i32 noundef signext %13, i32 noundef signext %14, i32 noundef signext %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32 %0, ptr %18, align 4, !tbaa !3
  store i32 %1, ptr %19, align 4, !tbaa !3
  store i32 %2, ptr %20, align 4, !tbaa !3
  store i32 %3, ptr %21, align 4, !tbaa !3
  store i32 %4, ptr %22, align 4, !tbaa !3
  store i32 %5, ptr %23, align 4, !tbaa !3
  store i32 %6, ptr %24, align 4, !tbaa !3
  store i32 %7, ptr %25, align 4, !tbaa !3
  store i32 %8, ptr %26, align 4, !tbaa !3
  store i32 %9, ptr %27, align 4, !tbaa !3
  store i32 %10, ptr %28, align 4, !tbaa !3
  store i32 %11, ptr %29, align 4, !tbaa !3
  store i32 %12, ptr %30, align 4, !tbaa !3
  store i32 %13, ptr %31, align 4, !tbaa !3
  store i32 %14, ptr %32, align 4, !tbaa !3
  store i32 %15, ptr %33, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %34) #3
  %36 = load i32, ptr %18, align 4, !tbaa !3
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %16
  %39 = load i32, ptr %18, align 4, !tbaa !3
  %40 = icmp sgt i32 %39, 15
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %16
  store i32 -1, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

42:                                               ; preds = %38
  %43 = load i32, ptr %19, align 4, !tbaa !3
  store i32 %43, ptr %34, align 4, !tbaa !3
  %44 = load i32, ptr %18, align 4, !tbaa !3
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %47, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

48:                                               ; preds = %42
  %49 = load i32, ptr %34, align 4, !tbaa !3
  %50 = load i32, ptr %20, align 4, !tbaa !3
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, ptr %20, align 4, !tbaa !3
  store i32 %53, ptr %34, align 4, !tbaa !3
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, ptr %18, align 4, !tbaa !3
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %58, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

59:                                               ; preds = %54
  %60 = load i32, ptr %34, align 4, !tbaa !3
  %61 = load i32, ptr %21, align 4, !tbaa !3
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, ptr %21, align 4, !tbaa !3
  store i32 %64, ptr %34, align 4, !tbaa !3
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32, ptr %18, align 4, !tbaa !3
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %69, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

70:                                               ; preds = %65
  %71 = load i32, ptr %34, align 4, !tbaa !3
  %72 = load i32, ptr %22, align 4, !tbaa !3
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, ptr %22, align 4, !tbaa !3
  store i32 %75, ptr %34, align 4, !tbaa !3
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i32, ptr %18, align 4, !tbaa !3
  %78 = icmp eq i32 %77, 4
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %80, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

81:                                               ; preds = %76
  %82 = load i32, ptr %34, align 4, !tbaa !3
  %83 = load i32, ptr %23, align 4, !tbaa !3
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, ptr %23, align 4, !tbaa !3
  store i32 %86, ptr %34, align 4, !tbaa !3
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i32, ptr %18, align 4, !tbaa !3
  %89 = icmp eq i32 %88, 5
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %91, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

92:                                               ; preds = %87
  %93 = load i32, ptr %34, align 4, !tbaa !3
  %94 = load i32, ptr %24, align 4, !tbaa !3
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, ptr %24, align 4, !tbaa !3
  store i32 %97, ptr %34, align 4, !tbaa !3
  br label %98

98:                                               ; preds = %96, %92
  %99 = load i32, ptr %18, align 4, !tbaa !3
  %100 = icmp eq i32 %99, 6
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %102, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

103:                                              ; preds = %98
  %104 = load i32, ptr %34, align 4, !tbaa !3
  %105 = load i32, ptr %25, align 4, !tbaa !3
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, ptr %25, align 4, !tbaa !3
  store i32 %108, ptr %34, align 4, !tbaa !3
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i32, ptr %18, align 4, !tbaa !3
  %111 = icmp eq i32 %110, 7
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %113, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

114:                                              ; preds = %109
  %115 = load i32, ptr %34, align 4, !tbaa !3
  %116 = load i32, ptr %26, align 4, !tbaa !3
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, ptr %26, align 4, !tbaa !3
  store i32 %119, ptr %34, align 4, !tbaa !3
  br label %120

120:                                              ; preds = %118, %114
  %121 = load i32, ptr %18, align 4, !tbaa !3
  %122 = icmp eq i32 %121, 8
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %124, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

125:                                              ; preds = %120
  %126 = load i32, ptr %34, align 4, !tbaa !3
  %127 = load i32, ptr %27, align 4, !tbaa !3
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, ptr %27, align 4, !tbaa !3
  store i32 %130, ptr %34, align 4, !tbaa !3
  br label %131

131:                                              ; preds = %129, %125
  %132 = load i32, ptr %18, align 4, !tbaa !3
  %133 = icmp eq i32 %132, 9
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %135, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

136:                                              ; preds = %131
  %137 = load i32, ptr %34, align 4, !tbaa !3
  %138 = load i32, ptr %28, align 4, !tbaa !3
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, ptr %28, align 4, !tbaa !3
  store i32 %141, ptr %34, align 4, !tbaa !3
  br label %142

142:                                              ; preds = %140, %136
  %143 = load i32, ptr %18, align 4, !tbaa !3
  %144 = icmp eq i32 %143, 10
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %146, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

147:                                              ; preds = %142
  %148 = load i32, ptr %34, align 4, !tbaa !3
  %149 = load i32, ptr %29, align 4, !tbaa !3
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, ptr %29, align 4, !tbaa !3
  store i32 %152, ptr %34, align 4, !tbaa !3
  br label %153

153:                                              ; preds = %151, %147
  %154 = load i32, ptr %18, align 4, !tbaa !3
  %155 = icmp eq i32 %154, 11
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %157, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

158:                                              ; preds = %153
  %159 = load i32, ptr %34, align 4, !tbaa !3
  %160 = load i32, ptr %30, align 4, !tbaa !3
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32, ptr %30, align 4, !tbaa !3
  store i32 %163, ptr %34, align 4, !tbaa !3
  br label %164

164:                                              ; preds = %162, %158
  %165 = load i32, ptr %18, align 4, !tbaa !3
  %166 = icmp eq i32 %165, 12
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %168, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

169:                                              ; preds = %164
  %170 = load i32, ptr %34, align 4, !tbaa !3
  %171 = load i32, ptr %31, align 4, !tbaa !3
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, ptr %31, align 4, !tbaa !3
  store i32 %174, ptr %34, align 4, !tbaa !3
  br label %175

175:                                              ; preds = %173, %169
  %176 = load i32, ptr %18, align 4, !tbaa !3
  %177 = icmp eq i32 %176, 13
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %179, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

180:                                              ; preds = %175
  %181 = load i32, ptr %34, align 4, !tbaa !3
  %182 = load i32, ptr %32, align 4, !tbaa !3
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load i32, ptr %32, align 4, !tbaa !3
  store i32 %185, ptr %34, align 4, !tbaa !3
  br label %186

186:                                              ; preds = %184, %180
  %187 = load i32, ptr %18, align 4, !tbaa !3
  %188 = icmp eq i32 %187, 14
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %190, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

191:                                              ; preds = %186
  %192 = load i32, ptr %34, align 4, !tbaa !3
  %193 = load i32, ptr %33, align 4, !tbaa !3
  %194 = icmp sgt i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i32, ptr %33, align 4, !tbaa !3
  store i32 %196, ptr %34, align 4, !tbaa !3
  br label %197

197:                                              ; preds = %195, %191
  %198 = load i32, ptr %34, align 4, !tbaa !3
  store i32 %198, ptr %17, align 4
  store i32 1, ptr %35, align 4
  br label %199

199:                                              ; preds = %197, %189, %178, %167, %156, %145, %134, %123, %112, %101, %90, %79, %68, %57, %46, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr %34) #3
  %200 = load i32, ptr %17, align 4
  ret i32 %200
}

; Function Attrs: nounwind
define dso_local signext i32 @sscal(i32 noundef signext %0, double noundef %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = fptrunc double %1 to float
  store i32 %0, ptr %6, align 4, !tbaa !3
  store float %12, ptr %7, align 4, !tbaa !10
  store ptr %2, ptr %8, align 8, !tbaa !7
  store i32 %3, ptr %9, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #3
  %13 = load i32, ptr %6, align 4, !tbaa !3
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 1, ptr %5, align 4
  store i32 1, ptr %11, align 4
  br label %65

16:                                               ; preds = %4
  %17 = load i32, ptr %9, align 4, !tbaa !3
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = load i32, ptr %9, align 4, !tbaa !3
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, ptr %6, align 4, !tbaa !3
  %24 = sub nsw i32 0, %23
  %25 = add nsw i32 %24, 1
  %26 = load i32, ptr %9, align 4, !tbaa !3
  %27 = mul nsw i32 %25, %26
  %28 = load ptr, ptr %8, align 8, !tbaa !7
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds float, ptr %28, i64 %29
  store ptr %30, ptr %8, align 8, !tbaa !7
  br label %31

31:                                               ; preds = %22, %19
  store i32 0, ptr %10, align 4, !tbaa !3
  br label %32

32:                                               ; preds = %41, %31
  %33 = load i32, ptr %10, align 4, !tbaa !3
  %34 = load i32, ptr %6, align 4, !tbaa !3
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load float, ptr %7, align 4, !tbaa !10
  %38 = load ptr, ptr %8, align 8, !tbaa !7
  %39 = load float, ptr %38, align 4, !tbaa !10
  %40 = fmul float %39, %37
  store float %40, ptr %38, align 4, !tbaa !10
  br label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %10, align 4, !tbaa !3
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %10, align 4, !tbaa !3
  %44 = load i32, ptr %9, align 4, !tbaa !3
  %45 = load ptr, ptr %8, align 8, !tbaa !7
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds float, ptr %45, i64 %46
  store ptr %47, ptr %8, align 8, !tbaa !7
  br label %32, !llvm.loop !34

48:                                               ; preds = %32
  store i32 0, ptr %5, align 4
  store i32 1, ptr %11, align 4
  br label %65

49:                                               ; preds = %16
  store i32 0, ptr %10, align 4, !tbaa !3
  br label %50

50:                                               ; preds = %59, %49
  %51 = load i32, ptr %10, align 4, !tbaa !3
  %52 = load i32, ptr %6, align 4, !tbaa !3
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load float, ptr %7, align 4, !tbaa !10
  %56 = load ptr, ptr %8, align 8, !tbaa !7
  %57 = load float, ptr %56, align 4, !tbaa !10
  %58 = fmul float %57, %55
  store float %58, ptr %56, align 4, !tbaa !10
  br label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %10, align 4, !tbaa !3
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %10, align 4, !tbaa !3
  %62 = load ptr, ptr %8, align 8, !tbaa !7
  %63 = getelementptr inbounds nuw float, ptr %62, i32 1
  store ptr %63, ptr %8, align 8, !tbaa !7
  br label %50, !llvm.loop !35

64:                                               ; preds = %50
  store i32 0, ptr %5, align 4
  store i32 1, ptr %11, align 4
  br label %65

65:                                               ; preds = %64, %48, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #3
  %66 = load i32, ptr %5, align 4
  ret i32 %66
}

; Function Attrs: nounwind
define dso_local void @vexopy(i32 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %6, align 4, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store ptr %2, ptr %8, align 8, !tbaa !7
  store ptr %3, ptr %9, align 8, !tbaa !7
  store i32 %4, ptr %10, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #3
  %13 = load i32, ptr %6, align 4, !tbaa !3
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 1, ptr %12, align 4
  br label %64

16:                                               ; preds = %5
  %17 = load i32, ptr %10, align 4, !tbaa !3
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  store i32 0, ptr %11, align 4, !tbaa !3
  br label %20

20:                                               ; preds = %31, %19
  %21 = load i32, ptr %11, align 4, !tbaa !3
  %22 = load i32, ptr %6, align 4, !tbaa !3
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load ptr, ptr %8, align 8, !tbaa !7
  %26 = load float, ptr %25, align 4, !tbaa !10
  %27 = load ptr, ptr %9, align 8, !tbaa !7
  %28 = load float, ptr %27, align 4, !tbaa !10
  %29 = fadd float %26, %28
  %30 = load ptr, ptr %7, align 8, !tbaa !7
  store float %29, ptr %30, align 4, !tbaa !10
  br label %31

31:                                               ; preds = %24
  %32 = load i32, ptr %11, align 4, !tbaa !3
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %11, align 4, !tbaa !3
  %34 = load ptr, ptr %8, align 8, !tbaa !7
  %35 = getelementptr inbounds nuw float, ptr %34, i32 1
  store ptr %35, ptr %8, align 8, !tbaa !7
  %36 = load ptr, ptr %9, align 8, !tbaa !7
  %37 = getelementptr inbounds nuw float, ptr %36, i32 1
  store ptr %37, ptr %9, align 8, !tbaa !7
  %38 = load ptr, ptr %7, align 8, !tbaa !7
  %39 = getelementptr inbounds nuw float, ptr %38, i32 1
  store ptr %39, ptr %7, align 8, !tbaa !7
  br label %20, !llvm.loop !36

40:                                               ; preds = %20
  br label %63

41:                                               ; preds = %16
  store i32 0, ptr %11, align 4, !tbaa !3
  br label %42

42:                                               ; preds = %53, %41
  %43 = load i32, ptr %11, align 4, !tbaa !3
  %44 = load i32, ptr %6, align 4, !tbaa !3
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load ptr, ptr %8, align 8, !tbaa !7
  %48 = load float, ptr %47, align 4, !tbaa !10
  %49 = load ptr, ptr %9, align 8, !tbaa !7
  %50 = load float, ptr %49, align 4, !tbaa !10
  %51 = fsub float %48, %50
  %52 = load ptr, ptr %7, align 8, !tbaa !7
  store float %51, ptr %52, align 4, !tbaa !10
  br label %53

53:                                               ; preds = %46
  %54 = load i32, ptr %11, align 4, !tbaa !3
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %11, align 4, !tbaa !3
  %56 = load ptr, ptr %8, align 8, !tbaa !7
  %57 = getelementptr inbounds nuw float, ptr %56, i32 1
  store ptr %57, ptr %8, align 8, !tbaa !7
  %58 = load ptr, ptr %9, align 8, !tbaa !7
  %59 = getelementptr inbounds nuw float, ptr %58, i32 1
  store ptr %59, ptr %9, align 8, !tbaa !7
  %60 = load ptr, ptr %7, align 8, !tbaa !7
  %61 = getelementptr inbounds nuw float, ptr %60, i32 1
  store ptr %61, ptr %7, align 8, !tbaa !7
  br label %42, !llvm.loop !37

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62, %40
  store i32 0, ptr %12, align 4
  br label %64

64:                                               ; preds = %63, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #3
  %65 = load i32, ptr %12, align 4
  switch i32 %65, label %67 [
    i32 0, label %66
    i32 1, label %66
  ]

66:                                               ; preds = %64, %64
  ret void

67:                                               ; preds = %64
  unreachable
}

; Function Attrs: nounwind
define dso_local void @vfill(i32 noundef signext %0, ptr noundef %1, double noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = fptrunc double %2 to float
  store i32 %0, ptr %4, align 4, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !7
  store float %9, ptr %6, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #3
  %10 = load i32, ptr %4, align 4, !tbaa !3
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, ptr %8, align 4
  br label %27

13:                                               ; preds = %3
  store i32 0, ptr %7, align 4, !tbaa !3
  br label %14

14:                                               ; preds = %21, %13
  %15 = load i32, ptr %7, align 4, !tbaa !3
  %16 = load i32, ptr %4, align 4, !tbaa !3
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load float, ptr %6, align 4, !tbaa !10
  %20 = load ptr, ptr %5, align 8, !tbaa !7
  store float %19, ptr %20, align 4, !tbaa !10
  br label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %7, align 4, !tbaa !3
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %7, align 4, !tbaa !3
  %24 = load ptr, ptr %5, align 8, !tbaa !7
  %25 = getelementptr inbounds nuw float, ptr %24, i32 1
  store ptr %25, ptr %5, align 8, !tbaa !7
  br label %14, !llvm.loop !38

26:                                               ; preds = %14
  store i32 0, ptr %8, align 4
  br label %27

27:                                               ; preds = %26, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #3
  %28 = load i32, ptr %8, align 4
  switch i32 %28, label %30 [
    i32 0, label %29
    i32 1, label %29
  ]

29:                                               ; preds = %27, %27
  ret void

30:                                               ; preds = %27
  unreachable
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = !{!"p1 float", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !5, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = !{!28, !28, i64 0}
!28 = !{!"double", !5, i64 0}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
