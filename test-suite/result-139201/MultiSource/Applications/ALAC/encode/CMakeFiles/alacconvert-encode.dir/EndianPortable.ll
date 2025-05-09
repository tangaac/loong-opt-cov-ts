; ModuleID = './MultiSource/Applications/ALAC/encode/CMakeFiles/alacconvert-encode.dir/EndianPortable.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/ALAC/encode/EndianPortable.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%union.anon = type { float }
%union.anon.0 = type { float }
%union.anon.1 = type { double }
%union.anon.2 = type { double }

; Function Attrs: nounwind
define dso_local zeroext i16 @Swap16NtoB(i16 noundef zeroext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, ptr %2, align 2, !tbaa !3
  %3 = load i16, ptr %2, align 2, !tbaa !3
  %4 = zext i16 %3 to i32
  %5 = shl i32 %4, 8
  %6 = load i16, ptr %2, align 2, !tbaa !3
  %7 = zext i16 %6 to i32
  %8 = ashr i32 %7, 8
  %9 = and i32 %8, 255
  %10 = or i32 %5, %9
  %11 = trunc i32 %10 to i16
  ret i16 %11
}

; Function Attrs: nounwind
define dso_local zeroext i16 @Swap16BtoN(i16 noundef zeroext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, ptr %2, align 2, !tbaa !3
  %3 = load i16, ptr %2, align 2, !tbaa !3
  %4 = zext i16 %3 to i32
  %5 = shl i32 %4, 8
  %6 = load i16, ptr %2, align 2, !tbaa !3
  %7 = zext i16 %6 to i32
  %8 = ashr i32 %7, 8
  %9 = and i32 %8, 255
  %10 = or i32 %5, %9
  %11 = trunc i32 %10 to i16
  ret i16 %11
}

; Function Attrs: nounwind
define dso_local signext i32 @Swap32NtoB(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !7
  %3 = load i32, ptr %2, align 4, !tbaa !7
  %4 = shl i32 %3, 24
  %5 = load i32, ptr %2, align 4, !tbaa !7
  %6 = shl i32 %5, 8
  %7 = and i32 %6, 16711680
  %8 = or i32 %4, %7
  %9 = load i32, ptr %2, align 4, !tbaa !7
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 65280
  %12 = or i32 %8, %11
  %13 = load i32, ptr %2, align 4, !tbaa !7
  %14 = lshr i32 %13, 24
  %15 = and i32 %14, 255
  %16 = or i32 %12, %15
  ret i32 %16
}

; Function Attrs: nounwind
define dso_local signext i32 @Swap32BtoN(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !7
  %3 = load i32, ptr %2, align 4, !tbaa !7
  %4 = shl i32 %3, 24
  %5 = load i32, ptr %2, align 4, !tbaa !7
  %6 = shl i32 %5, 8
  %7 = and i32 %6, 16711680
  %8 = or i32 %4, %7
  %9 = load i32, ptr %2, align 4, !tbaa !7
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 65280
  %12 = or i32 %8, %11
  %13 = load i32, ptr %2, align 4, !tbaa !7
  %14 = lshr i32 %13, 24
  %15 = and i32 %14, 255
  %16 = or i32 %12, %15
  ret i32 %16
}

; Function Attrs: nounwind
define dso_local i64 @Swap64BtoN(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8, !tbaa !9
  %3 = load i64, ptr %2, align 8, !tbaa !9
  %4 = shl i64 %3, 56
  %5 = load i64, ptr %2, align 8, !tbaa !9
  %6 = shl i64 %5, 40
  %7 = and i64 %6, 71776119061217280
  %8 = or i64 %4, %7
  %9 = load i64, ptr %2, align 8, !tbaa !9
  %10 = shl i64 %9, 24
  %11 = and i64 %10, 280375465082880
  %12 = or i64 %8, %11
  %13 = load i64, ptr %2, align 8, !tbaa !9
  %14 = shl i64 %13, 8
  %15 = and i64 %14, 1095216660480
  %16 = or i64 %12, %15
  %17 = load i64, ptr %2, align 8, !tbaa !9
  %18 = ashr i64 %17, 8
  %19 = and i64 %18, 4278190080
  %20 = or i64 %16, %19
  %21 = load i64, ptr %2, align 8, !tbaa !9
  %22 = ashr i64 %21, 24
  %23 = and i64 %22, 16711680
  %24 = or i64 %20, %23
  %25 = load i64, ptr %2, align 8, !tbaa !9
  %26 = ashr i64 %25, 40
  %27 = and i64 %26, 65280
  %28 = or i64 %24, %27
  %29 = load i64, ptr %2, align 8, !tbaa !9
  %30 = ashr i64 %29, 56
  %31 = and i64 %30, 255
  %32 = or i64 %28, %31
  ret i64 %32
}

