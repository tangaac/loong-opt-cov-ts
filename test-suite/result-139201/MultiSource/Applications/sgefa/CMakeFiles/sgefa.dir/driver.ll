; ModuleID = './MultiSource/Applications/sgefa/CMakeFiles/sgefa.dir/driver.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/sgefa/driver.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.FULL = type { i32, i32, [1000 x ptr] }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [49 x i8] c"Matrix row dim (%d) or column dim (%d) too big.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"One-Norm(A) ---------- %E.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"FACTORED MATRIX FOLLOWS\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"True Solution\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Solution\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Solution to transposed system\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"\0A\0A**********************************************************************\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Hilbert Slice.  Test case %d of size %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Monoelemental.  Test case %d of size %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Tridiagional.  Test case %d of size %d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Rank One.  Test case %d of size %d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Zero Column.  Test case %d of size %d.\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Upper Triangular.  Test case %d of size %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Lower Triangular.  Test case %d of size %d.\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"Near Overflow.  Test case %d of size %d. BIG = %e\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"Near Underflow.  Test case %d of size %d. SMALL = %e\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"MATGEN: All tests complete.\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"MATGEN: Error in matvec.\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"MATRIX FOLLOWS\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"SOLUTION\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"RIGHT HAND SIDE\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"TRANSPOSE RIGHT HAND SIDE\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"GET_SPACE: Can't get enouph space for matricies...\0A\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"GET_SPACE: Can't get enouph space for vectors...\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%3d|\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"%12.4e\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%8d\00", align 1

; Function Attrs: nounwind
define dso_local signext i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.FULL, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca float, align 4
  %10 = alloca ptr, align 8
  %11 = alloca float, align 4
  %12 = alloca double, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5
  call void @llvm.lifetime.start.p0(i64 8008, ptr %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #5
  store i32 0, ptr %15, align 4, !tbaa !3
  br label %16

16:                                               ; preds = %148, %0
  %17 = load i32, ptr %15, align 4, !tbaa !3
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %15, align 4, !tbaa !3
  %19 = call signext i32 @matgen(ptr noundef %5, ptr noundef %8, ptr noundef %6, ptr noundef %7, ptr noundef %13, i32 noundef signext %18, i32 noundef signext 40)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %149

22:                                               ; preds = %16
  %23 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !7
  %25 = icmp sgt i32 %24, 1000
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 0
  %28 = load i32, ptr %27, align 8, !tbaa !9
  %29 = icmp sgt i32 %28, 1000
  br i1 %29, label %30, label %37

30:                                               ; preds = %26, %22
  %31 = load ptr, ptr @stderr, align 8, !tbaa !10
  %32 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !7
  %34 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 0
  %35 = load i32, ptr %34, align 8, !tbaa !9
  %36 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str, i32 noundef signext %33, i32 noundef signext %35) #5
  call void @exit(i32 noundef signext 1) #6
  unreachable

37:                                               ; preds = %26
  store i32 0, ptr %3, align 4, !tbaa !3
  store float 0.000000e+00, ptr %9, align 4, !tbaa !13
  br label %38

38:                                               ; preds = %85, %37
  %39 = load i32, ptr %3, align 4, !tbaa !3
  %40 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 0
  %41 = load i32, ptr %40, align 8, !tbaa !9
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %38
  store i32 0, ptr %2, align 4, !tbaa !3
  %44 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 2
  %45 = load i32, ptr %3, align 4, !tbaa !3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1000 x ptr], ptr %44, i64 0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !15
  store ptr %48, ptr %10, align 8, !tbaa !15
  store float 0.000000e+00, ptr %11, align 4, !tbaa !13
  br label %49

49:                                               ; preds = %70, %43
  %50 = load i32, ptr %2, align 4, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !7
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %49
  %55 = load ptr, ptr %10, align 8, !tbaa !15
  %56 = load float, ptr %55, align 4, !tbaa !13
  %57 = fpext float %56 to double
  %58 = fcmp olt double %57, 0.000000e+00
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load ptr, ptr %10, align 8, !tbaa !15
  %61 = load float, ptr %60, align 4, !tbaa !13
  %62 = fneg float %61
  br label %66

63:                                               ; preds = %54
  %64 = load ptr, ptr %10, align 8, !tbaa !15
  %65 = load float, ptr %64, align 4, !tbaa !13
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi float [ %62, %59 ], [ %65, %63 ]
  %68 = load float, ptr %11, align 4, !tbaa !13
  %69 = fadd float %68, %67
  store float %69, ptr %11, align 4, !tbaa !13
  br label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %2, align 4, !tbaa !3
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %2, align 4, !tbaa !3
  %73 = load ptr, ptr %10, align 8, !tbaa !15
  %74 = getelementptr inbounds nuw float, ptr %73, i32 1
  store ptr %74, ptr %10, align 8, !tbaa !15
  br label %49, !llvm.loop !17

75:                                               ; preds = %49
  %76 = load float, ptr %9, align 4, !tbaa !13
  %77 = load float, ptr %11, align 4, !tbaa !13
  %78 = fcmp ogt float %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load float, ptr %9, align 4, !tbaa !13
  br label %83

81:                                               ; preds = %75
  %82 = load float, ptr %11, align 4, !tbaa !13
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi float [ %80, %79 ], [ %82, %81 ]
  store float %84, ptr %9, align 4, !tbaa !13
  br label %85

85:                                               ; preds = %83
  %86 = load i32, ptr %3, align 4, !tbaa !3
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %3, align 4, !tbaa !3
  br label %38, !llvm.loop !19

88:                                               ; preds = %38
  %89 = load float, ptr %9, align 4, !tbaa !13
  %90 = fpext float %89 to double
  %91 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %90)
  %92 = load ptr, ptr %13, align 8, !tbaa !20
  %93 = call signext i32 @sgefa(ptr noundef %5, ptr noundef %92)
  store i32 %93, ptr %14, align 4, !tbaa !3
  %94 = load i32, ptr %14, align 4, !tbaa !3
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %148

97:                                               ; preds = %88
  %98 = load ptr, ptr %13, align 8, !tbaa !20
  %99 = load ptr, ptr %6, align 8, !tbaa !15
  %100 = call signext i32 @sgesl(ptr noundef %5, ptr noundef %98, ptr noundef %99, i32 noundef signext 0)
  %101 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !7
  %103 = icmp sle i32 %102, 7
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  call void @matdump(ptr noundef %5, ptr noundef @.str.2)
  br label %105

105:                                              ; preds = %104, %97
  %106 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !7
  %108 = icmp sle i32 %107, 7
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load ptr, ptr %8, align 8, !tbaa !15
  %111 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !7
  call void @fvecdump(ptr noundef %110, i32 noundef signext %112, ptr noundef @.str.3)
  %113 = load ptr, ptr %6, align 8, !tbaa !15
  %114 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !7
  call void @fvecdump(ptr noundef %113, i32 noundef signext %115, ptr noundef @.str.4)
  br label %116

116:                                              ; preds = %109, %105
  %117 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !7
  %119 = load ptr, ptr %6, align 8, !tbaa !15
  %120 = load ptr, ptr %8, align 8, !tbaa !15
  %121 = load ptr, ptr %6, align 8, !tbaa !15
  %122 = call signext i32 @vexopy(i32 noundef signext %118, ptr noundef %119, ptr noundef %120, ptr noundef %121, i32 noundef signext 2)
  %123 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !7
  %125 = load ptr, ptr %6, align 8, !tbaa !15
  %126 = call double @snrm2(i32 noundef signext %124, ptr noundef %125, i32 noundef signext 1)
  store double %126, ptr %12, align 8, !tbaa !22
  %127 = load ptr, ptr %13, align 8, !tbaa !20
  %128 = load ptr, ptr %7, align 8, !tbaa !15
  %129 = call signext i32 @sgesl(ptr noundef %5, ptr noundef %127, ptr noundef %128, i32 noundef signext 1)
  %130 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !7
  %132 = icmp sle i32 %131, 7
  br i1 %132, label %133, label %137

133:                                              ; preds = %116
  %134 = load ptr, ptr %7, align 8, !tbaa !15
  %135 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 1
  %136 = load i32, ptr %135, align 4, !tbaa !7
  call void @fvecdump(ptr noundef %134, i32 noundef signext %136, ptr noundef @.str.5)
  br label %137

137:                                              ; preds = %133, %116
  %138 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 1
  %139 = load i32, ptr %138, align 4, !tbaa !7
  %140 = load ptr, ptr %7, align 8, !tbaa !15
  %141 = load ptr, ptr %8, align 8, !tbaa !15
  %142 = load ptr, ptr %7, align 8, !tbaa !15
  %143 = call signext i32 @vexopy(i32 noundef signext %139, ptr noundef %140, ptr noundef %141, ptr noundef %142, i32 noundef signext 2)
  %144 = getelementptr inbounds nuw %struct.FULL, ptr %5, i32 0, i32 1
  %145 = load i32, ptr %144, align 4, !tbaa !7
  %146 = load ptr, ptr %7, align 8, !tbaa !15
  %147 = call double @snrm2(i32 noundef signext %145, ptr noundef %146, i32 noundef signext 1)
  store double %147, ptr %12, align 8, !tbaa !22
  br label %148

148:                                              ; preds = %137, %96
  br label %16, !llvm.loop !24

