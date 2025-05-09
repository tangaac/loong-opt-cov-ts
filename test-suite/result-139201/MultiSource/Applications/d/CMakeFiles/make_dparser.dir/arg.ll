; ModuleID = './MultiSource/Applications/d/CMakeFiles/make_dparser.dir/arg.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/d/arg.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.ArgumentState = type { ptr, i32, ptr, ptr }
%struct.ArgumentDescription = type { ptr, i8, ptr, ptr, ptr, ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s:bad argument description\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Usage: %s [flags|args]\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"  %c%c%c --%s%s%s\00", align 1
@SPACES = internal global ptr @.str.14, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@arg_types_desc = internal global [9 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], align 8
@arg_types_keys = internal global ptr @.str.24, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" %-9lld\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" %-9s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" %-7s..\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" (null)   \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" %-9.3e\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" %-9d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"true \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [80 x i8] c"                                                                               \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"int     \00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"string  \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"double  \00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"set off \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"set on  \00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"incr    \00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"toggle  \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"int64   \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"ISDfF+TL\00", align 1

; Function Attrs: nounwind
define dso_local void @process_arg(ptr noundef %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  store ptr %0, ptr %4, align 8, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !8
  store ptr %2, ptr %6, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #6
  store ptr null, ptr %7, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #6
  %10 = load ptr, ptr %4, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct.ArgumentState, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  store ptr %12, ptr %8, align 8, !tbaa !19
  %13 = load ptr, ptr %8, align 8, !tbaa !19
  %14 = load i32, ptr %5, align 4, !tbaa !8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ArgumentDescription, ptr %13, i64 %15
  %17 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %172

20:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr %9) #6
  %21 = load ptr, ptr %8, align 8, !tbaa !19
  %22 = load i32, ptr %5, align 4, !tbaa !8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ArgumentDescription, ptr %21, i64 %23
  %25 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !20
  %27 = getelementptr inbounds i8, ptr %26, i64 0
  %28 = load i8, ptr %27, align 1, !tbaa !22
  store i8 %28, ptr %9, align 1, !tbaa !22
  %29 = load i8, ptr %9, align 1, !tbaa !22
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 70
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = load i8, ptr %9, align 1, !tbaa !22
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 102
  br i1 %35, label %36, label %48

36:                                               ; preds = %32, %20
  %37 = load i8, ptr %9, align 1, !tbaa !22
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 70
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = load ptr, ptr %8, align 8, !tbaa !19
  %43 = load i32, ptr %5, align 4, !tbaa !8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ArgumentDescription, ptr %42, i64 %44
  %46 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %45, i32 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !23
  store i32 %41, ptr %47, align 4, !tbaa !8
  br label %171

48:                                               ; preds = %32
  %49 = load i8, ptr %9, align 1, !tbaa !22
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 84
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load ptr, ptr %8, align 8, !tbaa !19
  %54 = load i32, ptr %5, align 4, !tbaa !8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ArgumentDescription, ptr %53, i64 %55
  %57 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %56, i32 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !23
  %59 = load i32, ptr %58, align 4, !tbaa !8
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load ptr, ptr %8, align 8, !tbaa !19
  %64 = load i32, ptr %5, align 4, !tbaa !8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ArgumentDescription, ptr %63, i64 %65
  %67 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %66, i32 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !23
  store i32 %62, ptr %68, align 4, !tbaa !8
  br label %170

69:                                               ; preds = %48
  %70 = load i8, ptr %9, align 1, !tbaa !22
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 43
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load ptr, ptr %8, align 8, !tbaa !19
  %75 = load i32, ptr %5, align 4, !tbaa !8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ArgumentDescription, ptr %74, i64 %76
  %78 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %77, i32 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !23
  %80 = load i32, ptr %79, align 4, !tbaa !8
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %79, align 4, !tbaa !8
  br label %169

82:                                               ; preds = %69
  %83 = load ptr, ptr %6, align 8, !tbaa !10
  %84 = load ptr, ptr %83, align 8, !tbaa !24
  %85 = load ptr, ptr %84, align 8, !tbaa !14
  %86 = getelementptr inbounds nuw i8, ptr %85, i32 1
  store ptr %86, ptr %84, align 8, !tbaa !14
  %87 = load i8, ptr %86, align 1, !tbaa !22
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load ptr, ptr %6, align 8, !tbaa !10
  %92 = load ptr, ptr %91, align 8, !tbaa !24
  %93 = load ptr, ptr %92, align 8, !tbaa !14
  br label %99

94:                                               ; preds = %82
  %95 = load ptr, ptr %6, align 8, !tbaa !10
  %96 = load ptr, ptr %95, align 8, !tbaa !24
  %97 = getelementptr inbounds nuw ptr, ptr %96, i32 1
  store ptr %97, ptr %95, align 8, !tbaa !24
  %98 = load ptr, ptr %97, align 8, !tbaa !14
  br label %99

99:                                               ; preds = %94, %90
  %100 = phi ptr [ %93, %90 ], [ %98, %94 ]
  store ptr %100, ptr %7, align 8, !tbaa !14
  %101 = load ptr, ptr %7, align 8, !tbaa !14
  %102 = icmp ne ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %4, align 8, !tbaa !3
  call void @usage(ptr noundef %104, ptr noundef null)
  br label %105

105:                                              ; preds = %103, %99
  %106 = load i8, ptr %9, align 1, !tbaa !22
  %107 = sext i8 %106 to i32
  switch i32 %107, label %153 [
    i32 73, label %108
    i32 68, label %117
    i32 76, label %126
    i32 83, label %135
  ]

108:                                              ; preds = %105
  %109 = load ptr, ptr %7, align 8, !tbaa !14
  %110 = call signext i32 @atoi(ptr noundef %109) #7
  %111 = load ptr, ptr %8, align 8, !tbaa !19
  %112 = load i32, ptr %5, align 4, !tbaa !8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ArgumentDescription, ptr %111, i64 %113
  %115 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %114, i32 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !23
  store i32 %110, ptr %116, align 4, !tbaa !8
  br label %159

117:                                              ; preds = %105
  %118 = load ptr, ptr %7, align 8, !tbaa !14
  %119 = call double @atof(ptr noundef %118) #7
  %120 = load ptr, ptr %8, align 8, !tbaa !19
  %121 = load i32, ptr %5, align 4, !tbaa !8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.ArgumentDescription, ptr %120, i64 %122
  %124 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %123, i32 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !23
  store double %119, ptr %125, align 8, !tbaa !25
  br label %159

126:                                              ; preds = %105
  %127 = load ptr, ptr %7, align 8, !tbaa !14
  %128 = call i64 @atol(ptr noundef %127) #7
  %129 = load ptr, ptr %8, align 8, !tbaa !19
  %130 = load i32, ptr %5, align 4, !tbaa !8
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ArgumentDescription, ptr %129, i64 %131
  %133 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %132, i32 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !23
  store i64 %128, ptr %134, align 8, !tbaa !27
  br label %159

135:                                              ; preds = %105
  %136 = load ptr, ptr %8, align 8, !tbaa !19
  %137 = load i32, ptr %5, align 4, !tbaa !8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ArgumentDescription, ptr %136, i64 %138
  %140 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %139, i32 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !23
  %142 = load ptr, ptr %7, align 8, !tbaa !14
  %143 = load ptr, ptr %8, align 8, !tbaa !19
  %144 = load i32, ptr %5, align 4, !tbaa !8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.ArgumentDescription, ptr %143, i64 %145
  %147 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %146, i32 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !20
  %149 = getelementptr inbounds i8, ptr %148, i64 1
  %150 = call signext i32 @atoi(ptr noundef %149) #7
  %151 = sext i32 %150 to i64
  %152 = call ptr @strncpy(ptr noundef %141, ptr noundef %142, i64 noundef %151) #6
  br label %159

153:                                              ; preds = %105
  %154 = load ptr, ptr @stderr, align 8, !tbaa !29
  %155 = load ptr, ptr %4, align 8, !tbaa !3
  %156 = getelementptr inbounds nuw %struct.ArgumentState, ptr %155, i32 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !31
  %158 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef @.str, ptr noundef %157) #6
  call void @exit(i32 noundef signext 1) #8
  unreachable

