; ModuleID = './MultiSource/Applications/ALAC/encode/CMakeFiles/alacconvert-encode.dir/ALACEncoder.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/ALAC/encode/ALACEncoder.cpp"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%class.ALACEncoder = type <{ ptr, i16, i8, i8, [8 x i16], [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, [8 x [16 x [16 x i16]]], [8 x [16 x [16 x i16]]], i32, i32, i32, i32, i32, i32, i32, [4 x i8] }>
%struct.BitBuffer = type { ptr, ptr, i32, i32 }
%struct.AGParamRec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.AudioFormatDescription = type { double, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ALACSpecificConfig = type { i32, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32 }
%struct.ALACAudioChannelLayout = type { i32, i32, i32 }

@_ZTV11ALACEncoder = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI11ALACEncoder, ptr @_ZN11ALACEncoderD1Ev, ptr @_ZN11ALACEncoderD0Ev, ptr @_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi, ptr @_ZN11ALACEncoder6FinishEv, ptr @_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription, ptr @_ZN11ALACEncoder15GetSourceFormatEPK22AudioFormatDescriptionPS0_] }, align 8
@.str = private unnamed_addr constant [38 x i8] c"compressed frame too big: %u vs. %u \0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"compressed frame too big: %u vs. %u\0A\00", align 1
@_ZL12sChannelMaps = internal constant [8 x i32] [i32 0, i32 1, i32 8, i32 8, i32 520, i32 520, i32 520, i32 33288], align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"That ain't right! (%u)\0A\00", align 1
@__const._ZN11ALACEncoder14GetMagicCookieEPvPj.theChannelAtom = private unnamed_addr constant [12 x i8] c"\00\00\00\00chan\00\00\00\00", align 1
@_ZL21ALACChannelLayoutTags = internal constant [8 x i32] [i32 6553601, i32 6619138, i32 7405571, i32 7602180, i32 7864325, i32 8126470, i32 9306119, i32 8323080], align 4
@_ZTI11ALACEncoder = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS11ALACEncoder }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS11ALACEncoder = dso_local constant [14 x i8] c"11ALACEncoder\00", align 1

@_ZN11ALACEncoderC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ALACEncoderC2Ev
@_ZN11ALACEncoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ALACEncoderD2Ev

; Function Attrs: mustprogress nounwind
define dso_local void @_ZN11ALACEncoderC2Ev(ptr noundef nonnull align 8 dereferenceable(8300) %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTV11ALACEncoder, i32 0, i32 0, i32 2), ptr %3, align 8, !tbaa !8
  %4 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 1
  store i16 0, ptr %4, align 8, !tbaa !10
  %5 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 2
  store i8 0, ptr %5, align 2, !tbaa !18
  %6 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 6
  store ptr null, ptr %6, align 8, !tbaa !19
  %7 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 7
  store ptr null, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 8
  store ptr null, ptr %8, align 8, !tbaa !21
  %9 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 9
  store ptr null, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 10
  store ptr null, ptr %10, align 8, !tbaa !23
  %11 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 11
  store ptr null, ptr %11, align 8, !tbaa !24
  %12 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 14
  store i32 0, ptr %12, align 8, !tbaa !25
  %13 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 15
  store i32 0, ptr %13, align 4, !tbaa !26
  %14 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 16
  store i32 0, ptr %14, align 8, !tbaa !27
  %15 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 17
  store i32 4096, ptr %15, align 4, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nounwind
define dso_local void @_ZN11ALACEncoderD2Ev(ptr noundef nonnull align 8 dereferenceable(8300) %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTV11ALACEncoder, i32 0, i32 0, i32 2), ptr %3, align 8, !tbaa !8
  %4 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  call void @free(ptr noundef %9) #9
  %10 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 6
  store ptr null, ptr %10, align 8, !tbaa !19
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  call void @free(ptr noundef %17) #9
  %18 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 7
  store ptr null, ptr %18, align 8, !tbaa !20
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !21
  call void @free(ptr noundef %25) #9
  %26 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 8
  store ptr null, ptr %26, align 8, !tbaa !21
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = icmp ne ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  call void @free(ptr noundef %33) #9
  %34 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 9
  store ptr null, ptr %34, align 8, !tbaa !22
  br label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !23
  %38 = icmp ne ptr %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !23
  call void @free(ptr noundef %41) #9
  %42 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 10
  store ptr null, ptr %42, align 8, !tbaa !23
  br label %43

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 11
  %45 = load ptr, ptr %44, align 8, !tbaa !24
  %46 = icmp ne ptr %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 11
  %49 = load ptr, ptr %48, align 8, !tbaa !24
  call void @free(ptr noundef %49) #9
  %50 = getelementptr inbounds nuw %class.ALACEncoder, ptr %3, i32 0, i32 11
  store ptr null, ptr %50, align 8, !tbaa !24
  br label %51

51:                                               ; preds = %47, %43
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: mustprogress nounwind
define dso_local void @_ZN11ALACEncoderD0Ev(ptr noundef nonnull align 8 dereferenceable(8300) %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8
  call void @_ZN11ALACEncoderD1Ev(ptr noundef nonnull align 8 dereferenceable(8300) %3) #9
  call void @_ZdlPvm(ptr noundef %3, i64 noundef 8304) #10
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress
define dso_local noundef signext i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) #3 align 2 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.BitBuffer, align 8
  %15 = alloca %struct.BitBuffer, align 8
  %16 = alloca %struct.AGParamRec, align 4
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
  %32 = alloca i8, align 1
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8, align 1
  %37 = alloca i32, align 4
  %38 = alloca i8, align 1
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store ptr %0, ptr %8, align 8, !tbaa !3
  store ptr %1, ptr %9, align 8, !tbaa !29
  store ptr %2, ptr %10, align 8, !tbaa !31
  store i32 %3, ptr %11, align 4, !tbaa !32
  store i32 %4, ptr %12, align 4, !tbaa !32
  store i32 %5, ptr %13, align 4, !tbaa !32
  %46 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr %14) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr %15) #9
  %47 = load ptr, ptr %9, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %15, ptr align 8 %47, i64 24, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.start.p0(i64 36, ptr %16) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %29) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %30) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %31) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %32) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %33) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %34) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %35) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %36) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %37) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %38) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %39) #9
  store i32 0, ptr %39, align 4, !tbaa !32
  %48 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 1
  %49 = load i16, ptr %48, align 8, !tbaa !10
  %50 = sext i16 %49 to i32
  %51 = icmp eq i32 %50, 16
  br i1 %51, label %68, label %52

52:                                               ; preds = %6
  %53 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 1
  %54 = load i16, ptr %53, align 8, !tbaa !10
  %55 = sext i16 %54 to i32
  %56 = icmp eq i32 %55, 20
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 1
  %59 = load i16, ptr %58, align 8, !tbaa !10
  %60 = sext i16 %59 to i32
  %61 = icmp eq i32 %60, 24
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 1
  %64 = load i16, ptr %63, align 8, !tbaa !10
  %65 = sext i16 %64 to i32
  %66 = icmp eq i32 %65, 32
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 -50, ptr %7, align 4
  store i32 1, ptr %40, align 4
  br label %746

68:                                               ; preds = %62, %57, %52, %6
  %69 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 12
  %70 = load i32, ptr %12, align 4, !tbaa !32
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds nuw [8 x [16 x [16 x i16]]], ptr %69, i64 0, i64 %71
  %73 = getelementptr inbounds [16 x [16 x i16]], ptr %72, i64 0, i64 0
  store ptr %73, ptr %33, align 8, !tbaa !35
  %74 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 13
  %75 = load i32, ptr %12, align 4, !tbaa !32
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds nuw [8 x [16 x [16 x i16]]], ptr %74, i64 0, i64 %76
  %78 = getelementptr inbounds [16 x [16 x i16]], ptr %77, i64 0, i64 0
  store ptr %78, ptr %34, align 8, !tbaa !35
  %79 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 1
  %80 = load i16, ptr %79, align 8, !tbaa !10
  %81 = sext i16 %80 to i32
  %82 = icmp eq i32 %81, 32
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  store i8 2, ptr %32, align 1, !tbaa !36
  br label %92

84:                                               ; preds = %68
  %85 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 1
  %86 = load i16, ptr %85, align 8, !tbaa !10
  %87 = sext i16 %86 to i32
  %88 = icmp sge i32 %87, 24
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i8 1, ptr %32, align 1, !tbaa !36
  br label %91

90:                                               ; preds = %84
  store i8 0, ptr %32, align 1, !tbaa !36
  br label %91

91:                                               ; preds = %90, %89
  br label %92

92:                                               ; preds = %91, %83
  %93 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 1
  %94 = load i16, ptr %93, align 8, !tbaa !10
  %95 = sext i16 %94 to i32
  %96 = load i8, ptr %32, align 1, !tbaa !36
  %97 = zext i8 %96 to i32
  %98 = mul nsw i32 %97, 8
  %99 = sub nsw i32 %95, %98
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %30, align 4, !tbaa !32
  %101 = load i32, ptr %13, align 4, !tbaa !32
  %102 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 17
  %103 = load i32, ptr %102, align 4, !tbaa !28
  %104 = icmp eq i32 %101, %103
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 0, i32 1
  %107 = trunc i32 %106 to i8
  store i8 %107, ptr %36, align 1, !tbaa !36
  store i32 2, ptr %20, align 4, !tbaa !32
  store i32 4, ptr %22, align 4, !tbaa !32
  store i32 8, ptr %27, align 4, !tbaa !32
  store i32 8, ptr %26, align 4, !tbaa !32
  store i32 9, ptr %31, align 4, !tbaa !32
  store i32 0, ptr %28, align 4, !tbaa !32
  store i32 4, ptr %29, align 4, !tbaa !32
  store i32 8, ptr %19, align 4, !tbaa !32
  store i32 -2147483648, ptr %25, align 4, !tbaa !32
  store i32 -2147483648, ptr %24, align 4, !tbaa !32
  store i32 -2147483648, ptr %23, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %41) #9
  %108 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 4
  %109 = load i32, ptr %12, align 4, !tbaa !32
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds nuw [8 x i16], ptr %108, i64 0, i64 %110
  %112 = load i16, ptr %111, align 2, !tbaa !37
  %113 = sext i16 %112 to i32
  store i32 %113, ptr %41, align 4, !tbaa !32
  store i32 0, ptr %21, align 4, !tbaa !32
  br label %114

114:                                              ; preds = %264, %92
  %115 = load i32, ptr %21, align 4, !tbaa !32
  %116 = load i32, ptr %22, align 4, !tbaa !32
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %267

118:                                              ; preds = %114
  %119 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 1
  %120 = load i16, ptr %119, align 8, !tbaa !10
  %121 = sext i16 %120 to i32
  switch i32 %121, label %178 [
    i32 16, label %122
    i32 20, label %134
    i32 24, label %146
    i32 32, label %162
  ]

122:                                              ; preds = %118
  %123 = load ptr, ptr %10, align 8, !tbaa !31
  %124 = load i32, ptr %11, align 4, !tbaa !32
  %125 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 6
  %126 = load ptr, ptr %125, align 8, !tbaa !19
  %127 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 7
  %128 = load ptr, ptr %127, align 8, !tbaa !20
  %129 = load i32, ptr %13, align 4, !tbaa !32
  %130 = load i32, ptr %19, align 4, !tbaa !32
  %131 = udiv i32 %129, %130
  %132 = load i32, ptr %20, align 4, !tbaa !32
  %133 = load i32, ptr %21, align 4, !tbaa !32
  call void @mix16(ptr noundef %123, i32 noundef signext %124, ptr noundef %126, ptr noundef %128, i32 noundef signext %131, i32 noundef signext %132, i32 noundef signext %133)
  br label %178

134:                                              ; preds = %118
  %135 = load ptr, ptr %10, align 8, !tbaa !31
  %136 = load i32, ptr %11, align 4, !tbaa !32
  %137 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 6
  %138 = load ptr, ptr %137, align 8, !tbaa !19
  %139 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 7
  %140 = load ptr, ptr %139, align 8, !tbaa !20
  %141 = load i32, ptr %13, align 4, !tbaa !32
  %142 = load i32, ptr %19, align 4, !tbaa !32
  %143 = udiv i32 %141, %142
  %144 = load i32, ptr %20, align 4, !tbaa !32
  %145 = load i32, ptr %21, align 4, !tbaa !32
  call void @mix20(ptr noundef %135, i32 noundef signext %136, ptr noundef %138, ptr noundef %140, i32 noundef signext %143, i32 noundef signext %144, i32 noundef signext %145)
  br label %178

146:                                              ; preds = %118
  %147 = load ptr, ptr %10, align 8, !tbaa !31
  %148 = load i32, ptr %11, align 4, !tbaa !32
  %149 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 6
  %150 = load ptr, ptr %149, align 8, !tbaa !19
  %151 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 7
  %152 = load ptr, ptr %151, align 8, !tbaa !20
  %153 = load i32, ptr %13, align 4, !tbaa !32
  %154 = load i32, ptr %19, align 4, !tbaa !32
  %155 = udiv i32 %153, %154
  %156 = load i32, ptr %20, align 4, !tbaa !32
  %157 = load i32, ptr %21, align 4, !tbaa !32
  %158 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 10
  %159 = load ptr, ptr %158, align 8, !tbaa !23
  %160 = load i8, ptr %32, align 1, !tbaa !36
  %161 = zext i8 %160 to i32
  call void @mix24(ptr noundef %147, i32 noundef signext %148, ptr noundef %150, ptr noundef %152, i32 noundef signext %155, i32 noundef signext %156, i32 noundef signext %157, ptr noundef %159, i32 noundef signext %161)
  br label %178

162:                                              ; preds = %118
  %163 = load ptr, ptr %10, align 8, !tbaa !31
  %164 = load i32, ptr %11, align 4, !tbaa !32
  %165 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 6
  %166 = load ptr, ptr %165, align 8, !tbaa !19
  %167 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 7
  %168 = load ptr, ptr %167, align 8, !tbaa !20
  %169 = load i32, ptr %13, align 4, !tbaa !32
  %170 = load i32, ptr %19, align 4, !tbaa !32
  %171 = udiv i32 %169, %170
  %172 = load i32, ptr %20, align 4, !tbaa !32
  %173 = load i32, ptr %21, align 4, !tbaa !32
  %174 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 10
  %175 = load ptr, ptr %174, align 8, !tbaa !23
  %176 = load i8, ptr %32, align 1, !tbaa !36
  %177 = zext i8 %176 to i32
  call void @mix32(ptr noundef %163, i32 noundef signext %164, ptr noundef %166, ptr noundef %168, i32 noundef signext %171, i32 noundef signext %172, i32 noundef signext %173, ptr noundef %175, i32 noundef signext %177)
  br label %178

178:                                              ; preds = %118, %162, %146, %134, %122
  %179 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 11
  %180 = load ptr, ptr %179, align 8, !tbaa !24
  %181 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 18
  %182 = load i32, ptr %181, align 8, !tbaa !38
  call void @BitBufferInit(ptr noundef %14, ptr noundef %180, i32 noundef signext %182)
  %183 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 6
  %184 = load ptr, ptr %183, align 8, !tbaa !19
  %185 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 8
  %186 = load ptr, ptr %185, align 8, !tbaa !21
  %187 = load i32, ptr %13, align 4, !tbaa !32
  %188 = load i32, ptr %19, align 4, !tbaa !32
  %189 = udiv i32 %187, %188
  %190 = load ptr, ptr %33, align 8, !tbaa !35
  %191 = load i32, ptr %26, align 4, !tbaa !32
  %192 = sub i32 %191, 1
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds nuw [16 x i16], ptr %190, i64 %193
  %195 = getelementptr inbounds [16 x i16], ptr %194, i64 0, i64 0
  %196 = load i32, ptr %26, align 4, !tbaa !32
  %197 = load i32, ptr %30, align 4, !tbaa !32
  call void @pc_block(ptr noundef %184, ptr noundef %186, i32 noundef signext %189, ptr noundef %195, i32 noundef signext %196, i32 noundef signext %197, i32 noundef signext 9)
  %198 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 7
  %199 = load ptr, ptr %198, align 8, !tbaa !20
  %200 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 9
  %201 = load ptr, ptr %200, align 8, !tbaa !22
  %202 = load i32, ptr %13, align 4, !tbaa !32
  %203 = load i32, ptr %19, align 4, !tbaa !32
  %204 = udiv i32 %202, %203
  %205 = load ptr, ptr %34, align 8, !tbaa !35
  %206 = load i32, ptr %27, align 4, !tbaa !32
  %207 = sub i32 %206, 1
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds nuw [16 x i16], ptr %205, i64 %208
  %210 = getelementptr inbounds [16 x i16], ptr %209, i64 0, i64 0
  %211 = load i32, ptr %27, align 4, !tbaa !32
  %212 = load i32, ptr %30, align 4, !tbaa !32
  call void @pc_block(ptr noundef %199, ptr noundef %201, i32 noundef signext %204, ptr noundef %210, i32 noundef signext %211, i32 noundef signext %212, i32 noundef signext 9)
  %213 = load i32, ptr %29, align 4, !tbaa !32
  %214 = mul i32 %213, 40
  %215 = udiv i32 %214, 4
  %216 = load i32, ptr %13, align 4, !tbaa !32
  %217 = load i32, ptr %19, align 4, !tbaa !32
  %218 = udiv i32 %216, %217
  %219 = load i32, ptr %13, align 4, !tbaa !32
  %220 = load i32, ptr %19, align 4, !tbaa !32
  %221 = udiv i32 %219, %220
  call void @set_ag_params(ptr noundef %16, i32 noundef signext 10, i32 noundef signext %215, i32 noundef signext 14, i32 noundef signext %218, i32 noundef signext %221, i32 noundef signext 255)
  %222 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 8
  %223 = load ptr, ptr %222, align 8, !tbaa !21
  %224 = load i32, ptr %13, align 4, !tbaa !32
  %225 = load i32, ptr %19, align 4, !tbaa !32
  %226 = udiv i32 %224, %225
  %227 = load i32, ptr %30, align 4, !tbaa !32
  %228 = call signext i32 @dyn_comp(ptr noundef %16, ptr noundef %223, ptr noundef %14, i32 noundef signext %226, i32 noundef signext %227, ptr noundef %17)
  store i32 %228, ptr %39, align 4, !tbaa !32
  %229 = load i32, ptr %39, align 4, !tbaa !32
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %178
  br label %744

232:                                              ; preds = %178
  %233 = load i32, ptr %29, align 4, !tbaa !32
  %234 = mul i32 %233, 40
  %235 = udiv i32 %234, 4
  %236 = load i32, ptr %13, align 4, !tbaa !32
  %237 = load i32, ptr %19, align 4, !tbaa !32
  %238 = udiv i32 %236, %237
  %239 = load i32, ptr %13, align 4, !tbaa !32
  %240 = load i32, ptr %19, align 4, !tbaa !32
  %241 = udiv i32 %239, %240
  call void @set_ag_params(ptr noundef %16, i32 noundef signext 10, i32 noundef signext %235, i32 noundef signext 14, i32 noundef signext %238, i32 noundef signext %241, i32 noundef signext 255)
  %242 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 9
  %243 = load ptr, ptr %242, align 8, !tbaa !22
  %244 = load i32, ptr %13, align 4, !tbaa !32
  %245 = load i32, ptr %19, align 4, !tbaa !32
  %246 = udiv i32 %244, %245
  %247 = load i32, ptr %30, align 4, !tbaa !32
  %248 = call signext i32 @dyn_comp(ptr noundef %16, ptr noundef %243, ptr noundef %14, i32 noundef signext %246, i32 noundef signext %247, ptr noundef %18)
  store i32 %248, ptr %39, align 4, !tbaa !32
  %249 = load i32, ptr %39, align 4, !tbaa !32
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %232
  br label %744

252:                                              ; preds = %232
  %253 = load i32, ptr %17, align 4, !tbaa !32
  %254 = load i32, ptr %18, align 4, !tbaa !32
  %255 = add i32 %253, %254
  %256 = load i32, ptr %24, align 4, !tbaa !32
  %257 = icmp ult i32 %255, %256
  br i1 %257, label %258, label %263

