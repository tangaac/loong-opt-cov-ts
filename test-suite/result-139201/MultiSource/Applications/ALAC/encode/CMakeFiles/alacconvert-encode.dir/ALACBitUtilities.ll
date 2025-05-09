; ModuleID = './MultiSource/Applications/ALAC/encode/CMakeFiles/alacconvert-encode.dir/ALACBitUtilities.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/ALAC/encode/ALACBitUtilities.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.BitBuffer = type { ptr, ptr, i32, i32 }

; Function Attrs: nounwind
define dso_local void @BitBufferInit(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !8
  store i32 %2, ptr %6, align 4, !tbaa !10
  %7 = load ptr, ptr %5, align 8, !tbaa !8
  %8 = load ptr, ptr %4, align 8, !tbaa !3
  %9 = getelementptr inbounds nuw %struct.BitBuffer, ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8, !tbaa !12
  %10 = load ptr, ptr %4, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct.BitBuffer, ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = load i32, ptr %6, align 4, !tbaa !10
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 %14
  %16 = load ptr, ptr %4, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.BitBuffer, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !14
  %18 = load ptr, ptr %4, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.BitBuffer, ptr %18, i32 0, i32 2
  store i32 0, ptr %19, align 8, !tbaa !15
  %20 = load i32, ptr %6, align 4, !tbaa !10
  %21 = load ptr, ptr %4, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.BitBuffer, ptr %21, i32 0, i32 3
  store i32 %20, ptr %22, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @BitBufferRead(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i8 %1, ptr %4, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #2
  %6 = load ptr, ptr %3, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.BitBuffer, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds i8, ptr %8, i64 0
  %10 = load i8, ptr %9, align 1, !tbaa !17
  %11 = zext i8 %10 to i32
  %12 = shl i32 %11, 16
  %13 = load ptr, ptr %3, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.BitBuffer, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !17
  %18 = zext i8 %17 to i32
  %19 = shl i32 %18, 8
  %20 = or i32 %12, %19
  %21 = load ptr, ptr %3, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.BitBuffer, ptr %21, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8, !tbaa !12
  %24 = getelementptr inbounds i8, ptr %23, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !17
  %26 = zext i8 %25 to i32
  %27 = or i32 %20, %26
  store i32 %27, ptr %5, align 4, !tbaa !10
  %28 = load i32, ptr %5, align 4, !tbaa !10
  %29 = load ptr, ptr %3, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.BitBuffer, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !15
  %32 = shl i32 %28, %31
  store i32 %32, ptr %5, align 4, !tbaa !10
  %33 = load i32, ptr %5, align 4, !tbaa !10
  %34 = and i32 %33, 16777215
  store i32 %34, ptr %5, align 4, !tbaa !10
  %35 = load i8, ptr %4, align 1, !tbaa !17
  %36 = zext i8 %35 to i32
  %37 = load ptr, ptr %3, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw %struct.BitBuffer, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !15
  %40 = add i32 %39, %36
  store i32 %40, ptr %38, align 8, !tbaa !15
  %41 = load i32, ptr %5, align 4, !tbaa !10
  %42 = load i8, ptr %4, align 1, !tbaa !17
  %43 = zext i8 %42 to i32
  %44 = sub nsw i32 24, %43
  %45 = lshr i32 %41, %44
  store i32 %45, ptr %5, align 4, !tbaa !10
  %46 = load ptr, ptr %3, align 8, !tbaa !3
  %47 = getelementptr inbounds nuw %struct.BitBuffer, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !15
  %49 = lshr i32 %48, 3
  %50 = load ptr, ptr %3, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.BitBuffer, ptr %50, i32 0, i32 0
  %52 = load ptr, ptr %51, align 8, !tbaa !12
  %53 = zext i32 %49 to i64
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 %53
  store ptr %54, ptr %51, align 8, !tbaa !12
  %55 = load ptr, ptr %3, align 8, !tbaa !3
  %56 = getelementptr inbounds nuw %struct.BitBuffer, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !15
  %58 = and i32 %57, 7
  store i32 %58, ptr %56, align 8, !tbaa !15
  %59 = load i32, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #2
  ret i32 %59
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local zeroext i8 @BitBufferReadSmall(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i8 %1, ptr %4, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 2, ptr %5) #2
  %6 = load ptr, ptr %3, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.BitBuffer, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds i8, ptr %8, i64 0
  %10 = load i8, ptr %9, align 1, !tbaa !17
  %11 = zext i8 %10 to i32
  %12 = shl i32 %11, 8
  %13 = load ptr, ptr %3, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.BitBuffer, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !17
  %18 = zext i8 %17 to i32
  %19 = or i32 %12, %18
  %20 = trunc i32 %19 to i16
  store i16 %20, ptr %5, align 2, !tbaa !18
  %21 = load i16, ptr %5, align 2, !tbaa !18
  %22 = zext i16 %21 to i32
  %23 = load ptr, ptr %3, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.BitBuffer, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !15
  %26 = shl i32 %22, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, ptr %5, align 2, !tbaa !18
  %28 = load i8, ptr %4, align 1, !tbaa !17
  %29 = zext i8 %28 to i32
  %30 = load ptr, ptr %3, align 8, !tbaa !3
  %31 = getelementptr inbounds nuw %struct.BitBuffer, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !15
  %33 = add i32 %32, %29
  store i32 %33, ptr %31, align 8, !tbaa !15
  %34 = load i16, ptr %5, align 2, !tbaa !18
  %35 = zext i16 %34 to i32
  %36 = load i8, ptr %4, align 1, !tbaa !17
  %37 = zext i8 %36 to i32
  %38 = sub nsw i32 16, %37
  %39 = ashr i32 %35, %38
  %40 = trunc i32 %39 to i16
  store i16 %40, ptr %5, align 2, !tbaa !18
  %41 = load ptr, ptr %3, align 8, !tbaa !3
  %42 = getelementptr inbounds nuw %struct.BitBuffer, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !15
  %44 = lshr i32 %43, 3
  %45 = load ptr, ptr %3, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.BitBuffer, ptr %45, i32 0, i32 0
  %47 = load ptr, ptr %46, align 8, !tbaa !12
  %48 = zext i32 %44 to i64
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 %48
  store ptr %49, ptr %46, align 8, !tbaa !12
  %50 = load ptr, ptr %3, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.BitBuffer, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !15
  %53 = and i32 %52, 7
  store i32 %53, ptr %51, align 8, !tbaa !15
  %54 = load i16, ptr %5, align 2, !tbaa !18
  %55 = trunc i16 %54 to i8
  call void @llvm.lifetime.end.p0(i64 2, ptr %5) #2
  ret i8 %55
}

; Function Attrs: nounwind
define dso_local zeroext i8 @BitBufferReadOne(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 1, ptr %3) #2
  %4 = load ptr, ptr %2, align 8, !tbaa !3
  %5 = getelementptr inbounds nuw %struct.BitBuffer, ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = getelementptr inbounds i8, ptr %6, i64 0
  %8 = load i8, ptr %7, align 1, !tbaa !17
  %9 = zext i8 %8 to i32
  %10 = load ptr, ptr %2, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct.BitBuffer, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !15
  %13 = sub i32 7, %12
  %14 = ashr i32 %9, %13
  %15 = and i32 %14, 1
  %16 = trunc i32 %15 to i8
  store i8 %16, ptr %3, align 1, !tbaa !17
  %17 = load ptr, ptr %2, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.BitBuffer, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !15
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !15
  %21 = load ptr, ptr %2, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.BitBuffer, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !15
  %24 = lshr i32 %23, 3
  %25 = load ptr, ptr %2, align 8, !tbaa !3
  %26 = getelementptr inbounds nuw %struct.BitBuffer, ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8, !tbaa !12
  %28 = zext i32 %24 to i64
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 %28
  store ptr %29, ptr %26, align 8, !tbaa !12
  %30 = load ptr, ptr %2, align 8, !tbaa !3
  %31 = getelementptr inbounds nuw %struct.BitBuffer, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !15
  %33 = and i32 %32, 7
  store i32 %33, ptr %31, align 8, !tbaa !15
  %34 = load i8, ptr %3, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 1, ptr %3) #2
  ret i8 %34
}