149:                                              ; preds = %16
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #5
  call void @llvm.lifetime.end.p0(i64 8008, ptr %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
declare signext i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noreturn
declare void @exit(i32 noundef signext) #2

declare signext i32 @printf(ptr noundef, ...) #3

declare signext i32 @sgefa(...) #3

declare signext i32 @sgesl(...) #3

declare signext i32 @vexopy(...) #3

declare double @snrm2(...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local signext i32 @matgen(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef signext %5, i32 noundef signext %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  store ptr %0, ptr %9, align 8, !tbaa !25
  store ptr %1, ptr %10, align 8, !tbaa !27
  store ptr %2, ptr %11, align 8, !tbaa !27
  store ptr %3, ptr %12, align 8, !tbaa !27
  store ptr %4, ptr %13, align 8, !tbaa !30
  store i32 %5, ptr %14, align 4, !tbaa !3
  store i32 %6, ptr %15, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %19) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #5
  %23 = load i32, ptr %14, align 4, !tbaa !3
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %50

25:                                               ; preds = %7
  %26 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.6)
  store i32 0, ptr %17, align 4, !tbaa !3
  br label %27

27:                                               ; preds = %40, %25
  %28 = load i32, ptr %17, align 4, !tbaa !3
  %29 = load ptr, ptr %9, align 8, !tbaa !25
  %30 = getelementptr inbounds nuw %struct.FULL, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !7
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load ptr, ptr %9, align 8, !tbaa !25
  %35 = getelementptr inbounds nuw %struct.FULL, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %17, align 4, !tbaa !3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [1000 x ptr], ptr %35, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !15
  call void @free(ptr noundef %39)
  br label %40

40:                                               ; preds = %33
  %41 = load i32, ptr %17, align 4, !tbaa !3
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %17, align 4, !tbaa !3
  br label %27, !llvm.loop !32

43:                                               ; preds = %27
  %44 = load ptr, ptr %10, align 8, !tbaa !27
  %45 = load ptr, ptr %44, align 8, !tbaa !15
  call void @free(ptr noundef %45)
  %46 = load ptr, ptr %11, align 8, !tbaa !27
  %47 = load ptr, ptr %46, align 8, !tbaa !15
  call void @free(ptr noundef %47)
  %48 = load ptr, ptr %12, align 8, !tbaa !27
  %49 = load ptr, ptr %48, align 8, !tbaa !15
  call void @free(ptr noundef %49)
  br label %50

50:                                               ; preds = %43, %7
  %51 = load i32, ptr %14, align 4, !tbaa !3
  switch i32 %51, label %614 [
    i32 1, label %52
    i32 2, label %52
    i32 3, label %52
    i32 4, label %122
    i32 5, label %122
    i32 6, label %150
    i32 7, label %150
    i32 8, label %150
    i32 9, label %230
    i32 10, label %284
    i32 11, label %341
    i32 12, label %403
    i32 13, label %465
    i32 14, label %540
  ]

52:                                               ; preds = %50, %50, %50
  %53 = load i32, ptr %14, align 4, !tbaa !3
  %54 = mul nsw i32 3, %53
  %55 = load i32, ptr %15, align 4, !tbaa !3
  %56 = mul nsw i32 %54, %55
  store i32 %56, ptr %18, align 4, !tbaa !3
  %57 = load i32, ptr %18, align 4, !tbaa !3
  %58 = load ptr, ptr %9, align 8, !tbaa !25
  %59 = getelementptr inbounds nuw %struct.FULL, ptr %58, i32 0, i32 0
  store i32 %57, ptr %59, align 8, !tbaa !9
  %60 = load i32, ptr %18, align 4, !tbaa !3
  %61 = load ptr, ptr %9, align 8, !tbaa !25
  %62 = getelementptr inbounds nuw %struct.FULL, ptr %61, i32 0, i32 1
  store i32 %60, ptr %62, align 4, !tbaa !7
  %63 = load ptr, ptr %9, align 8, !tbaa !25
  %64 = load ptr, ptr %10, align 8, !tbaa !27
  %65 = load ptr, ptr %11, align 8, !tbaa !27
  %66 = load ptr, ptr %12, align 8, !tbaa !27
  %67 = load ptr, ptr %13, align 8, !tbaa !30
  %68 = call signext i32 @get_space(ptr noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %52
  store i32 1, ptr %8, align 4
  store i32 1, ptr %22, align 4
  br label %686

71:                                               ; preds = %52
  %72 = load i32, ptr %14, align 4, !tbaa !3
  %73 = load i32, ptr %18, align 4, !tbaa !3
  %74 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef signext %72, i32 noundef signext %73)
  store i32 0, ptr %17, align 4, !tbaa !3
  br label %75

75:                                               ; preds = %118, %71
  %76 = load i32, ptr %17, align 4, !tbaa !3
  %77 = load i32, ptr %18, align 4, !tbaa !3
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %121

79:                                               ; preds = %75
  store i32 0, ptr %16, align 4, !tbaa !3
  %80 = load ptr, ptr %9, align 8, !tbaa !25
  %81 = getelementptr inbounds nuw %struct.FULL, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %17, align 4, !tbaa !3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [1000 x ptr], ptr %81, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !15
  store ptr %85, ptr %19, align 8, !tbaa !15
  br label %86

86:                                               ; preds = %112, %79
  %87 = load i32, ptr %16, align 4, !tbaa !3
  %88 = load i32, ptr %18, align 4, !tbaa !3
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %86
  %91 = load ptr, ptr %19, align 8, !tbaa !15
  store float 0.000000e+00, ptr %91, align 4, !tbaa !13
  %92 = load i32, ptr %16, align 4, !tbaa !3
  %93 = load i32, ptr %17, align 4, !tbaa !3
  %94 = sub nsw i32 %93, 3
  %95 = icmp sge i32 %92, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load i32, ptr %16, align 4, !tbaa !3
  %98 = load i32, ptr %17, align 4, !tbaa !3
  %99 = add nsw i32 %98, 2
  %100 = icmp sle i32 %97, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load i32, ptr %16, align 4, !tbaa !3
  %103 = load i32, ptr %17, align 4, !tbaa !3
  %104 = add nsw i32 %102, %103
  %105 = add nsw i32 %104, 1
  %106 = sitofp i32 %105 to float
  %107 = fpext float %106 to double
  %108 = fdiv double 1.000000e+00, %107
  %109 = fptrunc double %108 to float
  %110 = load ptr, ptr %19, align 8, !tbaa !15
  store float %109, ptr %110, align 4, !tbaa !13
  br label %111

111:                                              ; preds = %101, %96, %90
  br label %112

112:                                              ; preds = %111
  %113 = load i32, ptr %16, align 4, !tbaa !3
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr %16, align 4, !tbaa !3
  %115 = load ptr, ptr %19, align 8, !tbaa !15
  %116 = getelementptr inbounds nuw float, ptr %115, i32 1
  store ptr %116, ptr %19, align 8, !tbaa !15
  br label %86, !llvm.loop !33

117:                                              ; preds = %86
  br label %118

118:                                              ; preds = %117
  %119 = load i32, ptr %17, align 4, !tbaa !3
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr %17, align 4, !tbaa !3
  br label %75, !llvm.loop !34

121:                                              ; preds = %75
  br label %616

122:                                              ; preds = %50, %50
  store i32 1, ptr %18, align 4, !tbaa !3
  %123 = load i32, ptr %18, align 4, !tbaa !3
  %124 = load ptr, ptr %9, align 8, !tbaa !25
  %125 = getelementptr inbounds nuw %struct.FULL, ptr %124, i32 0, i32 0
  store i32 %123, ptr %125, align 8, !tbaa !9
  %126 = load i32, ptr %18, align 4, !tbaa !3
  %127 = load ptr, ptr %9, align 8, !tbaa !25
  %128 = getelementptr inbounds nuw %struct.FULL, ptr %127, i32 0, i32 1
  store i32 %126, ptr %128, align 4, !tbaa !7
  %129 = load ptr, ptr %9, align 8, !tbaa !25
  %130 = load ptr, ptr %10, align 8, !tbaa !27
  %131 = load ptr, ptr %11, align 8, !tbaa !27
  %132 = load ptr, ptr %12, align 8, !tbaa !27
  %133 = load ptr, ptr %13, align 8, !tbaa !30
  %134 = call signext i32 @get_space(ptr noundef %129, ptr noundef %130, ptr noundef %131, ptr noundef %132, ptr noundef %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %122
  store i32 1, ptr %8, align 4
  store i32 1, ptr %22, align 4
  br label %686

137:                                              ; preds = %122
  %138 = load i32, ptr %14, align 4, !tbaa !3
  %139 = load i32, ptr %18, align 4, !tbaa !3
  %140 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef signext %138, i32 noundef signext %139)
  %141 = load i32, ptr %14, align 4, !tbaa !3
  %142 = icmp eq i32 %141, 4
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, double 3.000000e+00, double 0.000000e+00
  %145 = fptrunc double %144 to float
  %146 = load ptr, ptr %9, align 8, !tbaa !25
  %147 = getelementptr inbounds nuw %struct.FULL, ptr %146, i32 0, i32 2
  %148 = getelementptr inbounds [1000 x ptr], ptr %147, i64 0, i64 0
  %149 = load ptr, ptr %148, align 8, !tbaa !15
  store float %145, ptr %149, align 4, !tbaa !13
  br label %616

150:                                              ; preds = %50, %50, %50
  %151 = load i32, ptr %15, align 4, !tbaa !3
  %152 = mul nsw i32 15, %151
  store i32 %152, ptr %18, align 4, !tbaa !3
  %153 = load i32, ptr %18, align 4, !tbaa !3
  %154 = load ptr, ptr %9, align 8, !tbaa !25
  %155 = getelementptr inbounds nuw %struct.FULL, ptr %154, i32 0, i32 0
  store i32 %153, ptr %155, align 8, !tbaa !9
  %156 = load i32, ptr %18, align 4, !tbaa !3
  %157 = load ptr, ptr %9, align 8, !tbaa !25
  %158 = getelementptr inbounds nuw %struct.FULL, ptr %157, i32 0, i32 1
  store i32 %156, ptr %158, align 4, !tbaa !7
  %159 = load ptr, ptr %9, align 8, !tbaa !25
  %160 = load ptr, ptr %10, align 8, !tbaa !27
  %161 = load ptr, ptr %11, align 8, !tbaa !27
  %162 = load ptr, ptr %12, align 8, !tbaa !27
  %163 = load ptr, ptr %13, align 8, !tbaa !30
  %164 = call signext i32 @get_space(ptr noundef %159, ptr noundef %160, ptr noundef %161, ptr noundef %162, ptr noundef %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %150
  store i32 1, ptr %8, align 4
  store i32 1, ptr %22, align 4
  br label %686

167:                                              ; preds = %150
  %168 = load i32, ptr %14, align 4, !tbaa !3
  %169 = load i32, ptr %18, align 4, !tbaa !3
  %170 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef signext %168, i32 noundef signext %169)
  store float 1.000000e+00, ptr %21, align 4, !tbaa !13
  store float 1.000000e+00, ptr %20, align 4, !tbaa !13
  %171 = load i32, ptr %14, align 4, !tbaa !3
  %172 = icmp eq i32 %171, 7
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  store float 1.000000e+02, ptr %20, align 4, !tbaa !13
  br label %174

174:                                              ; preds = %173, %167
  %175 = load i32, ptr %14, align 4, !tbaa !3
  %176 = icmp eq i32 %175, 8
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  store float 1.000000e+02, ptr %21, align 4, !tbaa !13
  br label %178

178:                                              ; preds = %177, %174
  store i32 0, ptr %17, align 4, !tbaa !3
  br label %179

179:                                              ; preds = %226, %178
  %180 = load i32, ptr %17, align 4, !tbaa !3
  %181 = load i32, ptr %18, align 4, !tbaa !3
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %229

183:                                              ; preds = %179
  store i32 0, ptr %16, align 4, !tbaa !3
  %184 = load ptr, ptr %9, align 8, !tbaa !25
  %185 = getelementptr inbounds nuw %struct.FULL, ptr %184, i32 0, i32 2
  %186 = load i32, ptr %17, align 4, !tbaa !3
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [1000 x ptr], ptr %185, i64 0, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !15
  store ptr %189, ptr %19, align 8, !tbaa !15
  br label %190

190:                                              ; preds = %220, %183
  %191 = load i32, ptr %16, align 4, !tbaa !3
  %192 = load i32, ptr %18, align 4, !tbaa !3
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %225

194:                                              ; preds = %190
  %195 = load ptr, ptr %19, align 8, !tbaa !15
  store float 0.000000e+00, ptr %195, align 4, !tbaa !13
  %196 = load i32, ptr %16, align 4, !tbaa !3
  %197 = load i32, ptr %17, align 4, !tbaa !3
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load ptr, ptr %19, align 8, !tbaa !15
  store float 4.000000e+00, ptr %200, align 4, !tbaa !13
  br label %219

201:                                              ; preds = %194
  %202 = load i32, ptr %16, align 4, !tbaa !3
  %203 = load i32, ptr %17, align 4, !tbaa !3
  %204 = sub nsw i32 %203, 1
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load float, ptr %20, align 4, !tbaa !13
  %208 = load ptr, ptr %19, align 8, !tbaa !15
  store float %207, ptr %208, align 4, !tbaa !13
  br label %218

209:                                              ; preds = %201
  %210 = load i32, ptr %16, align 4, !tbaa !3
  %211 = load i32, ptr %17, align 4, !tbaa !3
  %212 = add nsw i32 %211, 1
  %213 = icmp eq i32 %210, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load float, ptr %21, align 4, !tbaa !13
  %216 = load ptr, ptr %19, align 8, !tbaa !15
  store float %215, ptr %216, align 4, !tbaa !13
  br label %217

217:                                              ; preds = %214, %209
  br label %218

218:                                              ; preds = %217, %206
  br label %219

219:                                              ; preds = %218, %199
  br label %220

220:                                              ; preds = %219
  %221 = load i32, ptr %16, align 4, !tbaa !3
  %222 = add nsw i32 %221, 1
  store i32 %222, ptr %16, align 4, !tbaa !3
  %223 = load ptr, ptr %19, align 8, !tbaa !15
  %224 = getelementptr inbounds nuw float, ptr %223, i32 1
  store ptr %224, ptr %19, align 8, !tbaa !15
  br label %190, !llvm.loop !35

225:                                              ; preds = %190
  br label %226

226:                                              ; preds = %225
  %227 = load i32, ptr %17, align 4, !tbaa !3
  %228 = add nsw i32 %227, 1
  store i32 %228, ptr %17, align 4, !tbaa !3
  br label %179, !llvm.loop !36

229:                                              ; preds = %179
  br label %616

230:                                              ; preds = %50
  %231 = load i32, ptr %15, align 4, !tbaa !3
  %232 = mul nsw i32 5, %231
  store i32 %232, ptr %18, align 4, !tbaa !3
  %233 = load i32, ptr %18, align 4, !tbaa !3
  %234 = load ptr, ptr %9, align 8, !tbaa !25
  %235 = getelementptr inbounds nuw %struct.FULL, ptr %234, i32 0, i32 0
  store i32 %233, ptr %235, align 8, !tbaa !9
  %236 = load i32, ptr %18, align 4, !tbaa !3
  %237 = load ptr, ptr %9, align 8, !tbaa !25
  %238 = getelementptr inbounds nuw %struct.FULL, ptr %237, i32 0, i32 1
  store i32 %236, ptr %238, align 4, !tbaa !7
  %239 = load ptr, ptr %9, align 8, !tbaa !25
  %240 = load ptr, ptr %10, align 8, !tbaa !27
  %241 = load ptr, ptr %11, align 8, !tbaa !27
  %242 = load ptr, ptr %12, align 8, !tbaa !27
  %243 = load ptr, ptr %13, align 8, !tbaa !30
  %244 = call signext i32 @get_space(ptr noundef %239, ptr noundef %240, ptr noundef %241, ptr noundef %242, ptr noundef %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %230
  store i32 1, ptr %8, align 4
  store i32 1, ptr %22, align 4
  br label %686

247:                                              ; preds = %230
  %248 = load i32, ptr %14, align 4, !tbaa !3
  %249 = load i32, ptr %18, align 4, !tbaa !3
  %250 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef signext %248, i32 noundef signext %249)
  store i32 0, ptr %17, align 4, !tbaa !3
  br label %251

251:                                              ; preds = %280, %247
  %252 = load i32, ptr %17, align 4, !tbaa !3
  %253 = load i32, ptr %18, align 4, !tbaa !3
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %283

255:                                              ; preds = %251
  store i32 0, ptr %16, align 4, !tbaa !3
  %256 = load ptr, ptr %9, align 8, !tbaa !25
  %257 = getelementptr inbounds nuw %struct.FULL, ptr %256, i32 0, i32 2
  %258 = load i32, ptr %17, align 4, !tbaa !3
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [1000 x ptr], ptr %257, i64 0, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !15
  store ptr %261, ptr %19, align 8, !tbaa !15
  br label %262

262:                                              ; preds = %274, %255
  %263 = load i32, ptr %16, align 4, !tbaa !3
  %264 = load i32, ptr %18, align 4, !tbaa !3
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %279

266:                                              ; preds = %262
  %267 = load i32, ptr %16, align 4, !tbaa !3
  %268 = load i32, ptr %17, align 4, !tbaa !3
  %269 = sub nsw i32 %267, %268
  %270 = sitofp i32 %269 to double
  %271 = call double @pow(double noundef 1.000000e+01, double noundef %270) #5, !tbaa !3
  %272 = fptrunc double %271 to float
  %273 = load ptr, ptr %19, align 8, !tbaa !15
  store float %272, ptr %273, align 4, !tbaa !13
  br label %274

274:                                              ; preds = %266
  %275 = load i32, ptr %16, align 4, !tbaa !3
  %276 = add nsw i32 %275, 1
  store i32 %276, ptr %16, align 4, !tbaa !3
  %277 = load ptr, ptr %19, align 8, !tbaa !15
  %278 = getelementptr inbounds nuw float, ptr %277, i32 1
  store ptr %278, ptr %19, align 8, !tbaa !15
  br label %262, !llvm.loop !37

279:                                              ; preds = %262
  br label %280

280:                                              ; preds = %279
  %281 = load i32, ptr %17, align 4, !tbaa !3
  %282 = add nsw i32 %281, 1
  store i32 %282, ptr %17, align 4, !tbaa !3
  br label %251, !llvm.loop !38

283:                                              ; preds = %251
  br label %616

284:                                              ; preds = %50
  %285 = load i32, ptr %15, align 4, !tbaa !3
  %286 = mul nsw i32 4, %285
  store i32 %286, ptr %18, align 4, !tbaa !3
  %287 = load i32, ptr %18, align 4, !tbaa !3
  %288 = load ptr, ptr %9, align 8, !tbaa !25
  %289 = getelementptr inbounds nuw %struct.FULL, ptr %288, i32 0, i32 0
  store i32 %287, ptr %289, align 8, !tbaa !9
  %290 = load i32, ptr %18, align 4, !tbaa !3
  %291 = load ptr, ptr %9, align 8, !tbaa !25
  %292 = getelementptr inbounds nuw %struct.FULL, ptr %291, i32 0, i32 1
  store i32 %290, ptr %292, align 4, !tbaa !7
  %293 = load ptr, ptr %9, align 8, !tbaa !25
  %294 = load ptr, ptr %10, align 8, !tbaa !27
  %295 = load ptr, ptr %11, align 8, !tbaa !27
  %296 = load ptr, ptr %12, align 8, !tbaa !27
  %297 = load ptr, ptr %13, align 8, !tbaa !30
  %298 = call signext i32 @get_space(ptr noundef %293, ptr noundef %294, ptr noundef %295, ptr noundef %296, ptr noundef %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %284
  store i32 1, ptr %8, align 4
  store i32 1, ptr %22, align 4
  br label %686

301:                                              ; preds = %284
  %302 = load i32, ptr %14, align 4, !tbaa !3
  %303 = load i32, ptr %18, align 4, !tbaa !3
  %304 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef signext %302, i32 noundef signext %303)
  store i32 0, ptr %17, align 4, !tbaa !3
  br label %305

305:                                              ; preds = %337, %301
  %306 = load i32, ptr %17, align 4, !tbaa !3
  %307 = load i32, ptr %18, align 4, !tbaa !3
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %340

309:                                              ; preds = %305
  store i32 0, ptr %16, align 4, !tbaa !3
  %310 = load ptr, ptr %9, align 8, !tbaa !25
  %311 = getelementptr inbounds nuw %struct.FULL, ptr %310, i32 0, i32 2
  %312 = load i32, ptr %17, align 4, !tbaa !3
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [1000 x ptr], ptr %311, i64 0, i64 %313
  %315 = load ptr, ptr %314, align 8, !tbaa !15
  store ptr %315, ptr %19, align 8, !tbaa !15
  br label %316

316:                                              ; preds = %331, %309
  %317 = load i32, ptr %16, align 4, !tbaa !3
  %318 = load i32, ptr %18, align 4, !tbaa !3
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %336

320:                                              ; preds = %316
  %321 = load i32, ptr %17, align 4, !tbaa !3
  %322 = sub nsw i32 %321, 2
  %323 = sitofp i32 %322 to float
  store float %323, ptr %21, align 4, !tbaa !13
  %324 = load i32, ptr %16, align 4, !tbaa !3
  %325 = add nsw i32 %324, 1
  %326 = sitofp i32 %325 to float
  store float %326, ptr %20, align 4, !tbaa !13
  %327 = load float, ptr %21, align 4, !tbaa !13
  %328 = load float, ptr %20, align 4, !tbaa !13
  %329 = fdiv float %327, %328
  %330 = load ptr, ptr %19, align 8, !tbaa !15
  store float %329, ptr %330, align 4, !tbaa !13
  br label %331

331:                                              ; preds = %320
  %332 = load i32, ptr %16, align 4, !tbaa !3
  %333 = add nsw i32 %332, 1
  store i32 %333, ptr %16, align 4, !tbaa !3
  %334 = load ptr, ptr %19, align 8, !tbaa !15
  %335 = getelementptr inbounds nuw float, ptr %334, i32 1
  store ptr %335, ptr %19, align 8, !tbaa !15
  br label %316, !llvm.loop !39

336:                                              ; preds = %316
  br label %337

337:                                              ; preds = %336
  %338 = load i32, ptr %17, align 4, !tbaa !3
  %339 = add nsw i32 %338, 1
  store i32 %339, ptr %17, align 4, !tbaa !3
  br label %305, !llvm.loop !40

340:                                              ; preds = %305
  br label %616

341:                                              ; preds = %50
  %342 = load i32, ptr %15, align 4, !tbaa !3
  %343 = mul nsw i32 6, %342
  store i32 %343, ptr %18, align 4, !tbaa !3
  %344 = load i32, ptr %18, align 4, !tbaa !3
  %345 = load ptr, ptr %9, align 8, !tbaa !25
  %346 = getelementptr inbounds nuw %struct.FULL, ptr %345, i32 0, i32 0
  store i32 %344, ptr %346, align 8, !tbaa !9
  %347 = load i32, ptr %18, align 4, !tbaa !3
  %348 = load ptr, ptr %9, align 8, !tbaa !25
  %349 = getelementptr inbounds nuw %struct.FULL, ptr %348, i32 0, i32 1
  store i32 %347, ptr %349, align 4, !tbaa !7
  %350 = load ptr, ptr %9, align 8, !tbaa !25
  %351 = load ptr, ptr %10, align 8, !tbaa !27
  %352 = load ptr, ptr %11, align 8, !tbaa !27
  %353 = load ptr, ptr %12, align 8, !tbaa !27
  %354 = load ptr, ptr %13, align 8, !tbaa !30
  %355 = call signext i32 @get_space(ptr noundef %350, ptr noundef %351, ptr noundef %352, ptr noundef %353, ptr noundef %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %341
  store i32 1, ptr %8, align 4
  store i32 1, ptr %22, align 4
  br label %686

358:                                              ; preds = %341
  %359 = load i32, ptr %14, align 4, !tbaa !3
  %360 = load i32, ptr %18, align 4, !tbaa !3
  %361 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef signext %359, i32 noundef signext %360)
  store i32 0, ptr %17, align 4, !tbaa !3
  br label %362

362:                                              ; preds = %399, %358
  %363 = load i32, ptr %17, align 4, !tbaa !3
  %364 = load i32, ptr %18, align 4, !tbaa !3
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %366, label %402

366:                                              ; preds = %362
  store i32 0, ptr %16, align 4, !tbaa !3
  %367 = load ptr, ptr %9, align 8, !tbaa !25
  %368 = getelementptr inbounds nuw %struct.FULL, ptr %367, i32 0, i32 2
  %369 = load i32, ptr %17, align 4, !tbaa !3
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [1000 x ptr], ptr %368, i64 0, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !15
  store ptr %372, ptr %19, align 8, !tbaa !15
  br label %373

373:                                              ; preds = %393, %366
  %374 = load i32, ptr %16, align 4, !tbaa !3
  %375 = load i32, ptr %18, align 4, !tbaa !3
  %376 = icmp slt i32 %374, %375
  br i1 %376, label %377, label %398

377:                                              ; preds = %373
  %378 = load i32, ptr %16, align 4, !tbaa !3
  %379 = load i32, ptr %17, align 4, !tbaa !3
  %380 = icmp sgt i32 %378, %379
  br i1 %380, label %381, label %382

381:                                              ; preds = %377
  br label %389

382:                                              ; preds = %377
  %383 = load i32, ptr %16, align 4, !tbaa !3
  %384 = load i32, ptr %17, align 4, !tbaa !3
  %385 = sub nsw i32 %383, %384
  %386 = add nsw i32 %385, 1
  %387 = sitofp i32 %386 to float
  %388 = fpext float %387 to double
  br label %389

389:                                              ; preds = %382, %381
  %390 = phi double [ 0.000000e+00, %381 ], [ %388, %382 ]
  %391 = fptrunc double %390 to float
  %392 = load ptr, ptr %19, align 8, !tbaa !15
  store float %391, ptr %392, align 4, !tbaa !13
  br label %393

393:                                              ; preds = %389
  %394 = load i32, ptr %16, align 4, !tbaa !3
  %395 = add nsw i32 %394, 1
  store i32 %395, ptr %16, align 4, !tbaa !3
  %396 = load ptr, ptr %19, align 8, !tbaa !15
  %397 = getelementptr inbounds nuw float, ptr %396, i32 1
  store ptr %397, ptr %19, align 8, !tbaa !15
  br label %373, !llvm.loop !41

398:                                              ; preds = %373
  br label %399

399:                                              ; preds = %398
  %400 = load i32, ptr %17, align 4, !tbaa !3
  %401 = add nsw i32 %400, 1
  store i32 %401, ptr %17, align 4, !tbaa !3
  br label %362, !llvm.loop !42

402:                                              ; preds = %362
  br label %616

403:                                              ; preds = %50
  %404 = load i32, ptr %15, align 4, !tbaa !3
  %405 = mul nsw i32 6, %404
  store i32 %405, ptr %18, align 4, !tbaa !3
  %406 = load i32, ptr %18, align 4, !tbaa !3
  %407 = load ptr, ptr %9, align 8, !tbaa !25
  %408 = getelementptr inbounds nuw %struct.FULL, ptr %407, i32 0, i32 0
  store i32 %406, ptr %408, align 8, !tbaa !9
  %409 = load i32, ptr %18, align 4, !tbaa !3
  %410 = load ptr, ptr %9, align 8, !tbaa !25
  %411 = getelementptr inbounds nuw %struct.FULL, ptr %410, i32 0, i32 1
  store i32 %409, ptr %411, align 4, !tbaa !7
  %412 = load ptr, ptr %9, align 8, !tbaa !25
  %413 = load ptr, ptr %10, align 8, !tbaa !27
  %414 = load ptr, ptr %11, align 8, !tbaa !27
  %415 = load ptr, ptr %12, align 8, !tbaa !27
  %416 = load ptr, ptr %13, align 8, !tbaa !30
  %417 = call signext i32 @get_space(ptr noundef %412, ptr noundef %413, ptr noundef %414, ptr noundef %415, ptr noundef %416)
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %403
  store i32 1, ptr %8, align 4
  store i32 1, ptr %22, align 4
  br label %686

420:                                              ; preds = %403
  %421 = load i32, ptr %14, align 4, !tbaa !3
  %422 = load i32, ptr %18, align 4, !tbaa !3
  %423 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef signext %421, i32 noundef signext %422)
  store i32 0, ptr %17, align 4, !tbaa !3
  br label %424

