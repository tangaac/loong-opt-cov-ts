; ModuleID = './MultiSource/Applications/ALAC/encode/CMakeFiles/alacconvert-encode.dir/ALACDecoder.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/ALAC/encode/ALACDecoder.cpp"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%class.ALACDecoder = type { %struct.ALACSpecificConfig, i16, ptr, ptr, ptr, ptr }
%struct.ALACSpecificConfig = type { i32, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32 }
%struct.BitBuffer = type { ptr, ptr, i32, i32 }
%struct.AGParamRec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_ZN11ALACDecoderC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ALACDecoderC2Ev
@_ZN11ALACDecoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ALACDecoderD2Ev

; Function Attrs: mustprogress nounwind
define dso_local void @_ZN11ALACDecoderC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !8
  %6 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 4
  store ptr null, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !17
  %9 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 0
  call void @llvm.memset.p0.i64(ptr align 8 %9, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind
define dso_local void @_ZN11ALACDecoderD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !8
  call void @free(ptr noundef %9) #8
  %10 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !8
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  call void @free(ptr noundef %17) #8
  %18 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 3
  store ptr null, ptr %18, align 8, !tbaa !15
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !16
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !16
  call void @free(ptr noundef %25) #8
  %26 = getelementptr inbounds nuw %class.ALACDecoder, ptr %3, i32 0, i32 4
  store ptr null, ptr %26, align 8, !tbaa !16
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: mustprogress
define dso_local noundef signext i32 @_ZN11ALACDecoder4InitEPvj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef signext %2) #3 align 2 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ALACSpecificConfig, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !18
  store i32 %2, ptr %7, align 4, !tbaa !19
  %13 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  store i32 0, ptr %8, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 24, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #8
  %14 = load ptr, ptr %6, align 8, !tbaa !18
  store ptr %14, ptr %10, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  %15 = load i32, ptr %7, align 4, !tbaa !19
  store i32 %15, ptr %11, align 4, !tbaa !19
  %16 = load ptr, ptr %10, align 8, !tbaa !20
  %17 = getelementptr inbounds i8, ptr %16, i64 4
  %18 = load i8, ptr %17, align 1, !tbaa !22
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 102
  br i1 %20, label %21, label %44

21:                                               ; preds = %3
  %22 = load ptr, ptr %10, align 8, !tbaa !20
  %23 = getelementptr inbounds i8, ptr %22, i64 5
  %24 = load i8, ptr %23, align 1, !tbaa !22
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 114
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load ptr, ptr %10, align 8, !tbaa !20
  %29 = getelementptr inbounds i8, ptr %28, i64 6
  %30 = load i8, ptr %29, align 1, !tbaa !22
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 109
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load ptr, ptr %10, align 8, !tbaa !20
  %35 = getelementptr inbounds i8, ptr %34, i64 7
  %36 = load i8, ptr %35, align 1, !tbaa !22
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 97
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load ptr, ptr %10, align 8, !tbaa !20
  %41 = getelementptr inbounds i8, ptr %40, i64 12
  store ptr %41, ptr %10, align 8, !tbaa !20
  %42 = load i32, ptr %11, align 4, !tbaa !19
  %43 = sub i32 %42, 12
  store i32 %43, ptr %11, align 4, !tbaa !19
  br label %44

44:                                               ; preds = %39, %33, %27, %21, %3
  %45 = load ptr, ptr %10, align 8, !tbaa !20
  %46 = getelementptr inbounds i8, ptr %45, i64 4
  %47 = load i8, ptr %46, align 1, !tbaa !22
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 97
  br i1 %49, label %50, label %73

50:                                               ; preds = %44
  %51 = load ptr, ptr %10, align 8, !tbaa !20
  %52 = getelementptr inbounds i8, ptr %51, i64 5
  %53 = load i8, ptr %52, align 1, !tbaa !22
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 108
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load ptr, ptr %10, align 8, !tbaa !20
  %58 = getelementptr inbounds i8, ptr %57, i64 6
  %59 = load i8, ptr %58, align 1, !tbaa !22
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 97
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load ptr, ptr %10, align 8, !tbaa !20
  %64 = getelementptr inbounds i8, ptr %63, i64 7
  %65 = load i8, ptr %64, align 1, !tbaa !22
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 99
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load ptr, ptr %10, align 8, !tbaa !20
  %70 = getelementptr inbounds i8, ptr %69, i64 12
  store ptr %70, ptr %10, align 8, !tbaa !20
  %71 = load i32, ptr %11, align 4, !tbaa !19
  %72 = sub i32 %71, 12
  store i32 %72, ptr %11, align 4, !tbaa !19
  br label %73

73:                                               ; preds = %68, %62, %56, %50, %44
  %74 = load i32, ptr %11, align 4, !tbaa !19
  %75 = zext i32 %74 to i64
  %76 = icmp uge i64 %75, 24
  br i1 %76, label %77, label %172

77:                                               ; preds = %73
  %78 = load ptr, ptr %10, align 8, !tbaa !20
  %79 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %78, i32 0, i32 0
  %80 = load i32, ptr %79, align 4, !tbaa !23
  %81 = call signext i32 @Swap32BtoN(i32 noundef signext %80)
  %82 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %9, i32 0, i32 0
  store i32 %81, ptr %82, align 4, !tbaa !23
  %83 = load ptr, ptr %10, align 8, !tbaa !20
  %84 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %83, i32 0, i32 1
  %85 = load i8, ptr %84, align 4, !tbaa !24
  %86 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %9, i32 0, i32 1
  store i8 %85, ptr %86, align 4, !tbaa !24
  %87 = load ptr, ptr %10, align 8, !tbaa !20
  %88 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %87, i32 0, i32 2
  %89 = load i8, ptr %88, align 1, !tbaa !25
  %90 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %9, i32 0, i32 2
  store i8 %89, ptr %90, align 1, !tbaa !25
  %91 = load ptr, ptr %10, align 8, !tbaa !20
  %92 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %91, i32 0, i32 3
  %93 = load i8, ptr %92, align 2, !tbaa !26
  %94 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %9, i32 0, i32 3
  store i8 %93, ptr %94, align 2, !tbaa !26
  %95 = load ptr, ptr %10, align 8, !tbaa !20
  %96 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %95, i32 0, i32 4
  %97 = load i8, ptr %96, align 1, !tbaa !27
  %98 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %9, i32 0, i32 4
  store i8 %97, ptr %98, align 1, !tbaa !27
  %99 = load ptr, ptr %10, align 8, !tbaa !20
  %100 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %99, i32 0, i32 5
  %101 = load i8, ptr %100, align 4, !tbaa !28
  %102 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %9, i32 0, i32 5
  store i8 %101, ptr %102, align 4, !tbaa !28
  %103 = load ptr, ptr %10, align 8, !tbaa !20
  %104 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %103, i32 0, i32 6
  %105 = load i8, ptr %104, align 1, !tbaa !29
  %106 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %9, i32 0, i32 6
  store i8 %105, ptr %106, align 1, !tbaa !29
  %107 = load ptr, ptr %10, align 8, !tbaa !20
  %108 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %107, i32 0, i32 7
  %109 = load i16, ptr %108, align 2, !tbaa !30
  %110 = call zeroext i16 @Swap16BtoN(i16 noundef zeroext %109)
  %111 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %9, i32 0, i32 7
  store i16 %110, ptr %111, align 2, !tbaa !30
  %112 = load ptr, ptr %10, align 8, !tbaa !20
  %113 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %112, i32 0, i32 8
  %114 = load i32, ptr %113, align 4, !tbaa !31
  %115 = call signext i32 @Swap32BtoN(i32 noundef signext %114)
  %116 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %9, i32 0, i32 8
  store i32 %115, ptr %116, align 4, !tbaa !31
  %117 = load ptr, ptr %10, align 8, !tbaa !20
  %118 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %117, i32 0, i32 9
  %119 = load i32, ptr %118, align 4, !tbaa !32
  %120 = call signext i32 @Swap32BtoN(i32 noundef signext %119)
  %121 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %9, i32 0, i32 9
  store i32 %120, ptr %121, align 4, !tbaa !32
  %122 = load ptr, ptr %10, align 8, !tbaa !20
  %123 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %122, i32 0, i32 10
  %124 = load i32, ptr %123, align 4, !tbaa !33
  %125 = call signext i32 @Swap32BtoN(i32 noundef signext %124)
  %126 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %9, i32 0, i32 10
  store i32 %125, ptr %126, align 4, !tbaa !33
  %127 = getelementptr inbounds nuw %class.ALACDecoder, ptr %13, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %127, ptr align 4 %9, i64 24, i1 false), !tbaa.struct !34
  %128 = getelementptr inbounds nuw %class.ALACDecoder, ptr %13, i32 0, i32 0
  %129 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %128, i32 0, i32 1
  %130 = load i8, ptr %129, align 4, !tbaa !36
  %131 = zext i8 %130 to i32
  %132 = icmp sle i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %77
  store i32 -50, ptr %4, align 4
  store i32 1, ptr %12, align 4
  br label %176

134:                                              ; preds = %77
  %135 = getelementptr inbounds nuw %class.ALACDecoder, ptr %13, i32 0, i32 0
  %136 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %135, i32 0, i32 0
  %137 = load i32, ptr %136, align 8, !tbaa !37
  %138 = zext i32 %137 to i64
  %139 = mul i64 %138, 4
  %140 = call noalias ptr @calloc(i64 noundef %139, i64 noundef 1) #9
  %141 = getelementptr inbounds nuw %class.ALACDecoder, ptr %13, i32 0, i32 2
  store ptr %140, ptr %141, align 8, !tbaa !8
  %142 = getelementptr inbounds nuw %class.ALACDecoder, ptr %13, i32 0, i32 0
  %143 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %142, i32 0, i32 0
  %144 = load i32, ptr %143, align 8, !tbaa !37
  %145 = zext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = call noalias ptr @calloc(i64 noundef %146, i64 noundef 1) #9
  %148 = getelementptr inbounds nuw %class.ALACDecoder, ptr %13, i32 0, i32 3
  store ptr %147, ptr %148, align 8, !tbaa !15
  %149 = getelementptr inbounds nuw %class.ALACDecoder, ptr %13, i32 0, i32 0
  %150 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %149, i32 0, i32 0
  %151 = load i32, ptr %150, align 8, !tbaa !37
  %152 = zext i32 %151 to i64
  %153 = mul i64 %152, 4
  %154 = call noalias ptr @calloc(i64 noundef %153, i64 noundef 1) #9
  %155 = getelementptr inbounds nuw %class.ALACDecoder, ptr %13, i32 0, i32 4
  store ptr %154, ptr %155, align 8, !tbaa !16
  %156 = getelementptr inbounds nuw %class.ALACDecoder, ptr %13, i32 0, i32 4
  %157 = load ptr, ptr %156, align 8, !tbaa !16
  %158 = getelementptr inbounds nuw %class.ALACDecoder, ptr %13, i32 0, i32 5
  store ptr %157, ptr %158, align 8, !tbaa !17
  %159 = getelementptr inbounds nuw %class.ALACDecoder, ptr %13, i32 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !8
  %161 = icmp ne ptr %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %134
  %163 = getelementptr inbounds nuw %class.ALACDecoder, ptr %13, i32 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !15
  %165 = icmp ne ptr %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = getelementptr inbounds nuw %class.ALACDecoder, ptr %13, i32 0, i32 4
  %168 = load ptr, ptr %167, align 8, !tbaa !16
  %169 = icmp ne ptr %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %166, %162, %134
  store i32 -108, ptr %8, align 4, !tbaa !19
  br label %174

171:                                              ; preds = %166
  br label %173

172:                                              ; preds = %73
  store i32 -50, ptr %8, align 4, !tbaa !19
  br label %173

173:                                              ; preds = %172, %171
  br label %174

174:                                              ; preds = %173, %170
  %175 = load i32, ptr %8, align 4, !tbaa !19
  store i32 %175, ptr %4, align 4
  store i32 1, ptr %12, align 4
  br label %176

176:                                              ; preds = %174, %133
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  %177 = load i32, ptr %4, align 4
  ret i32 %177
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #4