159:                                              ; preds = %135, %126, %117, %108
  %160 = load ptr, ptr %6, align 8, !tbaa !10
  %161 = load ptr, ptr %160, align 8, !tbaa !24
  %162 = load ptr, ptr %161, align 8, !tbaa !14
  %163 = call i64 @strlen(ptr noundef %162) #7
  %164 = sub i64 %163, 1
  %165 = load ptr, ptr %6, align 8, !tbaa !10
  %166 = load ptr, ptr %165, align 8, !tbaa !24
  %167 = load ptr, ptr %166, align 8, !tbaa !14
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 %164
  store ptr %168, ptr %166, align 8, !tbaa !14
  br label %169

169:                                              ; preds = %159, %73
  br label %170

170:                                              ; preds = %169, %52
  br label %171

171:                                              ; preds = %170, %36
  call void @llvm.lifetime.end.p0(i64 1, ptr %9) #6
  br label %172

172:                                              ; preds = %171, %3
  %173 = load ptr, ptr %8, align 8, !tbaa !19
  %174 = load i32, ptr %5, align 4, !tbaa !8
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.ArgumentDescription, ptr %173, i64 %175
  %177 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %176, i32 0, i32 6
  %178 = load ptr, ptr %177, align 8, !tbaa !32
  %179 = icmp ne ptr %178, null
  br i1 %179, label %180, label %189

180:                                              ; preds = %172
  %181 = load ptr, ptr %8, align 8, !tbaa !19
  %182 = load i32, ptr %5, align 4, !tbaa !8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.ArgumentDescription, ptr %181, i64 %183
  %185 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %184, i32 0, i32 6
  %186 = load ptr, ptr %185, align 8, !tbaa !32
  %187 = load ptr, ptr %4, align 8, !tbaa !3
  %188 = load ptr, ptr %7, align 8, !tbaa !14
  call void %186(ptr noundef %187, ptr noundef %188)
  br label %189

189:                                              ; preds = %180, %172
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local void @usage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #6
  %7 = load ptr, ptr %3, align 8, !tbaa !3
  %8 = getelementptr inbounds nuw %struct.ArgumentState, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  store ptr %9, ptr %5, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6
  %10 = load ptr, ptr %4, align 8, !tbaa !14
  %11 = load ptr, ptr @stderr, align 8, !tbaa !29
  %12 = load ptr, ptr %3, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.ArgumentState, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !31
  %15 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.1, ptr noundef %14) #6
  store i32 0, ptr %6, align 4, !tbaa !8
  br label %16