; Function Attrs: nounwind
define dso_local signext i32 @BitBufferPeek(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i8 %1, ptr %4, align 1, !tbaa !17
  %5 = load ptr, ptr %3, align 8, !tbaa !3
  %6 = getelementptr inbounds nuw %struct.BitBuffer, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = getelementptr inbounds i8, ptr %7, i64 0
  %9 = load i8, ptr %8, align 1, !tbaa !17
  %10 = zext i8 %9 to i32
  %11 = shl i32 %10, 16
  %12 = load ptr, ptr %3, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.BitBuffer, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !17
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, 8
  %19 = or i32 %11, %18
  %20 = load ptr, ptr %3, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.BitBuffer, ptr %20, i32 0, i32 0
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = getelementptr inbounds i8, ptr %22, i64 2
  %24 = load i8, ptr %23, align 1, !tbaa !17
  %25 = zext i8 %24 to i32
  %26 = or i32 %19, %25
  %27 = load ptr, ptr %3, align 8, !tbaa !3
  %28 = getelementptr inbounds nuw %struct.BitBuffer, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !15
  %30 = shl i32 %26, %29
  %31 = and i32 %30, 16777215
  %32 = load i8, ptr %4, align 1, !tbaa !17
  %33 = zext i8 %32 to i32
  %34 = sub nsw i32 24, %33
  %35 = lshr i32 %31, %34
  ret i32 %35
}

