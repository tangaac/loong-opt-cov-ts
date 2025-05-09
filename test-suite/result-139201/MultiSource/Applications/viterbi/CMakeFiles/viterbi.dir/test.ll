; ModuleID = './MultiSource/Applications/viterbi/CMakeFiles/viterbi.dir/test.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/viterbi/test.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.dvarray = type { i64, ptr }
%struct.param_viterbi_t = type { i64, i64, i64, [7 x i8], [7 x i8], i64, [128 x i8], [128 x i8], [128 x double], [128 x [143 x i8]] }
%struct.dvector = type { i64, ptr }
%struct.bitvector = type { i64, ptr }

@.str = private unnamed_addr constant [13 x i8] c"./Dist_demux\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Starting Viterbi\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Viterbi finished\0A\00", align 1

; Function Attrs: nounwind
define dso_local signext i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dvarray, align 8
  %3 = alloca %struct.param_viterbi_t, align 8
  %4 = alloca %struct.dvector, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.bitvector, align 8
  %7 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %2) #7
  call void @llvm.lifetime.start.p0(i64 19632, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  store i32 0, ptr %7, align 4, !tbaa !3
  br label %8

8:                                                ; preds = %25, %0
  %9 = load i32, ptr %7, align 4, !tbaa !3
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  call void @dvarray_init(ptr noundef %2, i64 noundef 0, i64 noundef 0)
  call void @bitvector_init(ptr noundef %6, i64 noundef 0)
  call void @init_viterbi(ptr noundef %3, i32 noundef signext 1)
  %12 = call noalias ptr @malloc(i64 noundef 18304) #8
  store ptr %12, ptr %5, align 8, !tbaa !7
  %13 = load ptr, ptr %5, align 8, !tbaa !7
  %14 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %3, i32 0, i32 9
  %15 = getelementptr inbounds [128 x [143 x i8]], ptr %14, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 8 %15, i64 18304, i1 false)
  call void @dvector_init(ptr noundef %4, i64 noundef 128)
  %16 = getelementptr inbounds nuw %struct.dvector, ptr %4, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %3, i32 0, i32 8
  %19 = getelementptr inbounds [128 x double], ptr %18, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %17, ptr align 8 %19, i64 1024, i1 false)
  %20 = call i64 @read_dmatrix(ptr noundef %2, ptr noundef @.str)
  %21 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %22 = load ptr, ptr %5, align 8, !tbaa !7
  call void @dec_viterbi_F(ptr noundef %4, ptr noundef %22, ptr noundef %6, ptr noundef %2, ptr noundef %3, i64 noundef 0)
  %23 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.2)
  call void @dvector_clear(ptr noundef %4)
  call void @dvarray_clear(ptr noundef %2)
  call void @bitvector_clear(ptr noundef %6)
  %24 = load ptr, ptr %5, align 8, !tbaa !7
  call void @free(ptr noundef %24) #7
  br label %25

25:                                               ; preds = %11
  %26 = load i32, ptr %7, align 4, !tbaa !3
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %7, align 4, !tbaa !3
  br label %8, !llvm.loop !14

28:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 19632, ptr %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %2) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint nounwind
define internal void @dvarray_init(ptr noundef %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8, !tbaa !16
  store i64 %1, ptr %5, align 8, !tbaa !17
  store i64 %2, ptr %6, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  %8 = load i64, ptr %5, align 8, !tbaa !17
  %9 = load ptr, ptr %4, align 8, !tbaa !16
  %10 = getelementptr inbounds nuw %struct.dvarray, ptr %9, i32 0, i32 0
  store i64 %8, ptr %10, align 8, !tbaa !18
  %11 = load i64, ptr %5, align 8, !tbaa !17
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i64, ptr %5, align 8, !tbaa !17
  %15 = mul i64 %14, 16
  %16 = call noalias ptr @malloc(i64 noundef %15) #8
  %17 = load ptr, ptr %4, align 8, !tbaa !16
  %18 = getelementptr inbounds nuw %struct.dvarray, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !20
  br label %22

19:                                               ; preds = %3
  %20 = load ptr, ptr %4, align 8, !tbaa !16
  %21 = getelementptr inbounds nuw %struct.dvarray, ptr %20, i32 0, i32 1
  store ptr null, ptr %21, align 8, !tbaa !20
  br label %22

22:                                               ; preds = %19, %13
  store i64 0, ptr %7, align 8, !tbaa !17
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i64, ptr %7, align 8, !tbaa !17
  %25 = load i64, ptr %5, align 8, !tbaa !17
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load ptr, ptr %4, align 8, !tbaa !16
  %29 = getelementptr inbounds nuw %struct.dvarray, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !20
  %31 = load i64, ptr %7, align 8, !tbaa !17
  %32 = getelementptr inbounds nuw %struct.dvector, ptr %30, i64 %31
  %33 = load i64, ptr %6, align 8, !tbaa !17
  call void @dvector_init(ptr noundef %32, i64 noundef %33)
  br label %34

34:                                               ; preds = %27
  %35 = load i64, ptr %7, align 8, !tbaa !17
  %36 = add i64 %35, 1
  store i64 %36, ptr %7, align 8, !tbaa !17
  br label %23, !llvm.loop !21

37:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  ret void
}

; Function Attrs: inlinehint nounwind
define internal void @bitvector_init(ptr noundef %0, i64 noundef %1) #2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8, !tbaa !16
  store i64 %1, ptr %4, align 8, !tbaa !17
  %5 = load i64, ptr %4, align 8, !tbaa !17
  %6 = load ptr, ptr %3, align 8, !tbaa !16
  %7 = getelementptr inbounds nuw %struct.bitvector, ptr %6, i32 0, i32 0
  store i64 %5, ptr %7, align 8, !tbaa !22
  %8 = load i64, ptr %4, align 8, !tbaa !17
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i64, ptr %4, align 8, !tbaa !17
  %12 = mul i64 %11, 1
  %13 = call noalias ptr @malloc(i64 noundef %12) #8
  %14 = load ptr, ptr %3, align 8, !tbaa !16
  %15 = getelementptr inbounds nuw %struct.bitvector, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !24
  %16 = load ptr, ptr %3, align 8, !tbaa !16
  %17 = getelementptr inbounds nuw %struct.bitvector, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = load i64, ptr %4, align 8, !tbaa !17
  %20 = mul i64 %19, 1
  call void @llvm.memset.p0.i64(ptr align 1 %18, i8 0, i64 %20, i1 false)
  br label %24

21:                                               ; preds = %2
  %22 = load ptr, ptr %3, align 8, !tbaa !16
  %23 = getelementptr inbounds nuw %struct.bitvector, ptr %22, i32 0, i32 1
  store ptr null, ptr %23, align 8, !tbaa !24
  br label %24

24:                                               ; preds = %21, %10
  ret void
}

declare void @init_viterbi(ptr noundef, i32 noundef signext) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: inlinehint nounwind
define internal void @dvector_init(ptr noundef %0, i64 noundef %1) #2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8, !tbaa !16
  store i64 %1, ptr %4, align 8, !tbaa !17
  %5 = load i64, ptr %4, align 8, !tbaa !17
  %6 = load ptr, ptr %3, align 8, !tbaa !16
  %7 = getelementptr inbounds nuw %struct.dvector, ptr %6, i32 0, i32 0
  store i64 %5, ptr %7, align 8, !tbaa !25
  %8 = load i64, ptr %4, align 8, !tbaa !17
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i64, ptr %4, align 8, !tbaa !17
  %12 = mul i64 %11, 8
  %13 = call noalias ptr @malloc(i64 noundef %12) #8
  %14 = load ptr, ptr %3, align 8, !tbaa !16
  %15 = getelementptr inbounds nuw %struct.dvector, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !10
  %16 = load ptr, ptr %3, align 8, !tbaa !16
  %17 = getelementptr inbounds nuw %struct.dvector, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = load i64, ptr %4, align 8, !tbaa !17
  %20 = mul i64 %19, 8
  call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 %20, i1 false)
  br label %24