16:                                               ; preds = %246, %2
  %17 = load ptr, ptr %5, align 8, !tbaa !19
  %18 = load i32, ptr %6, align 4, !tbaa !8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ArgumentDescription, ptr %17, i64 %19
  %21 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %20, i32 0, i32 0
  %22 = load ptr, ptr %21, align 8, !tbaa !33
  %23 = icmp ne ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %249

25:                                               ; preds = %16
  %26 = load ptr, ptr %5, align 8, !tbaa !19
  %27 = load i32, ptr %6, align 4, !tbaa !8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ArgumentDescription, ptr %26, i64 %28
  %30 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp ne ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %246

34:                                               ; preds = %25
  %35 = load ptr, ptr @stderr, align 8, !tbaa !29
  %36 = load ptr, ptr %5, align 8, !tbaa !19
  %37 = load i32, ptr %6, align 4, !tbaa !8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ArgumentDescription, ptr %36, i64 %38
  %40 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %39, i32 0, i32 1
  %41 = load i8, ptr %40, align 8, !tbaa !35
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 32
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 45, i32 32
  %46 = load ptr, ptr %5, align 8, !tbaa !19
  %47 = load i32, ptr %6, align 4, !tbaa !8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ArgumentDescription, ptr %46, i64 %48
  %50 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %49, i32 0, i32 1
  %51 = load i8, ptr %50, align 8, !tbaa !35
  %52 = sext i8 %51 to i32
  %53 = load ptr, ptr %5, align 8, !tbaa !19
  %54 = load i32, ptr %6, align 4, !tbaa !8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ArgumentDescription, ptr %53, i64 %55
  %57 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %56, i32 0, i32 1
  %58 = load i8, ptr %57, align 8, !tbaa !35
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 32
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 44, i32 32
  %63 = load ptr, ptr %5, align 8, !tbaa !19
  %64 = load i32, ptr %6, align 4, !tbaa !8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ArgumentDescription, ptr %63, i64 %65
  %67 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %66, i32 0, i32 0
  %68 = load ptr, ptr %67, align 8, !tbaa !33
  %69 = load ptr, ptr %5, align 8, !tbaa !19
  %70 = load i32, ptr %6, align 4, !tbaa !8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ArgumentDescription, ptr %69, i64 %71
  %73 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %72, i32 0, i32 0
  %74 = load ptr, ptr %73, align 8, !tbaa !33
  %75 = call i64 @strlen(ptr noundef %74) #7
  %76 = add i64 %75, 61
  %77 = icmp ult i64 %76, 81
  br i1 %77, label %78, label %89

78:                                               ; preds = %34
  %79 = load ptr, ptr @SPACES, align 8, !tbaa !14
  %80 = load ptr, ptr %5, align 8, !tbaa !19
  %81 = load i32, ptr %6, align 4, !tbaa !8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ArgumentDescription, ptr %80, i64 %82
  %84 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %83, i32 0, i32 0
  %85 = load ptr, ptr %84, align 8, !tbaa !33
  %86 = call i64 @strlen(ptr noundef %85) #7
  %87 = add i64 %86, 61
  %88 = getelementptr inbounds nuw i8, ptr %79, i64 %87
  br label %90

89:                                               ; preds = %34
  br label %90

90:                                               ; preds = %89, %78
  %91 = phi ptr [ %88, %78 ], [ @.str.3, %89 ]
  %92 = load ptr, ptr %5, align 8, !tbaa !19
  %93 = load i32, ptr %6, align 4, !tbaa !8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ArgumentDescription, ptr %92, i64 %94
  %96 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %95, i32 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !20
  %98 = icmp ne ptr %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %90
  %100 = load ptr, ptr @arg_types_keys, align 8, !tbaa !14
  %101 = load ptr, ptr %5, align 8, !tbaa !19
  %102 = load i32, ptr %6, align 4, !tbaa !8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ArgumentDescription, ptr %101, i64 %103
  %105 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !20
  %107 = getelementptr inbounds i8, ptr %106, i64 0
  %108 = load i8, ptr %107, align 1, !tbaa !22
  %109 = sext i8 %108 to i32
  %110 = call ptr @strchr(ptr noundef %100, i32 noundef signext %109) #7
  %111 = load ptr, ptr @arg_types_keys, align 8, !tbaa !14
  %112 = ptrtoint ptr %110 to i64
  %113 = ptrtoint ptr %111 to i64
  %114 = sub i64 %112, %113
  br label %118

115:                                              ; preds = %90
  %116 = load ptr, ptr @arg_types_keys, align 8, !tbaa !14
  %117 = call i64 @strlen(ptr noundef %116) #7
  br label %118

118:                                              ; preds = %115, %99
  %119 = phi i64 [ %114, %99 ], [ %117, %115 ]
  %120 = getelementptr inbounds nuw [9 x ptr], ptr @arg_types_desc, i64 0, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !14
  %122 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.2, i32 noundef signext %45, i32 noundef signext %52, i32 noundef signext %62, ptr noundef %68, ptr noundef %91, ptr noundef %121) #6
  %123 = load ptr, ptr %5, align 8, !tbaa !19
  %124 = load i32, ptr %6, align 4, !tbaa !8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ArgumentDescription, ptr %123, i64 %125
  %127 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %126, i32 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !20
  %129 = icmp ne ptr %128, null
  br i1 %129, label %130, label %140

130:                                              ; preds = %118
  %131 = load ptr, ptr %5, align 8, !tbaa !19
  %132 = load i32, ptr %6, align 4, !tbaa !8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.ArgumentDescription, ptr %131, i64 %133
  %135 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %134, i32 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !20
  %137 = getelementptr inbounds i8, ptr %136, i64 0
  %138 = load i8, ptr %137, align 1, !tbaa !22
  %139 = sext i8 %138 to i32
  br label %141

