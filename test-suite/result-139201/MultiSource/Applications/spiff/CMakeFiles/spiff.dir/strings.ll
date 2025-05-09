; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/strings.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/strings.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

; Function Attrs: nounwind
define dso_local void @S_wordcpy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !3
  br label %5

5:                                                ; preds = %37, %2
  %6 = load ptr, ptr %4, align 8, !tbaa !3
  %7 = load i8, ptr %6, align 1, !tbaa !8
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %5
  %11 = call ptr @__ctype_b_loc() #5
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = load ptr, ptr %4, align 8, !tbaa !3
  %14 = load i8, ptr %13, align 1, !tbaa !8
  %15 = sext i8 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %12, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !11
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 16384
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %10
  %23 = call ptr @__ctype_b_loc() #5
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = load ptr, ptr %4, align 8, !tbaa !3
  %26 = load i8, ptr %25, align 1, !tbaa !8
  %27 = sext i8 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, ptr %24, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !11
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 8192
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %22, %10, %5
  %36 = phi i1 [ false, %10 ], [ false, %5 ], [ %34, %22 ]
  br i1 %36, label %37, label %43

37:                                               ; preds = %35
  %38 = load ptr, ptr %4, align 8, !tbaa !3
  %39 = getelementptr inbounds nuw i8, ptr %38, i32 1
  store ptr %39, ptr %4, align 8, !tbaa !3
  %40 = load i8, ptr %38, align 1, !tbaa !8
  %41 = load ptr, ptr %3, align 8, !tbaa !3
  %42 = getelementptr inbounds nuw i8, ptr %41, i32 1
  store ptr %42, ptr %3, align 8, !tbaa !3
  store i8 %40, ptr %41, align 1, !tbaa !8
  br label %5, !llvm.loop !13