21:                                               ; preds = %2
  %22 = load ptr, ptr %3, align 8, !tbaa !16
  %23 = getelementptr inbounds nuw %struct.dvector, ptr %22, i32 0, i32 1
  store ptr null, ptr %23, align 8, !tbaa !10
  br label %24

24:                                               ; preds = %21, %10
  ret void
}

declare i64 @read_dmatrix(ptr noundef, ptr noundef) #3

declare signext i32 @printf(ptr noundef, ...) #3

declare void @dec_viterbi_F(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: inlinehint nounwind
define internal void @dvector_clear(ptr noundef %0) #2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !16
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds nuw %struct.dvector, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  call void @free(ptr noundef %5) #7
  %6 = load ptr, ptr %2, align 8, !tbaa !16
  %7 = getelementptr inbounds nuw %struct.dvector, ptr %6, i32 0, i32 0
  store i64 0, ptr %7, align 8, !tbaa !25
  %8 = load ptr, ptr %2, align 8, !tbaa !16
  %9 = getelementptr inbounds nuw %struct.dvector, ptr %8, i32 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !10
  ret void
}

; Function Attrs: inlinehint nounwind
define internal void @dvarray_clear(ptr noundef %0) #2 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #7
  store i64 0, ptr %3, align 8, !tbaa !17
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i64, ptr %3, align 8, !tbaa !17
  %6 = load ptr, ptr %2, align 8, !tbaa !16
  %7 = getelementptr inbounds nuw %struct.dvarray, ptr %6, i32 0, i32 0
  %8 = load i64, ptr %7, align 8, !tbaa !18
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !16
  %12 = getelementptr inbounds nuw %struct.dvarray, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  %14 = load i64, ptr %3, align 8, !tbaa !17
  %15 = getelementptr inbounds nuw %struct.dvector, ptr %13, i64 %14
  call void @dvector_clear(ptr noundef %15)
  br label %16

16:                                               ; preds = %10
  %17 = load i64, ptr %3, align 8, !tbaa !17
  %18 = add i64 %17, 1
  store i64 %18, ptr %3, align 8, !tbaa !17
  br label %4, !llvm.loop !26

19:                                               ; preds = %4
  %20 = load ptr, ptr %2, align 8, !tbaa !16
  %21 = getelementptr inbounds nuw %struct.dvarray, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  call void @free(ptr noundef %22) #7
  %23 = load ptr, ptr %2, align 8, !tbaa !16
  %24 = getelementptr inbounds nuw %struct.dvarray, ptr %23, i32 0, i32 0
  store i64 0, ptr %24, align 8, !tbaa !18
  %25 = load ptr, ptr %2, align 8, !tbaa !16
  %26 = getelementptr inbounds nuw %struct.dvarray, ptr %25, i32 0, i32 1
  store ptr null, ptr %26, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #7
  ret void
}

; Function Attrs: inlinehint nounwind
define internal void @bitvector_clear(ptr noundef %0) #2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !16
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds nuw %struct.bitvector, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  call void @free(ptr noundef %5) #7
  %6 = load ptr, ptr %2, align 8, !tbaa !16
  %7 = getelementptr inbounds nuw %struct.bitvector, ptr %6, i32 0, i32 0
  store i64 0, ptr %7, align 8, !tbaa !22
  %8 = load ptr, ptr %2, align 8, !tbaa !16
  %9 = getelementptr inbounds nuw %struct.bitvector, ptr %8, i32 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !13, i64 8}
!11 = !{!"", !12, i64 0, !13, i64 8}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p1 double", !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!9, !9, i64 0}
!17 = !{!12, !12, i64 0}
!18 = !{!19, !12, i64 0}
!19 = !{!"", !12, i64 0, !9, i64 8}
!20 = !{!19, !9, i64 8}
!21 = distinct !{!21, !15}
!22 = !{!23, !12, i64 0}
!23 = !{!"", !12, i64 0, !8, i64 8}
!24 = !{!23, !8, i64 8}
!25 = !{!11, !12, i64 0}
!26 = distinct !{!26, !15}