140:                                              ; preds = %118
  br label %141

141:                                              ; preds = %140, %130
  %142 = phi i32 [ %139, %130 ], [ 0, %140 ]
  switch i32 %142, label %237 [
    i32 0, label %143
    i32 76, label %146
    i32 83, label %156
    i32 68, label %204
    i32 43, label %214
    i32 73, label %214
    i32 84, label %224
    i32 102, label %224
    i32 70, label %224
  ]

143:                                              ; preds = %141
  %144 = load ptr, ptr @stderr, align 8, !tbaa !29
  %145 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef @.str.4) #6
  br label %237

146:                                              ; preds = %141
  %147 = load ptr, ptr @stderr, align 8, !tbaa !29
  %148 = load ptr, ptr %5, align 8, !tbaa !19
  %149 = load i32, ptr %6, align 4, !tbaa !8
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.ArgumentDescription, ptr %148, i64 %150
  %152 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %151, i32 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !23
  %154 = load i64, ptr %153, align 8, !tbaa !27
  %155 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %147, ptr noundef @.str.5, i64 noundef %154) #6
  br label %237

156:                                              ; preds = %141
  %157 = load ptr, ptr %5, align 8, !tbaa !19
  %158 = load i32, ptr %6, align 4, !tbaa !8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.ArgumentDescription, ptr %157, i64 %159
  %161 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %160, i32 0, i32 4
  %162 = load ptr, ptr %161, align 8, !tbaa !23
  %163 = load i8, ptr %162, align 1, !tbaa !22
  %164 = icmp ne i8 %163, 0
  br i1 %164, label %165, label %200

165:                                              ; preds = %156
  %166 = load ptr, ptr %5, align 8, !tbaa !19
  %167 = load i32, ptr %6, align 4, !tbaa !8
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.ArgumentDescription, ptr %166, i64 %168
  %170 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %169, i32 0, i32 4
  %171 = load ptr, ptr %170, align 8, !tbaa !23
  %172 = call i64 @strlen(ptr noundef %171) #7
  %173 = icmp ult i64 %172, 10
  br i1 %173, label %174, label %183

174:                                              ; preds = %165
  %175 = load ptr, ptr @stderr, align 8, !tbaa !29
  %176 = load ptr, ptr %5, align 8, !tbaa !19
  %177 = load i32, ptr %6, align 4, !tbaa !8
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.ArgumentDescription, ptr %176, i64 %178
  %180 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %179, i32 0, i32 4
  %181 = load ptr, ptr %180, align 8, !tbaa !23
  %182 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %175, ptr noundef @.str.6, ptr noundef %181) #6
  br label %199

183:                                              ; preds = %165
  %184 = load ptr, ptr %5, align 8, !tbaa !19
  %185 = load i32, ptr %6, align 4, !tbaa !8
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.ArgumentDescription, ptr %184, i64 %186
  %188 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %187, i32 0, i32 4
  %189 = load ptr, ptr %188, align 8, !tbaa !23
  %190 = getelementptr inbounds i8, ptr %189, i64 7
  store i8 0, ptr %190, align 1, !tbaa !22
  %191 = load ptr, ptr @stderr, align 8, !tbaa !29
  %192 = load ptr, ptr %5, align 8, !tbaa !19
  %193 = load i32, ptr %6, align 4, !tbaa !8
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.ArgumentDescription, ptr %192, i64 %194
  %196 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %195, i32 0, i32 4
  %197 = load ptr, ptr %196, align 8, !tbaa !23
  %198 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %191, ptr noundef @.str.7, ptr noundef %197) #6
  br label %199

199:                                              ; preds = %183, %174
  br label %203

200:                                              ; preds = %156
  %201 = load ptr, ptr @stderr, align 8, !tbaa !29
  %202 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef @.str.8) #6
  br label %203

203:                                              ; preds = %200, %199
  br label %237

204:                                              ; preds = %141
  %205 = load ptr, ptr @stderr, align 8, !tbaa !29
  %206 = load ptr, ptr %5, align 8, !tbaa !19
  %207 = load i32, ptr %6, align 4, !tbaa !8
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.ArgumentDescription, ptr %206, i64 %208
  %210 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %209, i32 0, i32 4
  %211 = load ptr, ptr %210, align 8, !tbaa !23
  %212 = load double, ptr %211, align 8, !tbaa !25
  %213 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef @.str.9, double noundef %212) #6
  br label %237

214:                                              ; preds = %141, %141
  %215 = load ptr, ptr @stderr, align 8, !tbaa !29
  %216 = load ptr, ptr %5, align 8, !tbaa !19
  %217 = load i32, ptr %6, align 4, !tbaa !8
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.ArgumentDescription, ptr %216, i64 %218
  %220 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %219, i32 0, i32 4
  %221 = load ptr, ptr %220, align 8, !tbaa !23
  %222 = load i32, ptr %221, align 4, !tbaa !8
  %223 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef @.str.10, i32 noundef signext %222) #6
  br label %237

224:                                              ; preds = %141, %141, %141
  %225 = load ptr, ptr @stderr, align 8, !tbaa !29
  %226 = load ptr, ptr %5, align 8, !tbaa !19
  %227 = load i32, ptr %6, align 4, !tbaa !8
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.ArgumentDescription, ptr %226, i64 %228
  %230 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %229, i32 0, i32 4
  %231 = load ptr, ptr %230, align 8, !tbaa !23
  %232 = load i32, ptr %231, align 4, !tbaa !8
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, ptr @.str.11, ptr @.str.12
  %236 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef @.str.6, ptr noundef %235) #6
  br label %237