424:                                              ; preds = %461, %420
  %425 = load i32, ptr %17, align 4, !tbaa !3
  %426 = load i32, ptr %18, align 4, !tbaa !3
  %427 = icmp slt i32 %425, %426
  br i1 %427, label %428, label %464

428:                                              ; preds = %424
  store i32 0, ptr %16, align 4, !tbaa !3
  %429 = load ptr, ptr %9, align 8, !tbaa !25
  %430 = getelementptr inbounds nuw %struct.FULL, ptr %429, i32 0, i32 2
  %431 = load i32, ptr %17, align 4, !tbaa !3
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [1000 x ptr], ptr %430, i64 0, i64 %432
  %434 = load ptr, ptr %433, align 8, !tbaa !15
  store ptr %434, ptr %19, align 8, !tbaa !15
  br label %435

435:                                              ; preds = %455, %428
  %436 = load i32, ptr %16, align 4, !tbaa !3
  %437 = load i32, ptr %18, align 4, !tbaa !3
  %438 = icmp slt i32 %436, %437
  br i1 %438, label %439, label %460

439:                                              ; preds = %435
  %440 = load i32, ptr %16, align 4, !tbaa !3
  %441 = load i32, ptr %17, align 4, !tbaa !3
  %442 = icmp slt i32 %440, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %439
  br label %451