258:                                              ; preds = %252
  %259 = load i32, ptr %17, align 4, !tbaa !32
  %260 = load i32, ptr %18, align 4, !tbaa !32
  %261 = add i32 %259, %260
  store i32 %261, ptr %24, align 4, !tbaa !32
  %262 = load i32, ptr %21, align 4, !tbaa !32
  store i32 %262, ptr %41, align 4, !tbaa !32
  br label %263

263:                                              ; preds = %258, %252
  br label %264

264:                                              ; preds = %263
  %265 = load i32, ptr %21, align 4, !tbaa !32
  %266 = add nsw i32 %265, 1
  store i32 %266, ptr %21, align 4, !tbaa !32
  br label %114, !llvm.loop !39

267:                                              ; preds = %114
  %268 = load i32, ptr %41, align 4, !tbaa !32
  %269 = trunc i32 %268 to i16
  %270 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 4
  %271 = load i32, ptr %12, align 4, !tbaa !32
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds nuw [8 x i16], ptr %270, i64 0, i64 %272
  store i16 %269, ptr %273, align 2, !tbaa !37
  %274 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 4
  %275 = load i32, ptr %12, align 4, !tbaa !32
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds nuw [8 x i16], ptr %274, i64 0, i64 %276
  %278 = load i16, ptr %277, align 2, !tbaa !37
  %279 = sext i16 %278 to i32
  store i32 %279, ptr %21, align 4, !tbaa !32
  %280 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 1
  %281 = load i16, ptr %280, align 8, !tbaa !10
  %282 = sext i16 %281 to i32
  switch i32 %282, label %331 [
    i32 16, label %283
    i32 20, label %293
    i32 24, label %303
    i32 32, label %317
  ]

283:                                              ; preds = %267
  %284 = load ptr, ptr %10, align 8, !tbaa !31
  %285 = load i32, ptr %11, align 4, !tbaa !32
  %286 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 6
  %287 = load ptr, ptr %286, align 8, !tbaa !19
  %288 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 7
  %289 = load ptr, ptr %288, align 8, !tbaa !20
  %290 = load i32, ptr %13, align 4, !tbaa !32
  %291 = load i32, ptr %20, align 4, !tbaa !32
  %292 = load i32, ptr %21, align 4, !tbaa !32
  call void @mix16(ptr noundef %284, i32 noundef signext %285, ptr noundef %287, ptr noundef %289, i32 noundef signext %290, i32 noundef signext %291, i32 noundef signext %292)
  br label %331

293:                                              ; preds = %267
  %294 = load ptr, ptr %10, align 8, !tbaa !31
  %295 = load i32, ptr %11, align 4, !tbaa !32
  %296 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 6
  %297 = load ptr, ptr %296, align 8, !tbaa !19
  %298 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 7
  %299 = load ptr, ptr %298, align 8, !tbaa !20
  %300 = load i32, ptr %13, align 4, !tbaa !32
  %301 = load i32, ptr %20, align 4, !tbaa !32
  %302 = load i32, ptr %21, align 4, !tbaa !32
  call void @mix20(ptr noundef %294, i32 noundef signext %295, ptr noundef %297, ptr noundef %299, i32 noundef signext %300, i32 noundef signext %301, i32 noundef signext %302)
  br label %331

303:                                              ; preds = %267
  %304 = load ptr, ptr %10, align 8, !tbaa !31
  %305 = load i32, ptr %11, align 4, !tbaa !32
  %306 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 6
  %307 = load ptr, ptr %306, align 8, !tbaa !19
  %308 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 7
  %309 = load ptr, ptr %308, align 8, !tbaa !20
  %310 = load i32, ptr %13, align 4, !tbaa !32
  %311 = load i32, ptr %20, align 4, !tbaa !32
  %312 = load i32, ptr %21, align 4, !tbaa !32
  %313 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 10
  %314 = load ptr, ptr %313, align 8, !tbaa !23
  %315 = load i8, ptr %32, align 1, !tbaa !36
  %316 = zext i8 %315 to i32
  call void @mix24(ptr noundef %304, i32 noundef signext %305, ptr noundef %307, ptr noundef %309, i32 noundef signext %310, i32 noundef signext %311, i32 noundef signext %312, ptr noundef %314, i32 noundef signext %316)
  br label %331

317:                                              ; preds = %267
  %318 = load ptr, ptr %10, align 8, !tbaa !31
  %319 = load i32, ptr %11, align 4, !tbaa !32
  %320 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 6
  %321 = load ptr, ptr %320, align 8, !tbaa !19
  %322 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 7
  %323 = load ptr, ptr %322, align 8, !tbaa !20
  %324 = load i32, ptr %13, align 4, !tbaa !32
  %325 = load i32, ptr %20, align 4, !tbaa !32
  %326 = load i32, ptr %21, align 4, !tbaa !32
  %327 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 10
  %328 = load ptr, ptr %327, align 8, !tbaa !23
  %329 = load i8, ptr %32, align 1, !tbaa !36
  %330 = zext i8 %329 to i32
  call void @mix32(ptr noundef %318, i32 noundef signext %319, ptr noundef %321, ptr noundef %323, i32 noundef signext %324, i32 noundef signext %325, i32 noundef signext %326, ptr noundef %328, i32 noundef signext %330)
  br label %331

331:                                              ; preds = %267, %317, %303, %293, %283
  store i32 4, ptr %27, align 4, !tbaa !32
  store i32 4, ptr %26, align 4, !tbaa !32
  store i32 -2147483648, ptr %25, align 4, !tbaa !32
  store i32 -2147483648, ptr %24, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %42) #9
  store i32 4, ptr %42, align 4, !tbaa !32
  br label %332

332:                                              ; preds = %446, %331
  %333 = load i32, ptr %42, align 4, !tbaa !32
  %334 = icmp ule i32 %333, 8
  br i1 %334, label %336, label %335

335:                                              ; preds = %332
  store i32 8, ptr %40, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %42) #9
  br label %449

336:                                              ; preds = %332
  %337 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 11
  %338 = load ptr, ptr %337, align 8, !tbaa !24
  %339 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 18
  %340 = load i32, ptr %339, align 8, !tbaa !38
  call void @BitBufferInit(ptr noundef %14, ptr noundef %338, i32 noundef signext %340)
  store i32 32, ptr %19, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %43) #9
  store i32 0, ptr %43, align 4, !tbaa !32
  br label %341

341:                                              ; preds = %376, %336
  %342 = load i32, ptr %43, align 4, !tbaa !32
  %343 = icmp ult i32 %342, 8
  br i1 %343, label %345, label %344

344:                                              ; preds = %341
  store i32 11, ptr %40, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %43) #9
  br label %379

345:                                              ; preds = %341
  %346 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 6
  %347 = load ptr, ptr %346, align 8, !tbaa !19
  %348 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 8
  %349 = load ptr, ptr %348, align 8, !tbaa !21
  %350 = load i32, ptr %13, align 4, !tbaa !32
  %351 = load i32, ptr %19, align 4, !tbaa !32
  %352 = udiv i32 %350, %351
  %353 = load ptr, ptr %33, align 8, !tbaa !35
  %354 = load i32, ptr %42, align 4, !tbaa !32
  %355 = sub i32 %354, 1
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds nuw [16 x i16], ptr %353, i64 %356
  %358 = getelementptr inbounds [16 x i16], ptr %357, i64 0, i64 0
  %359 = load i32, ptr %42, align 4, !tbaa !32
  %360 = load i32, ptr %30, align 4, !tbaa !32
  call void @pc_block(ptr noundef %347, ptr noundef %349, i32 noundef signext %352, ptr noundef %358, i32 noundef signext %359, i32 noundef signext %360, i32 noundef signext 9)
  %361 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 7
  %362 = load ptr, ptr %361, align 8, !tbaa !20
  %363 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 9
  %364 = load ptr, ptr %363, align 8, !tbaa !22
  %365 = load i32, ptr %13, align 4, !tbaa !32
  %366 = load i32, ptr %19, align 4, !tbaa !32
  %367 = udiv i32 %365, %366
  %368 = load ptr, ptr %34, align 8, !tbaa !35
  %369 = load i32, ptr %42, align 4, !tbaa !32
  %370 = sub i32 %369, 1
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds nuw [16 x i16], ptr %368, i64 %371
  %373 = getelementptr inbounds [16 x i16], ptr %372, i64 0, i64 0
  %374 = load i32, ptr %42, align 4, !tbaa !32
  %375 = load i32, ptr %30, align 4, !tbaa !32
  call void @pc_block(ptr noundef %362, ptr noundef %364, i32 noundef signext %367, ptr noundef %373, i32 noundef signext %374, i32 noundef signext %375, i32 noundef signext 9)
  br label %376

376:                                              ; preds = %345
  %377 = load i32, ptr %43, align 4, !tbaa !32
  %378 = add i32 %377, 1
  store i32 %378, ptr %43, align 4, !tbaa !32
  br label %341, !llvm.loop !41

379:                                              ; preds = %344
  store i32 8, ptr %19, align 4, !tbaa !32
  %380 = load i32, ptr %29, align 4, !tbaa !32
  %381 = mul i32 %380, 40
  %382 = udiv i32 %381, 4
  %383 = load i32, ptr %13, align 4, !tbaa !32
  %384 = load i32, ptr %19, align 4, !tbaa !32
  %385 = udiv i32 %383, %384
  %386 = load i32, ptr %13, align 4, !tbaa !32
  %387 = load i32, ptr %19, align 4, !tbaa !32
  %388 = udiv i32 %386, %387
  call void @set_ag_params(ptr noundef %16, i32 noundef signext 10, i32 noundef signext %382, i32 noundef signext 14, i32 noundef signext %385, i32 noundef signext %388, i32 noundef signext 255)
  %389 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 8
  %390 = load ptr, ptr %389, align 8, !tbaa !21
  %391 = load i32, ptr %13, align 4, !tbaa !32
  %392 = load i32, ptr %19, align 4, !tbaa !32
  %393 = udiv i32 %391, %392
  %394 = load i32, ptr %30, align 4, !tbaa !32
  %395 = call signext i32 @dyn_comp(ptr noundef %16, ptr noundef %390, ptr noundef %14, i32 noundef signext %393, i32 noundef signext %394, ptr noundef %17)
  store i32 %395, ptr %39, align 4, !tbaa !32
  %396 = load i32, ptr %17, align 4, !tbaa !32
  %397 = load i32, ptr %19, align 4, !tbaa !32
  %398 = mul i32 %396, %397
  %399 = load i32, ptr %42, align 4, !tbaa !32
  %400 = mul i32 16, %399
  %401 = add i32 %398, %400
  %402 = load i32, ptr %24, align 4, !tbaa !32
  %403 = icmp ult i32 %401, %402
  br i1 %403, label %404, label %412

404:                                              ; preds = %379
  %405 = load i32, ptr %17, align 4, !tbaa !32
  %406 = load i32, ptr %19, align 4, !tbaa !32
  %407 = mul i32 %405, %406
  %408 = load i32, ptr %42, align 4, !tbaa !32
  %409 = mul i32 16, %408
  %410 = add i32 %407, %409
  store i32 %410, ptr %24, align 4, !tbaa !32
  %411 = load i32, ptr %42, align 4, !tbaa !32
  store i32 %411, ptr %26, align 4, !tbaa !32
  br label %412

412:                                              ; preds = %404, %379
  %413 = load i32, ptr %29, align 4, !tbaa !32
  %414 = mul i32 %413, 40
  %415 = udiv i32 %414, 4
  %416 = load i32, ptr %13, align 4, !tbaa !32
  %417 = load i32, ptr %19, align 4, !tbaa !32
  %418 = udiv i32 %416, %417
  %419 = load i32, ptr %13, align 4, !tbaa !32
  %420 = load i32, ptr %19, align 4, !tbaa !32
  %421 = udiv i32 %419, %420
  call void @set_ag_params(ptr noundef %16, i32 noundef signext 10, i32 noundef signext %415, i32 noundef signext 14, i32 noundef signext %418, i32 noundef signext %421, i32 noundef signext 255)
  %422 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 9
  %423 = load ptr, ptr %422, align 8, !tbaa !22
  %424 = load i32, ptr %13, align 4, !tbaa !32
  %425 = load i32, ptr %19, align 4, !tbaa !32
  %426 = udiv i32 %424, %425
  %427 = load i32, ptr %30, align 4, !tbaa !32
  %428 = call signext i32 @dyn_comp(ptr noundef %16, ptr noundef %423, ptr noundef %14, i32 noundef signext %426, i32 noundef signext %427, ptr noundef %18)
  store i32 %428, ptr %39, align 4, !tbaa !32
  %429 = load i32, ptr %18, align 4, !tbaa !32
  %430 = load i32, ptr %19, align 4, !tbaa !32
  %431 = mul i32 %429, %430
  %432 = load i32, ptr %42, align 4, !tbaa !32
  %433 = mul i32 16, %432
  %434 = add i32 %431, %433
  %435 = load i32, ptr %25, align 4, !tbaa !32
  %436 = icmp ult i32 %434, %435
  br i1 %436, label %437, label %445

437:                                              ; preds = %412
  %438 = load i32, ptr %18, align 4, !tbaa !32
  %439 = load i32, ptr %19, align 4, !tbaa !32
  %440 = mul i32 %438, %439
  %441 = load i32, ptr %42, align 4, !tbaa !32
  %442 = mul i32 16, %441
  %443 = add i32 %440, %442
  store i32 %443, ptr %25, align 4, !tbaa !32
  %444 = load i32, ptr %42, align 4, !tbaa !32
  store i32 %444, ptr %27, align 4, !tbaa !32
  br label %445

445:                                              ; preds = %437, %412
  br label %446

446:                                              ; preds = %445
  %447 = load i32, ptr %42, align 4, !tbaa !32
  %448 = add i32 %447, 4
  store i32 %448, ptr %42, align 4, !tbaa !32
  br label %332, !llvm.loop !42

449:                                              ; preds = %335
  %450 = load i32, ptr %24, align 4, !tbaa !32
  %451 = load i32, ptr %25, align 4, !tbaa !32
  %452 = add i32 %450, %451
  %453 = add i32 %452, 64
  %454 = load i8, ptr %36, align 1, !tbaa !36
  %455 = zext i8 %454 to i32
  %456 = icmp eq i32 %455, 1
  %457 = zext i1 %456 to i64
  %458 = select i1 %456, i32 32, i32 0
  %459 = add i32 %453, %458
  store i32 %459, ptr %23, align 4, !tbaa !32
  %460 = load i8, ptr %32, align 1, !tbaa !36
  %461 = zext i8 %460 to i32
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %472

463:                                              ; preds = %449
  %464 = load i32, ptr %13, align 4, !tbaa !32
  %465 = load i8, ptr %32, align 1, !tbaa !36
  %466 = zext i8 %465 to i32
  %467 = mul nsw i32 %466, 8
  %468 = mul i32 %464, %467
  %469 = mul i32 %468, 2
  %470 = load i32, ptr %23, align 4, !tbaa !32
  %471 = add i32 %470, %469
  store i32 %471, ptr %23, align 4, !tbaa !32
  br label %472

472:                                              ; preds = %463, %449
  %473 = load i32, ptr %13, align 4, !tbaa !32
  %474 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 1
  %475 = load i16, ptr %474, align 8, !tbaa !10
  %476 = sext i16 %475 to i32
  %477 = mul i32 %473, %476
  %478 = mul i32 %477, 2
  %479 = load i8, ptr %36, align 1, !tbaa !36
  %480 = zext i8 %479 to i32
  %481 = icmp eq i32 %480, 1
  %482 = zext i1 %481 to i64
  %483 = select i1 %481, i32 32, i32 0
  %484 = add i32 %478, %483
  %485 = add i32 %484, 16
  store i32 %485, ptr %37, align 4, !tbaa !32
  %486 = load i32, ptr %23, align 4, !tbaa !32
  %487 = load i32, ptr %37, align 4, !tbaa !32
  %488 = icmp uge i32 %486, %487
  %489 = zext i1 %488 to i64
  %490 = select i1 %488, i1 true, i1 false
  %491 = zext i1 %490 to i8
  store i8 %491, ptr %38, align 1, !tbaa !43
  %492 = load i8, ptr %38, align 1, !tbaa !43, !range !44, !noundef !45
  %493 = trunc i8 %492 to i1
  %494 = zext i1 %493 to i32
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %732

496:                                              ; preds = %472
  %497 = load ptr, ptr %9, align 8, !tbaa !29
  call void @BitBufferWrite(ptr noundef %497, i32 noundef signext 0, i32 noundef signext 12)
  %498 = load ptr, ptr %9, align 8, !tbaa !29
  %499 = load i8, ptr %36, align 1, !tbaa !36
  %500 = zext i8 %499 to i32
  %501 = shl i32 %500, 3
  %502 = load i8, ptr %32, align 1, !tbaa !36
  %503 = zext i8 %502 to i32
  %504 = shl i32 %503, 1
  %505 = or i32 %501, %504
  call void @BitBufferWrite(ptr noundef %498, i32 noundef signext %505, i32 noundef signext 4)
  %506 = load i8, ptr %36, align 1, !tbaa !36
  %507 = icmp ne i8 %506, 0
  br i1 %507, label %508, label %511

508:                                              ; preds = %496
  %509 = load ptr, ptr %9, align 8, !tbaa !29
  %510 = load i32, ptr %13, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %509, i32 noundef signext %510, i32 noundef signext 32)
  br label %511

511:                                              ; preds = %508, %496
  %512 = load ptr, ptr %9, align 8, !tbaa !29
  %513 = load i32, ptr %20, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %512, i32 noundef signext %513, i32 noundef signext 8)
  %514 = load ptr, ptr %9, align 8, !tbaa !29
  %515 = load i32, ptr %21, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %514, i32 noundef signext %515, i32 noundef signext 8)
  %516 = load ptr, ptr %9, align 8, !tbaa !29
  %517 = load i32, ptr %28, align 4, !tbaa !32
  %518 = shl i32 %517, 4
  %519 = or i32 %518, 9
  call void @BitBufferWrite(ptr noundef %516, i32 noundef signext %519, i32 noundef signext 8)
  %520 = load ptr, ptr %9, align 8, !tbaa !29
  %521 = load i32, ptr %29, align 4, !tbaa !32
  %522 = shl i32 %521, 5
  %523 = load i32, ptr %26, align 4, !tbaa !32
  %524 = or i32 %522, %523
  call void @BitBufferWrite(ptr noundef %520, i32 noundef signext %524, i32 noundef signext 8)
  store i32 0, ptr %35, align 4, !tbaa !32
  br label %525

525:                                              ; preds = %541, %511
  %526 = load i32, ptr %35, align 4, !tbaa !32
  %527 = load i32, ptr %26, align 4, !tbaa !32
  %528 = icmp ult i32 %526, %527
  br i1 %528, label %529, label %544

529:                                              ; preds = %525
  %530 = load ptr, ptr %9, align 8, !tbaa !29
  %531 = load ptr, ptr %33, align 8, !tbaa !35
  %532 = load i32, ptr %26, align 4, !tbaa !32
  %533 = sub i32 %532, 1
  %534 = zext i32 %533 to i64
  %535 = getelementptr inbounds nuw [16 x i16], ptr %531, i64 %534
  %536 = load i32, ptr %35, align 4, !tbaa !32
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds nuw [16 x i16], ptr %535, i64 0, i64 %537
  %539 = load i16, ptr %538, align 2, !tbaa !37
  %540 = sext i16 %539 to i32
  call void @BitBufferWrite(ptr noundef %530, i32 noundef signext %540, i32 noundef signext 16)
  br label %541

541:                                              ; preds = %529
  %542 = load i32, ptr %35, align 4, !tbaa !32
  %543 = add i32 %542, 1
  store i32 %543, ptr %35, align 4, !tbaa !32
  br label %525, !llvm.loop !46