237:                                              ; preds = %141, %224, %214, %204, %203, %146, %143
  %238 = load ptr, ptr @stderr, align 8, !tbaa !29
  %239 = load ptr, ptr %5, align 8, !tbaa !19
  %240 = load i32, ptr %6, align 4, !tbaa !8
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.ArgumentDescription, ptr %239, i64 %241
  %243 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %242, i32 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !34
  %245 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %238, ptr noundef @.str.13, ptr noundef %244) #6
  br label %246

246:                                              ; preds = %237, %33
  %247 = load i32, ptr %6, align 4, !tbaa !8
  %248 = add nsw i32 %247, 1
  store i32 %248, ptr %6, align 4, !tbaa !8
  br label %16

249:                                              ; preds = %24
  call void @exit(i32 noundef signext 1) #8
  unreachable
}

; Function Attrs: inlinehint nounwind willreturn memory(read)
define available_externally signext i32 @atoi(ptr noundef nonnull %0) #2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !14
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = call i64 @strtol(ptr noundef %3, ptr noundef null, i32 noundef signext 10) #6
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: inlinehint nounwind willreturn memory(read)
define available_externally double @atof(ptr noundef nonnull %0) #2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !14
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = call double @strtod(ptr noundef %3, ptr noundef null) #6
  ret double %4
}

; Function Attrs: inlinehint nounwind willreturn memory(read)
define available_externally i64 @atol(ptr noundef nonnull %0) #2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !14
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = call i64 @strtol(ptr noundef %3, ptr noundef null, i32 noundef signext 10) #6
  ret i64 %4
}

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind
declare signext i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef signext) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local void @process_args(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6
  store i32 0, ptr %5, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #6
  %12 = load ptr, ptr %3, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.ArgumentState, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  store ptr %14, ptr %8, align 8, !tbaa !19
  store i32 0, ptr %5, align 4, !tbaa !8
  br label %15

15:                                               ; preds = %122, %2
  %16 = load ptr, ptr %8, align 8, !tbaa !19
  %17 = load i32, ptr %5, align 4, !tbaa !8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ArgumentDescription, ptr %16, i64 %18
  %20 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %19, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8, !tbaa !33
  %22 = icmp ne ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %125

24:                                               ; preds = %15
  %25 = load ptr, ptr %8, align 8, !tbaa !19
  %26 = load i32, ptr %5, align 4, !tbaa !8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ArgumentDescription, ptr %25, i64 %27
  %29 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !36
  %31 = icmp ne ptr %30, null
  br i1 %31, label %32, label %121

32:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1, ptr %9) #6
  %33 = load ptr, ptr %8, align 8, !tbaa !19
  %34 = load i32, ptr %5, align 4, !tbaa !8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ArgumentDescription, ptr %33, i64 %35
  %37 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !20
  %39 = getelementptr inbounds i8, ptr %38, i64 0
  %40 = load i8, ptr %39, align 1, !tbaa !22
  store i8 %40, ptr %9, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #6
  %41 = load ptr, ptr %8, align 8, !tbaa !19
  %42 = load i32, ptr %5, align 4, !tbaa !8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ArgumentDescription, ptr %41, i64 %43
  %45 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !36
  %47 = call ptr @getenv(ptr noundef %46) #6
  store ptr %47, ptr %10, align 8, !tbaa !14
  %48 = load ptr, ptr %10, align 8, !tbaa !14
  %49 = icmp ne ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %32
  store i32 4, ptr %11, align 4
  br label %118

51:                                               ; preds = %32
  %52 = load i8, ptr %9, align 1, !tbaa !22
  %53 = sext i8 %52 to i32
  switch i32 %53, label %100 [
    i32 65, label %54
    i32 102, label %54
    i32 70, label %54
    i32 73, label %55
    i32 68, label %65
    i32 76, label %74
    i32 83, label %83
  ]

54:                                               ; preds = %51, %51, %51
  br label %100

55:                                               ; preds = %51
  %56 = load ptr, ptr %10, align 8, !tbaa !14
  %57 = call i64 @strtol(ptr noundef %56, ptr noundef null, i32 noundef signext 0) #6
  %58 = trunc i64 %57 to i32
  %59 = load ptr, ptr %8, align 8, !tbaa !19
  %60 = load i32, ptr %5, align 4, !tbaa !8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ArgumentDescription, ptr %59, i64 %61
  %63 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %62, i32 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !23
  store i32 %58, ptr %64, align 4, !tbaa !8
  br label %100

65:                                               ; preds = %51
  %66 = load ptr, ptr %10, align 8, !tbaa !14
  %67 = call double @strtod(ptr noundef %66, ptr noundef null) #6
  %68 = load ptr, ptr %8, align 8, !tbaa !19
  %69 = load i32, ptr %5, align 4, !tbaa !8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ArgumentDescription, ptr %68, i64 %70
  %72 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %71, i32 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !23
  store double %67, ptr %73, align 8, !tbaa !25
  br label %100