444:                                              ; preds = %439
  %445 = load i32, ptr %16, align 4, !tbaa !3
  %446 = load i32, ptr %17, align 4, !tbaa !3
  %447 = sub nsw i32 %445, %446
  %448 = add nsw i32 %447, 1
  %449 = sitofp i32 %448 to float
  %450 = fpext float %449 to double
  br label %451

451:                                              ; preds = %444, %443
  %452 = phi double [ 0.000000e+00, %443 ], [ %450, %444 ]
  %453 = fptrunc double %452 to float
  %454 = load ptr, ptr %19, align 8, !tbaa !15
  store float %453, ptr %454, align 4, !tbaa !13
  br label %455

455:                                              ; preds = %451
  %456 = load i32, ptr %16, align 4, !tbaa !3
  %457 = add nsw i32 %456, 1
  store i32 %457, ptr %16, align 4, !tbaa !3
  %458 = load ptr, ptr %19, align 8, !tbaa !15
  %459 = getelementptr inbounds nuw float, ptr %458, i32 1
  store ptr %459, ptr %19, align 8, !tbaa !15
  br label %435, !llvm.loop !43

460:                                              ; preds = %435
  br label %461

461:                                              ; preds = %460
  %462 = load i32, ptr %17, align 4, !tbaa !3
  %463 = add nsw i32 %462, 1
  store i32 %463, ptr %17, align 4, !tbaa !3
  br label %424, !llvm.loop !44

464:                                              ; preds = %424
  br label %616