544:                                              ; preds = %525
  %545 = load ptr, ptr %9, align 8, !tbaa !29
  %546 = load i32, ptr %28, align 4, !tbaa !32
  %547 = shl i32 %546, 4
  %548 = or i32 %547, 9
  call void @BitBufferWrite(ptr noundef %545, i32 noundef signext %548, i32 noundef signext 8)
  %549 = load ptr, ptr %9, align 8, !tbaa !29
  %550 = load i32, ptr %29, align 4, !tbaa !32
  %551 = shl i32 %550, 5
  %552 = load i32, ptr %27, align 4, !tbaa !32
  %553 = or i32 %551, %552
  call void @BitBufferWrite(ptr noundef %549, i32 noundef signext %553, i32 noundef signext 8)
  store i32 0, ptr %35, align 4, !tbaa !32
  br label %554

554:                                              ; preds = %570, %544
  %555 = load i32, ptr %35, align 4, !tbaa !32
  %556 = load i32, ptr %27, align 4, !tbaa !32
  %557 = icmp ult i32 %555, %556
  br i1 %557, label %558, label %573

558:                                              ; preds = %554
  %559 = load ptr, ptr %9, align 8, !tbaa !29
  %560 = load ptr, ptr %34, align 8, !tbaa !35
  %561 = load i32, ptr %27, align 4, !tbaa !32
  %562 = sub i32 %561, 1
  %563 = zext i32 %562 to i64
  %564 = getelementptr inbounds nuw [16 x i16], ptr %560, i64 %563
  %565 = load i32, ptr %35, align 4, !tbaa !32
  %566 = zext i32 %565 to i64
  %567 = getelementptr inbounds nuw [16 x i16], ptr %564, i64 0, i64 %566
  %568 = load i16, ptr %567, align 2, !tbaa !37
  %569 = sext i16 %568 to i32
  call void @BitBufferWrite(ptr noundef %559, i32 noundef signext %569, i32 noundef signext 16)
  br label %570

570:                                              ; preds = %558
  %571 = load i32, ptr %35, align 4, !tbaa !32
  %572 = add i32 %571, 1
  store i32 %572, ptr %35, align 4, !tbaa !32
  br label %554, !llvm.loop !47

573:                                              ; preds = %554
  %574 = load i8, ptr %32, align 1, !tbaa !36
  %575 = zext i8 %574 to i32
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %614

577:                                              ; preds = %573
  call void @llvm.lifetime.start.p0(i64 4, ptr %44) #9
  %578 = load i8, ptr %32, align 1, !tbaa !36
  %579 = zext i8 %578 to i32
  %580 = mul nsw i32 %579, 8
  store i32 %580, ptr %44, align 4, !tbaa !32
  store i32 0, ptr %35, align 4, !tbaa !32
  br label %581

581:                                              ; preds = %610, %577
  %582 = load i32, ptr %35, align 4, !tbaa !32
  %583 = load i32, ptr %13, align 4, !tbaa !32
  %584 = mul i32 %583, 2
  %585 = icmp ult i32 %582, %584
  br i1 %585, label %586, label %613

586:                                              ; preds = %581
  call void @llvm.lifetime.start.p0(i64 4, ptr %45) #9
  %587 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 10
  %588 = load ptr, ptr %587, align 8, !tbaa !23
  %589 = load i32, ptr %35, align 4, !tbaa !32
  %590 = add i32 %589, 0
  %591 = zext i32 %590 to i64
  %592 = getelementptr inbounds nuw i16, ptr %588, i64 %591
  %593 = load i16, ptr %592, align 2, !tbaa !37
  %594 = zext i16 %593 to i32
  %595 = load i32, ptr %44, align 4, !tbaa !32
  %596 = shl i32 %594, %595
  %597 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 10
  %598 = load ptr, ptr %597, align 8, !tbaa !23
  %599 = load i32, ptr %35, align 4, !tbaa !32
  %600 = add i32 %599, 1
  %601 = zext i32 %600 to i64
  %602 = getelementptr inbounds nuw i16, ptr %598, i64 %601
  %603 = load i16, ptr %602, align 2, !tbaa !37
  %604 = zext i16 %603 to i32
  %605 = or i32 %596, %604
  store i32 %605, ptr %45, align 4, !tbaa !32
  %606 = load ptr, ptr %9, align 8, !tbaa !29
  %607 = load i32, ptr %45, align 4, !tbaa !32
  %608 = load i32, ptr %44, align 4, !tbaa !32
  %609 = mul i32 %608, 2
  call void @BitBufferWrite(ptr noundef %606, i32 noundef signext %607, i32 noundef signext %609)
  call void @llvm.lifetime.end.p0(i64 4, ptr %45) #9
  br label %610

610:                                              ; preds = %586
  %611 = load i32, ptr %35, align 4, !tbaa !32
  %612 = add i32 %611, 2
  store i32 %612, ptr %35, align 4, !tbaa !32
  br label %581, !llvm.loop !48

613:                                              ; preds = %581
  call void @llvm.lifetime.end.p0(i64 4, ptr %44) #9
  br label %614

614:                                              ; preds = %613, %573
  %615 = load i32, ptr %28, align 4, !tbaa !32
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %631

617:                                              ; preds = %614
  %618 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 6
  %619 = load ptr, ptr %618, align 8, !tbaa !19
  %620 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 8
  %621 = load ptr, ptr %620, align 8, !tbaa !21
  %622 = load i32, ptr %13, align 4, !tbaa !32
  %623 = load ptr, ptr %33, align 8, !tbaa !35
  %624 = load i32, ptr %26, align 4, !tbaa !32
  %625 = sub i32 %624, 1
  %626 = zext i32 %625 to i64
  %627 = getelementptr inbounds nuw [16 x i16], ptr %623, i64 %626
  %628 = getelementptr inbounds [16 x i16], ptr %627, i64 0, i64 0
  %629 = load i32, ptr %26, align 4, !tbaa !32
  %630 = load i32, ptr %30, align 4, !tbaa !32
  call void @pc_block(ptr noundef %619, ptr noundef %621, i32 noundef signext %622, ptr noundef %628, i32 noundef signext %629, i32 noundef signext %630, i32 noundef signext 9)
  br label %651

631:                                              ; preds = %614
  %632 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 6
  %633 = load ptr, ptr %632, align 8, !tbaa !19
  %634 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 9
  %635 = load ptr, ptr %634, align 8, !tbaa !22
  %636 = load i32, ptr %13, align 4, !tbaa !32
  %637 = load ptr, ptr %33, align 8, !tbaa !35
  %638 = load i32, ptr %26, align 4, !tbaa !32
  %639 = sub i32 %638, 1
  %640 = zext i32 %639 to i64
  %641 = getelementptr inbounds nuw [16 x i16], ptr %637, i64 %640
  %642 = getelementptr inbounds [16 x i16], ptr %641, i64 0, i64 0
  %643 = load i32, ptr %26, align 4, !tbaa !32
  %644 = load i32, ptr %30, align 4, !tbaa !32
  call void @pc_block(ptr noundef %633, ptr noundef %635, i32 noundef signext %636, ptr noundef %642, i32 noundef signext %643, i32 noundef signext %644, i32 noundef signext 9)
  %645 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 9
  %646 = load ptr, ptr %645, align 8, !tbaa !22
  %647 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 8
  %648 = load ptr, ptr %647, align 8, !tbaa !21
  %649 = load i32, ptr %13, align 4, !tbaa !32
  %650 = load i32, ptr %30, align 4, !tbaa !32
  call void @pc_block(ptr noundef %646, ptr noundef %648, i32 noundef signext %649, ptr noundef null, i32 noundef signext 31, i32 noundef signext %650, i32 noundef signext 0)
  br label %651

651:                                              ; preds = %631, %617
  %652 = load i32, ptr %29, align 4, !tbaa !32
  %653 = mul i32 %652, 40
  %654 = udiv i32 %653, 4
  %655 = load i32, ptr %13, align 4, !tbaa !32
  %656 = load i32, ptr %13, align 4, !tbaa !32
  call void @set_ag_params(ptr noundef %16, i32 noundef signext 10, i32 noundef signext %654, i32 noundef signext 14, i32 noundef signext %655, i32 noundef signext %656, i32 noundef signext 255)
  %657 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 8
  %658 = load ptr, ptr %657, align 8, !tbaa !21
  %659 = load ptr, ptr %9, align 8, !tbaa !29
  %660 = load i32, ptr %13, align 4, !tbaa !32
  %661 = load i32, ptr %30, align 4, !tbaa !32
  %662 = call signext i32 @dyn_comp(ptr noundef %16, ptr noundef %658, ptr noundef %659, i32 noundef signext %660, i32 noundef signext %661, ptr noundef %17)
  store i32 %662, ptr %39, align 4, !tbaa !32
  %663 = load i32, ptr %39, align 4, !tbaa !32
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %665, label %666

665:                                              ; preds = %651
  br label %744

666:                                              ; preds = %651
  %667 = load i32, ptr %28, align 4, !tbaa !32
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %669, label %683

669:                                              ; preds = %666
  %670 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 7
  %671 = load ptr, ptr %670, align 8, !tbaa !20
  %672 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 9
  %673 = load ptr, ptr %672, align 8, !tbaa !22
  %674 = load i32, ptr %13, align 4, !tbaa !32
  %675 = load ptr, ptr %34, align 8, !tbaa !35
  %676 = load i32, ptr %27, align 4, !tbaa !32
  %677 = sub i32 %676, 1
  %678 = zext i32 %677 to i64
  %679 = getelementptr inbounds nuw [16 x i16], ptr %675, i64 %678
  %680 = getelementptr inbounds [16 x i16], ptr %679, i64 0, i64 0
  %681 = load i32, ptr %27, align 4, !tbaa !32
  %682 = load i32, ptr %30, align 4, !tbaa !32
  call void @pc_block(ptr noundef %671, ptr noundef %673, i32 noundef signext %674, ptr noundef %680, i32 noundef signext %681, i32 noundef signext %682, i32 noundef signext 9)
  br label %703

683:                                              ; preds = %666
  %684 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 7
  %685 = load ptr, ptr %684, align 8, !tbaa !20
  %686 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 8
  %687 = load ptr, ptr %686, align 8, !tbaa !21
  %688 = load i32, ptr %13, align 4, !tbaa !32
  %689 = load ptr, ptr %34, align 8, !tbaa !35
  %690 = load i32, ptr %27, align 4, !tbaa !32
  %691 = sub i32 %690, 1
  %692 = zext i32 %691 to i64
  %693 = getelementptr inbounds nuw [16 x i16], ptr %689, i64 %692
  %694 = getelementptr inbounds [16 x i16], ptr %693, i64 0, i64 0
  %695 = load i32, ptr %27, align 4, !tbaa !32
  %696 = load i32, ptr %30, align 4, !tbaa !32
  call void @pc_block(ptr noundef %685, ptr noundef %687, i32 noundef signext %688, ptr noundef %694, i32 noundef signext %695, i32 noundef signext %696, i32 noundef signext 9)
  %697 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 8
  %698 = load ptr, ptr %697, align 8, !tbaa !21
  %699 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 9
  %700 = load ptr, ptr %699, align 8, !tbaa !22
  %701 = load i32, ptr %13, align 4, !tbaa !32
  %702 = load i32, ptr %30, align 4, !tbaa !32
  call void @pc_block(ptr noundef %698, ptr noundef %700, i32 noundef signext %701, ptr noundef null, i32 noundef signext 31, i32 noundef signext %702, i32 noundef signext 0)
  br label %703

703:                                              ; preds = %683, %669
  %704 = load i32, ptr %29, align 4, !tbaa !32
  %705 = mul i32 %704, 40
  %706 = udiv i32 %705, 4
  %707 = load i32, ptr %13, align 4, !tbaa !32
  %708 = load i32, ptr %13, align 4, !tbaa !32
  call void @set_ag_params(ptr noundef %16, i32 noundef signext 10, i32 noundef signext %706, i32 noundef signext 14, i32 noundef signext %707, i32 noundef signext %708, i32 noundef signext 255)
  %709 = getelementptr inbounds nuw %class.ALACEncoder, ptr %46, i32 0, i32 9
  %710 = load ptr, ptr %709, align 8, !tbaa !22
  %711 = load ptr, ptr %9, align 8, !tbaa !29
  %712 = load i32, ptr %13, align 4, !tbaa !32
  %713 = load i32, ptr %30, align 4, !tbaa !32
  %714 = call signext i32 @dyn_comp(ptr noundef %16, ptr noundef %710, ptr noundef %711, i32 noundef signext %712, i32 noundef signext %713, ptr noundef %18)
  store i32 %714, ptr %39, align 4, !tbaa !32
  %715 = load i32, ptr %39, align 4, !tbaa !32
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %718

717:                                              ; preds = %703
  br label %744

718:                                              ; preds = %703
  %719 = load ptr, ptr %9, align 8, !tbaa !29
  %720 = call signext i32 @BitBufferGetPosition(ptr noundef %719)
  %721 = call signext i32 @BitBufferGetPosition(ptr noundef %15)
  %722 = sub i32 %720, %721
  store i32 %722, ptr %23, align 4, !tbaa !32
  %723 = load i32, ptr %23, align 4, !tbaa !32
  %724 = load i32, ptr %37, align 4, !tbaa !32
  %725 = icmp uge i32 %723, %724
  br i1 %725, label %726, label %731

726:                                              ; preds = %718
  %727 = load ptr, ptr %9, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %727, ptr align 8 %15, i64 24, i1 false), !tbaa.struct !33
  store i8 1, ptr %38, align 1, !tbaa !43
  %728 = load i32, ptr %23, align 4, !tbaa !32
  %729 = load i32, ptr %37, align 4, !tbaa !32
  %730 = call signext i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef signext %728, i32 noundef signext %729)
  br label %731

731:                                              ; preds = %726, %718
  br label %732

732:                                              ; preds = %731, %472
  %733 = load i8, ptr %38, align 1, !tbaa !43, !range !44, !noundef !45
  %734 = trunc i8 %733 to i1
  %735 = zext i1 %734 to i32
  %736 = icmp eq i32 %735, 1
  br i1 %736, label %737, label %743

737:                                              ; preds = %732
  %738 = load ptr, ptr %9, align 8, !tbaa !29
  %739 = load ptr, ptr %10, align 8, !tbaa !31
  %740 = load i32, ptr %11, align 4, !tbaa !32
  %741 = load i32, ptr %13, align 4, !tbaa !32
  %742 = call noundef signext i32 @_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj(ptr noundef nonnull align 8 dereferenceable(8300) %46, ptr noundef %738, ptr noundef %739, i32 noundef signext %740, i32 noundef signext %741)
  store i32 %742, ptr %39, align 4, !tbaa !32
  br label %743

743:                                              ; preds = %737, %732
  br label %744

744:                                              ; preds = %743, %717, %665, %251, %231
  %745 = load i32, ptr %39, align 4, !tbaa !32
  store i32 %745, ptr %7, align 4
  store i32 1, ptr %40, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %41) #9
  br label %746

746:                                              ; preds = %744, %67
  call void @llvm.lifetime.end.p0(i64 4, ptr %39) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %38) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %37) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %36) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %35) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %34) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %33) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %32) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %31) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %30) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %29) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr %16) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr %15) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr %14) #9
  %747 = load i32, ptr %7, align 4
  ret i32 %747
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @mix16(ptr noundef, i32 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) #6

declare void @mix20(ptr noundef, i32 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) #6

declare void @mix24(ptr noundef, i32 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext) #6

declare void @mix32(ptr noundef, i32 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext) #6

declare void @BitBufferInit(ptr noundef, ptr noundef, i32 noundef signext) #6

declare void @pc_block(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) #6

declare void @set_ag_params(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #6

declare signext i32 @dyn_comp(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #4

declare void @BitBufferWrite(ptr noundef, i32 noundef signext, i32 noundef signext) #6

declare signext i32 @BitBufferGetPosition(ptr noundef) #6

declare signext i32 @printf(ptr noundef, ...) #6

; Function Attrs: mustprogress
define dso_local noundef signext i32 @_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %4) #3 align 2 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !29
  store ptr %2, ptr %8, align 8, !tbaa !31
  store i32 %3, ptr %9, align 4, !tbaa !32
  store i32 %4, ptr %10, align 4, !tbaa !32
  %15 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %13) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #9
  %16 = load i32, ptr %10, align 4, !tbaa !32
  %17 = getelementptr inbounds nuw %class.ALACEncoder, ptr %15, i32 0, i32 17
  %18 = load i32, ptr %17, align 4, !tbaa !28
  %19 = icmp eq i32 %16, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 1
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %13, align 1, !tbaa !36
  %23 = load ptr, ptr %7, align 8, !tbaa !29
  call void @BitBufferWrite(ptr noundef %23, i32 noundef signext 0, i32 noundef signext 12)
  %24 = load ptr, ptr %7, align 8, !tbaa !29
  %25 = load i8, ptr %13, align 1, !tbaa !36
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 3
  %28 = or i32 %27, 1
  call void @BitBufferWrite(ptr noundef %24, i32 noundef signext %28, i32 noundef signext 4)
  %29 = load i8, ptr %13, align 1, !tbaa !36
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load ptr, ptr %7, align 8, !tbaa !29
  %33 = load i32, ptr %10, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %32, i32 noundef signext %33, i32 noundef signext 32)
  br label %34

34:                                               ; preds = %31, %5
  %35 = getelementptr inbounds nuw %class.ALACEncoder, ptr %15, i32 0, i32 1
  %36 = load i16, ptr %35, align 8, !tbaa !10
  %37 = sext i16 %36 to i32
  switch i32 %37, label %160 [
    i32 16, label %38
    i32 20, label %68
    i32 24, label %99
    i32 32, label %132
  ]

38:                                               ; preds = %34
  %39 = load ptr, ptr %8, align 8, !tbaa !31
  store ptr %39, ptr %11, align 8, !tbaa !35
  store i32 0, ptr %14, align 4, !tbaa !32
  br label %40

40:                                               ; preds = %63, %38
  %41 = load i32, ptr %14, align 4, !tbaa !32
  %42 = load i32, ptr %10, align 4, !tbaa !32
  %43 = load i32, ptr %9, align 4, !tbaa !32
  %44 = mul i32 %42, %43
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load ptr, ptr %7, align 8, !tbaa !29
  %48 = load ptr, ptr %11, align 8, !tbaa !35
  %49 = load i32, ptr %14, align 4, !tbaa !32
  %50 = add i32 %49, 0
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds nuw i16, ptr %48, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !37
  %54 = sext i16 %53 to i32
  call void @BitBufferWrite(ptr noundef %47, i32 noundef signext %54, i32 noundef signext 16)
  %55 = load ptr, ptr %7, align 8, !tbaa !29
  %56 = load ptr, ptr %11, align 8, !tbaa !35
  %57 = load i32, ptr %14, align 4, !tbaa !32
  %58 = add i32 %57, 1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw i16, ptr %56, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !37
  %62 = sext i16 %61 to i32
  call void @BitBufferWrite(ptr noundef %55, i32 noundef signext %62, i32 noundef signext 16)
  br label %63

63:                                               ; preds = %46
  %64 = load i32, ptr %9, align 4, !tbaa !32
  %65 = load i32, ptr %14, align 4, !tbaa !32
  %66 = add i32 %65, %64
  store i32 %66, ptr %14, align 4, !tbaa !32
  br label %40, !llvm.loop !49

67:                                               ; preds = %40
  br label %160

68:                                               ; preds = %34
  %69 = load ptr, ptr %8, align 8, !tbaa !31
  %70 = load i32, ptr %9, align 4, !tbaa !32
  %71 = getelementptr inbounds nuw %class.ALACEncoder, ptr %15, i32 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !19
  %73 = getelementptr inbounds nuw %class.ALACEncoder, ptr %15, i32 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !20
  %75 = load i32, ptr %10, align 4, !tbaa !32
  call void @mix20(ptr noundef %69, i32 noundef signext %70, ptr noundef %72, ptr noundef %74, i32 noundef signext %75, i32 noundef signext 0, i32 noundef signext 0)
  store i32 0, ptr %14, align 4, !tbaa !32
  br label %76

