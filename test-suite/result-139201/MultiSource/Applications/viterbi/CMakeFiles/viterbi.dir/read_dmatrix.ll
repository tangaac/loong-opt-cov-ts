; ModuleID = './MultiSource/Applications/viterbi/CMakeFiles/viterbi.dir/read_dmatrix.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/viterbi/read_dmatrix.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.dvarray = type { i64, ptr }
%struct.dvector = type { i64, ptr }

@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Opened file %s for matrix reading\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"File read and closed\0A\00", align 1

; Function Attrs: nounwind
define dso_local i64 @read_dmatrix(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  %11 = load ptr, ptr %4, align 8, !tbaa !7
  %12 = call noalias ptr @fopen(ptr noundef %11, ptr noundef @.str)
  store ptr %12, ptr %5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7
  store i32 0, ptr %9, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7
  store i32 0, ptr %10, align 4, !tbaa !11
  %13 = load ptr, ptr %4, align 8, !tbaa !7
  %14 = call ptr @mybasename(ptr noundef %13)
  %15 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %14)
  %16 = load ptr, ptr %5, align 8, !tbaa !9
  %17 = call signext i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %16, ptr noundef @.str.2, ptr noundef %10, ptr noundef %9)
  %18 = load ptr, ptr %3, align 8, !tbaa !3
  %19 = load i32, ptr %10, align 4, !tbaa !11
  %20 = sext i32 %19 to i64
  %21 = load i32, ptr %9, align 4, !tbaa !11
  %22 = sext i32 %21 to i64
  call void @dvarray_init(ptr noundef %18, i64 noundef %20, i64 noundef %22)
  store i32 0, ptr %7, align 4, !tbaa !11
  br label %23

23:                                               ; preds = %51, %2
  %24 = load i32, ptr %7, align 4, !tbaa !11
  %25 = load i32, ptr %10, align 4, !tbaa !11
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  store i32 0, ptr %8, align 4, !tbaa !11
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, ptr %8, align 4, !tbaa !11
  %30 = load i32, ptr %9, align 4, !tbaa !11
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load ptr, ptr %5, align 8, !tbaa !9
  %34 = call signext i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %33, ptr noundef @.str.3, ptr noundef %6)
  %35 = load double, ptr %6, align 8, !tbaa !13
  %36 = load ptr, ptr %3, align 8, !tbaa !3
  %37 = getelementptr inbounds nuw %struct.dvarray, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !15
  %39 = load i32, ptr %7, align 4, !tbaa !11
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dvector, ptr %38, i64 %40
  %42 = getelementptr inbounds nuw %struct.dvector, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !18
  %44 = load i32, ptr %8, align 4, !tbaa !11
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, ptr %43, i64 %45
  store double %35, ptr %46, align 8, !tbaa !13
  br label %47

47:                                               ; preds = %32
  %48 = load i32, ptr %8, align 4, !tbaa !11
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %8, align 4, !tbaa !11
  br label %28, !llvm.loop !21

50:                                               ; preds = %28
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %7, align 4, !tbaa !11
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %7, align 4, !tbaa !11
  br label %23, !llvm.loop !23

54:                                               ; preds = %23
  %55 = load ptr, ptr %3, align 8, !tbaa !3
  %56 = getelementptr inbounds nuw %struct.dvarray, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !15
  %58 = load i32, ptr %7, align 4, !tbaa !11
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.dvector, ptr %57, i64 %60
  %62 = getelementptr inbounds nuw %struct.dvector, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !18
  %64 = load i32, ptr %8, align 4, !tbaa !11
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %63, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !13
  %69 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %68)
  %70 = load ptr, ptr %5, align 8, !tbaa !9
  %71 = call signext i32 @fclose(ptr noundef %70)
  %72 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %73 = load i32, ptr %7, align 4, !tbaa !11
  %74 = load i32, ptr %8, align 4, !tbaa !11
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  ret i64 %76
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare signext i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
define internal ptr @mybasename(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #7
  %4 = load ptr, ptr %2, align 8, !tbaa !7
  %5 = call ptr @strrchr(ptr noundef %4, i32 noundef signext 47) #8
  store ptr %5, ptr %3, align 8, !tbaa !7
  %6 = load ptr, ptr %3, align 8, !tbaa !7
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !tbaa !7
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  br label %13

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8, !tbaa !7
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %10, %8 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #7
  ret ptr %14
}