465:                                              ; preds = %50
  %466 = load i32, ptr %15, align 4, !tbaa !3
  %467 = mul nsw i32 5, %466
  store i32 %467, ptr %18, align 4, !tbaa !3
  %468 = load i32, ptr %18, align 4, !tbaa !3
  %469 = load ptr, ptr %9, align 8, !tbaa !25
  %470 = getelementptr inbounds nuw %struct.FULL, ptr %469, i32 0, i32 0
  store i32 %468, ptr %470, align 8, !tbaa !9
  %471 = load i32, ptr %18, align 4, !tbaa !3
  %472 = load ptr, ptr %9, align 8, !tbaa !25
  %473 = getelementptr inbounds nuw %struct.FULL, ptr %472, i32 0, i32 1
  store i32 %471, ptr %473, align 4, !tbaa !7
  %474 = load ptr, ptr %9, align 8, !tbaa !25
  %475 = load ptr, ptr %10, align 8, !tbaa !27
  %476 = load ptr, ptr %11, align 8, !tbaa !27
  %477 = load ptr, ptr %12, align 8, !tbaa !27
  %478 = load ptr, ptr %13, align 8, !tbaa !30
  %479 = call signext i32 @get_space(ptr noundef %474, ptr noundef %475, ptr noundef %476, ptr noundef %477, ptr noundef %478)
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %465
  store i32 1, ptr %8, align 4
  store i32 1, ptr %22, align 4
  br label %686

482:                                              ; preds = %465
  %483 = load i32, ptr %14, align 4, !tbaa !3
  %484 = load i32, ptr %18, align 4, !tbaa !3
  %485 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.14, i32 noundef signext %483, i32 noundef signext %484, double noundef 0x47D2CED32A16A1B1)
  %486 = load i32, ptr %18, align 4, !tbaa !3
  %487 = load i32, ptr %18, align 4, !tbaa !3
  %488 = mul nsw i32 %486, %487
  %489 = sitofp i32 %488 to float
  store float %489, ptr %20, align 4, !tbaa !13
  store i32 0, ptr %17, align 4, !tbaa !3
  br label %490

490:                                              ; preds = %536, %482
  %491 = load i32, ptr %17, align 4, !tbaa !3
  %492 = load i32, ptr %18, align 4, !tbaa !3
  %493 = icmp slt i32 %491, %492
  br i1 %493, label %494, label %539

494:                                              ; preds = %490
  store i32 0, ptr %16, align 4, !tbaa !3
  %495 = load ptr, ptr %9, align 8, !tbaa !25
  %496 = getelementptr inbounds nuw %struct.FULL, ptr %495, i32 0, i32 2
  %497 = load i32, ptr %17, align 4, !tbaa !3
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [1000 x ptr], ptr %496, i64 0, i64 %498
  %500 = load ptr, ptr %499, align 8, !tbaa !15
  store ptr %500, ptr %19, align 8, !tbaa !15
  br label %501

501:                                              ; preds = %530, %494
  %502 = load i32, ptr %16, align 4, !tbaa !3
  %503 = load i32, ptr %18, align 4, !tbaa !3
  %504 = icmp slt i32 %502, %503
  br i1 %504, label %505, label %535

505:                                              ; preds = %501
  %506 = load i32, ptr %17, align 4, !tbaa !3
  %507 = add nsw i32 %506, 1
  %508 = sitofp i32 %507 to float
  %509 = load i32, ptr %16, align 4, !tbaa !3
  %510 = load i32, ptr %17, align 4, !tbaa !3
  %511 = icmp sgt i32 %509, %510
  br i1 %511, label %512, label %515

512:                                              ; preds = %505
  %513 = load i32, ptr %16, align 4, !tbaa !3
  %514 = add nsw i32 %513, 1
  br label %518

515:                                              ; preds = %505
  %516 = load i32, ptr %17, align 4, !tbaa !3
  %517 = add nsw i32 %516, 1
  br label %518

518:                                              ; preds = %515, %512
  %519 = phi i32 [ %514, %512 ], [ %517, %515 ]
  %520 = sitofp i32 %519 to float
  %521 = fdiv float %508, %520
  store float %521, ptr %21, align 4, !tbaa !13
  %522 = load float, ptr %21, align 4, !tbaa !13
  %523 = fpext float %522 to double
  %524 = fmul double 0x47D2CED32A16A1B1, %523
  %525 = load float, ptr %20, align 4, !tbaa !13
  %526 = fpext float %525 to double
  %527 = fdiv double %524, %526
  %528 = fptrunc double %527 to float
  %529 = load ptr, ptr %19, align 8, !tbaa !15
  store float %528, ptr %529, align 4, !tbaa !13
  br label %530

530:                                              ; preds = %518
  %531 = load i32, ptr %16, align 4, !tbaa !3
  %532 = add nsw i32 %531, 1
  store i32 %532, ptr %16, align 4, !tbaa !3
  %533 = load ptr, ptr %19, align 8, !tbaa !15
  %534 = getelementptr inbounds nuw float, ptr %533, i32 1
  store ptr %534, ptr %19, align 8, !tbaa !15
  br label %501, !llvm.loop !45

535:                                              ; preds = %501
  br label %536

536:                                              ; preds = %535
  %537 = load i32, ptr %17, align 4, !tbaa !3
  %538 = add nsw i32 %537, 1
  store i32 %538, ptr %17, align 4, !tbaa !3
  br label %490, !llvm.loop !46

539:                                              ; preds = %490
  br label %616

540:                                              ; preds = %50
  %541 = load i32, ptr %15, align 4, !tbaa !3
  %542 = mul nsw i32 5, %541
  store i32 %542, ptr %18, align 4, !tbaa !3
  %543 = load i32, ptr %18, align 4, !tbaa !3
  %544 = load ptr, ptr %9, align 8, !tbaa !25
  %545 = getelementptr inbounds nuw %struct.FULL, ptr %544, i32 0, i32 0
  store i32 %543, ptr %545, align 8, !tbaa !9
  %546 = load i32, ptr %18, align 4, !tbaa !3
  %547 = load ptr, ptr %9, align 8, !tbaa !25
  %548 = getelementptr inbounds nuw %struct.FULL, ptr %547, i32 0, i32 1
  store i32 %546, ptr %548, align 4, !tbaa !7
  %549 = load ptr, ptr %9, align 8, !tbaa !25
  %550 = load ptr, ptr %10, align 8, !tbaa !27
  %551 = load ptr, ptr %11, align 8, !tbaa !27
  %552 = load ptr, ptr %12, align 8, !tbaa !27
  %553 = load ptr, ptr %13, align 8, !tbaa !30
  %554 = call signext i32 @get_space(ptr noundef %549, ptr noundef %550, ptr noundef %551, ptr noundef %552, ptr noundef %553)
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %557

556:                                              ; preds = %540
  store i32 1, ptr %8, align 4
  store i32 1, ptr %22, align 4
  br label %686

557:                                              ; preds = %540
  %558 = load i32, ptr %14, align 4, !tbaa !3
  %559 = load i32, ptr %18, align 4, !tbaa !3
  %560 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef signext %558, i32 noundef signext %559, double noundef 0x380B38FB9DAA78E4)
  %561 = load i32, ptr %18, align 4, !tbaa !3
  %562 = load i32, ptr %18, align 4, !tbaa !3
  %563 = mul nsw i32 %561, %562
  %564 = sitofp i32 %563 to float
  store float %564, ptr %20, align 4, !tbaa !13
  store i32 0, ptr %17, align 4, !tbaa !3
  br label %565

565:                                              ; preds = %610, %557
  %566 = load i32, ptr %17, align 4, !tbaa !3
  %567 = load i32, ptr %18, align 4, !tbaa !3
  %568 = icmp slt i32 %566, %567
  br i1 %568, label %569, label %613

569:                                              ; preds = %565
  store i32 0, ptr %16, align 4, !tbaa !3
  %570 = load ptr, ptr %9, align 8, !tbaa !25
  %571 = getelementptr inbounds nuw %struct.FULL, ptr %570, i32 0, i32 2
  %572 = load i32, ptr %17, align 4, !tbaa !3
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [1000 x ptr], ptr %571, i64 0, i64 %573
  %575 = load ptr, ptr %574, align 8, !tbaa !15
  store ptr %575, ptr %19, align 8, !tbaa !15
  br label %576

576:                                              ; preds = %604, %569
  %577 = load i32, ptr %16, align 4, !tbaa !3
  %578 = load i32, ptr %18, align 4, !tbaa !3
  %579 = icmp slt i32 %577, %578
  br i1 %579, label %580, label %609

580:                                              ; preds = %576
  %581 = load i32, ptr %16, align 4, !tbaa !3
  %582 = load i32, ptr %17, align 4, !tbaa !3
  %583 = icmp sgt i32 %581, %582
  br i1 %583, label %584, label %587

584:                                              ; preds = %580
  %585 = load i32, ptr %16, align 4, !tbaa !3
  %586 = add nsw i32 %585, 1
  br label %590

587:                                              ; preds = %580
  %588 = load i32, ptr %17, align 4, !tbaa !3
  %589 = add nsw i32 %588, 1
  br label %590

590:                                              ; preds = %587, %584
  %591 = phi i32 [ %586, %584 ], [ %589, %587 ]
  %592 = sitofp i32 %591 to float
  %593 = load i32, ptr %17, align 4, !tbaa !3
  %594 = add nsw i32 %593, 1
  %595 = sitofp i32 %594 to float
  %596 = fdiv float %592, %595
  store float %596, ptr %21, align 4, !tbaa !13
  %597 = load float, ptr %21, align 4, !tbaa !13
  %598 = load float, ptr %20, align 4, !tbaa !13
  %599 = fmul float %597, %598
  %600 = fpext float %599 to double
  %601 = fdiv double %600, 0x47D2CED32A16A1B1
  %602 = fptrunc double %601 to float
  %603 = load ptr, ptr %19, align 8, !tbaa !15
  store float %602, ptr %603, align 4, !tbaa !13
  br label %604

604:                                              ; preds = %590
  %605 = load i32, ptr %16, align 4, !tbaa !3
  %606 = add nsw i32 %605, 1
  store i32 %606, ptr %16, align 4, !tbaa !3
  %607 = load ptr, ptr %19, align 8, !tbaa !15
  %608 = getelementptr inbounds nuw float, ptr %607, i32 1
  store ptr %608, ptr %19, align 8, !tbaa !15
  br label %576, !llvm.loop !47

609:                                              ; preds = %576
  br label %610

610:                                              ; preds = %609
  %611 = load i32, ptr %17, align 4, !tbaa !3
  %612 = add nsw i32 %611, 1
  store i32 %612, ptr %17, align 4, !tbaa !3
  br label %565, !llvm.loop !48