76:                                               ; preds = %95, %68
  %77 = load i32, ptr %14, align 4, !tbaa !32
  %78 = load i32, ptr %10, align 4, !tbaa !32
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = load ptr, ptr %7, align 8, !tbaa !29
  %82 = getelementptr inbounds nuw %class.ALACEncoder, ptr %15, i32 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !19
  %84 = load i32, ptr %14, align 4, !tbaa !32
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds nuw i32, ptr %83, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %81, i32 noundef signext %87, i32 noundef signext 20)
  %88 = load ptr, ptr %7, align 8, !tbaa !29
  %89 = getelementptr inbounds nuw %class.ALACEncoder, ptr %15, i32 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !20
  %91 = load i32, ptr %14, align 4, !tbaa !32
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds nuw i32, ptr %90, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %88, i32 noundef signext %94, i32 noundef signext 20)
  br label %95

95:                                               ; preds = %80
  %96 = load i32, ptr %14, align 4, !tbaa !32
  %97 = add i32 %96, 1
  store i32 %97, ptr %14, align 4, !tbaa !32
  br label %76, !llvm.loop !50

98:                                               ; preds = %76
  br label %160

99:                                               ; preds = %34
  %100 = load ptr, ptr %8, align 8, !tbaa !31
  %101 = load i32, ptr %9, align 4, !tbaa !32
  %102 = getelementptr inbounds nuw %class.ALACEncoder, ptr %15, i32 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !19
  %104 = getelementptr inbounds nuw %class.ALACEncoder, ptr %15, i32 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !20
  %106 = load i32, ptr %10, align 4, !tbaa !32
  %107 = getelementptr inbounds nuw %class.ALACEncoder, ptr %15, i32 0, i32 10
  %108 = load ptr, ptr %107, align 8, !tbaa !23
  call void @mix24(ptr noundef %100, i32 noundef signext %101, ptr noundef %103, ptr noundef %105, i32 noundef signext %106, i32 noundef signext 0, i32 noundef signext 0, ptr noundef %108, i32 noundef signext 0)
  store i32 0, ptr %14, align 4, !tbaa !32
  br label %109

109:                                              ; preds = %128, %99
  %110 = load i32, ptr %14, align 4, !tbaa !32
  %111 = load i32, ptr %10, align 4, !tbaa !32
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %109
  %114 = load ptr, ptr %7, align 8, !tbaa !29
  %115 = getelementptr inbounds nuw %class.ALACEncoder, ptr %15, i32 0, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !19
  %117 = load i32, ptr %14, align 4, !tbaa !32
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds nuw i32, ptr %116, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %114, i32 noundef signext %120, i32 noundef signext 24)
  %121 = load ptr, ptr %7, align 8, !tbaa !29
  %122 = getelementptr inbounds nuw %class.ALACEncoder, ptr %15, i32 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !20
  %124 = load i32, ptr %14, align 4, !tbaa !32
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds nuw i32, ptr %123, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %121, i32 noundef signext %127, i32 noundef signext 24)
  br label %128

128:                                              ; preds = %113
  %129 = load i32, ptr %14, align 4, !tbaa !32
  %130 = add i32 %129, 1
  store i32 %130, ptr %14, align 4, !tbaa !32
  br label %109, !llvm.loop !51

131:                                              ; preds = %109
  br label %160

132:                                              ; preds = %34
  %133 = load ptr, ptr %8, align 8, !tbaa !31
  store ptr %133, ptr %12, align 8, !tbaa !52
  store i32 0, ptr %14, align 4, !tbaa !32
  br label %134

134:                                              ; preds = %155, %132
  %135 = load i32, ptr %14, align 4, !tbaa !32
  %136 = load i32, ptr %10, align 4, !tbaa !32
  %137 = load i32, ptr %9, align 4, !tbaa !32
  %138 = mul i32 %136, %137
  %139 = icmp ult i32 %135, %138
  br i1 %139, label %140, label %159

140:                                              ; preds = %134
  %141 = load ptr, ptr %7, align 8, !tbaa !29
  %142 = load ptr, ptr %12, align 8, !tbaa !52
  %143 = load i32, ptr %14, align 4, !tbaa !32
  %144 = add i32 %143, 0
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds nuw i32, ptr %142, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %141, i32 noundef signext %147, i32 noundef signext 32)
  %148 = load ptr, ptr %7, align 8, !tbaa !29
  %149 = load ptr, ptr %12, align 8, !tbaa !52
  %150 = load i32, ptr %14, align 4, !tbaa !32
  %151 = add i32 %150, 1
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds nuw i32, ptr %149, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %148, i32 noundef signext %154, i32 noundef signext 32)
  br label %155

155:                                              ; preds = %140
  %156 = load i32, ptr %9, align 4, !tbaa !32
  %157 = load i32, ptr %14, align 4, !tbaa !32
  %158 = add i32 %157, %156
  store i32 %158, ptr %14, align 4, !tbaa !32
  br label %134, !llvm.loop !53

159:                                              ; preds = %134
  br label %160

160:                                              ; preds = %34, %159, %131, %98, %67
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #9
  ret i32 0
}

; Function Attrs: mustprogress
define dso_local noundef signext i32 @_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) #3 align 2 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.BitBuffer, align 8
  %15 = alloca %struct.AGParamRec, align 4
  %16 = alloca i32, align 4
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
  %29 = alloca i8, align 1
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca i32, align 4
  %33 = alloca i8, align 1
  %34 = alloca i32, align 4
  %35 = alloca i8, align 1
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store ptr %0, ptr %8, align 8, !tbaa !3
  store ptr %1, ptr %9, align 8, !tbaa !29
  store ptr %2, ptr %10, align 8, !tbaa !31
  store i32 %3, ptr %11, align 4, !tbaa !32
  store i32 %4, ptr %12, align 4, !tbaa !32
  store i32 %5, ptr %13, align 4, !tbaa !32
  %40 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr %14) #9
  %41 = load ptr, ptr %9, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %41, i64 24, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.start.p0(i64 36, ptr %15) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %29) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %30) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %31) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %32) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %33) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %34) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %35) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %36) #9
  %42 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 1
  %43 = load i16, ptr %42, align 8, !tbaa !10
  %44 = sext i16 %43 to i32
  %45 = icmp eq i32 %44, 16
  br i1 %45, label %62, label %46

46:                                               ; preds = %6
  %47 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 1
  %48 = load i16, ptr %47, align 8, !tbaa !10
  %49 = sext i16 %48 to i32
  %50 = icmp eq i32 %49, 20
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 1
  %53 = load i16, ptr %52, align 8, !tbaa !10
  %54 = sext i16 %53 to i32
  %55 = icmp eq i32 %54, 24
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 1
  %58 = load i16, ptr %57, align 8, !tbaa !10
  %59 = sext i16 %58 to i32
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 -50, ptr %7, align 4
  store i32 1, ptr %37, align 4
  br label %418

62:                                               ; preds = %56, %51, %46, %6
  %63 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 12
  %64 = load i32, ptr %12, align 4, !tbaa !32
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds nuw [8 x [16 x [16 x i16]]], ptr %63, i64 0, i64 %65
  %67 = getelementptr inbounds [16 x [16 x i16]], ptr %66, i64 0, i64 0
  store ptr %67, ptr %30, align 8, !tbaa !35
  %68 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 13
  %69 = load i32, ptr %12, align 4, !tbaa !32
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds nuw [8 x [16 x [16 x i16]]], ptr %68, i64 0, i64 %70
  %72 = getelementptr inbounds [16 x [16 x i16]], ptr %71, i64 0, i64 0
  store ptr %72, ptr %31, align 8, !tbaa !35
  %73 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 1
  %74 = load i16, ptr %73, align 8, !tbaa !10
  %75 = sext i16 %74 to i32
  %76 = icmp eq i32 %75, 32
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  store i8 2, ptr %29, align 1, !tbaa !36
  br label %86

78:                                               ; preds = %62
  %79 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 1
  %80 = load i16, ptr %79, align 8, !tbaa !10
  %81 = sext i16 %80 to i32
  %82 = icmp sge i32 %81, 24
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i8 1, ptr %29, align 1, !tbaa !36
  br label %85

84:                                               ; preds = %78
  store i8 0, ptr %29, align 1, !tbaa !36
  br label %85

85:                                               ; preds = %84, %83
  br label %86

86:                                               ; preds = %85, %77
  %87 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 1
  %88 = load i16, ptr %87, align 8, !tbaa !10
  %89 = sext i16 %88 to i32
  %90 = load i8, ptr %29, align 1, !tbaa !36
  %91 = zext i8 %90 to i32
  %92 = mul nsw i32 %91, 8
  %93 = sub nsw i32 %89, %92
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %27, align 4, !tbaa !32
  %95 = load i32, ptr %13, align 4, !tbaa !32
  %96 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 17
  %97 = load i32, ptr %96, align 4, !tbaa !28
  %98 = icmp eq i32 %95, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 0, i32 1
  %101 = trunc i32 %100 to i8
  store i8 %101, ptr %33, align 1, !tbaa !36
  store i32 2, ptr %18, align 4, !tbaa !32
  store i32 0, ptr %19, align 4, !tbaa !32
  store i32 8, ptr %24, align 4, !tbaa !32
  store i32 8, ptr %23, align 4, !tbaa !32
  store i32 9, ptr %28, align 4, !tbaa !32
  store i32 0, ptr %25, align 4, !tbaa !32
  store i32 4, ptr %26, align 4, !tbaa !32
  store i32 -2147483648, ptr %22, align 4, !tbaa !32
  store i32 -2147483648, ptr %21, align 4, !tbaa !32
  store i32 -2147483648, ptr %20, align 4, !tbaa !32
  %102 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 1
  %103 = load i16, ptr %102, align 8, !tbaa !10
  %104 = sext i16 %103 to i32
  switch i32 %104, label %153 [
    i32 16, label %105
    i32 20, label %115
    i32 24, label %125
    i32 32, label %139
  ]

105:                                              ; preds = %86
  %106 = load ptr, ptr %10, align 8, !tbaa !31
  %107 = load i32, ptr %11, align 4, !tbaa !32
  %108 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !19
  %110 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 7
  %111 = load ptr, ptr %110, align 8, !tbaa !20
  %112 = load i32, ptr %13, align 4, !tbaa !32
  %113 = load i32, ptr %18, align 4, !tbaa !32
  %114 = load i32, ptr %19, align 4, !tbaa !32
  call void @mix16(ptr noundef %106, i32 noundef signext %107, ptr noundef %109, ptr noundef %111, i32 noundef signext %112, i32 noundef signext %113, i32 noundef signext %114)
  br label %153

115:                                              ; preds = %86
  %116 = load ptr, ptr %10, align 8, !tbaa !31
  %117 = load i32, ptr %11, align 4, !tbaa !32
  %118 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !19
  %120 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !20
  %122 = load i32, ptr %13, align 4, !tbaa !32
  %123 = load i32, ptr %18, align 4, !tbaa !32
  %124 = load i32, ptr %19, align 4, !tbaa !32
  call void @mix20(ptr noundef %116, i32 noundef signext %117, ptr noundef %119, ptr noundef %121, i32 noundef signext %122, i32 noundef signext %123, i32 noundef signext %124)
  br label %153

125:                                              ; preds = %86
  %126 = load ptr, ptr %10, align 8, !tbaa !31
  %127 = load i32, ptr %11, align 4, !tbaa !32
  %128 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 6
  %129 = load ptr, ptr %128, align 8, !tbaa !19
  %130 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !20
  %132 = load i32, ptr %13, align 4, !tbaa !32
  %133 = load i32, ptr %18, align 4, !tbaa !32
  %134 = load i32, ptr %19, align 4, !tbaa !32
  %135 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 10
  %136 = load ptr, ptr %135, align 8, !tbaa !23
  %137 = load i8, ptr %29, align 1, !tbaa !36
  %138 = zext i8 %137 to i32
  call void @mix24(ptr noundef %126, i32 noundef signext %127, ptr noundef %129, ptr noundef %131, i32 noundef signext %132, i32 noundef signext %133, i32 noundef signext %134, ptr noundef %136, i32 noundef signext %138)
  br label %153

139:                                              ; preds = %86
  %140 = load ptr, ptr %10, align 8, !tbaa !31
  %141 = load i32, ptr %11, align 4, !tbaa !32
  %142 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 6
  %143 = load ptr, ptr %142, align 8, !tbaa !19
  %144 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 7
  %145 = load ptr, ptr %144, align 8, !tbaa !20
  %146 = load i32, ptr %13, align 4, !tbaa !32
  %147 = load i32, ptr %18, align 4, !tbaa !32
  %148 = load i32, ptr %19, align 4, !tbaa !32
  %149 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 10
  %150 = load ptr, ptr %149, align 8, !tbaa !23
  %151 = load i8, ptr %29, align 1, !tbaa !36
  %152 = zext i8 %151 to i32
  call void @mix32(ptr noundef %140, i32 noundef signext %141, ptr noundef %143, ptr noundef %145, i32 noundef signext %146, i32 noundef signext %147, i32 noundef signext %148, ptr noundef %150, i32 noundef signext %152)
  br label %153

153:                                              ; preds = %86, %139, %125, %115, %105
  %154 = load ptr, ptr %9, align 8, !tbaa !29
  call void @BitBufferWrite(ptr noundef %154, i32 noundef signext 0, i32 noundef signext 12)
  %155 = load ptr, ptr %9, align 8, !tbaa !29
  %156 = load i8, ptr %33, align 1, !tbaa !36
  %157 = zext i8 %156 to i32
  %158 = shl i32 %157, 3
  %159 = load i8, ptr %29, align 1, !tbaa !36
  %160 = zext i8 %159 to i32
  %161 = shl i32 %160, 1
  %162 = or i32 %158, %161
  call void @BitBufferWrite(ptr noundef %155, i32 noundef signext %162, i32 noundef signext 4)
  %163 = load i8, ptr %33, align 1, !tbaa !36
  %164 = icmp ne i8 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %153
  %166 = load ptr, ptr %9, align 8, !tbaa !29
  %167 = load i32, ptr %13, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %166, i32 noundef signext %167, i32 noundef signext 32)
  br label %168

168:                                              ; preds = %165, %153
  %169 = load ptr, ptr %9, align 8, !tbaa !29
  %170 = load i32, ptr %18, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %169, i32 noundef signext %170, i32 noundef signext 8)
  %171 = load ptr, ptr %9, align 8, !tbaa !29
  %172 = load i32, ptr %19, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %171, i32 noundef signext %172, i32 noundef signext 8)
  %173 = load ptr, ptr %9, align 8, !tbaa !29
  %174 = load i32, ptr %25, align 4, !tbaa !32
  %175 = shl i32 %174, 4
  %176 = or i32 %175, 9
  call void @BitBufferWrite(ptr noundef %173, i32 noundef signext %176, i32 noundef signext 8)
  %177 = load ptr, ptr %9, align 8, !tbaa !29
  %178 = load i32, ptr %26, align 4, !tbaa !32
  %179 = shl i32 %178, 5
  %180 = load i32, ptr %23, align 4, !tbaa !32
  %181 = or i32 %179, %180
  call void @BitBufferWrite(ptr noundef %177, i32 noundef signext %181, i32 noundef signext 8)
  store i32 0, ptr %32, align 4, !tbaa !32
  br label %182

182:                                              ; preds = %198, %168
  %183 = load i32, ptr %32, align 4, !tbaa !32
  %184 = load i32, ptr %23, align 4, !tbaa !32
  %185 = icmp ult i32 %183, %184
  br i1 %185, label %186, label %201

186:                                              ; preds = %182
  %187 = load ptr, ptr %9, align 8, !tbaa !29
  %188 = load ptr, ptr %30, align 8, !tbaa !35
  %189 = load i32, ptr %23, align 4, !tbaa !32
  %190 = sub i32 %189, 1
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds nuw [16 x i16], ptr %188, i64 %191
  %193 = load i32, ptr %32, align 4, !tbaa !32
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds nuw [16 x i16], ptr %192, i64 0, i64 %194
  %196 = load i16, ptr %195, align 2, !tbaa !37
  %197 = sext i16 %196 to i32
  call void @BitBufferWrite(ptr noundef %187, i32 noundef signext %197, i32 noundef signext 16)
  br label %198

198:                                              ; preds = %186
  %199 = load i32, ptr %32, align 4, !tbaa !32
  %200 = add i32 %199, 1
  store i32 %200, ptr %32, align 4, !tbaa !32
  br label %182, !llvm.loop !54

201:                                              ; preds = %182
  %202 = load ptr, ptr %9, align 8, !tbaa !29
  %203 = load i32, ptr %25, align 4, !tbaa !32
  %204 = shl i32 %203, 4
  %205 = or i32 %204, 9
  call void @BitBufferWrite(ptr noundef %202, i32 noundef signext %205, i32 noundef signext 8)
  %206 = load ptr, ptr %9, align 8, !tbaa !29
  %207 = load i32, ptr %26, align 4, !tbaa !32
  %208 = shl i32 %207, 5
  %209 = load i32, ptr %24, align 4, !tbaa !32
  %210 = or i32 %208, %209
  call void @BitBufferWrite(ptr noundef %206, i32 noundef signext %210, i32 noundef signext 8)
  store i32 0, ptr %32, align 4, !tbaa !32
  br label %211

211:                                              ; preds = %227, %201
  %212 = load i32, ptr %32, align 4, !tbaa !32
  %213 = load i32, ptr %24, align 4, !tbaa !32
  %214 = icmp ult i32 %212, %213
  br i1 %214, label %215, label %230

215:                                              ; preds = %211
  %216 = load ptr, ptr %9, align 8, !tbaa !29
  %217 = load ptr, ptr %31, align 8, !tbaa !35
  %218 = load i32, ptr %24, align 4, !tbaa !32
  %219 = sub i32 %218, 1
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds nuw [16 x i16], ptr %217, i64 %220
  %222 = load i32, ptr %32, align 4, !tbaa !32
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds nuw [16 x i16], ptr %221, i64 0, i64 %223
  %225 = load i16, ptr %224, align 2, !tbaa !37
  %226 = sext i16 %225 to i32
  call void @BitBufferWrite(ptr noundef %216, i32 noundef signext %226, i32 noundef signext 16)
  br label %227

227:                                              ; preds = %215
  %228 = load i32, ptr %32, align 4, !tbaa !32
  %229 = add i32 %228, 1
  store i32 %229, ptr %32, align 4, !tbaa !32
  br label %211, !llvm.loop !55

230:                                              ; preds = %211
  %231 = load i8, ptr %29, align 1, !tbaa !36
  %232 = zext i8 %231 to i32
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %271

234:                                              ; preds = %230
  call void @llvm.lifetime.start.p0(i64 4, ptr %38) #9
  %235 = load i8, ptr %29, align 1, !tbaa !36
  %236 = zext i8 %235 to i32
  %237 = mul nsw i32 %236, 8
  store i32 %237, ptr %38, align 4, !tbaa !32
  store i32 0, ptr %32, align 4, !tbaa !32
  br label %238

238:                                              ; preds = %267, %234
  %239 = load i32, ptr %32, align 4, !tbaa !32
  %240 = load i32, ptr %13, align 4, !tbaa !32
  %241 = mul i32 %240, 2
  %242 = icmp ult i32 %239, %241
  br i1 %242, label %243, label %270

243:                                              ; preds = %238
  call void @llvm.lifetime.start.p0(i64 4, ptr %39) #9
  %244 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 10
  %245 = load ptr, ptr %244, align 8, !tbaa !23
  %246 = load i32, ptr %32, align 4, !tbaa !32
  %247 = add i32 %246, 0
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds nuw i16, ptr %245, i64 %248
  %250 = load i16, ptr %249, align 2, !tbaa !37
  %251 = zext i16 %250 to i32
  %252 = load i32, ptr %38, align 4, !tbaa !32
  %253 = shl i32 %251, %252
  %254 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 10
  %255 = load ptr, ptr %254, align 8, !tbaa !23
  %256 = load i32, ptr %32, align 4, !tbaa !32
  %257 = add i32 %256, 1
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds nuw i16, ptr %255, i64 %258
  %260 = load i16, ptr %259, align 2, !tbaa !37
  %261 = zext i16 %260 to i32
  %262 = or i32 %253, %261
  store i32 %262, ptr %39, align 4, !tbaa !32
  %263 = load ptr, ptr %9, align 8, !tbaa !29
  %264 = load i32, ptr %39, align 4, !tbaa !32
  %265 = load i32, ptr %38, align 4, !tbaa !32
  %266 = mul i32 %265, 2
  call void @BitBufferWrite(ptr noundef %263, i32 noundef signext %264, i32 noundef signext %266)
  call void @llvm.lifetime.end.p0(i64 4, ptr %39) #9
  br label %267