declare signext i32 @Swap32BtoN(i32 noundef signext) #5

declare zeroext i16 @Swap16BtoN(i16 noundef zeroext) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: mustprogress
define dso_local noundef signext i32 @_ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %4, ptr noundef %5) #3 align 2 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca %struct.BitBuffer, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca %struct.AGParamRec, align 4
  %20 = alloca i32, align 4
  %21 = alloca [32 x i16], align 2
  %22 = alloca [32 x i16], align 2
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i16, align 2
  %28 = alloca i8, align 1
  %29 = alloca i32, align 4
  %30 = alloca i8, align 1
  %31 = alloca i32, align 4
  %32 = alloca i8, align 1
  %33 = alloca i8, align 1
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i16, align 2
  %37 = alloca i16, align 2
  %38 = alloca i16, align 2
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca ptr, align 8
  %42 = alloca ptr, align 8
  %43 = alloca ptr, align 8
  %44 = alloca i8, align 1
  %45 = alloca i8, align 1
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca ptr, align 8
  %53 = alloca ptr, align 8
  %54 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8, !tbaa !3
  store ptr %1, ptr %9, align 8, !tbaa !38
  store ptr %2, ptr %10, align 8, !tbaa !20
  store i32 %3, ptr %11, align 4, !tbaa !19
  store i32 %4, ptr %12, align 4, !tbaa !19
  store ptr %5, ptr %13, align 8, !tbaa !40
  %55 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %17) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %18) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr %19) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr %21) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr %22) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %23) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %24) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %25) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %26) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr %27) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %28) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %29) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %30) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %31) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %32) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %33) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %34) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %35) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr %36) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr %37) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr %38) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %39) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %40) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %41) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %42) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %43) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %44) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %45) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %46) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %47) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %48) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %49) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %50) #8
  %56 = load ptr, ptr %9, align 8, !tbaa !38
  %57 = icmp ne ptr %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %6
  %59 = load ptr, ptr %10, align 8, !tbaa !20
  %60 = icmp ne ptr %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load ptr, ptr %13, align 8, !tbaa !40
  %63 = icmp ne ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61, %58, %6
  store i32 -50, ptr %7, align 4
  store i32 1, ptr %51, align 4
  br label %1041

65:                                               ; preds = %61
  %66 = load i32, ptr %12, align 4, !tbaa !19
  %67 = icmp ugt i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 -50, ptr %7, align 4
  store i32 1, ptr %51, align 4
  br label %1041

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 1
  store i16 0, ptr %70, align 8, !tbaa !41
  store i32 0, ptr %20, align 4, !tbaa !19
  %71 = load ptr, ptr %10, align 8, !tbaa !20
  store ptr %71, ptr %39, align 8, !tbaa !42
  store i32 0, ptr %50, align 4, !tbaa !19
  %72 = load i32, ptr %11, align 4, !tbaa !19
  %73 = load ptr, ptr %13, align 8, !tbaa !40
  store i32 %72, ptr %73, align 4, !tbaa !19
  br label %74

74:                                               ; preds = %997, %69
  %75 = load i32, ptr %50, align 4, !tbaa !19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %998

77:                                               ; preds = %74
  %78 = load ptr, ptr %9, align 8, !tbaa !38
  %79 = getelementptr inbounds nuw %struct.BitBuffer, ptr %78, i32 0, i32 0
  %80 = load ptr, ptr %79, align 8, !tbaa !43
  %81 = load ptr, ptr %9, align 8, !tbaa !38
  %82 = getelementptr inbounds nuw %struct.BitBuffer, ptr %81, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !45
  %84 = icmp ult ptr %80, %83
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  store i32 -50, ptr %50, align 4, !tbaa !19
  br label %1039

86:                                               ; preds = %77
  %87 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %88 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %87, i32 0, i32 3
  %89 = load i8, ptr %88, align 2, !tbaa !46
  %90 = zext i8 %89 to i16
  store i16 %90, ptr %38, align 2, !tbaa !35
  %91 = load ptr, ptr %9, align 8, !tbaa !38
  %92 = call zeroext i8 @BitBufferReadSmall(ptr noundef %91, i8 noundef zeroext 3)
  store i8 %92, ptr %17, align 1, !tbaa !22
  %93 = load i8, ptr %17, align 1, !tbaa !22
  %94 = zext i8 %93 to i32
  switch i32 %94, label %992 [
    i32 0, label %95
    i32 3, label %95
    i32 1, label %468
    i32 2, label %983
    i32 5, label %983
    i32 4, label %984
    i32 6, label %987
    i32 7, label %990
  ]

95:                                               ; preds = %86, %86
  %96 = load ptr, ptr %9, align 8, !tbaa !38
  %97 = call zeroext i8 @BitBufferReadSmall(ptr noundef %96, i8 noundef zeroext 4)
  store i8 %97, ptr %18, align 1, !tbaa !22
  %98 = load i8, ptr %18, align 1, !tbaa !22
  %99 = zext i8 %98 to i32
  %100 = shl i32 1, %99
  %101 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 1
  %102 = load i16, ptr %101, align 8, !tbaa !41
  %103 = zext i16 %102 to i32
  %104 = or i32 %103, %100
  %105 = trunc i32 %104 to i16
  store i16 %105, ptr %101, align 8, !tbaa !41
  %106 = load ptr, ptr %9, align 8, !tbaa !38
  %107 = call signext i32 @BitBufferRead(ptr noundef %106, i8 noundef zeroext 12)
  %108 = trunc i32 %107 to i16
  store i16 %108, ptr %27, align 2, !tbaa !35
  %109 = load i16, ptr %27, align 2, !tbaa !35
  %110 = zext i16 %109 to i32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %95
  store i32 -50, ptr %50, align 4, !tbaa !19
  br label %1039

113:                                              ; preds = %95
  %114 = load ptr, ptr %9, align 8, !tbaa !38
  %115 = call signext i32 @BitBufferRead(ptr noundef %114, i8 noundef zeroext 4)
  %116 = trunc i32 %115 to i8
  store i8 %116, ptr %44, align 1, !tbaa !22
  %117 = load i8, ptr %44, align 1, !tbaa !22
  %118 = zext i8 %117 to i32
  %119 = ashr i32 %118, 3
  %120 = trunc i32 %119 to i8
  store i8 %120, ptr %45, align 1, !tbaa !22
  %121 = load i8, ptr %44, align 1, !tbaa !22
  %122 = zext i8 %121 to i32
  %123 = ashr i32 %122, 1
  %124 = and i32 %123, 3
  %125 = trunc i32 %124 to i8
  store i8 %125, ptr %30, align 1, !tbaa !22
  %126 = load i8, ptr %30, align 1, !tbaa !22
  %127 = zext i8 %126 to i32
  %128 = icmp ne i32 %127, 3
  br i1 %128, label %130, label %129

129:                                              ; preds = %113
  store i32 -50, ptr %50, align 4, !tbaa !19
  br label %1039

130:                                              ; preds = %113
  %131 = load i8, ptr %30, align 1, !tbaa !22
  %132 = zext i8 %131 to i32
  %133 = mul nsw i32 %132, 8
  store i32 %133, ptr %31, align 4, !tbaa !19
  %134 = load i8, ptr %44, align 1, !tbaa !22
  %135 = zext i8 %134 to i32
  %136 = and i32 %135, 1
  %137 = trunc i32 %136 to i8
  store i8 %137, ptr %28, align 1, !tbaa !22
  %138 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %139 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %138, i32 0, i32 2
  %140 = load i8, ptr %139, align 1, !tbaa !47
  %141 = zext i8 %140 to i32
  %142 = load i8, ptr %30, align 1, !tbaa !22
  %143 = zext i8 %142 to i32
  %144 = mul nsw i32 %143, 8
  %145 = sub nsw i32 %141, %144
  store i32 %145, ptr %29, align 4, !tbaa !19
  %146 = load i8, ptr %45, align 1, !tbaa !22
  %147 = zext i8 %146 to i32
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %130
  %150 = load ptr, ptr %9, align 8, !tbaa !38
  %151 = call signext i32 @BitBufferRead(ptr noundef %150, i8 noundef zeroext 16)
  %152 = shl i32 %151, 16
  store i32 %152, ptr %11, align 4, !tbaa !19
  %153 = load ptr, ptr %9, align 8, !tbaa !38
  %154 = call signext i32 @BitBufferRead(ptr noundef %153, i8 noundef zeroext 16)
  %155 = load i32, ptr %11, align 4, !tbaa !19
  %156 = or i32 %155, %154
  store i32 %156, ptr %11, align 4, !tbaa !19
  br label %157

157:                                              ; preds = %149, %130
  %158 = load i8, ptr %28, align 1, !tbaa !22
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %279

161:                                              ; preds = %157
  %162 = load ptr, ptr %9, align 8, !tbaa !38
  %163 = call signext i32 @BitBufferRead(ptr noundef %162, i8 noundef zeroext 8)
  %164 = trunc i32 %163 to i8
  store i8 %164, ptr %25, align 1, !tbaa !22
  %165 = load ptr, ptr %9, align 8, !tbaa !38
  %166 = call signext i32 @BitBufferRead(ptr noundef %165, i8 noundef zeroext 8)
  %167 = trunc i32 %166 to i8
  store i8 %167, ptr %26, align 1, !tbaa !22
  %168 = load ptr, ptr %9, align 8, !tbaa !38
  %169 = call signext i32 @BitBufferRead(ptr noundef %168, i8 noundef zeroext 8)
  %170 = trunc i32 %169 to i8
  store i8 %170, ptr %44, align 1, !tbaa !22
  %171 = load i8, ptr %44, align 1, !tbaa !22
  %172 = zext i8 %171 to i32
  %173 = ashr i32 %172, 4
  %174 = trunc i32 %173 to i8
  store i8 %174, ptr %32, align 1, !tbaa !22
  %175 = load i8, ptr %44, align 1, !tbaa !22
  %176 = zext i8 %175 to i32
  %177 = and i32 %176, 15
  store i32 %177, ptr %34, align 4, !tbaa !19
  %178 = load ptr, ptr %9, align 8, !tbaa !38
  %179 = call signext i32 @BitBufferRead(ptr noundef %178, i8 noundef zeroext 8)
  %180 = trunc i32 %179 to i8
  store i8 %180, ptr %44, align 1, !tbaa !22
  %181 = load i8, ptr %44, align 1, !tbaa !22
  %182 = zext i8 %181 to i32
  %183 = ashr i32 %182, 5
  %184 = trunc i32 %183 to i16
  store i16 %184, ptr %36, align 2, !tbaa !35
  %185 = load i8, ptr %44, align 1, !tbaa !22
  %186 = zext i8 %185 to i32
  %187 = and i32 %186, 31
  %188 = trunc i32 %187 to i8
  store i8 %188, ptr %23, align 1, !tbaa !22
  store i32 0, ptr %48, align 4, !tbaa !19
  br label %189

189:                                              ; preds = %201, %161
  %190 = load i32, ptr %48, align 4, !tbaa !19
  %191 = load i8, ptr %23, align 1, !tbaa !22
  %192 = zext i8 %191 to i32
  %193 = icmp ult i32 %190, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %189
  %195 = load ptr, ptr %9, align 8, !tbaa !38
  %196 = call signext i32 @BitBufferRead(ptr noundef %195, i8 noundef zeroext 16)
  %197 = trunc i32 %196 to i16
  %198 = load i32, ptr %48, align 4, !tbaa !19
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds nuw [32 x i16], ptr %21, i64 0, i64 %199
  store i16 %197, ptr %200, align 2, !tbaa !35
  br label %201

201:                                              ; preds = %194
  %202 = load i32, ptr %48, align 4, !tbaa !19
  %203 = add i32 %202, 1
  store i32 %203, ptr %48, align 4, !tbaa !19
  br label %189, !llvm.loop !48