; Function Attrs: nounwind
define dso_local signext i32 @BitBufferPeekOne(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8, !tbaa !3
  %4 = getelementptr inbounds nuw %struct.BitBuffer, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = getelementptr inbounds i8, ptr %5, i64 0
  %7 = load i8, ptr %6, align 1, !tbaa !17
  %8 = zext i8 %7 to i32
  %9 = load ptr, ptr %2, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.BitBuffer, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !15
  %12 = sub i32 7, %11
  %13 = ashr i32 %8, %12
  %14 = and i32 %13, 1
  ret i32 %14
}

; Function Attrs: nounwind
define dso_local signext i32 @BitBufferUnpackBERSize(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #2
  call void @llvm.lifetime.start.p0(i64 1, ptr %4) #2
  store i32 0, ptr %3, align 4, !tbaa !10
  store i8 -128, ptr %4, align 1, !tbaa !17
  br label %5

5:                                                ; preds = %14, %1
  %6 = load i8, ptr %4, align 1, !tbaa !17
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 128
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %4, align 1, !tbaa !17
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = load ptr, ptr %2, align 8, !tbaa !3
  %13 = call zeroext i8 @BitBufferReadSmall(ptr noundef %12, i8 noundef zeroext 8)
  store i8 %13, ptr %4, align 1, !tbaa !17
  br label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %3, align 4, !tbaa !10
  %16 = shl i32 %15, 7
  %17 = load i8, ptr %4, align 1, !tbaa !17
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 127
  %20 = or i32 %16, %19
  store i32 %20, ptr %3, align 4, !tbaa !10
  br label %5, !llvm.loop !20

21:                                               ; preds = %5
  %22 = load i32, ptr %3, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 1, ptr %4) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #2
  ret i32 %22
}

; Function Attrs: nounwind
define dso_local signext i32 @BitBufferGetPosition(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #2
  %4 = load ptr, ptr %2, align 8, !tbaa !3
  %5 = getelementptr inbounds nuw %struct.BitBuffer, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = load ptr, ptr %2, align 8, !tbaa !3
  %8 = getelementptr inbounds nuw %struct.BitBuffer, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !16
  %10 = zext i32 %9 to i64
  %11 = sub i64 0, %10
  %12 = getelementptr inbounds i8, ptr %6, i64 %11
  store ptr %12, ptr %3, align 8, !tbaa !8
  %13 = load ptr, ptr %2, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.BitBuffer, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = load ptr, ptr %3, align 8, !tbaa !8
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = trunc i64 %19 to i32
  %21 = mul i32 %20, 8
  %22 = load ptr, ptr %2, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct.BitBuffer, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !15
  %25 = add i32 %21, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #2
  ret i32 %25
}

; Function Attrs: nounwind
define dso_local void @BitBufferByteAlign(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i32 %1, ptr %4, align 4, !tbaa !10
  %5 = load ptr, ptr %3, align 8, !tbaa !3
  %6 = getelementptr inbounds nuw %struct.BitBuffer, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %25

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4, !tbaa !10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 8, !tbaa !3
  %15 = load ptr, ptr %3, align 8, !tbaa !3
  %16 = getelementptr inbounds nuw %struct.BitBuffer, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !15
  %18 = sub i32 8, %17
  call void @BitBufferWrite(ptr noundef %14, i32 noundef signext 0, i32 noundef signext %18)
  br label %25

19:                                               ; preds = %10
  %20 = load ptr, ptr %3, align 8, !tbaa !3
  %21 = load ptr, ptr %3, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.BitBuffer, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !15
  %24 = sub i32 8, %23
  call void @BitBufferAdvance(ptr noundef %20, i32 noundef signext %24)
  br label %25

25:                                               ; preds = %9, %19, %13
  ret void
}