267:                                              ; preds = %243
  %268 = load i32, ptr %32, align 4, !tbaa !32
  %269 = add i32 %268, 2
  store i32 %269, ptr %32, align 4, !tbaa !32
  br label %238, !llvm.loop !56

270:                                              ; preds = %238
  call void @llvm.lifetime.end.p0(i64 4, ptr %38) #9
  br label %271

271:                                              ; preds = %270, %230
  %272 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 6
  %273 = load ptr, ptr %272, align 8, !tbaa !19
  %274 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 8
  %275 = load ptr, ptr %274, align 8, !tbaa !21
  %276 = load i32, ptr %13, align 4, !tbaa !32
  %277 = load ptr, ptr %30, align 8, !tbaa !35
  %278 = load i32, ptr %23, align 4, !tbaa !32
  %279 = sub i32 %278, 1
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds nuw [16 x i16], ptr %277, i64 %280
  %282 = getelementptr inbounds [16 x i16], ptr %281, i64 0, i64 0
  %283 = load i32, ptr %23, align 4, !tbaa !32
  %284 = load i32, ptr %27, align 4, !tbaa !32
  call void @pc_block(ptr noundef %273, ptr noundef %275, i32 noundef signext %276, ptr noundef %282, i32 noundef signext %283, i32 noundef signext %284, i32 noundef signext 9)
  %285 = load i32, ptr %26, align 4, !tbaa !32
  %286 = mul i32 %285, 40
  %287 = udiv i32 %286, 4
  %288 = load i32, ptr %13, align 4, !tbaa !32
  %289 = load i32, ptr %13, align 4, !tbaa !32
  call void @set_ag_params(ptr noundef %15, i32 noundef signext 10, i32 noundef signext %287, i32 noundef signext 14, i32 noundef signext %288, i32 noundef signext %289, i32 noundef signext 255)
  %290 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 8
  %291 = load ptr, ptr %290, align 8, !tbaa !21
  %292 = load ptr, ptr %9, align 8, !tbaa !29
  %293 = load i32, ptr %13, align 4, !tbaa !32
  %294 = load i32, ptr %27, align 4, !tbaa !32
  %295 = call signext i32 @dyn_comp(ptr noundef %15, ptr noundef %291, ptr noundef %292, i32 noundef signext %293, i32 noundef signext %294, ptr noundef %16)
  store i32 %295, ptr %36, align 4, !tbaa !32
  %296 = load i32, ptr %36, align 4, !tbaa !32
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %271
  br label %416

299:                                              ; preds = %271
  %300 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 7
  %301 = load ptr, ptr %300, align 8, !tbaa !20
  %302 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 9
  %303 = load ptr, ptr %302, align 8, !tbaa !22
  %304 = load i32, ptr %13, align 4, !tbaa !32
  %305 = load ptr, ptr %31, align 8, !tbaa !35
  %306 = load i32, ptr %24, align 4, !tbaa !32
  %307 = sub i32 %306, 1
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds nuw [16 x i16], ptr %305, i64 %308
  %310 = getelementptr inbounds [16 x i16], ptr %309, i64 0, i64 0
  %311 = load i32, ptr %24, align 4, !tbaa !32
  %312 = load i32, ptr %27, align 4, !tbaa !32
  call void @pc_block(ptr noundef %301, ptr noundef %303, i32 noundef signext %304, ptr noundef %310, i32 noundef signext %311, i32 noundef signext %312, i32 noundef signext 9)
  %313 = load i32, ptr %26, align 4, !tbaa !32
  %314 = mul i32 %313, 40
  %315 = udiv i32 %314, 4
  %316 = load i32, ptr %13, align 4, !tbaa !32
  %317 = load i32, ptr %13, align 4, !tbaa !32
  call void @set_ag_params(ptr noundef %15, i32 noundef signext 10, i32 noundef signext %315, i32 noundef signext 14, i32 noundef signext %316, i32 noundef signext %317, i32 noundef signext 255)
  %318 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 9
  %319 = load ptr, ptr %318, align 8, !tbaa !22
  %320 = load ptr, ptr %9, align 8, !tbaa !29
  %321 = load i32, ptr %13, align 4, !tbaa !32
  %322 = load i32, ptr %27, align 4, !tbaa !32
  %323 = call signext i32 @dyn_comp(ptr noundef %15, ptr noundef %319, ptr noundef %320, i32 noundef signext %321, i32 noundef signext %322, ptr noundef %17)
  store i32 %323, ptr %36, align 4, !tbaa !32
  %324 = load i32, ptr %36, align 4, !tbaa !32
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %299
  br label %416

327:                                              ; preds = %299
  %328 = load i32, ptr %16, align 4, !tbaa !32
  %329 = zext i32 %328 to i64
  %330 = load i32, ptr %23, align 4, !tbaa !32
  %331 = zext i32 %330 to i64
  %332 = mul i64 %331, 2
  %333 = mul i64 %332, 8
  %334 = add i64 %329, %333
  %335 = trunc i64 %334 to i32
  store i32 %335, ptr %21, align 4, !tbaa !32
  %336 = load i32, ptr %17, align 4, !tbaa !32
  %337 = zext i32 %336 to i64
  %338 = load i32, ptr %24, align 4, !tbaa !32
  %339 = zext i32 %338 to i64
  %340 = mul i64 %339, 2
  %341 = mul i64 %340, 8
  %342 = add i64 %337, %341
  %343 = trunc i64 %342 to i32
  store i32 %343, ptr %22, align 4, !tbaa !32
  %344 = load i32, ptr %21, align 4, !tbaa !32
  %345 = load i32, ptr %22, align 4, !tbaa !32
  %346 = add i32 %344, %345
  %347 = add i32 %346, 64
  %348 = load i8, ptr %33, align 1, !tbaa !36
  %349 = zext i8 %348 to i32
  %350 = icmp eq i32 %349, 1
  %351 = zext i1 %350 to i64
  %352 = select i1 %350, i32 32, i32 0
  %353 = add i32 %347, %352
  store i32 %353, ptr %20, align 4, !tbaa !32
  %354 = load i8, ptr %29, align 1, !tbaa !36
  %355 = zext i8 %354 to i32
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %366

357:                                              ; preds = %327
  %358 = load i32, ptr %13, align 4, !tbaa !32
  %359 = load i8, ptr %29, align 1, !tbaa !36
  %360 = zext i8 %359 to i32
  %361 = mul nsw i32 %360, 8
  %362 = mul i32 %358, %361
  %363 = mul i32 %362, 2
  %364 = load i32, ptr %20, align 4, !tbaa !32
  %365 = add i32 %364, %363
  store i32 %365, ptr %20, align 4, !tbaa !32
  br label %366

366:                                              ; preds = %357, %327
  %367 = load i32, ptr %13, align 4, !tbaa !32
  %368 = getelementptr inbounds nuw %class.ALACEncoder, ptr %40, i32 0, i32 1
  %369 = load i16, ptr %368, align 8, !tbaa !10
  %370 = sext i16 %369 to i32
  %371 = mul i32 %367, %370
  %372 = mul i32 %371, 2
  %373 = load i8, ptr %33, align 1, !tbaa !36
  %374 = zext i8 %373 to i32
  %375 = icmp eq i32 %374, 1
  %376 = zext i1 %375 to i64
  %377 = select i1 %375, i32 32, i32 0
  %378 = add i32 %372, %377
  %379 = add i32 %378, 16
  store i32 %379, ptr %34, align 4, !tbaa !32
  %380 = load i32, ptr %20, align 4, !tbaa !32
  %381 = load i32, ptr %34, align 4, !tbaa !32
  %382 = icmp uge i32 %380, %381
  %383 = zext i1 %382 to i64
  %384 = select i1 %382, i1 true, i1 false
  %385 = zext i1 %384 to i8
  store i8 %385, ptr %35, align 1, !tbaa !43
  %386 = load i8, ptr %35, align 1, !tbaa !43, !range !44, !noundef !45
  %387 = trunc i8 %386 to i1
  %388 = zext i1 %387 to i32
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %403

390:                                              ; preds = %366
  %391 = load ptr, ptr %9, align 8, !tbaa !29
  %392 = call signext i32 @BitBufferGetPosition(ptr noundef %391)
  %393 = call signext i32 @BitBufferGetPosition(ptr noundef %14)
  %394 = sub i32 %392, %393
  store i32 %394, ptr %20, align 4, !tbaa !32
  %395 = load i32, ptr %20, align 4, !tbaa !32
  %396 = load i32, ptr %34, align 4, !tbaa !32
  %397 = icmp uge i32 %395, %396
  br i1 %397, label %398, label %402

398:                                              ; preds = %390
  store i8 1, ptr %35, align 1, !tbaa !43
  %399 = load i32, ptr %20, align 4, !tbaa !32
  %400 = load i32, ptr %34, align 4, !tbaa !32
  %401 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef signext %399, i32 noundef signext %400)
  br label %402

402:                                              ; preds = %398, %390
  br label %403

403:                                              ; preds = %402, %366
  %404 = load i8, ptr %35, align 1, !tbaa !43, !range !44, !noundef !45
  %405 = trunc i8 %404 to i1
  %406 = zext i1 %405 to i32
  %407 = icmp eq i32 %406, 1
  br i1 %407, label %408, label %415

408:                                              ; preds = %403
  %409 = load ptr, ptr %9, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %409, ptr align 8 %14, i64 24, i1 false), !tbaa.struct !33
  %410 = load ptr, ptr %9, align 8, !tbaa !29
  %411 = load ptr, ptr %10, align 8, !tbaa !31
  %412 = load i32, ptr %11, align 4, !tbaa !32
  %413 = load i32, ptr %13, align 4, !tbaa !32
  %414 = call noundef signext i32 @_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj(ptr noundef nonnull align 8 dereferenceable(8300) %40, ptr noundef %410, ptr noundef %411, i32 noundef signext %412, i32 noundef signext %413)
  store i32 %414, ptr %36, align 4, !tbaa !32
  br label %415

415:                                              ; preds = %408, %403
  br label %416

416:                                              ; preds = %415, %326, %298
  %417 = load i32, ptr %36, align 4, !tbaa !32
  store i32 %417, ptr %7, align 4
  store i32 1, ptr %37, align 4
  br label %418

418:                                              ; preds = %416, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr %36) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %35) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %34) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %33) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %32) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %31) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %30) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %29) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr %15) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr %14) #9
  %419 = load i32, ptr %7, align 4
  ret i32 %419
}

; Function Attrs: mustprogress
define dso_local noundef signext i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) #3 align 2 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.BitBuffer, align 8
  %15 = alloca %struct.AGParamRec, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8, align 1
  %31 = alloca i8, align 1
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca i32, align 4
  %35 = alloca i8, align 1
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.BitBuffer, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store ptr %0, ptr %8, align 8, !tbaa !3
  store ptr %1, ptr %9, align 8, !tbaa !29
  store ptr %2, ptr %10, align 8, !tbaa !31
  store i32 %3, ptr %11, align 4, !tbaa !32
  store i32 %4, ptr %12, align 4, !tbaa !32
  store i32 %5, ptr %13, align 4, !tbaa !32
  %42 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr %14) #9
  %43 = load ptr, ptr %9, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %43, i64 24, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.start.p0(i64 36, ptr %15) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %26) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %29) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %30) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %31) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %32) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %33) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %34) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %35) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %36) #9
  %44 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 1
  %45 = load i16, ptr %44, align 8, !tbaa !10
  %46 = sext i16 %45 to i32
  %47 = icmp eq i32 %46, 16
  br i1 %47, label %64, label %48

48:                                               ; preds = %6
  %49 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 1
  %50 = load i16, ptr %49, align 8, !tbaa !10
  %51 = sext i16 %50 to i32
  %52 = icmp eq i32 %51, 20
  br i1 %52, label %64, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 1
  %55 = load i16, ptr %54, align 8, !tbaa !10
  %56 = sext i16 %55 to i32
  %57 = icmp eq i32 %56, 24
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 1
  %60 = load i16, ptr %59, align 8, !tbaa !10
  %61 = sext i16 %60 to i32
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 -50, ptr %7, align 4
  store i32 1, ptr %37, align 4
  br label %559

64:                                               ; preds = %58, %53, %48, %6
  store i32 0, ptr %36, align 4, !tbaa !32
  %65 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 12
  %66 = load i32, ptr %12, align 4, !tbaa !32
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds nuw [8 x [16 x [16 x i16]]], ptr %65, i64 0, i64 %67
  %69 = getelementptr inbounds [16 x [16 x i16]], ptr %68, i64 0, i64 0
  store ptr %69, ptr %18, align 8, !tbaa !35
  %70 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 1
  %71 = load i16, ptr %70, align 8, !tbaa !10
  %72 = sext i16 %71 to i32
  %73 = icmp eq i32 %72, 32
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i8 2, ptr %26, align 1, !tbaa !36
  br label %83

75:                                               ; preds = %64
  %76 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 1
  %77 = load i16, ptr %76, align 8, !tbaa !10
  %78 = sext i16 %77 to i32
  %79 = icmp sge i32 %78, 24
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i8 1, ptr %26, align 1, !tbaa !36
  br label %82

81:                                               ; preds = %75
  store i8 0, ptr %26, align 1, !tbaa !36
  br label %82

82:                                               ; preds = %81, %80
  br label %83

83:                                               ; preds = %82, %74
  %84 = load i8, ptr %26, align 1, !tbaa !36
  %85 = zext i8 %84 to i32
  %86 = mul nsw i32 %85, 8
  store i32 %86, ptr %27, align 4, !tbaa !32
  %87 = load i32, ptr %27, align 4, !tbaa !32
  %88 = zext i32 %87 to i64
  %89 = shl i64 1, %88
  %90 = sub i64 %89, 1
  %91 = trunc i64 %90 to i32
  store i32 %91, ptr %28, align 4, !tbaa !32
  %92 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 1
  %93 = load i16, ptr %92, align 8, !tbaa !10
  %94 = sext i16 %93 to i32
  %95 = load i8, ptr %26, align 1, !tbaa !36
  %96 = zext i8 %95 to i32
  %97 = mul nsw i32 %96, 8
  %98 = sub nsw i32 %94, %97
  store i32 %98, ptr %29, align 4, !tbaa !32
  %99 = load i32, ptr %13, align 4, !tbaa !32
  %100 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 17
  %101 = load i32, ptr %100, align 4, !tbaa !28
  %102 = icmp eq i32 %99, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 0, i32 1
  %105 = trunc i32 %104 to i8
  store i8 %105, ptr %31, align 1, !tbaa !36
  %106 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 1
  %107 = load i16, ptr %106, align 8, !tbaa !10
  %108 = sext i16 %107 to i32
  switch i32 %108, label %213 [
    i32 16, label %109
    i32 20, label %134
    i32 24, label %140
    i32 32, label %177
  ]

109:                                              ; preds = %83
  %110 = load ptr, ptr %10, align 8, !tbaa !31
  store ptr %110, ptr %32, align 8, !tbaa !35
  store i32 0, ptr %24, align 4, !tbaa !32
  store i32 0, ptr %25, align 4, !tbaa !32
  br label %111

111:                                              ; preds = %127, %109
  %112 = load i32, ptr %24, align 4, !tbaa !32
  %113 = load i32, ptr %13, align 4, !tbaa !32
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %111
  %116 = load ptr, ptr %32, align 8, !tbaa !35
  %117 = load i32, ptr %25, align 4, !tbaa !32
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds nuw i16, ptr %116, i64 %118
  %120 = load i16, ptr %119, align 2, !tbaa !37
  %121 = sext i16 %120 to i32
  %122 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !19
  %124 = load i32, ptr %24, align 4, !tbaa !32
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds nuw i32, ptr %123, i64 %125
  store i32 %121, ptr %126, align 4, !tbaa !32
  br label %127

127:                                              ; preds = %115
  %128 = load i32, ptr %24, align 4, !tbaa !32
  %129 = add i32 %128, 1
  store i32 %129, ptr %24, align 4, !tbaa !32
  %130 = load i32, ptr %11, align 4, !tbaa !32
  %131 = load i32, ptr %25, align 4, !tbaa !32
  %132 = add i32 %131, %130
  store i32 %132, ptr %25, align 4, !tbaa !32
  br label %111, !llvm.loop !57

133:                                              ; preds = %111
  br label %213

134:                                              ; preds = %83
  %135 = load ptr, ptr %10, align 8, !tbaa !31
  %136 = load i32, ptr %11, align 4, !tbaa !32
  %137 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 6
  %138 = load ptr, ptr %137, align 8, !tbaa !19
  %139 = load i32, ptr %13, align 4, !tbaa !32
  call void @copy20ToPredictor(ptr noundef %135, i32 noundef signext %136, ptr noundef %138, i32 noundef signext %139)
  br label %213

140:                                              ; preds = %83
  %141 = load ptr, ptr %10, align 8, !tbaa !31
  %142 = load i32, ptr %11, align 4, !tbaa !32
  %143 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !19
  %145 = load i32, ptr %13, align 4, !tbaa !32
  call void @copy24ToPredictor(ptr noundef %141, i32 noundef signext %142, ptr noundef %144, i32 noundef signext %145)
  store i32 0, ptr %24, align 4, !tbaa !32
  br label %146

146:                                              ; preds = %173, %140
  %147 = load i32, ptr %24, align 4, !tbaa !32
  %148 = load i32, ptr %13, align 4, !tbaa !32
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %176

150:                                              ; preds = %146
  %151 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 6
  %152 = load ptr, ptr %151, align 8, !tbaa !19
  %153 = load i32, ptr %24, align 4, !tbaa !32
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds nuw i32, ptr %152, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !32
  %157 = load i32, ptr %28, align 4, !tbaa !32
  %158 = and i32 %156, %157
  %159 = trunc i32 %158 to i16
  %160 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 10
  %161 = load ptr, ptr %160, align 8, !tbaa !23
  %162 = load i32, ptr %24, align 4, !tbaa !32
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds nuw i16, ptr %161, i64 %163
  store i16 %159, ptr %164, align 2, !tbaa !37
  %165 = load i32, ptr %27, align 4, !tbaa !32
  %166 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 6
  %167 = load ptr, ptr %166, align 8, !tbaa !19
  %168 = load i32, ptr %24, align 4, !tbaa !32
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds nuw i32, ptr %167, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !32
  %172 = ashr i32 %171, %165
  store i32 %172, ptr %170, align 4, !tbaa !32
  br label %173

173:                                              ; preds = %150
  %174 = load i32, ptr %24, align 4, !tbaa !32
  %175 = add i32 %174, 1
  store i32 %175, ptr %24, align 4, !tbaa !32
  br label %146, !llvm.loop !58

176:                                              ; preds = %146
  br label %213

177:                                              ; preds = %83
  %178 = load ptr, ptr %10, align 8, !tbaa !31
  store ptr %178, ptr %33, align 8, !tbaa !52
  store i32 0, ptr %24, align 4, !tbaa !32
  store i32 0, ptr %25, align 4, !tbaa !32
  br label %179

179:                                              ; preds = %206, %177
  %180 = load i32, ptr %24, align 4, !tbaa !32
  %181 = load i32, ptr %13, align 4, !tbaa !32
  %182 = icmp ult i32 %180, %181
  br i1 %182, label %183, label %212

