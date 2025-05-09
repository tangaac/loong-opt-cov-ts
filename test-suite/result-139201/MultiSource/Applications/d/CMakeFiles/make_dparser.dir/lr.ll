; ModuleID = './MultiSource/Applications/d/CMakeFiles/make_dparser.dir/lr.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/d/lr.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.Elem = type { i32, i32, ptr, %union.anon }
%union.anon = type { %struct.Unresolved }
%struct.Unresolved = type { ptr, i32 }
%struct.Production = type { ptr, i32, %struct.anon, i32, i8, ptr, [8 x ptr], [8 x ptr], ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, ptr, [3 x ptr] }
%struct.Grammar = type { ptr, %struct.anon.0, %struct.anon.1, %struct.anon.2, %struct.Code, ptr, i32, %struct.anon.3, %struct.anon.4, ptr, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.1 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.2 = type { i32, i32, ptr, [3 x ptr] }
%struct.Code = type { ptr, i32 }
%struct.anon.3 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.4 = type { i32, i32, ptr, [3 x ptr] }
%struct.Term = type { i32, i32, i32, i32, i32, ptr, i32, i8, ptr }
%struct.VecAction = type { i32, i32, ptr, [3 x ptr] }
%struct.Action = type { i32, ptr, ptr, ptr, i32, ptr }
%struct.Rule = type { i32, ptr, i32, i32, i32, i32, %struct.anon.7, ptr, %struct.Code, %struct.Code, %struct.anon.8, i32, ptr }
%struct.anon.7 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.8 = type { i32, i32, ptr, [3 x ptr] }
%struct.State = type { i32, i64, %struct.anon.5, %struct.anon.6, %struct.VecGoto, %struct.VecAction, %struct.VecAction, %struct.VecHint, %struct.VecHint, %struct.Scanner, i8, ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.5 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.6 = type { i32, i32, ptr, [3 x ptr] }
%struct.VecGoto = type { i32, i32, ptr, [3 x ptr] }
%struct.VecHint = type { i32, i32, ptr, [3 x ptr] }
%struct.Scanner = type { %struct.VecScanState, %struct.VecScanStateTransition }
%struct.VecScanState = type { i32, i32, ptr, [3 x ptr] }
%struct.VecScanStateTransition = type { i32, i32, ptr, [3 x ptr] }
%struct.Goto = type { ptr, ptr }
%struct.Hint = type { i32, ptr, ptr }

; Function Attrs: nounwind
define dso_local signext i32 @elem_symbol(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !8
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = getelementptr inbounds nuw %struct.Elem, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8, !tbaa !10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !tbaa !8
  %12 = getelementptr inbounds nuw %struct.Elem, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = getelementptr inbounds nuw %struct.Production, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !15
  store i32 %15, ptr %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.Grammar, ptr %17, i32 0, i32 1
  %19 = getelementptr inbounds nuw %struct.anon.0, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8, !tbaa !24
  %21 = load ptr, ptr %5, align 8, !tbaa !8
  %22 = getelementptr inbounds nuw %struct.Elem, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = getelementptr inbounds nuw %struct.Term, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !38
  %26 = add i32 %20, %25
  store i32 %26, ptr %3, align 4
  br label %27

27:                                               ; preds = %16, %10
  %28 = load i32, ptr %3, align 4
  ret i32 %28
}

; Function Attrs: nounwind
define dso_local void @sort_VecAction(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !40
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = getelementptr inbounds nuw %struct.VecAction, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = load ptr, ptr %2, align 8, !tbaa !40
  %7 = getelementptr inbounds nuw %struct.VecAction, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = zext i32 %8 to i64
  call void @qsort(ptr noundef %5, i64 noundef %9, i64 noundef 8, ptr noundef @actioncmp)
  ret void
}

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind
define internal signext i32 @actioncmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !40
  store ptr %1, ptr %4, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  %9 = load ptr, ptr %3, align 8, !tbaa !40
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  store ptr %10, ptr %5, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  %11 = load ptr, ptr %4, align 8, !tbaa !40
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  store ptr %12, ptr %6, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  %13 = load ptr, ptr %5, align 8, !tbaa !45
  %14 = getelementptr inbounds nuw %struct.Action, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8, !tbaa !47
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load ptr, ptr %5, align 8, !tbaa !45
  %19 = getelementptr inbounds nuw %struct.Action, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds nuw %struct.Term, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !38
  %23 = add i32 %22, 1000000
  store i32 %23, ptr %7, align 4, !tbaa !50
  br label %30

24:                                               ; preds = %2
  %25 = load ptr, ptr %5, align 8, !tbaa !45
  %26 = getelementptr inbounds nuw %struct.Action, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = getelementptr inbounds nuw %struct.Rule, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !52
  store i32 %29, ptr %7, align 4, !tbaa !50
  br label %30

30:                                               ; preds = %24, %17
  %31 = load ptr, ptr %6, align 8, !tbaa !45
  %32 = getelementptr inbounds nuw %struct.Action, ptr %31, i32 0, i32 0
  %33 = load i32, ptr %32, align 8, !tbaa !47
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load ptr, ptr %6, align 8, !tbaa !45
  %37 = getelementptr inbounds nuw %struct.Action, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = getelementptr inbounds nuw %struct.Term, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !38
  %41 = add i32 %40, 1000000
  store i32 %41, ptr %8, align 4, !tbaa !50
  br label %48

42:                                               ; preds = %30
  %43 = load ptr, ptr %6, align 8, !tbaa !45
  %44 = getelementptr inbounds nuw %struct.Action, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !51
  %46 = getelementptr inbounds nuw %struct.Rule, ptr %45, i32 0, i32 0
  %47 = load i32, ptr %46, align 8, !tbaa !52
  store i32 %47, ptr %8, align 4, !tbaa !50
  br label %48

48:                                               ; preds = %42, %35
  %49 = load i32, ptr %7, align 4, !tbaa !50
  %50 = load i32, ptr %8, align 4, !tbaa !50
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %59

53:                                               ; preds = %48
  %54 = load i32, ptr %7, align 4, !tbaa !50
  %55 = load i32, ptr %8, align 4, !tbaa !50
  %56 = icmp slt i32 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 -1, i32 0
  br label %59

59:                                               ; preds = %53, %52
  %60 = phi i32 [ 1, %52 ], [ %58, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  ret i32 %60
}

; Function Attrs: nounwind
define dso_local ptr @goto_State(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !58
  store ptr %1, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  store i32 0, ptr %6, align 4, !tbaa !50
  br label %8

8:                                                ; preds = %44, %2
  %9 = load i32, ptr %6, align 4, !tbaa !50
  %10 = load ptr, ptr %4, align 8, !tbaa !58
  %11 = getelementptr inbounds nuw %struct.State, ptr %10, i32 0, i32 4
  %12 = getelementptr inbounds nuw %struct.VecGoto, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !59
  %14 = icmp ult i32 %9, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8, !tbaa !58
  %17 = getelementptr inbounds nuw %struct.State, ptr %16, i32 0, i32 4
  %18 = getelementptr inbounds nuw %struct.VecGoto, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = load i32, ptr %6, align 4, !tbaa !50
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = getelementptr inbounds nuw %struct.Goto, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = getelementptr inbounds nuw %struct.Elem, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = load ptr, ptr %5, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw %struct.Elem, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !14
  %31 = icmp eq ptr %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %15
  %33 = load ptr, ptr %4, align 8, !tbaa !58
  %34 = getelementptr inbounds nuw %struct.State, ptr %33, i32 0, i32 4
  %35 = getelementptr inbounds nuw %struct.VecGoto, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  %37 = load i32, ptr %6, align 4, !tbaa !50
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = getelementptr inbounds nuw %struct.Goto, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !76
  store ptr %42, ptr %3, align 8
  store i32 1, ptr %7, align 4
  br label %48

43:                                               ; preds = %15
  br label %44

44:                                               ; preds = %43
  %45 = load i32, ptr %6, align 4, !tbaa !50
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %6, align 4, !tbaa !50
  br label %8, !llvm.loop !77

47:                                               ; preds = %8
  store ptr null, ptr %3, align 8
  store i32 1, ptr %7, align 4
  br label %48

48:                                               ; preds = %47, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  %49 = load ptr, ptr %3, align 8
  ret ptr %49
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind
define dso_local void @build_LR_tables(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8, !tbaa !3
  call void @init_LR(ptr noundef %3)
  %4 = load ptr, ptr %2, align 8, !tbaa !3
  call void @build_LR_sets(ptr noundef %4)
  %5 = load ptr, ptr %2, align 8, !tbaa !3
  call void @build_actions(ptr noundef %5)
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  call void @build_right_epsilon_hints(ptr noundef %6)
  %7 = load ptr, ptr %2, align 8, !tbaa !3
  call void @build_error_recovery(ptr noundef %7)
  ret void
}

; Function Attrs: nounwind
define internal void @init_LR(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8, !tbaa !3
  %4 = getelementptr inbounds nuw %struct.Grammar, ptr %3, i32 0, i32 27
  store i32 0, ptr %4, align 4, !tbaa !79
  ret void
}

; Function Attrs: nounwind
define internal void @build_LR_sets(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #7
  %4 = call ptr @new_state()
  store ptr %4, ptr %3, align 8, !tbaa !58
  %5 = load ptr, ptr %3, align 8, !tbaa !58
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.Grammar, ptr %6, i32 0, i32 1
  %8 = getelementptr inbounds nuw %struct.anon.0, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = getelementptr inbounds ptr, ptr %9, i64 0
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = getelementptr inbounds nuw %struct.Production, ptr %11, i32 0, i32 2
  %13 = getelementptr inbounds nuw %struct.anon, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = getelementptr inbounds ptr, ptr %14, i64 0
  %16 = load ptr, ptr %15, align 8, !tbaa !83
  %17 = getelementptr inbounds nuw %struct.Rule, ptr %16, i32 0, i32 6
  %18 = getelementptr inbounds nuw %struct.anon.7, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = getelementptr inbounds ptr, ptr %19, i64 0
  %21 = load ptr, ptr %20, align 8, !tbaa !8
  %22 = call signext i32 @insert_item(ptr noundef %5, ptr noundef %21)
  %23 = load ptr, ptr %2, align 8, !tbaa !3
  %24 = load ptr, ptr %3, align 8, !tbaa !58
  %25 = call ptr @build_closure(ptr noundef %23, ptr noundef %24)
  %26 = load ptr, ptr %2, align 8, !tbaa !3
  call void @build_states_for_each_production(ptr noundef %26)
  %27 = load ptr, ptr %2, align 8, !tbaa !3
  call void @build_new_states(ptr noundef %27)
  %28 = load ptr, ptr %2, align 8, !tbaa !3
  call void @sort_Gotos(ptr noundef %28)
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #7
  ret void
}

; Function Attrs: nounwind
define internal void @build_actions(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  store i32 0, ptr %3, align 4, !tbaa !50
  br label %8

8:                                                ; preds = %127, %1
  %9 = load i32, ptr %3, align 4, !tbaa !50
  %10 = load ptr, ptr %2, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct.Grammar, ptr %10, i32 0, i32 3
  %12 = getelementptr inbounds nuw %struct.anon.2, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !85
  %14 = icmp ult i32 %9, %13
  br i1 %14, label %15, label %130

15:                                               ; preds = %8
  %16 = load ptr, ptr %2, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 3
  %18 = getelementptr inbounds nuw %struct.anon.2, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !86
  %20 = load i32, ptr %3, align 4, !tbaa !50
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  store ptr %23, ptr %6, align 8, !tbaa !58
  store i32 0, ptr %4, align 4, !tbaa !50
  br label %24

24:                                               ; preds = %119, %15
  %25 = load i32, ptr %4, align 4, !tbaa !50
  %26 = load ptr, ptr %6, align 8, !tbaa !58
  %27 = getelementptr inbounds nuw %struct.State, ptr %26, i32 0, i32 2
  %28 = getelementptr inbounds nuw %struct.anon.5, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !87
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %122

31:                                               ; preds = %24
  %32 = load ptr, ptr %6, align 8, !tbaa !58
  %33 = getelementptr inbounds nuw %struct.State, ptr %32, i32 0, i32 2
  %34 = getelementptr inbounds nuw %struct.anon.5, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !88
  %36 = load i32, ptr %4, align 4, !tbaa !50
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !8
  store ptr %39, ptr %7, align 8, !tbaa !8
  %40 = load ptr, ptr %7, align 8, !tbaa !8
  %41 = getelementptr inbounds nuw %struct.Elem, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 8, !tbaa !10
  %43 = icmp ne i32 %42, 3
  br i1 %43, label %44, label %96

44:                                               ; preds = %31
  %45 = load ptr, ptr %7, align 8, !tbaa !8
  %46 = getelementptr inbounds nuw %struct.Elem, ptr %45, i32 0, i32 0
  %47 = load i32, ptr %46, align 8, !tbaa !10
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %95

49:                                               ; preds = %44
  store i32 0, ptr %5, align 4, !tbaa !50
  br label %50

50:                                               ; preds = %91, %49
  %51 = load i32, ptr %5, align 4, !tbaa !50
  %52 = load ptr, ptr %6, align 8, !tbaa !58
  %53 = getelementptr inbounds nuw %struct.State, ptr %52, i32 0, i32 4
  %54 = getelementptr inbounds nuw %struct.VecGoto, ptr %53, i32 0, i32 0
  %55 = load i32, ptr %54, align 8, !tbaa !59
  %56 = icmp ult i32 %51, %55
  br i1 %56, label %57, label %94

57:                                               ; preds = %50
  %58 = load ptr, ptr %6, align 8, !tbaa !58
  %59 = getelementptr inbounds nuw %struct.State, ptr %58, i32 0, i32 4
  %60 = getelementptr inbounds nuw %struct.VecGoto, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !71
  %62 = load i32, ptr %5, align 4, !tbaa !50
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %61, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !72
  %66 = getelementptr inbounds nuw %struct.Goto, ptr %65, i32 0, i32 0
  %67 = load ptr, ptr %66, align 8, !tbaa !74
  %68 = getelementptr inbounds nuw %struct.Elem, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !14
  %70 = load ptr, ptr %7, align 8, !tbaa !8
  %71 = getelementptr inbounds nuw %struct.Elem, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !14
  %73 = icmp eq ptr %69, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %57
  %75 = load ptr, ptr %2, align 8, !tbaa !3
  %76 = load ptr, ptr %6, align 8, !tbaa !58
  %77 = load ptr, ptr %7, align 8, !tbaa !8
  %78 = getelementptr inbounds nuw %struct.Elem, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !14
  %80 = load ptr, ptr %6, align 8, !tbaa !58
  %81 = getelementptr inbounds nuw %struct.State, ptr %80, i32 0, i32 4
  %82 = getelementptr inbounds nuw %struct.VecGoto, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !71
  %84 = load i32, ptr %5, align 4, !tbaa !50
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %83, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !72
  %88 = getelementptr inbounds nuw %struct.Goto, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !76
  call void @add_action(ptr noundef %75, ptr noundef %76, i32 noundef signext 1, ptr noundef %79, ptr noundef null, ptr noundef %89)
  br label %90

90:                                               ; preds = %74, %57
  br label %91

91:                                               ; preds = %90
  %92 = load i32, ptr %5, align 4, !tbaa !50
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %5, align 4, !tbaa !50
  br label %50, !llvm.loop !89

94:                                               ; preds = %50
  br label %95

95:                                               ; preds = %94, %44
  br label %118

96:                                               ; preds = %31
  %97 = load ptr, ptr %7, align 8, !tbaa !8
  %98 = getelementptr inbounds nuw %struct.Elem, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !90
  %100 = getelementptr inbounds nuw %struct.Rule, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !91
  %102 = getelementptr inbounds nuw %struct.Production, ptr %101, i32 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !15
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load ptr, ptr %2, align 8, !tbaa !3
  %107 = load ptr, ptr %6, align 8, !tbaa !58
  %108 = load ptr, ptr %7, align 8, !tbaa !8
  %109 = getelementptr inbounds nuw %struct.Elem, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !90
  call void @add_action(ptr noundef %106, ptr noundef %107, i32 noundef signext 2, ptr noundef null, ptr noundef %110, ptr noundef null)
  br label %117

111:                                              ; preds = %96
  %112 = load ptr, ptr %6, align 8, !tbaa !58
  %113 = getelementptr inbounds nuw %struct.State, ptr %112, i32 0, i32 10
  %114 = load i8, ptr %113, align 8
  %115 = and i8 %114, -2
  %116 = or i8 %115, 1
  store i8 %116, ptr %113, align 8
  br label %117

117:                                              ; preds = %111, %105
  br label %118

118:                                              ; preds = %117, %95
  br label %119

119:                                              ; preds = %118
  %120 = load i32, ptr %4, align 4, !tbaa !50
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %4, align 4, !tbaa !50
  br label %24, !llvm.loop !92

122:                                              ; preds = %24
  %123 = load ptr, ptr %6, align 8, !tbaa !58
  %124 = getelementptr inbounds nuw %struct.State, ptr %123, i32 0, i32 5
  call void @sort_VecAction(ptr noundef %124)
  %125 = load ptr, ptr %6, align 8, !tbaa !58
  %126 = getelementptr inbounds nuw %struct.State, ptr %125, i32 0, i32 6
  call void @sort_VecAction(ptr noundef %126)
  br label %127

127:                                              ; preds = %122
  %128 = load i32, ptr %3, align 4, !tbaa !50
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %3, align 4, !tbaa !50
  br label %8, !llvm.loop !93

130:                                              ; preds = %8
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret void
}

; Function Attrs: nounwind
define internal void @build_right_epsilon_hints(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #7
  store i32 0, ptr %3, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %275, %1
  %11 = load i32, ptr %3, align 4, !tbaa !50
  %12 = load ptr, ptr %2, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.Grammar, ptr %12, i32 0, i32 3
  %14 = getelementptr inbounds nuw %struct.anon.2, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8, !tbaa !85
  %16 = icmp ult i32 %11, %15
  br i1 %16, label %17, label %278

17:                                               ; preds = %10
  %18 = load ptr, ptr %2, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.Grammar, ptr %18, i32 0, i32 3
  %20 = getelementptr inbounds nuw %struct.anon.2, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !86
  %22 = load i32, ptr %3, align 4, !tbaa !50
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  store ptr %25, ptr %6, align 8, !tbaa !58
  store i32 0, ptr %4, align 4, !tbaa !50
  br label %26

26:                                               ; preds = %255, %17
  %27 = load i32, ptr %4, align 4, !tbaa !50
  %28 = load ptr, ptr %6, align 8, !tbaa !58
  %29 = getelementptr inbounds nuw %struct.State, ptr %28, i32 0, i32 2
  %30 = getelementptr inbounds nuw %struct.anon.5, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %30, align 8, !tbaa !87
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %33, label %258

33:                                               ; preds = %26
  %34 = load ptr, ptr %6, align 8, !tbaa !58
  %35 = getelementptr inbounds nuw %struct.State, ptr %34, i32 0, i32 2
  %36 = getelementptr inbounds nuw %struct.anon.5, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !88
  %38 = load i32, ptr %4, align 4, !tbaa !50
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !8
  store ptr %41, ptr %8, align 8, !tbaa !8
  %42 = load ptr, ptr %8, align 8, !tbaa !8
  %43 = getelementptr inbounds nuw %struct.Elem, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !90
  store ptr %44, ptr %9, align 8, !tbaa !83
  %45 = load ptr, ptr %8, align 8, !tbaa !8
  %46 = getelementptr inbounds nuw %struct.Elem, ptr %45, i32 0, i32 0
  %47 = load i32, ptr %46, align 8, !tbaa !10
  %48 = icmp ne i32 %47, 3
  br i1 %48, label %49, label %253

49:                                               ; preds = %33
  %50 = load ptr, ptr %8, align 8, !tbaa !8
  %51 = getelementptr inbounds nuw %struct.Elem, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !94
  store i32 %52, ptr %5, align 4, !tbaa !50
  br label %53

53:                                               ; preds = %88, %49
  %54 = load i32, ptr %5, align 4, !tbaa !50
  %55 = load ptr, ptr %9, align 8, !tbaa !83
  %56 = getelementptr inbounds nuw %struct.Rule, ptr %55, i32 0, i32 6
  %57 = getelementptr inbounds nuw %struct.anon.7, ptr %56, i32 0, i32 0
  %58 = load i32, ptr %57, align 8, !tbaa !95
  %59 = icmp ult i32 %54, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %53
  %61 = load ptr, ptr %9, align 8, !tbaa !83
  %62 = getelementptr inbounds nuw %struct.Rule, ptr %61, i32 0, i32 6
  %63 = getelementptr inbounds nuw %struct.anon.7, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !84
  %65 = load i32, ptr %5, align 4, !tbaa !50
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !8
  %69 = getelementptr inbounds nuw %struct.Elem, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 8, !tbaa !10
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %60
  %73 = load ptr, ptr %9, align 8, !tbaa !83
  %74 = getelementptr inbounds nuw %struct.Rule, ptr %73, i32 0, i32 6
  %75 = getelementptr inbounds nuw %struct.anon.7, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !84
  %77 = load i32, ptr %5, align 4, !tbaa !50
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %76, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !8
  %81 = getelementptr inbounds nuw %struct.Elem, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !14
  %83 = getelementptr inbounds nuw %struct.Production, ptr %82, i32 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !96
  %85 = icmp ne ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %72, %60
  br label %254

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87
  %89 = load i32, ptr %5, align 4, !tbaa !50
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %5, align 4, !tbaa !50
  br label %53, !llvm.loop !97

91:                                               ; preds = %53
  %92 = load ptr, ptr %6, align 8, !tbaa !58
  store ptr %92, ptr %7, align 8, !tbaa !58
  %93 = load ptr, ptr %8, align 8, !tbaa !8
  %94 = getelementptr inbounds nuw %struct.Elem, ptr %93, i32 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !94
  store i32 %95, ptr %5, align 4, !tbaa !50
  br label %96

96:                                               ; preds = %114, %91
  %97 = load i32, ptr %5, align 4, !tbaa !50
  %98 = load ptr, ptr %9, align 8, !tbaa !83
  %99 = getelementptr inbounds nuw %struct.Rule, ptr %98, i32 0, i32 6
  %100 = getelementptr inbounds nuw %struct.anon.7, ptr %99, i32 0, i32 0
  %101 = load i32, ptr %100, align 8, !tbaa !95
  %102 = icmp ult i32 %97, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %96
  %104 = load ptr, ptr %7, align 8, !tbaa !58
  %105 = load ptr, ptr %9, align 8, !tbaa !83
  %106 = getelementptr inbounds nuw %struct.Rule, ptr %105, i32 0, i32 6
  %107 = getelementptr inbounds nuw %struct.anon.7, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !84
  %109 = load i32, ptr %5, align 4, !tbaa !50
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %108, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !8
  %113 = call ptr @goto_State(ptr noundef %104, ptr noundef %112)
  store ptr %113, ptr %7, align 8, !tbaa !58
  br label %114

114:                                              ; preds = %103
  %115 = load i32, ptr %5, align 4, !tbaa !50
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr %5, align 4, !tbaa !50
  br label %96, !llvm.loop !98

117:                                              ; preds = %96
  %118 = load ptr, ptr %7, align 8, !tbaa !58
  %119 = icmp ne ptr %118, null
  br i1 %119, label %120, label %251

120:                                              ; preds = %117
  %121 = load ptr, ptr %9, align 8, !tbaa !83
  %122 = getelementptr inbounds nuw %struct.Rule, ptr %121, i32 0, i32 6
  %123 = getelementptr inbounds nuw %struct.anon.7, ptr %122, i32 0, i32 0
  %124 = load i32, ptr %123, align 8, !tbaa !95
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %251

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126
  %128 = load ptr, ptr %6, align 8, !tbaa !58
  %129 = getelementptr inbounds nuw %struct.State, ptr %128, i32 0, i32 7
  %130 = getelementptr inbounds nuw %struct.VecHint, ptr %129, i32 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !99
  %132 = icmp ne ptr %131, null
  br i1 %132, label %160, label %133

133:                                              ; preds = %127
  %134 = load ptr, ptr %9, align 8, !tbaa !83
  %135 = getelementptr inbounds nuw %struct.Rule, ptr %134, i32 0, i32 6
  %136 = getelementptr inbounds nuw %struct.anon.7, ptr %135, i32 0, i32 0
  %137 = load i32, ptr %136, align 8, !tbaa !95
  %138 = load ptr, ptr %8, align 8, !tbaa !8
  %139 = getelementptr inbounds nuw %struct.Elem, ptr %138, i32 0, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !94
  %141 = sub i32 %137, %140
  %142 = sub i32 %141, 1
  %143 = load ptr, ptr %7, align 8, !tbaa !58
  %144 = load ptr, ptr %9, align 8, !tbaa !83
  %145 = call ptr @new_Hint(i32 noundef signext %142, ptr noundef %143, ptr noundef %144)
  %146 = load ptr, ptr %6, align 8, !tbaa !58
  %147 = getelementptr inbounds nuw %struct.State, ptr %146, i32 0, i32 7
  %148 = getelementptr inbounds nuw %struct.VecHint, ptr %147, i32 0, i32 3
  %149 = getelementptr inbounds [3 x ptr], ptr %148, i64 0, i64 0
  %150 = load ptr, ptr %6, align 8, !tbaa !58
  %151 = getelementptr inbounds nuw %struct.State, ptr %150, i32 0, i32 7
  %152 = getelementptr inbounds nuw %struct.VecHint, ptr %151, i32 0, i32 2
  store ptr %149, ptr %152, align 8, !tbaa !99
  %153 = load ptr, ptr %6, align 8, !tbaa !58
  %154 = getelementptr inbounds nuw %struct.State, ptr %153, i32 0, i32 7
  %155 = getelementptr inbounds nuw %struct.VecHint, ptr %154, i32 0, i32 0
  %156 = load i32, ptr %155, align 8, !tbaa !100
  %157 = add i32 %156, 1
  store i32 %157, ptr %155, align 8, !tbaa !100
  %158 = zext i32 %156 to i64
  %159 = getelementptr inbounds nuw ptr, ptr %149, i64 %158
  store ptr %145, ptr %159, align 8, !tbaa !101
  br label %250

160:                                              ; preds = %127
  %161 = load ptr, ptr %6, align 8, !tbaa !58
  %162 = getelementptr inbounds nuw %struct.State, ptr %161, i32 0, i32 7
  %163 = getelementptr inbounds nuw %struct.VecHint, ptr %162, i32 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !99
  %165 = load ptr, ptr %6, align 8, !tbaa !58
  %166 = getelementptr inbounds nuw %struct.State, ptr %165, i32 0, i32 7
  %167 = getelementptr inbounds nuw %struct.VecHint, ptr %166, i32 0, i32 3
  %168 = getelementptr inbounds [3 x ptr], ptr %167, i64 0, i64 0
  %169 = icmp eq ptr %164, %168
  br i1 %169, label %170, label %201

170:                                              ; preds = %160
  %171 = load ptr, ptr %6, align 8, !tbaa !58
  %172 = getelementptr inbounds nuw %struct.State, ptr %171, i32 0, i32 7
  %173 = getelementptr inbounds nuw %struct.VecHint, ptr %172, i32 0, i32 0
  %174 = load i32, ptr %173, align 8, !tbaa !100
  %175 = icmp ult i32 %174, 3
  br i1 %175, label %176, label %200

176:                                              ; preds = %170
  %177 = load ptr, ptr %9, align 8, !tbaa !83
  %178 = getelementptr inbounds nuw %struct.Rule, ptr %177, i32 0, i32 6
  %179 = getelementptr inbounds nuw %struct.anon.7, ptr %178, i32 0, i32 0
  %180 = load i32, ptr %179, align 8, !tbaa !95
  %181 = load ptr, ptr %8, align 8, !tbaa !8
  %182 = getelementptr inbounds nuw %struct.Elem, ptr %181, i32 0, i32 1
  %183 = load i32, ptr %182, align 4, !tbaa !94
  %184 = sub i32 %180, %183
  %185 = sub i32 %184, 1
  %186 = load ptr, ptr %7, align 8, !tbaa !58
  %187 = load ptr, ptr %9, align 8, !tbaa !83
  %188 = call ptr @new_Hint(i32 noundef signext %185, ptr noundef %186, ptr noundef %187)
  %189 = load ptr, ptr %6, align 8, !tbaa !58
  %190 = getelementptr inbounds nuw %struct.State, ptr %189, i32 0, i32 7
  %191 = getelementptr inbounds nuw %struct.VecHint, ptr %190, i32 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !99
  %193 = load ptr, ptr %6, align 8, !tbaa !58
  %194 = getelementptr inbounds nuw %struct.State, ptr %193, i32 0, i32 7
  %195 = getelementptr inbounds nuw %struct.VecHint, ptr %194, i32 0, i32 0
  %196 = load i32, ptr %195, align 8, !tbaa !100
  %197 = add i32 %196, 1
  store i32 %197, ptr %195, align 8, !tbaa !100
  %198 = zext i32 %196 to i64
  %199 = getelementptr inbounds nuw ptr, ptr %192, i64 %198
  store ptr %188, ptr %199, align 8, !tbaa !101
  br label %250

200:                                              ; preds = %170
  br label %233

201:                                              ; preds = %160
  %202 = load ptr, ptr %6, align 8, !tbaa !58
  %203 = getelementptr inbounds nuw %struct.State, ptr %202, i32 0, i32 7
  %204 = getelementptr inbounds nuw %struct.VecHint, ptr %203, i32 0, i32 0
  %205 = load i32, ptr %204, align 8, !tbaa !100
  %206 = and i32 %205, 7
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %232

208:                                              ; preds = %201
  %209 = load ptr, ptr %9, align 8, !tbaa !83
  %210 = getelementptr inbounds nuw %struct.Rule, ptr %209, i32 0, i32 6
  %211 = getelementptr inbounds nuw %struct.anon.7, ptr %210, i32 0, i32 0
  %212 = load i32, ptr %211, align 8, !tbaa !95
  %213 = load ptr, ptr %8, align 8, !tbaa !8
  %214 = getelementptr inbounds nuw %struct.Elem, ptr %213, i32 0, i32 1
  %215 = load i32, ptr %214, align 4, !tbaa !94
  %216 = sub i32 %212, %215
  %217 = sub i32 %216, 1
  %218 = load ptr, ptr %7, align 8, !tbaa !58
  %219 = load ptr, ptr %9, align 8, !tbaa !83
  %220 = call ptr @new_Hint(i32 noundef signext %217, ptr noundef %218, ptr noundef %219)
  %221 = load ptr, ptr %6, align 8, !tbaa !58
  %222 = getelementptr inbounds nuw %struct.State, ptr %221, i32 0, i32 7
  %223 = getelementptr inbounds nuw %struct.VecHint, ptr %222, i32 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !99
  %225 = load ptr, ptr %6, align 8, !tbaa !58
  %226 = getelementptr inbounds nuw %struct.State, ptr %225, i32 0, i32 7
  %227 = getelementptr inbounds nuw %struct.VecHint, ptr %226, i32 0, i32 0
  %228 = load i32, ptr %227, align 8, !tbaa !100
  %229 = add i32 %228, 1
  store i32 %229, ptr %227, align 8, !tbaa !100
  %230 = zext i32 %228 to i64
  %231 = getelementptr inbounds nuw ptr, ptr %224, i64 %230
  store ptr %220, ptr %231, align 8, !tbaa !101
  br label %250

232:                                              ; preds = %201
  br label %233

233:                                              ; preds = %232, %200
  br label %234

234:                                              ; preds = %233
  %235 = load ptr, ptr %6, align 8, !tbaa !58
  %236 = getelementptr inbounds nuw %struct.State, ptr %235, i32 0, i32 7
  %237 = load ptr, ptr %9, align 8, !tbaa !83
  %238 = getelementptr inbounds nuw %struct.Rule, ptr %237, i32 0, i32 6
  %239 = getelementptr inbounds nuw %struct.anon.7, ptr %238, i32 0, i32 0
  %240 = load i32, ptr %239, align 8, !tbaa !95
  %241 = load ptr, ptr %8, align 8, !tbaa !8
  %242 = getelementptr inbounds nuw %struct.Elem, ptr %241, i32 0, i32 1
  %243 = load i32, ptr %242, align 4, !tbaa !94
  %244 = sub i32 %240, %243
  %245 = sub i32 %244, 1
  %246 = load ptr, ptr %7, align 8, !tbaa !58
  %247 = load ptr, ptr %9, align 8, !tbaa !83
  %248 = call ptr @new_Hint(i32 noundef signext %245, ptr noundef %246, ptr noundef %247)
  call void @vec_add_internal(ptr noundef %236, ptr noundef %248)
  br label %249

249:                                              ; preds = %234
  br label %250

250:                                              ; preds = %249, %208, %176, %133
  br label %252

251:                                              ; preds = %120, %117
  br label %252

252:                                              ; preds = %251, %250
  br label %253

253:                                              ; preds = %252, %33
  br label %254

254:                                              ; preds = %253, %86
  br label %255

255:                                              ; preds = %254
  %256 = load i32, ptr %4, align 4, !tbaa !50
  %257 = add nsw i32 %256, 1
  store i32 %257, ptr %4, align 4, !tbaa !50
  br label %26, !llvm.loop !103

258:                                              ; preds = %26
  %259 = load ptr, ptr %6, align 8, !tbaa !58
  %260 = getelementptr inbounds nuw %struct.State, ptr %259, i32 0, i32 7
  %261 = getelementptr inbounds nuw %struct.VecHint, ptr %260, i32 0, i32 0
  %262 = load i32, ptr %261, align 8, !tbaa !100
  %263 = icmp ugt i32 %262, 1
  br i1 %263, label %264, label %274

264:                                              ; preds = %258
  %265 = load ptr, ptr %6, align 8, !tbaa !58
  %266 = getelementptr inbounds nuw %struct.State, ptr %265, i32 0, i32 7
  %267 = getelementptr inbounds nuw %struct.VecHint, ptr %266, i32 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !99
  %269 = load ptr, ptr %6, align 8, !tbaa !58
  %270 = getelementptr inbounds nuw %struct.State, ptr %269, i32 0, i32 7
  %271 = getelementptr inbounds nuw %struct.VecHint, ptr %270, i32 0, i32 0
  %272 = load i32, ptr %271, align 8, !tbaa !100
  %273 = zext i32 %272 to i64
  call void @qsort(ptr noundef %268, i64 noundef %273, i64 noundef 8, ptr noundef @hintcmp)
  br label %274

274:                                              ; preds = %264, %258
  br label %275

275:                                              ; preds = %274
  %276 = load i32, ptr %3, align 4, !tbaa !50
  %277 = add nsw i32 %276, 1
  store i32 %277, ptr %3, align 4, !tbaa !50
  br label %10, !llvm.loop !104

278:                                              ; preds = %10
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret void
}

; Function Attrs: nounwind
define internal void @build_error_recovery(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #7
  store i32 0, ptr %3, align 4, !tbaa !50
  br label %12

12:                                               ; preds = %295, %1
  %13 = load i32, ptr %3, align 4, !tbaa !50
  %14 = load ptr, ptr %2, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.Grammar, ptr %14, i32 0, i32 3
  %16 = getelementptr inbounds nuw %struct.anon.2, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = icmp ult i32 %13, %17
  br i1 %18, label %19, label %298

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.Grammar, ptr %20, i32 0, i32 3
  %22 = getelementptr inbounds nuw %struct.anon.2, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = load i32, ptr %3, align 4, !tbaa !50
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  store ptr %27, ptr %7, align 8, !tbaa !58
  store i32 0, ptr %4, align 4, !tbaa !50
  br label %28

28:                                               ; preds = %282, %19
  %29 = load i32, ptr %4, align 4, !tbaa !50
  %30 = load ptr, ptr %7, align 8, !tbaa !58
  %31 = getelementptr inbounds nuw %struct.State, ptr %30, i32 0, i32 2
  %32 = getelementptr inbounds nuw %struct.anon.5, ptr %31, i32 0, i32 0
  %33 = load i32, ptr %32, align 8, !tbaa !87
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %35, label %285

35:                                               ; preds = %28
  %36 = load ptr, ptr %7, align 8, !tbaa !58
  %37 = getelementptr inbounds nuw %struct.State, ptr %36, i32 0, i32 2
  %38 = getelementptr inbounds nuw %struct.anon.5, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !88
  %40 = load i32, ptr %4, align 4, !tbaa !50
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !8
  %44 = getelementptr inbounds nuw %struct.Elem, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !90
  store ptr %45, ptr %8, align 8, !tbaa !83
  %46 = load ptr, ptr %8, align 8, !tbaa !83
  %47 = getelementptr inbounds nuw %struct.Rule, ptr %46, i32 0, i32 6
  %48 = getelementptr inbounds nuw %struct.anon.7, ptr %47, i32 0, i32 0
  %49 = load i32, ptr %48, align 8, !tbaa !95
  %50 = icmp ugt i32 %49, 1
  br i1 %50, label %51, label %281

51:                                               ; preds = %35
  %52 = load ptr, ptr %8, align 8, !tbaa !83
  %53 = getelementptr inbounds nuw %struct.Rule, ptr %52, i32 0, i32 6
  %54 = getelementptr inbounds nuw %struct.anon.7, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !84
  %56 = load ptr, ptr %8, align 8, !tbaa !83
  %57 = getelementptr inbounds nuw %struct.Rule, ptr %56, i32 0, i32 6
  %58 = getelementptr inbounds nuw %struct.anon.7, ptr %57, i32 0, i32 0
  %59 = load i32, ptr %58, align 8, !tbaa !95
  %60 = sub i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw ptr, ptr %55, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !8
  %64 = getelementptr inbounds nuw %struct.Elem, ptr %63, i32 0, i32 0
  %65 = load i32, ptr %64, align 8, !tbaa !10
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %281

67:                                               ; preds = %51
  %68 = load ptr, ptr %8, align 8, !tbaa !83
  %69 = getelementptr inbounds nuw %struct.Rule, ptr %68, i32 0, i32 6
  %70 = getelementptr inbounds nuw %struct.anon.7, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !84
  %72 = load ptr, ptr %8, align 8, !tbaa !83
  %73 = getelementptr inbounds nuw %struct.Rule, ptr %72, i32 0, i32 6
  %74 = getelementptr inbounds nuw %struct.anon.7, ptr %73, i32 0, i32 0
  %75 = load i32, ptr %74, align 8, !tbaa !95
  %76 = sub i32 %75, 1
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds nuw ptr, ptr %71, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !8
  %80 = getelementptr inbounds nuw %struct.Elem, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !14
  %82 = getelementptr inbounds nuw %struct.Term, ptr %81, i32 0, i32 0
  %83 = load i32, ptr %82, align 8, !tbaa !105
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %281

85:                                               ; preds = %67
  %86 = load ptr, ptr %7, align 8, !tbaa !58
  %87 = getelementptr inbounds nuw %struct.State, ptr %86, i32 0, i32 2
  %88 = getelementptr inbounds nuw %struct.anon.5, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !88
  %90 = load i32, ptr %4, align 4, !tbaa !50
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %89, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !8
  %94 = getelementptr inbounds nuw %struct.Elem, ptr %93, i32 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !94
  store i32 %95, ptr %6, align 4, !tbaa !50
  %96 = load ptr, ptr %8, align 8, !tbaa !83
  %97 = getelementptr inbounds nuw %struct.Rule, ptr %96, i32 0, i32 6
  %98 = getelementptr inbounds nuw %struct.anon.7, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !84
  %100 = load ptr, ptr %8, align 8, !tbaa !83
  %101 = getelementptr inbounds nuw %struct.Rule, ptr %100, i32 0, i32 6
  %102 = getelementptr inbounds nuw %struct.anon.7, ptr %101, i32 0, i32 0
  %103 = load i32, ptr %102, align 8, !tbaa !95
  %104 = sub i32 %103, 1
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds nuw ptr, ptr %99, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !8
  store ptr %107, ptr %10, align 8, !tbaa !8
  store i32 0, ptr %5, align 4, !tbaa !50
  br label %108

108:                                              ; preds = %188, %85
  %109 = load i32, ptr %5, align 4, !tbaa !50
  %110 = load ptr, ptr %7, align 8, !tbaa !58
  %111 = getelementptr inbounds nuw %struct.State, ptr %110, i32 0, i32 8
  %112 = getelementptr inbounds nuw %struct.VecHint, ptr %111, i32 0, i32 0
  %113 = load i32, ptr %112, align 8, !tbaa !106
  %114 = icmp ult i32 %109, %113
  br i1 %114, label %115, label %191

115:                                              ; preds = %108
  %116 = load ptr, ptr %7, align 8, !tbaa !58
  %117 = getelementptr inbounds nuw %struct.State, ptr %116, i32 0, i32 8
  %118 = getelementptr inbounds nuw %struct.VecHint, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !107
  %120 = load i32, ptr %5, align 4, !tbaa !50
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %119, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !101
  %124 = getelementptr inbounds nuw %struct.Hint, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !108
  store ptr %125, ptr %9, align 8, !tbaa !83
  %126 = load ptr, ptr %9, align 8, !tbaa !83
  %127 = getelementptr inbounds nuw %struct.Rule, ptr %126, i32 0, i32 6
  %128 = getelementptr inbounds nuw %struct.anon.7, ptr %127, i32 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !84
  %130 = load ptr, ptr %9, align 8, !tbaa !83
  %131 = getelementptr inbounds nuw %struct.Rule, ptr %130, i32 0, i32 6
  %132 = getelementptr inbounds nuw %struct.anon.7, ptr %131, i32 0, i32 0
  %133 = load i32, ptr %132, align 8, !tbaa !95
  %134 = sub i32 %133, 1
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds nuw ptr, ptr %129, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !8
  store ptr %137, ptr %11, align 8, !tbaa !8
  %138 = load ptr, ptr %10, align 8, !tbaa !8
  %139 = getelementptr inbounds nuw %struct.Elem, ptr %138, i32 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !14
  %141 = getelementptr inbounds nuw %struct.Term, ptr %140, i32 0, i32 6
  %142 = load i32, ptr %141, align 8, !tbaa !110
  %143 = load ptr, ptr %11, align 8, !tbaa !8
  %144 = getelementptr inbounds nuw %struct.Elem, ptr %143, i32 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !14
  %146 = getelementptr inbounds nuw %struct.Term, ptr %145, i32 0, i32 6
  %147 = load i32, ptr %146, align 8, !tbaa !110
  %148 = icmp eq i32 %142, %147
  br i1 %148, label %149, label %187

149:                                              ; preds = %115
  %150 = load ptr, ptr %10, align 8, !tbaa !8
  %151 = getelementptr inbounds nuw %struct.Elem, ptr %150, i32 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !14
  %153 = getelementptr inbounds nuw %struct.Term, ptr %152, i32 0, i32 5
  %154 = load ptr, ptr %153, align 8, !tbaa !111
  %155 = load ptr, ptr %11, align 8, !tbaa !8
  %156 = getelementptr inbounds nuw %struct.Elem, ptr %155, i32 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !14
  %158 = getelementptr inbounds nuw %struct.Term, ptr %157, i32 0, i32 5
  %159 = load ptr, ptr %158, align 8, !tbaa !111
  %160 = call signext i32 @strcmp(ptr noundef %154, ptr noundef %159) #8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %187, label %162

162:                                              ; preds = %149
  %163 = load ptr, ptr %7, align 8, !tbaa !58
  %164 = getelementptr inbounds nuw %struct.State, ptr %163, i32 0, i32 8
  %165 = getelementptr inbounds nuw %struct.VecHint, ptr %164, i32 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !107
  %167 = load i32, ptr %5, align 4, !tbaa !50
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %166, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !101
  %171 = getelementptr inbounds nuw %struct.Hint, ptr %170, i32 0, i32 0
  %172 = load i32, ptr %171, align 8, !tbaa !112
  %173 = load i32, ptr %6, align 4, !tbaa !50
  %174 = icmp ugt i32 %172, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %162
  %176 = load i32, ptr %6, align 4, !tbaa !50
  %177 = load ptr, ptr %7, align 8, !tbaa !58
  %178 = getelementptr inbounds nuw %struct.State, ptr %177, i32 0, i32 8
  %179 = getelementptr inbounds nuw %struct.VecHint, ptr %178, i32 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !107
  %181 = load i32, ptr %5, align 4, !tbaa !50
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds ptr, ptr %180, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !101
  %185 = getelementptr inbounds nuw %struct.Hint, ptr %184, i32 0, i32 0
  store i32 %176, ptr %185, align 8, !tbaa !112
  br label %186

186:                                              ; preds = %175, %162
  br label %280

187:                                              ; preds = %149, %115
  br label %188

188:                                              ; preds = %187
  %189 = load i32, ptr %5, align 4, !tbaa !50
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %5, align 4, !tbaa !50
  br label %108, !llvm.loop !113

191:                                              ; preds = %108
  br label %192

192:                                              ; preds = %191
  %193 = load ptr, ptr %7, align 8, !tbaa !58
  %194 = getelementptr inbounds nuw %struct.State, ptr %193, i32 0, i32 8
  %195 = getelementptr inbounds nuw %struct.VecHint, ptr %194, i32 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !107
  %197 = icmp ne ptr %196, null
  br i1 %197, label %216, label %198

198:                                              ; preds = %192
  %199 = load i32, ptr %6, align 4, !tbaa !50
  %200 = load ptr, ptr %8, align 8, !tbaa !83
  %201 = call ptr @new_Hint(i32 noundef signext %199, ptr noundef null, ptr noundef %200)
  %202 = load ptr, ptr %7, align 8, !tbaa !58
  %203 = getelementptr inbounds nuw %struct.State, ptr %202, i32 0, i32 8
  %204 = getelementptr inbounds nuw %struct.VecHint, ptr %203, i32 0, i32 3
  %205 = getelementptr inbounds [3 x ptr], ptr %204, i64 0, i64 0
  %206 = load ptr, ptr %7, align 8, !tbaa !58
  %207 = getelementptr inbounds nuw %struct.State, ptr %206, i32 0, i32 8
  %208 = getelementptr inbounds nuw %struct.VecHint, ptr %207, i32 0, i32 2
  store ptr %205, ptr %208, align 8, !tbaa !107
  %209 = load ptr, ptr %7, align 8, !tbaa !58
  %210 = getelementptr inbounds nuw %struct.State, ptr %209, i32 0, i32 8
  %211 = getelementptr inbounds nuw %struct.VecHint, ptr %210, i32 0, i32 0
  %212 = load i32, ptr %211, align 8, !tbaa !106
  %213 = add i32 %212, 1
  store i32 %213, ptr %211, align 8, !tbaa !106
  %214 = zext i32 %212 to i64
  %215 = getelementptr inbounds nuw ptr, ptr %205, i64 %214
  store ptr %201, ptr %215, align 8, !tbaa !101
  br label %279

216:                                              ; preds = %192
  %217 = load ptr, ptr %7, align 8, !tbaa !58
  %218 = getelementptr inbounds nuw %struct.State, ptr %217, i32 0, i32 8
  %219 = getelementptr inbounds nuw %struct.VecHint, ptr %218, i32 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !107
  %221 = load ptr, ptr %7, align 8, !tbaa !58
  %222 = getelementptr inbounds nuw %struct.State, ptr %221, i32 0, i32 8
  %223 = getelementptr inbounds nuw %struct.VecHint, ptr %222, i32 0, i32 3
  %224 = getelementptr inbounds [3 x ptr], ptr %223, i64 0, i64 0
  %225 = icmp eq ptr %220, %224
  br i1 %225, label %226, label %248

226:                                              ; preds = %216
  %227 = load ptr, ptr %7, align 8, !tbaa !58
  %228 = getelementptr inbounds nuw %struct.State, ptr %227, i32 0, i32 8
  %229 = getelementptr inbounds nuw %struct.VecHint, ptr %228, i32 0, i32 0
  %230 = load i32, ptr %229, align 8, !tbaa !106
  %231 = icmp ult i32 %230, 3
  br i1 %231, label %232, label %247

232:                                              ; preds = %226
  %233 = load i32, ptr %6, align 4, !tbaa !50
  %234 = load ptr, ptr %8, align 8, !tbaa !83
  %235 = call ptr @new_Hint(i32 noundef signext %233, ptr noundef null, ptr noundef %234)
  %236 = load ptr, ptr %7, align 8, !tbaa !58
  %237 = getelementptr inbounds nuw %struct.State, ptr %236, i32 0, i32 8
  %238 = getelementptr inbounds nuw %struct.VecHint, ptr %237, i32 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !107
  %240 = load ptr, ptr %7, align 8, !tbaa !58
  %241 = getelementptr inbounds nuw %struct.State, ptr %240, i32 0, i32 8
  %242 = getelementptr inbounds nuw %struct.VecHint, ptr %241, i32 0, i32 0
  %243 = load i32, ptr %242, align 8, !tbaa !106
  %244 = add i32 %243, 1
  store i32 %244, ptr %242, align 8, !tbaa !106
  %245 = zext i32 %243 to i64
  %246 = getelementptr inbounds nuw ptr, ptr %239, i64 %245
  store ptr %235, ptr %246, align 8, !tbaa !101
  br label %279

247:                                              ; preds = %226
  br label %271

248:                                              ; preds = %216
  %249 = load ptr, ptr %7, align 8, !tbaa !58
  %250 = getelementptr inbounds nuw %struct.State, ptr %249, i32 0, i32 8
  %251 = getelementptr inbounds nuw %struct.VecHint, ptr %250, i32 0, i32 0
  %252 = load i32, ptr %251, align 8, !tbaa !106
  %253 = and i32 %252, 7
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %270

255:                                              ; preds = %248
  %256 = load i32, ptr %6, align 4, !tbaa !50
  %257 = load ptr, ptr %8, align 8, !tbaa !83
  %258 = call ptr @new_Hint(i32 noundef signext %256, ptr noundef null, ptr noundef %257)
  %259 = load ptr, ptr %7, align 8, !tbaa !58
  %260 = getelementptr inbounds nuw %struct.State, ptr %259, i32 0, i32 8
  %261 = getelementptr inbounds nuw %struct.VecHint, ptr %260, i32 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !107
  %263 = load ptr, ptr %7, align 8, !tbaa !58
  %264 = getelementptr inbounds nuw %struct.State, ptr %263, i32 0, i32 8
  %265 = getelementptr inbounds nuw %struct.VecHint, ptr %264, i32 0, i32 0
  %266 = load i32, ptr %265, align 8, !tbaa !106
  %267 = add i32 %266, 1
  store i32 %267, ptr %265, align 8, !tbaa !106
  %268 = zext i32 %266 to i64
  %269 = getelementptr inbounds nuw ptr, ptr %262, i64 %268
  store ptr %258, ptr %269, align 8, !tbaa !101
  br label %279

270:                                              ; preds = %248
  br label %271

271:                                              ; preds = %270, %247
  br label %272

272:                                              ; preds = %271
  %273 = load ptr, ptr %7, align 8, !tbaa !58
  %274 = getelementptr inbounds nuw %struct.State, ptr %273, i32 0, i32 8
  %275 = load i32, ptr %6, align 4, !tbaa !50
  %276 = load ptr, ptr %8, align 8, !tbaa !83
  %277 = call ptr @new_Hint(i32 noundef signext %275, ptr noundef null, ptr noundef %276)
  call void @vec_add_internal(ptr noundef %274, ptr noundef %277)
  br label %278

278:                                              ; preds = %272
  br label %279

279:                                              ; preds = %278, %255, %232, %198
  br label %280

280:                                              ; preds = %279, %186
  br label %281

281:                                              ; preds = %280, %67, %51, %35
  br label %282

282:                                              ; preds = %281
  %283 = load i32, ptr %4, align 4, !tbaa !50
  %284 = add nsw i32 %283, 1
  store i32 %284, ptr %4, align 4, !tbaa !50
  br label %28, !llvm.loop !114

285:                                              ; preds = %28
  %286 = load ptr, ptr %7, align 8, !tbaa !58
  %287 = getelementptr inbounds nuw %struct.State, ptr %286, i32 0, i32 8
  %288 = getelementptr inbounds nuw %struct.VecHint, ptr %287, i32 0, i32 2
  %289 = load ptr, ptr %288, align 8, !tbaa !107
  %290 = load ptr, ptr %7, align 8, !tbaa !58
  %291 = getelementptr inbounds nuw %struct.State, ptr %290, i32 0, i32 8
  %292 = getelementptr inbounds nuw %struct.VecHint, ptr %291, i32 0, i32 0
  %293 = load i32, ptr %292, align 8, !tbaa !106
  %294 = zext i32 %293 to i64
  call void @qsort(ptr noundef %289, i64 noundef %294, i64 noundef 8, ptr noundef @hintcmp)
  br label %295

295:                                              ; preds = %285
  %296 = load i32, ptr %3, align 4, !tbaa !50
  %297 = add nsw i32 %296, 1
  store i32 %297, ptr %3, align 4, !tbaa !50
  br label %12, !llvm.loop !115

298:                                              ; preds = %12
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret void
}

; Function Attrs: nounwind
define internal signext i32 @insert_item(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !58
  store ptr %1, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  %8 = load ptr, ptr %5, align 8, !tbaa !8
  store ptr %8, ptr %6, align 8, !tbaa !8
  %9 = load ptr, ptr %4, align 8, !tbaa !58
  %10 = getelementptr inbounds nuw %struct.State, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %6, align 8, !tbaa !8
  %12 = call signext i32 @set_add(ptr noundef %10, ptr noundef %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %95

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr %4, align 8, !tbaa !58
  %17 = getelementptr inbounds nuw %struct.State, ptr %16, i32 0, i32 2
  %18 = getelementptr inbounds nuw %struct.anon.5, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = icmp ne ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %6, align 8, !tbaa !8
  %23 = load ptr, ptr %4, align 8, !tbaa !58
  %24 = getelementptr inbounds nuw %struct.State, ptr %23, i32 0, i32 2
  %25 = getelementptr inbounds nuw %struct.anon.5, ptr %24, i32 0, i32 3
  %26 = getelementptr inbounds [3 x ptr], ptr %25, i64 0, i64 0
  %27 = load ptr, ptr %4, align 8, !tbaa !58
  %28 = getelementptr inbounds nuw %struct.State, ptr %27, i32 0, i32 2
  %29 = getelementptr inbounds nuw %struct.anon.5, ptr %28, i32 0, i32 2
  store ptr %26, ptr %29, align 8, !tbaa !88
  %30 = load ptr, ptr %4, align 8, !tbaa !58
  %31 = getelementptr inbounds nuw %struct.State, ptr %30, i32 0, i32 2
  %32 = getelementptr inbounds nuw %struct.anon.5, ptr %31, i32 0, i32 0
  %33 = load i32, ptr %32, align 8, !tbaa !87
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !87
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds nuw ptr, ptr %26, i64 %35
  store ptr %22, ptr %36, align 8, !tbaa !8
  br label %94

37:                                               ; preds = %15
  %38 = load ptr, ptr %4, align 8, !tbaa !58
  %39 = getelementptr inbounds nuw %struct.State, ptr %38, i32 0, i32 2
  %40 = getelementptr inbounds nuw %struct.anon.5, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !88
  %42 = load ptr, ptr %4, align 8, !tbaa !58
  %43 = getelementptr inbounds nuw %struct.State, ptr %42, i32 0, i32 2
  %44 = getelementptr inbounds nuw %struct.anon.5, ptr %43, i32 0, i32 3
  %45 = getelementptr inbounds [3 x ptr], ptr %44, i64 0, i64 0
  %46 = icmp eq ptr %41, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %37
  %48 = load ptr, ptr %4, align 8, !tbaa !58
  %49 = getelementptr inbounds nuw %struct.State, ptr %48, i32 0, i32 2
  %50 = getelementptr inbounds nuw %struct.anon.5, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8, !tbaa !87
  %52 = icmp ult i32 %51, 3
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load ptr, ptr %6, align 8, !tbaa !8
  %55 = load ptr, ptr %4, align 8, !tbaa !58
  %56 = getelementptr inbounds nuw %struct.State, ptr %55, i32 0, i32 2
  %57 = getelementptr inbounds nuw %struct.anon.5, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !88
  %59 = load ptr, ptr %4, align 8, !tbaa !58
  %60 = getelementptr inbounds nuw %struct.State, ptr %59, i32 0, i32 2
  %61 = getelementptr inbounds nuw %struct.anon.5, ptr %60, i32 0, i32 0
  %62 = load i32, ptr %61, align 8, !tbaa !87
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 8, !tbaa !87
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds nuw ptr, ptr %58, i64 %64
  store ptr %54, ptr %65, align 8, !tbaa !8
  br label %94

66:                                               ; preds = %47
  br label %88

67:                                               ; preds = %37
  %68 = load ptr, ptr %4, align 8, !tbaa !58
  %69 = getelementptr inbounds nuw %struct.State, ptr %68, i32 0, i32 2
  %70 = getelementptr inbounds nuw %struct.anon.5, ptr %69, i32 0, i32 0
  %71 = load i32, ptr %70, align 8, !tbaa !87
  %72 = and i32 %71, 7
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load ptr, ptr %6, align 8, !tbaa !8
  %76 = load ptr, ptr %4, align 8, !tbaa !58
  %77 = getelementptr inbounds nuw %struct.State, ptr %76, i32 0, i32 2
  %78 = getelementptr inbounds nuw %struct.anon.5, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !88
  %80 = load ptr, ptr %4, align 8, !tbaa !58
  %81 = getelementptr inbounds nuw %struct.State, ptr %80, i32 0, i32 2
  %82 = getelementptr inbounds nuw %struct.anon.5, ptr %81, i32 0, i32 0
  %83 = load i32, ptr %82, align 8, !tbaa !87
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 8, !tbaa !87
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds nuw ptr, ptr %79, i64 %85
  store ptr %75, ptr %86, align 8, !tbaa !8
  br label %94

87:                                               ; preds = %67
  br label %88

88:                                               ; preds = %87, %66
  br label %89

89:                                               ; preds = %88
  %90 = load ptr, ptr %4, align 8, !tbaa !58
  %91 = getelementptr inbounds nuw %struct.State, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %6, align 8, !tbaa !8
  call void @vec_add_internal(ptr noundef %91, ptr noundef %92)
  br label %93

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %74, %53, %21
  store i32 1, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %96

95:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %96

96:                                               ; preds = %95, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  %97 = load i32, ptr %3, align 4
  ret i32 %97
}

; Function Attrs: nounwind
define internal ptr @build_closure(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  store i32 0, ptr %5, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %91, %2
  %11 = load i32, ptr %5, align 4, !tbaa !50
  %12 = load ptr, ptr %4, align 8, !tbaa !58
  %13 = getelementptr inbounds nuw %struct.State, ptr %12, i32 0, i32 2
  %14 = getelementptr inbounds nuw %struct.anon.5, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8, !tbaa !87
  %16 = icmp ult i32 %11, %15
  br i1 %16, label %17, label %94

17:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  %18 = load ptr, ptr %4, align 8, !tbaa !58
  %19 = getelementptr inbounds nuw %struct.State, ptr %18, i32 0, i32 2
  %20 = getelementptr inbounds nuw %struct.anon.5, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  %22 = load i32, ptr %5, align 4, !tbaa !50
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !8
  store ptr %25, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #7
  %26 = load ptr, ptr %7, align 8, !tbaa !8
  store ptr %26, ptr %8, align 8, !tbaa !8
  %27 = load ptr, ptr %8, align 8, !tbaa !8
  %28 = getelementptr inbounds nuw %struct.Elem, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %90

31:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #7
  %32 = load ptr, ptr %8, align 8, !tbaa !8
  %33 = getelementptr inbounds nuw %struct.Elem, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  store ptr %34, ptr %9, align 8, !tbaa !81
  store i32 0, ptr %6, align 4, !tbaa !50
  br label %35

35:                                               ; preds = %86, %31
  %36 = load i32, ptr %6, align 4, !tbaa !50
  %37 = load ptr, ptr %8, align 8, !tbaa !8
  %38 = getelementptr inbounds nuw %struct.Elem, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !14
  %40 = getelementptr inbounds nuw %struct.Production, ptr %39, i32 0, i32 2
  %41 = getelementptr inbounds nuw %struct.anon, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 8, !tbaa !116
  %43 = icmp ult i32 %36, %42
  br i1 %43, label %44, label %89

44:                                               ; preds = %35
  %45 = load ptr, ptr %4, align 8, !tbaa !58
  %46 = load ptr, ptr %9, align 8, !tbaa !81
  %47 = getelementptr inbounds nuw %struct.Production, ptr %46, i32 0, i32 2
  %48 = getelementptr inbounds nuw %struct.anon, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !82
  %50 = load i32, ptr %6, align 4, !tbaa !50
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !83
  %54 = getelementptr inbounds nuw %struct.Rule, ptr %53, i32 0, i32 6
  %55 = getelementptr inbounds nuw %struct.anon.7, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !84
  %57 = icmp ne ptr %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %44
  %59 = load ptr, ptr %9, align 8, !tbaa !81
  %60 = getelementptr inbounds nuw %struct.Production, ptr %59, i32 0, i32 2
  %61 = getelementptr inbounds nuw %struct.anon, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !82
  %63 = load i32, ptr %6, align 4, !tbaa !50
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds ptr, ptr %62, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !83
  %67 = getelementptr inbounds nuw %struct.Rule, ptr %66, i32 0, i32 6
  %68 = getelementptr inbounds nuw %struct.anon.7, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !84
  %70 = getelementptr inbounds ptr, ptr %69, i64 0
  %71 = load ptr, ptr %70, align 8, !tbaa !8
  br label %83

72:                                               ; preds = %44
  %73 = load ptr, ptr %9, align 8, !tbaa !81
  %74 = getelementptr inbounds nuw %struct.Production, ptr %73, i32 0, i32 2
  %75 = getelementptr inbounds nuw %struct.anon, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !82
  %77 = load i32, ptr %6, align 4, !tbaa !50
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %76, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !83
  %81 = getelementptr inbounds nuw %struct.Rule, ptr %80, i32 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !117
  br label %83

83:                                               ; preds = %72, %58
  %84 = phi ptr [ %71, %58 ], [ %82, %72 ]
  %85 = call signext i32 @insert_item(ptr noundef %45, ptr noundef %84)
  br label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %6, align 4, !tbaa !50
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %6, align 4, !tbaa !50
  br label %35, !llvm.loop !118

89:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #7
  br label %90

90:                                               ; preds = %89, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  br label %91

91:                                               ; preds = %90
  %92 = load i32, ptr %5, align 4, !tbaa !50
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %5, align 4, !tbaa !50
  br label %10, !llvm.loop !119

94:                                               ; preds = %10
  %95 = load ptr, ptr %4, align 8, !tbaa !58
  %96 = getelementptr inbounds nuw %struct.State, ptr %95, i32 0, i32 2
  %97 = getelementptr inbounds nuw %struct.anon.5, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !88
  %99 = load ptr, ptr %4, align 8, !tbaa !58
  %100 = getelementptr inbounds nuw %struct.State, ptr %99, i32 0, i32 2
  %101 = getelementptr inbounds nuw %struct.anon.5, ptr %100, i32 0, i32 0
  %102 = load i32, ptr %101, align 8, !tbaa !87
  %103 = zext i32 %102 to i64
  call void @qsort(ptr noundef %98, i64 noundef %103, i64 noundef 8, ptr noundef @itemcmp)
  %104 = load ptr, ptr %4, align 8, !tbaa !58
  %105 = getelementptr inbounds nuw %struct.State, ptr %104, i32 0, i32 1
  store i64 0, ptr %105, align 8, !tbaa !120
  store i32 0, ptr %5, align 4, !tbaa !50
  br label %106

106:                                              ; preds = %171, %94
  %107 = load i32, ptr %5, align 4, !tbaa !50
  %108 = load ptr, ptr %4, align 8, !tbaa !58
  %109 = getelementptr inbounds nuw %struct.State, ptr %108, i32 0, i32 2
  %110 = getelementptr inbounds nuw %struct.anon.5, ptr %109, i32 0, i32 0
  %111 = load i32, ptr %110, align 8, !tbaa !87
  %112 = icmp ult i32 %107, %111
  br i1 %112, label %113, label %174

113:                                              ; preds = %106
  %114 = load ptr, ptr %4, align 8, !tbaa !58
  %115 = getelementptr inbounds nuw %struct.State, ptr %114, i32 0, i32 2
  %116 = getelementptr inbounds nuw %struct.anon.5, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !88
  %118 = load i32, ptr %5, align 4, !tbaa !50
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds ptr, ptr %117, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !8
  %122 = getelementptr inbounds nuw %struct.Elem, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !90
  %124 = getelementptr inbounds nuw %struct.Rule, ptr %123, i32 0, i32 0
  %125 = load i32, ptr %124, align 8, !tbaa !52
  %126 = shl i32 %125, 8
  %127 = load ptr, ptr %4, align 8, !tbaa !58
  %128 = getelementptr inbounds nuw %struct.State, ptr %127, i32 0, i32 2
  %129 = getelementptr inbounds nuw %struct.anon.5, ptr %128, i32 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !88
  %131 = load i32, ptr %5, align 4, !tbaa !50
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds ptr, ptr %130, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !8
  %135 = getelementptr inbounds nuw %struct.Elem, ptr %134, i32 0, i32 0
  %136 = load i32, ptr %135, align 8, !tbaa !10
  %137 = icmp ne i32 %136, 3
  br i1 %137, label %138, label %149

138:                                              ; preds = %113
  %139 = load ptr, ptr %4, align 8, !tbaa !58
  %140 = getelementptr inbounds nuw %struct.State, ptr %139, i32 0, i32 2
  %141 = getelementptr inbounds nuw %struct.anon.5, ptr %140, i32 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !88
  %143 = load i32, ptr %5, align 4, !tbaa !50
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds ptr, ptr %142, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !8
  %147 = getelementptr inbounds nuw %struct.Elem, ptr %146, i32 0, i32 1
  %148 = load i32, ptr %147, align 4, !tbaa !94
  br label %163

149:                                              ; preds = %113
  %150 = load ptr, ptr %4, align 8, !tbaa !58
  %151 = getelementptr inbounds nuw %struct.State, ptr %150, i32 0, i32 2
  %152 = getelementptr inbounds nuw %struct.anon.5, ptr %151, i32 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !88
  %154 = load i32, ptr %5, align 4, !tbaa !50
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds ptr, ptr %153, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !8
  %158 = getelementptr inbounds nuw %struct.Elem, ptr %157, i32 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !90
  %160 = getelementptr inbounds nuw %struct.Rule, ptr %159, i32 0, i32 6
  %161 = getelementptr inbounds nuw %struct.anon.7, ptr %160, i32 0, i32 0
  %162 = load i32, ptr %161, align 8, !tbaa !95
  br label %163

163:                                              ; preds = %149, %138
  %164 = phi i32 [ %148, %138 ], [ %162, %149 ]
  %165 = add i32 %126, %164
  %166 = zext i32 %165 to i64
  %167 = load ptr, ptr %4, align 8, !tbaa !58
  %168 = getelementptr inbounds nuw %struct.State, ptr %167, i32 0, i32 1
  %169 = load i64, ptr %168, align 8, !tbaa !120
  %170 = add i64 %169, %166
  store i64 %170, ptr %168, align 8, !tbaa !120
  br label %171

171:                                              ; preds = %163
  %172 = load i32, ptr %5, align 4, !tbaa !50
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %5, align 4, !tbaa !50
  br label %106, !llvm.loop !121

174:                                              ; preds = %106
  %175 = load ptr, ptr %3, align 8, !tbaa !3
  %176 = load ptr, ptr %4, align 8, !tbaa !58
  %177 = call ptr @maybe_add_state(ptr noundef %175, ptr noundef %176)
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  ret ptr %177
}

; Function Attrs: nounwind
define internal void @build_states_for_each_production(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  store i32 0, ptr %3, align 4, !tbaa !50
  br label %5

5:                                                ; preds = %66, %1
  %6 = load i32, ptr %3, align 4, !tbaa !50
  %7 = load ptr, ptr %2, align 8, !tbaa !3
  %8 = getelementptr inbounds nuw %struct.Grammar, ptr %7, i32 0, i32 1
  %9 = getelementptr inbounds nuw %struct.anon.0, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8, !tbaa !24
  %11 = icmp ult i32 %6, %10
  br i1 %11, label %12, label %69

12:                                               ; preds = %5
  %13 = load ptr, ptr %2, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.Grammar, ptr %13, i32 0, i32 1
  %15 = getelementptr inbounds nuw %struct.anon.0, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !80
  %17 = load i32, ptr %3, align 4, !tbaa !50
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  %21 = getelementptr inbounds nuw %struct.Production, ptr %20, i32 0, i32 4
  %22 = load i8, ptr %21, align 4
  %23 = lshr i8 %22, 2
  %24 = and i8 %23, 7
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %65, label %27

27:                                               ; preds = %12
  %28 = load ptr, ptr %2, align 8, !tbaa !3
  %29 = getelementptr inbounds nuw %struct.Grammar, ptr %28, i32 0, i32 1
  %30 = getelementptr inbounds nuw %struct.anon.0, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !80
  %32 = load i32, ptr %3, align 4, !tbaa !50
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !81
  %36 = getelementptr inbounds nuw %struct.Production, ptr %35, i32 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !122
  %38 = icmp ne ptr %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #7
  %40 = call ptr @new_state()
  store ptr %40, ptr %4, align 8, !tbaa !58
  %41 = load ptr, ptr %4, align 8, !tbaa !58
  %42 = load ptr, ptr %2, align 8, !tbaa !3
  %43 = getelementptr inbounds nuw %struct.Grammar, ptr %42, i32 0, i32 1
  %44 = getelementptr inbounds nuw %struct.anon.0, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !80
  %46 = load i32, ptr %3, align 4, !tbaa !50
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !81
  %50 = getelementptr inbounds nuw %struct.Production, ptr %49, i32 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !122
  %52 = call signext i32 @insert_item(ptr noundef %41, ptr noundef %51)
  %53 = load ptr, ptr %2, align 8, !tbaa !3
  %54 = load ptr, ptr %4, align 8, !tbaa !58
  %55 = call ptr @build_closure(ptr noundef %53, ptr noundef %54)
  %56 = load ptr, ptr %2, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.Grammar, ptr %56, i32 0, i32 1
  %58 = getelementptr inbounds nuw %struct.anon.0, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !80
  %60 = load i32, ptr %3, align 4, !tbaa !50
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %59, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !81
  %64 = getelementptr inbounds nuw %struct.Production, ptr %63, i32 0, i32 8
  store ptr %55, ptr %64, align 8, !tbaa !123
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #7
  br label %65

65:                                               ; preds = %39, %27, %12
  br label %66

66:                                               ; preds = %65
  %67 = load i32, ptr %3, align 4, !tbaa !50
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %3, align 4, !tbaa !50
  br label %5, !llvm.loop !124

69:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret void
}

; Function Attrs: nounwind
define internal void @build_new_states(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %struct.Elem, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr %6) #7
  store i32 0, ptr %3, align 4, !tbaa !50
  br label %7

7:                                                ; preds = %71, %1
  %8 = load i32, ptr %3, align 4, !tbaa !50
  %9 = load ptr, ptr %2, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.Grammar, ptr %9, i32 0, i32 3
  %11 = getelementptr inbounds nuw %struct.anon.2, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8, !tbaa !85
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %74

14:                                               ; preds = %7
  %15 = load ptr, ptr %2, align 8, !tbaa !3
  %16 = getelementptr inbounds nuw %struct.Grammar, ptr %15, i32 0, i32 3
  %17 = getelementptr inbounds nuw %struct.anon.2, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = load i32, ptr %3, align 4, !tbaa !50
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  store ptr %22, ptr %5, align 8, !tbaa !58
  store i32 0, ptr %4, align 4, !tbaa !50
  br label %23

23:                                               ; preds = %43, %14
  %24 = load i32, ptr %4, align 4, !tbaa !50
  %25 = load ptr, ptr %2, align 8, !tbaa !3
  %26 = getelementptr inbounds nuw %struct.Grammar, ptr %25, i32 0, i32 2
  %27 = getelementptr inbounds nuw %struct.anon.1, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8, !tbaa !125
  %29 = icmp ult i32 %24, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = getelementptr inbounds nuw %struct.Elem, ptr %6, i32 0, i32 0
  store i32 1, ptr %31, align 8, !tbaa !10
  %32 = load ptr, ptr %2, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.Grammar, ptr %32, i32 0, i32 2
  %34 = getelementptr inbounds nuw %struct.anon.1, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !126
  %36 = load i32, ptr %4, align 4, !tbaa !50
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !127
  %40 = getelementptr inbounds nuw %struct.Elem, ptr %6, i32 0, i32 3
  store ptr %39, ptr %40, align 8, !tbaa !14
  %41 = load ptr, ptr %2, align 8, !tbaa !3
  %42 = load ptr, ptr %5, align 8, !tbaa !58
  call void @build_state_for(ptr noundef %41, ptr noundef %42, ptr noundef %6)
  br label %43

43:                                               ; preds = %30
  %44 = load i32, ptr %4, align 4, !tbaa !50
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %4, align 4, !tbaa !50
  br label %23, !llvm.loop !128

46:                                               ; preds = %23
  store i32 0, ptr %4, align 4, !tbaa !50
  br label %47

47:                                               ; preds = %67, %46
  %48 = load i32, ptr %4, align 4, !tbaa !50
  %49 = load ptr, ptr %2, align 8, !tbaa !3
  %50 = getelementptr inbounds nuw %struct.Grammar, ptr %49, i32 0, i32 1
  %51 = getelementptr inbounds nuw %struct.anon.0, ptr %50, i32 0, i32 0
  %52 = load i32, ptr %51, align 8, !tbaa !24
  %53 = icmp ult i32 %48, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = getelementptr inbounds nuw %struct.Elem, ptr %6, i32 0, i32 0
  store i32 0, ptr %55, align 8, !tbaa !10
  %56 = load ptr, ptr %2, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.Grammar, ptr %56, i32 0, i32 1
  %58 = getelementptr inbounds nuw %struct.anon.0, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !80
  %60 = load i32, ptr %4, align 4, !tbaa !50
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %59, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !81
  %64 = getelementptr inbounds nuw %struct.Elem, ptr %6, i32 0, i32 3
  store ptr %63, ptr %64, align 8, !tbaa !14
  %65 = load ptr, ptr %2, align 8, !tbaa !3
  %66 = load ptr, ptr %5, align 8, !tbaa !58
  call void @build_state_for(ptr noundef %65, ptr noundef %66, ptr noundef %6)
  br label %67

67:                                               ; preds = %54
  %68 = load i32, ptr %4, align 4, !tbaa !50
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %4, align 4, !tbaa !50
  br label %47, !llvm.loop !129

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70
  %72 = load i32, ptr %3, align 4, !tbaa !50
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %3, align 4, !tbaa !50
  br label %7, !llvm.loop !130

74:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 32, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret void
}

; Function Attrs: nounwind
define internal void @sort_Gotos(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  store i32 0, ptr %3, align 4, !tbaa !50
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, ptr %3, align 4, !tbaa !50
  %7 = load ptr, ptr %2, align 8, !tbaa !3
  %8 = getelementptr inbounds nuw %struct.Grammar, ptr %7, i32 0, i32 3
  %9 = getelementptr inbounds nuw %struct.anon.2, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8, !tbaa !85
  %11 = icmp ult i32 %6, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #7
  %13 = load ptr, ptr %2, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.Grammar, ptr %13, i32 0, i32 3
  %15 = getelementptr inbounds nuw %struct.anon.2, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = load i32, ptr %3, align 4, !tbaa !50
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = getelementptr inbounds nuw %struct.State, ptr %20, i32 0, i32 4
  store ptr %21, ptr %4, align 8, !tbaa !40
  %22 = load ptr, ptr %4, align 8, !tbaa !40
  %23 = getelementptr inbounds nuw %struct.VecGoto, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !131
  %25 = load ptr, ptr %4, align 8, !tbaa !40
  %26 = getelementptr inbounds nuw %struct.VecGoto, ptr %25, i32 0, i32 0
  %27 = load i32, ptr %26, align 8, !tbaa !132
  %28 = zext i32 %27 to i64
  call void @qsort(ptr noundef %24, i64 noundef %28, i64 noundef 8, ptr noundef @gotocmp)
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #7
  br label %29

29:                                               ; preds = %12
  %30 = load i32, ptr %3, align 4, !tbaa !50
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %3, align 4, !tbaa !50
  br label %5, !llvm.loop !133

32:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret void
}

; Function Attrs: nounwind
define internal ptr @new_state() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #7
  %2 = call noalias ptr @malloc(i64 noundef 432) #9
  store ptr %2, ptr %1, align 8, !tbaa !58
  %3 = load ptr, ptr %1, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 432, i1 false)
  %4 = load ptr, ptr %1, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #7
  ret ptr %4
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare signext i32 @set_add(ptr noundef, ptr noundef) #1

declare void @vec_add_internal(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define internal signext i32 @itemcmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !40
  store ptr %1, ptr %4, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  %7 = load ptr, ptr %3, align 8, !tbaa !40
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw %struct.Elem, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = getelementptr inbounds nuw %struct.Rule, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8, !tbaa !52
  %13 = shl i32 %12, 8
  %14 = load ptr, ptr %3, align 8, !tbaa !40
  %15 = load ptr, ptr %14, align 8, !tbaa !8
  %16 = getelementptr inbounds nuw %struct.Elem, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8, !tbaa !10
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load ptr, ptr %3, align 8, !tbaa !40
  %21 = load ptr, ptr %20, align 8, !tbaa !8
  %22 = getelementptr inbounds nuw %struct.Elem, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !94
  br label %32

24:                                               ; preds = %2
  %25 = load ptr, ptr %3, align 8, !tbaa !40
  %26 = load ptr, ptr %25, align 8, !tbaa !8
  %27 = getelementptr inbounds nuw %struct.Elem, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !90
  %29 = getelementptr inbounds nuw %struct.Rule, ptr %28, i32 0, i32 6
  %30 = getelementptr inbounds nuw %struct.anon.7, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %30, align 8, !tbaa !95
  br label %32

32:                                               ; preds = %24, %19
  %33 = phi i32 [ %23, %19 ], [ %31, %24 ]
  %34 = add i32 %13, %33
  store i32 %34, ptr %5, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  %35 = load ptr, ptr %4, align 8, !tbaa !40
  %36 = load ptr, ptr %35, align 8, !tbaa !8
  %37 = getelementptr inbounds nuw %struct.Elem, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !90
  %39 = getelementptr inbounds nuw %struct.Rule, ptr %38, i32 0, i32 0
  %40 = load i32, ptr %39, align 8, !tbaa !52
  %41 = shl i32 %40, 8
  %42 = load ptr, ptr %4, align 8, !tbaa !40
  %43 = load ptr, ptr %42, align 8, !tbaa !8
  %44 = getelementptr inbounds nuw %struct.Elem, ptr %43, i32 0, i32 0
  %45 = load i32, ptr %44, align 8, !tbaa !10
  %46 = icmp ne i32 %45, 3
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load ptr, ptr %4, align 8, !tbaa !40
  %49 = load ptr, ptr %48, align 8, !tbaa !8
  %50 = getelementptr inbounds nuw %struct.Elem, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !94
  br label %60

52:                                               ; preds = %32
  %53 = load ptr, ptr %4, align 8, !tbaa !40
  %54 = load ptr, ptr %53, align 8, !tbaa !8
  %55 = getelementptr inbounds nuw %struct.Elem, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !90
  %57 = getelementptr inbounds nuw %struct.Rule, ptr %56, i32 0, i32 6
  %58 = getelementptr inbounds nuw %struct.anon.7, ptr %57, i32 0, i32 0
  %59 = load i32, ptr %58, align 8, !tbaa !95
  br label %60

60:                                               ; preds = %52, %47
  %61 = phi i32 [ %51, %47 ], [ %59, %52 ]
  %62 = add i32 %41, %61
  store i32 %62, ptr %6, align 4, !tbaa !50
  %63 = load i32, ptr %5, align 4, !tbaa !50
  %64 = load i32, ptr %6, align 4, !tbaa !50
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %73

67:                                               ; preds = %60
  %68 = load i32, ptr %5, align 4, !tbaa !50
  %69 = load i32, ptr %6, align 4, !tbaa !50
  %70 = icmp ult i32 %68, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 -1, i32 0
  br label %73

73:                                               ; preds = %67, %66
  %74 = phi i32 [ 1, %66 ], [ %72, %67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  ret i32 %74
}

; Function Attrs: nounwind
define internal ptr @maybe_add_state(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  store i32 0, ptr %6, align 4, !tbaa !50
  br label %9

9:                                                ; preds = %98, %2
  %10 = load i32, ptr %6, align 4, !tbaa !50
  %11 = load ptr, ptr %4, align 8, !tbaa !3
  %12 = getelementptr inbounds nuw %struct.Grammar, ptr %11, i32 0, i32 3
  %13 = getelementptr inbounds nuw %struct.anon.2, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8, !tbaa !85
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %16, label %101

16:                                               ; preds = %9
  %17 = load ptr, ptr %5, align 8, !tbaa !58
  %18 = getelementptr inbounds nuw %struct.State, ptr %17, i32 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !120
  %20 = load ptr, ptr %4, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.Grammar, ptr %20, i32 0, i32 3
  %22 = getelementptr inbounds nuw %struct.anon.2, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = load i32, ptr %6, align 4, !tbaa !50
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = getelementptr inbounds nuw %struct.State, ptr %27, i32 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !120
  %30 = icmp eq i64 %19, %29
  br i1 %30, label %31, label %97

31:                                               ; preds = %16
  %32 = load ptr, ptr %5, align 8, !tbaa !58
  %33 = getelementptr inbounds nuw %struct.State, ptr %32, i32 0, i32 2
  %34 = getelementptr inbounds nuw %struct.anon.5, ptr %33, i32 0, i32 0
  %35 = load i32, ptr %34, align 8, !tbaa !87
  %36 = load ptr, ptr %4, align 8, !tbaa !3
  %37 = getelementptr inbounds nuw %struct.Grammar, ptr %36, i32 0, i32 3
  %38 = getelementptr inbounds nuw %struct.anon.2, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !86
  %40 = load i32, ptr %6, align 4, !tbaa !50
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !58
  %44 = getelementptr inbounds nuw %struct.State, ptr %43, i32 0, i32 2
  %45 = getelementptr inbounds nuw %struct.anon.5, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 8, !tbaa !87
  %47 = icmp eq i32 %35, %46
  br i1 %47, label %48, label %97

48:                                               ; preds = %31
  store i32 0, ptr %7, align 4, !tbaa !50
  br label %49

49:                                               ; preds = %83, %48
  %50 = load i32, ptr %7, align 4, !tbaa !50
  %51 = load ptr, ptr %5, align 8, !tbaa !58
  %52 = getelementptr inbounds nuw %struct.State, ptr %51, i32 0, i32 2
  %53 = getelementptr inbounds nuw %struct.anon.5, ptr %52, i32 0, i32 0
  %54 = load i32, ptr %53, align 8, !tbaa !87
  %55 = icmp ult i32 %50, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %49
  %57 = load ptr, ptr %5, align 8, !tbaa !58
  %58 = getelementptr inbounds nuw %struct.State, ptr %57, i32 0, i32 2
  %59 = getelementptr inbounds nuw %struct.anon.5, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !88
  %61 = load i32, ptr %7, align 4, !tbaa !50
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !8
  %65 = load ptr, ptr %4, align 8, !tbaa !3
  %66 = getelementptr inbounds nuw %struct.Grammar, ptr %65, i32 0, i32 3
  %67 = getelementptr inbounds nuw %struct.anon.2, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !86
  %69 = load i32, ptr %6, align 4, !tbaa !50
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %68, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !58
  %73 = getelementptr inbounds nuw %struct.State, ptr %72, i32 0, i32 2
  %74 = getelementptr inbounds nuw %struct.anon.5, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !88
  %76 = load i32, ptr %7, align 4, !tbaa !50
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %75, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !8
  %80 = icmp ne ptr %64, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %56
  br label %96

82:                                               ; preds = %56
  br label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %7, align 4, !tbaa !50
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %7, align 4, !tbaa !50
  br label %49, !llvm.loop !134

86:                                               ; preds = %49
  %87 = load ptr, ptr %5, align 8, !tbaa !58
  call void @free_state(ptr noundef %87)
  %88 = load ptr, ptr %4, align 8, !tbaa !3
  %89 = getelementptr inbounds nuw %struct.Grammar, ptr %88, i32 0, i32 3
  %90 = getelementptr inbounds nuw %struct.anon.2, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !86
  %92 = load i32, ptr %6, align 4, !tbaa !50
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !58
  store ptr %95, ptr %3, align 8
  store i32 1, ptr %8, align 4
  br label %189

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %96, %31, %16
  br label %98

98:                                               ; preds = %97
  %99 = load i32, ptr %6, align 4, !tbaa !50
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %6, align 4, !tbaa !50
  br label %9, !llvm.loop !135

101:                                              ; preds = %9
  %102 = load ptr, ptr %4, align 8, !tbaa !3
  %103 = getelementptr inbounds nuw %struct.Grammar, ptr %102, i32 0, i32 3
  %104 = getelementptr inbounds nuw %struct.anon.2, ptr %103, i32 0, i32 0
  %105 = load i32, ptr %104, align 8, !tbaa !85
  %106 = load ptr, ptr %5, align 8, !tbaa !58
  %107 = getelementptr inbounds nuw %struct.State, ptr %106, i32 0, i32 0
  store i32 %105, ptr %107, align 8, !tbaa !136
  br label %108

108:                                              ; preds = %101
  %109 = load ptr, ptr %4, align 8, !tbaa !3
  %110 = getelementptr inbounds nuw %struct.Grammar, ptr %109, i32 0, i32 3
  %111 = getelementptr inbounds nuw %struct.anon.2, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !86
  %113 = icmp ne ptr %112, null
  br i1 %113, label %130, label %114

114:                                              ; preds = %108
  %115 = load ptr, ptr %5, align 8, !tbaa !58
  %116 = load ptr, ptr %4, align 8, !tbaa !3
  %117 = getelementptr inbounds nuw %struct.Grammar, ptr %116, i32 0, i32 3
  %118 = getelementptr inbounds nuw %struct.anon.2, ptr %117, i32 0, i32 3
  %119 = getelementptr inbounds [3 x ptr], ptr %118, i64 0, i64 0
  %120 = load ptr, ptr %4, align 8, !tbaa !3
  %121 = getelementptr inbounds nuw %struct.Grammar, ptr %120, i32 0, i32 3
  %122 = getelementptr inbounds nuw %struct.anon.2, ptr %121, i32 0, i32 2
  store ptr %119, ptr %122, align 8, !tbaa !86
  %123 = load ptr, ptr %4, align 8, !tbaa !3
  %124 = getelementptr inbounds nuw %struct.Grammar, ptr %123, i32 0, i32 3
  %125 = getelementptr inbounds nuw %struct.anon.2, ptr %124, i32 0, i32 0
  %126 = load i32, ptr %125, align 8, !tbaa !85
  %127 = add i32 %126, 1
  store i32 %127, ptr %125, align 8, !tbaa !85
  %128 = zext i32 %126 to i64
  %129 = getelementptr inbounds nuw ptr, ptr %119, i64 %128
  store ptr %115, ptr %129, align 8, !tbaa !58
  br label %187

130:                                              ; preds = %108
  %131 = load ptr, ptr %4, align 8, !tbaa !3
  %132 = getelementptr inbounds nuw %struct.Grammar, ptr %131, i32 0, i32 3
  %133 = getelementptr inbounds nuw %struct.anon.2, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !86
  %135 = load ptr, ptr %4, align 8, !tbaa !3
  %136 = getelementptr inbounds nuw %struct.Grammar, ptr %135, i32 0, i32 3
  %137 = getelementptr inbounds nuw %struct.anon.2, ptr %136, i32 0, i32 3
  %138 = getelementptr inbounds [3 x ptr], ptr %137, i64 0, i64 0
  %139 = icmp eq ptr %134, %138
  br i1 %139, label %140, label %160

140:                                              ; preds = %130
  %141 = load ptr, ptr %4, align 8, !tbaa !3
  %142 = getelementptr inbounds nuw %struct.Grammar, ptr %141, i32 0, i32 3
  %143 = getelementptr inbounds nuw %struct.anon.2, ptr %142, i32 0, i32 0
  %144 = load i32, ptr %143, align 8, !tbaa !85
  %145 = icmp ult i32 %144, 3
  br i1 %145, label %146, label %159

146:                                              ; preds = %140
  %147 = load ptr, ptr %5, align 8, !tbaa !58
  %148 = load ptr, ptr %4, align 8, !tbaa !3
  %149 = getelementptr inbounds nuw %struct.Grammar, ptr %148, i32 0, i32 3
  %150 = getelementptr inbounds nuw %struct.anon.2, ptr %149, i32 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !86
  %152 = load ptr, ptr %4, align 8, !tbaa !3
  %153 = getelementptr inbounds nuw %struct.Grammar, ptr %152, i32 0, i32 3
  %154 = getelementptr inbounds nuw %struct.anon.2, ptr %153, i32 0, i32 0
  %155 = load i32, ptr %154, align 8, !tbaa !85
  %156 = add i32 %155, 1
  store i32 %156, ptr %154, align 8, !tbaa !85
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds nuw ptr, ptr %151, i64 %157
  store ptr %147, ptr %158, align 8, !tbaa !58
  br label %187

159:                                              ; preds = %140
  br label %181

160:                                              ; preds = %130
  %161 = load ptr, ptr %4, align 8, !tbaa !3
  %162 = getelementptr inbounds nuw %struct.Grammar, ptr %161, i32 0, i32 3
  %163 = getelementptr inbounds nuw %struct.anon.2, ptr %162, i32 0, i32 0
  %164 = load i32, ptr %163, align 8, !tbaa !85
  %165 = and i32 %164, 7
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %160
  %168 = load ptr, ptr %5, align 8, !tbaa !58
  %169 = load ptr, ptr %4, align 8, !tbaa !3
  %170 = getelementptr inbounds nuw %struct.Grammar, ptr %169, i32 0, i32 3
  %171 = getelementptr inbounds nuw %struct.anon.2, ptr %170, i32 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !86
  %173 = load ptr, ptr %4, align 8, !tbaa !3
  %174 = getelementptr inbounds nuw %struct.Grammar, ptr %173, i32 0, i32 3
  %175 = getelementptr inbounds nuw %struct.anon.2, ptr %174, i32 0, i32 0
  %176 = load i32, ptr %175, align 8, !tbaa !85
  %177 = add i32 %176, 1
  store i32 %177, ptr %175, align 8, !tbaa !85
  %178 = zext i32 %176 to i64
  %179 = getelementptr inbounds nuw ptr, ptr %172, i64 %178
  store ptr %168, ptr %179, align 8, !tbaa !58
  br label %187

180:                                              ; preds = %160
  br label %181

181:                                              ; preds = %180, %159
  br label %182

182:                                              ; preds = %181
  %183 = load ptr, ptr %4, align 8, !tbaa !3
  %184 = getelementptr inbounds nuw %struct.Grammar, ptr %183, i32 0, i32 3
  %185 = load ptr, ptr %5, align 8, !tbaa !58
  call void @vec_add_internal(ptr noundef %184, ptr noundef %185)
  br label %186

186:                                              ; preds = %182
  br label %187

187:                                              ; preds = %186, %167, %146, %114
  %188 = load ptr, ptr %5, align 8, !tbaa !58
  store ptr %188, ptr %3, align 8
  store i32 1, ptr %8, align 4
  br label %189

189:                                              ; preds = %187, %86
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  %190 = load ptr, ptr %3, align 8
  ret ptr %190
}

; Function Attrs: nounwind
define internal void @free_state(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !58
  br label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !tbaa !58
  %5 = getelementptr inbounds nuw %struct.State, ptr %4, i32 0, i32 2
  %6 = getelementptr inbounds nuw %struct.anon.5, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !58
  %11 = getelementptr inbounds nuw %struct.State, ptr %10, i32 0, i32 2
  %12 = getelementptr inbounds nuw %struct.anon.5, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = load ptr, ptr %2, align 8, !tbaa !58
  %15 = getelementptr inbounds nuw %struct.State, ptr %14, i32 0, i32 2
  %16 = getelementptr inbounds nuw %struct.anon.5, ptr %15, i32 0, i32 3
  %17 = getelementptr inbounds [3 x ptr], ptr %16, i64 0, i64 0
  %18 = icmp ne ptr %13, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %9
  %20 = load ptr, ptr %2, align 8, !tbaa !58
  %21 = getelementptr inbounds nuw %struct.State, ptr %20, i32 0, i32 2
  %22 = getelementptr inbounds nuw %struct.anon.5, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  call void @free(ptr noundef %23) #7
  br label %24

24:                                               ; preds = %19, %9, %3
  br label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr %2, align 8, !tbaa !58
  %27 = getelementptr inbounds nuw %struct.State, ptr %26, i32 0, i32 2
  %28 = getelementptr inbounds nuw %struct.anon.5, ptr %27, i32 0, i32 0
  store i32 0, ptr %28, align 8, !tbaa !87
  %29 = load ptr, ptr %2, align 8, !tbaa !58
  %30 = getelementptr inbounds nuw %struct.State, ptr %29, i32 0, i32 2
  %31 = getelementptr inbounds nuw %struct.anon.5, ptr %30, i32 0, i32 2
  store ptr null, ptr %31, align 8, !tbaa !88
  br label %32

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  %35 = load ptr, ptr %2, align 8, !tbaa !58
  %36 = getelementptr inbounds nuw %struct.State, ptr %35, i32 0, i32 3
  %37 = getelementptr inbounds nuw %struct.anon.6, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !137
  %39 = icmp ne ptr %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load ptr, ptr %2, align 8, !tbaa !58
  %42 = getelementptr inbounds nuw %struct.State, ptr %41, i32 0, i32 3
  %43 = getelementptr inbounds nuw %struct.anon.6, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !137
  %45 = load ptr, ptr %2, align 8, !tbaa !58
  %46 = getelementptr inbounds nuw %struct.State, ptr %45, i32 0, i32 3
  %47 = getelementptr inbounds nuw %struct.anon.6, ptr %46, i32 0, i32 3
  %48 = getelementptr inbounds [3 x ptr], ptr %47, i64 0, i64 0
  %49 = icmp ne ptr %44, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load ptr, ptr %2, align 8, !tbaa !58
  %52 = getelementptr inbounds nuw %struct.State, ptr %51, i32 0, i32 3
  %53 = getelementptr inbounds nuw %struct.anon.6, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !137
  call void @free(ptr noundef %54) #7
  br label %55

55:                                               ; preds = %50, %40, %34
  br label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %2, align 8, !tbaa !58
  %58 = getelementptr inbounds nuw %struct.State, ptr %57, i32 0, i32 3
  %59 = getelementptr inbounds nuw %struct.anon.6, ptr %58, i32 0, i32 0
  store i32 0, ptr %59, align 8, !tbaa !138
  %60 = load ptr, ptr %2, align 8, !tbaa !58
  %61 = getelementptr inbounds nuw %struct.State, ptr %60, i32 0, i32 3
  %62 = getelementptr inbounds nuw %struct.anon.6, ptr %61, i32 0, i32 2
  store ptr null, ptr %62, align 8, !tbaa !137
  br label %63

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %2, align 8, !tbaa !58
  call void @free(ptr noundef %65) #7
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind
define internal void @build_state_for(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !58
  store ptr %2, ptr %6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #7
  store ptr null, ptr %9, align 8, !tbaa !58
  store i32 0, ptr %7, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %57, %3
  %11 = load i32, ptr %7, align 4, !tbaa !50
  %12 = load ptr, ptr %5, align 8, !tbaa !58
  %13 = getelementptr inbounds nuw %struct.State, ptr %12, i32 0, i32 2
  %14 = getelementptr inbounds nuw %struct.anon.5, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8, !tbaa !87
  %16 = icmp ult i32 %11, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %10
  %18 = load ptr, ptr %5, align 8, !tbaa !58
  %19 = getelementptr inbounds nuw %struct.State, ptr %18, i32 0, i32 2
  %20 = getelementptr inbounds nuw %struct.anon.5, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  %22 = load i32, ptr %7, align 4, !tbaa !50
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !8
  store ptr %25, ptr %8, align 8, !tbaa !8
  %26 = load ptr, ptr %8, align 8, !tbaa !8
  %27 = getelementptr inbounds nuw %struct.Elem, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8, !tbaa !10
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %30, label %56

30:                                               ; preds = %17
  %31 = load ptr, ptr %8, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw %struct.Elem, ptr %31, i32 0, i32 0
  %33 = load i32, ptr %32, align 8, !tbaa !10
  %34 = load ptr, ptr %6, align 8, !tbaa !8
  %35 = getelementptr inbounds nuw %struct.Elem, ptr %34, i32 0, i32 0
  %36 = load i32, ptr %35, align 8, !tbaa !10
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %30
  %39 = load ptr, ptr %8, align 8, !tbaa !8
  %40 = getelementptr inbounds nuw %struct.Elem, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !14
  %42 = load ptr, ptr %6, align 8, !tbaa !8
  %43 = getelementptr inbounds nuw %struct.Elem, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !14
  %45 = icmp eq ptr %41, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load ptr, ptr %9, align 8, !tbaa !58
  %48 = icmp ne ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call ptr @new_state()
  store ptr %50, ptr %9, align 8, !tbaa !58
  br label %51

51:                                               ; preds = %49, %46
  %52 = load ptr, ptr %9, align 8, !tbaa !58
  %53 = load ptr, ptr %8, align 8, !tbaa !8
  %54 = call ptr @next_elem(ptr noundef %53)
  %55 = call signext i32 @insert_item(ptr noundef %52, ptr noundef %54)
  br label %56

56:                                               ; preds = %51, %38, %30, %17
  br label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %7, align 4, !tbaa !50
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %7, align 4, !tbaa !50
  br label %10, !llvm.loop !139

60:                                               ; preds = %10
  %61 = load ptr, ptr %9, align 8, !tbaa !58
  %62 = icmp ne ptr %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load ptr, ptr %5, align 8, !tbaa !58
  %65 = load ptr, ptr %4, align 8, !tbaa !3
  %66 = load ptr, ptr %9, align 8, !tbaa !58
  %67 = call ptr @build_closure(ptr noundef %65, ptr noundef %66)
  %68 = load ptr, ptr %6, align 8, !tbaa !8
  call void @add_goto(ptr noundef %64, ptr noundef %67, ptr noundef %68)
  br label %69

69:                                               ; preds = %63, %60
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  ret void
}

; Function Attrs: nounwind
define internal ptr @next_elem(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !8
  %4 = load ptr, ptr %3, align 8, !tbaa !8
  %5 = getelementptr inbounds nuw %struct.Elem, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !94
  %7 = add i32 %6, 1
  %8 = load ptr, ptr %3, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw %struct.Elem, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = getelementptr inbounds nuw %struct.Rule, ptr %10, i32 0, i32 6
  %12 = getelementptr inbounds nuw %struct.anon.7, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !95
  %14 = icmp uge i32 %7, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 8, !tbaa !8
  %17 = getelementptr inbounds nuw %struct.Elem, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !90
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !117
  store ptr %20, ptr %2, align 8
  br label %35

21:                                               ; preds = %1
  %22 = load ptr, ptr %3, align 8, !tbaa !8
  %23 = getelementptr inbounds nuw %struct.Elem, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  %25 = getelementptr inbounds nuw %struct.Rule, ptr %24, i32 0, i32 6
  %26 = getelementptr inbounds nuw %struct.anon.7, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  %28 = load ptr, ptr %3, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw %struct.Elem, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !94
  %31 = add i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds nuw ptr, ptr %27, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !8
  store ptr %34, ptr %2, align 8
  br label %35

35:                                               ; preds = %21, %15
  %36 = load ptr, ptr %2, align 8
  ret ptr %36
}

; Function Attrs: nounwind
define internal void @add_goto(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !58
  store ptr %1, ptr %5, align 8, !tbaa !58
  store ptr %2, ptr %6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  %8 = call noalias ptr @malloc(i64 noundef 16) #9
  store ptr %8, ptr %7, align 8, !tbaa !72
  %9 = load ptr, ptr %5, align 8, !tbaa !58
  %10 = load ptr, ptr %7, align 8, !tbaa !72
  %11 = getelementptr inbounds nuw %struct.Goto, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 8, !tbaa !76
  %12 = load ptr, ptr %6, align 8, !tbaa !8
  %13 = call ptr @clone_elem(ptr noundef %12)
  %14 = load ptr, ptr %7, align 8, !tbaa !72
  %15 = getelementptr inbounds nuw %struct.Goto, ptr %14, i32 0, i32 0
  store ptr %13, ptr %15, align 8, !tbaa !74
  br label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 8, !tbaa !58
  %18 = getelementptr inbounds nuw %struct.State, ptr %17, i32 0, i32 4
  %19 = getelementptr inbounds nuw %struct.VecGoto, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = icmp ne ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %7, align 8, !tbaa !72
  %24 = load ptr, ptr %4, align 8, !tbaa !58
  %25 = getelementptr inbounds nuw %struct.State, ptr %24, i32 0, i32 4
  %26 = getelementptr inbounds nuw %struct.VecGoto, ptr %25, i32 0, i32 3
  %27 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 0
  %28 = load ptr, ptr %4, align 8, !tbaa !58
  %29 = getelementptr inbounds nuw %struct.State, ptr %28, i32 0, i32 4
  %30 = getelementptr inbounds nuw %struct.VecGoto, ptr %29, i32 0, i32 2
  store ptr %27, ptr %30, align 8, !tbaa !71
  %31 = load ptr, ptr %4, align 8, !tbaa !58
  %32 = getelementptr inbounds nuw %struct.State, ptr %31, i32 0, i32 4
  %33 = getelementptr inbounds nuw %struct.VecGoto, ptr %32, i32 0, i32 0
  %34 = load i32, ptr %33, align 8, !tbaa !59
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !59
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds nuw ptr, ptr %27, i64 %36
  store ptr %23, ptr %37, align 8, !tbaa !72
  br label %95

38:                                               ; preds = %16
  %39 = load ptr, ptr %4, align 8, !tbaa !58
  %40 = getelementptr inbounds nuw %struct.State, ptr %39, i32 0, i32 4
  %41 = getelementptr inbounds nuw %struct.VecGoto, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !71
  %43 = load ptr, ptr %4, align 8, !tbaa !58
  %44 = getelementptr inbounds nuw %struct.State, ptr %43, i32 0, i32 4
  %45 = getelementptr inbounds nuw %struct.VecGoto, ptr %44, i32 0, i32 3
  %46 = getelementptr inbounds [3 x ptr], ptr %45, i64 0, i64 0
  %47 = icmp eq ptr %42, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %38
  %49 = load ptr, ptr %4, align 8, !tbaa !58
  %50 = getelementptr inbounds nuw %struct.State, ptr %49, i32 0, i32 4
  %51 = getelementptr inbounds nuw %struct.VecGoto, ptr %50, i32 0, i32 0
  %52 = load i32, ptr %51, align 8, !tbaa !59
  %53 = icmp ult i32 %52, 3
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load ptr, ptr %7, align 8, !tbaa !72
  %56 = load ptr, ptr %4, align 8, !tbaa !58
  %57 = getelementptr inbounds nuw %struct.State, ptr %56, i32 0, i32 4
  %58 = getelementptr inbounds nuw %struct.VecGoto, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !71
  %60 = load ptr, ptr %4, align 8, !tbaa !58
  %61 = getelementptr inbounds nuw %struct.State, ptr %60, i32 0, i32 4
  %62 = getelementptr inbounds nuw %struct.VecGoto, ptr %61, i32 0, i32 0
  %63 = load i32, ptr %62, align 8, !tbaa !59
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 8, !tbaa !59
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds nuw ptr, ptr %59, i64 %65
  store ptr %55, ptr %66, align 8, !tbaa !72
  br label %95

67:                                               ; preds = %48
  br label %89

68:                                               ; preds = %38
  %69 = load ptr, ptr %4, align 8, !tbaa !58
  %70 = getelementptr inbounds nuw %struct.State, ptr %69, i32 0, i32 4
  %71 = getelementptr inbounds nuw %struct.VecGoto, ptr %70, i32 0, i32 0
  %72 = load i32, ptr %71, align 8, !tbaa !59
  %73 = and i32 %72, 7
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load ptr, ptr %7, align 8, !tbaa !72
  %77 = load ptr, ptr %4, align 8, !tbaa !58
  %78 = getelementptr inbounds nuw %struct.State, ptr %77, i32 0, i32 4
  %79 = getelementptr inbounds nuw %struct.VecGoto, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !71
  %81 = load ptr, ptr %4, align 8, !tbaa !58
  %82 = getelementptr inbounds nuw %struct.State, ptr %81, i32 0, i32 4
  %83 = getelementptr inbounds nuw %struct.VecGoto, ptr %82, i32 0, i32 0
  %84 = load i32, ptr %83, align 8, !tbaa !59
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 8, !tbaa !59
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds nuw ptr, ptr %80, i64 %86
  store ptr %76, ptr %87, align 8, !tbaa !72
  br label %95

88:                                               ; preds = %68
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89
  %91 = load ptr, ptr %4, align 8, !tbaa !58
  %92 = getelementptr inbounds nuw %struct.State, ptr %91, i32 0, i32 4
  %93 = load ptr, ptr %7, align 8, !tbaa !72
  call void @vec_add_internal(ptr noundef %92, ptr noundef %93)
  br label %94

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94, %75, %54, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  ret void
}

; Function Attrs: nounwind
define internal ptr @clone_elem(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #7
  %4 = call noalias ptr @malloc(i64 noundef 32) #9
  store ptr %4, ptr %3, align 8, !tbaa !8
  %5 = load ptr, ptr %3, align 8, !tbaa !8
  %6 = load ptr, ptr %2, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %6, i64 32, i1 false)
  %7 = load ptr, ptr %3, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #7
  ret ptr %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind
define internal signext i32 @gotocmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !40
  store ptr %1, ptr %4, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  %9 = load ptr, ptr %3, align 8, !tbaa !40
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  store ptr %10, ptr %5, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  %11 = load ptr, ptr %4, align 8, !tbaa !40
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  store ptr %12, ptr %6, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  %13 = load ptr, ptr %5, align 8, !tbaa !72
  %14 = getelementptr inbounds nuw %struct.Goto, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = getelementptr inbounds nuw %struct.State, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8, !tbaa !136
  store i32 %17, ptr %7, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  %18 = load ptr, ptr %6, align 8, !tbaa !72
  %19 = getelementptr inbounds nuw %struct.Goto, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = getelementptr inbounds nuw %struct.State, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8, !tbaa !136
  store i32 %22, ptr %8, align 4, !tbaa !50
  %23 = load i32, ptr %7, align 4, !tbaa !50
  %24 = load i32, ptr %8, align 4, !tbaa !50
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %33

27:                                               ; preds = %2
  %28 = load i32, ptr %7, align 4, !tbaa !50
  %29 = load i32, ptr %8, align 4, !tbaa !50
  %30 = icmp slt i32 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 -1, i32 0
  br label %33

33:                                               ; preds = %27, %26
  %34 = phi i32 [ 1, %26 ], [ %32, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  ret i32 %34
}

; Function Attrs: nounwind
define internal void @add_action(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %7, align 8, !tbaa !3
  store ptr %1, ptr %8, align 8, !tbaa !58
  store i32 %2, ptr %9, align 4, !tbaa !50
  store ptr %3, ptr %10, align 8, !tbaa !127
  store ptr %4, ptr %11, align 8, !tbaa !83
  store ptr %5, ptr %12, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #7
  %16 = load i32, ptr %9, align 4, !tbaa !50
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %131

18:                                               ; preds = %6
  store i32 0, ptr %13, align 4, !tbaa !50
  br label %19

19:                                               ; preds = %41, %18
  %20 = load i32, ptr %13, align 4, !tbaa !50
  %21 = load ptr, ptr %8, align 8, !tbaa !58
  %22 = getelementptr inbounds nuw %struct.State, ptr %21, i32 0, i32 6
  %23 = getelementptr inbounds nuw %struct.VecAction, ptr %22, i32 0, i32 0
  %24 = load i32, ptr %23, align 8, !tbaa !140
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load ptr, ptr %8, align 8, !tbaa !58
  %28 = getelementptr inbounds nuw %struct.State, ptr %27, i32 0, i32 6
  %29 = getelementptr inbounds nuw %struct.VecAction, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !141
  %31 = load i32, ptr %13, align 4, !tbaa !50
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  %35 = getelementptr inbounds nuw %struct.Action, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  %37 = load ptr, ptr %11, align 8, !tbaa !83
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store i32 1, ptr %15, align 4
  br label %271

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr %13, align 4, !tbaa !50
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %13, align 4, !tbaa !50
  br label %19, !llvm.loop !142

44:                                               ; preds = %19
  %45 = load ptr, ptr %7, align 8, !tbaa !3
  %46 = load i32, ptr %9, align 4, !tbaa !50
  %47 = load ptr, ptr %10, align 8, !tbaa !127
  %48 = load ptr, ptr %11, align 8, !tbaa !83
  %49 = load ptr, ptr %12, align 8, !tbaa !58
  %50 = call ptr @new_Action(ptr noundef %45, i32 noundef signext %46, ptr noundef %47, ptr noundef %48, ptr noundef %49)
  store ptr %50, ptr %14, align 8, !tbaa !45
  br label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr %8, align 8, !tbaa !58
  %53 = getelementptr inbounds nuw %struct.State, ptr %52, i32 0, i32 6
  %54 = getelementptr inbounds nuw %struct.VecAction, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !141
  %56 = icmp ne ptr %55, null
  br i1 %56, label %73, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %14, align 8, !tbaa !45
  %59 = load ptr, ptr %8, align 8, !tbaa !58
  %60 = getelementptr inbounds nuw %struct.State, ptr %59, i32 0, i32 6
  %61 = getelementptr inbounds nuw %struct.VecAction, ptr %60, i32 0, i32 3
  %62 = getelementptr inbounds [3 x ptr], ptr %61, i64 0, i64 0
  %63 = load ptr, ptr %8, align 8, !tbaa !58
  %64 = getelementptr inbounds nuw %struct.State, ptr %63, i32 0, i32 6
  %65 = getelementptr inbounds nuw %struct.VecAction, ptr %64, i32 0, i32 2
  store ptr %62, ptr %65, align 8, !tbaa !141
  %66 = load ptr, ptr %8, align 8, !tbaa !58
  %67 = getelementptr inbounds nuw %struct.State, ptr %66, i32 0, i32 6
  %68 = getelementptr inbounds nuw %struct.VecAction, ptr %67, i32 0, i32 0
  %69 = load i32, ptr %68, align 8, !tbaa !140
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 8, !tbaa !140
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds nuw ptr, ptr %62, i64 %71
  store ptr %58, ptr %72, align 8, !tbaa !45
  br label %130

73:                                               ; preds = %51
  %74 = load ptr, ptr %8, align 8, !tbaa !58
  %75 = getelementptr inbounds nuw %struct.State, ptr %74, i32 0, i32 6
  %76 = getelementptr inbounds nuw %struct.VecAction, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !141
  %78 = load ptr, ptr %8, align 8, !tbaa !58
  %79 = getelementptr inbounds nuw %struct.State, ptr %78, i32 0, i32 6
  %80 = getelementptr inbounds nuw %struct.VecAction, ptr %79, i32 0, i32 3
  %81 = getelementptr inbounds [3 x ptr], ptr %80, i64 0, i64 0
  %82 = icmp eq ptr %77, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %73
  %84 = load ptr, ptr %8, align 8, !tbaa !58
  %85 = getelementptr inbounds nuw %struct.State, ptr %84, i32 0, i32 6
  %86 = getelementptr inbounds nuw %struct.VecAction, ptr %85, i32 0, i32 0
  %87 = load i32, ptr %86, align 8, !tbaa !140
  %88 = icmp ult i32 %87, 3
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load ptr, ptr %14, align 8, !tbaa !45
  %91 = load ptr, ptr %8, align 8, !tbaa !58
  %92 = getelementptr inbounds nuw %struct.State, ptr %91, i32 0, i32 6
  %93 = getelementptr inbounds nuw %struct.VecAction, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !141
  %95 = load ptr, ptr %8, align 8, !tbaa !58
  %96 = getelementptr inbounds nuw %struct.State, ptr %95, i32 0, i32 6
  %97 = getelementptr inbounds nuw %struct.VecAction, ptr %96, i32 0, i32 0
  %98 = load i32, ptr %97, align 8, !tbaa !140
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 8, !tbaa !140
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds nuw ptr, ptr %94, i64 %100
  store ptr %90, ptr %101, align 8, !tbaa !45
  br label %130

102:                                              ; preds = %83
  br label %124

103:                                              ; preds = %73
  %104 = load ptr, ptr %8, align 8, !tbaa !58
  %105 = getelementptr inbounds nuw %struct.State, ptr %104, i32 0, i32 6
  %106 = getelementptr inbounds nuw %struct.VecAction, ptr %105, i32 0, i32 0
  %107 = load i32, ptr %106, align 8, !tbaa !140
  %108 = and i32 %107, 7
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %103
  %111 = load ptr, ptr %14, align 8, !tbaa !45
  %112 = load ptr, ptr %8, align 8, !tbaa !58
  %113 = getelementptr inbounds nuw %struct.State, ptr %112, i32 0, i32 6
  %114 = getelementptr inbounds nuw %struct.VecAction, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !141
  %116 = load ptr, ptr %8, align 8, !tbaa !58
  %117 = getelementptr inbounds nuw %struct.State, ptr %116, i32 0, i32 6
  %118 = getelementptr inbounds nuw %struct.VecAction, ptr %117, i32 0, i32 0
  %119 = load i32, ptr %118, align 8, !tbaa !140
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 8, !tbaa !140
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds nuw ptr, ptr %115, i64 %121
  store ptr %111, ptr %122, align 8, !tbaa !45
  br label %130

123:                                              ; preds = %103
  br label %124

124:                                              ; preds = %123, %102
  br label %125

125:                                              ; preds = %124
  %126 = load ptr, ptr %8, align 8, !tbaa !58
  %127 = getelementptr inbounds nuw %struct.State, ptr %126, i32 0, i32 6
  %128 = load ptr, ptr %14, align 8, !tbaa !45
  call void @vec_add_internal(ptr noundef %127, ptr noundef %128)
  br label %129

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %129, %110, %89, %57
  br label %270

131:                                              ; preds = %6
  store i32 0, ptr %13, align 4, !tbaa !50
  br label %132

132:                                              ; preds = %180, %131
  %133 = load i32, ptr %13, align 4, !tbaa !50
  %134 = load ptr, ptr %8, align 8, !tbaa !58
  %135 = getelementptr inbounds nuw %struct.State, ptr %134, i32 0, i32 5
  %136 = getelementptr inbounds nuw %struct.VecAction, ptr %135, i32 0, i32 0
  %137 = load i32, ptr %136, align 8, !tbaa !143
  %138 = icmp ult i32 %133, %137
  br i1 %138, label %139, label %183

139:                                              ; preds = %132
  %140 = load ptr, ptr %8, align 8, !tbaa !58
  %141 = getelementptr inbounds nuw %struct.State, ptr %140, i32 0, i32 5
  %142 = getelementptr inbounds nuw %struct.VecAction, ptr %141, i32 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !144
  %144 = load i32, ptr %13, align 4, !tbaa !50
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %143, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !45
  %148 = getelementptr inbounds nuw %struct.Action, ptr %147, i32 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !49
  %150 = load ptr, ptr %10, align 8, !tbaa !127
  %151 = icmp eq ptr %149, %150
  br i1 %151, label %152, label %179

152:                                              ; preds = %139
  %153 = load ptr, ptr %8, align 8, !tbaa !58
  %154 = getelementptr inbounds nuw %struct.State, ptr %153, i32 0, i32 5
  %155 = getelementptr inbounds nuw %struct.VecAction, ptr %154, i32 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !144
  %157 = load i32, ptr %13, align 4, !tbaa !50
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %156, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !45
  %161 = getelementptr inbounds nuw %struct.Action, ptr %160, i32 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !145
  %163 = load ptr, ptr %12, align 8, !tbaa !58
  %164 = icmp eq ptr %162, %163
  br i1 %164, label %165, label %179

165:                                              ; preds = %152
  %166 = load ptr, ptr %8, align 8, !tbaa !58
  %167 = getelementptr inbounds nuw %struct.State, ptr %166, i32 0, i32 5
  %168 = getelementptr inbounds nuw %struct.VecAction, ptr %167, i32 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !144
  %170 = load i32, ptr %13, align 4, !tbaa !50
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds ptr, ptr %169, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !45
  %174 = getelementptr inbounds nuw %struct.Action, ptr %173, i32 0, i32 0
  %175 = load i32, ptr %174, align 8, !tbaa !47
  %176 = load i32, ptr %9, align 4, !tbaa !50
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %165
  store i32 1, ptr %15, align 4
  br label %271

179:                                              ; preds = %165, %152, %139
  br label %180

180:                                              ; preds = %179
  %181 = load i32, ptr %13, align 4, !tbaa !50
  %182 = add nsw i32 %181, 1
  store i32 %182, ptr %13, align 4, !tbaa !50
  br label %132, !llvm.loop !146

183:                                              ; preds = %132
  %184 = load ptr, ptr %7, align 8, !tbaa !3
  %185 = load i32, ptr %9, align 4, !tbaa !50
  %186 = load ptr, ptr %10, align 8, !tbaa !127
  %187 = load ptr, ptr %11, align 8, !tbaa !83
  %188 = load ptr, ptr %12, align 8, !tbaa !58
  %189 = call ptr @new_Action(ptr noundef %184, i32 noundef signext %185, ptr noundef %186, ptr noundef %187, ptr noundef %188)
  store ptr %189, ptr %14, align 8, !tbaa !45
  br label %190

190:                                              ; preds = %183
  %191 = load ptr, ptr %8, align 8, !tbaa !58
  %192 = getelementptr inbounds nuw %struct.State, ptr %191, i32 0, i32 5
  %193 = getelementptr inbounds nuw %struct.VecAction, ptr %192, i32 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !144
  %195 = icmp ne ptr %194, null
  br i1 %195, label %212, label %196

196:                                              ; preds = %190
  %197 = load ptr, ptr %14, align 8, !tbaa !45
  %198 = load ptr, ptr %8, align 8, !tbaa !58
  %199 = getelementptr inbounds nuw %struct.State, ptr %198, i32 0, i32 5
  %200 = getelementptr inbounds nuw %struct.VecAction, ptr %199, i32 0, i32 3
  %201 = getelementptr inbounds [3 x ptr], ptr %200, i64 0, i64 0
  %202 = load ptr, ptr %8, align 8, !tbaa !58
  %203 = getelementptr inbounds nuw %struct.State, ptr %202, i32 0, i32 5
  %204 = getelementptr inbounds nuw %struct.VecAction, ptr %203, i32 0, i32 2
  store ptr %201, ptr %204, align 8, !tbaa !144
  %205 = load ptr, ptr %8, align 8, !tbaa !58
  %206 = getelementptr inbounds nuw %struct.State, ptr %205, i32 0, i32 5
  %207 = getelementptr inbounds nuw %struct.VecAction, ptr %206, i32 0, i32 0
  %208 = load i32, ptr %207, align 8, !tbaa !143
  %209 = add i32 %208, 1
  store i32 %209, ptr %207, align 8, !tbaa !143
  %210 = zext i32 %208 to i64
  %211 = getelementptr inbounds nuw ptr, ptr %201, i64 %210
  store ptr %197, ptr %211, align 8, !tbaa !45
  br label %269

212:                                              ; preds = %190
  %213 = load ptr, ptr %8, align 8, !tbaa !58
  %214 = getelementptr inbounds nuw %struct.State, ptr %213, i32 0, i32 5
  %215 = getelementptr inbounds nuw %struct.VecAction, ptr %214, i32 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !144
  %217 = load ptr, ptr %8, align 8, !tbaa !58
  %218 = getelementptr inbounds nuw %struct.State, ptr %217, i32 0, i32 5
  %219 = getelementptr inbounds nuw %struct.VecAction, ptr %218, i32 0, i32 3
  %220 = getelementptr inbounds [3 x ptr], ptr %219, i64 0, i64 0
  %221 = icmp eq ptr %216, %220
  br i1 %221, label %222, label %242

222:                                              ; preds = %212
  %223 = load ptr, ptr %8, align 8, !tbaa !58
  %224 = getelementptr inbounds nuw %struct.State, ptr %223, i32 0, i32 5
  %225 = getelementptr inbounds nuw %struct.VecAction, ptr %224, i32 0, i32 0
  %226 = load i32, ptr %225, align 8, !tbaa !143
  %227 = icmp ult i32 %226, 3
  br i1 %227, label %228, label %241

228:                                              ; preds = %222
  %229 = load ptr, ptr %14, align 8, !tbaa !45
  %230 = load ptr, ptr %8, align 8, !tbaa !58
  %231 = getelementptr inbounds nuw %struct.State, ptr %230, i32 0, i32 5
  %232 = getelementptr inbounds nuw %struct.VecAction, ptr %231, i32 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !144
  %234 = load ptr, ptr %8, align 8, !tbaa !58
  %235 = getelementptr inbounds nuw %struct.State, ptr %234, i32 0, i32 5
  %236 = getelementptr inbounds nuw %struct.VecAction, ptr %235, i32 0, i32 0
  %237 = load i32, ptr %236, align 8, !tbaa !143
  %238 = add i32 %237, 1
  store i32 %238, ptr %236, align 8, !tbaa !143
  %239 = zext i32 %237 to i64
  %240 = getelementptr inbounds nuw ptr, ptr %233, i64 %239
  store ptr %229, ptr %240, align 8, !tbaa !45
  br label %269

241:                                              ; preds = %222
  br label %263

242:                                              ; preds = %212
  %243 = load ptr, ptr %8, align 8, !tbaa !58
  %244 = getelementptr inbounds nuw %struct.State, ptr %243, i32 0, i32 5
  %245 = getelementptr inbounds nuw %struct.VecAction, ptr %244, i32 0, i32 0
  %246 = load i32, ptr %245, align 8, !tbaa !143
  %247 = and i32 %246, 7
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %242
  %250 = load ptr, ptr %14, align 8, !tbaa !45
  %251 = load ptr, ptr %8, align 8, !tbaa !58
  %252 = getelementptr inbounds nuw %struct.State, ptr %251, i32 0, i32 5
  %253 = getelementptr inbounds nuw %struct.VecAction, ptr %252, i32 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !144
  %255 = load ptr, ptr %8, align 8, !tbaa !58
  %256 = getelementptr inbounds nuw %struct.State, ptr %255, i32 0, i32 5
  %257 = getelementptr inbounds nuw %struct.VecAction, ptr %256, i32 0, i32 0
  %258 = load i32, ptr %257, align 8, !tbaa !143
  %259 = add i32 %258, 1
  store i32 %259, ptr %257, align 8, !tbaa !143
  %260 = zext i32 %258 to i64
  %261 = getelementptr inbounds nuw ptr, ptr %254, i64 %260
  store ptr %250, ptr %261, align 8, !tbaa !45
  br label %269

262:                                              ; preds = %242
  br label %263

263:                                              ; preds = %262, %241
  br label %264

264:                                              ; preds = %263
  %265 = load ptr, ptr %8, align 8, !tbaa !58
  %266 = getelementptr inbounds nuw %struct.State, ptr %265, i32 0, i32 5
  %267 = load ptr, ptr %14, align 8, !tbaa !45
  call void @vec_add_internal(ptr noundef %266, ptr noundef %267)
  br label %268

268:                                              ; preds = %264
  br label %269

269:                                              ; preds = %268, %249, %228, %196
  br label %270

270:                                              ; preds = %269, %130
  store i32 0, ptr %15, align 4
  br label %271

271:                                              ; preds = %270, %178, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7
  %272 = load i32, ptr %15, align 4
  switch i32 %272, label %274 [
    i32 0, label %273
    i32 1, label %273
  ]

273:                                              ; preds = %271, %271
  ret void

274:                                              ; preds = %271
  unreachable
}

; Function Attrs: nounwind
define internal ptr @new_Action(ptr noundef %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store i32 %1, ptr %7, align 4, !tbaa !50
  store ptr %2, ptr %8, align 8, !tbaa !127
  store ptr %3, ptr %9, align 8, !tbaa !83
  store ptr %4, ptr %10, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #7
  %12 = call noalias ptr @malloc(i64 noundef 48) #9
  store ptr %12, ptr %11, align 8, !tbaa !45
  %13 = load i32, ptr %7, align 4, !tbaa !50
  %14 = load ptr, ptr %11, align 8, !tbaa !45
  %15 = getelementptr inbounds nuw %struct.Action, ptr %14, i32 0, i32 0
  store i32 %13, ptr %15, align 8, !tbaa !47
  %16 = load ptr, ptr %8, align 8, !tbaa !127
  %17 = load ptr, ptr %11, align 8, !tbaa !45
  %18 = getelementptr inbounds nuw %struct.Action, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !49
  %19 = load ptr, ptr %9, align 8, !tbaa !83
  %20 = load ptr, ptr %11, align 8, !tbaa !45
  %21 = getelementptr inbounds nuw %struct.Action, ptr %20, i32 0, i32 2
  store ptr %19, ptr %21, align 8, !tbaa !51
  %22 = load ptr, ptr %10, align 8, !tbaa !58
  %23 = load ptr, ptr %11, align 8, !tbaa !45
  %24 = getelementptr inbounds nuw %struct.Action, ptr %23, i32 0, i32 3
  store ptr %22, ptr %24, align 8, !tbaa !145
  %25 = load ptr, ptr %6, align 8, !tbaa !3
  %26 = getelementptr inbounds nuw %struct.Grammar, ptr %25, i32 0, i32 27
  %27 = load i32, ptr %26, align 4, !tbaa !79
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 4, !tbaa !79
  %29 = load ptr, ptr %11, align 8, !tbaa !45
  %30 = getelementptr inbounds nuw %struct.Action, ptr %29, i32 0, i32 4
  store i32 %27, ptr %30, align 8, !tbaa !147
  %31 = load ptr, ptr %11, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #7
  ret ptr %31
}

; Function Attrs: nounwind
define internal ptr @new_Hint(i32 noundef signext %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4, !tbaa !50
  store ptr %1, ptr %5, align 8, !tbaa !58
  store ptr %2, ptr %6, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  %8 = call noalias ptr @malloc(i64 noundef 24) #9
  store ptr %8, ptr %7, align 8, !tbaa !101
  %9 = load i32, ptr %4, align 4, !tbaa !50
  %10 = load ptr, ptr %7, align 8, !tbaa !101
  %11 = getelementptr inbounds nuw %struct.Hint, ptr %10, i32 0, i32 0
  store i32 %9, ptr %11, align 8, !tbaa !112
  %12 = load ptr, ptr %5, align 8, !tbaa !58
  %13 = load ptr, ptr %7, align 8, !tbaa !101
  %14 = getelementptr inbounds nuw %struct.Hint, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !148
  %15 = load ptr, ptr %6, align 8, !tbaa !83
  %16 = load ptr, ptr %7, align 8, !tbaa !101
  %17 = getelementptr inbounds nuw %struct.Hint, ptr %16, i32 0, i32 2
  store ptr %15, ptr %17, align 8, !tbaa !108
  %18 = load ptr, ptr %7, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  ret ptr %18
}

; Function Attrs: nounwind
define internal signext i32 @hintcmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !40
  store ptr %1, ptr %4, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  %7 = load ptr, ptr %3, align 8, !tbaa !40
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  store ptr %8, ptr %5, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  %9 = load ptr, ptr %4, align 8, !tbaa !40
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  store ptr %10, ptr %6, align 8, !tbaa !101
  %11 = load ptr, ptr %5, align 8, !tbaa !101
  %12 = getelementptr inbounds nuw %struct.Hint, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !112
  %14 = load ptr, ptr %6, align 8, !tbaa !101
  %15 = getelementptr inbounds nuw %struct.Hint, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8, !tbaa !112
  %17 = icmp ugt i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %59

19:                                               ; preds = %2
  %20 = load ptr, ptr %5, align 8, !tbaa !101
  %21 = getelementptr inbounds nuw %struct.Hint, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8, !tbaa !112
  %23 = load ptr, ptr %6, align 8, !tbaa !101
  %24 = getelementptr inbounds nuw %struct.Hint, ptr %23, i32 0, i32 0
  %25 = load i32, ptr %24, align 8, !tbaa !112
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %57

28:                                               ; preds = %19
  %29 = load ptr, ptr %5, align 8, !tbaa !101
  %30 = getelementptr inbounds nuw %struct.Hint, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !108
  %32 = getelementptr inbounds nuw %struct.Rule, ptr %31, i32 0, i32 0
  %33 = load i32, ptr %32, align 8, !tbaa !52
  %34 = load ptr, ptr %6, align 8, !tbaa !101
  %35 = getelementptr inbounds nuw %struct.Hint, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !108
  %37 = getelementptr inbounds nuw %struct.Rule, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 8, !tbaa !52
  %39 = icmp ugt i32 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %55

41:                                               ; preds = %28
  %42 = load ptr, ptr %5, align 8, !tbaa !101
  %43 = getelementptr inbounds nuw %struct.Hint, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !108
  %45 = getelementptr inbounds nuw %struct.Rule, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr %6, align 8, !tbaa !101
  %48 = getelementptr inbounds nuw %struct.Hint, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !108
  %50 = getelementptr inbounds nuw %struct.Rule, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8, !tbaa !52
  %52 = icmp ult i32 %46, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 -1, i32 0
  br label %55

55:                                               ; preds = %41, %40
  %56 = phi i32 [ 1, %40 ], [ %54, %41 ]
  br label %57

57:                                               ; preds = %55, %27
  %58 = phi i32 [ -1, %27 ], [ %56, %55 ]
  br label %59

59:                                               ; preds = %57, %18
  %60 = phi i32 [ 1, %18 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  ret i32 %60
}

; Function Attrs: nounwind willreturn memory(read)
declare signext i32 @strcmp(ptr noundef, ptr noundef) #6

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 _ZTS7Grammar", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS4Elem", !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"Elem", !12, i64 0, !12, i64 4, !13, i64 8, !6, i64 16}
!12 = !{!"int", !6, i64 0}
!13 = !{!"p1 _ZTS4Rule", !5, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !12, i64 56}
!16 = !{!"Production", !17, i64 0, !12, i64 8, !18, i64 16, !12, i64 56, !12, i64 60, !12, i64 60, !12, i64 60, !13, i64 64, !6, i64 72, !6, i64 136, !21, i64 200, !9, i64 208, !22, i64 216, !23, i64 224}
!17 = !{!"p1 omnipotent char", !5, i64 0}
!18 = !{!"", !12, i64 0, !12, i64 4, !19, i64 8, !6, i64 16}
!19 = !{!"p2 _ZTS4Rule", !20, i64 0}
!20 = !{!"any p2 pointer", !5, i64 0}
!21 = !{!"p1 _ZTS5State", !5, i64 0}
!22 = !{!"p1 _ZTS4Term", !5, i64 0}
!23 = !{!"p1 _ZTS10Production", !5, i64 0}
!24 = !{!25, !12, i64 8}
!25 = !{!"Grammar", !17, i64 0, !26, i64 8, !28, i64 48, !30, i64 88, !32, i64 128, !33, i64 144, !12, i64 152, !34, i64 160, !36, i64 200, !17, i64 240, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !6, i64 276, !12, i64 532, !12, i64 536, !12, i64 540, !12, i64 544, !12, i64 548, !23, i64 552, !13, i64 560, !9, i64 568, !12, i64 576, !12, i64 580, !12, i64 584, !12, i64 588}
!26 = !{!"", !12, i64 0, !12, i64 4, !27, i64 8, !6, i64 16}
!27 = !{!"p2 _ZTS10Production", !20, i64 0}
!28 = !{!"", !12, i64 0, !12, i64 4, !29, i64 8, !6, i64 16}
!29 = !{!"p2 _ZTS4Term", !20, i64 0}
!30 = !{!"", !12, i64 0, !12, i64 4, !31, i64 8, !6, i64 16}
!31 = !{!"p2 _ZTS5State", !20, i64 0}
!32 = !{!"Code", !17, i64 0, !12, i64 8}
!33 = !{!"p1 _ZTS4Code", !5, i64 0}
!34 = !{!"", !12, i64 0, !12, i64 4, !35, i64 8, !6, i64 16}
!35 = !{!"p2 _ZTS11Declaration", !20, i64 0}
!36 = !{!"", !12, i64 0, !12, i64 4, !37, i64 8, !6, i64 16}
!37 = !{!"p2 _ZTS6D_Pass", !20, i64 0}
!38 = !{!39, !12, i64 4}
!39 = !{!"Term", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !17, i64 24, !12, i64 32, !12, i64 36, !12, i64 36, !23, i64 40}
!40 = !{!5, !5, i64 0}
!41 = !{!42, !43, i64 8}
!42 = !{!"", !12, i64 0, !12, i64 4, !43, i64 8, !6, i64 16}
!43 = !{!"p2 _ZTS6Action", !20, i64 0}
!44 = !{!42, !12, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 _ZTS6Action", !5, i64 0}
!47 = !{!48, !12, i64 0}
!48 = !{!"Action", !12, i64 0, !22, i64 8, !13, i64 16, !21, i64 24, !12, i64 32, !17, i64 40}
!49 = !{!48, !22, i64 8}
!50 = !{!12, !12, i64 0}
!51 = !{!48, !13, i64 16}
!52 = !{!53, !12, i64 0}
!53 = !{!"Rule", !12, i64 0, !23, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !54, i64 32, !9, i64 72, !32, i64 80, !32, i64 96, !56, i64 112, !12, i64 152, !13, i64 160}
!54 = !{!"", !12, i64 0, !12, i64 4, !55, i64 8, !6, i64 16}
!55 = !{!"p2 _ZTS4Elem", !20, i64 0}
!56 = !{!"", !12, i64 0, !12, i64 4, !57, i64 8, !6, i64 16}
!57 = !{!"p2 _ZTS4Code", !20, i64 0}
!58 = !{!21, !21, i64 0}
!59 = !{!60, !12, i64 96}
!60 = !{!"State", !12, i64 0, !61, i64 8, !54, i64 16, !54, i64 56, !62, i64 96, !42, i64 136, !42, i64 176, !64, i64 216, !64, i64 256, !66, i64 296, !12, i64 376, !12, i64 376, !12, i64 376, !12, i64 376, !17, i64 384, !12, i64 392, !21, i64 400, !21, i64 408, !13, i64 416, !13, i64 424}
!61 = !{!"long long", !6, i64 0}
!62 = !{!"", !12, i64 0, !12, i64 4, !63, i64 8, !6, i64 16}
!63 = !{!"p2 _ZTS4Goto", !20, i64 0}
!64 = !{!"", !12, i64 0, !12, i64 4, !65, i64 8, !6, i64 16}
!65 = !{!"p2 _ZTS4Hint", !20, i64 0}
!66 = !{!"Scanner", !67, i64 0, !69, i64 40}
!67 = !{!"", !12, i64 0, !12, i64 4, !68, i64 8, !6, i64 16}
!68 = !{!"p2 _ZTS9ScanState", !20, i64 0}
!69 = !{!"", !12, i64 0, !12, i64 4, !70, i64 8, !6, i64 16}
!70 = !{!"p2 _ZTS19ScanStateTransition", !20, i64 0}
!71 = !{!60, !63, i64 104}
!72 = !{!73, !73, i64 0}
!73 = !{!"p1 _ZTS4Goto", !5, i64 0}
!74 = !{!75, !9, i64 0}
!75 = !{!"Goto", !9, i64 0, !21, i64 8}
!76 = !{!75, !21, i64 8}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!25, !12, i64 580}
!80 = !{!25, !27, i64 16}
!81 = !{!23, !23, i64 0}
!82 = !{!16, !19, i64 24}
!83 = !{!13, !13, i64 0}
!84 = !{!53, !55, i64 40}
!85 = !{!25, !12, i64 88}
!86 = !{!25, !31, i64 96}
!87 = !{!60, !12, i64 16}
!88 = !{!60, !55, i64 24}
!89 = distinct !{!89, !78}
!90 = !{!11, !13, i64 8}
!91 = !{!53, !23, i64 8}
!92 = distinct !{!92, !78}
!93 = distinct !{!93, !78}
!94 = !{!11, !12, i64 4}
!95 = !{!53, !12, i64 32}
!96 = !{!16, !13, i64 64}
!97 = distinct !{!97, !78}
!98 = distinct !{!98, !78}
!99 = !{!60, !65, i64 224}
!100 = !{!60, !12, i64 216}
!101 = !{!102, !102, i64 0}
!102 = !{!"p1 _ZTS4Hint", !5, i64 0}
!103 = distinct !{!103, !78}
!104 = distinct !{!104, !78}
!105 = !{!39, !12, i64 0}
!106 = !{!60, !12, i64 256}
!107 = !{!60, !65, i64 264}
!108 = !{!109, !13, i64 16}
!109 = !{!"Hint", !12, i64 0, !21, i64 8, !13, i64 16}
!110 = !{!39, !12, i64 32}
!111 = !{!39, !17, i64 24}
!112 = !{!109, !12, i64 0}
!113 = distinct !{!113, !78}
!114 = distinct !{!114, !78}
!115 = distinct !{!115, !78}
!116 = !{!16, !12, i64 16}
!117 = !{!53, !9, i64 72}
!118 = distinct !{!118, !78}
!119 = distinct !{!119, !78}
!120 = !{!60, !61, i64 8}
!121 = distinct !{!121, !78}
!122 = !{!16, !9, i64 208}
!123 = !{!16, !21, i64 200}
!124 = distinct !{!124, !78}
!125 = !{!25, !12, i64 48}
!126 = !{!25, !29, i64 56}
!127 = !{!22, !22, i64 0}
!128 = distinct !{!128, !78}
!129 = distinct !{!129, !78}
!130 = distinct !{!130, !78}
!131 = !{!62, !63, i64 8}
!132 = !{!62, !12, i64 0}
!133 = distinct !{!133, !78}
!134 = distinct !{!134, !78}
!135 = distinct !{!135, !78}
!136 = !{!60, !12, i64 0}
!137 = !{!60, !55, i64 64}
!138 = !{!60, !12, i64 56}
!139 = distinct !{!139, !78}
!140 = !{!60, !12, i64 176}
!141 = !{!60, !43, i64 184}
!142 = distinct !{!142, !78}
!143 = !{!60, !12, i64 136}
!144 = !{!60, !43, i64 144}
!145 = !{!48, !21, i64 24}
!146 = distinct !{!146, !78}
!147 = !{!48, !12, i64 32}
!148 = !{!109, !21, i64 8}