declare signext i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind
define internal void @dvarray_init(ptr noundef %0, i64 noundef %1, i64 noundef %2) #3 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8, !tbaa !3
  store i64 %1, ptr %5, align 8, !tbaa !24
  store i64 %2, ptr %6, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  %8 = load i64, ptr %5, align 8, !tbaa !24
  %9 = load ptr, ptr %4, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.dvarray, ptr %9, i32 0, i32 0
  store i64 %8, ptr %10, align 8, !tbaa !25
  %11 = load i64, ptr %5, align 8, !tbaa !24
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i64, ptr %5, align 8, !tbaa !24
  %15 = mul i64 %14, 16
  %16 = call noalias ptr @malloc(i64 noundef %15) #9
  %17 = load ptr, ptr %4, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.dvarray, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !15
  br label %22

19:                                               ; preds = %3
  %20 = load ptr, ptr %4, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.dvarray, ptr %20, i32 0, i32 1
  store ptr null, ptr %21, align 8, !tbaa !15
  br label %22

22:                                               ; preds = %19, %13
  store i64 0, ptr %7, align 8, !tbaa !24
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i64, ptr %7, align 8, !tbaa !24
  %25 = load i64, ptr %5, align 8, !tbaa !24
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load ptr, ptr %4, align 8, !tbaa !3
  %29 = getelementptr inbounds nuw %struct.dvarray, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !15
  %31 = load i64, ptr %7, align 8, !tbaa !24
  %32 = getelementptr inbounds nuw %struct.dvector, ptr %30, i64 %31
  %33 = load i64, ptr %6, align 8, !tbaa !24
  call void @dvector_init(ptr noundef %32, i64 noundef %33)
  br label %34

34:                                               ; preds = %27
  %35 = load i64, ptr %7, align 8, !tbaa !24
  %36 = add i64 %35, 1
  store i64 %36, ptr %7, align 8, !tbaa !24
  br label %23, !llvm.loop !26

37:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  ret void
}

declare signext i32 @fclose(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef signext) #4

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: inlinehint nounwind
define internal void @dvector_init(ptr noundef %0, i64 noundef %1) #3 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i64 %1, ptr %4, align 8, !tbaa !24
  %5 = load i64, ptr %4, align 8, !tbaa !24
  %6 = load ptr, ptr %3, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.dvector, ptr %6, i32 0, i32 0
  store i64 %5, ptr %7, align 8, !tbaa !27
  %8 = load i64, ptr %4, align 8, !tbaa !24
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i64, ptr %4, align 8, !tbaa !24
  %12 = mul i64 %11, 8
  %13 = call noalias ptr @malloc(i64 noundef %12) #9
  %14 = load ptr, ptr %3, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.dvector, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !18
  %16 = load ptr, ptr %3, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.dvector, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !18
  %19 = load i64, ptr %4, align 8, !tbaa !24
  %20 = mul i64 %19, 8
  call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 %20, i1 false)
  br label %24

21:                                               ; preds = %2
  %22 = load ptr, ptr %3, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct.dvector, ptr %22, i32 0, i32 1
  store ptr null, ptr %23, align 8, !tbaa !18
  br label %24

24:                                               ; preds = %21, %10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #5 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 omnipotent char", !4, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !4, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!16, !4, i64 8}
!16 = !{!"", !17, i64 0, !4, i64 8}
!17 = !{!"long", !5, i64 0}
!18 = !{!19, !20, i64 8}
!19 = !{!"", !17, i64 0, !20, i64 8}
!20 = !{!"p1 double", !4, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = !{!17, !17, i64 0}
!25 = !{!16, !17, i64 0}
!26 = distinct !{!26, !22}
!27 = !{!19, !17, i64 0}