204:                                              ; preds = %189
  %205 = load i8, ptr %30, align 1, !tbaa !22
  %206 = zext i8 %205 to i32
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %204
  %209 = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %209, i64 24, i1 false), !tbaa.struct !50
  %210 = load ptr, ptr %9, align 8, !tbaa !38
  %211 = load i8, ptr %30, align 1, !tbaa !22
  %212 = zext i8 %211 to i32
  %213 = mul nsw i32 %212, 8
  %214 = load i32, ptr %11, align 4, !tbaa !19
  %215 = mul i32 %213, %214
  call void @BitBufferAdvance(ptr noundef %210, i32 noundef signext %215)
  br label %216

216:                                              ; preds = %208, %204
  %217 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %218 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %217, i32 0, i32 4
  %219 = load i8, ptr %218, align 1, !tbaa !51
  %220 = zext i8 %219 to i32
  %221 = load i16, ptr %38, align 2, !tbaa !35
  %222 = zext i16 %221 to i32
  %223 = load i16, ptr %36, align 2, !tbaa !35
  %224 = zext i16 %223 to i32
  %225 = mul nsw i32 %222, %224
  %226 = sdiv i32 %225, 4
  %227 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %228 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %227, i32 0, i32 5
  %229 = load i8, ptr %228, align 8, !tbaa !52
  %230 = zext i8 %229 to i32
  %231 = load i32, ptr %11, align 4, !tbaa !19
  %232 = load i32, ptr %11, align 4, !tbaa !19
  %233 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %234 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %233, i32 0, i32 7
  %235 = load i16, ptr %234, align 2, !tbaa !53
  %236 = zext i16 %235 to i32
  call void @set_ag_params(ptr noundef %19, i32 noundef signext %220, i32 noundef signext %226, i32 noundef signext %230, i32 noundef signext %231, i32 noundef signext %232, i32 noundef signext %236)
  %237 = load ptr, ptr %9, align 8, !tbaa !38
  %238 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %239 = load ptr, ptr %238, align 8, !tbaa !16
  %240 = load i32, ptr %11, align 4, !tbaa !19
  %241 = load i32, ptr %29, align 4, !tbaa !19
  %242 = call signext i32 @dyn_decomp(ptr noundef %19, ptr noundef %237, ptr noundef %239, i32 noundef signext %240, i32 noundef signext %241, ptr noundef %15)
  store i32 %242, ptr %50, align 4, !tbaa !19
  %243 = load i32, ptr %50, align 4, !tbaa !19
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %216
  br label %1039

246:                                              ; preds = %216
  %247 = load i8, ptr %32, align 1, !tbaa !22
  %248 = zext i8 %247 to i32
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %246
  %251 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %252 = load ptr, ptr %251, align 8, !tbaa !16
  %253 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !8
  %255 = load i32, ptr %11, align 4, !tbaa !19
  %256 = getelementptr inbounds [32 x i16], ptr %21, i64 0, i64 0
  %257 = load i8, ptr %23, align 1, !tbaa !22
  %258 = zext i8 %257 to i32
  %259 = load i32, ptr %29, align 4, !tbaa !19
  %260 = load i32, ptr %34, align 4, !tbaa !19
  call void @unpc_block(ptr noundef %252, ptr noundef %254, i32 noundef signext %255, ptr noundef %256, i32 noundef signext %258, i32 noundef signext %259, i32 noundef signext %260)
  br label %278

261:                                              ; preds = %246
  %262 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %263 = load ptr, ptr %262, align 8, !tbaa !16
  %264 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %265 = load ptr, ptr %264, align 8, !tbaa !16
  %266 = load i32, ptr %11, align 4, !tbaa !19
  %267 = load i32, ptr %29, align 4, !tbaa !19
  call void @unpc_block(ptr noundef %263, ptr noundef %265, i32 noundef signext %266, ptr noundef null, i32 noundef signext 31, i32 noundef signext %267, i32 noundef signext 0)
  %268 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %269 = load ptr, ptr %268, align 8, !tbaa !16
  %270 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !8
  %272 = load i32, ptr %11, align 4, !tbaa !19
  %273 = getelementptr inbounds [32 x i16], ptr %21, i64 0, i64 0
  %274 = load i8, ptr %23, align 1, !tbaa !22
  %275 = zext i8 %274 to i32
  %276 = load i32, ptr %29, align 4, !tbaa !19
  %277 = load i32, ptr %34, align 4, !tbaa !19
  call void @unpc_block(ptr noundef %269, ptr noundef %271, i32 noundef signext %272, ptr noundef %273, i32 noundef signext %275, i32 noundef signext %276, i32 noundef signext %277)
  br label %278

278:                                              ; preds = %261, %250
  br label %342

279:                                              ; preds = %157
  %280 = load i32, ptr %29, align 4, !tbaa !19
  %281 = sub i32 32, %280
  store i32 %281, ptr %31, align 4, !tbaa !19
  %282 = load i32, ptr %29, align 4, !tbaa !19
  %283 = icmp ule i32 %282, 16
  br i1 %283, label %284, label %309

284:                                              ; preds = %279
  store i32 0, ptr %48, align 4, !tbaa !19
  br label %285

285:                                              ; preds = %305, %284
  %286 = load i32, ptr %48, align 4, !tbaa !19
  %287 = load i32, ptr %11, align 4, !tbaa !19
  %288 = icmp ult i32 %286, %287
  br i1 %288, label %289, label %308

289:                                              ; preds = %285
  %290 = load ptr, ptr %9, align 8, !tbaa !38
  %291 = load i32, ptr %29, align 4, !tbaa !19
  %292 = trunc i32 %291 to i8
  %293 = call signext i32 @BitBufferRead(ptr noundef %290, i8 noundef zeroext %292)
  store i32 %293, ptr %47, align 4, !tbaa !19
  %294 = load i32, ptr %47, align 4, !tbaa !19
  %295 = load i32, ptr %31, align 4, !tbaa !19
  %296 = shl i32 %294, %295
  %297 = load i32, ptr %31, align 4, !tbaa !19
  %298 = ashr i32 %296, %297
  store i32 %298, ptr %47, align 4, !tbaa !19
  %299 = load i32, ptr %47, align 4, !tbaa !19
  %300 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !8
  %302 = load i32, ptr %48, align 4, !tbaa !19
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds nuw i32, ptr %301, i64 %303
  store i32 %299, ptr %304, align 4, !tbaa !19
  br label %305

305:                                              ; preds = %289
  %306 = load i32, ptr %48, align 4, !tbaa !19
  %307 = add i32 %306, 1
  store i32 %307, ptr %48, align 4, !tbaa !19
  br label %285, !llvm.loop !54

308:                                              ; preds = %285
  br label %338

309:                                              ; preds = %279
  %310 = load i32, ptr %29, align 4, !tbaa !19
  %311 = sub i32 %310, 16
  store i32 %311, ptr %46, align 4, !tbaa !19
  store i32 0, ptr %48, align 4, !tbaa !19
  br label %312

312:                                              ; preds = %334, %309
  %313 = load i32, ptr %48, align 4, !tbaa !19
  %314 = load i32, ptr %11, align 4, !tbaa !19
  %315 = icmp ult i32 %313, %314
  br i1 %315, label %316, label %337

316:                                              ; preds = %312
  %317 = load ptr, ptr %9, align 8, !tbaa !38
  %318 = call signext i32 @BitBufferRead(ptr noundef %317, i8 noundef zeroext 16)
  store i32 %318, ptr %47, align 4, !tbaa !19
  %319 = load i32, ptr %47, align 4, !tbaa !19
  %320 = shl i32 %319, 16
  %321 = load i32, ptr %31, align 4, !tbaa !19
  %322 = ashr i32 %320, %321
  store i32 %322, ptr %47, align 4, !tbaa !19
  %323 = load i32, ptr %47, align 4, !tbaa !19
  %324 = load ptr, ptr %9, align 8, !tbaa !38
  %325 = load i32, ptr %46, align 4, !tbaa !19
  %326 = trunc i32 %325 to i8
  %327 = call signext i32 @BitBufferRead(ptr noundef %324, i8 noundef zeroext %326)
  %328 = or i32 %323, %327
  %329 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %330 = load ptr, ptr %329, align 8, !tbaa !8
  %331 = load i32, ptr %48, align 4, !tbaa !19
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds nuw i32, ptr %330, i64 %332
  store i32 %328, ptr %333, align 4, !tbaa !19
  br label %334

334:                                              ; preds = %316
  %335 = load i32, ptr %48, align 4, !tbaa !19
  %336 = add i32 %335, 1
  store i32 %336, ptr %48, align 4, !tbaa !19
  br label %312, !llvm.loop !55

337:                                              ; preds = %312
  br label %338

338:                                              ; preds = %337, %308
  store i8 0, ptr %26, align 1, !tbaa !22
  store i8 0, ptr %25, align 1, !tbaa !22
  %339 = load i32, ptr %29, align 4, !tbaa !19
  %340 = load i32, ptr %11, align 4, !tbaa !19
  %341 = mul i32 %339, %340
  store i32 %341, ptr %15, align 4, !tbaa !19
  store i8 0, ptr %30, align 1, !tbaa !22
  br label %342

342:                                              ; preds = %338, %278
  %343 = load i8, ptr %30, align 1, !tbaa !22
  %344 = zext i8 %343 to i32
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %368

346:                                              ; preds = %342
  %347 = load i8, ptr %30, align 1, !tbaa !22
  %348 = zext i8 %347 to i32
  %349 = mul nsw i32 %348, 8
  store i32 %349, ptr %31, align 4, !tbaa !19
  store i32 0, ptr %48, align 4, !tbaa !19
  br label %350

350:                                              ; preds = %364, %346
  %351 = load i32, ptr %48, align 4, !tbaa !19
  %352 = load i32, ptr %11, align 4, !tbaa !19
  %353 = icmp ult i32 %351, %352
  br i1 %353, label %354, label %367

354:                                              ; preds = %350
  %355 = load i32, ptr %31, align 4, !tbaa !19
  %356 = trunc i32 %355 to i8
  %357 = call signext i32 @BitBufferRead(ptr noundef %14, i8 noundef zeroext %356)
  %358 = trunc i32 %357 to i16
  %359 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 5
  %360 = load ptr, ptr %359, align 8, !tbaa !17
  %361 = load i32, ptr %48, align 4, !tbaa !19
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds nuw i16, ptr %360, i64 %362
  store i16 %358, ptr %363, align 2, !tbaa !35
  br label %364

364:                                              ; preds = %354
  %365 = load i32, ptr %48, align 4, !tbaa !19
  %366 = add i32 %365, 1
  store i32 %366, ptr %48, align 4, !tbaa !19
  br label %350, !llvm.loop !56

367:                                              ; preds = %350
  br label %368

368:                                              ; preds = %367, %342
  %369 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %370 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %369, i32 0, i32 2
  %371 = load i8, ptr %370, align 1, !tbaa !47
  %372 = zext i8 %371 to i32
  switch i32 %372, label %463 [
    i32 16, label %373
    i32 20, label %401
    i32 24, label %412
    i32 32, label %438
  ]

373:                                              ; preds = %368
  %374 = load ptr, ptr %10, align 8, !tbaa !20
  %375 = load i32, ptr %20, align 4, !tbaa !19
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds nuw i16, ptr %374, i64 %376
  store ptr %377, ptr %40, align 8, !tbaa !42
  store i32 0, ptr %48, align 4, !tbaa !19
  store i32 0, ptr %49, align 4, !tbaa !19
  br label %378

378:                                              ; preds = %394, %373
  %379 = load i32, ptr %48, align 4, !tbaa !19
  %380 = load i32, ptr %11, align 4, !tbaa !19
  %381 = icmp ult i32 %379, %380
  br i1 %381, label %382, label %400

382:                                              ; preds = %378
  %383 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %384 = load ptr, ptr %383, align 8, !tbaa !8
  %385 = load i32, ptr %48, align 4, !tbaa !19
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds nuw i32, ptr %384, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !19
  %389 = trunc i32 %388 to i16
  %390 = load ptr, ptr %40, align 8, !tbaa !42
  %391 = load i32, ptr %49, align 4, !tbaa !19
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds nuw i16, ptr %390, i64 %392
  store i16 %389, ptr %393, align 2, !tbaa !35
  br label %394