43:                                               ; preds = %35
  %44 = load ptr, ptr %3, align 8, !tbaa !3
  store i8 0, ptr %44, align 1, !tbaa !8
  ret void
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: nounwind
define dso_local void @S_skipword(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !15
  br label %3

3:                                                ; preds = %38, %1
  %4 = load ptr, ptr %2, align 8, !tbaa !15
  %5 = load ptr, ptr %4, align 8, !tbaa !3
  %6 = load i8, ptr %5, align 1, !tbaa !8
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %3
  %10 = call ptr @__ctype_b_loc() #5
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = load ptr, ptr %2, align 8, !tbaa !15
  %13 = load ptr, ptr %12, align 8, !tbaa !3
  %14 = load i8, ptr %13, align 1, !tbaa !8
  %15 = sext i8 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %11, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !11
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 16384
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %9
  %23 = call ptr @__ctype_b_loc() #5
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = load ptr, ptr %2, align 8, !tbaa !15
  %26 = load ptr, ptr %25, align 8, !tbaa !3
  %27 = load i8, ptr %26, align 1, !tbaa !8
  %28 = sext i8 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, ptr %24, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !11
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 8192
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %22, %9, %3
  %37 = phi i1 [ false, %9 ], [ false, %3 ], [ %35, %22 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = load ptr, ptr %2, align 8, !tbaa !15
  %40 = load ptr, ptr %39, align 8, !tbaa !3
  %41 = getelementptr inbounds nuw i8, ptr %40, i32 1
  store ptr %41, ptr %39, align 8, !tbaa !3
  br label %3, !llvm.loop !18

42:                                               ; preds = %36
  ret void
}

; Function Attrs: nounwind
define dso_local void @S_skipspace(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !15
  br label %3

3:                                                ; preds = %24, %1
  %4 = load ptr, ptr %2, align 8, !tbaa !15
  %5 = load ptr, ptr %4, align 8, !tbaa !3
  %6 = load i8, ptr %5, align 1, !tbaa !8
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = call ptr @__ctype_b_loc() #5
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = load ptr, ptr %2, align 8, !tbaa !15
  %13 = load ptr, ptr %12, align 8, !tbaa !3
  %14 = load i8, ptr %13, align 1, !tbaa !8
  %15 = sext i8 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %11, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !11
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 8192
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %9, %3
  %23 = phi i1 [ false, %3 ], [ %21, %9 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = load ptr, ptr %2, align 8, !tbaa !15
  %26 = load ptr, ptr %25, align 8, !tbaa !3
  %27 = getelementptr inbounds nuw i8, ptr %26, i32 1
  store ptr %27, ptr %25, align 8, !tbaa !3
  br label %3, !llvm.loop !19

28:                                               ; preds = %22
  ret void
}

; Function Attrs: nounwind
define dso_local void @S_nextword(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !15
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  call void @S_skipword(ptr noundef %3)
  %4 = load ptr, ptr %2, align 8, !tbaa !15
  call void @S_skipspace(ptr noundef %4)
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @S_wordcmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !3
  %5 = load ptr, ptr %3, align 8, !tbaa !3
  %6 = load ptr, ptr %4, align 8, !tbaa !3
  %7 = load ptr, ptr %4, align 8, !tbaa !3
  %8 = call i64 @strlen(ptr noundef %7) #6
  %9 = call signext i32 @strncmp(ptr noundef %5, ptr noundef %6, i64 noundef %8) #6
  ret i32 %9
}

; Function Attrs: nounwind willreturn memory(read)
declare signext i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
define dso_local void @S_trimzeros(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #7
  %5 = load ptr, ptr %2, align 8, !tbaa !3
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  %7 = call i64 @strlen(ptr noundef %6) #6
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 %7
  store ptr %8, ptr %3, align 8, !tbaa !3
  br label %9

9:                                                ; preds = %24, %1
  %10 = load ptr, ptr %3, align 8, !tbaa !3
  %11 = load ptr, ptr %2, align 8, !tbaa !3
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 8, !tbaa !3
  %16 = getelementptr inbounds i8, ptr %15, i32 -1
  store ptr %16, ptr %3, align 8, !tbaa !3
  %17 = load ptr, ptr %3, align 8, !tbaa !3
  %18 = load i8, ptr %17, align 1, !tbaa !8
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 48, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load ptr, ptr %3, align 8, !tbaa !3
  store i8 0, ptr %22, align 1, !tbaa !8
  br label %24

23:                                               ; preds = %14
  store i32 1, ptr %4, align 4
  br label %26

24:                                               ; preds = %21
  br label %9, !llvm.loop !20

25:                                               ; preds = %9
  store i32 1, ptr %4, align 4
  br label %26

26:                                               ; preds = %25, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nounwind
define dso_local void @S_savestr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !15
  store ptr %1, ptr %4, align 8, !tbaa !3
  %5 = load ptr, ptr %3, align 8, !tbaa !15
  %6 = load ptr, ptr %4, align 8, !tbaa !3
  %7 = call i64 @strlen(ptr noundef %6) #6
  call void @S_allocstr(ptr noundef %5, i64 noundef %7)
  %8 = load ptr, ptr %3, align 8, !tbaa !15
  %9 = load ptr, ptr %8, align 8, !tbaa !3
  %10 = load ptr, ptr %4, align 8, !tbaa !3
  %11 = call ptr @strcpy(ptr noundef %9, ptr noundef %10) #7
  ret void
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
define dso_local void @S_savenstr(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !15
  store ptr %1, ptr %5, align 8, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !21
  %7 = load ptr, ptr %4, align 8, !tbaa !15
  %8 = load i32, ptr %6, align 4, !tbaa !21
  call void @S_allocstr(ptr noundef %7, i32 noundef signext %8)
  %9 = load ptr, ptr %4, align 8, !tbaa !15
  %10 = load ptr, ptr %9, align 8, !tbaa !3
  %11 = load ptr, ptr %5, align 8, !tbaa !3
  %12 = load i32, ptr %6, align 4, !tbaa !21
  %13 = sext i32 %12 to i64
  %14 = call ptr @strncpy(ptr noundef %10, ptr noundef %11, i64 noundef %13) #7
  %15 = load ptr, ptr %4, align 8, !tbaa !15
  %16 = load ptr, ptr %15, align 8, !tbaa !3
  %17 = load i32, ptr %6, align 4, !tbaa !21
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  store i8 0, ptr %19, align 1, !tbaa !8
  ret void
}

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind
define dso_local void @S_allocstr(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !15
  store i32 %1, ptr %4, align 4, !tbaa !21
  %5 = load i32, ptr %4, align 4, !tbaa !21
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 1
  %9 = call ptr @_Z_myalloc(i64 noundef %8)
  %10 = load ptr, ptr %3, align 8, !tbaa !15
  store ptr %9, ptr %10, align 8, !tbaa !3
  ret void
}

declare ptr @_Z_myalloc(...) #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 omnipotent char", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 short", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"p2 omnipotent char", !17, i64 0}
!17 = !{!"any p2 pointer", !5, i64 0}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !6, i64 0}