; Function Attrs: nounwind
define dso_local i64 @Swap64NtoB(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8, !tbaa !9
  %3 = load i64, ptr %2, align 8, !tbaa !9
  %4 = shl i64 %3, 56
  %5 = load i64, ptr %2, align 8, !tbaa !9
  %6 = shl i64 %5, 40
  %7 = and i64 %6, 71776119061217280
  %8 = or i64 %4, %7
  %9 = load i64, ptr %2, align 8, !tbaa !9
  %10 = shl i64 %9, 24
  %11 = and i64 %10, 280375465082880
  %12 = or i64 %8, %11
  %13 = load i64, ptr %2, align 8, !tbaa !9
  %14 = shl i64 %13, 8
  %15 = and i64 %14, 1095216660480
  %16 = or i64 %12, %15
  %17 = load i64, ptr %2, align 8, !tbaa !9
  %18 = ashr i64 %17, 8
  %19 = and i64 %18, 4278190080
  %20 = or i64 %16, %19
  %21 = load i64, ptr %2, align 8, !tbaa !9
  %22 = ashr i64 %21, 24
  %23 = and i64 %22, 16711680
  %24 = or i64 %20, %23
  %25 = load i64, ptr %2, align 8, !tbaa !9
  %26 = ashr i64 %25, 40
  %27 = and i64 %26, 65280
  %28 = or i64 %24, %27
  %29 = load i64, ptr %2, align 8, !tbaa !9
  %30 = ashr i64 %29, 56
  %31 = and i64 %30, 255
  %32 = or i64 %28, %31
  ret i64 %32
}