394:                                              ; preds = %382
  %395 = load i32, ptr %48, align 4, !tbaa !19
  %396 = add i32 %395, 1
  store i32 %396, ptr %48, align 4, !tbaa !19
  %397 = load i32, ptr %12, align 4, !tbaa !19
  %398 = load i32, ptr %49, align 4, !tbaa !19
  %399 = add i32 %398, %397
  store i32 %399, ptr %49, align 4, !tbaa !19
  br label %378, !llvm.loop !57

400:                                              ; preds = %378
  br label %463

401:                                              ; preds = %368
  %402 = load ptr, ptr %10, align 8, !tbaa !20
  %403 = load i32, ptr %20, align 4, !tbaa !19
  %404 = mul i32 %403, 3
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds nuw i8, ptr %402, i64 %405
  store ptr %406, ptr %41, align 8, !tbaa !20
  %407 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %408 = load ptr, ptr %407, align 8, !tbaa !8
  %409 = load ptr, ptr %41, align 8, !tbaa !20
  %410 = load i32, ptr %12, align 4, !tbaa !19
  %411 = load i32, ptr %11, align 4, !tbaa !19
  call void @copyPredictorTo20(ptr noundef %408, ptr noundef %409, i32 noundef signext %410, i32 noundef signext %411)
  br label %463

412:                                              ; preds = %368
  %413 = load ptr, ptr %10, align 8, !tbaa !20
  %414 = load i32, ptr %20, align 4, !tbaa !19
  %415 = mul i32 %414, 3
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds nuw i8, ptr %413, i64 %416
  store ptr %417, ptr %42, align 8, !tbaa !20
  %418 = load i8, ptr %30, align 1, !tbaa !22
  %419 = zext i8 %418 to i32
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %431

421:                                              ; preds = %412
  %422 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %423 = load ptr, ptr %422, align 8, !tbaa !8
  %424 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 5
  %425 = load ptr, ptr %424, align 8, !tbaa !17
  %426 = load ptr, ptr %42, align 8, !tbaa !20
  %427 = load i32, ptr %12, align 4, !tbaa !19
  %428 = load i32, ptr %11, align 4, !tbaa !19
  %429 = load i8, ptr %30, align 1, !tbaa !22
  %430 = zext i8 %429 to i32
  call void @copyPredictorTo24Shift(ptr noundef %423, ptr noundef %425, ptr noundef %426, i32 noundef signext %427, i32 noundef signext %428, i32 noundef signext %430)
  br label %437

431:                                              ; preds = %412
  %432 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %433 = load ptr, ptr %432, align 8, !tbaa !8
  %434 = load ptr, ptr %42, align 8, !tbaa !20
  %435 = load i32, ptr %12, align 4, !tbaa !19
  %436 = load i32, ptr %11, align 4, !tbaa !19
  call void @copyPredictorTo24(ptr noundef %433, ptr noundef %434, i32 noundef signext %435, i32 noundef signext %436)
  br label %437

437:                                              ; preds = %431, %421
  br label %463

438:                                              ; preds = %368
  %439 = load ptr, ptr %10, align 8, !tbaa !20
  %440 = load i32, ptr %20, align 4, !tbaa !19
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds nuw i32, ptr %439, i64 %441
  store ptr %442, ptr %43, align 8, !tbaa !40
  %443 = load i8, ptr %30, align 1, !tbaa !22
  %444 = zext i8 %443 to i32
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %456

446:                                              ; preds = %438
  %447 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %448 = load ptr, ptr %447, align 8, !tbaa !8
  %449 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 5
  %450 = load ptr, ptr %449, align 8, !tbaa !17
  %451 = load ptr, ptr %43, align 8, !tbaa !40
  %452 = load i32, ptr %12, align 4, !tbaa !19
  %453 = load i32, ptr %11, align 4, !tbaa !19
  %454 = load i8, ptr %30, align 1, !tbaa !22
  %455 = zext i8 %454 to i32
  call void @copyPredictorTo32Shift(ptr noundef %448, ptr noundef %450, ptr noundef %451, i32 noundef signext %452, i32 noundef signext %453, i32 noundef signext %455)
  br label %462

456:                                              ; preds = %438
  %457 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %458 = load ptr, ptr %457, align 8, !tbaa !8
  %459 = load ptr, ptr %43, align 8, !tbaa !40
  %460 = load i32, ptr %12, align 4, !tbaa !19
  %461 = load i32, ptr %11, align 4, !tbaa !19
  call void @copyPredictorTo32(ptr noundef %458, ptr noundef %459, i32 noundef signext %460, i32 noundef signext %461)
  br label %462

462:                                              ; preds = %456, %446
  br label %463

463:                                              ; preds = %368, %462, %437, %401, %400
  %464 = load i32, ptr %20, align 4, !tbaa !19
  %465 = add i32 %464, 1
  store i32 %465, ptr %20, align 4, !tbaa !19
  %466 = load i32, ptr %11, align 4, !tbaa !19
  %467 = load ptr, ptr %13, align 8, !tbaa !40
  store i32 %466, ptr %467, align 4, !tbaa !19
  br label %992

468:                                              ; preds = %86
  %469 = load i32, ptr %20, align 4, !tbaa !19
  %470 = add i32 %469, 2
  %471 = load i32, ptr %12, align 4, !tbaa !19
  %472 = icmp ugt i32 %470, %471
  br i1 %472, label %473, label %474

473:                                              ; preds = %468
  br label %999

474:                                              ; preds = %468
  %475 = load ptr, ptr %9, align 8, !tbaa !38
  %476 = call zeroext i8 @BitBufferReadSmall(ptr noundef %475, i8 noundef zeroext 4)
  store i8 %476, ptr %18, align 1, !tbaa !22
  %477 = load i8, ptr %18, align 1, !tbaa !22
  %478 = zext i8 %477 to i32
  %479 = shl i32 1, %478
  %480 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 1
  %481 = load i16, ptr %480, align 8, !tbaa !41
  %482 = zext i16 %481 to i32
  %483 = or i32 %482, %479
  %484 = trunc i32 %483 to i16
  store i16 %484, ptr %480, align 8, !tbaa !41
  %485 = load ptr, ptr %9, align 8, !tbaa !38
  %486 = call signext i32 @BitBufferRead(ptr noundef %485, i8 noundef zeroext 12)
  %487 = trunc i32 %486 to i16
  store i16 %487, ptr %27, align 2, !tbaa !35
  %488 = load i16, ptr %27, align 2, !tbaa !35
  %489 = zext i16 %488 to i32
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %492, label %491

491:                                              ; preds = %474
  store i32 -50, ptr %50, align 4, !tbaa !19
  br label %1039

492:                                              ; preds = %474
  %493 = load ptr, ptr %9, align 8, !tbaa !38
  %494 = call signext i32 @BitBufferRead(ptr noundef %493, i8 noundef zeroext 4)
  %495 = trunc i32 %494 to i8
  store i8 %495, ptr %44, align 1, !tbaa !22
  %496 = load i8, ptr %44, align 1, !tbaa !22
  %497 = zext i8 %496 to i32
  %498 = ashr i32 %497, 3
  %499 = trunc i32 %498 to i8
  store i8 %499, ptr %45, align 1, !tbaa !22
  %500 = load i8, ptr %44, align 1, !tbaa !22
  %501 = zext i8 %500 to i32
  %502 = ashr i32 %501, 1
  %503 = and i32 %502, 3
  %504 = trunc i32 %503 to i8
  store i8 %504, ptr %30, align 1, !tbaa !22
  %505 = load i8, ptr %30, align 1, !tbaa !22
  %506 = zext i8 %505 to i32
  %507 = icmp ne i32 %506, 3
  br i1 %507, label %509, label %508

508:                                              ; preds = %492
  store i32 -50, ptr %50, align 4, !tbaa !19
  br label %1039

509:                                              ; preds = %492
  %510 = load i8, ptr %30, align 1, !tbaa !22
  %511 = zext i8 %510 to i32
  %512 = mul nsw i32 %511, 8
  store i32 %512, ptr %31, align 4, !tbaa !19
  %513 = load i8, ptr %44, align 1, !tbaa !22
  %514 = zext i8 %513 to i32
  %515 = and i32 %514, 1
  %516 = trunc i32 %515 to i8
  store i8 %516, ptr %28, align 1, !tbaa !22
  %517 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %518 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %517, i32 0, i32 2
  %519 = load i8, ptr %518, align 1, !tbaa !47
  %520 = zext i8 %519 to i32
  %521 = load i8, ptr %30, align 1, !tbaa !22
  %522 = zext i8 %521 to i32
  %523 = mul nsw i32 %522, 8
  %524 = sub nsw i32 %520, %523
  %525 = add nsw i32 %524, 1
  store i32 %525, ptr %29, align 4, !tbaa !19
  %526 = load i8, ptr %45, align 1, !tbaa !22
  %527 = zext i8 %526 to i32
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %537

529:                                              ; preds = %509
  %530 = load ptr, ptr %9, align 8, !tbaa !38
  %531 = call signext i32 @BitBufferRead(ptr noundef %530, i8 noundef zeroext 16)
  %532 = shl i32 %531, 16
  store i32 %532, ptr %11, align 4, !tbaa !19
  %533 = load ptr, ptr %9, align 8, !tbaa !38
  %534 = call signext i32 @BitBufferRead(ptr noundef %533, i8 noundef zeroext 16)
  %535 = load i32, ptr %11, align 4, !tbaa !19
  %536 = or i32 %535, %534
  store i32 %536, ptr %11, align 4, !tbaa !19
  br label %537

537:                                              ; preds = %529, %509
  %538 = load i8, ptr %28, align 1, !tbaa !22
  %539 = zext i8 %538 to i32
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %759

541:                                              ; preds = %537
  %542 = load ptr, ptr %9, align 8, !tbaa !38
  %543 = call signext i32 @BitBufferRead(ptr noundef %542, i8 noundef zeroext 8)
  %544 = trunc i32 %543 to i8
  store i8 %544, ptr %25, align 1, !tbaa !22
  %545 = load ptr, ptr %9, align 8, !tbaa !38
  %546 = call signext i32 @BitBufferRead(ptr noundef %545, i8 noundef zeroext 8)
  %547 = trunc i32 %546 to i8
  store i8 %547, ptr %26, align 1, !tbaa !22
  %548 = load ptr, ptr %9, align 8, !tbaa !38
  %549 = call signext i32 @BitBufferRead(ptr noundef %548, i8 noundef zeroext 8)
  %550 = trunc i32 %549 to i8
  store i8 %550, ptr %44, align 1, !tbaa !22
  %551 = load i8, ptr %44, align 1, !tbaa !22
  %552 = zext i8 %551 to i32
  %553 = ashr i32 %552, 4
  %554 = trunc i32 %553 to i8
  store i8 %554, ptr %32, align 1, !tbaa !22
  %555 = load i8, ptr %44, align 1, !tbaa !22
  %556 = zext i8 %555 to i32
  %557 = and i32 %556, 15
  store i32 %557, ptr %34, align 4, !tbaa !19
  %558 = load ptr, ptr %9, align 8, !tbaa !38
  %559 = call signext i32 @BitBufferRead(ptr noundef %558, i8 noundef zeroext 8)
  %560 = trunc i32 %559 to i8
  store i8 %560, ptr %44, align 1, !tbaa !22
  %561 = load i8, ptr %44, align 1, !tbaa !22
  %562 = zext i8 %561 to i32
  %563 = ashr i32 %562, 5
  %564 = trunc i32 %563 to i16
  store i16 %564, ptr %36, align 2, !tbaa !35
  %565 = load i8, ptr %44, align 1, !tbaa !22
  %566 = zext i8 %565 to i32
  %567 = and i32 %566, 31
  %568 = trunc i32 %567 to i8
  store i8 %568, ptr %23, align 1, !tbaa !22
  store i32 0, ptr %48, align 4, !tbaa !19
  br label %569

569:                                              ; preds = %581, %541
  %570 = load i32, ptr %48, align 4, !tbaa !19
  %571 = load i8, ptr %23, align 1, !tbaa !22
  %572 = zext i8 %571 to i32
  %573 = icmp ult i32 %570, %572
  br i1 %573, label %574, label %584