183:                                              ; preds = %179
  call void @llvm.lifetime.start.p0(i64 4, ptr %38) #9
  %184 = load ptr, ptr %33, align 8, !tbaa !52
  %185 = load i32, ptr %25, align 4, !tbaa !32
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds nuw i32, ptr %184, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !32
  store i32 %188, ptr %38, align 4, !tbaa !32
  %189 = load i32, ptr %38, align 4, !tbaa !32
  %190 = load i32, ptr %28, align 4, !tbaa !32
  %191 = and i32 %189, %190
  %192 = trunc i32 %191 to i16
  %193 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 10
  %194 = load ptr, ptr %193, align 8, !tbaa !23
  %195 = load i32, ptr %24, align 4, !tbaa !32
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds nuw i16, ptr %194, i64 %196
  store i16 %192, ptr %197, align 2, !tbaa !37
  %198 = load i32, ptr %38, align 4, !tbaa !32
  %199 = load i32, ptr %27, align 4, !tbaa !32
  %200 = ashr i32 %198, %199
  %201 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 6
  %202 = load ptr, ptr %201, align 8, !tbaa !19
  %203 = load i32, ptr %24, align 4, !tbaa !32
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds nuw i32, ptr %202, i64 %204
  store i32 %200, ptr %205, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 4, ptr %38) #9
  br label %206

206:                                              ; preds = %183
  %207 = load i32, ptr %24, align 4, !tbaa !32
  %208 = add i32 %207, 1
  store i32 %208, ptr %24, align 4, !tbaa !32
  %209 = load i32, ptr %11, align 4, !tbaa !32
  %210 = load i32, ptr %25, align 4, !tbaa !32
  %211 = add i32 %210, %209
  store i32 %211, ptr %25, align 4, !tbaa !32
  br label %179, !llvm.loop !59

212:                                              ; preds = %179
  br label %213

213:                                              ; preds = %83, %212, %176, %134, %133
  store i32 4, ptr %22, align 4, !tbaa !32
  store i32 8, ptr %23, align 4, !tbaa !32
  store i32 -2147483648, ptr %20, align 4, !tbaa !32
  store i8 4, ptr %30, align 1, !tbaa !36
  store i32 -2147483648, ptr %20, align 4, !tbaa !32
  %214 = load i32, ptr %22, align 4, !tbaa !32
  store i32 %214, ptr %21, align 4, !tbaa !32
  %215 = load i32, ptr %22, align 4, !tbaa !32
  store i32 %215, ptr %17, align 4, !tbaa !32
  br label %216

216:                                              ; preds = %301, %213
  %217 = load i32, ptr %17, align 4, !tbaa !32
  %218 = load i32, ptr %23, align 4, !tbaa !32
  %219 = icmp ule i32 %217, %218
  br i1 %219, label %220, label %304

220:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 24, ptr %39) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %40) #9
  %221 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 11
  %222 = load ptr, ptr %221, align 8, !tbaa !24
  %223 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 18
  %224 = load i32, ptr %223, align 8, !tbaa !38
  call void @BitBufferInit(ptr noundef %39, ptr noundef %222, i32 noundef signext %224)
  store i32 32, ptr %19, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %41) #9
  store i32 0, ptr %41, align 4, !tbaa !32
  br label %225

225:                                              ; preds = %245, %220
  %226 = load i32, ptr %41, align 4, !tbaa !32
  %227 = icmp ult i32 %226, 7
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  store i32 15, ptr %37, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %41) #9
  br label %248

229:                                              ; preds = %225
  %230 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 6
  %231 = load ptr, ptr %230, align 8, !tbaa !19
  %232 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 8
  %233 = load ptr, ptr %232, align 8, !tbaa !21
  %234 = load i32, ptr %13, align 4, !tbaa !32
  %235 = load i32, ptr %19, align 4, !tbaa !32
  %236 = udiv i32 %234, %235
  %237 = load ptr, ptr %18, align 8, !tbaa !35
  %238 = load i32, ptr %17, align 4, !tbaa !32
  %239 = sub i32 %238, 1
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds nuw [16 x i16], ptr %237, i64 %240
  %242 = getelementptr inbounds [16 x i16], ptr %241, i64 0, i64 0
  %243 = load i32, ptr %17, align 4, !tbaa !32
  %244 = load i32, ptr %29, align 4, !tbaa !32
  call void @pc_block(ptr noundef %231, ptr noundef %233, i32 noundef signext %236, ptr noundef %242, i32 noundef signext %243, i32 noundef signext %244, i32 noundef signext 9)
  br label %245

245:                                              ; preds = %229
  %246 = load i32, ptr %41, align 4, !tbaa !32
  %247 = add i32 %246, 1
  store i32 %247, ptr %41, align 4, !tbaa !32
  br label %225, !llvm.loop !60

248:                                              ; preds = %228
  store i32 8, ptr %19, align 4, !tbaa !32
  %249 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 6
  %250 = load ptr, ptr %249, align 8, !tbaa !19
  %251 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 8
  %252 = load ptr, ptr %251, align 8, !tbaa !21
  %253 = load i32, ptr %13, align 4, !tbaa !32
  %254 = load i32, ptr %19, align 4, !tbaa !32
  %255 = udiv i32 %253, %254
  %256 = load ptr, ptr %18, align 8, !tbaa !35
  %257 = load i32, ptr %17, align 4, !tbaa !32
  %258 = sub i32 %257, 1
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds nuw [16 x i16], ptr %256, i64 %259
  %261 = getelementptr inbounds [16 x i16], ptr %260, i64 0, i64 0
  %262 = load i32, ptr %17, align 4, !tbaa !32
  %263 = load i32, ptr %29, align 4, !tbaa !32
  call void @pc_block(ptr noundef %250, ptr noundef %252, i32 noundef signext %255, ptr noundef %261, i32 noundef signext %262, i32 noundef signext %263, i32 noundef signext 9)
  %264 = load i8, ptr %30, align 1, !tbaa !36
  %265 = zext i8 %264 to i32
  %266 = mul nsw i32 %265, 40
  %267 = sdiv i32 %266, 4
  %268 = load i32, ptr %13, align 4, !tbaa !32
  %269 = load i32, ptr %19, align 4, !tbaa !32
  %270 = udiv i32 %268, %269
  %271 = load i32, ptr %13, align 4, !tbaa !32
  %272 = load i32, ptr %19, align 4, !tbaa !32
  %273 = udiv i32 %271, %272
  call void @set_ag_params(ptr noundef %15, i32 noundef signext 10, i32 noundef signext %267, i32 noundef signext 14, i32 noundef signext %270, i32 noundef signext %273, i32 noundef signext 255)
  %274 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 8
  %275 = load ptr, ptr %274, align 8, !tbaa !21
  %276 = load i32, ptr %13, align 4, !tbaa !32
  %277 = load i32, ptr %19, align 4, !tbaa !32
  %278 = udiv i32 %276, %277
  %279 = load i32, ptr %29, align 4, !tbaa !32
  %280 = call signext i32 @dyn_comp(ptr noundef %15, ptr noundef %275, ptr noundef %39, i32 noundef signext %278, i32 noundef signext %279, ptr noundef %16)
  store i32 %280, ptr %36, align 4, !tbaa !32
  %281 = load i32, ptr %36, align 4, !tbaa !32
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %248
  store i32 18, ptr %37, align 4
  br label %298

284:                                              ; preds = %248
  %285 = load i32, ptr %19, align 4, !tbaa !32
  %286 = load i32, ptr %16, align 4, !tbaa !32
  %287 = mul i32 %285, %286
  %288 = load i32, ptr %17, align 4, !tbaa !32
  %289 = mul i32 16, %288
  %290 = add i32 %287, %289
  store i32 %290, ptr %40, align 4, !tbaa !32
  %291 = load i32, ptr %40, align 4, !tbaa !32
  %292 = load i32, ptr %20, align 4, !tbaa !32
  %293 = icmp ult i32 %291, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %284
  %295 = load i32, ptr %17, align 4, !tbaa !32
  store i32 %295, ptr %21, align 4, !tbaa !32
  %296 = load i32, ptr %40, align 4, !tbaa !32
  store i32 %296, ptr %20, align 4, !tbaa !32
  br label %297

297:                                              ; preds = %294, %284
  store i32 0, ptr %37, align 4
  br label %298

298:                                              ; preds = %283, %297
  call void @llvm.lifetime.end.p0(i64 4, ptr %40) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr %39) #9
  %299 = load i32, ptr %37, align 4
  switch i32 %299, label %559 [
    i32 0, label %300
    i32 18, label %557
  ]

300:                                              ; preds = %298
  br label %301

301:                                              ; preds = %300
  %302 = load i32, ptr %17, align 4, !tbaa !32
  %303 = add i32 %302, 4
  store i32 %303, ptr %17, align 4, !tbaa !32
  br label %216, !llvm.loop !61

304:                                              ; preds = %216
  %305 = load i8, ptr %31, align 1, !tbaa !36
  %306 = zext i8 %305 to i32
  %307 = icmp eq i32 %306, 1
  %308 = zext i1 %307 to i64
  %309 = select i1 %307, i32 32, i32 0
  %310 = add nsw i32 32, %309
  %311 = load i32, ptr %20, align 4, !tbaa !32
  %312 = add i32 %311, %310
  store i32 %312, ptr %20, align 4, !tbaa !32
  %313 = load i8, ptr %26, align 1, !tbaa !36
  %314 = zext i8 %313 to i32
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %324

316:                                              ; preds = %304
  %317 = load i32, ptr %13, align 4, !tbaa !32
  %318 = load i8, ptr %26, align 1, !tbaa !36
  %319 = zext i8 %318 to i32
  %320 = mul nsw i32 %319, 8
  %321 = mul i32 %317, %320
  %322 = load i32, ptr %20, align 4, !tbaa !32
  %323 = add i32 %322, %321
  store i32 %323, ptr %20, align 4, !tbaa !32
  br label %324

324:                                              ; preds = %316, %304
  %325 = load i32, ptr %13, align 4, !tbaa !32
  %326 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 1
  %327 = load i16, ptr %326, align 8, !tbaa !10
  %328 = sext i16 %327 to i32
  %329 = mul i32 %325, %328
  %330 = load i8, ptr %31, align 1, !tbaa !36
  %331 = zext i8 %330 to i32
  %332 = icmp eq i32 %331, 1
  %333 = zext i1 %332 to i64
  %334 = select i1 %332, i32 32, i32 0
  %335 = add i32 %329, %334
  %336 = add i32 %335, 16
  store i32 %336, ptr %34, align 4, !tbaa !32
  %337 = load i32, ptr %20, align 4, !tbaa !32
  %338 = load i32, ptr %34, align 4, !tbaa !32
  %339 = icmp uge i32 %337, %338
  %340 = zext i1 %339 to i64
  %341 = select i1 %339, i1 true, i1 false
  %342 = zext i1 %341 to i8
  store i8 %342, ptr %35, align 1, !tbaa !43
  %343 = load i8, ptr %35, align 1, !tbaa !43, !range !44, !noundef !45
  %344 = trunc i8 %343 to i1
  %345 = zext i1 %344 to i32
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %449

347:                                              ; preds = %324
  %348 = load ptr, ptr %9, align 8, !tbaa !29
  call void @BitBufferWrite(ptr noundef %348, i32 noundef signext 0, i32 noundef signext 12)
  %349 = load ptr, ptr %9, align 8, !tbaa !29
  %350 = load i8, ptr %31, align 1, !tbaa !36
  %351 = zext i8 %350 to i32
  %352 = shl i32 %351, 3
  %353 = load i8, ptr %26, align 1, !tbaa !36
  %354 = zext i8 %353 to i32
  %355 = shl i32 %354, 1
  %356 = or i32 %352, %355
  call void @BitBufferWrite(ptr noundef %349, i32 noundef signext %356, i32 noundef signext 4)
  %357 = load i8, ptr %31, align 1, !tbaa !36
  %358 = icmp ne i8 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %347
  %360 = load ptr, ptr %9, align 8, !tbaa !29
  %361 = load i32, ptr %13, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %360, i32 noundef signext %361, i32 noundef signext 32)
  br label %362

362:                                              ; preds = %359, %347
  %363 = load ptr, ptr %9, align 8, !tbaa !29
  call void @BitBufferWrite(ptr noundef %363, i32 noundef signext 0, i32 noundef signext 16)
  %364 = load i32, ptr %21, align 4, !tbaa !32
  store i32 %364, ptr %17, align 4, !tbaa !32
  %365 = load ptr, ptr %9, align 8, !tbaa !29
  call void @BitBufferWrite(ptr noundef %365, i32 noundef signext 9, i32 noundef signext 8)
  %366 = load ptr, ptr %9, align 8, !tbaa !29
  %367 = load i8, ptr %30, align 1, !tbaa !36
  %368 = zext i8 %367 to i32
  %369 = shl i32 %368, 5
  %370 = load i32, ptr %17, align 4, !tbaa !32
  %371 = or i32 %369, %370
  call void @BitBufferWrite(ptr noundef %366, i32 noundef signext %371, i32 noundef signext 8)
  store i32 0, ptr %24, align 4, !tbaa !32
  br label %372

372:                                              ; preds = %388, %362
  %373 = load i32, ptr %24, align 4, !tbaa !32
  %374 = load i32, ptr %17, align 4, !tbaa !32
  %375 = icmp ult i32 %373, %374
  br i1 %375, label %376, label %391

376:                                              ; preds = %372
  %377 = load ptr, ptr %9, align 8, !tbaa !29
  %378 = load ptr, ptr %18, align 8, !tbaa !35
  %379 = load i32, ptr %17, align 4, !tbaa !32
  %380 = sub i32 %379, 1
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds nuw [16 x i16], ptr %378, i64 %381
  %383 = load i32, ptr %24, align 4, !tbaa !32
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds nuw [16 x i16], ptr %382, i64 0, i64 %384
  %386 = load i16, ptr %385, align 2, !tbaa !37
  %387 = sext i16 %386 to i32
  call void @BitBufferWrite(ptr noundef %377, i32 noundef signext %387, i32 noundef signext 16)
  br label %388

388:                                              ; preds = %376
  %389 = load i32, ptr %24, align 4, !tbaa !32
  %390 = add i32 %389, 1
  store i32 %390, ptr %24, align 4, !tbaa !32
  br label %372, !llvm.loop !62

391:                                              ; preds = %372
  %392 = load i8, ptr %26, align 1, !tbaa !36
  %393 = zext i8 %392 to i32
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %414

395:                                              ; preds = %391
  store i32 0, ptr %24, align 4, !tbaa !32
  br label %396

396:                                              ; preds = %410, %395
  %397 = load i32, ptr %24, align 4, !tbaa !32
  %398 = load i32, ptr %13, align 4, !tbaa !32
  %399 = icmp ult i32 %397, %398
  br i1 %399, label %400, label %413

400:                                              ; preds = %396
  %401 = load ptr, ptr %9, align 8, !tbaa !29
  %402 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 10
  %403 = load ptr, ptr %402, align 8, !tbaa !23
  %404 = load i32, ptr %24, align 4, !tbaa !32
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds nuw i16, ptr %403, i64 %405
  %407 = load i16, ptr %406, align 2, !tbaa !37
  %408 = zext i16 %407 to i32
  %409 = load i32, ptr %27, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %401, i32 noundef signext %408, i32 noundef signext %409)
  br label %410

410:                                              ; preds = %400
  %411 = load i32, ptr %24, align 4, !tbaa !32
  %412 = add i32 %411, 1
  store i32 %412, ptr %24, align 4, !tbaa !32
  br label %396, !llvm.loop !63

413:                                              ; preds = %396
  br label %414

414:                                              ; preds = %413, %391
  %415 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 6
  %416 = load ptr, ptr %415, align 8, !tbaa !19
  %417 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 8
  %418 = load ptr, ptr %417, align 8, !tbaa !21
  %419 = load i32, ptr %13, align 4, !tbaa !32
  %420 = load ptr, ptr %18, align 8, !tbaa !35
  %421 = load i32, ptr %17, align 4, !tbaa !32
  %422 = sub i32 %421, 1
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds nuw [16 x i16], ptr %420, i64 %423
  %425 = getelementptr inbounds [16 x i16], ptr %424, i64 0, i64 0
  %426 = load i32, ptr %17, align 4, !tbaa !32
  %427 = load i32, ptr %29, align 4, !tbaa !32
  call void @pc_block(ptr noundef %416, ptr noundef %418, i32 noundef signext %419, ptr noundef %425, i32 noundef signext %426, i32 noundef signext %427, i32 noundef signext 9)
  %428 = load i32, ptr %13, align 4, !tbaa !32
  %429 = load i32, ptr %13, align 4, !tbaa !32
  call void @set_standard_ag_params(ptr noundef %15, i32 noundef signext %428, i32 noundef signext %429)
  %430 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 8
  %431 = load ptr, ptr %430, align 8, !tbaa !21
  %432 = load ptr, ptr %9, align 8, !tbaa !29
  %433 = load i32, ptr %13, align 4, !tbaa !32
  %434 = load i32, ptr %29, align 4, !tbaa !32
  %435 = call signext i32 @dyn_comp(ptr noundef %15, ptr noundef %431, ptr noundef %432, i32 noundef signext %433, i32 noundef signext %434, ptr noundef %16)
  store i32 %435, ptr %36, align 4, !tbaa !32
  %436 = load ptr, ptr %9, align 8, !tbaa !29
  %437 = call signext i32 @BitBufferGetPosition(ptr noundef %436)
  %438 = call signext i32 @BitBufferGetPosition(ptr noundef %14)
  %439 = sub i32 %437, %438
  store i32 %439, ptr %20, align 4, !tbaa !32
  %440 = load i32, ptr %20, align 4, !tbaa !32
  %441 = load i32, ptr %34, align 4, !tbaa !32
  %442 = icmp uge i32 %440, %441
  br i1 %442, label %443, label %448

443:                                              ; preds = %414
  %444 = load ptr, ptr %9, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %444, ptr align 8 %14, i64 24, i1 false), !tbaa.struct !33
  store i8 1, ptr %35, align 1, !tbaa !43
  %445 = load i32, ptr %20, align 4, !tbaa !32
  %446 = load i32, ptr %34, align 4, !tbaa !32
  %447 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef signext %445, i32 noundef signext %446)
  br label %448

448:                                              ; preds = %443, %414
  br label %449

449:                                              ; preds = %448, %324
  %450 = load i8, ptr %35, align 1, !tbaa !43, !range !44, !noundef !45
  %451 = trunc i8 %450 to i1
  %452 = zext i1 %451 to i32
  %453 = icmp eq i32 %452, 1
  br i1 %453, label %454, label %556

454:                                              ; preds = %449
  %455 = load ptr, ptr %9, align 8, !tbaa !29
  call void @BitBufferWrite(ptr noundef %455, i32 noundef signext 0, i32 noundef signext 12)
  %456 = load ptr, ptr %9, align 8, !tbaa !29
  %457 = load i8, ptr %31, align 1, !tbaa !36
  %458 = zext i8 %457 to i32
  %459 = shl i32 %458, 3
  %460 = or i32 %459, 1
  call void @BitBufferWrite(ptr noundef %456, i32 noundef signext %460, i32 noundef signext 4)
  %461 = load i8, ptr %31, align 1, !tbaa !36
  %462 = icmp ne i8 %461, 0
  br i1 %462, label %463, label %466

463:                                              ; preds = %454
  %464 = load ptr, ptr %9, align 8, !tbaa !29
  %465 = load i32, ptr %13, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %464, i32 noundef signext %465, i32 noundef signext 32)
  br label %466

466:                                              ; preds = %463, %454
  %467 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 1
  %468 = load i16, ptr %467, align 8, !tbaa !10
  %469 = sext i16 %468 to i32
  switch i32 %469, label %555 [
    i32 16, label %470
    i32 20, label %491
    i32 24, label %513
    i32 32, label %535
  ]

470:                                              ; preds = %466
  %471 = load ptr, ptr %10, align 8, !tbaa !31
  store ptr %471, ptr %32, align 8, !tbaa !35
  store i32 0, ptr %24, align 4, !tbaa !32
  br label %472

472:                                              ; preds = %486, %470
  %473 = load i32, ptr %24, align 4, !tbaa !32
  %474 = load i32, ptr %13, align 4, !tbaa !32
  %475 = load i32, ptr %11, align 4, !tbaa !32
  %476 = mul i32 %474, %475
  %477 = icmp ult i32 %473, %476
  br i1 %477, label %478, label %490