; Function Attrs: nounwind
define dso_local float @SwapFloat32BtoN(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %union.anon, align 4
  store float %0, ptr %2, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #2
  %4 = load float, ptr %2, align 4, !tbaa !11
  store float %4, ptr %3, align 4, !tbaa !13
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = shl i32 %5, 24
  %7 = load i32, ptr %3, align 4, !tbaa !13
  %8 = shl i32 %7, 8
  %9 = and i32 %8, 16711680
  %10 = or i32 %6, %9
  %11 = load i32, ptr %3, align 4, !tbaa !13
  %12 = ashr i32 %11, 8
  %13 = and i32 %12, 65280
  %14 = or i32 %10, %13
  %15 = load i32, ptr %3, align 4, !tbaa !13
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 255
  %18 = or i32 %14, %17
  store i32 %18, ptr %3, align 4, !tbaa !13
  %19 = load float, ptr %3, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #2
  ret float %19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local float @SwapFloat32NtoB(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %union.anon.0, align 4
  store float %0, ptr %2, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #2
  %4 = load float, ptr %2, align 4, !tbaa !11
  store float %4, ptr %3, align 4, !tbaa !13
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = shl i32 %5, 24
  %7 = load i32, ptr %3, align 4, !tbaa !13
  %8 = shl i32 %7, 8
  %9 = and i32 %8, 16711680
  %10 = or i32 %6, %9
  %11 = load i32, ptr %3, align 4, !tbaa !13
  %12 = ashr i32 %11, 8
  %13 = and i32 %12, 65280
  %14 = or i32 %10, %13
  %15 = load i32, ptr %3, align 4, !tbaa !13
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 255
  %18 = or i32 %14, %17
  store i32 %18, ptr %3, align 4, !tbaa !13
  %19 = load float, ptr %3, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #2
  ret float %19
}

; Function Attrs: nounwind
define dso_local double @SwapFloat64BtoN(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %union.anon.1, align 8
  store double %0, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #2
  %4 = load double, ptr %2, align 8, !tbaa !14
  store double %4, ptr %3, align 8, !tbaa !13
  %5 = load i64, ptr %3, align 8, !tbaa !13
  %6 = shl i64 %5, 56
  %7 = load i64, ptr %3, align 8, !tbaa !13
  %8 = shl i64 %7, 40
  %9 = and i64 %8, 71776119061217280
  %10 = or i64 %6, %9
  %11 = load i64, ptr %3, align 8, !tbaa !13
  %12 = shl i64 %11, 24
  %13 = and i64 %12, 280375465082880
  %14 = or i64 %10, %13
  %15 = load i64, ptr %3, align 8, !tbaa !13
  %16 = shl i64 %15, 8
  %17 = and i64 %16, 1095216660480
  %18 = or i64 %14, %17
  %19 = load i64, ptr %3, align 8, !tbaa !13
  %20 = ashr i64 %19, 8
  %21 = and i64 %20, 4278190080
  %22 = or i64 %18, %21
  %23 = load i64, ptr %3, align 8, !tbaa !13
  %24 = ashr i64 %23, 24
  %25 = and i64 %24, 16711680
  %26 = or i64 %22, %25
  %27 = load i64, ptr %3, align 8, !tbaa !13
  %28 = ashr i64 %27, 40
  %29 = and i64 %28, 65280
  %30 = or i64 %26, %29
  %31 = load i64, ptr %3, align 8, !tbaa !13
  %32 = ashr i64 %31, 56
  %33 = and i64 %32, 255
  %34 = or i64 %30, %33
  store i64 %34, ptr %3, align 8, !tbaa !13
  %35 = load double, ptr %3, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #2
  ret double %35
}

; Function Attrs: nounwind
define dso_local double @SwapFloat64NtoB(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %union.anon.2, align 8
  store double %0, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #2
  %4 = load double, ptr %2, align 8, !tbaa !14
  store double %4, ptr %3, align 8, !tbaa !13
  %5 = load i64, ptr %3, align 8, !tbaa !13
  %6 = shl i64 %5, 56
  %7 = load i64, ptr %3, align 8, !tbaa !13
  %8 = shl i64 %7, 40
  %9 = and i64 %8, 71776119061217280
  %10 = or i64 %6, %9
  %11 = load i64, ptr %3, align 8, !tbaa !13
  %12 = shl i64 %11, 24
  %13 = and i64 %12, 280375465082880
  %14 = or i64 %10, %13
  %15 = load i64, ptr %3, align 8, !tbaa !13
  %16 = shl i64 %15, 8
  %17 = and i64 %16, 1095216660480
  %18 = or i64 %14, %17
  %19 = load i64, ptr %3, align 8, !tbaa !13
  %20 = ashr i64 %19, 8
  %21 = and i64 %20, 4278190080
  %22 = or i64 %18, %21
  %23 = load i64, ptr %3, align 8, !tbaa !13
  %24 = ashr i64 %23, 24
  %25 = and i64 %24, 16711680
  %26 = or i64 %22, %25
  %27 = load i64, ptr %3, align 8, !tbaa !13
  %28 = ashr i64 %27, 40
  %29 = and i64 %28, 65280
  %30 = or i64 %26, %29
  %31 = load i64, ptr %3, align 8, !tbaa !13
  %32 = ashr i64 %31, 56
  %33 = and i64 %32, 255
  %34 = or i64 %30, %33
  store i64 %34, ptr %3, align 8, !tbaa !13
  %35 = load double, ptr %3, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #2
  ret double %35
}

; Function Attrs: nounwind
define dso_local void @Swap16(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !16
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = load i16, ptr %3, align 2, !tbaa !3
  %5 = zext i16 %4 to i32
  %6 = shl i32 %5, 8
  %7 = load ptr, ptr %2, align 8, !tbaa !16
  %8 = load i16, ptr %7, align 2, !tbaa !3
  %9 = zext i16 %8 to i32
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = or i32 %6, %11
  %13 = trunc i32 %12 to i16
  %14 = load ptr, ptr %2, align 8, !tbaa !16
  store i16 %13, ptr %14, align 2, !tbaa !3
  ret void
}

; Function Attrs: nounwind
define dso_local void @Swap24(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 1, ptr %3) #2
  %4 = load ptr, ptr %2, align 8, !tbaa !19
  %5 = getelementptr inbounds i8, ptr %4, i64 0
  %6 = load i8, ptr %5, align 1, !tbaa !13
  store i8 %6, ptr %3, align 1, !tbaa !13
  %7 = load ptr, ptr %2, align 8, !tbaa !19
  %8 = getelementptr inbounds i8, ptr %7, i64 2
  %9 = load i8, ptr %8, align 1, !tbaa !13
  %10 = load ptr, ptr %2, align 8, !tbaa !19
  %11 = getelementptr inbounds i8, ptr %10, i64 0
  store i8 %9, ptr %11, align 1, !tbaa !13
  %12 = load i8, ptr %3, align 1, !tbaa !13
  %13 = load ptr, ptr %2, align 8, !tbaa !19
  %14 = getelementptr inbounds i8, ptr %13, i64 2
  store i8 %12, ptr %14, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 1, ptr %3) #2
  ret void
}

; Function Attrs: nounwind
define dso_local void @Swap32(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !21
  %3 = load ptr, ptr %2, align 8, !tbaa !21
  %4 = load i32, ptr %3, align 4, !tbaa !7
  %5 = shl i32 %4, 24
  %6 = load ptr, ptr %2, align 8, !tbaa !21
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = shl i32 %7, 8
  %9 = and i32 %8, 16711680
  %10 = or i32 %5, %9
  %11 = load ptr, ptr %2, align 8, !tbaa !21
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = lshr i32 %12, 8
  %14 = and i32 %13, 65280
  %15 = or i32 %10, %14
  %16 = load ptr, ptr %2, align 8, !tbaa !21
  %17 = load i32, ptr %16, align 4, !tbaa !7
  %18 = lshr i32 %17, 24
  %19 = and i32 %18, 255
  %20 = or i32 %15, %19
  %21 = load ptr, ptr %2, align 8, !tbaa !21
  store i32 %20, ptr %21, align 4, !tbaa !7
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
!4 = !{!"short", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !5, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 short", !18, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 omnipotent char", !18, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 int", !18, i64 0}