574:                                              ; preds = %569
  %575 = load ptr, ptr %9, align 8, !tbaa !38
  %576 = call signext i32 @BitBufferRead(ptr noundef %575, i8 noundef zeroext 16)
  %577 = trunc i32 %576 to i16
  %578 = load i32, ptr %48, align 4, !tbaa !19
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds nuw [32 x i16], ptr %21, i64 0, i64 %579
  store i16 %577, ptr %580, align 2, !tbaa !35
  br label %581

581:                                              ; preds = %574
  %582 = load i32, ptr %48, align 4, !tbaa !19
  %583 = add i32 %582, 1
  store i32 %583, ptr %48, align 4, !tbaa !19
  br label %569, !llvm.loop !58

584:                                              ; preds = %569
  %585 = load ptr, ptr %9, align 8, !tbaa !38
  %586 = call signext i32 @BitBufferRead(ptr noundef %585, i8 noundef zeroext 8)
  %587 = trunc i32 %586 to i8
  store i8 %587, ptr %44, align 1, !tbaa !22
  %588 = load i8, ptr %44, align 1, !tbaa !22
  %589 = zext i8 %588 to i32
  %590 = ashr i32 %589, 4
  %591 = trunc i32 %590 to i8
  store i8 %591, ptr %33, align 1, !tbaa !22
  %592 = load i8, ptr %44, align 1, !tbaa !22
  %593 = zext i8 %592 to i32
  %594 = and i32 %593, 15
  store i32 %594, ptr %35, align 4, !tbaa !19
  %595 = load ptr, ptr %9, align 8, !tbaa !38
  %596 = call signext i32 @BitBufferRead(ptr noundef %595, i8 noundef zeroext 8)
  %597 = trunc i32 %596 to i8
  store i8 %597, ptr %44, align 1, !tbaa !22
  %598 = load i8, ptr %44, align 1, !tbaa !22
  %599 = zext i8 %598 to i32
  %600 = ashr i32 %599, 5
  %601 = trunc i32 %600 to i16
  store i16 %601, ptr %37, align 2, !tbaa !35
  %602 = load i8, ptr %44, align 1, !tbaa !22
  %603 = zext i8 %602 to i32
  %604 = and i32 %603, 31
  %605 = trunc i32 %604 to i8
  store i8 %605, ptr %24, align 1, !tbaa !22
  store i32 0, ptr %48, align 4, !tbaa !19
  br label %606

606:                                              ; preds = %618, %584
  %607 = load i32, ptr %48, align 4, !tbaa !19
  %608 = load i8, ptr %24, align 1, !tbaa !22
  %609 = zext i8 %608 to i32
  %610 = icmp ult i32 %607, %609
  br i1 %610, label %611, label %621

611:                                              ; preds = %606
  %612 = load ptr, ptr %9, align 8, !tbaa !38
  %613 = call signext i32 @BitBufferRead(ptr noundef %612, i8 noundef zeroext 16)
  %614 = trunc i32 %613 to i16
  %615 = load i32, ptr %48, align 4, !tbaa !19
  %616 = zext i32 %615 to i64
  %617 = getelementptr inbounds nuw [32 x i16], ptr %22, i64 0, i64 %616
  store i16 %614, ptr %617, align 2, !tbaa !35
  br label %618

618:                                              ; preds = %611
  %619 = load i32, ptr %48, align 4, !tbaa !19
  %620 = add i32 %619, 1
  store i32 %620, ptr %48, align 4, !tbaa !19
  br label %606, !llvm.loop !59

621:                                              ; preds = %606
  %622 = load i8, ptr %30, align 1, !tbaa !22
  %623 = zext i8 %622 to i32
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %634

625:                                              ; preds = %621
  %626 = load ptr, ptr %9, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %626, i64 24, i1 false), !tbaa.struct !50
  %627 = load ptr, ptr %9, align 8, !tbaa !38
  %628 = load i8, ptr %30, align 1, !tbaa !22
  %629 = zext i8 %628 to i32
  %630 = mul nsw i32 %629, 8
  %631 = mul nsw i32 %630, 2
  %632 = load i32, ptr %11, align 4, !tbaa !19
  %633 = mul i32 %631, %632
  call void @BitBufferAdvance(ptr noundef %627, i32 noundef signext %633)
  br label %634

634:                                              ; preds = %625, %621
  %635 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %636 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %635, i32 0, i32 4
  %637 = load i8, ptr %636, align 1, !tbaa !51
  %638 = zext i8 %637 to i32
  %639 = load i16, ptr %38, align 2, !tbaa !35
  %640 = zext i16 %639 to i32
  %641 = load i16, ptr %36, align 2, !tbaa !35
  %642 = zext i16 %641 to i32
  %643 = mul nsw i32 %640, %642
  %644 = sdiv i32 %643, 4
  %645 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %646 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %645, i32 0, i32 5
  %647 = load i8, ptr %646, align 8, !tbaa !52
  %648 = zext i8 %647 to i32
  %649 = load i32, ptr %11, align 4, !tbaa !19
  %650 = load i32, ptr %11, align 4, !tbaa !19
  %651 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %652 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %651, i32 0, i32 7
  %653 = load i16, ptr %652, align 2, !tbaa !53
  %654 = zext i16 %653 to i32
  call void @set_ag_params(ptr noundef %19, i32 noundef signext %638, i32 noundef signext %644, i32 noundef signext %648, i32 noundef signext %649, i32 noundef signext %650, i32 noundef signext %654)
  %655 = load ptr, ptr %9, align 8, !tbaa !38
  %656 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %657 = load ptr, ptr %656, align 8, !tbaa !16
  %658 = load i32, ptr %11, align 4, !tbaa !19
  %659 = load i32, ptr %29, align 4, !tbaa !19
  %660 = call signext i32 @dyn_decomp(ptr noundef %19, ptr noundef %655, ptr noundef %657, i32 noundef signext %658, i32 noundef signext %659, ptr noundef %15)
  store i32 %660, ptr %50, align 4, !tbaa !19
  %661 = load i32, ptr %50, align 4, !tbaa !19
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %664

663:                                              ; preds = %634
  br label %1039

664:                                              ; preds = %634
  %665 = load i8, ptr %32, align 1, !tbaa !22
  %666 = zext i8 %665 to i32
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %668, label %679

668:                                              ; preds = %664
  %669 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %670 = load ptr, ptr %669, align 8, !tbaa !16
  %671 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %672 = load ptr, ptr %671, align 8, !tbaa !8
  %673 = load i32, ptr %11, align 4, !tbaa !19
  %674 = getelementptr inbounds [32 x i16], ptr %21, i64 0, i64 0
  %675 = load i8, ptr %23, align 1, !tbaa !22
  %676 = zext i8 %675 to i32
  %677 = load i32, ptr %29, align 4, !tbaa !19
  %678 = load i32, ptr %34, align 4, !tbaa !19
  call void @unpc_block(ptr noundef %670, ptr noundef %672, i32 noundef signext %673, ptr noundef %674, i32 noundef signext %676, i32 noundef signext %677, i32 noundef signext %678)
  br label %696

679:                                              ; preds = %664
  %680 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %681 = load ptr, ptr %680, align 8, !tbaa !16
  %682 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %683 = load ptr, ptr %682, align 8, !tbaa !16
  %684 = load i32, ptr %11, align 4, !tbaa !19
  %685 = load i32, ptr %29, align 4, !tbaa !19
  call void @unpc_block(ptr noundef %681, ptr noundef %683, i32 noundef signext %684, ptr noundef null, i32 noundef signext 31, i32 noundef signext %685, i32 noundef signext 0)
  %686 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %687 = load ptr, ptr %686, align 8, !tbaa !16
  %688 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %689 = load ptr, ptr %688, align 8, !tbaa !8
  %690 = load i32, ptr %11, align 4, !tbaa !19
  %691 = getelementptr inbounds [32 x i16], ptr %21, i64 0, i64 0
  %692 = load i8, ptr %23, align 1, !tbaa !22
  %693 = zext i8 %692 to i32
  %694 = load i32, ptr %29, align 4, !tbaa !19
  %695 = load i32, ptr %34, align 4, !tbaa !19
  call void @unpc_block(ptr noundef %687, ptr noundef %689, i32 noundef signext %690, ptr noundef %691, i32 noundef signext %693, i32 noundef signext %694, i32 noundef signext %695)
  br label %696

696:                                              ; preds = %679, %668
  %697 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %698 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %697, i32 0, i32 4
  %699 = load i8, ptr %698, align 1, !tbaa !51
  %700 = zext i8 %699 to i32
  %701 = load i16, ptr %38, align 2, !tbaa !35
  %702 = zext i16 %701 to i32
  %703 = load i16, ptr %37, align 2, !tbaa !35
  %704 = zext i16 %703 to i32
  %705 = mul nsw i32 %702, %704
  %706 = sdiv i32 %705, 4
  %707 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %708 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %707, i32 0, i32 5
  %709 = load i8, ptr %708, align 8, !tbaa !52
  %710 = zext i8 %709 to i32
  %711 = load i32, ptr %11, align 4, !tbaa !19
  %712 = load i32, ptr %11, align 4, !tbaa !19
  %713 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %714 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %713, i32 0, i32 7
  %715 = load i16, ptr %714, align 2, !tbaa !53
  %716 = zext i16 %715 to i32
  call void @set_ag_params(ptr noundef %19, i32 noundef signext %700, i32 noundef signext %706, i32 noundef signext %710, i32 noundef signext %711, i32 noundef signext %712, i32 noundef signext %716)
  %717 = load ptr, ptr %9, align 8, !tbaa !38
  %718 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %719 = load ptr, ptr %718, align 8, !tbaa !16
  %720 = load i32, ptr %11, align 4, !tbaa !19
  %721 = load i32, ptr %29, align 4, !tbaa !19
  %722 = call signext i32 @dyn_decomp(ptr noundef %19, ptr noundef %717, ptr noundef %719, i32 noundef signext %720, i32 noundef signext %721, ptr noundef %16)
  store i32 %722, ptr %50, align 4, !tbaa !19
  %723 = load i32, ptr %50, align 4, !tbaa !19
  %724 = icmp ne i32 %723, 0
  br i1 %724, label %725, label %726

725:                                              ; preds = %696
  br label %1039

726:                                              ; preds = %696
  %727 = load i8, ptr %33, align 1, !tbaa !22
  %728 = zext i8 %727 to i32
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %730, label %741

730:                                              ; preds = %726
  %731 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %732 = load ptr, ptr %731, align 8, !tbaa !16
  %733 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 3
  %734 = load ptr, ptr %733, align 8, !tbaa !15
  %735 = load i32, ptr %11, align 4, !tbaa !19
  %736 = getelementptr inbounds [32 x i16], ptr %22, i64 0, i64 0
  %737 = load i8, ptr %24, align 1, !tbaa !22
  %738 = zext i8 %737 to i32
  %739 = load i32, ptr %29, align 4, !tbaa !19
  %740 = load i32, ptr %35, align 4, !tbaa !19
  call void @unpc_block(ptr noundef %732, ptr noundef %734, i32 noundef signext %735, ptr noundef %736, i32 noundef signext %738, i32 noundef signext %739, i32 noundef signext %740)
  br label %758

741:                                              ; preds = %726
  %742 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %743 = load ptr, ptr %742, align 8, !tbaa !16
  %744 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %745 = load ptr, ptr %744, align 8, !tbaa !16
  %746 = load i32, ptr %11, align 4, !tbaa !19
  %747 = load i32, ptr %29, align 4, !tbaa !19
  call void @unpc_block(ptr noundef %743, ptr noundef %745, i32 noundef signext %746, ptr noundef null, i32 noundef signext 31, i32 noundef signext %747, i32 noundef signext 0)
  %748 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 4
  %749 = load ptr, ptr %748, align 8, !tbaa !16
  %750 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 3
  %751 = load ptr, ptr %750, align 8, !tbaa !15
  %752 = load i32, ptr %11, align 4, !tbaa !19
  %753 = getelementptr inbounds [32 x i16], ptr %22, i64 0, i64 0
  %754 = load i8, ptr %24, align 1, !tbaa !22
  %755 = zext i8 %754 to i32
  %756 = load i32, ptr %29, align 4, !tbaa !19
  %757 = load i32, ptr %35, align 4, !tbaa !19
  call void @unpc_block(ptr noundef %749, ptr noundef %751, i32 noundef signext %752, ptr noundef %753, i32 noundef signext %755, i32 noundef signext %756, i32 noundef signext %757)
  br label %758