613:                                              ; preds = %565
  br label %616

614:                                              ; preds = %50
  %615 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.16)
  store i32 1, ptr %8, align 4
  store i32 1, ptr %22, align 4
  br label %686

616:                                              ; preds = %613, %539, %464, %402, %340, %283, %229, %137, %121
  %617 = load ptr, ptr %10, align 8, !tbaa !27
  %618 = load ptr, ptr %617, align 8, !tbaa !15
  store float 1.000000e+00, ptr %618, align 4, !tbaa !13
  %619 = load i32, ptr %18, align 4, !tbaa !3
  %620 = icmp sgt i32 %619, 1
  br i1 %620, label %621, label %624

621:                                              ; preds = %616
  %622 = load ptr, ptr %12, align 8, !tbaa !27
  %623 = load ptr, ptr %622, align 8, !tbaa !15
  store float 0.000000e+00, ptr %623, align 4, !tbaa !13
  br label %624

624:                                              ; preds = %621, %616
  %625 = load i32, ptr %18, align 4, !tbaa !3
  %626 = icmp sgt i32 %625, 2
  br i1 %626, label %627, label %647

627:                                              ; preds = %624
  store i32 2, ptr %16, align 4, !tbaa !3
  %628 = load ptr, ptr %10, align 8, !tbaa !27
  %629 = load ptr, ptr %628, align 8, !tbaa !15
  %630 = getelementptr inbounds float, ptr %629, i64 2
  store ptr %630, ptr %19, align 8, !tbaa !15
  br label %631

631:                                              ; preds = %641, %627
  %632 = load i32, ptr %16, align 4, !tbaa !3
  %633 = load i32, ptr %18, align 4, !tbaa !3
  %634 = icmp slt i32 %632, %633
  br i1 %634, label %635, label %646

635:                                              ; preds = %631
  %636 = load ptr, ptr %19, align 8, !tbaa !15
  %637 = getelementptr inbounds float, ptr %636, i64 -2
  %638 = load float, ptr %637, align 4, !tbaa !13
  %639 = fneg float %638
  %640 = load ptr, ptr %19, align 8, !tbaa !15
  store float %639, ptr %640, align 4, !tbaa !13
  br label %641

641:                                              ; preds = %635
  %642 = load i32, ptr %16, align 4, !tbaa !3
  %643 = add nsw i32 %642, 1
  store i32 %643, ptr %16, align 4, !tbaa !3
  %644 = load ptr, ptr %19, align 8, !tbaa !15
  %645 = getelementptr inbounds nuw float, ptr %644, i32 1
  store ptr %645, ptr %19, align 8, !tbaa !15
  br label %631, !llvm.loop !49

646:                                              ; preds = %631
  br label %647

647:                                              ; preds = %646, %624
  %648 = load ptr, ptr %9, align 8, !tbaa !25
  %649 = load ptr, ptr %10, align 8, !tbaa !27
  %650 = load ptr, ptr %649, align 8, !tbaa !15
  %651 = load ptr, ptr %11, align 8, !tbaa !27
  %652 = load ptr, ptr %651, align 8, !tbaa !15
  %653 = call signext i32 @matvec(ptr noundef %648, ptr noundef %650, ptr noundef %652, i32 noundef signext 0)
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %655, label %657

655:                                              ; preds = %647
  %656 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.17)
  store i32 1, ptr %8, align 4
  store i32 1, ptr %22, align 4
  br label %686

657:                                              ; preds = %647
  %658 = load ptr, ptr %9, align 8, !tbaa !25
  %659 = load ptr, ptr %10, align 8, !tbaa !27
  %660 = load ptr, ptr %659, align 8, !tbaa !15
  %661 = load ptr, ptr %12, align 8, !tbaa !27
  %662 = load ptr, ptr %661, align 8, !tbaa !15
  %663 = call signext i32 @matvec(ptr noundef %658, ptr noundef %660, ptr noundef %662, i32 noundef signext 1)
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %665, label %667

665:                                              ; preds = %657
  %666 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.17)
  store i32 1, ptr %8, align 4
  store i32 1, ptr %22, align 4
  br label %686

667:                                              ; preds = %657
  %668 = load i32, ptr %18, align 4, !tbaa !3
  %669 = icmp sle i32 %668, 7
  br i1 %669, label %670, label %672

670:                                              ; preds = %667
  %671 = load ptr, ptr %9, align 8, !tbaa !25
  call void @matdump(ptr noundef %671, ptr noundef @.str.18)
  br label %672

672:                                              ; preds = %670, %667
  %673 = load i32, ptr %18, align 4, !tbaa !3
  %674 = icmp sle i32 %673, 7
  br i1 %674, label %675, label %685

675:                                              ; preds = %672
  %676 = load ptr, ptr %10, align 8, !tbaa !27
  %677 = load ptr, ptr %676, align 8, !tbaa !15
  %678 = load i32, ptr %18, align 4, !tbaa !3
  call void @fvecdump(ptr noundef %677, i32 noundef signext %678, ptr noundef @.str.19)
  %679 = load ptr, ptr %11, align 8, !tbaa !27
  %680 = load ptr, ptr %679, align 8, !tbaa !15
  %681 = load i32, ptr %18, align 4, !tbaa !3
  call void @fvecdump(ptr noundef %680, i32 noundef signext %681, ptr noundef @.str.20)
  %682 = load ptr, ptr %12, align 8, !tbaa !27
  %683 = load ptr, ptr %682, align 8, !tbaa !15
  %684 = load i32, ptr %18, align 4, !tbaa !3
  call void @fvecdump(ptr noundef %683, i32 noundef signext %684, ptr noundef @.str.21)
  br label %685

685:                                              ; preds = %675, %672
  store i32 0, ptr %8, align 4
  store i32 1, ptr %22, align 4
  br label %686

686:                                              ; preds = %685, %665, %655, %614, %556, %481, %419, %357, %300, %246, %166, %136, %70
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %19) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #5
  %687 = load i32, ptr %8, align 4
  ret i32 %687
}

declare void @free(ptr noundef) #3

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #0

; Function Attrs: nounwind
define dso_local signext i32 @get_space(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %7, align 8, !tbaa !25
  store ptr %1, ptr %8, align 8, !tbaa !27
  store ptr %2, ptr %9, align 8, !tbaa !27
  store ptr %3, ptr %10, align 8, !tbaa !27
  store ptr %4, ptr %11, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #5
  store i32 0, ptr %13, align 4, !tbaa !3
  br label %15

15:                                               ; preds = %43, %5
  %16 = load i32, ptr %13, align 4, !tbaa !3
  %17 = load ptr, ptr %7, align 8, !tbaa !25
  %18 = getelementptr inbounds nuw %struct.FULL, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !7
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  %22 = load ptr, ptr %7, align 8, !tbaa !25
  %23 = getelementptr inbounds nuw %struct.FULL, ptr %22, i32 0, i32 0
  %24 = load i32, ptr %23, align 8, !tbaa !9
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = call ptr @malloc(i64 noundef %26)
  %28 = load ptr, ptr %7, align 8, !tbaa !25
  %29 = getelementptr inbounds nuw %struct.FULL, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %13, align 4, !tbaa !3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [1000 x ptr], ptr %29, i64 0, i64 %31
  store ptr %27, ptr %32, align 8, !tbaa !15
  %33 = load ptr, ptr %7, align 8, !tbaa !25
  %34 = getelementptr inbounds nuw %struct.FULL, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %13, align 4, !tbaa !3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [1000 x ptr], ptr %34, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %21
  %41 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.22)
  store i32 1, ptr %6, align 4
  store i32 1, ptr %14, align 4
  br label %93

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %13, align 4, !tbaa !3
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %13, align 4, !tbaa !3
  br label %15, !llvm.loop !50

46:                                               ; preds = %15
  %47 = load ptr, ptr %7, align 8, !tbaa !25
  %48 = getelementptr inbounds nuw %struct.FULL, ptr %47, i32 0, i32 0
  %49 = load i32, ptr %48, align 8, !tbaa !9
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = call ptr @malloc(i64 noundef %51)
  %53 = load ptr, ptr %8, align 8, !tbaa !27
  store ptr %52, ptr %53, align 8, !tbaa !15
  %54 = load ptr, ptr %7, align 8, !tbaa !25
  %55 = getelementptr inbounds nuw %struct.FULL, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8, !tbaa !9
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = call ptr @malloc(i64 noundef %58)
  %60 = load ptr, ptr %9, align 8, !tbaa !27
  store ptr %59, ptr %60, align 8, !tbaa !15
  %61 = load ptr, ptr %7, align 8, !tbaa !25
  %62 = getelementptr inbounds nuw %struct.FULL, ptr %61, i32 0, i32 0
  %63 = load i32, ptr %62, align 8, !tbaa !9
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = call ptr @malloc(i64 noundef %65)
  %67 = load ptr, ptr %10, align 8, !tbaa !27
  store ptr %66, ptr %67, align 8, !tbaa !15
  %68 = load ptr, ptr %7, align 8, !tbaa !25
  %69 = getelementptr inbounds nuw %struct.FULL, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 8, !tbaa !9
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = call ptr @malloc(i64 noundef %72)
  %74 = load ptr, ptr %11, align 8, !tbaa !30
  store ptr %73, ptr %74, align 8, !tbaa !20
  %75 = load ptr, ptr %8, align 8, !tbaa !27
  %76 = load ptr, ptr %75, align 8, !tbaa !15
  %77 = icmp eq ptr %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %46
  %79 = load ptr, ptr %9, align 8, !tbaa !27
  %80 = load ptr, ptr %79, align 8, !tbaa !15
  %81 = icmp eq ptr %80, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %10, align 8, !tbaa !27
  %84 = load ptr, ptr %83, align 8, !tbaa !15
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %11, align 8, !tbaa !30
  %88 = load ptr, ptr %87, align 8, !tbaa !20
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86, %82, %78, %46
  %91 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.23)
  store i32 1, ptr %6, align 4
  store i32 1, ptr %14, align 4
  br label %93

92:                                               ; preds = %86
  store i32 0, ptr %6, align 4
  store i32 1, ptr %14, align 4
  br label %93

93:                                               ; preds = %92, %90, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #5
  %94 = load i32, ptr %6, align 4
  ret i32 %94
}

declare ptr @malloc(...) #3