74:                                               ; preds = %51
  %75 = load ptr, ptr %10, align 8, !tbaa !14
  %76 = call i64 @strtoll(ptr noundef %75, ptr noundef null, i32 noundef signext 0) #6
  %77 = load ptr, ptr %8, align 8, !tbaa !19
  %78 = load i32, ptr %5, align 4, !tbaa !8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ArgumentDescription, ptr %77, i64 %79
  %81 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %80, i32 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !23
  store i64 %76, ptr %82, align 8, !tbaa !27
  br label %100

83:                                               ; preds = %51
  %84 = load ptr, ptr %8, align 8, !tbaa !19
  %85 = load i32, ptr %5, align 4, !tbaa !8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ArgumentDescription, ptr %84, i64 %86
  %88 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %87, i32 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !23
  %90 = load ptr, ptr %10, align 8, !tbaa !14
  %91 = load ptr, ptr %8, align 8, !tbaa !19
  %92 = load i32, ptr %5, align 4, !tbaa !8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ArgumentDescription, ptr %91, i64 %93
  %95 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %94, i32 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !20
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  %98 = call i64 @strtol(ptr noundef %97, ptr noundef null, i32 noundef signext 0) #6
  %99 = call ptr @strncpy(ptr noundef %89, ptr noundef %90, i64 noundef %98) #6
  br label %100

100:                                              ; preds = %51, %83, %74, %65, %55, %54
  %101 = load ptr, ptr %8, align 8, !tbaa !19
  %102 = load i32, ptr %5, align 4, !tbaa !8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ArgumentDescription, ptr %101, i64 %103
  %105 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %104, i32 0, i32 6
  %106 = load ptr, ptr %105, align 8, !tbaa !32
  %107 = icmp ne ptr %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %100
  %109 = load ptr, ptr %8, align 8, !tbaa !19
  %110 = load i32, ptr %5, align 4, !tbaa !8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ArgumentDescription, ptr %109, i64 %111
  %113 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %112, i32 0, i32 6
  %114 = load ptr, ptr %113, align 8, !tbaa !32
  %115 = load ptr, ptr %3, align 8, !tbaa !3
  %116 = load ptr, ptr %10, align 8, !tbaa !14
  call void %114(ptr noundef %115, ptr noundef %116)
  br label %117

117:                                              ; preds = %108, %100
  store i32 0, ptr %11, align 4
  br label %118

118:                                              ; preds = %117, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %9) #6
  %119 = load i32, ptr %11, align 4
  switch i32 %119, label %303 [
    i32 0, label %120
    i32 4, label %122
  ]

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120, %24
  br label %122

122:                                              ; preds = %121, %118
  %123 = load i32, ptr %5, align 4, !tbaa !8
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %5, align 4, !tbaa !8
  br label %15

125:                                              ; preds = %23
  %126 = load ptr, ptr %4, align 8, !tbaa !24
  %127 = getelementptr inbounds ptr, ptr %126, i64 0
  %128 = load ptr, ptr %127, align 8, !tbaa !14
  %129 = load ptr, ptr %3, align 8, !tbaa !3
  %130 = getelementptr inbounds nuw %struct.ArgumentState, ptr %129, i32 0, i32 2
  store ptr %128, ptr %130, align 8, !tbaa !31
  br label %131

131:                                              ; preds = %301, %125
  %132 = load ptr, ptr %4, align 8, !tbaa !24
  %133 = getelementptr inbounds nuw ptr, ptr %132, i32 1
  store ptr %133, ptr %4, align 8, !tbaa !24
  %134 = load ptr, ptr %133, align 8, !tbaa !14
  %135 = icmp ne ptr %134, null
  br i1 %135, label %136, label %302

136:                                              ; preds = %131
  %137 = load ptr, ptr %4, align 8, !tbaa !24
  %138 = load ptr, ptr %137, align 8, !tbaa !14
  %139 = load i8, ptr %138, align 1, !tbaa !22
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 45
  br i1 %141, label %142, label %269

142:                                              ; preds = %136
  %143 = load ptr, ptr %4, align 8, !tbaa !24
  %144 = load ptr, ptr %143, align 8, !tbaa !14
  %145 = getelementptr inbounds i8, ptr %144, i64 1
  %146 = load i8, ptr %145, align 1, !tbaa !22
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 45
  br i1 %148, label %149, label %228

149:                                              ; preds = %142
  store i32 0, ptr %5, align 4, !tbaa !8
  br label %150

150:                                              ; preds = %224, %149
  %151 = load ptr, ptr %8, align 8, !tbaa !19
  %152 = load i32, ptr %5, align 4, !tbaa !8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.ArgumentDescription, ptr %151, i64 %153
  %155 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %154, i32 0, i32 0
  %156 = load ptr, ptr %155, align 8, !tbaa !33
  %157 = icmp ne ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %150
  %159 = load ptr, ptr %3, align 8, !tbaa !3
  call void @usage(ptr noundef %159, ptr noundef null)
  br label %160

160:                                              ; preds = %158, %150
  %161 = load ptr, ptr %4, align 8, !tbaa !24
  %162 = load ptr, ptr %161, align 8, !tbaa !14
  %163 = getelementptr inbounds i8, ptr %162, i64 2
  %164 = call ptr @strchr(ptr noundef %163, i32 noundef signext 61) #7
  store ptr %164, ptr %7, align 8, !tbaa !14
  %165 = icmp ne ptr %164, null
  br i1 %165, label %166, label %175