758:                                              ; preds = %741, %730
  br label %861

759:                                              ; preds = %537
  %760 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %761 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %760, i32 0, i32 2
  %762 = load i8, ptr %761, align 1, !tbaa !47
  %763 = zext i8 %762 to i32
  store i32 %763, ptr %29, align 4, !tbaa !19
  %764 = load i32, ptr %29, align 4, !tbaa !19
  %765 = sub i32 32, %764
  store i32 %765, ptr %31, align 4, !tbaa !19
  %766 = load i32, ptr %29, align 4, !tbaa !19
  %767 = icmp ule i32 %766, 16
  br i1 %767, label %768, label %808

768:                                              ; preds = %759
  store i32 0, ptr %48, align 4, !tbaa !19
  br label %769

769:                                              ; preds = %804, %768
  %770 = load i32, ptr %48, align 4, !tbaa !19
  %771 = load i32, ptr %11, align 4, !tbaa !19
  %772 = icmp ult i32 %770, %771
  br i1 %772, label %773, label %807

773:                                              ; preds = %769
  %774 = load ptr, ptr %9, align 8, !tbaa !38
  %775 = load i32, ptr %29, align 4, !tbaa !19
  %776 = trunc i32 %775 to i8
  %777 = call signext i32 @BitBufferRead(ptr noundef %774, i8 noundef zeroext %776)
  store i32 %777, ptr %47, align 4, !tbaa !19
  %778 = load i32, ptr %47, align 4, !tbaa !19
  %779 = load i32, ptr %31, align 4, !tbaa !19
  %780 = shl i32 %778, %779
  %781 = load i32, ptr %31, align 4, !tbaa !19
  %782 = ashr i32 %780, %781
  store i32 %782, ptr %47, align 4, !tbaa !19
  %783 = load i32, ptr %47, align 4, !tbaa !19
  %784 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %785 = load ptr, ptr %784, align 8, !tbaa !8
  %786 = load i32, ptr %48, align 4, !tbaa !19
  %787 = zext i32 %786 to i64
  %788 = getelementptr inbounds nuw i32, ptr %785, i64 %787
  store i32 %783, ptr %788, align 4, !tbaa !19
  %789 = load ptr, ptr %9, align 8, !tbaa !38
  %790 = load i32, ptr %29, align 4, !tbaa !19
  %791 = trunc i32 %790 to i8
  %792 = call signext i32 @BitBufferRead(ptr noundef %789, i8 noundef zeroext %791)
  store i32 %792, ptr %47, align 4, !tbaa !19
  %793 = load i32, ptr %47, align 4, !tbaa !19
  %794 = load i32, ptr %31, align 4, !tbaa !19
  %795 = shl i32 %793, %794
  %796 = load i32, ptr %31, align 4, !tbaa !19
  %797 = ashr i32 %795, %796
  store i32 %797, ptr %47, align 4, !tbaa !19
  %798 = load i32, ptr %47, align 4, !tbaa !19
  %799 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 3
  %800 = load ptr, ptr %799, align 8, !tbaa !15
  %801 = load i32, ptr %48, align 4, !tbaa !19
  %802 = zext i32 %801 to i64
  %803 = getelementptr inbounds nuw i32, ptr %800, i64 %802
  store i32 %798, ptr %803, align 4, !tbaa !19
  br label %804

804:                                              ; preds = %773
  %805 = load i32, ptr %48, align 4, !tbaa !19
  %806 = add i32 %805, 1
  store i32 %806, ptr %48, align 4, !tbaa !19
  br label %769, !llvm.loop !60

807:                                              ; preds = %769
  br label %854

808:                                              ; preds = %759
  %809 = load i32, ptr %29, align 4, !tbaa !19
  %810 = sub i32 %809, 16
  store i32 %810, ptr %46, align 4, !tbaa !19
  store i32 0, ptr %48, align 4, !tbaa !19
  br label %811

811:                                              ; preds = %850, %808
  %812 = load i32, ptr %48, align 4, !tbaa !19
  %813 = load i32, ptr %11, align 4, !tbaa !19
  %814 = icmp ult i32 %812, %813
  br i1 %814, label %815, label %853

815:                                              ; preds = %811
  %816 = load ptr, ptr %9, align 8, !tbaa !38
  %817 = call signext i32 @BitBufferRead(ptr noundef %816, i8 noundef zeroext 16)
  store i32 %817, ptr %47, align 4, !tbaa !19
  %818 = load i32, ptr %47, align 4, !tbaa !19
  %819 = shl i32 %818, 16
  %820 = load i32, ptr %31, align 4, !tbaa !19
  %821 = ashr i32 %819, %820
  store i32 %821, ptr %47, align 4, !tbaa !19
  %822 = load i32, ptr %47, align 4, !tbaa !19
  %823 = load ptr, ptr %9, align 8, !tbaa !38
  %824 = load i32, ptr %46, align 4, !tbaa !19
  %825 = trunc i32 %824 to i8
  %826 = call signext i32 @BitBufferRead(ptr noundef %823, i8 noundef zeroext %825)
  %827 = or i32 %822, %826
  %828 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %829 = load ptr, ptr %828, align 8, !tbaa !8
  %830 = load i32, ptr %48, align 4, !tbaa !19
  %831 = zext i32 %830 to i64
  %832 = getelementptr inbounds nuw i32, ptr %829, i64 %831
  store i32 %827, ptr %832, align 4, !tbaa !19
  %833 = load ptr, ptr %9, align 8, !tbaa !38
  %834 = call signext i32 @BitBufferRead(ptr noundef %833, i8 noundef zeroext 16)
  store i32 %834, ptr %47, align 4, !tbaa !19
  %835 = load i32, ptr %47, align 4, !tbaa !19
  %836 = shl i32 %835, 16
  %837 = load i32, ptr %31, align 4, !tbaa !19
  %838 = ashr i32 %836, %837
  store i32 %838, ptr %47, align 4, !tbaa !19
  %839 = load i32, ptr %47, align 4, !tbaa !19
  %840 = load ptr, ptr %9, align 8, !tbaa !38
  %841 = load i32, ptr %46, align 4, !tbaa !19
  %842 = trunc i32 %841 to i8
  %843 = call signext i32 @BitBufferRead(ptr noundef %840, i8 noundef zeroext %842)
  %844 = or i32 %839, %843
  %845 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 3
  %846 = load ptr, ptr %845, align 8, !tbaa !15
  %847 = load i32, ptr %48, align 4, !tbaa !19
  %848 = zext i32 %847 to i64
  %849 = getelementptr inbounds nuw i32, ptr %846, i64 %848
  store i32 %844, ptr %849, align 4, !tbaa !19
  br label %850

850:                                              ; preds = %815
  %851 = load i32, ptr %48, align 4, !tbaa !19
  %852 = add i32 %851, 1
  store i32 %852, ptr %48, align 4, !tbaa !19
  br label %811, !llvm.loop !61

853:                                              ; preds = %811
  br label %854

854:                                              ; preds = %853, %807
  %855 = load i32, ptr %29, align 4, !tbaa !19
  %856 = load i32, ptr %11, align 4, !tbaa !19
  %857 = mul i32 %855, %856
  store i32 %857, ptr %15, align 4, !tbaa !19
  %858 = load i32, ptr %29, align 4, !tbaa !19
  %859 = load i32, ptr %11, align 4, !tbaa !19
  %860 = mul i32 %858, %859
  store i32 %860, ptr %16, align 4, !tbaa !19
  store i8 0, ptr %26, align 1, !tbaa !22
  store i8 0, ptr %25, align 1, !tbaa !22
  store i8 0, ptr %30, align 1, !tbaa !22
  br label %861

861:                                              ; preds = %854, %758
  %862 = load i8, ptr %30, align 1, !tbaa !22
  %863 = zext i8 %862 to i32
  %864 = icmp ne i32 %863, 0
  br i1 %864, label %865, label %899

865:                                              ; preds = %861
  %866 = load i8, ptr %30, align 1, !tbaa !22
  %867 = zext i8 %866 to i32
  %868 = mul nsw i32 %867, 8
  store i32 %868, ptr %31, align 4, !tbaa !19
  store i32 0, ptr %48, align 4, !tbaa !19
  br label %869

869:                                              ; preds = %895, %865
  %870 = load i32, ptr %48, align 4, !tbaa !19
  %871 = load i32, ptr %11, align 4, !tbaa !19
  %872 = mul i32 %871, 2
  %873 = icmp ult i32 %870, %872
  br i1 %873, label %874, label %898

874:                                              ; preds = %869
  %875 = load i32, ptr %31, align 4, !tbaa !19
  %876 = trunc i32 %875 to i8
  %877 = call signext i32 @BitBufferRead(ptr noundef %14, i8 noundef zeroext %876)
  %878 = trunc i32 %877 to i16
  %879 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 5
  %880 = load ptr, ptr %879, align 8, !tbaa !17
  %881 = load i32, ptr %48, align 4, !tbaa !19
  %882 = add i32 %881, 0
  %883 = zext i32 %882 to i64
  %884 = getelementptr inbounds nuw i16, ptr %880, i64 %883
  store i16 %878, ptr %884, align 2, !tbaa !35
  %885 = load i32, ptr %31, align 4, !tbaa !19
  %886 = trunc i32 %885 to i8
  %887 = call signext i32 @BitBufferRead(ptr noundef %14, i8 noundef zeroext %886)
  %888 = trunc i32 %887 to i16
  %889 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 5
  %890 = load ptr, ptr %889, align 8, !tbaa !17
  %891 = load i32, ptr %48, align 4, !tbaa !19
  %892 = add i32 %891, 1
  %893 = zext i32 %892 to i64
  %894 = getelementptr inbounds nuw i16, ptr %890, i64 %893
  store i16 %888, ptr %894, align 2, !tbaa !35
  br label %895

895:                                              ; preds = %874
  %896 = load i32, ptr %48, align 4, !tbaa !19
  %897 = add i32 %896, 2
  store i32 %897, ptr %48, align 4, !tbaa !19
  br label %869, !llvm.loop !62

898:                                              ; preds = %869
  br label %899

899:                                              ; preds = %898, %861
  %900 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %901 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %900, i32 0, i32 2
  %902 = load i8, ptr %901, align 1, !tbaa !47
  %903 = zext i8 %902 to i32
  switch i32 %903, label %978 [
    i32 16, label %904
    i32 20, label %920
    i32 24, label %937
    i32 32, label %958
  ]

904:                                              ; preds = %899
  %905 = load ptr, ptr %10, align 8, !tbaa !20
  %906 = load i32, ptr %20, align 4, !tbaa !19
  %907 = zext i32 %906 to i64
  %908 = getelementptr inbounds nuw i16, ptr %905, i64 %907
  store ptr %908, ptr %40, align 8, !tbaa !42
  %909 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %910 = load ptr, ptr %909, align 8, !tbaa !8
  %911 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 3
  %912 = load ptr, ptr %911, align 8, !tbaa !15
  %913 = load ptr, ptr %40, align 8, !tbaa !42
  %914 = load i32, ptr %12, align 4, !tbaa !19
  %915 = load i32, ptr %11, align 4, !tbaa !19
  %916 = load i8, ptr %25, align 1, !tbaa !22
  %917 = zext i8 %916 to i32
  %918 = load i8, ptr %26, align 1, !tbaa !22
  %919 = sext i8 %918 to i32
  call void @unmix16(ptr noundef %910, ptr noundef %912, ptr noundef %913, i32 noundef signext %914, i32 noundef signext %915, i32 noundef signext %917, i32 noundef signext %919)
  br label %978