; Function Attrs: nounwind
define dso_local void @BitBufferWrite(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !10
  store i32 %2, ptr %6, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #2
  %13 = load ptr, ptr %4, align 8, !tbaa !3
  %14 = icmp ne ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 1, ptr %8, align 4
  br label %101

16:                                               ; preds = %3
  %17 = load i32, ptr %6, align 4, !tbaa !10
  %18 = icmp ugt i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 1, ptr %8, align 4
  br label %101

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.BitBuffer, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !15
  %24 = sub i32 8, %23
  store i32 %24, ptr %7, align 4, !tbaa !10
  br label %25

25:                                               ; preds = %95, %20
  %26 = load i32, ptr %6, align 4, !tbaa !10
  %27 = icmp ugt i32 %26, 0
  br i1 %27, label %28, label %96

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #2
  call void @llvm.lifetime.start.p0(i64 1, ptr %10) #2
  call void @llvm.lifetime.start.p0(i64 1, ptr %11) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #2
  %29 = load i32, ptr %7, align 4, !tbaa !10
  %30 = load i32, ptr %6, align 4, !tbaa !10
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, ptr %7, align 4, !tbaa !10
  br label %36

34:                                               ; preds = %28
  %35 = load i32, ptr %6, align 4, !tbaa !10
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, ptr %12, align 4, !tbaa !10
  %38 = load i32, ptr %5, align 4, !tbaa !10
  %39 = load i32, ptr %6, align 4, !tbaa !10
  %40 = load i32, ptr %12, align 4, !tbaa !10
  %41 = sub i32 %39, %40
  %42 = lshr i32 %38, %41
  store i32 %42, ptr %9, align 4, !tbaa !10
  %43 = load i32, ptr %7, align 4, !tbaa !10
  %44 = load i32, ptr %12, align 4, !tbaa !10
  %45 = sub i32 %43, %44
  %46 = trunc i32 %45 to i8
  store i8 %46, ptr %10, align 1, !tbaa !17
  %47 = load i32, ptr %12, align 4, !tbaa !10
  %48 = sub i32 8, %47
  %49 = lshr i32 255, %48
  %50 = trunc i32 %49 to i8
  store i8 %50, ptr %11, align 1, !tbaa !17
  %51 = load i8, ptr %10, align 1, !tbaa !17
  %52 = zext i8 %51 to i32
  %53 = load i8, ptr %11, align 1, !tbaa !17
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, %52
  %56 = trunc i32 %55 to i8
  store i8 %56, ptr %11, align 1, !tbaa !17
  %57 = load ptr, ptr %4, align 8, !tbaa !3
  %58 = getelementptr inbounds nuw %struct.BitBuffer, ptr %57, i32 0, i32 0
  %59 = load ptr, ptr %58, align 8, !tbaa !12
  %60 = getelementptr inbounds i8, ptr %59, i64 0
  %61 = load i8, ptr %60, align 1, !tbaa !17
  %62 = zext i8 %61 to i32
  %63 = load i8, ptr %11, align 1, !tbaa !17
  %64 = zext i8 %63 to i32
  %65 = xor i32 %64, -1
  %66 = and i32 %62, %65
  %67 = load i32, ptr %9, align 4, !tbaa !10
  %68 = trunc i32 %67 to i8
  %69 = zext i8 %68 to i32
  %70 = load i8, ptr %10, align 1, !tbaa !17
  %71 = zext i8 %70 to i32
  %72 = shl i32 %69, %71
  %73 = load i8, ptr %11, align 1, !tbaa !17
  %74 = zext i8 %73 to i32
  %75 = and i32 %72, %74
  %76 = or i32 %66, %75
  %77 = trunc i32 %76 to i8
  %78 = load ptr, ptr %4, align 8, !tbaa !3
  %79 = getelementptr inbounds nuw %struct.BitBuffer, ptr %78, i32 0, i32 0
  %80 = load ptr, ptr %79, align 8, !tbaa !12
  %81 = getelementptr inbounds i8, ptr %80, i64 0
  store i8 %77, ptr %81, align 1, !tbaa !17
  %82 = load i32, ptr %12, align 4, !tbaa !10
  %83 = load i32, ptr %6, align 4, !tbaa !10
  %84 = sub i32 %83, %82
  store i32 %84, ptr %6, align 4, !tbaa !10
  %85 = load i32, ptr %12, align 4, !tbaa !10
  %86 = load i32, ptr %7, align 4, !tbaa !10
  %87 = sub i32 %86, %85
  store i32 %87, ptr %7, align 4, !tbaa !10
  %88 = load i32, ptr %7, align 4, !tbaa !10
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %36
  store i32 8, ptr %7, align 4, !tbaa !10
  %91 = load ptr, ptr %4, align 8, !tbaa !3
  %92 = getelementptr inbounds nuw %struct.BitBuffer, ptr %91, i32 0, i32 0
  %93 = load ptr, ptr %92, align 8, !tbaa !12
  %94 = getelementptr inbounds nuw i8, ptr %93, i32 1
  store ptr %94, ptr %92, align 8, !tbaa !12
  br label %95

95:                                               ; preds = %90, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #2
  call void @llvm.lifetime.end.p0(i64 1, ptr %11) #2
  call void @llvm.lifetime.end.p0(i64 1, ptr %10) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #2
  br label %25, !llvm.loop !22

96:                                               ; preds = %25
  %97 = load i32, ptr %7, align 4, !tbaa !10
  %98 = sub i32 8, %97
  %99 = load ptr, ptr %4, align 8, !tbaa !3
  %100 = getelementptr inbounds nuw %struct.BitBuffer, ptr %99, i32 0, i32 2
  store i32 %98, ptr %100, align 8, !tbaa !15
  store i32 0, ptr %8, align 4
  br label %101

101:                                              ; preds = %96, %19, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #2
  %102 = load i32, ptr %8, align 4
  switch i32 %102, label %104 [
    i32 0, label %103
    i32 1, label %103
  ]

103:                                              ; preds = %101, %101
  ret void

104:                                              ; preds = %101
  unreachable
}