166:                                              ; preds = %160
  %167 = load ptr, ptr %7, align 8, !tbaa !14
  %168 = load ptr, ptr %4, align 8, !tbaa !24
  %169 = load ptr, ptr %168, align 8, !tbaa !14
  %170 = getelementptr inbounds i8, ptr %169, i64 2
  %171 = ptrtoint ptr %167 to i64
  %172 = ptrtoint ptr %170 to i64
  %173 = sub i64 %171, %172
  %174 = trunc i64 %173 to i32
  store i32 %174, ptr %6, align 4, !tbaa !8
  br label %181

175:                                              ; preds = %160
  %176 = load ptr, ptr %4, align 8, !tbaa !24
  %177 = load ptr, ptr %176, align 8, !tbaa !14
  %178 = getelementptr inbounds i8, ptr %177, i64 2
  %179 = call i64 @strlen(ptr noundef %178) #7
  %180 = trunc i64 %179 to i32
  store i32 %180, ptr %6, align 4, !tbaa !8
  br label %181

181:                                              ; preds = %175, %166
  %182 = load i32, ptr %6, align 4, !tbaa !8
  %183 = sext i32 %182 to i64
  %184 = load ptr, ptr %8, align 8, !tbaa !19
  %185 = load i32, ptr %5, align 4, !tbaa !8
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.ArgumentDescription, ptr %184, i64 %186
  %188 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %187, i32 0, i32 0
  %189 = load ptr, ptr %188, align 8, !tbaa !33
  %190 = call i64 @strlen(ptr noundef %189) #7
  %191 = icmp eq i64 %183, %190
  br i1 %191, label %192, label %223

192:                                              ; preds = %181
  %193 = load ptr, ptr %8, align 8, !tbaa !19
  %194 = load i32, ptr %5, align 4, !tbaa !8
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.ArgumentDescription, ptr %193, i64 %195
  %197 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %196, i32 0, i32 0
  %198 = load ptr, ptr %197, align 8, !tbaa !33
  %199 = load ptr, ptr %4, align 8, !tbaa !24
  %200 = load ptr, ptr %199, align 8, !tbaa !14
  %201 = getelementptr inbounds i8, ptr %200, i64 2
  %202 = load i32, ptr %6, align 4, !tbaa !8
  %203 = sext i32 %202 to i64
  %204 = call signext i32 @strncmp(ptr noundef %198, ptr noundef %201, i64 noundef %203) #7
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %223, label %206

206:                                              ; preds = %192
  %207 = load ptr, ptr %7, align 8, !tbaa !14
  %208 = icmp ne ptr %207, null
  br i1 %208, label %217, label %209

209:                                              ; preds = %206
  %210 = load ptr, ptr %4, align 8, !tbaa !24
  %211 = load ptr, ptr %210, align 8, !tbaa !14
  %212 = call i64 @strlen(ptr noundef %211) #7
  %213 = sub i64 %212, 1
  %214 = load ptr, ptr %4, align 8, !tbaa !24
  %215 = load ptr, ptr %214, align 8, !tbaa !14
  %216 = getelementptr inbounds nuw i8, ptr %215, i64 %213
  store ptr %216, ptr %214, align 8, !tbaa !14
  br label %220

217:                                              ; preds = %206
  %218 = load ptr, ptr %7, align 8, !tbaa !14
  %219 = load ptr, ptr %4, align 8, !tbaa !24
  store ptr %218, ptr %219, align 8, !tbaa !14
  br label %220

220:                                              ; preds = %217, %209
  %221 = load ptr, ptr %3, align 8, !tbaa !3
  %222 = load i32, ptr %5, align 4, !tbaa !8
  call void @process_arg(ptr noundef %221, i32 noundef signext %222, ptr noundef %4)
  br label %227

223:                                              ; preds = %192, %181
  br label %224

224:                                              ; preds = %223
  %225 = load i32, ptr %5, align 4, !tbaa !8
  %226 = add nsw i32 %225, 1
  store i32 %226, ptr %5, align 4, !tbaa !8
  br label %150

227:                                              ; preds = %220
  br label %268

228:                                              ; preds = %142
  br label %229

229:                                              ; preds = %266, %228
  %230 = load ptr, ptr %4, align 8, !tbaa !24
  %231 = load ptr, ptr %230, align 8, !tbaa !14
  %232 = getelementptr inbounds nuw i8, ptr %231, i32 1
  store ptr %232, ptr %230, align 8, !tbaa !14
  %233 = load i8, ptr %232, align 1, !tbaa !22
  %234 = icmp ne i8 %233, 0
  br i1 %234, label %235, label %267

235:                                              ; preds = %229
  store i32 0, ptr %5, align 4, !tbaa !8
  br label %236

236:                                              ; preds = %263, %235
  %237 = load ptr, ptr %8, align 8, !tbaa !19
  %238 = load i32, ptr %5, align 4, !tbaa !8
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.ArgumentDescription, ptr %237, i64 %239
  %241 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %240, i32 0, i32 0
  %242 = load ptr, ptr %241, align 8, !tbaa !33
  %243 = icmp ne ptr %242, null
  br i1 %243, label %246, label %244

244:                                              ; preds = %236
  %245 = load ptr, ptr %3, align 8, !tbaa !3
  call void @usage(ptr noundef %245, ptr noundef null)
  br label %246