920:                                              ; preds = %899
  %921 = load ptr, ptr %10, align 8, !tbaa !20
  %922 = load i32, ptr %20, align 4, !tbaa !19
  %923 = mul i32 %922, 3
  %924 = zext i32 %923 to i64
  %925 = getelementptr inbounds nuw i8, ptr %921, i64 %924
  store ptr %925, ptr %41, align 8, !tbaa !20
  %926 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %927 = load ptr, ptr %926, align 8, !tbaa !8
  %928 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 3
  %929 = load ptr, ptr %928, align 8, !tbaa !15
  %930 = load ptr, ptr %41, align 8, !tbaa !20
  %931 = load i32, ptr %12, align 4, !tbaa !19
  %932 = load i32, ptr %11, align 4, !tbaa !19
  %933 = load i8, ptr %25, align 1, !tbaa !22
  %934 = zext i8 %933 to i32
  %935 = load i8, ptr %26, align 1, !tbaa !22
  %936 = sext i8 %935 to i32
  call void @unmix20(ptr noundef %927, ptr noundef %929, ptr noundef %930, i32 noundef signext %931, i32 noundef signext %932, i32 noundef signext %934, i32 noundef signext %936)
  br label %978

937:                                              ; preds = %899
  %938 = load ptr, ptr %10, align 8, !tbaa !20
  %939 = load i32, ptr %20, align 4, !tbaa !19
  %940 = mul i32 %939, 3
  %941 = zext i32 %940 to i64
  %942 = getelementptr inbounds nuw i8, ptr %938, i64 %941
  store ptr %942, ptr %42, align 8, !tbaa !20
  %943 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %944 = load ptr, ptr %943, align 8, !tbaa !8
  %945 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 3
  %946 = load ptr, ptr %945, align 8, !tbaa !15
  %947 = load ptr, ptr %42, align 8, !tbaa !20
  %948 = load i32, ptr %12, align 4, !tbaa !19
  %949 = load i32, ptr %11, align 4, !tbaa !19
  %950 = load i8, ptr %25, align 1, !tbaa !22
  %951 = zext i8 %950 to i32
  %952 = load i8, ptr %26, align 1, !tbaa !22
  %953 = sext i8 %952 to i32
  %954 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 5
  %955 = load ptr, ptr %954, align 8, !tbaa !17
  %956 = load i8, ptr %30, align 1, !tbaa !22
  %957 = zext i8 %956 to i32
  call void @unmix24(ptr noundef %944, ptr noundef %946, ptr noundef %947, i32 noundef signext %948, i32 noundef signext %949, i32 noundef signext %951, i32 noundef signext %953, ptr noundef %955, i32 noundef signext %957)
  br label %978

958:                                              ; preds = %899
  %959 = load ptr, ptr %10, align 8, !tbaa !20
  %960 = load i32, ptr %20, align 4, !tbaa !19
  %961 = zext i32 %960 to i64
  %962 = getelementptr inbounds nuw i32, ptr %959, i64 %961
  store ptr %962, ptr %43, align 8, !tbaa !40
  %963 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 2
  %964 = load ptr, ptr %963, align 8, !tbaa !8
  %965 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 3
  %966 = load ptr, ptr %965, align 8, !tbaa !15
  %967 = load ptr, ptr %43, align 8, !tbaa !40
  %968 = load i32, ptr %12, align 4, !tbaa !19
  %969 = load i32, ptr %11, align 4, !tbaa !19
  %970 = load i8, ptr %25, align 1, !tbaa !22
  %971 = zext i8 %970 to i32
  %972 = load i8, ptr %26, align 1, !tbaa !22
  %973 = sext i8 %972 to i32
  %974 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 5
  %975 = load ptr, ptr %974, align 8, !tbaa !17
  %976 = load i8, ptr %30, align 1, !tbaa !22
  %977 = zext i8 %976 to i32
  call void @unmix32(ptr noundef %964, ptr noundef %966, ptr noundef %967, i32 noundef signext %968, i32 noundef signext %969, i32 noundef signext %971, i32 noundef signext %973, ptr noundef %975, i32 noundef signext %977)
  br label %978

978:                                              ; preds = %899, %958, %937, %920, %904
  %979 = load i32, ptr %20, align 4, !tbaa !19
  %980 = add i32 %979, 2
  store i32 %980, ptr %20, align 4, !tbaa !19
  %981 = load i32, ptr %11, align 4, !tbaa !19
  %982 = load ptr, ptr %13, align 8, !tbaa !40
  store i32 %981, ptr %982, align 4, !tbaa !19
  br label %992

983:                                              ; preds = %86, %86
  store i32 -50, ptr %50, align 4, !tbaa !19
  br label %992

984:                                              ; preds = %86
  %985 = load ptr, ptr %9, align 8, !tbaa !38
  %986 = call noundef signext i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr noundef nonnull align 8 dereferenceable(64) %55, ptr noundef %985)
  store i32 %986, ptr %50, align 4, !tbaa !19
  br label %992

987:                                              ; preds = %86
  %988 = load ptr, ptr %9, align 8, !tbaa !38
  %989 = call noundef signext i32 @_ZN11ALACDecoder11FillElementEP9BitBuffer(ptr noundef nonnull align 8 dereferenceable(64) %55, ptr noundef %988)
  store i32 %989, ptr %50, align 4, !tbaa !19
  br label %992

990:                                              ; preds = %86
  %991 = load ptr, ptr %9, align 8, !tbaa !38
  call void @BitBufferByteAlign(ptr noundef %991, i32 noundef signext 0)
  br label %1039

992:                                              ; preds = %86, %987, %984, %983, %978, %463
  %993 = load i32, ptr %20, align 4, !tbaa !19
  %994 = load i32, ptr %12, align 4, !tbaa !19
  %995 = icmp uge i32 %993, %994
  br i1 %995, label %996, label %997

996:                                              ; preds = %992
  br label %998

997:                                              ; preds = %992
  br label %74, !llvm.loop !63

998:                                              ; preds = %996, %74
  br label %999

999:                                              ; preds = %998, %473
  br label %1000

1000:                                             ; preds = %1035, %999
  %1001 = load i32, ptr %20, align 4, !tbaa !19
  %1002 = load i32, ptr %12, align 4, !tbaa !19
  %1003 = icmp ult i32 %1001, %1002
  br i1 %1003, label %1004, label %1038

1004:                                             ; preds = %1000
  %1005 = getelementptr inbounds nuw %class.ALACDecoder, ptr %55, i32 0, i32 0
  %1006 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %1005, i32 0, i32 2
  %1007 = load i8, ptr %1006, align 1, !tbaa !47
  %1008 = zext i8 %1007 to i32
  switch i32 %1008, label %1034 [
    i32 16, label %1009
    i32 24, label %1017
    i32 32, label %1026
  ]

1009:                                             ; preds = %1004
  call void @llvm.lifetime.start.p0(i64 8, ptr %52) #8
  %1010 = load ptr, ptr %10, align 8, !tbaa !20
  %1011 = load i32, ptr %20, align 4, !tbaa !19
  %1012 = zext i32 %1011 to i64
  %1013 = getelementptr inbounds nuw i16, ptr %1010, i64 %1012
  store ptr %1013, ptr %52, align 8, !tbaa !42
  %1014 = load ptr, ptr %52, align 8, !tbaa !42
  %1015 = load i32, ptr %11, align 4, !tbaa !19
  %1016 = load i32, ptr %12, align 4, !tbaa !19
  call void @_ZL6Zero16Psjj(ptr noundef %1014, i32 noundef signext %1015, i32 noundef signext %1016)
  store i32 42, ptr %51, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %52) #8
  br label %1034

1017:                                             ; preds = %1004
  call void @llvm.lifetime.start.p0(i64 8, ptr %53) #8
  %1018 = load ptr, ptr %10, align 8, !tbaa !20
  %1019 = load i32, ptr %20, align 4, !tbaa !19
  %1020 = mul i32 %1019, 3
  %1021 = zext i32 %1020 to i64
  %1022 = getelementptr inbounds nuw i8, ptr %1018, i64 %1021
  store ptr %1022, ptr %53, align 8, !tbaa !20
  %1023 = load ptr, ptr %53, align 8, !tbaa !20
  %1024 = load i32, ptr %11, align 4, !tbaa !19
  %1025 = load i32, ptr %12, align 4, !tbaa !19
  call void @_ZL6Zero24Phjj(ptr noundef %1023, i32 noundef signext %1024, i32 noundef signext %1025)
  store i32 42, ptr %51, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %53) #8
  br label %1034

1026:                                             ; preds = %1004
  call void @llvm.lifetime.start.p0(i64 8, ptr %54) #8
  %1027 = load ptr, ptr %10, align 8, !tbaa !20
  %1028 = load i32, ptr %20, align 4, !tbaa !19
  %1029 = zext i32 %1028 to i64
  %1030 = getelementptr inbounds nuw i32, ptr %1027, i64 %1029
  store ptr %1030, ptr %54, align 8, !tbaa !40
  %1031 = load ptr, ptr %54, align 8, !tbaa !40
  %1032 = load i32, ptr %11, align 4, !tbaa !19
  %1033 = load i32, ptr %12, align 4, !tbaa !19
  call void @_ZL6Zero32Pijj(ptr noundef %1031, i32 noundef signext %1032, i32 noundef signext %1033)
  store i32 42, ptr %51, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %54) #8
  br label %1034

1034:                                             ; preds = %1004, %1026, %1017, %1009
  br label %1035

1035:                                             ; preds = %1034
  %1036 = load i32, ptr %20, align 4, !tbaa !19
  %1037 = add i32 %1036, 1
  store i32 %1037, ptr %20, align 4, !tbaa !19
  br label %1000, !llvm.loop !64

1038:                                             ; preds = %1000
  br label %1039

1039:                                             ; preds = %1038, %990, %725, %663, %508, %491, %245, %129, %112, %85
  %1040 = load i32, ptr %50, align 4, !tbaa !19
  store i32 %1040, ptr %7, align 4
  store i32 1, ptr %51, align 4
  br label %1041

1041:                                             ; preds = %1039, %68, %64
  call void @llvm.lifetime.end.p0(i64 4, ptr %50) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %49) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %48) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %47) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %46) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %45) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %44) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %43) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %42) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %41) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %40) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %39) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %38) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %37) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %36) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %35) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %34) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %33) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %32) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %31) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %30) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %29) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %28) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %27) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %26) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr %14) #8
  %1042 = load i32, ptr %7, align 4
  ret i32 %1042
}

declare zeroext i8 @BitBufferReadSmall(ptr noundef, i8 noundef zeroext) #5

declare signext i32 @BitBufferRead(ptr noundef, i8 noundef zeroext) #5

declare void @BitBufferAdvance(ptr noundef, i32 noundef signext) #5