; Function Attrs: nounwind
define dso_local signext i32 @matvec(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  store ptr %0, ptr %6, align 8, !tbaa !25
  store ptr %1, ptr %7, align 8, !tbaa !15
  store ptr %2, ptr %8, align 8, !tbaa !15
  store i32 %3, ptr %9, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #5
  %17 = load ptr, ptr %6, align 8, !tbaa !25
  %18 = getelementptr inbounds nuw %struct.FULL, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8, !tbaa !9
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load ptr, ptr %6, align 8, !tbaa !25
  %23 = getelementptr inbounds nuw %struct.FULL, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !7
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %4
  store i32 1, ptr %5, align 4
  store i32 1, ptr %16, align 4
  br label %147

27:                                               ; preds = %21
  %28 = load i32, ptr %9, align 4, !tbaa !3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %27
  store i32 0, ptr %10, align 4, !tbaa !3
  %31 = load ptr, ptr %8, align 8, !tbaa !15
  store ptr %31, ptr %13, align 8, !tbaa !15
  br label %32

32:                                               ; preds = %69, %30
  %33 = load i32, ptr %10, align 4, !tbaa !3
  %34 = load ptr, ptr %6, align 8, !tbaa !25
  %35 = getelementptr inbounds nuw %struct.FULL, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !7
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %32
  store i32 0, ptr %11, align 4, !tbaa !3
  %39 = load ptr, ptr %6, align 8, !tbaa !25
  %40 = getelementptr inbounds nuw %struct.FULL, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %10, align 4, !tbaa !3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1000 x ptr], ptr %40, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  store ptr %44, ptr %15, align 8, !tbaa !15
  %45 = load ptr, ptr %7, align 8, !tbaa !15
  store ptr %45, ptr %12, align 8, !tbaa !15
  %46 = load ptr, ptr %13, align 8, !tbaa !15
  store float 0.000000e+00, ptr %46, align 4, !tbaa !13
  br label %47

47:                                               ; preds = %61, %38
  %48 = load i32, ptr %11, align 4, !tbaa !3
  %49 = load ptr, ptr %6, align 8, !tbaa !25
  %50 = getelementptr inbounds nuw %struct.FULL, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8, !tbaa !9
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load ptr, ptr %15, align 8, !tbaa !15
  %55 = load float, ptr %54, align 4, !tbaa !13
  %56 = load ptr, ptr %12, align 8, !tbaa !15
  %57 = load float, ptr %56, align 4, !tbaa !13
  %58 = load ptr, ptr %13, align 8, !tbaa !15
  %59 = load float, ptr %58, align 4, !tbaa !13
  %60 = call float @llvm.fmuladd.f32(float %55, float %57, float %59)
  store float %60, ptr %58, align 4, !tbaa !13
  br label %61

61:                                               ; preds = %53
  %62 = load i32, ptr %11, align 4, !tbaa !3
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %11, align 4, !tbaa !3
  %64 = load ptr, ptr %12, align 8, !tbaa !15
  %65 = getelementptr inbounds nuw float, ptr %64, i32 1
  store ptr %65, ptr %12, align 8, !tbaa !15
  %66 = load ptr, ptr %15, align 8, !tbaa !15
  %67 = getelementptr inbounds nuw float, ptr %66, i32 1
  store ptr %67, ptr %15, align 8, !tbaa !15
  br label %47, !llvm.loop !51

68:                                               ; preds = %47
  br label %69

69:                                               ; preds = %68
  %70 = load i32, ptr %10, align 4, !tbaa !3
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %10, align 4, !tbaa !3
  %72 = load ptr, ptr %13, align 8, !tbaa !15
  %73 = getelementptr inbounds nuw float, ptr %72, i32 1
  store ptr %73, ptr %13, align 8, !tbaa !15
  br label %32, !llvm.loop !52

74:                                               ; preds = %32
  store i32 0, ptr %5, align 4
  store i32 1, ptr %16, align 4
  br label %147

75:                                               ; preds = %27
  store i32 0, ptr %10, align 4, !tbaa !3
  %76 = load ptr, ptr %7, align 8, !tbaa !15
  store ptr %76, ptr %12, align 8, !tbaa !15
  %77 = load ptr, ptr %8, align 8, !tbaa !15
  store ptr %77, ptr %13, align 8, !tbaa !15
  %78 = load ptr, ptr %6, align 8, !tbaa !25
  %79 = getelementptr inbounds nuw %struct.FULL, ptr %78, i32 0, i32 2
  %80 = getelementptr inbounds [1000 x ptr], ptr %79, i64 0, i64 0
  %81 = load ptr, ptr %80, align 8, !tbaa !15
  store ptr %81, ptr %14, align 8, !tbaa !15
  br label %82

82:                                               ; preds = %95, %75
  %83 = load i32, ptr %10, align 4, !tbaa !3
  %84 = load ptr, ptr %6, align 8, !tbaa !25
  %85 = getelementptr inbounds nuw %struct.FULL, ptr %84, i32 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !7
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = load ptr, ptr %14, align 8, !tbaa !15
  %90 = load float, ptr %89, align 4, !tbaa !13
  %91 = load ptr, ptr %12, align 8, !tbaa !15
  %92 = load float, ptr %91, align 4, !tbaa !13
  %93 = fmul float %90, %92
  %94 = load ptr, ptr %13, align 8, !tbaa !15
  store float %93, ptr %94, align 4, !tbaa !13
  br label %95

95:                                               ; preds = %88
  %96 = load i32, ptr %10, align 4, !tbaa !3
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %10, align 4, !tbaa !3
  %98 = load ptr, ptr %13, align 8, !tbaa !15
  %99 = getelementptr inbounds nuw float, ptr %98, i32 1
  store ptr %99, ptr %13, align 8, !tbaa !15
  %100 = load ptr, ptr %14, align 8, !tbaa !15
  %101 = getelementptr inbounds nuw float, ptr %100, i32 1
  store ptr %101, ptr %14, align 8, !tbaa !15
  br label %82, !llvm.loop !53

102:                                              ; preds = %82
  store i32 1, ptr %11, align 4, !tbaa !3
  br label %103

103:                                              ; preds = %143, %102
  %104 = load i32, ptr %11, align 4, !tbaa !3
  %105 = load ptr, ptr %6, align 8, !tbaa !25
  %106 = getelementptr inbounds nuw %struct.FULL, ptr %105, i32 0, i32 0
  %107 = load i32, ptr %106, align 8, !tbaa !9
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %146

109:                                              ; preds = %103
  store i32 0, ptr %10, align 4, !tbaa !3
  %110 = load ptr, ptr %7, align 8, !tbaa !15
  %111 = load i32, ptr %11, align 4, !tbaa !3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, ptr %110, i64 %112
  store ptr %113, ptr %12, align 8, !tbaa !15
  %114 = load ptr, ptr %8, align 8, !tbaa !15
  store ptr %114, ptr %13, align 8, !tbaa !15
  %115 = load ptr, ptr %6, align 8, !tbaa !25
  %116 = getelementptr inbounds nuw %struct.FULL, ptr %115, i32 0, i32 2
  %117 = load i32, ptr %11, align 4, !tbaa !3
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [1000 x ptr], ptr %116, i64 0, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !15
  store ptr %120, ptr %14, align 8, !tbaa !15
  br label %121

121:                                              ; preds = %135, %109
  %122 = load i32, ptr %10, align 4, !tbaa !3
  %123 = load ptr, ptr %6, align 8, !tbaa !25
  %124 = getelementptr inbounds nuw %struct.FULL, ptr %123, i32 0, i32 1
  %125 = load i32, ptr %124, align 4, !tbaa !7
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %121
  %128 = load ptr, ptr %14, align 8, !tbaa !15
  %129 = load float, ptr %128, align 4, !tbaa !13
  %130 = load ptr, ptr %12, align 8, !tbaa !15
  %131 = load float, ptr %130, align 4, !tbaa !13
  %132 = load ptr, ptr %13, align 8, !tbaa !15
  %133 = load float, ptr %132, align 4, !tbaa !13
  %134 = call float @llvm.fmuladd.f32(float %129, float %131, float %133)
  store float %134, ptr %132, align 4, !tbaa !13
  br label %135

135:                                              ; preds = %127
  %136 = load i32, ptr %10, align 4, !tbaa !3
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr %10, align 4, !tbaa !3
  %138 = load ptr, ptr %13, align 8, !tbaa !15
  %139 = getelementptr inbounds nuw float, ptr %138, i32 1
  store ptr %139, ptr %13, align 8, !tbaa !15
  %140 = load ptr, ptr %14, align 8, !tbaa !15
  %141 = getelementptr inbounds nuw float, ptr %140, i32 1
  store ptr %141, ptr %14, align 8, !tbaa !15
  br label %121, !llvm.loop !54

142:                                              ; preds = %121
  br label %143

143:                                              ; preds = %142
  %144 = load i32, ptr %11, align 4, !tbaa !3
  %145 = add nsw i32 %144, 1
  store i32 %145, ptr %11, align 4, !tbaa !3
  br label %103, !llvm.loop !55

146:                                              ; preds = %103
  store i32 0, ptr %5, align 4
  store i32 1, ptr %16, align 4
  br label %147

147:                                              ; preds = %146, %74, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #5
  %148 = load i32, ptr %5, align 4
  ret i32 %148
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind
define dso_local void @matdump(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !25
  store ptr %1, ptr %4, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #5
  %11 = load ptr, ptr %3, align 8, !tbaa !25
  %12 = getelementptr inbounds nuw %struct.FULL, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !9
  %14 = sdiv i32 %13, 6
  store i32 %14, ptr %9, align 4, !tbaa !3
  %15 = load ptr, ptr %3, align 8, !tbaa !25
  %16 = getelementptr inbounds nuw %struct.FULL, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8, !tbaa !9
  %18 = load i32, ptr %9, align 4, !tbaa !3
  %19 = mul nsw i32 %18, 6
  %20 = sub nsw i32 %17, %19
  store i32 %20, ptr %10, align 4, !tbaa !3
  %21 = load ptr, ptr %4, align 8, !tbaa !56
  %22 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.24, ptr noundef %21)
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %23

23:                                               ; preds = %93, %2
  %24 = load i32, ptr %5, align 4, !tbaa !3
  %25 = load ptr, ptr %3, align 8, !tbaa !25
  %26 = getelementptr inbounds nuw %struct.FULL, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !7
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %96