478:                                              ; preds = %472
  %479 = load ptr, ptr %9, align 8, !tbaa !29
  %480 = load ptr, ptr %32, align 8, !tbaa !35
  %481 = load i32, ptr %24, align 4, !tbaa !32
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds nuw i16, ptr %480, i64 %482
  %484 = load i16, ptr %483, align 2, !tbaa !37
  %485 = sext i16 %484 to i32
  call void @BitBufferWrite(ptr noundef %479, i32 noundef signext %485, i32 noundef signext 16)
  br label %486

486:                                              ; preds = %478
  %487 = load i32, ptr %11, align 4, !tbaa !32
  %488 = load i32, ptr %24, align 4, !tbaa !32
  %489 = add i32 %488, %487
  store i32 %489, ptr %24, align 4, !tbaa !32
  br label %472, !llvm.loop !64

490:                                              ; preds = %472
  br label %555

491:                                              ; preds = %466
  %492 = load ptr, ptr %10, align 8, !tbaa !31
  %493 = load i32, ptr %11, align 4, !tbaa !32
  %494 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 6
  %495 = load ptr, ptr %494, align 8, !tbaa !19
  %496 = load i32, ptr %13, align 4, !tbaa !32
  call void @copy20ToPredictor(ptr noundef %492, i32 noundef signext %493, ptr noundef %495, i32 noundef signext %496)
  store i32 0, ptr %24, align 4, !tbaa !32
  br label %497

497:                                              ; preds = %509, %491
  %498 = load i32, ptr %24, align 4, !tbaa !32
  %499 = load i32, ptr %13, align 4, !tbaa !32
  %500 = icmp ult i32 %498, %499
  br i1 %500, label %501, label %512

501:                                              ; preds = %497
  %502 = load ptr, ptr %9, align 8, !tbaa !29
  %503 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 6
  %504 = load ptr, ptr %503, align 8, !tbaa !19
  %505 = load i32, ptr %24, align 4, !tbaa !32
  %506 = zext i32 %505 to i64
  %507 = getelementptr inbounds nuw i32, ptr %504, i64 %506
  %508 = load i32, ptr %507, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %502, i32 noundef signext %508, i32 noundef signext 20)
  br label %509

509:                                              ; preds = %501
  %510 = load i32, ptr %24, align 4, !tbaa !32
  %511 = add i32 %510, 1
  store i32 %511, ptr %24, align 4, !tbaa !32
  br label %497, !llvm.loop !65

512:                                              ; preds = %497
  br label %555

513:                                              ; preds = %466
  %514 = load ptr, ptr %10, align 8, !tbaa !31
  %515 = load i32, ptr %11, align 4, !tbaa !32
  %516 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 6
  %517 = load ptr, ptr %516, align 8, !tbaa !19
  %518 = load i32, ptr %13, align 4, !tbaa !32
  call void @copy24ToPredictor(ptr noundef %514, i32 noundef signext %515, ptr noundef %517, i32 noundef signext %518)
  store i32 0, ptr %24, align 4, !tbaa !32
  br label %519

519:                                              ; preds = %531, %513
  %520 = load i32, ptr %24, align 4, !tbaa !32
  %521 = load i32, ptr %13, align 4, !tbaa !32
  %522 = icmp ult i32 %520, %521
  br i1 %522, label %523, label %534

523:                                              ; preds = %519
  %524 = load ptr, ptr %9, align 8, !tbaa !29
  %525 = getelementptr inbounds nuw %class.ALACEncoder, ptr %42, i32 0, i32 6
  %526 = load ptr, ptr %525, align 8, !tbaa !19
  %527 = load i32, ptr %24, align 4, !tbaa !32
  %528 = zext i32 %527 to i64
  %529 = getelementptr inbounds nuw i32, ptr %526, i64 %528
  %530 = load i32, ptr %529, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %524, i32 noundef signext %530, i32 noundef signext 24)
  br label %531

531:                                              ; preds = %523
  %532 = load i32, ptr %24, align 4, !tbaa !32
  %533 = add i32 %532, 1
  store i32 %533, ptr %24, align 4, !tbaa !32
  br label %519, !llvm.loop !66

534:                                              ; preds = %519
  br label %555

535:                                              ; preds = %466
  %536 = load ptr, ptr %10, align 8, !tbaa !31
  store ptr %536, ptr %33, align 8, !tbaa !52
  store i32 0, ptr %24, align 4, !tbaa !32
  br label %537

537:                                              ; preds = %550, %535
  %538 = load i32, ptr %24, align 4, !tbaa !32
  %539 = load i32, ptr %13, align 4, !tbaa !32
  %540 = load i32, ptr %11, align 4, !tbaa !32
  %541 = mul i32 %539, %540
  %542 = icmp ult i32 %538, %541
  br i1 %542, label %543, label %554

543:                                              ; preds = %537
  %544 = load ptr, ptr %9, align 8, !tbaa !29
  %545 = load ptr, ptr %33, align 8, !tbaa !52
  %546 = load i32, ptr %24, align 4, !tbaa !32
  %547 = zext i32 %546 to i64
  %548 = getelementptr inbounds nuw i32, ptr %545, i64 %547
  %549 = load i32, ptr %548, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %544, i32 noundef signext %549, i32 noundef signext 32)
  br label %550

550:                                              ; preds = %543
  %551 = load i32, ptr %11, align 4, !tbaa !32
  %552 = load i32, ptr %24, align 4, !tbaa !32
  %553 = add i32 %552, %551
  store i32 %553, ptr %24, align 4, !tbaa !32
  br label %537, !llvm.loop !67

554:                                              ; preds = %537
  br label %555

555:                                              ; preds = %466, %554, %534, %512, %490
  br label %556

556:                                              ; preds = %555, %449
  br label %557

557:                                              ; preds = %556, %298
  %558 = load i32, ptr %36, align 4, !tbaa !32
  store i32 %558, ptr %7, align 4
  store i32 1, ptr %37, align 4
  br label %559

559:                                              ; preds = %557, %298, %63
  call void @llvm.lifetime.end.p0(i64 4, ptr %36) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %35) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %34) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %33) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %32) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %31) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %30) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %29) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %26) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr %15) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr %14) #9
  %560 = load i32, ptr %7, align 4
  ret i32 %560
}

declare void @copy20ToPredictor(ptr noundef, i32 noundef signext, ptr noundef, i32 noundef signext) #6

declare void @copy24ToPredictor(ptr noundef, i32 noundef signext, ptr noundef, i32 noundef signext) #6

declare void @set_standard_ag_params(ptr noundef, i32 noundef signext, i32 noundef signext) #6

; Function Attrs: mustprogress
define dso_local noundef signext i32 @_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 align 2 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.BitBuffer, align 8
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  store ptr %0, ptr %8, align 8, !tbaa !3
  store ptr %1, ptr %9, align 8, !tbaa !68
  store ptr %2, ptr %10, align 8, !tbaa !68
  store ptr %3, ptr %11, align 8, !tbaa !34
  store ptr %4, ptr %12, align 8, !tbaa !34
  store ptr %5, ptr %13, align 8, !tbaa !52
  %26 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr %16) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #9
  %27 = load ptr, ptr %13, align 8, !tbaa !52
  %28 = load i32, ptr %27, align 4, !tbaa !32
  %29 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %1, i32 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !70
  %31 = udiv i32 %28, %30
  store i32 %31, ptr %14, align 4, !tbaa !32
  %32 = load ptr, ptr %12, align 8, !tbaa !34
  %33 = getelementptr inbounds nuw %class.ALACEncoder, ptr %26, i32 0, i32 18
  %34 = load i32, ptr %33, align 8, !tbaa !38
  call void @BitBufferInit(ptr noundef %16, ptr noundef %32, i32 noundef signext %34)
  %35 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %1, i32 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !73
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %57

38:                                               ; preds = %6
  call void @BitBufferWrite(ptr noundef %16, i32 noundef signext 1, i32 noundef signext 3)
  call void @BitBufferWrite(ptr noundef %16, i32 noundef signext 0, i32 noundef signext 4)
  %39 = getelementptr inbounds nuw %class.ALACEncoder, ptr %26, i32 0, i32 2
  %40 = load i8, ptr %39, align 2, !tbaa !18, !range !44, !noundef !45
  %41 = trunc i8 %40 to i1
  %42 = zext i1 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load ptr, ptr %11, align 8, !tbaa !34
  %46 = load i32, ptr %14, align 4, !tbaa !32
  %47 = call noundef signext i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %26, ptr noundef %16, ptr noundef %45, i32 noundef signext 2, i32 noundef signext 0, i32 noundef signext %46)
  store i32 %47, ptr %17, align 4, !tbaa !32
  br label %52

48:                                               ; preds = %38
  %49 = load ptr, ptr %11, align 8, !tbaa !34
  %50 = load i32, ptr %14, align 4, !tbaa !32
  %51 = call noundef signext i32 @_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %26, ptr noundef %16, ptr noundef %49, i32 noundef signext 2, i32 noundef signext 0, i32 noundef signext %50)
  store i32 %51, ptr %17, align 4, !tbaa !32
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, ptr %17, align 4, !tbaa !32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %187

56:                                               ; preds = %52
  br label %166

57:                                               ; preds = %6
  %58 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %1, i32 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !73
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  call void @BitBufferWrite(ptr noundef %16, i32 noundef signext 0, i32 noundef signext 3)
  call void @BitBufferWrite(ptr noundef %16, i32 noundef signext 0, i32 noundef signext 4)
  %62 = load ptr, ptr %11, align 8, !tbaa !34
  %63 = load i32, ptr %14, align 4, !tbaa !32
  %64 = call noundef signext i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %26, ptr noundef %16, ptr noundef %62, i32 noundef signext 1, i32 noundef signext 0, i32 noundef signext %63)
  store i32 %64, ptr %17, align 4, !tbaa !32
  %65 = load i32, ptr %17, align 4, !tbaa !32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %187

68:                                               ; preds = %61
  br label %165

69:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %22) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %23) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %24) #9
  %70 = load ptr, ptr %11, align 8, !tbaa !34
  store ptr %70, ptr %18, align 8, !tbaa !34
  %71 = getelementptr inbounds nuw %class.ALACEncoder, ptr %26, i32 0, i32 1
  %72 = load i16, ptr %71, align 8, !tbaa !10
  %73 = sext i16 %72 to i32
  %74 = add nsw i32 %73, 7
  %75 = sdiv i32 %74, 8
  store i32 %75, ptr %21, align 4, !tbaa !32
  store i8 0, ptr %22, align 1, !tbaa !36
  store i8 0, ptr %23, align 1, !tbaa !36
  store i8 0, ptr %24, align 1, !tbaa !36
  store i32 0, ptr %20, align 4, !tbaa !32
  br label %76

76:                                               ; preds = %160, %69
  %77 = load i32, ptr %20, align 4, !tbaa !32
  %78 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %1, i32 0, i32 6
  %79 = load i32, ptr %78, align 4, !tbaa !73
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %81, label %161

81:                                               ; preds = %76
  %82 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %1, i32 0, i32 6
  %83 = load i32, ptr %82, align 4, !tbaa !73
  %84 = sub i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds nuw [8 x i32], ptr @_ZL12sChannelMaps, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !32
  %88 = zext i32 %87 to i64
  %89 = load i32, ptr %20, align 4, !tbaa !32
  %90 = mul i32 %89, 3
  %91 = zext i32 %90 to i64
  %92 = shl i64 7, %91
  %93 = and i64 %88, %92
  %94 = load i32, ptr %20, align 4, !tbaa !32
  %95 = mul i32 %94, 3
  %96 = zext i32 %95 to i64
  %97 = lshr i64 %93, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, ptr %19, align 4, !tbaa !32
  %99 = load i32, ptr %19, align 4, !tbaa !32
  call void @BitBufferWrite(ptr noundef %16, i32 noundef signext %99, i32 noundef signext 3)
  %100 = load i32, ptr %19, align 4, !tbaa !32
  switch i32 %100, label %153 [
    i32 0, label %101
    i32 1, label %118
    i32 3, label %136
  ]

101:                                              ; preds = %81
  %102 = load i8, ptr %23, align 1, !tbaa !36
  %103 = zext i8 %102 to i32
  call void @BitBufferWrite(ptr noundef %16, i32 noundef signext %103, i32 noundef signext 4)
  %104 = load ptr, ptr %18, align 8, !tbaa !34
  %105 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %1, i32 0, i32 6
  %106 = load i32, ptr %105, align 4, !tbaa !73
  %107 = load i32, ptr %20, align 4, !tbaa !32
  %108 = load i32, ptr %14, align 4, !tbaa !32
  %109 = call noundef signext i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %26, ptr noundef %16, ptr noundef %104, i32 noundef signext %106, i32 noundef signext %107, i32 noundef signext %108)
  store i32 %109, ptr %17, align 4, !tbaa !32
  %110 = load i32, ptr %21, align 4, !tbaa !32
  %111 = load ptr, ptr %18, align 8, !tbaa !34
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 %112
  store ptr %113, ptr %18, align 8, !tbaa !34
  %114 = load i32, ptr %20, align 4, !tbaa !32
  %115 = add i32 %114, 1
  store i32 %115, ptr %20, align 4, !tbaa !32
  %116 = load i8, ptr %23, align 1, !tbaa !36
  %117 = add i8 %116, 1
  store i8 %117, ptr %23, align 1, !tbaa !36
  br label %156

118:                                              ; preds = %81
  %119 = load i8, ptr %22, align 1, !tbaa !36
  %120 = zext i8 %119 to i32
  call void @BitBufferWrite(ptr noundef %16, i32 noundef signext %120, i32 noundef signext 4)
  %121 = load ptr, ptr %18, align 8, !tbaa !34
  %122 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %1, i32 0, i32 6
  %123 = load i32, ptr %122, align 4, !tbaa !73
  %124 = load i32, ptr %20, align 4, !tbaa !32
  %125 = load i32, ptr %14, align 4, !tbaa !32
  %126 = call noundef signext i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %26, ptr noundef %16, ptr noundef %121, i32 noundef signext %123, i32 noundef signext %124, i32 noundef signext %125)
  store i32 %126, ptr %17, align 4, !tbaa !32
  %127 = load i32, ptr %21, align 4, !tbaa !32
  %128 = mul i32 %127, 2
  %129 = load ptr, ptr %18, align 8, !tbaa !34
  %130 = zext i32 %128 to i64
  %131 = getelementptr inbounds nuw i8, ptr %129, i64 %130
  store ptr %131, ptr %18, align 8, !tbaa !34
  %132 = load i32, ptr %20, align 4, !tbaa !32
  %133 = add i32 %132, 2
  store i32 %133, ptr %20, align 4, !tbaa !32
  %134 = load i8, ptr %22, align 1, !tbaa !36
  %135 = add i8 %134, 1
  store i8 %135, ptr %22, align 1, !tbaa !36
  br label %156

136:                                              ; preds = %81
  %137 = load i8, ptr %24, align 1, !tbaa !36
  %138 = zext i8 %137 to i32
  call void @BitBufferWrite(ptr noundef %16, i32 noundef signext %138, i32 noundef signext 4)
  %139 = load ptr, ptr %18, align 8, !tbaa !34
  %140 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %1, i32 0, i32 6
  %141 = load i32, ptr %140, align 4, !tbaa !73
  %142 = load i32, ptr %20, align 4, !tbaa !32
  %143 = load i32, ptr %14, align 4, !tbaa !32
  %144 = call noundef signext i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %26, ptr noundef %16, ptr noundef %139, i32 noundef signext %141, i32 noundef signext %142, i32 noundef signext %143)
  store i32 %144, ptr %17, align 4, !tbaa !32
  %145 = load i32, ptr %21, align 4, !tbaa !32
  %146 = load ptr, ptr %18, align 8, !tbaa !34
  %147 = zext i32 %145 to i64
  %148 = getelementptr inbounds nuw i8, ptr %146, i64 %147
  store ptr %148, ptr %18, align 8, !tbaa !34
  %149 = load i32, ptr %20, align 4, !tbaa !32
  %150 = add i32 %149, 1
  store i32 %150, ptr %20, align 4, !tbaa !32
  %151 = load i8, ptr %24, align 1, !tbaa !36
  %152 = add i8 %151, 1
  store i8 %152, ptr %24, align 1, !tbaa !36
  br label %156

153:                                              ; preds = %81
  %154 = load i32, ptr %19, align 4, !tbaa !32
  %155 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef signext %154)
  store i32 -50, ptr %17, align 4, !tbaa !32
  store i32 2, ptr %25, align 4
  br label %162

156:                                              ; preds = %136, %118, %101
  %157 = load i32, ptr %17, align 4, !tbaa !32
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 2, ptr %25, align 4
  br label %162

160:                                              ; preds = %156
  br label %76, !llvm.loop !74

161:                                              ; preds = %76
  store i32 0, ptr %25, align 4
  br label %162

162:                                              ; preds = %159, %153, %161
  call void @llvm.lifetime.end.p0(i64 1, ptr %24) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %23) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %22) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #9
  %163 = load i32, ptr %25, align 4
  switch i32 %163, label %189 [
    i32 0, label %164
    i32 2, label %187
  ]

164:                                              ; preds = %162
  br label %165

165:                                              ; preds = %164, %68
  br label %166

166:                                              ; preds = %165, %56
  call void @BitBufferWrite(ptr noundef %16, i32 noundef signext 7, i32 noundef signext 3)
  call void @BitBufferByteAlign(ptr noundef %16, i32 noundef signext 1)
  %167 = call signext i32 @BitBufferGetPosition(ptr noundef %16)
  %168 = udiv i32 %167, 8
  store i32 %168, ptr %15, align 4, !tbaa !32
  %169 = load i32, ptr %15, align 4, !tbaa !32
  %170 = load ptr, ptr %13, align 8, !tbaa !52
  store i32 %169, ptr %170, align 4, !tbaa !32
  %171 = load i32, ptr %15, align 4, !tbaa !32
  %172 = getelementptr inbounds nuw %class.ALACEncoder, ptr %26, i32 0, i32 14
  %173 = load i32, ptr %172, align 8, !tbaa !25
  %174 = add i32 %173, %171
  store i32 %174, ptr %172, align 8, !tbaa !25
  %175 = getelementptr inbounds nuw %class.ALACEncoder, ptr %26, i32 0, i32 16
  %176 = load i32, ptr %175, align 8, !tbaa !27
  %177 = load i32, ptr %15, align 4, !tbaa !32
  %178 = icmp ugt i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %166
  %180 = getelementptr inbounds nuw %class.ALACEncoder, ptr %26, i32 0, i32 16
  %181 = load i32, ptr %180, align 8, !tbaa !27
  br label %184

182:                                              ; preds = %166
  %183 = load i32, ptr %15, align 4, !tbaa !32
  br label %184

184:                                              ; preds = %182, %179
  %185 = phi i32 [ %181, %179 ], [ %183, %182 ]
  %186 = getelementptr inbounds nuw %class.ALACEncoder, ptr %26, i32 0, i32 16
  store i32 %185, ptr %186, align 8, !tbaa !27
  store i32 0, ptr %17, align 4, !tbaa !32
  br label %187

187:                                              ; preds = %184, %162, %67, %55
  %188 = load i32, ptr %17, align 4, !tbaa !32
  store i32 %188, ptr %7, align 4
  store i32 1, ptr %25, align 4
  br label %189

189:                                              ; preds = %187, %162
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr %16) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #9
  %190 = load i32, ptr %7, align 4
  ret i32 %190
}

declare void @BitBufferByteAlign(ptr noundef, i32 noundef signext) #6

; Function Attrs: mustprogress nounwind
define dso_local noundef signext i32 @_ZN11ALACEncoder6FinishEv(ptr noundef nonnull align 8 dereferenceable(8300) %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8
  ret i32 0
}