declare void @set_ag_params(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #5

declare signext i32 @dyn_decomp(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef) #5

declare void @unpc_block(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) #5

declare void @copyPredictorTo20(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) #5

declare void @copyPredictorTo24Shift(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) #5

declare void @copyPredictorTo24(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) #5

declare void @copyPredictorTo32Shift(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) #5

declare void @copyPredictorTo32(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) #5

declare void @unmix16(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #5

declare void @unmix20(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #5

declare void @unmix24(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext) #5

declare void @unmix32(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext) #5

; Function Attrs: mustprogress
define dso_local noundef signext i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) #3 align 2 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !38
  %10 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr %8) #8
  %11 = load ptr, ptr %5, align 8, !tbaa !38
  %12 = call zeroext i8 @BitBufferReadSmall(ptr noundef %11, i8 noundef zeroext 4)
  store i8 %12, ptr %6, align 1, !tbaa !22
  %13 = load ptr, ptr %5, align 8, !tbaa !38
  %14 = call zeroext i8 @BitBufferReadOne(ptr noundef %13)
  %15 = zext i8 %14 to i32
  store i32 %15, ptr %7, align 4, !tbaa !19
  %16 = load ptr, ptr %5, align 8, !tbaa !38
  %17 = call zeroext i8 @BitBufferReadSmall(ptr noundef %16, i8 noundef zeroext 8)
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %8, align 2, !tbaa !35
  %19 = load i16, ptr %8, align 2, !tbaa !35
  %20 = zext i16 %19 to i32
  %21 = icmp eq i32 %20, 255
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load ptr, ptr %5, align 8, !tbaa !38
  %24 = call zeroext i8 @BitBufferReadSmall(ptr noundef %23, i8 noundef zeroext 8)
  %25 = zext i8 %24 to i32
  %26 = load i16, ptr %8, align 2, !tbaa !35
  %27 = zext i16 %26 to i32
  %28 = add nsw i32 %27, %25
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr %8, align 2, !tbaa !35
  br label %30

30:                                               ; preds = %22, %2
  %31 = load i32, ptr %7, align 4, !tbaa !19
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load ptr, ptr %5, align 8, !tbaa !38
  call void @BitBufferByteAlign(ptr noundef %34, i32 noundef signext 0)
  br label %35

35:                                               ; preds = %33, %30
  %36 = load ptr, ptr %5, align 8, !tbaa !38
  %37 = load i16, ptr %8, align 2, !tbaa !35
  %38 = zext i16 %37 to i32
  %39 = mul nsw i32 %38, 8
  call void @BitBufferAdvance(ptr noundef %36, i32 noundef signext %39)
  %40 = load ptr, ptr %5, align 8, !tbaa !38
  %41 = getelementptr inbounds nuw %struct.BitBuffer, ptr %40, i32 0, i32 0
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = load ptr, ptr %5, align 8, !tbaa !38
  %44 = getelementptr inbounds nuw %struct.BitBuffer, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = icmp ule ptr %42, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %35
  store i32 -50, ptr %3, align 4
  store i32 1, ptr %9, align 4
  br label %49

48:                                               ; preds = %35
  store i32 0, ptr %3, align 4
  store i32 1, ptr %9, align 4
  br label %49

49:                                               ; preds = %48, %47
  call void @llvm.lifetime.end.p0(i64 2, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %6) #8
  %50 = load i32, ptr %3, align 4
  ret i32 %50
}

; Function Attrs: mustprogress
define dso_local noundef signext i32 @_ZN11ALACDecoder11FillElementEP9BitBuffer(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) #3 align 2 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !38
  %8 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr %6) #8
  %9 = load ptr, ptr %5, align 8, !tbaa !38
  %10 = call zeroext i8 @BitBufferReadSmall(ptr noundef %9, i8 noundef zeroext 4)
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %6, align 2, !tbaa !35
  %12 = load i16, ptr %6, align 2, !tbaa !35
  %13 = sext i16 %12 to i32
  %14 = icmp eq i32 %13, 15
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load ptr, ptr %5, align 8, !tbaa !38
  %17 = call zeroext i8 @BitBufferReadSmall(ptr noundef %16, i8 noundef zeroext 8)
  %18 = zext i8 %17 to i16
  %19 = sext i16 %18 to i32
  %20 = sub nsw i32 %19, 1
  %21 = load i16, ptr %6, align 2, !tbaa !35
  %22 = sext i16 %21 to i32
  %23 = add nsw i32 %22, %20
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr %6, align 2, !tbaa !35
  br label %25

25:                                               ; preds = %15, %2
  %26 = load ptr, ptr %5, align 8, !tbaa !38
  %27 = load i16, ptr %6, align 2, !tbaa !35
  %28 = sext i16 %27 to i32
  %29 = mul nsw i32 %28, 8
  call void @BitBufferAdvance(ptr noundef %26, i32 noundef signext %29)
  %30 = load ptr, ptr %5, align 8, !tbaa !38
  %31 = getelementptr inbounds nuw %struct.BitBuffer, ptr %30, i32 0, i32 0
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = load ptr, ptr %5, align 8, !tbaa !38
  %34 = getelementptr inbounds nuw %struct.BitBuffer, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = icmp ule ptr %32, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %25
  store i32 -50, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %39

38:                                               ; preds = %25
  store i32 0, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %39

39:                                               ; preds = %38, %37
  call void @llvm.lifetime.end.p0(i64 2, ptr %6) #8
  %40 = load i32, ptr %3, align 4
  ret i32 %40
}

declare void @BitBufferByteAlign(ptr noundef, i32 noundef signext) #5

; Function Attrs: mustprogress nounwind
define internal void @_ZL6Zero16Psjj(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !42
  store i32 %1, ptr %5, align 4, !tbaa !19
  store i32 %2, ptr %6, align 4, !tbaa !19
  %8 = load i32, ptr %6, align 4, !tbaa !19
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !42
  %12 = load i32, ptr %5, align 4, !tbaa !19
  %13 = zext i32 %12 to i64
  %14 = mul i64 %13, 2
  call void @llvm.memset.p0.i64(ptr align 2 %11, i8 0, i64 %14, i1 false)
  br label %33

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  store i32 0, ptr %7, align 4, !tbaa !19
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i32, ptr %7, align 4, !tbaa !19
  %18 = load i32, ptr %5, align 4, !tbaa !19
  %19 = load i32, ptr %6, align 4, !tbaa !19
  %20 = mul i32 %18, %19
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  br label %32

23:                                               ; preds = %16
  %24 = load ptr, ptr %4, align 8, !tbaa !42
  %25 = load i32, ptr %7, align 4, !tbaa !19
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds nuw i16, ptr %24, i64 %26
  store i16 0, ptr %27, align 2, !tbaa !35
  br label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %6, align 4, !tbaa !19
  %30 = load i32, ptr %7, align 4, !tbaa !19
  %31 = add i32 %30, %29
  store i32 %31, ptr %7, align 4, !tbaa !19
  br label %16, !llvm.loop !65

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %10
  ret void
}

; Function Attrs: mustprogress nounwind
define internal void @_ZL6Zero24Phjj(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !20
  store i32 %1, ptr %5, align 4, !tbaa !19
  store i32 %2, ptr %6, align 4, !tbaa !19
  %8 = load i32, ptr %6, align 4, !tbaa !19
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !20
  %12 = load i32, ptr %5, align 4, !tbaa !19
  %13 = mul i32 %12, 3
  %14 = zext i32 %13 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %14, i1 false)
  br label %46

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  store i32 0, ptr %7, align 4, !tbaa !19
  br label %16

16:                                               ; preds = %40, %15
  %17 = load i32, ptr %7, align 4, !tbaa !19
  %18 = load i32, ptr %5, align 4, !tbaa !19
  %19 = load i32, ptr %6, align 4, !tbaa !19
  %20 = mul i32 %18, %19
  %21 = mul i32 %20, 3
  %22 = icmp ult i32 %17, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  br label %45

24:                                               ; preds = %16
  %25 = load ptr, ptr %4, align 8, !tbaa !20
  %26 = load i32, ptr %7, align 4, !tbaa !19
  %27 = add i32 %26, 0
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 %28
  store i8 0, ptr %29, align 1, !tbaa !22
  %30 = load ptr, ptr %4, align 8, !tbaa !20
  %31 = load i32, ptr %7, align 4, !tbaa !19
  %32 = add i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr %30, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !22
  %35 = load ptr, ptr %4, align 8, !tbaa !20
  %36 = load i32, ptr %7, align 4, !tbaa !19
  %37 = add i32 %36, 2
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 %38
  store i8 0, ptr %39, align 1, !tbaa !22
  br label %40

40:                                               ; preds = %24
  %41 = load i32, ptr %6, align 4, !tbaa !19
  %42 = mul i32 %41, 3
  %43 = load i32, ptr %7, align 4, !tbaa !19
  %44 = add i32 %43, %42
  store i32 %44, ptr %7, align 4, !tbaa !19
  br label %16, !llvm.loop !66

45:                                               ; preds = %23
  br label %46

46:                                               ; preds = %45, %10
  ret void
}

; Function Attrs: mustprogress nounwind
define internal void @_ZL6Zero32Pijj(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !40
  store i32 %1, ptr %5, align 4, !tbaa !19
  store i32 %2, ptr %6, align 4, !tbaa !19
  %8 = load i32, ptr %6, align 4, !tbaa !19
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !40
  %12 = load i32, ptr %5, align 4, !tbaa !19
  %13 = zext i32 %12 to i64
  %14 = mul i64 %13, 4
  call void @llvm.memset.p0.i64(ptr align 4 %11, i8 0, i64 %14, i1 false)
  br label %33

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  store i32 0, ptr %7, align 4, !tbaa !19
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i32, ptr %7, align 4, !tbaa !19
  %18 = load i32, ptr %5, align 4, !tbaa !19
  %19 = load i32, ptr %6, align 4, !tbaa !19
  %20 = mul i32 %18, %19
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  br label %32

23:                                               ; preds = %16
  %24 = load ptr, ptr %4, align 8, !tbaa !40
  %25 = load i32, ptr %7, align 4, !tbaa !19
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds nuw i32, ptr %24, i64 %26
  store i32 0, ptr %27, align 4, !tbaa !19
  br label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %6, align 4, !tbaa !19
  %30 = load i32, ptr %7, align 4, !tbaa !19
  %31 = add i32 %30, %29
  store i32 %31, ptr %7, align 4, !tbaa !19
  br label %16, !llvm.loop !67

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %10
  ret void
}

declare zeroext i8 @BitBufferReadOne(ptr noundef) #5

attributes #0 = { mustprogress nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { mustprogress "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 _ZTS11ALACDecoder", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !13, i64 32}
!9 = !{!"_ZTS11ALACDecoder", !10, i64 0, !12, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !14, i64 56}
!10 = !{!"_ZTS18ALACSpecificConfig", !11, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !6, i64 8, !6, i64 9, !12, i64 10, !11, i64 12, !11, i64 16, !11, i64 20}
!11 = !{!"int", !6, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!"p1 int", !5, i64 0}
!14 = !{!"p1 short", !5, i64 0}
!15 = !{!9, !13, i64 40}
!16 = !{!9, !13, i64 48}
!17 = !{!9, !14, i64 56}
!18 = !{!5, !5, i64 0}
!19 = !{!11, !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 omnipotent char", !5, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!10, !11, i64 0}
!24 = !{!10, !6, i64 4}
!25 = !{!10, !6, i64 5}
!26 = !{!10, !6, i64 6}
!27 = !{!10, !6, i64 7}
!28 = !{!10, !6, i64 8}
!29 = !{!10, !6, i64 9}
!30 = !{!10, !12, i64 10}
!31 = !{!10, !11, i64 12}
!32 = !{!10, !11, i64 16}
!33 = !{!10, !11, i64 20}
!34 = !{i64 0, i64 4, !19, i64 4, i64 1, !22, i64 5, i64 1, !22, i64 6, i64 1, !22, i64 7, i64 1, !22, i64 8, i64 1, !22, i64 9, i64 1, !22, i64 10, i64 2, !35, i64 12, i64 4, !19, i64 16, i64 4, !19, i64 20, i64 4, !19}
!35 = !{!12, !12, i64 0}
!36 = !{!9, !6, i64 4}
!37 = !{!9, !11, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTS9BitBuffer", !5, i64 0}
!40 = !{!13, !13, i64 0}
!41 = !{!9, !12, i64 24}
!42 = !{!14, !14, i64 0}
!43 = !{!44, !21, i64 0}
!44 = !{!"_ZTS9BitBuffer", !21, i64 0, !21, i64 8, !11, i64 16, !11, i64 20}
!45 = !{!44, !21, i64 8}
!46 = !{!9, !6, i64 6}
!47 = !{!9, !6, i64 5}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{i64 0, i64 8, !20, i64 8, i64 8, !20, i64 16, i64 4, !19, i64 20, i64 4, !19}
!51 = !{!9, !6, i64 7}
!52 = !{!9, !6, i64 8}
!53 = !{!9, !12, i64 10}
!54 = distinct !{!54, !49}
!55 = distinct !{!55, !49}
!56 = distinct !{!56, !49}
!57 = distinct !{!57, !49}
!58 = distinct !{!58, !49}
!59 = distinct !{!59, !49}
!60 = distinct !{!60, !49}
!61 = distinct !{!61, !49}
!62 = distinct !{!62, !49}
!63 = distinct !{!63, !49}
!64 = distinct !{!64, !49}
!65 = distinct !{!65, !49}
!66 = distinct !{!66, !49}
!67 = distinct !{!67, !49}