; Function Attrs: nounwind
define dso_local void @BitBufferAdvance(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i32 %1, ptr %4, align 4, !tbaa !10
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4, !tbaa !10
  %9 = load ptr, ptr %3, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.BitBuffer, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !15
  %12 = add i32 %11, %8
  store i32 %12, ptr %10, align 8, !tbaa !15
  %13 = load ptr, ptr %3, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.BitBuffer, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = lshr i32 %15, 3
  %17 = load ptr, ptr %3, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.BitBuffer, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 %20
  store ptr %21, ptr %18, align 8, !tbaa !12
  %22 = load ptr, ptr %3, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct.BitBuffer, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !15
  %25 = and i32 %24, 7
  store i32 %25, ptr %23, align 8, !tbaa !15
  br label %26

26:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind
define dso_local void @BitBufferRewind(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i32 %1, ptr %4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #2
  %7 = load i32, ptr %4, align 4, !tbaa !10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, ptr %6, align 4
  br label %81

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !3
  %12 = getelementptr inbounds nuw %struct.BitBuffer, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !15
  %14 = load i32, ptr %4, align 4, !tbaa !10
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 4, !tbaa !10
  %18 = load ptr, ptr %3, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.BitBuffer, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !15
  %21 = sub i32 %20, %17
  store i32 %21, ptr %19, align 8, !tbaa !15
  store i32 1, ptr %6, align 4
  br label %81

22:                                               ; preds = %10
  %23 = load ptr, ptr %3, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.BitBuffer, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !15
  %26 = load i32, ptr %4, align 4, !tbaa !10
  %27 = sub i32 %26, %25
  store i32 %27, ptr %4, align 4, !tbaa !10
  %28 = load ptr, ptr %3, align 8, !tbaa !3
  %29 = getelementptr inbounds nuw %struct.BitBuffer, ptr %28, i32 0, i32 2
  store i32 0, ptr %29, align 8, !tbaa !15
  %30 = load i32, ptr %4, align 4, !tbaa !10
  %31 = udiv i32 %30, 8
  store i32 %31, ptr %5, align 4, !tbaa !10
  %32 = load i32, ptr %4, align 4, !tbaa !10
  %33 = urem i32 %32, 8
  store i32 %33, ptr %4, align 4, !tbaa !10
  %34 = load i32, ptr %5, align 4, !tbaa !10
  %35 = load ptr, ptr %3, align 8, !tbaa !3
  %36 = getelementptr inbounds nuw %struct.BitBuffer, ptr %35, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8, !tbaa !12
  %38 = zext i32 %34 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i8, ptr %37, i64 %39
  store ptr %40, ptr %36, align 8, !tbaa !12
  %41 = load i32, ptr %4, align 4, !tbaa !10
  %42 = icmp ugt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %22
  %44 = load i32, ptr %4, align 4, !tbaa !10
  %45 = sub i32 8, %44
  %46 = load ptr, ptr %3, align 8, !tbaa !3
  %47 = getelementptr inbounds nuw %struct.BitBuffer, ptr %46, i32 0, i32 2
  store i32 %45, ptr %47, align 8, !tbaa !15
  %48 = load ptr, ptr %3, align 8, !tbaa !3
  %49 = getelementptr inbounds nuw %struct.BitBuffer, ptr %48, i32 0, i32 0
  %50 = load ptr, ptr %49, align 8, !tbaa !12
  %51 = getelementptr inbounds i8, ptr %50, i32 -1
  store ptr %51, ptr %49, align 8, !tbaa !12
  br label %52

52:                                               ; preds = %43, %22
  %53 = load ptr, ptr %3, align 8, !tbaa !3
  %54 = getelementptr inbounds nuw %struct.BitBuffer, ptr %53, i32 0, i32 0
  %55 = load ptr, ptr %54, align 8, !tbaa !12
  %56 = load ptr, ptr %3, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.BitBuffer, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !14
  %59 = load ptr, ptr %3, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.BitBuffer, ptr %59, i32 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !16
  %62 = zext i32 %61 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds i8, ptr %58, i64 %63
  %65 = icmp ult ptr %55, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %52
  %67 = load ptr, ptr %3, align 8, !tbaa !3
  %68 = getelementptr inbounds nuw %struct.BitBuffer, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !14
  %70 = load ptr, ptr %3, align 8, !tbaa !3
  %71 = getelementptr inbounds nuw %struct.BitBuffer, ptr %70, i32 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !16
  %73 = zext i32 %72 to i64
  %74 = sub i64 0, %73
  %75 = getelementptr inbounds i8, ptr %69, i64 %74
  %76 = load ptr, ptr %3, align 8, !tbaa !3
  %77 = getelementptr inbounds nuw %struct.BitBuffer, ptr %76, i32 0, i32 0
  store ptr %75, ptr %77, align 8, !tbaa !12
  %78 = load ptr, ptr %3, align 8, !tbaa !3
  %79 = getelementptr inbounds nuw %struct.BitBuffer, ptr %78, i32 0, i32 2
  store i32 0, ptr %79, align 8, !tbaa !15
  br label %80

80:                                               ; preds = %66, %52
  store i32 0, ptr %6, align 4
  br label %81

81:                                               ; preds = %80, %16, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #2
  %82 = load i32, ptr %6, align 4
  switch i32 %82, label %84 [
    i32 0, label %83
    i32 1, label %83
  ]

83:                                               ; preds = %81, %81
  ret void

84:                                               ; preds = %81
  unreachable
}

; Function Attrs: nounwind
define dso_local void @BitBufferReset(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8, !tbaa !3
  %4 = getelementptr inbounds nuw %struct.BitBuffer, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.BitBuffer, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !16
  %9 = zext i32 %8 to i64
  %10 = sub i64 0, %9
  %11 = getelementptr inbounds i8, ptr %5, i64 %10
  %12 = load ptr, ptr %2, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.BitBuffer, ptr %12, i32 0, i32 0
  store ptr %11, ptr %13, align 8, !tbaa !12
  %14 = load ptr, ptr %2, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.BitBuffer, ptr %14, i32 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !15
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 _ZTS9BitBuffer", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !9, i64 0}
!13 = !{!"BitBuffer", !9, i64 0, !9, i64 8, !11, i64 16, !11, i64 20}
!14 = !{!13, !9, i64 8}
!15 = !{!13, !11, i64 16}
!16 = !{!13, !11, i64 20}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