29:                                               ; preds = %23
  %30 = load i32, ptr %5, align 4, !tbaa !3
  %31 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.25, i32 noundef signext %30)
  store i32 0, ptr %6, align 4, !tbaa !3
  store i32 0, ptr %7, align 4, !tbaa !3
  br label %32

32:                                               ; preds = %65, %29
  %33 = load i32, ptr %7, align 4, !tbaa !3
  %34 = load i32, ptr %9, align 4, !tbaa !3
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load i32, ptr %7, align 4, !tbaa !3
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.26)
  br label %41

41:                                               ; preds = %39, %36
  store i32 0, ptr %8, align 4, !tbaa !3
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i32, ptr %8, align 4, !tbaa !3
  %44 = icmp slt i32 %43, 6
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load ptr, ptr %3, align 8, !tbaa !25
  %47 = getelementptr inbounds nuw %struct.FULL, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %6, align 4, !tbaa !3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [1000 x ptr], ptr %47, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !15
  %52 = load i32, ptr %5, align 4, !tbaa !3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, ptr %51, i64 %53
  %55 = load float, ptr %54, align 4, !tbaa !13
  %56 = fpext float %55 to double
  %57 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.27, double noundef %56)
  br label %58

58:                                               ; preds = %45
  %59 = load i32, ptr %8, align 4, !tbaa !3
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %8, align 4, !tbaa !3
  %61 = load i32, ptr %6, align 4, !tbaa !3
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %6, align 4, !tbaa !3
  br label %42, !llvm.loop !58

63:                                               ; preds = %42
  %64 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.28)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, ptr %7, align 4, !tbaa !3
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %7, align 4, !tbaa !3
  br label %32, !llvm.loop !59

68:                                               ; preds = %32
  store i32 0, ptr %8, align 4, !tbaa !3
  br label %69

69:                                               ; preds = %86, %68
  %70 = load i32, ptr %8, align 4, !tbaa !3
  %71 = load i32, ptr %10, align 4, !tbaa !3
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = load ptr, ptr %3, align 8, !tbaa !25
  %75 = getelementptr inbounds nuw %struct.FULL, ptr %74, i32 0, i32 2
  %76 = load i32, ptr %6, align 4, !tbaa !3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [1000 x ptr], ptr %75, i64 0, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !15
  %80 = load i32, ptr %5, align 4, !tbaa !3
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, ptr %79, i64 %81
  %83 = load float, ptr %82, align 4, !tbaa !13
  %84 = fpext float %83 to double
  %85 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.27, double noundef %84)
  br label %86

86:                                               ; preds = %73
  %87 = load i32, ptr %8, align 4, !tbaa !3
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %8, align 4, !tbaa !3
  %89 = load i32, ptr %6, align 4, !tbaa !3
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %6, align 4, !tbaa !3
  br label %69, !llvm.loop !60

91:                                               ; preds = %69
  %92 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.28)
  br label %93

93:                                               ; preds = %91
  %94 = load i32, ptr %5, align 4, !tbaa !3
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %5, align 4, !tbaa !3
  br label %23, !llvm.loop !61

96:                                               ; preds = %23
  %97 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.28)
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #5
  ret void
}

; Function Attrs: nounwind
define dso_local void @fvecdump(ptr noundef %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !15
  store i32 %1, ptr %5, align 4, !tbaa !3
  store ptr %2, ptr %6, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #5
  %12 = load i32, ptr %5, align 4, !tbaa !3
  %13 = sdiv i32 %12, 6
  store i32 %13, ptr %10, align 4, !tbaa !3
  %14 = load i32, ptr %5, align 4, !tbaa !3
  %15 = load i32, ptr %10, align 4, !tbaa !3
  %16 = mul nsw i32 %15, 6
  %17 = sub nsw i32 %14, %16
  store i32 %17, ptr %11, align 4, !tbaa !3
  %18 = load ptr, ptr %6, align 8, !tbaa !56
  %19 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.24, ptr noundef %18)
  store i32 0, ptr %9, align 4, !tbaa !3
  store i32 0, ptr %8, align 4, !tbaa !3
  br label %20

20:                                               ; preds = %44, %3
  %21 = load i32, ptr %8, align 4, !tbaa !3
  %22 = load i32, ptr %10, align 4, !tbaa !3
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load i32, ptr %9, align 4, !tbaa !3
  %26 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.25, i32 noundef signext %25)
  store i32 0, ptr %7, align 4, !tbaa !3
  br label %27

27:                                               ; preds = %35, %24
  %28 = load i32, ptr %7, align 4, !tbaa !3
  %29 = icmp slt i32 %28, 6
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load ptr, ptr %4, align 8, !tbaa !15
  %32 = load float, ptr %31, align 4, !tbaa !13
  %33 = fpext float %32 to double
  %34 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.27, double noundef %33)
  br label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %7, align 4, !tbaa !3
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %7, align 4, !tbaa !3
  %38 = load ptr, ptr %4, align 8, !tbaa !15
  %39 = getelementptr inbounds nuw float, ptr %38, i32 1
  store ptr %39, ptr %4, align 8, !tbaa !15
  %40 = load i32, ptr %9, align 4, !tbaa !3
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %9, align 4, !tbaa !3
  br label %27, !llvm.loop !62

42:                                               ; preds = %27
  %43 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.28)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %8, align 4, !tbaa !3
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %8, align 4, !tbaa !3
  br label %20, !llvm.loop !63

47:                                               ; preds = %20
  %48 = load i32, ptr %11, align 4, !tbaa !3
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load i32, ptr %9, align 4, !tbaa !3
  %52 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.25, i32 noundef signext %51)
  store i32 0, ptr %7, align 4, !tbaa !3
  br label %53

53:                                               ; preds = %62, %50
  %54 = load i32, ptr %7, align 4, !tbaa !3
  %55 = load i32, ptr %11, align 4, !tbaa !3
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load ptr, ptr %4, align 8, !tbaa !15
  %59 = load float, ptr %58, align 4, !tbaa !13
  %60 = fpext float %59 to double
  %61 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.27, double noundef %60)
  br label %62

62:                                               ; preds = %57
  %63 = load i32, ptr %7, align 4, !tbaa !3
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %7, align 4, !tbaa !3
  %65 = load ptr, ptr %4, align 8, !tbaa !15
  %66 = getelementptr inbounds nuw float, ptr %65, i32 1
  store ptr %66, ptr %4, align 8, !tbaa !15
  br label %53, !llvm.loop !64

67:                                               ; preds = %53
  %68 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.28)
  br label %69

69:                                               ; preds = %67, %47
  %70 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.28)
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5
  ret void
}

; Function Attrs: nounwind
define dso_local void @ivecdump(ptr noundef %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !20
  store i32 %1, ptr %5, align 4, !tbaa !3
  store ptr %2, ptr %6, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #5
  %12 = load i32, ptr %5, align 4, !tbaa !3
  %13 = sdiv i32 %12, 9
  store i32 %13, ptr %10, align 4, !tbaa !3
  %14 = load i32, ptr %5, align 4, !tbaa !3
  %15 = load i32, ptr %10, align 4, !tbaa !3
  %16 = mul nsw i32 %15, 6
  %17 = sub nsw i32 %14, %16
  store i32 %17, ptr %11, align 4, !tbaa !3
  %18 = load ptr, ptr %6, align 8, !tbaa !56
  %19 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.24, ptr noundef %18)
  store i32 0, ptr %9, align 4, !tbaa !3
  store i32 0, ptr %8, align 4, !tbaa !3
  br label %20

20:                                               ; preds = %43, %3
  %21 = load i32, ptr %8, align 4, !tbaa !3
  %22 = load i32, ptr %10, align 4, !tbaa !3
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load i32, ptr %9, align 4, !tbaa !3
  %26 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.25, i32 noundef signext %25)
  store i32 0, ptr %7, align 4, !tbaa !3
  br label %27

27:                                               ; preds = %34, %24
  %28 = load i32, ptr %7, align 4, !tbaa !3
  %29 = icmp slt i32 %28, 9
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load ptr, ptr %4, align 8, !tbaa !20
  %32 = load i32, ptr %31, align 4, !tbaa !3
  %33 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.29, i32 noundef signext %32)
  br label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %7, align 4, !tbaa !3
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %7, align 4, !tbaa !3
  %37 = load ptr, ptr %4, align 8, !tbaa !20
  %38 = getelementptr inbounds nuw i32, ptr %37, i32 1
  store ptr %38, ptr %4, align 8, !tbaa !20
  %39 = load i32, ptr %9, align 4, !tbaa !3
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %9, align 4, !tbaa !3
  br label %27, !llvm.loop !65

41:                                               ; preds = %27
  %42 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.28)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %8, align 4, !tbaa !3
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %8, align 4, !tbaa !3
  br label %20, !llvm.loop !66

46:                                               ; preds = %20
  %47 = load i32, ptr %11, align 4, !tbaa !3
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load i32, ptr %9, align 4, !tbaa !3
  %51 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.25, i32 noundef signext %50)
  store i32 0, ptr %7, align 4, !tbaa !3
  br label %52

52:                                               ; preds = %60, %49
  %53 = load i32, ptr %7, align 4, !tbaa !3
  %54 = load i32, ptr %11, align 4, !tbaa !3
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load ptr, ptr %4, align 8, !tbaa !20
  %58 = load i32, ptr %57, align 4, !tbaa !3
  %59 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.29, i32 noundef signext %58)
  br label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %7, align 4, !tbaa !3
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %7, align 4, !tbaa !3
  %63 = load ptr, ptr %4, align 8, !tbaa !20
  %64 = getelementptr inbounds nuw i32, ptr %63, i32 1
  store ptr %64, ptr %4, align 8, !tbaa !20
  br label %52, !llvm.loop !67

65:                                               ; preds = %52
  %66 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.28)
  br label %67

67:                                               ; preds = %65, %46
  %68 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.28)
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 4}
!8 = !{!"FULL", !4, i64 0, !4, i64 4, !5, i64 8}
!9 = !{!8, !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !5, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 float", !12, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 int", !12, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"double", !5, i64 0}
!24 = distinct !{!24, !18}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS4FULL", !12, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p2 float", !29, i64 0}
!29 = !{!"any p2 pointer", !12, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p2 int", !29, i64 0}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !18}
!56 = !{!57, !57, i64 0}
!57 = !{!"p1 omnipotent char", !12, i64 0}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !18}