246:                                              ; preds = %244, %236
  %247 = load ptr, ptr %8, align 8, !tbaa !19
  %248 = load i32, ptr %5, align 4, !tbaa !8
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.ArgumentDescription, ptr %247, i64 %249
  %251 = getelementptr inbounds nuw %struct.ArgumentDescription, ptr %250, i32 0, i32 1
  %252 = load i8, ptr %251, align 8, !tbaa !35
  %253 = sext i8 %252 to i32
  %254 = load ptr, ptr %4, align 8, !tbaa !24
  %255 = load ptr, ptr %254, align 8, !tbaa !14
  %256 = load i8, ptr %255, align 1, !tbaa !22
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %253, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %246
  %260 = load ptr, ptr %3, align 8, !tbaa !3
  %261 = load i32, ptr %5, align 4, !tbaa !8
  call void @process_arg(ptr noundef %260, i32 noundef signext %261, ptr noundef %4)
  br label %266

262:                                              ; preds = %246
  br label %263

263:                                              ; preds = %262
  %264 = load i32, ptr %5, align 4, !tbaa !8
  %265 = add nsw i32 %264, 1
  store i32 %265, ptr %5, align 4, !tbaa !8
  br label %236

266:                                              ; preds = %259
  br label %229, !llvm.loop !37

267:                                              ; preds = %229
  br label %268

268:                                              ; preds = %267, %227
  br label %301

269:                                              ; preds = %136
  %270 = load ptr, ptr %3, align 8, !tbaa !3
  %271 = getelementptr inbounds nuw %struct.ArgumentState, ptr %270, i32 0, i32 0
  %272 = load ptr, ptr %271, align 8, !tbaa !39
  %273 = load ptr, ptr %3, align 8, !tbaa !3
  %274 = getelementptr inbounds nuw %struct.ArgumentState, ptr %273, i32 0, i32 1
  %275 = load i32, ptr %274, align 8, !tbaa !40
  %276 = add nsw i32 %275, 2
  %277 = sext i32 %276 to i64
  %278 = mul i64 8, %277
  %279 = call ptr @realloc(ptr noundef %272, i64 noundef %278) #9
  %280 = load ptr, ptr %3, align 8, !tbaa !3
  %281 = getelementptr inbounds nuw %struct.ArgumentState, ptr %280, i32 0, i32 0
  store ptr %279, ptr %281, align 8, !tbaa !39
  %282 = load ptr, ptr %4, align 8, !tbaa !24
  %283 = load ptr, ptr %282, align 8, !tbaa !14
  %284 = load ptr, ptr %3, align 8, !tbaa !3
  %285 = getelementptr inbounds nuw %struct.ArgumentState, ptr %284, i32 0, i32 0
  %286 = load ptr, ptr %285, align 8, !tbaa !39
  %287 = load ptr, ptr %3, align 8, !tbaa !3
  %288 = getelementptr inbounds nuw %struct.ArgumentState, ptr %287, i32 0, i32 1
  %289 = load i32, ptr %288, align 8, !tbaa !40
  %290 = add nsw i32 %289, 1
  store i32 %290, ptr %288, align 8, !tbaa !40
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds ptr, ptr %286, i64 %291
  store ptr %283, ptr %292, align 8, !tbaa !14
  %293 = load ptr, ptr %3, align 8, !tbaa !3
  %294 = getelementptr inbounds nuw %struct.ArgumentState, ptr %293, i32 0, i32 0
  %295 = load ptr, ptr %294, align 8, !tbaa !39
  %296 = load ptr, ptr %3, align 8, !tbaa !3
  %297 = getelementptr inbounds nuw %struct.ArgumentState, ptr %296, i32 0, i32 1
  %298 = load i32, ptr %297, align 8, !tbaa !40
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds ptr, ptr %295, i64 %299
  store ptr null, ptr %300, align 8, !tbaa !14
  br label %301

301:                                              ; preds = %269, %268
  br label %131, !llvm.loop !41

302:                                              ; preds = %131
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6
  ret void

303:                                              ; preds = %118
  unreachable
}

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #0

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef signext) #0

; Function Attrs: nounwind
declare double @strtod(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
declare i64 @strtoll(ptr noundef, ptr noundef, i32 noundef signext) #0

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef signext) #4

; Function Attrs: nounwind willreturn memory(read)
declare signext i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #5

; Function Attrs: nounwind
define dso_local void @free_args(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8, !tbaa !3
  %4 = getelementptr inbounds nuw %struct.ArgumentState, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !3
  %9 = getelementptr inbounds nuw %struct.ArgumentState, ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  call void @free(ptr noundef %10) #6
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #5 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 _ZTS13ArgumentState", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p3 omnipotent char", !12, i64 0}
!12 = !{!"any p3 pointer", !13, i64 0}
!13 = !{!"any p2 pointer", !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 omnipotent char", !5, i64 0}
!16 = !{!17, !5, i64 24}
!17 = !{!"ArgumentState", !18, i64 0, !9, i64 8, !15, i64 16, !5, i64 24}
!18 = !{!"p2 omnipotent char", !13, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!21, !15, i64 24}
!21 = !{!"", !15, i64 0, !6, i64 8, !15, i64 16, !15, i64 24, !5, i64 32, !15, i64 40, !5, i64 48}
!22 = !{!6, !6, i64 0}
!23 = !{!21, !5, i64 32}
!24 = !{!18, !18, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"double", !6, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"long long", !6, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTS8_IO_FILE", !5, i64 0}
!31 = !{!17, !15, i64 16}
!32 = !{!21, !5, i64 48}
!33 = !{!21, !15, i64 0}
!34 = !{!21, !15, i64 16}
!35 = !{!21, !6, i64 8}
!36 = !{!21, !15, i64 40}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!17, !18, i64 0}
!40 = !{!17, !9, i64 8}
!41 = distinct !{!41, !38}