; Function Attrs: mustprogress
define dso_local void @_ZN11ALACEncoder9GetConfigER18ALACSpecificConfig(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !75
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds nuw %class.ALACEncoder, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4, !tbaa !28
  %8 = call signext i32 @Swap32NtoB(i32 noundef signext %7)
  %9 = load ptr, ptr %4, align 8, !tbaa !75
  %10 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %9, i32 0, i32 0
  store i32 %8, ptr %10, align 4, !tbaa !77
  %11 = load ptr, ptr %4, align 8, !tbaa !75
  %12 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %11, i32 0, i32 1
  store i8 0, ptr %12, align 4, !tbaa !79
  %13 = getelementptr inbounds nuw %class.ALACEncoder, ptr %5, i32 0, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !10
  %15 = trunc i16 %14 to i8
  %16 = load ptr, ptr %4, align 8, !tbaa !75
  %17 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %16, i32 0, i32 2
  store i8 %15, ptr %17, align 1, !tbaa !80
  %18 = load ptr, ptr %4, align 8, !tbaa !75
  %19 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %18, i32 0, i32 3
  store i8 40, ptr %19, align 2, !tbaa !81
  %20 = load ptr, ptr %4, align 8, !tbaa !75
  %21 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %20, i32 0, i32 5
  store i8 14, ptr %21, align 4, !tbaa !82
  %22 = load ptr, ptr %4, align 8, !tbaa !75
  %23 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %22, i32 0, i32 4
  store i8 10, ptr %23, align 1, !tbaa !83
  %24 = getelementptr inbounds nuw %class.ALACEncoder, ptr %5, i32 0, i32 19
  %25 = load i32, ptr %24, align 4, !tbaa !84
  %26 = trunc i32 %25 to i8
  %27 = load ptr, ptr %4, align 8, !tbaa !75
  %28 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %27, i32 0, i32 6
  store i8 %26, ptr %28, align 1, !tbaa !85
  %29 = call zeroext i16 @Swap16NtoB(i16 noundef zeroext 255)
  %30 = load ptr, ptr %4, align 8, !tbaa !75
  %31 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %30, i32 0, i32 7
  store i16 %29, ptr %31, align 2, !tbaa !86
  %32 = getelementptr inbounds nuw %class.ALACEncoder, ptr %5, i32 0, i32 16
  %33 = load i32, ptr %32, align 8, !tbaa !27
  %34 = call signext i32 @Swap32NtoB(i32 noundef signext %33)
  %35 = load ptr, ptr %4, align 8, !tbaa !75
  %36 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %35, i32 0, i32 8
  store i32 %34, ptr %36, align 4, !tbaa !87
  %37 = getelementptr inbounds nuw %class.ALACEncoder, ptr %5, i32 0, i32 15
  %38 = load i32, ptr %37, align 4, !tbaa !26
  %39 = call signext i32 @Swap32NtoB(i32 noundef signext %38)
  %40 = load ptr, ptr %4, align 8, !tbaa !75
  %41 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %40, i32 0, i32 9
  store i32 %39, ptr %41, align 4, !tbaa !88
  %42 = getelementptr inbounds nuw %class.ALACEncoder, ptr %5, i32 0, i32 20
  %43 = load i32, ptr %42, align 8, !tbaa !89
  %44 = call signext i32 @Swap32NtoB(i32 noundef signext %43)
  %45 = load ptr, ptr %4, align 8, !tbaa !75
  %46 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %45, i32 0, i32 10
  store i32 %44, ptr %46, align 4, !tbaa !90
  ret void
}

declare signext i32 @Swap32NtoB(i32 noundef signext) #6

declare zeroext i16 @Swap16NtoB(i16 noundef zeroext) #6

; Function Attrs: mustprogress nounwind
define dso_local noundef signext i32 @_ZN11ALACEncoder18GetMagicCookieSizeEj(ptr noundef nonnull align 8 dereferenceable(8300) %0, i32 noundef signext %1) #0 align 2 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !32
  %6 = load ptr, ptr %4, align 8
  %7 = load i32, ptr %5, align 4, !tbaa !32
  %8 = icmp ugt i32 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 48, ptr %3, align 4
  br label %11

10:                                               ; preds = %2
  store i32 24, ptr %3, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, ptr %3, align 4
  ret i32 %12
}

; Function Attrs: mustprogress
define dso_local void @_ZN11ALACEncoder14GetMagicCookieEPvPj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2) #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.ALACSpecificConfig, align 4
  %8 = alloca %struct.ALACAudioChannelLayout, align 4
  %9 = alloca [12 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !31
  store ptr %2, ptr %6, align 8, !tbaa !52
  %12 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr %7) #9
  call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr %8) #9
  call void @llvm.memset.p0.i64(ptr align 4 %8, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr %9) #9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 @__const._ZN11ALACEncoder14GetMagicCookieEPvPj.theChannelAtom, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #9
  store i32 24, ptr %10, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #9
  %13 = load ptr, ptr %5, align 8, !tbaa !31
  store ptr %13, ptr %11, align 8, !tbaa !34
  call void @_ZN11ALACEncoder9GetConfigER18ALACSpecificConfig(ptr noundef nonnull align 8 dereferenceable(8300) %12, ptr noundef nonnull align 4 dereferenceable(24) %7)
  %14 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %7, i32 0, i32 6
  %15 = load i8, ptr %14, align 1, !tbaa !85
  %16 = zext i8 %15 to i32
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %7, i32 0, i32 6
  %20 = load i8, ptr %19, align 1, !tbaa !85
  %21 = zext i8 %20 to i32
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], ptr @_ZL21ALACChannelLayoutTags, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !32
  %26 = getelementptr inbounds nuw %struct.ALACAudioChannelLayout, ptr %8, i32 0, i32 0
  store i32 %25, ptr %26, align 4, !tbaa !91
  %27 = load i32, ptr %10, align 4, !tbaa !32
  %28 = zext i32 %27 to i64
  %29 = add i64 %28, 24
  %30 = trunc i64 %29 to i32
  store i32 %30, ptr %10, align 4, !tbaa !32
  br label %31

31:                                               ; preds = %18, %3
  %32 = load ptr, ptr %6, align 8, !tbaa !52
  %33 = load i32, ptr %32, align 4, !tbaa !32
  %34 = load i32, ptr %10, align 4, !tbaa !32
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load ptr, ptr %11, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 4 %7, i64 24, i1 false)
  %38 = getelementptr inbounds [12 x i8], ptr %9, i64 0, i64 3
  store i8 24, ptr %38, align 1, !tbaa !36
  %39 = getelementptr inbounds nuw %struct.ALACSpecificConfig, ptr %7, i32 0, i32 6
  %40 = load i8, ptr %39, align 1, !tbaa !85
  %41 = zext i8 %40 to i32
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load ptr, ptr %11, align 8, !tbaa !34
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 24
  store ptr %45, ptr %11, align 8, !tbaa !34
  %46 = load ptr, ptr %11, align 8, !tbaa !34
  %47 = getelementptr inbounds [12 x i8], ptr %9, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 %47, i64 12, i1 false)
  %48 = load ptr, ptr %11, align 8, !tbaa !34
  %49 = getelementptr inbounds i8, ptr %48, i64 12
  store ptr %49, ptr %11, align 8, !tbaa !34
  %50 = load ptr, ptr %11, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr align 4 %8, i64 12, i1 false)
  br label %51

51:                                               ; preds = %43, %36
  %52 = load i32, ptr %10, align 4, !tbaa !32
  %53 = load ptr, ptr %6, align 8, !tbaa !52
  store i32 %52, ptr %53, align 4, !tbaa !32
  br label %56

54:                                               ; preds = %31
  %55 = load ptr, ptr %6, align 8, !tbaa !52
  store i32 0, ptr %55, align 4, !tbaa !32
  br label %56

56:                                               ; preds = %54, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr %7) #9
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress
define dso_local noundef signext i32 @_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !68
  %10 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  %11 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %1, i32 0, i32 0
  %12 = load double, ptr %11, align 8, !tbaa !93
  %13 = fptoui double %12 to i32
  %14 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 20
  store i32 %13, ptr %14, align 8, !tbaa !89
  %15 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %1, i32 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !73
  %17 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 19
  store i32 %16, ptr %17, align 4, !tbaa !84
  %18 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !94
  switch i32 %19, label %28 [
    i32 1, label %20
    i32 2, label %22
    i32 3, label %24
    i32 4, label %26
  ]

20:                                               ; preds = %2
  %21 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 1
  store i16 16, ptr %21, align 8, !tbaa !10
  br label %29

22:                                               ; preds = %2
  %23 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 1
  store i16 20, ptr %23, align 8, !tbaa !10
  br label %29

24:                                               ; preds = %2
  %25 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 1
  store i16 24, ptr %25, align 8, !tbaa !10
  br label %29

26:                                               ; preds = %2
  %27 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 1
  store i16 32, ptr %27, align 8, !tbaa !10
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %26, %24, %22, %20
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  store i32 0, ptr %6, align 4, !tbaa !32
  br label %30

30:                                               ; preds = %39, %29
  %31 = load i32, ptr %6, align 4, !tbaa !32
  %32 = icmp ult i32 %31, 8
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  br label %42

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 4
  %36 = load i32, ptr %6, align 4, !tbaa !32
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds nuw [8 x i16], ptr %35, i64 0, i64 %37
  store i16 0, ptr %38, align 2, !tbaa !37
  br label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %6, align 4, !tbaa !32
  %41 = add i32 %40, 1
  store i32 %41, ptr %6, align 4, !tbaa !32
  br label %30, !llvm.loop !95

42:                                               ; preds = %33
  %43 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 17
  %44 = load i32, ptr %43, align 4, !tbaa !28
  %45 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 19
  %46 = load i32, ptr %45, align 4, !tbaa !84
  %47 = mul i32 %44, %46
  %48 = mul i32 %47, 5
  %49 = add i32 %48, 1
  %50 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 18
  store i32 %49, ptr %50, align 8, !tbaa !38
  %51 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 17
  %52 = load i32, ptr %51, align 4, !tbaa !28
  %53 = zext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = call noalias ptr @calloc(i64 noundef %54, i64 noundef 1) #11
  %56 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 6
  store ptr %55, ptr %56, align 8, !tbaa !19
  %57 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 17
  %58 = load i32, ptr %57, align 4, !tbaa !28
  %59 = zext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = call noalias ptr @calloc(i64 noundef %60, i64 noundef 1) #11
  %62 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 7
  store ptr %61, ptr %62, align 8, !tbaa !20
  %63 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 17
  %64 = load i32, ptr %63, align 4, !tbaa !28
  %65 = zext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = call noalias ptr @calloc(i64 noundef %66, i64 noundef 1) #11
  %68 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 8
  store ptr %67, ptr %68, align 8, !tbaa !21
  %69 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 17
  %70 = load i32, ptr %69, align 4, !tbaa !28
  %71 = zext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = call noalias ptr @calloc(i64 noundef %72, i64 noundef 1) #11
  %74 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 9
  store ptr %73, ptr %74, align 8, !tbaa !22
  %75 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 17
  %76 = load i32, ptr %75, align 4, !tbaa !28
  %77 = mul i32 %76, 2
  %78 = zext i32 %77 to i64
  %79 = mul i64 %78, 2
  %80 = call noalias ptr @calloc(i64 noundef %79, i64 noundef 1) #11
  %81 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 10
  store ptr %80, ptr %81, align 8, !tbaa !23
  %82 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 18
  %83 = load i32, ptr %82, align 8, !tbaa !38
  %84 = zext i32 %83 to i64
  %85 = call noalias ptr @calloc(i64 noundef %84, i64 noundef 1) #11
  %86 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 11
  store ptr %85, ptr %86, align 8, !tbaa !24
  %87 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !19
  %89 = icmp ne ptr %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %42
  %91 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 7
  %92 = load ptr, ptr %91, align 8, !tbaa !20
  %93 = icmp ne ptr %92, null
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 8
  %96 = load ptr, ptr %95, align 8, !tbaa !21
  %97 = icmp ne ptr %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 9
  %100 = load ptr, ptr %99, align 8, !tbaa !22
  %101 = icmp ne ptr %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 10
  %104 = load ptr, ptr %103, align 8, !tbaa !23
  %105 = icmp ne ptr %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 11
  %108 = load ptr, ptr %107, align 8, !tbaa !24
  %109 = icmp ne ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106, %102, %98, %94, %90, %42
  store i32 -108, ptr %5, align 4, !tbaa !32
  br label %148

111:                                              ; preds = %106
  store i32 0, ptr %5, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  store i32 0, ptr %7, align 4, !tbaa !32
  br label %112

112:                                              ; preds = %144, %111
  %113 = load i32, ptr %7, align 4, !tbaa !32
  %114 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 19
  %115 = load i32, ptr %114, align 4, !tbaa !84
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  store i32 7, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  br label %147

118:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9
  store i32 0, ptr %9, align 4, !tbaa !32
  br label %119

119:                                              ; preds = %140, %118
  %120 = load i32, ptr %9, align 4, !tbaa !32
  %121 = icmp slt i32 %120, 16
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  store i32 10, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9
  br label %143

123:                                              ; preds = %119
  %124 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 12
  %125 = load i32, ptr %7, align 4, !tbaa !32
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [8 x [16 x [16 x i16]]], ptr %124, i64 0, i64 %126
  %128 = load i32, ptr %9, align 4, !tbaa !32
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [16 x [16 x i16]], ptr %127, i64 0, i64 %129
  %131 = getelementptr inbounds [16 x i16], ptr %130, i64 0, i64 0
  call void @init_coefs(ptr noundef %131, i32 noundef signext 9, i32 noundef signext 16)
  %132 = getelementptr inbounds nuw %class.ALACEncoder, ptr %10, i32 0, i32 13
  %133 = load i32, ptr %7, align 4, !tbaa !32
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [8 x [16 x [16 x i16]]], ptr %132, i64 0, i64 %134
  %136 = load i32, ptr %9, align 4, !tbaa !32
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [16 x [16 x i16]], ptr %135, i64 0, i64 %137
  %139 = getelementptr inbounds [16 x i16], ptr %138, i64 0, i64 0
  call void @init_coefs(ptr noundef %139, i32 noundef signext 9, i32 noundef signext 16)
  br label %140

140:                                              ; preds = %123
  %141 = load i32, ptr %9, align 4, !tbaa !32
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr %9, align 4, !tbaa !32
  br label %119, !llvm.loop !96

143:                                              ; preds = %122
  br label %144

144:                                              ; preds = %143
  %145 = load i32, ptr %7, align 4, !tbaa !32
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %7, align 4, !tbaa !32
  br label %112, !llvm.loop !97

147:                                              ; preds = %117
  br label %148

148:                                              ; preds = %147, %110
  %149 = load i32, ptr %5, align 4, !tbaa !32
  store i32 1, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  ret i32 %149
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #8

declare void @init_coefs(ptr noundef, i32 noundef signext, i32 noundef signext) #6

; Function Attrs: mustprogress nounwind
define dso_local void @_ZN11ALACEncoder15GetSourceFormatEPK22AudioFormatDescriptionPS0_(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !68
  store ptr %2, ptr %6, align 8, !tbaa !68
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !tbaa !68
  %9 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !98
  %11 = icmp ne i32 %10, 1819304813
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !tbaa !68
  %14 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !94
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %5, align 8, !tbaa !68
  %20 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %19, i32 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !99
  %22 = icmp ule i32 %21, 16
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %12, %3
  %24 = getelementptr inbounds nuw %class.ALACEncoder, ptr %7, i32 0, i32 1
  store i16 16, ptr %24, align 8, !tbaa !10
  br label %43

25:                                               ; preds = %18
  %26 = load ptr, ptr %5, align 8, !tbaa !68
  %27 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %26, i32 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !99
  %29 = icmp ule i32 %28, 20
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = getelementptr inbounds nuw %class.ALACEncoder, ptr %7, i32 0, i32 1
  store i16 20, ptr %31, align 8, !tbaa !10
  br label %42

32:                                               ; preds = %25
  %33 = load ptr, ptr %5, align 8, !tbaa !68
  %34 = getelementptr inbounds nuw %struct.AudioFormatDescription, ptr %33, i32 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !99
  %36 = icmp ule i32 %35, 24
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = getelementptr inbounds nuw %class.ALACEncoder, ptr %7, i32 0, i32 1
  store i16 24, ptr %38, align 8, !tbaa !10
  br label %41

39:                                               ; preds = %32
  %40 = getelementptr inbounds nuw %class.ALACEncoder, ptr %7, i32 0, i32 1
  store i16 32, ptr %40, align 8, !tbaa !10
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %30
  br label %43

43:                                               ; preds = %42, %23
  ret void
}

attributes #0 = { mustprogress nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { mustprogress "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 _ZTS11ALACEncoder", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 8}
!11 = !{!"_ZTS11ALACEncoder", !12, i64 8, !13, i64 10, !6, i64 12, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !15, i64 64, !16, i64 72, !6, i64 80, !6, i64 4176, !17, i64 8272, !17, i64 8276, !17, i64 8280, !17, i64 8284, !17, i64 8288, !17, i64 8292, !17, i64 8296}
!12 = !{!"short", !6, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!"p1 int", !5, i64 0}
!15 = !{!"p1 short", !5, i64 0}
!16 = !{!"p1 omnipotent char", !5, i64 0}
!17 = !{!"int", !6, i64 0}
!18 = !{!11, !13, i64 10}
!19 = !{!11, !14, i64 32}
!20 = !{!11, !14, i64 40}
!21 = !{!11, !14, i64 48}
!22 = !{!11, !14, i64 56}
!23 = !{!11, !15, i64 64}
!24 = !{!11, !16, i64 72}
!25 = !{!11, !17, i64 8272}
!26 = !{!11, !17, i64 8276}
!27 = !{!11, !17, i64 8280}
!28 = !{!11, !17, i64 8284}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTS9BitBuffer", !5, i64 0}
!31 = !{!5, !5, i64 0}
!32 = !{!17, !17, i64 0}
!33 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 4, !32, i64 20, i64 4, !32}
!34 = !{!16, !16, i64 0}
!35 = !{!15, !15, i64 0}
!36 = !{!6, !6, i64 0}
!37 = !{!12, !12, i64 0}
!38 = !{!11, !17, i64 8288}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = distinct !{!42, !40}
!43 = !{!13, !13, i64 0}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = distinct !{!46, !40}
!47 = distinct !{!47, !40}
!48 = distinct !{!48, !40}
!49 = distinct !{!49, !40}
!50 = distinct !{!50, !40}
!51 = distinct !{!51, !40}
!52 = !{!14, !14, i64 0}
!53 = distinct !{!53, !40}
!54 = distinct !{!54, !40}
!55 = distinct !{!55, !40}
!56 = distinct !{!56, !40}
!57 = distinct !{!57, !40}
!58 = distinct !{!58, !40}
!59 = distinct !{!59, !40}
!60 = distinct !{!60, !40}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !40}
!63 = distinct !{!63, !40}
!64 = distinct !{!64, !40}
!65 = distinct !{!65, !40}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !40}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTS22AudioFormatDescription", !5, i64 0}
!70 = !{!71, !17, i64 16}
!71 = !{!"_ZTS22AudioFormatDescription", !72, i64 0, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36}
!72 = !{!"double", !6, i64 0}
!73 = !{!71, !17, i64 28}
!74 = distinct !{!74, !40}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 _ZTS18ALACSpecificConfig", !5, i64 0}
!77 = !{!78, !17, i64 0}
!78 = !{!"_ZTS18ALACSpecificConfig", !17, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !6, i64 8, !6, i64 9, !12, i64 10, !17, i64 12, !17, i64 16, !17, i64 20}
!79 = !{!78, !6, i64 4}
!80 = !{!78, !6, i64 5}
!81 = !{!78, !6, i64 6}
!82 = !{!78, !6, i64 8}
!83 = !{!78, !6, i64 7}
!84 = !{!11, !17, i64 8292}
!85 = !{!78, !6, i64 9}
!86 = !{!78, !12, i64 10}
!87 = !{!78, !17, i64 12}
!88 = !{!78, !17, i64 16}
!89 = !{!11, !17, i64 8296}
!90 = !{!78, !17, i64 20}
!91 = !{!92, !17, i64 0}
!92 = !{!"_ZTS22ALACAudioChannelLayout", !17, i64 0, !17, i64 4, !17, i64 8}
!93 = !{!71, !72, i64 0}
!94 = !{!71, !17, i64 12}
!95 = distinct !{!95, !40}
!96 = distinct !{!96, !40}
!97 = distinct !{!97, !40}
!98 = !{!71, !17, i64 8}
!99 = !{!71, !17, i64 32}
