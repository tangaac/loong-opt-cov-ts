; ModuleID = './MultiSource/Applications/d/CMakeFiles/make_dparser.dir/parse.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/d/parse.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.VecZNode = type { i32, i32, ptr, [3 x ptr] }
%struct.PNode = type { i32, i32, i32, i32, ptr, ptr, i32, %struct.VecPNode, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.D_ParseNode }
%struct.VecPNode = type { i32, i32, ptr, [3 x ptr] }
%struct.D_ParseNode = type { i32, %struct.d_loc_t, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.d_loc_t = type { ptr, ptr, i32, i32, i32 }
%struct.Parser = type { %struct.D_Parser, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.PNodeHash, %struct.SNodeHash, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, %struct.anon, ptr, %struct.D_Shift, ptr, ptr }
%struct.D_Parser = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.d_loc_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PNodeHash = type { ptr, i32, i32, i32, ptr }
%struct.SNodeHash = type { ptr, i32, i32, i32, ptr, ptr }
%struct.anon = type { i32, i32, ptr, [3 x ptr] }
%struct.D_Shift = type { i16, i8, i8, i32, i32, ptr }
%struct.D_ParserTables = type { i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.D_Symbol = type { i32, ptr, i32 }
%struct.SNode = type { ptr, ptr, ptr, %struct.d_loc_t, i32, ptr, %struct.VecZNode, i32, ptr, ptr }
%struct.D_Pass = type { ptr, i32, i32, i32 }
%struct.D_Reduction = type { i16, i16, ptr, ptr, i16, i16, i32, i32, i32, i32, ptr }
%struct.Reduction = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.Shift = type { ptr, ptr }
%struct.ZNode = type { ptr, %struct.VecSNode }
%struct.VecSNode = type { i32, i32, ptr, [3 x ptr] }
%struct.D_State = type { ptr, i32, %struct.anon.0, %struct.anon.1, %struct.anon.2, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, i32 }
%struct.anon.0 = type { i32, ptr }
%struct.anon.1 = type { i32, ptr }
%struct.anon.2 = type { i32, ptr }
%struct.VecVecZNode = type { i32, i32, ptr, [3 x ptr] }
%struct.D_ErrorRecoveryHint = type { i16, i16, ptr }
%struct.ShiftResult = type { ptr, %struct.d_loc_t }
%struct.StackPNode = type { ptr, ptr, ptr, [8 x ptr] }
%struct.StackInt = type { ptr, ptr, ptr, [8 x i32] }
%struct.D_RightEpsilonHint = type { i16, i16, ptr }
%struct.anon.3 = type { i32, i32, ptr, [3 x ptr] }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@prime2 = external global [0 x i32], align 4
@verbose_level = external global i32, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"unresolved ambiguity line %d file %s\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"bad pass number: %d\0A\00", align 1
@_wspace = dso_local global <{ [33 x i8], [223 x i8] }> <{ [33 x i8] c"\00\00\00\00\00\00\00\00\00\01\00\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [223 x i8] zeroinitializer }>, align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"internal error: bad final reduction\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"%d states %d scans %d shifts %d reductions %d compares %d ambiguities\0A\00", align 1
@stderr = external global ptr, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"syntax error, '%s' line %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@child_table = internal global [4 x [3 x [6 x i32]]] [[3 x [6 x i32]] [[6 x i32] [i32 1, i32 0, i32 1, i32 1, i32 0, i32 0], [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 666, i32 666], [6 x i32] [i32 1, i32 0, i32 666, i32 666, i32 1, i32 1]], [3 x [6 x i32]] [[6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 1, i32 1], [6 x i32] [i32 1, i32 0, i32 1, i32 1, i32 666, i32 666], [6 x i32] [i32 1, i32 1, i32 666, i32 666, i32 1, i32 1]], [3 x [6 x i32]] [[6 x i32] [i32 1, i32 0, i32 0, i32 666, i32 0, i32 666], [6 x i32] [i32 1, i32 0, i32 1, i32 666, i32 666, i32 666], [6 x i32] [i32 1, i32 1, i32 666, i32 666, i32 1, i32 666]], [3 x [6 x i32]] [[6 x i32] [i32 1, i32 0, i32 666, i32 0, i32 666, i32 0], [6 x i32] [i32 1, i32 1, i32 666, i32 1, i32 666, i32 666], [6 x i32] [i32 1, i32 0, i32 666, i32 666, i32 666, i32 1]]], align 4
@path1 = internal global %struct.VecZNode zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [48 x i8] c"circular parse: unable to fixup internal symbol\00", align 1

; Function Attrs: nounwind
define dso_local void @print_paren(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #9
  %5 = load ptr, ptr %2, align 8, !tbaa !3
  %6 = getelementptr inbounds nuw %struct.PNode, ptr %5, i32 0, i32 10
  %7 = load i8, ptr %6, align 1, !tbaa !8
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %89, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct.PNode, ptr %10, i32 0, i32 7
  %12 = getelementptr inbounds nuw %struct.VecPNode, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !20
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.PNode, ptr %16, i32 0, i32 7
  %18 = getelementptr inbounds nuw %struct.VecPNode, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8, !tbaa !20
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call signext i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %23

23:                                               ; preds = %21, %15
  store i32 0, ptr %3, align 4, !tbaa !21
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, ptr %3, align 4, !tbaa !21
  %26 = load ptr, ptr %2, align 8, !tbaa !3
  %27 = getelementptr inbounds nuw %struct.PNode, ptr %26, i32 0, i32 7
  %28 = getelementptr inbounds nuw %struct.VecPNode, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !20
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load ptr, ptr %2, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.PNode, ptr %32, i32 0, i32 7
  %34 = getelementptr inbounds nuw %struct.VecPNode, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = load i32, ptr %3, align 4, !tbaa !21
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !3
  call void @print_paren(ptr noundef %39)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, ptr %3, align 4, !tbaa !21
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %3, align 4, !tbaa !21
  br label %24, !llvm.loop !23

43:                                               ; preds = %24
  %44 = load ptr, ptr %2, align 8, !tbaa !3
  %45 = getelementptr inbounds nuw %struct.PNode, ptr %44, i32 0, i32 7
  %46 = getelementptr inbounds nuw %struct.VecPNode, ptr %45, i32 0, i32 0
  %47 = load i32, ptr %46, align 8, !tbaa !20
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %51

51:                                               ; preds = %49, %43
  br label %88

52:                                               ; preds = %9
  %53 = load ptr, ptr %2, align 8, !tbaa !3
  %54 = getelementptr inbounds nuw %struct.PNode, ptr %53, i32 0, i32 19
  %55 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %54, i32 0, i32 1
  %56 = getelementptr inbounds nuw %struct.d_loc_t, ptr %55, i32 0, i32 0
  %57 = load ptr, ptr %56, align 8, !tbaa !25
  %58 = load ptr, ptr %2, align 8, !tbaa !3
  %59 = getelementptr inbounds nuw %struct.PNode, ptr %58, i32 0, i32 19
  %60 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !26
  %62 = icmp ne ptr %57, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %52
  %64 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %65 = load ptr, ptr %2, align 8, !tbaa !3
  %66 = getelementptr inbounds nuw %struct.PNode, ptr %65, i32 0, i32 19
  %67 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %66, i32 0, i32 1
  %68 = getelementptr inbounds nuw %struct.d_loc_t, ptr %67, i32 0, i32 0
  %69 = load ptr, ptr %68, align 8, !tbaa !25
  store ptr %69, ptr %4, align 8, !tbaa !27
  br label %70

70:                                               ; preds = %82, %63
  %71 = load ptr, ptr %4, align 8, !tbaa !27
  %72 = load ptr, ptr %2, align 8, !tbaa !3
  %73 = getelementptr inbounds nuw %struct.PNode, ptr %72, i32 0, i32 19
  %74 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !26
  %76 = icmp ult ptr %71, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load ptr, ptr %4, align 8, !tbaa !27
  %79 = load i8, ptr %78, align 1, !tbaa !28
  %80 = sext i8 %79 to i32
  %81 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef signext %80)
  br label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %4, align 8, !tbaa !27
  %84 = getelementptr inbounds nuw i8, ptr %83, i32 1
  store ptr %84, ptr %4, align 8, !tbaa !27
  br label %70, !llvm.loop !29

85:                                               ; preds = %70
  %86 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %87

87:                                               ; preds = %85, %52
  br label %88

88:                                               ; preds = %87, %51
  br label %89

89:                                               ; preds = %88, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare signext i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local void @xprint_paren(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  %7 = load ptr, ptr %4, align 8, !tbaa !3
  %8 = getelementptr inbounds nuw %struct.PNode, ptr %7, i32 0, i32 10
  %9 = load i8, ptr %8, align 1, !tbaa !8
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %92, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !tbaa !30
  %13 = getelementptr inbounds nuw %struct.Parser, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !32
  %15 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = load ptr, ptr %4, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.PNode, ptr %17, i32 0, i32 19
  %19 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8, !tbaa !54
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.D_Symbol, ptr %16, i64 %21
  %23 = getelementptr inbounds nuw %struct.D_Symbol, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  %25 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %24)
  %26 = load ptr, ptr %4, align 8, !tbaa !3
  %27 = getelementptr inbounds nuw %struct.PNode, ptr %26, i32 0, i32 7
  %28 = getelementptr inbounds nuw %struct.VecPNode, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !20
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %11
  %32 = call signext i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %5, align 4, !tbaa !21
  br label %33

33:                                               ; preds = %50, %31
  %34 = load i32, ptr %5, align 4, !tbaa !21
  %35 = load ptr, ptr %4, align 8, !tbaa !3
  %36 = getelementptr inbounds nuw %struct.PNode, ptr %35, i32 0, i32 7
  %37 = getelementptr inbounds nuw %struct.VecPNode, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 8, !tbaa !20
  %39 = icmp ult i32 %34, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load ptr, ptr %3, align 8, !tbaa !30
  %42 = load ptr, ptr %4, align 8, !tbaa !3
  %43 = getelementptr inbounds nuw %struct.PNode, ptr %42, i32 0, i32 7
  %44 = getelementptr inbounds nuw %struct.VecPNode, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !22
  %46 = load i32, ptr %5, align 4, !tbaa !21
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !3
  call void @xprint_paren(ptr noundef %41, ptr noundef %49)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, ptr %5, align 4, !tbaa !21
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %5, align 4, !tbaa !21
  br label %33, !llvm.loop !57

53:                                               ; preds = %33
  %54 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %91

55:                                               ; preds = %11
  %56 = load ptr, ptr %4, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.PNode, ptr %56, i32 0, i32 19
  %58 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %57, i32 0, i32 1
  %59 = getelementptr inbounds nuw %struct.d_loc_t, ptr %58, i32 0, i32 0
  %60 = load ptr, ptr %59, align 8, !tbaa !25
  %61 = load ptr, ptr %4, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.PNode, ptr %61, i32 0, i32 19
  %63 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !26
  %65 = icmp ne ptr %60, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %55
  %67 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %68 = load ptr, ptr %4, align 8, !tbaa !3
  %69 = getelementptr inbounds nuw %struct.PNode, ptr %68, i32 0, i32 19
  %70 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %69, i32 0, i32 1
  %71 = getelementptr inbounds nuw %struct.d_loc_t, ptr %70, i32 0, i32 0
  %72 = load ptr, ptr %71, align 8, !tbaa !25
  store ptr %72, ptr %6, align 8, !tbaa !27
  br label %73

73:                                               ; preds = %85, %66
  %74 = load ptr, ptr %6, align 8, !tbaa !27
  %75 = load ptr, ptr %4, align 8, !tbaa !3
  %76 = getelementptr inbounds nuw %struct.PNode, ptr %75, i32 0, i32 19
  %77 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !26
  %79 = icmp ult ptr %74, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load ptr, ptr %6, align 8, !tbaa !27
  %82 = load i8, ptr %81, align 1, !tbaa !28
  %83 = sext i8 %82 to i32
  %84 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef signext %83)
  br label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %6, align 8, !tbaa !27
  %87 = getelementptr inbounds nuw i8, ptr %86, i32 1
  store ptr %87, ptr %6, align 8, !tbaa !27
  br label %73, !llvm.loop !58

88:                                               ; preds = %73
  %89 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %90

90:                                               ; preds = %88, %55
  br label %91

91:                                               ; preds = %90, %53
  br label %92

92:                                               ; preds = %91, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  ret void
}

; Function Attrs: nounwind
define dso_local void @xpp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !3
  %5 = load ptr, ptr %3, align 8, !tbaa !30
  %6 = load ptr, ptr %4, align 8, !tbaa !3
  call void @xprint_paren(ptr noundef %5, ptr noundef %6)
  %7 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.5)
  ret void
}

; Function Attrs: nounwind
define dso_local void @pp(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8, !tbaa !3
  call void @print_paren(ptr noundef %3)
  %4 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.5)
  ret void
}

; Function Attrs: nounwind
define dso_local ptr @d_get_child(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !59
  store i32 %1, ptr %5, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  %8 = load ptr, ptr %4, align 8, !tbaa !59
  %9 = sext i32 sub nsw (i32 0, i32 ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32)) to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  store ptr %10, ptr %6, align 8, !tbaa !3
  %11 = load i32, ptr %5, align 4, !tbaa !21
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr %5, align 4, !tbaa !21
  %15 = load ptr, ptr %6, align 8, !tbaa !3
  %16 = getelementptr inbounds nuw %struct.PNode, ptr %15, i32 0, i32 7
  %17 = getelementptr inbounds nuw %struct.VecPNode, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8, !tbaa !20
  %19 = icmp uge i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %2
  store ptr null, ptr %3, align 8
  store i32 1, ptr %7, align 4
  br label %31

21:                                               ; preds = %13
  %22 = load ptr, ptr %6, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct.PNode, ptr %22, i32 0, i32 7
  %24 = getelementptr inbounds nuw %struct.VecPNode, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = load i32, ptr %5, align 4, !tbaa !21
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.PNode, ptr %29, i32 0, i32 19
  store ptr %30, ptr %3, align 8
  store i32 1, ptr %7, align 4
  br label %31

31:                                               ; preds = %21, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  %32 = load ptr, ptr %3, align 8
  ret ptr %32
}

; Function Attrs: nounwind
define dso_local signext i32 @d_get_number_of_children(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  %4 = load ptr, ptr %2, align 8, !tbaa !59
  %5 = sext i32 sub nsw (i32 0, i32 ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32)) to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  store ptr %6, ptr %3, align 8, !tbaa !3
  %7 = load ptr, ptr %3, align 8, !tbaa !3
  %8 = getelementptr inbounds nuw %struct.PNode, ptr %7, i32 0, i32 7
  %9 = getelementptr inbounds nuw %struct.VecPNode, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret i32 %10
}

; Function Attrs: nounwind
define dso_local ptr @d_find_in_tree(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !59
  store i32 %1, ptr %5, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  %10 = load ptr, ptr %4, align 8, !tbaa !59
  %11 = sext i32 sub nsw (i32 0, i32 ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32)) to i64
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  store ptr %12, ptr %6, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  %13 = load ptr, ptr %6, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.PNode, ptr %13, i32 0, i32 19
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8, !tbaa !54
  %17 = load i32, ptr %5, align 4, !tbaa !21
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load ptr, ptr %4, align 8, !tbaa !59
  store ptr %20, ptr %3, align 8
  store i32 1, ptr %9, align 4
  br label %49

21:                                               ; preds = %2
  store i32 0, ptr %8, align 4, !tbaa !21
  br label %22

22:                                               ; preds = %45, %21
  %23 = load i32, ptr %8, align 4, !tbaa !21
  %24 = load ptr, ptr %6, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.PNode, ptr %24, i32 0, i32 7
  %26 = getelementptr inbounds nuw %struct.VecPNode, ptr %25, i32 0, i32 0
  %27 = load i32, ptr %26, align 8, !tbaa !20
  %28 = icmp ult i32 %23, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %22
  %30 = load ptr, ptr %6, align 8, !tbaa !3
  %31 = getelementptr inbounds nuw %struct.PNode, ptr %30, i32 0, i32 7
  %32 = getelementptr inbounds nuw %struct.VecPNode, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = load i32, ptr %8, align 4, !tbaa !21
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw %struct.PNode, ptr %37, i32 0, i32 19
  %39 = load i32, ptr %5, align 4, !tbaa !21
  %40 = call ptr @d_find_in_tree(ptr noundef %38, i32 noundef signext %39)
  store ptr %40, ptr %7, align 8, !tbaa !59
  %41 = icmp ne ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load ptr, ptr %7, align 8, !tbaa !59
  store ptr %43, ptr %3, align 8
  store i32 1, ptr %9, align 4
  br label %49

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %8, align 4, !tbaa !21
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %8, align 4, !tbaa !21
  br label %22, !llvm.loop !61

48:                                               ; preds = %22
  store ptr null, ptr %3, align 8
  store i32 1, ptr %9, align 4
  br label %49

49:                                               ; preds = %48, %42, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  %50 = load ptr, ptr %3, align 8
  ret ptr %50
}

; Function Attrs: nounwind
define dso_local ptr @d_ws_before(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !62
  store ptr %1, ptr %4, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %6 = load ptr, ptr %4, align 8, !tbaa !59
  %7 = sext i32 sub nsw (i32 0, i32 ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32)) to i64
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  store ptr %8, ptr %5, align 8, !tbaa !3
  %9 = load ptr, ptr %5, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.PNode, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret ptr %11
}

; Function Attrs: nounwind
define dso_local ptr @d_ws_after(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !62
  store ptr %1, ptr %4, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %6 = load ptr, ptr %4, align 8, !tbaa !59
  %7 = sext i32 sub nsw (i32 0, i32 ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32)) to i64
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  store ptr %8, ptr %5, align 8, !tbaa !3
  %9 = load ptr, ptr %5, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.PNode, ptr %9, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret ptr %11
}

; Function Attrs: nounwind
define dso_local ptr @find_SNode(ptr noundef %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %6, align 8, !tbaa !30
  store i32 %1, ptr %7, align 4, !tbaa !21
  store ptr %2, ptr %8, align 8, !tbaa !66
  store ptr %3, ptr %9, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  %14 = load ptr, ptr %6, align 8, !tbaa !30
  %15 = getelementptr inbounds nuw %struct.Parser, ptr %14, i32 0, i32 12
  store ptr %15, ptr %10, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #9
  %16 = load i32, ptr %7, align 4, !tbaa !21
  %17 = shl i32 %16, 12
  %18 = load ptr, ptr %8, align 8, !tbaa !66
  %19 = ptrtoint ptr %18 to i32
  %20 = add i32 %17, %19
  %21 = load ptr, ptr %9, align 8, !tbaa !67
  %22 = ptrtoint ptr %21 to i32
  %23 = add i32 %20, %22
  store i32 %23, ptr %12, align 4, !tbaa !21
  %24 = load ptr, ptr %10, align 8, !tbaa !68
  %25 = getelementptr inbounds nuw %struct.SNodeHash, ptr %24, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = icmp ne ptr %26, null
  br i1 %27, label %28, label %79

28:                                               ; preds = %4
  %29 = load ptr, ptr %10, align 8, !tbaa !68
  %30 = getelementptr inbounds nuw %struct.SNodeHash, ptr %29, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = load i32, ptr %12, align 4, !tbaa !21
  %33 = load ptr, ptr %10, align 8, !tbaa !68
  %34 = getelementptr inbounds nuw %struct.SNodeHash, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !71
  %36 = urem i32 %32, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds nuw ptr, ptr %31, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  store ptr %39, ptr %11, align 8, !tbaa !72
  br label %40

40:                                               ; preds = %74, %28
  %41 = load ptr, ptr %11, align 8, !tbaa !72
  %42 = icmp ne ptr %41, null
  br i1 %42, label %43, label %78

43:                                               ; preds = %40
  %44 = load ptr, ptr %11, align 8, !tbaa !72
  %45 = getelementptr inbounds nuw %struct.SNode, ptr %44, i32 0, i32 0
  %46 = load ptr, ptr %45, align 8, !tbaa !73
  %47 = load ptr, ptr %6, align 8, !tbaa !30
  %48 = getelementptr inbounds nuw %struct.Parser, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !32
  %50 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !77
  %52 = ptrtoint ptr %46 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 120
  %56 = load i32, ptr %7, align 4, !tbaa !21
  %57 = zext i32 %56 to i64
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %43
  %60 = load ptr, ptr %11, align 8, !tbaa !72
  %61 = getelementptr inbounds nuw %struct.SNode, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !78
  %63 = load ptr, ptr %8, align 8, !tbaa !66
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load ptr, ptr %11, align 8, !tbaa !72
  %67 = getelementptr inbounds nuw %struct.SNode, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !79
  %69 = load ptr, ptr %9, align 8, !tbaa !67
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load ptr, ptr %11, align 8, !tbaa !72
  store ptr %72, ptr %5, align 8
  store i32 1, ptr %13, align 4
  br label %80

73:                                               ; preds = %65, %59, %43
  br label %74

74:                                               ; preds = %73
  %75 = load ptr, ptr %11, align 8, !tbaa !72
  %76 = getelementptr inbounds nuw %struct.SNode, ptr %75, i32 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !80
  store ptr %77, ptr %11, align 8, !tbaa !72
  br label %40, !llvm.loop !81

78:                                               ; preds = %40
  br label %79

79:                                               ; preds = %78, %4
  store ptr null, ptr %5, align 8
  store i32 1, ptr %13, align 4
  br label %80

80:                                               ; preds = %79, %71
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  %81 = load ptr, ptr %5, align 8
  ret ptr %81
}

; Function Attrs: nounwind
define dso_local void @insert_SNode_internal(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %11 = load ptr, ptr %3, align 8, !tbaa !30
  %12 = getelementptr inbounds nuw %struct.Parser, ptr %11, i32 0, i32 12
  store ptr %12, ptr %5, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !72
  %14 = getelementptr inbounds nuw %struct.SNode, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = load ptr, ptr %3, align 8, !tbaa !30
  %17 = getelementptr inbounds nuw %struct.Parser, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !32
  %19 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !77
  %21 = ptrtoint ptr %15 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 120
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 12
  %27 = load ptr, ptr %4, align 8, !tbaa !72
  %28 = getelementptr inbounds nuw %struct.SNode, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  %30 = ptrtoint ptr %29 to i32
  %31 = add i32 %26, %30
  %32 = load ptr, ptr %4, align 8, !tbaa !72
  %33 = getelementptr inbounds nuw %struct.SNode, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !79
  %35 = ptrtoint ptr %34 to i32
  %36 = add i32 %31, %35
  store i32 %36, ptr %6, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  %37 = load ptr, ptr %5, align 8, !tbaa !68
  %38 = getelementptr inbounds nuw %struct.SNodeHash, ptr %37, i32 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !82
  %40 = add i32 %39, 1
  %41 = load ptr, ptr %5, align 8, !tbaa !68
  %42 = getelementptr inbounds nuw %struct.SNodeHash, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !71
  %44 = icmp ugt i32 %40, %43
  br i1 %44, label %45, label %112

45:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  %46 = load ptr, ptr %5, align 8, !tbaa !68
  %47 = getelementptr inbounds nuw %struct.SNodeHash, ptr %46, i32 0, i32 0
  %48 = load ptr, ptr %47, align 8, !tbaa !70
  store ptr %48, ptr %9, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #9
  %49 = load ptr, ptr %5, align 8, !tbaa !68
  %50 = getelementptr inbounds nuw %struct.SNodeHash, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !71
  store i32 %51, ptr %10, align 4, !tbaa !21
  %52 = load ptr, ptr %5, align 8, !tbaa !68
  %53 = getelementptr inbounds nuw %struct.SNodeHash, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !84
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 8, !tbaa !84
  %56 = load ptr, ptr %5, align 8, !tbaa !68
  %57 = getelementptr inbounds nuw %struct.SNodeHash, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !84
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw [0 x i32], ptr @prime2, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !21
  %62 = load ptr, ptr %5, align 8, !tbaa !68
  %63 = getelementptr inbounds nuw %struct.SNodeHash, ptr %62, i32 0, i32 2
  store i32 %61, ptr %63, align 4, !tbaa !71
  %64 = load ptr, ptr %5, align 8, !tbaa !68
  %65 = getelementptr inbounds nuw %struct.SNodeHash, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !71
  %67 = zext i32 %66 to i64
  %68 = mul i64 %67, 8
  %69 = call noalias ptr @malloc(i64 noundef %68) #10
  %70 = load ptr, ptr %5, align 8, !tbaa !68
  %71 = getelementptr inbounds nuw %struct.SNodeHash, ptr %70, i32 0, i32 0
  store ptr %69, ptr %71, align 8, !tbaa !70
  %72 = load ptr, ptr %5, align 8, !tbaa !68
  %73 = getelementptr inbounds nuw %struct.SNodeHash, ptr %72, i32 0, i32 0
  %74 = load ptr, ptr %73, align 8, !tbaa !70
  %75 = load ptr, ptr %5, align 8, !tbaa !68
  %76 = getelementptr inbounds nuw %struct.SNodeHash, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !71
  %78 = zext i32 %77 to i64
  %79 = mul i64 %78, 8
  call void @llvm.memset.p0.i64(ptr align 8 %74, i8 0, i64 %79, i1 false)
  store i32 0, ptr %7, align 4, !tbaa !21
  br label %80

80:                                               ; preds = %107, %45
  %81 = load i32, ptr %7, align 4, !tbaa !21
  %82 = load i32, ptr %10, align 4, !tbaa !21
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %92, %84
  %86 = load ptr, ptr %9, align 8, !tbaa !83
  %87 = load i32, ptr %7, align 4, !tbaa !21
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds nuw ptr, ptr %86, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !72
  store ptr %90, ptr %8, align 8, !tbaa !72
  %91 = icmp ne ptr %90, null
  br i1 %91, label %92, label %106

92:                                               ; preds = %85
  %93 = load ptr, ptr %9, align 8, !tbaa !83
  %94 = load i32, ptr %7, align 4, !tbaa !21
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds nuw ptr, ptr %93, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !72
  %98 = getelementptr inbounds nuw %struct.SNode, ptr %97, i32 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !80
  %100 = load ptr, ptr %9, align 8, !tbaa !83
  %101 = load i32, ptr %7, align 4, !tbaa !21
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds nuw ptr, ptr %100, i64 %102
  store ptr %99, ptr %103, align 8, !tbaa !72
  %104 = load ptr, ptr %3, align 8, !tbaa !30
  %105 = load ptr, ptr %8, align 8, !tbaa !72
  call void @insert_SNode_internal(ptr noundef %104, ptr noundef %105)
  br label %85, !llvm.loop !85

106:                                              ; preds = %85
  br label %107

107:                                              ; preds = %106
  %108 = load i32, ptr %7, align 4, !tbaa !21
  %109 = add i32 %108, 1
  store i32 %109, ptr %7, align 4, !tbaa !21
  br label %80, !llvm.loop !86

110:                                              ; preds = %80
  %111 = load ptr, ptr %9, align 8, !tbaa !83
  call void @free(ptr noundef %111) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  br label %112

112:                                              ; preds = %110, %2
  %113 = load ptr, ptr %5, align 8, !tbaa !68
  %114 = getelementptr inbounds nuw %struct.SNodeHash, ptr %113, i32 0, i32 0
  %115 = load ptr, ptr %114, align 8, !tbaa !70
  %116 = load i32, ptr %6, align 4, !tbaa !21
  %117 = load ptr, ptr %5, align 8, !tbaa !68
  %118 = getelementptr inbounds nuw %struct.SNodeHash, ptr %117, i32 0, i32 2
  %119 = load i32, ptr %118, align 4, !tbaa !71
  %120 = urem i32 %116, %119
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds nuw ptr, ptr %115, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !72
  %124 = load ptr, ptr %4, align 8, !tbaa !72
  %125 = getelementptr inbounds nuw %struct.SNode, ptr %124, i32 0, i32 8
  store ptr %123, ptr %125, align 8, !tbaa !80
  %126 = load ptr, ptr %4, align 8, !tbaa !72
  %127 = load ptr, ptr %5, align 8, !tbaa !68
  %128 = getelementptr inbounds nuw %struct.SNodeHash, ptr %127, i32 0, i32 0
  %129 = load ptr, ptr %128, align 8, !tbaa !70
  %130 = load i32, ptr %6, align 4, !tbaa !21
  %131 = load ptr, ptr %5, align 8, !tbaa !68
  %132 = getelementptr inbounds nuw %struct.SNodeHash, ptr %131, i32 0, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !71
  %134 = urem i32 %130, %133
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds nuw ptr, ptr %129, i64 %135
  store ptr %126, ptr %136, align 8, !tbaa !72
  %137 = load ptr, ptr %5, align 8, !tbaa !68
  %138 = getelementptr inbounds nuw %struct.SNodeHash, ptr %137, i32 0, i32 3
  %139 = load i32, ptr %138, align 8, !tbaa !82
  %140 = add i32 %139, 1
  store i32 %140, ptr %138, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind
define dso_local ptr @find_PNode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %8, align 8, !tbaa !30
  store ptr %1, ptr %9, align 8, !tbaa !27
  store ptr %2, ptr %10, align 8, !tbaa !27
  store i32 %3, ptr %11, align 4, !tbaa !21
  store ptr %4, ptr %12, align 8, !tbaa !66
  store ptr %5, ptr %13, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #9
  %18 = load ptr, ptr %8, align 8, !tbaa !30
  %19 = getelementptr inbounds nuw %struct.Parser, ptr %18, i32 0, i32 11
  store ptr %19, ptr %14, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #9
  %20 = load ptr, ptr %9, align 8, !tbaa !27
  %21 = ptrtoint ptr %20 to i32
  %22 = shl i32 %21, 8
  %23 = load ptr, ptr %10, align 8, !tbaa !27
  %24 = ptrtoint ptr %23 to i32
  %25 = shl i32 %24, 16
  %26 = add i32 %22, %25
  %27 = load i32, ptr %11, align 4, !tbaa !21
  %28 = add i32 %26, %27
  %29 = load ptr, ptr %12, align 8, !tbaa !66
  %30 = ptrtoint ptr %29 to i32
  %31 = add i32 %28, %30
  %32 = load ptr, ptr %13, align 8, !tbaa !67
  %33 = ptrtoint ptr %32 to i32
  %34 = add i32 %31, %33
  store i32 %34, ptr %16, align 4, !tbaa !21
  %35 = load ptr, ptr %14, align 8, !tbaa !87
  %36 = getelementptr inbounds nuw %struct.PNodeHash, ptr %35, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8, !tbaa !89
  %38 = icmp ne ptr %37, null
  br i1 %38, label %39, label %96

39:                                               ; preds = %6
  %40 = load ptr, ptr %14, align 8, !tbaa !87
  %41 = getelementptr inbounds nuw %struct.PNodeHash, ptr %40, i32 0, i32 0
  %42 = load ptr, ptr %41, align 8, !tbaa !89
  %43 = load i32, ptr %16, align 4, !tbaa !21
  %44 = load ptr, ptr %14, align 8, !tbaa !87
  %45 = getelementptr inbounds nuw %struct.PNodeHash, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !90
  %47 = urem i32 %43, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds nuw ptr, ptr %42, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !3
  store ptr %50, ptr %15, align 8, !tbaa !3
  br label %51

51:                                               ; preds = %91, %39
  %52 = load ptr, ptr %15, align 8, !tbaa !3
  %53 = icmp ne ptr %52, null
  br i1 %53, label %54, label %95

54:                                               ; preds = %51
  %55 = load ptr, ptr %15, align 8, !tbaa !3
  %56 = getelementptr inbounds nuw %struct.PNode, ptr %55, i32 0, i32 19
  %57 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %56, i32 0, i32 0
  %58 = load i32, ptr %57, align 8, !tbaa !54
  %59 = load i32, ptr %11, align 4, !tbaa !21
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %54
  %62 = load ptr, ptr %15, align 8, !tbaa !3
  %63 = getelementptr inbounds nuw %struct.PNode, ptr %62, i32 0, i32 19
  %64 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %63, i32 0, i32 1
  %65 = getelementptr inbounds nuw %struct.d_loc_t, ptr %64, i32 0, i32 0
  %66 = load ptr, ptr %65, align 8, !tbaa !25
  %67 = load ptr, ptr %9, align 8, !tbaa !27
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %61
  %70 = load ptr, ptr %15, align 8, !tbaa !3
  %71 = getelementptr inbounds nuw %struct.PNode, ptr %70, i32 0, i32 19
  %72 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !26
  %74 = load ptr, ptr %10, align 8, !tbaa !27
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %69
  %77 = load ptr, ptr %15, align 8, !tbaa !3
  %78 = getelementptr inbounds nuw %struct.PNode, ptr %77, i32 0, i32 17
  %79 = load ptr, ptr %78, align 8, !tbaa !91
  %80 = load ptr, ptr %12, align 8, !tbaa !66
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load ptr, ptr %15, align 8, !tbaa !3
  %84 = getelementptr inbounds nuw %struct.PNode, ptr %83, i32 0, i32 18
  %85 = load ptr, ptr %84, align 8, !tbaa !92
  %86 = load ptr, ptr %13, align 8, !tbaa !67
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load ptr, ptr %15, align 8, !tbaa !3
  store ptr %89, ptr %7, align 8
  store i32 1, ptr %17, align 4
  br label %97

90:                                               ; preds = %82, %76, %69, %61, %54
  br label %91

91:                                               ; preds = %90
  %92 = load ptr, ptr %15, align 8, !tbaa !3
  %93 = getelementptr inbounds nuw %struct.PNode, ptr %92, i32 0, i32 12
  %94 = load ptr, ptr %93, align 8, !tbaa !93
  store ptr %94, ptr %15, align 8, !tbaa !3
  br label %51, !llvm.loop !94

95:                                               ; preds = %51
  br label %96

96:                                               ; preds = %95, %6
  store ptr null, ptr %7, align 8
  store i32 1, ptr %17, align 4
  br label %97

97:                                               ; preds = %96, %88
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #9
  %98 = load ptr, ptr %7, align 8
  ret ptr %98
}

; Function Attrs: nounwind
define dso_local void @insert_PNode_internal(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %11 = load ptr, ptr %3, align 8, !tbaa !30
  %12 = getelementptr inbounds nuw %struct.Parser, ptr %11, i32 0, i32 11
  store ptr %12, ptr %5, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.PNode, ptr %13, i32 0, i32 19
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 1
  %16 = getelementptr inbounds nuw %struct.d_loc_t, ptr %15, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = ptrtoint ptr %17 to i32
  %19 = shl i32 %18, 8
  %20 = load ptr, ptr %4, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.PNode, ptr %20, i32 0, i32 19
  %22 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !26
  %24 = ptrtoint ptr %23 to i32
  %25 = shl i32 %24, 16
  %26 = add i32 %19, %25
  %27 = load ptr, ptr %4, align 8, !tbaa !3
  %28 = getelementptr inbounds nuw %struct.PNode, ptr %27, i32 0, i32 19
  %29 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8, !tbaa !54
  %31 = add i32 %26, %30
  %32 = load ptr, ptr %4, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.PNode, ptr %32, i32 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !91
  %35 = ptrtoint ptr %34 to i32
  %36 = add i32 %31, %35
  %37 = load ptr, ptr %4, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw %struct.PNode, ptr %37, i32 0, i32 18
  %39 = load ptr, ptr %38, align 8, !tbaa !92
  %40 = ptrtoint ptr %39 to i32
  %41 = add i32 %36, %40
  store i32 %41, ptr %6, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  %42 = load ptr, ptr %5, align 8, !tbaa !87
  %43 = getelementptr inbounds nuw %struct.PNodeHash, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !95
  %45 = add i32 %44, 1
  %46 = load ptr, ptr %5, align 8, !tbaa !87
  %47 = getelementptr inbounds nuw %struct.PNodeHash, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !90
  %49 = icmp ugt i32 %45, %48
  br i1 %49, label %50, label %117

50:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  %51 = load ptr, ptr %5, align 8, !tbaa !87
  %52 = getelementptr inbounds nuw %struct.PNodeHash, ptr %51, i32 0, i32 0
  %53 = load ptr, ptr %52, align 8, !tbaa !89
  store ptr %53, ptr %9, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #9
  %54 = load ptr, ptr %5, align 8, !tbaa !87
  %55 = getelementptr inbounds nuw %struct.PNodeHash, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !90
  store i32 %56, ptr %10, align 4, !tbaa !21
  %57 = load ptr, ptr %5, align 8, !tbaa !87
  %58 = getelementptr inbounds nuw %struct.PNodeHash, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !97
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !97
  %61 = load ptr, ptr %5, align 8, !tbaa !87
  %62 = getelementptr inbounds nuw %struct.PNodeHash, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !97
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds nuw [0 x i32], ptr @prime2, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !21
  %67 = load ptr, ptr %5, align 8, !tbaa !87
  %68 = getelementptr inbounds nuw %struct.PNodeHash, ptr %67, i32 0, i32 2
  store i32 %66, ptr %68, align 4, !tbaa !90
  %69 = load ptr, ptr %5, align 8, !tbaa !87
  %70 = getelementptr inbounds nuw %struct.PNodeHash, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !90
  %72 = zext i32 %71 to i64
  %73 = mul i64 %72, 8
  %74 = call noalias ptr @malloc(i64 noundef %73) #10
  %75 = load ptr, ptr %5, align 8, !tbaa !87
  %76 = getelementptr inbounds nuw %struct.PNodeHash, ptr %75, i32 0, i32 0
  store ptr %74, ptr %76, align 8, !tbaa !89
  %77 = load ptr, ptr %5, align 8, !tbaa !87
  %78 = getelementptr inbounds nuw %struct.PNodeHash, ptr %77, i32 0, i32 0
  %79 = load ptr, ptr %78, align 8, !tbaa !89
  %80 = load ptr, ptr %5, align 8, !tbaa !87
  %81 = getelementptr inbounds nuw %struct.PNodeHash, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !90
  %83 = zext i32 %82 to i64
  %84 = mul i64 %83, 8
  call void @llvm.memset.p0.i64(ptr align 8 %79, i8 0, i64 %84, i1 false)
  store i32 0, ptr %7, align 4, !tbaa !21
  br label %85

85:                                               ; preds = %112, %50
  %86 = load i32, ptr %7, align 4, !tbaa !21
  %87 = load i32, ptr %10, align 4, !tbaa !21
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %97, %89
  %91 = load ptr, ptr %9, align 8, !tbaa !96
  %92 = load i32, ptr %7, align 4, !tbaa !21
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds nuw ptr, ptr %91, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !3
  store ptr %95, ptr %8, align 8, !tbaa !3
  %96 = icmp ne ptr %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %90
  %98 = load ptr, ptr %9, align 8, !tbaa !96
  %99 = load i32, ptr %7, align 4, !tbaa !21
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds nuw ptr, ptr %98, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !3
  %103 = getelementptr inbounds nuw %struct.PNode, ptr %102, i32 0, i32 12
  %104 = load ptr, ptr %103, align 8, !tbaa !93
  %105 = load ptr, ptr %9, align 8, !tbaa !96
  %106 = load i32, ptr %7, align 4, !tbaa !21
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds nuw ptr, ptr %105, i64 %107
  store ptr %104, ptr %108, align 8, !tbaa !3
  %109 = load ptr, ptr %3, align 8, !tbaa !30
  %110 = load ptr, ptr %8, align 8, !tbaa !3
  call void @insert_PNode_internal(ptr noundef %109, ptr noundef %110)
  br label %90, !llvm.loop !98

111:                                              ; preds = %90
  br label %112

112:                                              ; preds = %111
  %113 = load i32, ptr %7, align 4, !tbaa !21
  %114 = add i32 %113, 1
  store i32 %114, ptr %7, align 4, !tbaa !21
  br label %85, !llvm.loop !99

115:                                              ; preds = %85
  %116 = load ptr, ptr %9, align 8, !tbaa !96
  call void @free(ptr noundef %116) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  br label %117

117:                                              ; preds = %115, %2
  %118 = load ptr, ptr %5, align 8, !tbaa !87
  %119 = getelementptr inbounds nuw %struct.PNodeHash, ptr %118, i32 0, i32 0
  %120 = load ptr, ptr %119, align 8, !tbaa !89
  %121 = load i32, ptr %6, align 4, !tbaa !21
  %122 = load ptr, ptr %5, align 8, !tbaa !87
  %123 = getelementptr inbounds nuw %struct.PNodeHash, ptr %122, i32 0, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !90
  %125 = urem i32 %121, %124
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds nuw ptr, ptr %120, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !3
  %129 = load ptr, ptr %4, align 8, !tbaa !3
  %130 = getelementptr inbounds nuw %struct.PNode, ptr %129, i32 0, i32 12
  store ptr %128, ptr %130, align 8, !tbaa !93
  %131 = load ptr, ptr %4, align 8, !tbaa !3
  %132 = load ptr, ptr %5, align 8, !tbaa !87
  %133 = getelementptr inbounds nuw %struct.PNodeHash, ptr %132, i32 0, i32 0
  %134 = load ptr, ptr %133, align 8, !tbaa !89
  %135 = load i32, ptr %6, align 4, !tbaa !21
  %136 = load ptr, ptr %5, align 8, !tbaa !87
  %137 = getelementptr inbounds nuw %struct.PNodeHash, ptr %136, i32 0, i32 2
  %138 = load i32, ptr %137, align 4, !tbaa !90
  %139 = urem i32 %135, %138
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds nuw ptr, ptr %134, i64 %140
  store ptr %131, ptr %141, align 8, !tbaa !3
  %142 = load ptr, ptr %5, align 8, !tbaa !87
  %143 = getelementptr inbounds nuw %struct.PNodeHash, ptr %142, i32 0, i32 3
  %144 = load i32, ptr %143, align 8, !tbaa !95
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_D_ParseTreeBelow(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !62
  store ptr %1, ptr %4, align 8, !tbaa !59
  %5 = load ptr, ptr %3, align 8, !tbaa !62
  %6 = load ptr, ptr %4, align 8, !tbaa !59
  %7 = sext i32 ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32) to i64
  %8 = sub i64 0, %7
  %9 = getelementptr inbounds i8, ptr %6, i64 %8
  call void @free_ParseTreeBelow(ptr noundef %5, ptr noundef %9)
  ret void
}

; Function Attrs: nounwind
define internal void @free_ParseTreeBelow(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  store i32 0, ptr %5, align 4, !tbaa !21
  br label %7

7:                                                ; preds = %41, %2
  %8 = load i32, ptr %5, align 4, !tbaa !21
  %9 = load ptr, ptr %4, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.PNode, ptr %9, i32 0, i32 7
  %11 = getelementptr inbounds nuw %struct.VecPNode, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8, !tbaa !20
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr %4, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.PNode, ptr %16, i32 0, i32 7
  %18 = getelementptr inbounds nuw %struct.VecPNode, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = load i32, ptr %5, align 4, !tbaa !21
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.PNode, ptr %23, i32 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !100
  %26 = add i32 %25, -1
  store i32 %26, ptr %24, align 8, !tbaa !100
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %15
  %29 = load ptr, ptr %3, align 8, !tbaa !30
  %30 = load ptr, ptr %4, align 8, !tbaa !3
  %31 = getelementptr inbounds nuw %struct.PNode, ptr %30, i32 0, i32 7
  %32 = getelementptr inbounds nuw %struct.VecPNode, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = load i32, ptr %5, align 4, !tbaa !21
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !3
  call void @free_PNode(ptr noundef %29, ptr noundef %37)
  br label %38

38:                                               ; preds = %28, %15
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr %5, align 4, !tbaa !21
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %5, align 4, !tbaa !21
  br label %7, !llvm.loop !101

44:                                               ; preds = %7
  br label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %4, align 8, !tbaa !3
  %47 = getelementptr inbounds nuw %struct.PNode, ptr %46, i32 0, i32 7
  %48 = getelementptr inbounds nuw %struct.VecPNode, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  %50 = icmp ne ptr %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load ptr, ptr %4, align 8, !tbaa !3
  %53 = getelementptr inbounds nuw %struct.PNode, ptr %52, i32 0, i32 7
  %54 = getelementptr inbounds nuw %struct.VecPNode, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  %56 = load ptr, ptr %4, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.PNode, ptr %56, i32 0, i32 7
  %58 = getelementptr inbounds nuw %struct.VecPNode, ptr %57, i32 0, i32 3
  %59 = getelementptr inbounds [3 x ptr], ptr %58, i64 0, i64 0
  %60 = icmp ne ptr %55, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load ptr, ptr %4, align 8, !tbaa !3
  %63 = getelementptr inbounds nuw %struct.PNode, ptr %62, i32 0, i32 7
  %64 = getelementptr inbounds nuw %struct.VecPNode, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !22
  call void @free(ptr noundef %65) #9
  br label %66

66:                                               ; preds = %61, %51, %45
  br label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr %4, align 8, !tbaa !3
  %69 = getelementptr inbounds nuw %struct.PNode, ptr %68, i32 0, i32 7
  %70 = getelementptr inbounds nuw %struct.VecPNode, ptr %69, i32 0, i32 0
  store i32 0, ptr %70, align 8, !tbaa !20
  %71 = load ptr, ptr %4, align 8, !tbaa !3
  %72 = getelementptr inbounds nuw %struct.PNode, ptr %71, i32 0, i32 7
  %73 = getelementptr inbounds nuw %struct.VecPNode, ptr %72, i32 0, i32 2
  store ptr null, ptr %73, align 8, !tbaa !22
  br label %74

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = load ptr, ptr %4, align 8, !tbaa !3
  %79 = getelementptr inbounds nuw %struct.PNode, ptr %78, i32 0, i32 13
  %80 = load ptr, ptr %79, align 8, !tbaa !102
  store ptr %80, ptr %6, align 8, !tbaa !3
  %81 = icmp ne ptr %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load ptr, ptr %4, align 8, !tbaa !3
  %84 = getelementptr inbounds nuw %struct.PNode, ptr %83, i32 0, i32 13
  store ptr null, ptr %84, align 8, !tbaa !102
  %85 = load ptr, ptr %3, align 8, !tbaa !30
  %86 = load ptr, ptr %6, align 8, !tbaa !3
  call void @free_PNode(ptr noundef %85, ptr noundef %86)
  br label %87

87:                                               ; preds = %82, %77
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  ret void
}

; Function Attrs: nounwind
define dso_local ptr @ambiguity_count_fn(ptr noundef %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !62
  store i32 %1, ptr %5, align 4, !tbaa !21
  store ptr %2, ptr %6, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  %8 = load ptr, ptr %4, align 8, !tbaa !62
  store ptr %8, ptr %7, align 8, !tbaa !30
  %9 = load i32, ptr %5, align 4, !tbaa !21
  %10 = sub nsw i32 %9, 1
  %11 = load ptr, ptr %7, align 8, !tbaa !30
  %12 = getelementptr inbounds nuw %struct.Parser, ptr %11, i32 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !105
  %14 = add nsw i32 %13, %10
  store i32 %14, ptr %12, align 8, !tbaa !105
  %15 = load ptr, ptr %6, align 8, !tbaa !103
  %16 = getelementptr inbounds ptr, ptr %15, i64 0
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  ret ptr %17
}

; Function Attrs: nounwind
define dso_local ptr @ambiguity_abort_fn(ptr noundef %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !62
  store i32 %1, ptr %5, align 4, !tbaa !21
  store ptr %2, ptr %6, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  %8 = load i32, ptr @verbose_level, align 4, !tbaa !21
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %3
  store i32 0, ptr %7, align 4, !tbaa !21
  br label %11

11:                                               ; preds = %24, %10
  %12 = load i32, ptr %7, align 4, !tbaa !21
  %13 = load i32, ptr %5, align 4, !tbaa !21
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 8, !tbaa !103
  %17 = load i32, ptr %7, align 4, !tbaa !21
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = sext i32 sub nsw (i32 0, i32 ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32)) to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  call void @print_paren(ptr noundef %22)
  %23 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, ptr %7, align 4, !tbaa !21
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %7, align 4, !tbaa !21
  br label %11, !llvm.loop !106

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27, %3
  %29 = load ptr, ptr %6, align 8, !tbaa !103
  %30 = getelementptr inbounds ptr, ptr %29, i64 0
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %31, i32 0, i32 1
  %33 = getelementptr inbounds nuw %struct.d_loc_t, ptr %32, i32 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !107
  %35 = load ptr, ptr %6, align 8, !tbaa !103
  %36 = getelementptr inbounds ptr, ptr %35, i64 0
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  %38 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %37, i32 0, i32 1
  %39 = getelementptr inbounds nuw %struct.d_loc_t, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !108
  call void (ptr, ...) @d_fail(ptr noundef @.str.6, i32 noundef signext %34, ptr noundef %40)
  %41 = load ptr, ptr %6, align 8, !tbaa !103
  %42 = getelementptr inbounds ptr, ptr %41, i64 0
  %43 = load ptr, ptr %42, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  ret ptr %43
}

declare void @d_fail(ptr noundef, ...) #2

; Function Attrs: nounwind
define dso_local void @d_pass(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !62
  store ptr %1, ptr %5, align 8, !tbaa !59
  store i32 %2, ptr %6, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  %10 = load ptr, ptr %5, align 8, !tbaa !59
  %11 = sext i32 sub nsw (i32 0, i32 ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32)) to i64
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  store ptr %12, ptr %7, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !62
  store ptr %13, ptr %8, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  %14 = load i32, ptr %6, align 4, !tbaa !21
  %15 = load ptr, ptr %8, align 8, !tbaa !30
  %16 = getelementptr inbounds nuw %struct.Parser, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !32
  %18 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %17, i32 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !109
  %20 = icmp uge i32 %14, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, ptr %6, align 4, !tbaa !21
  call void (ptr, ...) @d_fail(ptr noundef @.str.7, i32 noundef signext %22)
  br label %23

23:                                               ; preds = %21, %3
  %24 = load ptr, ptr %8, align 8, !tbaa !30
  %25 = getelementptr inbounds nuw %struct.Parser, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !32
  %27 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %26, i32 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !110
  %29 = load i32, ptr %6, align 4, !tbaa !21
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.D_Pass, ptr %28, i64 %30
  store ptr %31, ptr %9, align 8, !tbaa !111
  %32 = load ptr, ptr %9, align 8, !tbaa !111
  %33 = getelementptr inbounds nuw %struct.D_Pass, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !112
  %35 = and i32 %34, 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %23
  %38 = load ptr, ptr %8, align 8, !tbaa !30
  %39 = load ptr, ptr %9, align 8, !tbaa !111
  %40 = load ptr, ptr %7, align 8, !tbaa !3
  call void @pass_call(ptr noundef %38, ptr noundef %39, ptr noundef %40)
  br label %63

41:                                               ; preds = %23
  %42 = load ptr, ptr %9, align 8, !tbaa !111
  %43 = getelementptr inbounds nuw %struct.D_Pass, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !112
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load ptr, ptr %8, align 8, !tbaa !30
  %49 = load ptr, ptr %9, align 8, !tbaa !111
  %50 = load ptr, ptr %7, align 8, !tbaa !3
  call void @pass_preorder(ptr noundef %48, ptr noundef %49, ptr noundef %50)
  br label %62

51:                                               ; preds = %41
  %52 = load ptr, ptr %9, align 8, !tbaa !111
  %53 = getelementptr inbounds nuw %struct.D_Pass, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !112
  %55 = and i32 %54, 2
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load ptr, ptr %8, align 8, !tbaa !30
  %59 = load ptr, ptr %9, align 8, !tbaa !111
  %60 = load ptr, ptr %7, align 8, !tbaa !3
  call void @pass_postorder(ptr noundef %58, ptr noundef %59, ptr noundef %60)
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %47
  br label %63

63:                                               ; preds = %62, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  ret void
}

; Function Attrs: nounwind
define internal void @pass_call(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !30
  store ptr %1, ptr %5, align 8, !tbaa !111
  store ptr %2, ptr %6, align 8, !tbaa !3
  %7 = load ptr, ptr %6, align 8, !tbaa !3
  %8 = getelementptr inbounds nuw %struct.PNode, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %58

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.PNode, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = getelementptr inbounds nuw %struct.D_Reduction, ptr %14, i32 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !115
  %17 = load ptr, ptr %5, align 8, !tbaa !111
  %18 = getelementptr inbounds nuw %struct.D_Pass, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !117
  %20 = icmp ugt i32 %16, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %11
  %22 = load ptr, ptr %6, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct.PNode, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !114
  %25 = getelementptr inbounds nuw %struct.D_Reduction, ptr %24, i32 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !118
  %27 = load ptr, ptr %5, align 8, !tbaa !111
  %28 = getelementptr inbounds nuw %struct.D_Pass, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !117
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw ptr, ptr %26, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !67
  %33 = icmp ne ptr %32, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %21
  %35 = load ptr, ptr %6, align 8, !tbaa !3
  %36 = getelementptr inbounds nuw %struct.PNode, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !114
  %38 = getelementptr inbounds nuw %struct.D_Reduction, ptr %37, i32 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !118
  %40 = load ptr, ptr %5, align 8, !tbaa !111
  %41 = getelementptr inbounds nuw %struct.D_Pass, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !117
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw ptr, ptr %39, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !67
  %46 = load ptr, ptr %6, align 8, !tbaa !3
  %47 = load ptr, ptr %6, align 8, !tbaa !3
  %48 = getelementptr inbounds nuw %struct.PNode, ptr %47, i32 0, i32 7
  %49 = getelementptr inbounds nuw %struct.VecPNode, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !22
  %51 = getelementptr inbounds ptr, ptr %50, i64 0
  %52 = load ptr, ptr %6, align 8, !tbaa !3
  %53 = getelementptr inbounds nuw %struct.PNode, ptr %52, i32 0, i32 7
  %54 = getelementptr inbounds nuw %struct.VecPNode, ptr %53, i32 0, i32 0
  %55 = load i32, ptr %54, align 8, !tbaa !20
  %56 = load ptr, ptr %4, align 8, !tbaa !30
  %57 = call signext i32 %45(ptr noundef %46, ptr noundef %51, i32 noundef signext %55, i32 noundef signext ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32), ptr noundef %56)
  br label %58

58:                                               ; preds = %34, %21, %11, %3
  ret void
}

; Function Attrs: nounwind
define internal void @pass_preorder(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !30
  store ptr %1, ptr %5, align 8, !tbaa !111
  store ptr %2, ptr %6, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  %9 = load ptr, ptr %6, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.PNode, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !114
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load ptr, ptr %6, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.PNode, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = getelementptr inbounds nuw %struct.D_Reduction, ptr %16, i32 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !115
  %19 = load ptr, ptr %5, align 8, !tbaa !111
  %20 = getelementptr inbounds nuw %struct.D_Pass, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !117
  %22 = icmp ugt i32 %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %13
  %24 = load ptr, ptr %6, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.PNode, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !114
  %27 = getelementptr inbounds nuw %struct.D_Reduction, ptr %26, i32 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !118
  %29 = load ptr, ptr %5, align 8, !tbaa !111
  %30 = getelementptr inbounds nuw %struct.D_Pass, ptr %29, i32 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !117
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds nuw ptr, ptr %28, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = icmp ne ptr %34, null
  br label %36

36:                                               ; preds = %23, %13, %3
  %37 = phi i1 [ false, %13 ], [ false, %3 ], [ %35, %23 ]
  %38 = zext i1 %37 to i32
  store i32 %38, ptr %7, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  %39 = load ptr, ptr %4, align 8, !tbaa !30
  %40 = load ptr, ptr %5, align 8, !tbaa !111
  %41 = load ptr, ptr %6, align 8, !tbaa !3
  call void @pass_call(ptr noundef %39, ptr noundef %40, ptr noundef %41)
  %42 = load ptr, ptr %5, align 8, !tbaa !111
  %43 = getelementptr inbounds nuw %struct.D_Pass, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !112
  %45 = and i32 %44, 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %36
  %48 = load ptr, ptr %5, align 8, !tbaa !111
  %49 = getelementptr inbounds nuw %struct.D_Pass, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !112
  %51 = and i32 %50, 16
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %47
  %54 = load i32, ptr %7, align 4, !tbaa !21
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %53, %36
  store i32 0, ptr %8, align 4, !tbaa !21
  br label %57

57:                                               ; preds = %75, %56
  %58 = load i32, ptr %8, align 4, !tbaa !21
  %59 = load ptr, ptr %6, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.PNode, ptr %59, i32 0, i32 7
  %61 = getelementptr inbounds nuw %struct.VecPNode, ptr %60, i32 0, i32 0
  %62 = load i32, ptr %61, align 8, !tbaa !20
  %63 = icmp ult i32 %58, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load ptr, ptr %4, align 8, !tbaa !30
  %66 = load ptr, ptr %5, align 8, !tbaa !111
  %67 = load ptr, ptr %6, align 8, !tbaa !3
  %68 = getelementptr inbounds nuw %struct.PNode, ptr %67, i32 0, i32 7
  %69 = getelementptr inbounds nuw %struct.VecPNode, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !22
  %71 = load i32, ptr %8, align 4, !tbaa !21
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %70, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !3
  call void @pass_preorder(ptr noundef %65, ptr noundef %66, ptr noundef %74)
  br label %75

75:                                               ; preds = %64
  %76 = load i32, ptr %8, align 4, !tbaa !21
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %8, align 4, !tbaa !21
  br label %57, !llvm.loop !119

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78, %53, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  ret void
}

; Function Attrs: nounwind
define internal void @pass_postorder(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !30
  store ptr %1, ptr %5, align 8, !tbaa !111
  store ptr %2, ptr %6, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  %9 = load ptr, ptr %6, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.PNode, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !114
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load ptr, ptr %6, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.PNode, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = getelementptr inbounds nuw %struct.D_Reduction, ptr %16, i32 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !115
  %19 = load ptr, ptr %5, align 8, !tbaa !111
  %20 = getelementptr inbounds nuw %struct.D_Pass, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !117
  %22 = icmp ugt i32 %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %13
  %24 = load ptr, ptr %6, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.PNode, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !114
  %27 = getelementptr inbounds nuw %struct.D_Reduction, ptr %26, i32 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !118
  %29 = load ptr, ptr %5, align 8, !tbaa !111
  %30 = getelementptr inbounds nuw %struct.D_Pass, ptr %29, i32 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !117
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds nuw ptr, ptr %28, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = icmp ne ptr %34, null
  br label %36

36:                                               ; preds = %23, %13, %3
  %37 = phi i1 [ false, %13 ], [ false, %3 ], [ %35, %23 ]
  %38 = zext i1 %37 to i32
  store i32 %38, ptr %7, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  %39 = load ptr, ptr %5, align 8, !tbaa !111
  %40 = getelementptr inbounds nuw %struct.D_Pass, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !112
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr %5, align 8, !tbaa !111
  %46 = getelementptr inbounds nuw %struct.D_Pass, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !112
  %48 = and i32 %47, 16
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %44
  %51 = load i32, ptr %7, align 4, !tbaa !21
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %50, %36
  store i32 0, ptr %8, align 4, !tbaa !21
  br label %54

54:                                               ; preds = %72, %53
  %55 = load i32, ptr %8, align 4, !tbaa !21
  %56 = load ptr, ptr %6, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.PNode, ptr %56, i32 0, i32 7
  %58 = getelementptr inbounds nuw %struct.VecPNode, ptr %57, i32 0, i32 0
  %59 = load i32, ptr %58, align 8, !tbaa !20
  %60 = icmp ult i32 %55, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load ptr, ptr %4, align 8, !tbaa !30
  %63 = load ptr, ptr %5, align 8, !tbaa !111
  %64 = load ptr, ptr %6, align 8, !tbaa !3
  %65 = getelementptr inbounds nuw %struct.PNode, ptr %64, i32 0, i32 7
  %66 = getelementptr inbounds nuw %struct.VecPNode, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !22
  %68 = load i32, ptr %8, align 4, !tbaa !21
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !3
  call void @pass_postorder(ptr noundef %62, ptr noundef %63, ptr noundef %71)
  br label %72

72:                                               ; preds = %61
  %73 = load i32, ptr %8, align 4, !tbaa !21
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %8, align 4, !tbaa !21
  br label %54, !llvm.loop !120

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %50, %44
  %77 = load ptr, ptr %4, align 8, !tbaa !30
  %78 = load ptr, ptr %5, align 8, !tbaa !111
  %79 = load ptr, ptr %6, align 8, !tbaa !3
  call void @pass_call(ptr noundef %77, ptr noundef %78, ptr noundef %79)
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  ret void
}

; Function Attrs: nounwind
define dso_local void @null_white_space(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !62
  store ptr %1, ptr %5, align 8, !tbaa !121
  store ptr %2, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: nounwind
define dso_local ptr @new_D_Parser(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !124
  store i32 %1, ptr %4, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %6 = call noalias ptr @malloc(i64 noundef 432) #10
  store ptr %6, ptr %5, align 8, !tbaa !30
  %7 = load ptr, ptr %5, align 8, !tbaa !30
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 432, i1 false)
  %8 = load ptr, ptr %3, align 8, !tbaa !124
  %9 = load ptr, ptr %5, align 8, !tbaa !30
  %10 = getelementptr inbounds nuw %struct.Parser, ptr %9, i32 0, i32 3
  store ptr %8, ptr %10, align 8, !tbaa !32
  %11 = load ptr, ptr %5, align 8, !tbaa !30
  %12 = getelementptr inbounds nuw %struct.Parser, ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds nuw %struct.D_Parser, ptr %12, i32 0, i32 6
  %14 = getelementptr inbounds nuw %struct.d_loc_t, ptr %13, i32 0, i32 4
  store i32 1, ptr %14, align 8, !tbaa !125
  %15 = load i32, ptr %4, align 4, !tbaa !21
  %16 = load ptr, ptr %5, align 8, !tbaa !30
  %17 = getelementptr inbounds nuw %struct.Parser, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds nuw %struct.D_Parser, ptr %17, i32 0, i32 8
  store i32 %15, ptr %18, align 4, !tbaa !126
  %19 = load ptr, ptr %5, align 8, !tbaa !30
  %20 = getelementptr inbounds nuw %struct.Parser, ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds nuw %struct.D_Parser, ptr %20, i32 0, i32 15
  store i32 100, ptr %21, align 8, !tbaa !127
  %22 = load ptr, ptr %5, align 8, !tbaa !30
  %23 = getelementptr inbounds nuw %struct.Parser, ptr %22, i32 0, i32 0
  %24 = getelementptr inbounds nuw %struct.D_Parser, ptr %23, i32 0, i32 3
  store ptr @syntax_error_report_fn, ptr %24, align 8, !tbaa !128
  %25 = load ptr, ptr %5, align 8, !tbaa !30
  %26 = getelementptr inbounds nuw %struct.Parser, ptr %25, i32 0, i32 0
  %27 = getelementptr inbounds nuw %struct.D_Parser, ptr %26, i32 0, i32 4
  store ptr @ambiguity_abort_fn, ptr %27, align 8, !tbaa !129
  %28 = load ptr, ptr %5, align 8, !tbaa !30
  %29 = getelementptr inbounds nuw %struct.Parser, ptr %28, i32 0, i32 0
  %30 = getelementptr inbounds nuw %struct.D_Parser, ptr %29, i32 0, i32 16
  store i32 1, ptr %30, align 4, !tbaa !130
  %31 = load ptr, ptr %3, align 8, !tbaa !124
  %32 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %31, i32 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !131
  %34 = load ptr, ptr %5, align 8, !tbaa !30
  %35 = getelementptr inbounds nuw %struct.Parser, ptr %34, i32 0, i32 0
  %36 = getelementptr inbounds nuw %struct.D_Parser, ptr %35, i32 0, i32 9
  store i32 %33, ptr %36, align 8, !tbaa !132
  %37 = load ptr, ptr %5, align 8, !tbaa !30
  %38 = getelementptr inbounds nuw %struct.Parser, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !32
  %40 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %39, i32 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !133
  %42 = icmp ne ptr %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %2
  %44 = load ptr, ptr %5, align 8, !tbaa !30
  %45 = getelementptr inbounds nuw %struct.Parser, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !32
  %47 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %46, i32 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !133
  %49 = load ptr, ptr %5, align 8, !tbaa !30
  %50 = getelementptr inbounds nuw %struct.Parser, ptr %49, i32 0, i32 0
  %51 = getelementptr inbounds nuw %struct.D_Parser, ptr %50, i32 0, i32 1
  store ptr %48, ptr %51, align 8, !tbaa !134
  br label %68

52:                                               ; preds = %2
  %53 = load ptr, ptr %5, align 8, !tbaa !30
  %54 = getelementptr inbounds nuw %struct.Parser, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !32
  %56 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !135
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load ptr, ptr %5, align 8, !tbaa !30
  %61 = getelementptr inbounds nuw %struct.Parser, ptr %60, i32 0, i32 0
  %62 = getelementptr inbounds nuw %struct.D_Parser, ptr %61, i32 0, i32 1
  store ptr @parse_whitespace, ptr %62, align 8, !tbaa !134
  br label %67

63:                                               ; preds = %52
  %64 = load ptr, ptr %5, align 8, !tbaa !30
  %65 = getelementptr inbounds nuw %struct.Parser, ptr %64, i32 0, i32 0
  %66 = getelementptr inbounds nuw %struct.D_Parser, ptr %65, i32 0, i32 1
  store ptr @white_space, ptr %66, align 8, !tbaa !134
  br label %67

67:                                               ; preds = %63, %59
  br label %68

68:                                               ; preds = %67, %43
  %69 = load ptr, ptr %5, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret ptr %69
}

; Function Attrs: nounwind
define internal void @syntax_error_report_fn(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  %4 = load ptr, ptr %2, align 8, !tbaa !62
  %5 = getelementptr inbounds nuw %struct.D_Parser, ptr %4, i32 0, i32 6
  %6 = getelementptr inbounds nuw %struct.d_loc_t, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  %8 = call ptr @d_dup_pathname_str(ptr noundef %7)
  store ptr %8, ptr %3, align 8, !tbaa !27
  %9 = load ptr, ptr @stderr, align 8, !tbaa !137
  %10 = load ptr, ptr %3, align 8, !tbaa !27
  %11 = load ptr, ptr %2, align 8, !tbaa !62
  %12 = getelementptr inbounds nuw %struct.D_Parser, ptr %11, i32 0, i32 6
  %13 = getelementptr inbounds nuw %struct.d_loc_t, ptr %12, i32 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !139
  %15 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.10, ptr noundef %10, i32 noundef signext %14) #9
  %16 = load ptr, ptr %3, align 8, !tbaa !27
  call void @free(ptr noundef %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define internal void @parse_whitespace(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !62
  store ptr %1, ptr %5, align 8, !tbaa !121
  store ptr %2, ptr %6, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  %8 = load ptr, ptr %4, align 8, !tbaa !62
  %9 = getelementptr inbounds nuw %struct.Parser, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 8, !tbaa !140
  store ptr %10, ptr %7, align 8, !tbaa !30
  %11 = load ptr, ptr %5, align 8, !tbaa !121
  %12 = getelementptr inbounds nuw %struct.d_loc_t, ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8, !tbaa !141
  %14 = load ptr, ptr %7, align 8, !tbaa !30
  %15 = getelementptr inbounds nuw %struct.Parser, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !142
  %16 = load ptr, ptr %7, align 8, !tbaa !30
  %17 = load ptr, ptr %4, align 8, !tbaa !62
  %18 = getelementptr inbounds nuw %struct.Parser, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  %20 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !135
  %22 = call signext i32 @exhaustive_parse(ptr noundef %16, i32 noundef signext %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %3
  %25 = load ptr, ptr %7, align 8, !tbaa !30
  %26 = getelementptr inbounds nuw %struct.Parser, ptr %25, i32 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !143
  %28 = icmp ne ptr %27, null
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = load ptr, ptr %5, align 8, !tbaa !121
  %31 = load ptr, ptr %7, align 8, !tbaa !30
  %32 = getelementptr inbounds nuw %struct.Parser, ptr %31, i32 0, i32 16
  %33 = load ptr, ptr %32, align 8, !tbaa !143
  %34 = getelementptr inbounds nuw %struct.SNode, ptr %33, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 8 %34, i64 32, i1 false), !tbaa.struct !144
  br label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %7, align 8, !tbaa !30
  %37 = getelementptr inbounds nuw %struct.Parser, ptr %36, i32 0, i32 16
  %38 = load ptr, ptr %37, align 8, !tbaa !143
  %39 = getelementptr inbounds nuw %struct.SNode, ptr %38, i32 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !145
  %41 = add i32 %40, -1
  store i32 %41, ptr %39, align 8, !tbaa !145
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %7, align 8, !tbaa !30
  %45 = load ptr, ptr %7, align 8, !tbaa !30
  %46 = getelementptr inbounds nuw %struct.Parser, ptr %45, i32 0, i32 16
  %47 = load ptr, ptr %46, align 8, !tbaa !143
  call void @free_SNode(ptr noundef %44, ptr noundef %47)
  br label %48

48:                                               ; preds = %43, %35
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr %7, align 8, !tbaa !30
  %52 = getelementptr inbounds nuw %struct.Parser, ptr %51, i32 0, i32 16
  store ptr null, ptr %52, align 8, !tbaa !143
  br label %53

53:                                               ; preds = %50, %24
  br label %54

54:                                               ; preds = %53, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  ret void
}

; Function Attrs: nounwind
define internal void @white_space(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !62
  store ptr %1, ptr %5, align 8, !tbaa !121
  store ptr %2, ptr %6, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  store i32 0, ptr %7, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  %12 = load ptr, ptr %5, align 8, !tbaa !121
  %13 = getelementptr inbounds nuw %struct.d_loc_t, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8, !tbaa !141
  store ptr %14, ptr %8, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  %15 = load ptr, ptr %4, align 8, !tbaa !62
  %16 = getelementptr inbounds nuw %struct.D_Parser, ptr %15, i32 0, i32 6
  %17 = getelementptr inbounds nuw %struct.d_loc_t, ptr %16, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8, !tbaa !146
  %19 = load ptr, ptr %8, align 8, !tbaa !27
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load ptr, ptr %8, align 8, !tbaa !27
  store ptr %22, ptr %9, align 8, !tbaa !27
  br label %24

23:                                               ; preds = %3
  store ptr null, ptr %9, align 8, !tbaa !27
  br label %24

24:                                               ; preds = %23, %21
  %25 = load ptr, ptr %8, align 8, !tbaa !27
  %26 = load i8, ptr %25, align 1, !tbaa !28
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 35
  br i1 %28, label %29, label %152

29:                                               ; preds = %24
  %30 = load ptr, ptr %5, align 8, !tbaa !121
  %31 = getelementptr inbounds nuw %struct.d_loc_t, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !147
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %152

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %182, %34
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  %36 = load ptr, ptr %8, align 8, !tbaa !27
  store ptr %36, ptr %10, align 8, !tbaa !27
  %37 = load ptr, ptr %8, align 8, !tbaa !27
  %38 = getelementptr inbounds nuw i8, ptr %37, i32 1
  store ptr %38, ptr %8, align 8, !tbaa !27
  br label %39

39:                                               ; preds = %46, %35
  %40 = load ptr, ptr %8, align 8, !tbaa !27
  %41 = load i8, ptr %40, align 1, !tbaa !28
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds nuw [256 x i8], ptr @_wspace, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !28
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load ptr, ptr %8, align 8, !tbaa !27
  %48 = getelementptr inbounds nuw i8, ptr %47, i32 1
  store ptr %48, ptr %8, align 8, !tbaa !27
  br label %39, !llvm.loop !148

49:                                               ; preds = %39
  %50 = load ptr, ptr %8, align 8, !tbaa !27
  %51 = call signext i32 @strncmp(ptr noundef @.str.11, ptr noundef %50, i64 noundef 4) #11
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %8, align 8, !tbaa !27
  %55 = getelementptr inbounds i8, ptr %54, i64 4
  %56 = load i8, ptr %55, align 1, !tbaa !28
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds nuw [256 x i8], ptr @_wspace, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !28
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load ptr, ptr %8, align 8, !tbaa !27
  %63 = getelementptr inbounds i8, ptr %62, i64 5
  store ptr %63, ptr %8, align 8, !tbaa !27
  br label %64

64:                                               ; preds = %71, %61
  %65 = load ptr, ptr %8, align 8, !tbaa !27
  %66 = load i8, ptr %65, align 1, !tbaa !28
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds nuw [256 x i8], ptr @_wspace, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !28
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load ptr, ptr %8, align 8, !tbaa !27
  %73 = getelementptr inbounds nuw i8, ptr %72, i32 1
  store ptr %73, ptr %8, align 8, !tbaa !27
  br label %64, !llvm.loop !149

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %53
  br label %76

76:                                               ; preds = %75, %49
  %77 = call ptr @__ctype_b_loc() #12
  %78 = load ptr, ptr %77, align 8, !tbaa !150
  %79 = load ptr, ptr %8, align 8, !tbaa !27
  %80 = load i8, ptr %79, align 1, !tbaa !28
  %81 = sext i8 %80 to i32
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i16, ptr %78, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !151
  %85 = zext i16 %84 to i32
  %86 = and i32 %85, 2048
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %130

88:                                               ; preds = %76
  %89 = load ptr, ptr %8, align 8, !tbaa !27
  %90 = call signext i32 @atoi(ptr noundef %89) #11
  %91 = sub nsw i32 %90, 1
  %92 = load ptr, ptr %5, align 8, !tbaa !121
  %93 = getelementptr inbounds nuw %struct.d_loc_t, ptr %92, i32 0, i32 4
  store i32 %91, ptr %93, align 8, !tbaa !152
  br label %94

94:                                               ; preds = %106, %88
  %95 = call ptr @__ctype_b_loc() #12
  %96 = load ptr, ptr %95, align 8, !tbaa !150
  %97 = load ptr, ptr %8, align 8, !tbaa !27
  %98 = load i8, ptr %97, align 1, !tbaa !28
  %99 = sext i8 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i16, ptr %96, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !151
  %103 = zext i16 %102 to i32
  %104 = and i32 %103, 2048
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %94
  %107 = load ptr, ptr %8, align 8, !tbaa !27
  %108 = getelementptr inbounds nuw i8, ptr %107, i32 1
  store ptr %108, ptr %8, align 8, !tbaa !27
  br label %94, !llvm.loop !153

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %117, %109
  %111 = load ptr, ptr %8, align 8, !tbaa !27
  %112 = load i8, ptr %111, align 1, !tbaa !28
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds nuw [256 x i8], ptr @_wspace, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !28
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load ptr, ptr %8, align 8, !tbaa !27
  %119 = getelementptr inbounds nuw i8, ptr %118, i32 1
  store ptr %119, ptr %8, align 8, !tbaa !27
  br label %110, !llvm.loop !154

120:                                              ; preds = %110
  %121 = load ptr, ptr %8, align 8, !tbaa !27
  %122 = load i8, ptr %121, align 1, !tbaa !28
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 34
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load ptr, ptr %8, align 8, !tbaa !27
  %127 = load ptr, ptr %5, align 8, !tbaa !121
  %128 = getelementptr inbounds nuw %struct.d_loc_t, ptr %127, i32 0, i32 1
  store ptr %126, ptr %128, align 8, !tbaa !155
  br label %129

129:                                              ; preds = %125, %120
  br label %132

130:                                              ; preds = %76
  %131 = load ptr, ptr %10, align 8, !tbaa !27
  store ptr %131, ptr %8, align 8, !tbaa !27
  store i32 11, ptr %11, align 4
  br label %133

132:                                              ; preds = %129
  store i32 0, ptr %11, align 4
  br label %133

133:                                              ; preds = %130, %132
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  %134 = load i32, ptr %11, align 4
  switch i32 %134, label %309 [
    i32 0, label %135
    i32 11, label %290
  ]

135:                                              ; preds = %133
  br label %136

136:                                              ; preds = %148, %135
  %137 = load ptr, ptr %8, align 8, !tbaa !27
  %138 = load i8, ptr %137, align 1, !tbaa !28
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load ptr, ptr %8, align 8, !tbaa !27
  %143 = load i8, ptr %142, align 1, !tbaa !28
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 10
  br label %146

146:                                              ; preds = %141, %136
  %147 = phi i1 [ false, %136 ], [ %145, %141 ]
  br i1 %147, label %148, label %151

148:                                              ; preds = %146
  %149 = load ptr, ptr %8, align 8, !tbaa !27
  %150 = getelementptr inbounds nuw i8, ptr %149, i32 1
  store ptr %150, ptr %8, align 8, !tbaa !27
  br label %136, !llvm.loop !156

151:                                              ; preds = %146
  br label %152

152:                                              ; preds = %151, %29, %24
  br label %153

153:                                              ; preds = %255, %212, %183, %152
  br label %154

154:                                              ; preds = %161, %153
  %155 = load ptr, ptr %8, align 8, !tbaa !27
  %156 = load i8, ptr %155, align 1, !tbaa !28
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds nuw [256 x i8], ptr @_wspace, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !28
  %160 = icmp ne i8 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load ptr, ptr %8, align 8, !tbaa !27
  %163 = getelementptr inbounds nuw i8, ptr %162, i32 1
  store ptr %163, ptr %8, align 8, !tbaa !27
  br label %154, !llvm.loop !157

164:                                              ; preds = %154
  %165 = load ptr, ptr %8, align 8, !tbaa !27
  %166 = load i8, ptr %165, align 1, !tbaa !28
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 10
  br i1 %168, label %169, label %184

169:                                              ; preds = %164
  %170 = load ptr, ptr %5, align 8, !tbaa !121
  %171 = getelementptr inbounds nuw %struct.d_loc_t, ptr %170, i32 0, i32 4
  %172 = load i32, ptr %171, align 8, !tbaa !152
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %171, align 8, !tbaa !152
  %174 = load ptr, ptr %8, align 8, !tbaa !27
  %175 = getelementptr inbounds i8, ptr %174, i64 1
  store ptr %175, ptr %9, align 8, !tbaa !27
  %176 = load ptr, ptr %8, align 8, !tbaa !27
  %177 = getelementptr inbounds nuw i8, ptr %176, i32 1
  store ptr %177, ptr %8, align 8, !tbaa !27
  %178 = load ptr, ptr %8, align 8, !tbaa !27
  %179 = load i8, ptr %178, align 1, !tbaa !28
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 35
  br i1 %181, label %182, label %183

182:                                              ; preds = %169
  br label %35

183:                                              ; preds = %169
  br label %153

184:                                              ; preds = %164
  %185 = load ptr, ptr %8, align 8, !tbaa !27
  %186 = getelementptr inbounds i8, ptr %185, i64 0
  %187 = load i8, ptr %186, align 1, !tbaa !28
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 47
  br i1 %189, label %190, label %289

190:                                              ; preds = %184
  %191 = load ptr, ptr %8, align 8, !tbaa !27
  %192 = getelementptr inbounds i8, ptr %191, i64 1
  %193 = load i8, ptr %192, align 1, !tbaa !28
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 47
  br i1 %195, label %196, label %219

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %209, %196
  %198 = load ptr, ptr %8, align 8, !tbaa !27
  %199 = load i8, ptr %198, align 1, !tbaa !28
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = load ptr, ptr %8, align 8, !tbaa !27
  %204 = load i8, ptr %203, align 1, !tbaa !28
  %205 = sext i8 %204 to i32
  %206 = icmp ne i32 %205, 10
  br label %207

207:                                              ; preds = %202, %197
  %208 = phi i1 [ false, %197 ], [ %206, %202 ]
  br i1 %208, label %209, label %212

209:                                              ; preds = %207
  %210 = load ptr, ptr %8, align 8, !tbaa !27
  %211 = getelementptr inbounds nuw i8, ptr %210, i32 1
  store ptr %211, ptr %8, align 8, !tbaa !27
  br label %197, !llvm.loop !158

212:                                              ; preds = %207
  %213 = load ptr, ptr %5, align 8, !tbaa !121
  %214 = getelementptr inbounds nuw %struct.d_loc_t, ptr %213, i32 0, i32 4
  %215 = load i32, ptr %214, align 8, !tbaa !152
  %216 = add nsw i32 %215, 1
  store i32 %216, ptr %214, align 8, !tbaa !152
  %217 = load ptr, ptr %8, align 8, !tbaa !27
  %218 = getelementptr inbounds nuw i8, ptr %217, i32 1
  store ptr %218, ptr %8, align 8, !tbaa !27
  br label %153

219:                                              ; preds = %190
  %220 = load ptr, ptr %8, align 8, !tbaa !27
  %221 = getelementptr inbounds i8, ptr %220, i64 1
  %222 = load i8, ptr %221, align 1, !tbaa !28
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 42
  br i1 %224, label %225, label %288

225:                                              ; preds = %219
  %226 = load ptr, ptr %8, align 8, !tbaa !27
  %227 = getelementptr inbounds i8, ptr %226, i64 2
  store ptr %227, ptr %8, align 8, !tbaa !27
  br label %228

228:                                              ; preds = %269, %225
  %229 = load i32, ptr %7, align 4, !tbaa !21
  %230 = add nsw i32 %229, 1
  store i32 %230, ptr %7, align 4, !tbaa !21
  br label %231

231:                                              ; preds = %256, %228
  br label %232

232:                                              ; preds = %284, %231
  %233 = load ptr, ptr %8, align 8, !tbaa !27
  %234 = load i8, ptr %233, align 1, !tbaa !28
  %235 = icmp ne i8 %234, 0
  br i1 %235, label %236, label %287

236:                                              ; preds = %232
  %237 = load ptr, ptr %8, align 8, !tbaa !27
  %238 = getelementptr inbounds i8, ptr %237, i64 0
  %239 = load i8, ptr %238, align 1, !tbaa !28
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %240, 42
  br i1 %241, label %242, label %257

242:                                              ; preds = %236
  %243 = load ptr, ptr %8, align 8, !tbaa !27
  %244 = getelementptr inbounds i8, ptr %243, i64 1
  %245 = load i8, ptr %244, align 1, !tbaa !28
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 47
  br i1 %247, label %248, label %257

248:                                              ; preds = %242
  %249 = load ptr, ptr %8, align 8, !tbaa !27
  %250 = getelementptr inbounds i8, ptr %249, i64 2
  store ptr %250, ptr %8, align 8, !tbaa !27
  %251 = load i32, ptr %7, align 4, !tbaa !21
  %252 = add nsw i32 %251, -1
  store i32 %252, ptr %7, align 4, !tbaa !21
  %253 = load i32, ptr %7, align 4, !tbaa !21
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %248
  br label %153

256:                                              ; preds = %248
  br label %231

257:                                              ; preds = %242, %236
  %258 = load ptr, ptr %8, align 8, !tbaa !27
  %259 = getelementptr inbounds i8, ptr %258, i64 0
  %260 = load i8, ptr %259, align 1, !tbaa !28
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %261, 47
  br i1 %262, label %263, label %272

263:                                              ; preds = %257
  %264 = load ptr, ptr %8, align 8, !tbaa !27
  %265 = getelementptr inbounds i8, ptr %264, i64 1
  %266 = load i8, ptr %265, align 1, !tbaa !28
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 42
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  %270 = load ptr, ptr %8, align 8, !tbaa !27
  %271 = getelementptr inbounds i8, ptr %270, i64 2
  store ptr %271, ptr %8, align 8, !tbaa !27
  br label %228

272:                                              ; preds = %263, %257
  %273 = load ptr, ptr %8, align 8, !tbaa !27
  %274 = load i8, ptr %273, align 1, !tbaa !28
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 10
  br i1 %276, label %277, label %284

277:                                              ; preds = %272
  %278 = load ptr, ptr %5, align 8, !tbaa !121
  %279 = getelementptr inbounds nuw %struct.d_loc_t, ptr %278, i32 0, i32 4
  %280 = load i32, ptr %279, align 8, !tbaa !152
  %281 = add nsw i32 %280, 1
  store i32 %281, ptr %279, align 8, !tbaa !152
  %282 = load ptr, ptr %8, align 8, !tbaa !27
  %283 = getelementptr inbounds i8, ptr %282, i64 1
  store ptr %283, ptr %9, align 8, !tbaa !27
  br label %284

284:                                              ; preds = %277, %272
  %285 = load ptr, ptr %8, align 8, !tbaa !27
  %286 = getelementptr inbounds nuw i8, ptr %285, i32 1
  store ptr %286, ptr %8, align 8, !tbaa !27
  br label %232, !llvm.loop !159

287:                                              ; preds = %232
  br label %288

288:                                              ; preds = %287, %219
  br label %289

289:                                              ; preds = %288, %184
  br label %290

290:                                              ; preds = %289, %133
  %291 = load ptr, ptr %9, align 8, !tbaa !27
  %292 = icmp ne ptr %291, null
  br i1 %292, label %293, label %302

293:                                              ; preds = %290
  %294 = load ptr, ptr %8, align 8, !tbaa !27
  %295 = load ptr, ptr %9, align 8, !tbaa !27
  %296 = ptrtoint ptr %294 to i64
  %297 = ptrtoint ptr %295 to i64
  %298 = sub i64 %296, %297
  %299 = trunc i64 %298 to i32
  %300 = load ptr, ptr %5, align 8, !tbaa !121
  %301 = getelementptr inbounds nuw %struct.d_loc_t, ptr %300, i32 0, i32 3
  store i32 %299, ptr %301, align 4, !tbaa !160
  br label %305

302:                                              ; preds = %290
  %303 = load ptr, ptr %5, align 8, !tbaa !121
  %304 = getelementptr inbounds nuw %struct.d_loc_t, ptr %303, i32 0, i32 3
  store i32 -1, ptr %304, align 4, !tbaa !160
  br label %305

305:                                              ; preds = %302, %293
  %306 = load ptr, ptr %8, align 8, !tbaa !27
  %307 = load ptr, ptr %5, align 8, !tbaa !121
  %308 = getelementptr inbounds nuw %struct.d_loc_t, ptr %307, i32 0, i32 0
  store ptr %306, ptr %308, align 8, !tbaa !141
  store i32 1, ptr %11, align 4
  br label %309

309:                                              ; preds = %305, %133
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  ret void
}

; Function Attrs: nounwind
define dso_local void @free_D_Parser(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  %4 = load ptr, ptr %2, align 8, !tbaa !62
  store ptr %4, ptr %3, align 8, !tbaa !30
  %5 = load ptr, ptr %3, align 8, !tbaa !30
  %6 = getelementptr inbounds nuw %struct.Parser, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !tbaa !30
  %11 = getelementptr inbounds nuw %struct.Parser, ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds nuw %struct.D_Parser, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !162
  %14 = icmp ne ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %3, align 8, !tbaa !30
  %17 = getelementptr inbounds nuw %struct.Parser, ptr %16, i32 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !161
  call void @free_D_Scope(ptr noundef %18, i32 noundef signext 0)
  br label %19

19:                                               ; preds = %15, %9, %1
  %20 = load ptr, ptr %3, align 8, !tbaa !30
  %21 = getelementptr inbounds nuw %struct.Parser, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 8, !tbaa !140
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load ptr, ptr %3, align 8, !tbaa !30
  %26 = getelementptr inbounds nuw %struct.Parser, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 8, !tbaa !140
  call void @free_D_Parser(ptr noundef %27)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load ptr, ptr %2, align 8, !tbaa !62
  call void @free(ptr noundef %29) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret void
}

declare void @free_D_Scope(ptr noundef, i32 noundef signext) #2

; Function Attrs: nounwind
define dso_local void @free_D_ParseNode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !62
  store ptr %1, ptr %4, align 8, !tbaa !59
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp ne ptr %5, inttoptr (i64 1 to ptr)
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7
  %9 = load ptr, ptr %4, align 8, !tbaa !59
  %10 = sext i32 ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32) to i64
  %11 = sub i64 0, %10
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  %13 = getelementptr inbounds nuw %struct.PNode, ptr %12, i32 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !100
  %15 = add i32 %14, -1
  store i32 %15, ptr %13, align 8, !tbaa !100
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %8
  %18 = load ptr, ptr %3, align 8, !tbaa !62
  %19 = load ptr, ptr %4, align 8, !tbaa !59
  %20 = sext i32 ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32) to i64
  %21 = sub i64 0, %20
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  call void @free_PNode(ptr noundef %18, ptr noundef %22)
  br label %23

23:                                               ; preds = %17, %8
  br label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr %3, align 8, !tbaa !62
  call void @free_parser_working_data(ptr noundef %25)
  br label %26

26:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: nounwind
define internal void @free_PNode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  %7 = load ptr, ptr %3, align 8, !tbaa !30
  %8 = getelementptr inbounds nuw %struct.Parser, ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds nuw %struct.D_Parser, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !163
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !tbaa !30
  %14 = getelementptr inbounds nuw %struct.Parser, ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds nuw %struct.D_Parser, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !163
  %17 = load ptr, ptr %4, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.PNode, ptr %17, i32 0, i32 19
  call void %16(ptr noundef %18)
  br label %19

19:                                               ; preds = %12, %2
  store i32 0, ptr %6, align 4, !tbaa !21
  br label %20

20:                                               ; preds = %54, %19
  %21 = load i32, ptr %6, align 4, !tbaa !21
  %22 = load ptr, ptr %4, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct.PNode, ptr %22, i32 0, i32 7
  %24 = getelementptr inbounds nuw %struct.VecPNode, ptr %23, i32 0, i32 0
  %25 = load i32, ptr %24, align 8, !tbaa !20
  %26 = icmp ult i32 %21, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load ptr, ptr %4, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.PNode, ptr %29, i32 0, i32 7
  %31 = getelementptr inbounds nuw %struct.VecPNode, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = load i32, ptr %6, align 4, !tbaa !21
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !3
  %37 = getelementptr inbounds nuw %struct.PNode, ptr %36, i32 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !100
  %39 = add i32 %38, -1
  store i32 %39, ptr %37, align 8, !tbaa !100
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %28
  %42 = load ptr, ptr %3, align 8, !tbaa !30
  %43 = load ptr, ptr %4, align 8, !tbaa !3
  %44 = getelementptr inbounds nuw %struct.PNode, ptr %43, i32 0, i32 7
  %45 = getelementptr inbounds nuw %struct.VecPNode, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !22
  %47 = load i32, ptr %6, align 4, !tbaa !21
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !3
  call void @free_PNode(ptr noundef %42, ptr noundef %50)
  br label %51

51:                                               ; preds = %41, %28
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  %55 = load i32, ptr %6, align 4, !tbaa !21
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %6, align 4, !tbaa !21
  br label %20, !llvm.loop !164

57:                                               ; preds = %20
  br label %58

58:                                               ; preds = %57
  %59 = load ptr, ptr %4, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.PNode, ptr %59, i32 0, i32 7
  %61 = getelementptr inbounds nuw %struct.VecPNode, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !22
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load ptr, ptr %4, align 8, !tbaa !3
  %66 = getelementptr inbounds nuw %struct.PNode, ptr %65, i32 0, i32 7
  %67 = getelementptr inbounds nuw %struct.VecPNode, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !22
  %69 = load ptr, ptr %4, align 8, !tbaa !3
  %70 = getelementptr inbounds nuw %struct.PNode, ptr %69, i32 0, i32 7
  %71 = getelementptr inbounds nuw %struct.VecPNode, ptr %70, i32 0, i32 3
  %72 = getelementptr inbounds [3 x ptr], ptr %71, i64 0, i64 0
  %73 = icmp ne ptr %68, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load ptr, ptr %4, align 8, !tbaa !3
  %76 = getelementptr inbounds nuw %struct.PNode, ptr %75, i32 0, i32 7
  %77 = getelementptr inbounds nuw %struct.VecPNode, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !22
  call void @free(ptr noundef %78) #9
  br label %79

79:                                               ; preds = %74, %64, %58
  br label %80

80:                                               ; preds = %79
  %81 = load ptr, ptr %4, align 8, !tbaa !3
  %82 = getelementptr inbounds nuw %struct.PNode, ptr %81, i32 0, i32 7
  %83 = getelementptr inbounds nuw %struct.VecPNode, ptr %82, i32 0, i32 0
  store i32 0, ptr %83, align 8, !tbaa !20
  %84 = load ptr, ptr %4, align 8, !tbaa !3
  %85 = getelementptr inbounds nuw %struct.PNode, ptr %84, i32 0, i32 7
  %86 = getelementptr inbounds nuw %struct.VecPNode, ptr %85, i32 0, i32 2
  store ptr null, ptr %86, align 8, !tbaa !22
  br label %87

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  %91 = load ptr, ptr %4, align 8, !tbaa !3
  %92 = getelementptr inbounds nuw %struct.PNode, ptr %91, i32 0, i32 13
  %93 = load ptr, ptr %92, align 8, !tbaa !102
  store ptr %93, ptr %5, align 8, !tbaa !3
  %94 = icmp ne ptr %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load ptr, ptr %4, align 8, !tbaa !3
  %97 = getelementptr inbounds nuw %struct.PNode, ptr %96, i32 0, i32 13
  store ptr null, ptr %97, align 8, !tbaa !102
  %98 = load ptr, ptr %3, align 8, !tbaa !30
  %99 = load ptr, ptr %5, align 8, !tbaa !3
  call void @free_PNode(ptr noundef %98, ptr noundef %99)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load ptr, ptr %4, align 8, !tbaa !3
  %102 = getelementptr inbounds nuw %struct.PNode, ptr %101, i32 0, i32 14
  %103 = load ptr, ptr %102, align 8, !tbaa !165
  %104 = load ptr, ptr %4, align 8, !tbaa !3
  %105 = icmp ne ptr %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106
  %108 = load ptr, ptr %4, align 8, !tbaa !3
  %109 = getelementptr inbounds nuw %struct.PNode, ptr %108, i32 0, i32 14
  %110 = load ptr, ptr %109, align 8, !tbaa !165
  %111 = getelementptr inbounds nuw %struct.PNode, ptr %110, i32 0, i32 6
  %112 = load i32, ptr %111, align 8, !tbaa !100
  %113 = add i32 %112, -1
  store i32 %113, ptr %111, align 8, !tbaa !100
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %107
  %116 = load ptr, ptr %3, align 8, !tbaa !30
  %117 = load ptr, ptr %4, align 8, !tbaa !3
  %118 = getelementptr inbounds nuw %struct.PNode, ptr %117, i32 0, i32 14
  %119 = load ptr, ptr %118, align 8, !tbaa !165
  call void @free_PNode(ptr noundef %116, ptr noundef %119)
  br label %120

120:                                              ; preds = %115, %107
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122, %100
  %124 = load ptr, ptr %3, align 8, !tbaa !30
  %125 = getelementptr inbounds nuw %struct.Parser, ptr %124, i32 0, i32 21
  %126 = load ptr, ptr %125, align 8, !tbaa !166
  %127 = load ptr, ptr %4, align 8, !tbaa !3
  %128 = getelementptr inbounds nuw %struct.PNode, ptr %127, i32 0, i32 11
  store ptr %126, ptr %128, align 8, !tbaa !167
  %129 = load ptr, ptr %4, align 8, !tbaa !3
  %130 = load ptr, ptr %3, align 8, !tbaa !30
  %131 = getelementptr inbounds nuw %struct.Parser, ptr %130, i32 0, i32 21
  store ptr %129, ptr %131, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret void
}

; Function Attrs: nounwind
define internal void @free_parser_working_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  %11 = load ptr, ptr %2, align 8, !tbaa !30
  call void @free_old_nodes(ptr noundef %11)
  %12 = load ptr, ptr %2, align 8, !tbaa !30
  call void @free_old_nodes(ptr noundef %12)
  %13 = load ptr, ptr %2, align 8, !tbaa !30
  %14 = getelementptr inbounds nuw %struct.Parser, ptr %13, i32 0, i32 11
  %15 = getelementptr inbounds nuw %struct.PNodeHash, ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8, !tbaa !168
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load ptr, ptr %2, align 8, !tbaa !30
  %20 = getelementptr inbounds nuw %struct.Parser, ptr %19, i32 0, i32 11
  %21 = getelementptr inbounds nuw %struct.PNodeHash, ptr %20, i32 0, i32 0
  %22 = load ptr, ptr %21, align 8, !tbaa !168
  call void @free(ptr noundef %22) #9
  br label %23

23:                                               ; preds = %18, %1
  %24 = load ptr, ptr %2, align 8, !tbaa !30
  %25 = getelementptr inbounds nuw %struct.Parser, ptr %24, i32 0, i32 12
  %26 = getelementptr inbounds nuw %struct.SNodeHash, ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8, !tbaa !169
  %28 = icmp ne ptr %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load ptr, ptr %2, align 8, !tbaa !30
  %31 = getelementptr inbounds nuw %struct.Parser, ptr %30, i32 0, i32 12
  %32 = getelementptr inbounds nuw %struct.SNodeHash, ptr %31, i32 0, i32 0
  %33 = load ptr, ptr %32, align 8, !tbaa !169
  call void @free(ptr noundef %33) #9
  br label %34

34:                                               ; preds = %29, %23
  %35 = load ptr, ptr %2, align 8, !tbaa !30
  %36 = getelementptr inbounds nuw %struct.Parser, ptr %35, i32 0, i32 11
  call void @llvm.memset.p0.i64(ptr align 8 %36, i8 0, i64 32, i1 false)
  %37 = load ptr, ptr %2, align 8, !tbaa !30
  %38 = getelementptr inbounds nuw %struct.Parser, ptr %37, i32 0, i32 12
  call void @llvm.memset.p0.i64(ptr align 8 %38, i8 0, i64 40, i1 false)
  br label %39

39:                                               ; preds = %69, %34
  %40 = load ptr, ptr %2, align 8, !tbaa !30
  %41 = getelementptr inbounds nuw %struct.Parser, ptr %40, i32 0, i32 13
  %42 = load ptr, ptr %41, align 8, !tbaa !170
  %43 = icmp ne ptr %42, null
  br i1 %43, label %44, label %76

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #9
  %45 = load ptr, ptr %2, align 8, !tbaa !30
  %46 = getelementptr inbounds nuw %struct.Parser, ptr %45, i32 0, i32 18
  %47 = load ptr, ptr %46, align 8, !tbaa !171
  %48 = getelementptr inbounds nuw %struct.Reduction, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !172
  store ptr %49, ptr %4, align 8, !tbaa !174
  br label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %2, align 8, !tbaa !30
  %52 = getelementptr inbounds nuw %struct.Parser, ptr %51, i32 0, i32 13
  %53 = load ptr, ptr %52, align 8, !tbaa !170
  %54 = getelementptr inbounds nuw %struct.Reduction, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !175
  %56 = getelementptr inbounds nuw %struct.SNode, ptr %55, i32 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !145
  %58 = add i32 %57, -1
  store i32 %58, ptr %56, align 8, !tbaa !145
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %50
  %61 = load ptr, ptr %2, align 8, !tbaa !30
  %62 = load ptr, ptr %2, align 8, !tbaa !30
  %63 = getelementptr inbounds nuw %struct.Parser, ptr %62, i32 0, i32 13
  %64 = load ptr, ptr %63, align 8, !tbaa !170
  %65 = getelementptr inbounds nuw %struct.Reduction, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !175
  call void @free_SNode(ptr noundef %61, ptr noundef %66)
  br label %67

67:                                               ; preds = %60, %50
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load ptr, ptr %2, align 8, !tbaa !30
  %71 = getelementptr inbounds nuw %struct.Parser, ptr %70, i32 0, i32 18
  %72 = load ptr, ptr %71, align 8, !tbaa !171
  call void @free(ptr noundef %72) #9
  %73 = load ptr, ptr %4, align 8, !tbaa !174
  %74 = load ptr, ptr %2, align 8, !tbaa !30
  %75 = getelementptr inbounds nuw %struct.Parser, ptr %74, i32 0, i32 18
  store ptr %73, ptr %75, align 8, !tbaa !171
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #9
  br label %39, !llvm.loop !176

76:                                               ; preds = %39
  br label %77

77:                                               ; preds = %107, %76
  %78 = load ptr, ptr %2, align 8, !tbaa !30
  %79 = getelementptr inbounds nuw %struct.Parser, ptr %78, i32 0, i32 14
  %80 = load ptr, ptr %79, align 8, !tbaa !177
  %81 = icmp ne ptr %80, null
  br i1 %81, label %82, label %114

82:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %83 = load ptr, ptr %2, align 8, !tbaa !30
  %84 = getelementptr inbounds nuw %struct.Parser, ptr %83, i32 0, i32 19
  %85 = load ptr, ptr %84, align 8, !tbaa !178
  %86 = getelementptr inbounds nuw %struct.Shift, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !179
  store ptr %87, ptr %5, align 8, !tbaa !181
  br label %88

88:                                               ; preds = %82
  %89 = load ptr, ptr %2, align 8, !tbaa !30
  %90 = getelementptr inbounds nuw %struct.Parser, ptr %89, i32 0, i32 14
  %91 = load ptr, ptr %90, align 8, !tbaa !177
  %92 = getelementptr inbounds nuw %struct.Shift, ptr %91, i32 0, i32 0
  %93 = load ptr, ptr %92, align 8, !tbaa !182
  %94 = getelementptr inbounds nuw %struct.SNode, ptr %93, i32 0, i32 7
  %95 = load i32, ptr %94, align 8, !tbaa !145
  %96 = add i32 %95, -1
  store i32 %96, ptr %94, align 8, !tbaa !145
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %88
  %99 = load ptr, ptr %2, align 8, !tbaa !30
  %100 = load ptr, ptr %2, align 8, !tbaa !30
  %101 = getelementptr inbounds nuw %struct.Parser, ptr %100, i32 0, i32 14
  %102 = load ptr, ptr %101, align 8, !tbaa !177
  %103 = getelementptr inbounds nuw %struct.Shift, ptr %102, i32 0, i32 0
  %104 = load ptr, ptr %103, align 8, !tbaa !182
  call void @free_SNode(ptr noundef %99, ptr noundef %104)
  br label %105

105:                                              ; preds = %98, %88
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  %108 = load ptr, ptr %2, align 8, !tbaa !30
  %109 = getelementptr inbounds nuw %struct.Parser, ptr %108, i32 0, i32 19
  %110 = load ptr, ptr %109, align 8, !tbaa !178
  call void @free(ptr noundef %110) #9
  %111 = load ptr, ptr %5, align 8, !tbaa !181
  %112 = load ptr, ptr %2, align 8, !tbaa !30
  %113 = getelementptr inbounds nuw %struct.Parser, ptr %112, i32 0, i32 19
  store ptr %111, ptr %113, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  br label %77, !llvm.loop !183

114:                                              ; preds = %77
  br label %115

115:                                              ; preds = %120, %114
  %116 = load ptr, ptr %2, align 8, !tbaa !30
  %117 = getelementptr inbounds nuw %struct.Parser, ptr %116, i32 0, i32 18
  %118 = load ptr, ptr %117, align 8, !tbaa !171
  %119 = icmp ne ptr %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  %121 = load ptr, ptr %2, align 8, !tbaa !30
  %122 = getelementptr inbounds nuw %struct.Parser, ptr %121, i32 0, i32 18
  %123 = load ptr, ptr %122, align 8, !tbaa !171
  %124 = getelementptr inbounds nuw %struct.Reduction, ptr %123, i32 0, i32 5
  %125 = load ptr, ptr %124, align 8, !tbaa !172
  store ptr %125, ptr %6, align 8, !tbaa !174
  %126 = load ptr, ptr %2, align 8, !tbaa !30
  %127 = getelementptr inbounds nuw %struct.Parser, ptr %126, i32 0, i32 18
  %128 = load ptr, ptr %127, align 8, !tbaa !171
  call void @free(ptr noundef %128) #9
  %129 = load ptr, ptr %6, align 8, !tbaa !174
  %130 = load ptr, ptr %2, align 8, !tbaa !30
  %131 = getelementptr inbounds nuw %struct.Parser, ptr %130, i32 0, i32 18
  store ptr %129, ptr %131, align 8, !tbaa !171
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  br label %115, !llvm.loop !184

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %138, %132
  %134 = load ptr, ptr %2, align 8, !tbaa !30
  %135 = getelementptr inbounds nuw %struct.Parser, ptr %134, i32 0, i32 19
  %136 = load ptr, ptr %135, align 8, !tbaa !178
  %137 = icmp ne ptr %136, null
  br i1 %137, label %138, label %150

138:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  %139 = load ptr, ptr %2, align 8, !tbaa !30
  %140 = getelementptr inbounds nuw %struct.Parser, ptr %139, i32 0, i32 19
  %141 = load ptr, ptr %140, align 8, !tbaa !178
  %142 = getelementptr inbounds nuw %struct.Shift, ptr %141, i32 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !179
  store ptr %143, ptr %7, align 8, !tbaa !181
  %144 = load ptr, ptr %2, align 8, !tbaa !30
  %145 = getelementptr inbounds nuw %struct.Parser, ptr %144, i32 0, i32 19
  %146 = load ptr, ptr %145, align 8, !tbaa !178
  call void @free(ptr noundef %146) #9
  %147 = load ptr, ptr %7, align 8, !tbaa !181
  %148 = load ptr, ptr %2, align 8, !tbaa !30
  %149 = getelementptr inbounds nuw %struct.Parser, ptr %148, i32 0, i32 19
  store ptr %147, ptr %149, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  br label %133, !llvm.loop !185

150:                                              ; preds = %133
  br label %151

151:                                              ; preds = %156, %150
  %152 = load ptr, ptr %2, align 8, !tbaa !30
  %153 = getelementptr inbounds nuw %struct.Parser, ptr %152, i32 0, i32 21
  %154 = load ptr, ptr %153, align 8, !tbaa !166
  %155 = icmp ne ptr %154, null
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  %157 = load ptr, ptr %2, align 8, !tbaa !30
  %158 = getelementptr inbounds nuw %struct.Parser, ptr %157, i32 0, i32 21
  %159 = load ptr, ptr %158, align 8, !tbaa !166
  %160 = getelementptr inbounds nuw %struct.PNode, ptr %159, i32 0, i32 11
  %161 = load ptr, ptr %160, align 8, !tbaa !167
  store ptr %161, ptr %8, align 8, !tbaa !3
  %162 = load ptr, ptr %2, align 8, !tbaa !30
  %163 = getelementptr inbounds nuw %struct.Parser, ptr %162, i32 0, i32 21
  %164 = load ptr, ptr %163, align 8, !tbaa !166
  call void @free(ptr noundef %164) #9
  %165 = load ptr, ptr %8, align 8, !tbaa !3
  %166 = load ptr, ptr %2, align 8, !tbaa !30
  %167 = getelementptr inbounds nuw %struct.Parser, ptr %166, i32 0, i32 21
  store ptr %165, ptr %167, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  br label %151, !llvm.loop !186

168:                                              ; preds = %151
  br label %169

169:                                              ; preds = %174, %168
  %170 = load ptr, ptr %2, align 8, !tbaa !30
  %171 = getelementptr inbounds nuw %struct.Parser, ptr %170, i32 0, i32 23
  %172 = load ptr, ptr %171, align 8, !tbaa !187
  %173 = icmp ne ptr %172, null
  br i1 %173, label %174, label %186

174:                                              ; preds = %169
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  %175 = load ptr, ptr %2, align 8, !tbaa !30
  %176 = getelementptr inbounds nuw %struct.Parser, ptr %175, i32 0, i32 23
  %177 = load ptr, ptr %176, align 8, !tbaa !187
  %178 = getelementptr inbounds nuw %struct.ZNode, ptr %177, i32 0, i32 0
  %179 = load ptr, ptr %178, align 8, !tbaa !188
  store ptr %179, ptr %9, align 8, !tbaa !188
  %180 = load ptr, ptr %2, align 8, !tbaa !30
  %181 = getelementptr inbounds nuw %struct.Parser, ptr %180, i32 0, i32 23
  %182 = load ptr, ptr %181, align 8, !tbaa !187
  call void @free(ptr noundef %182) #9
  %183 = load ptr, ptr %9, align 8, !tbaa !188
  %184 = load ptr, ptr %2, align 8, !tbaa !30
  %185 = getelementptr inbounds nuw %struct.Parser, ptr %184, i32 0, i32 23
  store ptr %183, ptr %185, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  br label %169, !llvm.loop !189

186:                                              ; preds = %169
  br label %187

187:                                              ; preds = %192, %186
  %188 = load ptr, ptr %2, align 8, !tbaa !30
  %189 = getelementptr inbounds nuw %struct.Parser, ptr %188, i32 0, i32 22
  %190 = load ptr, ptr %189, align 8, !tbaa !190
  %191 = icmp ne ptr %190, null
  br i1 %191, label %192, label %204

192:                                              ; preds = %187
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  %193 = load ptr, ptr %2, align 8, !tbaa !30
  %194 = getelementptr inbounds nuw %struct.Parser, ptr %193, i32 0, i32 22
  %195 = load ptr, ptr %194, align 8, !tbaa !190
  %196 = getelementptr inbounds nuw %struct.SNode, ptr %195, i32 0, i32 9
  %197 = load ptr, ptr %196, align 8, !tbaa !191
  store ptr %197, ptr %10, align 8, !tbaa !72
  %198 = load ptr, ptr %2, align 8, !tbaa !30
  %199 = getelementptr inbounds nuw %struct.Parser, ptr %198, i32 0, i32 22
  %200 = load ptr, ptr %199, align 8, !tbaa !190
  call void @free(ptr noundef %200) #9
  %201 = load ptr, ptr %10, align 8, !tbaa !72
  %202 = load ptr, ptr %2, align 8, !tbaa !30
  %203 = getelementptr inbounds nuw %struct.Parser, ptr %202, i32 0, i32 22
  store ptr %201, ptr %203, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  br label %187, !llvm.loop !192

204:                                              ; preds = %187
  store i32 0, ptr %3, align 4, !tbaa !21
  br label %205

205:                                              ; preds = %221, %204
  %206 = load i32, ptr %3, align 4, !tbaa !21
  %207 = load ptr, ptr %2, align 8, !tbaa !30
  %208 = getelementptr inbounds nuw %struct.Parser, ptr %207, i32 0, i32 24
  %209 = getelementptr inbounds nuw %struct.anon, ptr %208, i32 0, i32 0
  %210 = load i32, ptr %209, align 8, !tbaa !193
  %211 = icmp ult i32 %206, %210
  br i1 %211, label %212, label %224

212:                                              ; preds = %205
  %213 = load ptr, ptr %2, align 8, !tbaa !30
  %214 = getelementptr inbounds nuw %struct.Parser, ptr %213, i32 0, i32 24
  %215 = getelementptr inbounds nuw %struct.anon, ptr %214, i32 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !194
  %217 = load i32, ptr %3, align 4, !tbaa !21
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds ptr, ptr %216, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !195
  call void @free(ptr noundef %220) #9
  br label %221

221:                                              ; preds = %212
  %222 = load i32, ptr %3, align 4, !tbaa !21
  %223 = add nsw i32 %222, 1
  store i32 %223, ptr %3, align 4, !tbaa !21
  br label %205, !llvm.loop !196

224:                                              ; preds = %205
  br label %225

225:                                              ; preds = %224
  %226 = load ptr, ptr %2, align 8, !tbaa !30
  %227 = getelementptr inbounds nuw %struct.Parser, ptr %226, i32 0, i32 24
  %228 = getelementptr inbounds nuw %struct.anon, ptr %227, i32 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !194
  %230 = icmp ne ptr %229, null
  br i1 %230, label %231, label %246

231:                                              ; preds = %225
  %232 = load ptr, ptr %2, align 8, !tbaa !30
  %233 = getelementptr inbounds nuw %struct.Parser, ptr %232, i32 0, i32 24
  %234 = getelementptr inbounds nuw %struct.anon, ptr %233, i32 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !194
  %236 = load ptr, ptr %2, align 8, !tbaa !30
  %237 = getelementptr inbounds nuw %struct.Parser, ptr %236, i32 0, i32 24
  %238 = getelementptr inbounds nuw %struct.anon, ptr %237, i32 0, i32 3
  %239 = getelementptr inbounds [3 x ptr], ptr %238, i64 0, i64 0
  %240 = icmp ne ptr %235, %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %231
  %242 = load ptr, ptr %2, align 8, !tbaa !30
  %243 = getelementptr inbounds nuw %struct.Parser, ptr %242, i32 0, i32 24
  %244 = getelementptr inbounds nuw %struct.anon, ptr %243, i32 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !194
  call void @free(ptr noundef %245) #9
  br label %246

246:                                              ; preds = %241, %231, %225
  br label %247

247:                                              ; preds = %246
  %248 = load ptr, ptr %2, align 8, !tbaa !30
  %249 = getelementptr inbounds nuw %struct.Parser, ptr %248, i32 0, i32 24
  %250 = getelementptr inbounds nuw %struct.anon, ptr %249, i32 0, i32 0
  store i32 0, ptr %250, align 8, !tbaa !193
  %251 = load ptr, ptr %2, align 8, !tbaa !30
  %252 = getelementptr inbounds nuw %struct.Parser, ptr %251, i32 0, i32 24
  %253 = getelementptr inbounds nuw %struct.anon, ptr %252, i32 0, i32 2
  store ptr null, ptr %253, align 8, !tbaa !194
  br label %254

254:                                              ; preds = %247
  br label %255

255:                                              ; preds = %254
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256
  %258 = load ptr, ptr %2, align 8, !tbaa !30
  %259 = getelementptr inbounds nuw %struct.Parser, ptr %258, i32 0, i32 27
  %260 = load ptr, ptr %259, align 8, !tbaa !140
  %261 = icmp ne ptr %260, null
  br i1 %261, label %262, label %266

262:                                              ; preds = %257
  %263 = load ptr, ptr %2, align 8, !tbaa !30
  %264 = getelementptr inbounds nuw %struct.Parser, ptr %263, i32 0, i32 27
  %265 = load ptr, ptr %264, align 8, !tbaa !140
  call void @free_parser_working_data(ptr noundef %265)
  br label %266

266:                                              ; preds = %262, %257
  %267 = load ptr, ptr %2, align 8, !tbaa !30
  %268 = getelementptr inbounds nuw %struct.Parser, ptr %267, i32 0, i32 25
  %269 = load ptr, ptr %268, align 8, !tbaa !197
  call void @free(ptr noundef %269) #9
  %270 = load ptr, ptr %2, align 8, !tbaa !30
  %271 = getelementptr inbounds nuw %struct.Parser, ptr %270, i32 0, i32 25
  store ptr null, ptr %271, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define dso_local ptr @new_subparser(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  %4 = load ptr, ptr %2, align 8, !tbaa !30
  %5 = getelementptr inbounds nuw %struct.Parser, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !32
  %7 = load ptr, ptr %2, align 8, !tbaa !30
  %8 = getelementptr inbounds nuw %struct.Parser, ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds nuw %struct.D_Parser, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !126
  %11 = call ptr @new_D_Parser(ptr noundef %6, i32 noundef signext %10)
  store ptr %11, ptr %3, align 8, !tbaa !30
  %12 = load ptr, ptr %2, align 8, !tbaa !30
  %13 = getelementptr inbounds nuw %struct.Parser, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !198
  %15 = load ptr, ptr %3, align 8, !tbaa !30
  %16 = getelementptr inbounds nuw %struct.Parser, ptr %15, i32 0, i32 2
  store ptr %14, ptr %16, align 8, !tbaa !198
  %17 = load ptr, ptr %2, align 8, !tbaa !30
  %18 = getelementptr inbounds nuw %struct.Parser, ptr %17, i32 0, i32 28
  %19 = load ptr, ptr %18, align 8, !tbaa !199
  %20 = load ptr, ptr %3, align 8, !tbaa !30
  %21 = getelementptr inbounds nuw %struct.Parser, ptr %20, i32 0, i32 28
  store ptr %19, ptr %21, align 8, !tbaa !199
  %22 = load ptr, ptr %3, align 8, !tbaa !30
  call void @alloc_parser_working_data(ptr noundef %22)
  %23 = load ptr, ptr %3, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret ptr %23
}

; Function Attrs: nounwind
define internal void @alloc_parser_working_data(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !30
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  %4 = getelementptr inbounds nuw %struct.Parser, ptr %3, i32 0, i32 11
  %5 = getelementptr inbounds nuw %struct.PNodeHash, ptr %4, i32 0, i32 1
  store i32 10, ptr %5, align 8, !tbaa !200
  %6 = load ptr, ptr %2, align 8, !tbaa !30
  %7 = getelementptr inbounds nuw %struct.Parser, ptr %6, i32 0, i32 11
  %8 = getelementptr inbounds nuw %struct.PNodeHash, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !200
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds nuw [0 x i32], ptr @prime2, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !21
  %13 = load ptr, ptr %2, align 8, !tbaa !30
  %14 = getelementptr inbounds nuw %struct.Parser, ptr %13, i32 0, i32 11
  %15 = getelementptr inbounds nuw %struct.PNodeHash, ptr %14, i32 0, i32 2
  store i32 %12, ptr %15, align 4, !tbaa !201
  %16 = load ptr, ptr %2, align 8, !tbaa !30
  %17 = getelementptr inbounds nuw %struct.Parser, ptr %16, i32 0, i32 11
  %18 = getelementptr inbounds nuw %struct.PNodeHash, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !201
  %20 = zext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = call noalias ptr @malloc(i64 noundef %21) #10
  %23 = load ptr, ptr %2, align 8, !tbaa !30
  %24 = getelementptr inbounds nuw %struct.Parser, ptr %23, i32 0, i32 11
  %25 = getelementptr inbounds nuw %struct.PNodeHash, ptr %24, i32 0, i32 0
  store ptr %22, ptr %25, align 8, !tbaa !168
  %26 = load ptr, ptr %2, align 8, !tbaa !30
  %27 = getelementptr inbounds nuw %struct.Parser, ptr %26, i32 0, i32 11
  %28 = getelementptr inbounds nuw %struct.PNodeHash, ptr %27, i32 0, i32 0
  %29 = load ptr, ptr %28, align 8, !tbaa !168
  %30 = load ptr, ptr %2, align 8, !tbaa !30
  %31 = getelementptr inbounds nuw %struct.Parser, ptr %30, i32 0, i32 11
  %32 = getelementptr inbounds nuw %struct.PNodeHash, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !201
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 8
  call void @llvm.memset.p0.i64(ptr align 8 %29, i8 0, i64 %35, i1 false)
  %36 = load ptr, ptr %2, align 8, !tbaa !30
  %37 = getelementptr inbounds nuw %struct.Parser, ptr %36, i32 0, i32 12
  %38 = getelementptr inbounds nuw %struct.SNodeHash, ptr %37, i32 0, i32 1
  store i32 8, ptr %38, align 8, !tbaa !202
  %39 = load ptr, ptr %2, align 8, !tbaa !30
  %40 = getelementptr inbounds nuw %struct.Parser, ptr %39, i32 0, i32 12
  %41 = getelementptr inbounds nuw %struct.SNodeHash, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !202
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw [0 x i32], ptr @prime2, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !21
  %46 = load ptr, ptr %2, align 8, !tbaa !30
  %47 = getelementptr inbounds nuw %struct.Parser, ptr %46, i32 0, i32 12
  %48 = getelementptr inbounds nuw %struct.SNodeHash, ptr %47, i32 0, i32 2
  store i32 %45, ptr %48, align 4, !tbaa !203
  %49 = load ptr, ptr %2, align 8, !tbaa !30
  %50 = getelementptr inbounds nuw %struct.Parser, ptr %49, i32 0, i32 12
  %51 = getelementptr inbounds nuw %struct.SNodeHash, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !203
  %53 = zext i32 %52 to i64
  %54 = mul i64 %53, 8
  %55 = call noalias ptr @malloc(i64 noundef %54) #10
  %56 = load ptr, ptr %2, align 8, !tbaa !30
  %57 = getelementptr inbounds nuw %struct.Parser, ptr %56, i32 0, i32 12
  %58 = getelementptr inbounds nuw %struct.SNodeHash, ptr %57, i32 0, i32 0
  store ptr %55, ptr %58, align 8, !tbaa !169
  %59 = load ptr, ptr %2, align 8, !tbaa !30
  %60 = getelementptr inbounds nuw %struct.Parser, ptr %59, i32 0, i32 12
  %61 = getelementptr inbounds nuw %struct.SNodeHash, ptr %60, i32 0, i32 0
  %62 = load ptr, ptr %61, align 8, !tbaa !169
  %63 = load ptr, ptr %2, align 8, !tbaa !30
  %64 = getelementptr inbounds nuw %struct.Parser, ptr %63, i32 0, i32 12
  %65 = getelementptr inbounds nuw %struct.SNodeHash, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !203
  %67 = zext i32 %66 to i64
  %68 = mul i64 %67, 8
  call void @llvm.memset.p0.i64(ptr align 8 %62, i8 0, i64 %68, i1 false)
  %69 = load ptr, ptr %2, align 8, !tbaa !30
  %70 = getelementptr inbounds nuw %struct.Parser, ptr %69, i32 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !32
  %72 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %71, i32 0, i32 4
  %73 = load i32, ptr %72, align 4, !tbaa !204
  %74 = zext i32 %73 to i64
  %75 = mul i64 %74, 40
  %76 = call noalias ptr @malloc(i64 noundef %75) #10
  %77 = load ptr, ptr %2, align 8, !tbaa !30
  %78 = getelementptr inbounds nuw %struct.Parser, ptr %77, i32 0, i32 25
  store ptr %76, ptr %78, align 8, !tbaa !197
  ret void
}

; Function Attrs: nounwind
define dso_local ptr @dparse(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !62
  store ptr %1, ptr %5, align 8, !tbaa !27
  store i32 %2, ptr %6, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  %12 = load ptr, ptr %4, align 8, !tbaa !62
  store ptr %12, ptr %8, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #9
  store ptr null, ptr %11, align 8, !tbaa !59
  %13 = load ptr, ptr %8, align 8, !tbaa !30
  %14 = getelementptr inbounds nuw %struct.Parser, ptr %13, i32 0, i32 9
  store i32 0, ptr %14, align 4, !tbaa !205
  %15 = load ptr, ptr %8, align 8, !tbaa !30
  %16 = getelementptr inbounds nuw %struct.Parser, ptr %15, i32 0, i32 8
  store i32 0, ptr %16, align 8, !tbaa !206
  %17 = load ptr, ptr %8, align 8, !tbaa !30
  %18 = getelementptr inbounds nuw %struct.Parser, ptr %17, i32 0, i32 7
  store i32 0, ptr %18, align 4, !tbaa !207
  %19 = load ptr, ptr %8, align 8, !tbaa !30
  %20 = getelementptr inbounds nuw %struct.Parser, ptr %19, i32 0, i32 6
  store i32 0, ptr %20, align 8, !tbaa !208
  %21 = load ptr, ptr %8, align 8, !tbaa !30
  %22 = getelementptr inbounds nuw %struct.Parser, ptr %21, i32 0, i32 4
  store i32 0, ptr %22, align 8, !tbaa !209
  %23 = load ptr, ptr %5, align 8, !tbaa !27
  %24 = load ptr, ptr %8, align 8, !tbaa !30
  %25 = getelementptr inbounds nuw %struct.Parser, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !142
  %26 = load ptr, ptr %5, align 8, !tbaa !27
  %27 = load i32, ptr %6, align 4, !tbaa !21
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  %30 = load ptr, ptr %8, align 8, !tbaa !30
  %31 = getelementptr inbounds nuw %struct.Parser, ptr %30, i32 0, i32 2
  store ptr %29, ptr %31, align 8, !tbaa !198
  %32 = load ptr, ptr %8, align 8, !tbaa !30
  call void @initialize_whitespace_parser(ptr noundef %32)
  %33 = load ptr, ptr %8, align 8, !tbaa !30
  call void @alloc_parser_working_data(ptr noundef %33)
  %34 = load ptr, ptr %8, align 8, !tbaa !30
  %35 = getelementptr inbounds nuw %struct.Parser, ptr %34, i32 0, i32 0
  %36 = getelementptr inbounds nuw %struct.D_Parser, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !162
  %38 = icmp ne ptr %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %3
  %40 = load ptr, ptr %8, align 8, !tbaa !30
  %41 = getelementptr inbounds nuw %struct.Parser, ptr %40, i32 0, i32 0
  %42 = getelementptr inbounds nuw %struct.D_Parser, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !162
  %44 = load ptr, ptr %8, align 8, !tbaa !30
  %45 = getelementptr inbounds nuw %struct.Parser, ptr %44, i32 0, i32 15
  store ptr %43, ptr %45, align 8, !tbaa !161
  br label %65

46:                                               ; preds = %3
  %47 = load ptr, ptr %8, align 8, !tbaa !30
  %48 = getelementptr inbounds nuw %struct.Parser, ptr %47, i32 0, i32 15
  %49 = load ptr, ptr %48, align 8, !tbaa !161
  %50 = icmp ne ptr %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load ptr, ptr %8, align 8, !tbaa !30
  %53 = getelementptr inbounds nuw %struct.Parser, ptr %52, i32 0, i32 15
  %54 = load ptr, ptr %53, align 8, !tbaa !161
  call void @free_D_Scope(ptr noundef %54, i32 noundef signext 0)
  br label %55

55:                                               ; preds = %51, %46
  %56 = call ptr @new_D_Scope(ptr noundef null)
  %57 = load ptr, ptr %8, align 8, !tbaa !30
  %58 = getelementptr inbounds nuw %struct.Parser, ptr %57, i32 0, i32 15
  store ptr %56, ptr %58, align 8, !tbaa !161
  %59 = load ptr, ptr %8, align 8, !tbaa !30
  %60 = getelementptr inbounds nuw %struct.Parser, ptr %59, i32 0, i32 15
  %61 = load ptr, ptr %60, align 8, !tbaa !161
  %62 = load i8, ptr %61, align 8
  %63 = and i8 %62, -7
  %64 = or i8 %63, 6
  store i8 %64, ptr %61, align 8
  br label %65

65:                                               ; preds = %55, %39
  %66 = load ptr, ptr %8, align 8, !tbaa !30
  %67 = load ptr, ptr %8, align 8, !tbaa !30
  %68 = getelementptr inbounds nuw %struct.Parser, ptr %67, i32 0, i32 0
  %69 = getelementptr inbounds nuw %struct.D_Parser, ptr %68, i32 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !210
  %71 = call signext i32 @exhaustive_parse(ptr noundef %66, i32 noundef signext %70)
  store i32 %71, ptr %7, align 4, !tbaa !21
  %72 = load i32, ptr %7, align 4, !tbaa !21
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %190, label %74

74:                                               ; preds = %65
  %75 = load ptr, ptr %8, align 8, !tbaa !30
  %76 = getelementptr inbounds nuw %struct.Parser, ptr %75, i32 0, i32 16
  %77 = load ptr, ptr %76, align 8, !tbaa !143
  store ptr %77, ptr %9, align 8, !tbaa !72
  %78 = load ptr, ptr %9, align 8, !tbaa !72
  %79 = getelementptr inbounds nuw %struct.SNode, ptr %78, i32 0, i32 6
  %80 = getelementptr inbounds nuw %struct.VecZNode, ptr %79, i32 0, i32 0
  %81 = load i32, ptr %80, align 8, !tbaa !211
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %96, label %83

83:                                               ; preds = %74
  %84 = load ptr, ptr %9, align 8, !tbaa !72
  %85 = getelementptr inbounds nuw %struct.SNode, ptr %84, i32 0, i32 6
  %86 = getelementptr inbounds nuw %struct.VecZNode, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !212
  %88 = getelementptr inbounds ptr, ptr %87, i64 0
  %89 = load ptr, ptr %88, align 8, !tbaa !188
  %90 = getelementptr inbounds nuw %struct.ZNode, ptr %89, i32 0, i32 0
  %91 = load ptr, ptr %90, align 8, !tbaa !213
  %92 = getelementptr inbounds nuw %struct.PNode, ptr %91, i32 0, i32 7
  %93 = getelementptr inbounds nuw %struct.VecPNode, ptr %92, i32 0, i32 0
  %94 = load i32, ptr %93, align 8, !tbaa !20
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %83, %74
  call void (ptr, ...) @d_fail(ptr noundef @.str.8)
  br label %97

97:                                               ; preds = %96, %83
  %98 = load ptr, ptr %9, align 8, !tbaa !72
  %99 = getelementptr inbounds nuw %struct.SNode, ptr %98, i32 0, i32 6
  %100 = getelementptr inbounds nuw %struct.VecZNode, ptr %99, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !212
  %102 = getelementptr inbounds ptr, ptr %101, i64 0
  %103 = load ptr, ptr %102, align 8, !tbaa !188
  %104 = getelementptr inbounds nuw %struct.ZNode, ptr %103, i32 0, i32 0
  %105 = load ptr, ptr %104, align 8, !tbaa !213
  %106 = getelementptr inbounds nuw %struct.PNode, ptr %105, i32 0, i32 14
  %107 = load ptr, ptr %106, align 8, !tbaa !165
  %108 = getelementptr inbounds nuw %struct.PNode, ptr %107, i32 0, i32 7
  %109 = getelementptr inbounds nuw %struct.VecPNode, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !22
  %111 = getelementptr inbounds ptr, ptr %110, i64 0
  %112 = load ptr, ptr %111, align 8, !tbaa !3
  store ptr %112, ptr %10, align 8, !tbaa !3
  %113 = load ptr, ptr %8, align 8, !tbaa !30
  %114 = load ptr, ptr %10, align 8, !tbaa !3
  %115 = call ptr @commit_tree(ptr noundef %113, ptr noundef %114)
  store ptr %115, ptr %10, align 8, !tbaa !3
  %116 = load i32, ptr @verbose_level, align 4, !tbaa !21
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %154

118:                                              ; preds = %97
  %119 = load ptr, ptr %8, align 8, !tbaa !30
  %120 = getelementptr inbounds nuw %struct.Parser, ptr %119, i32 0, i32 4
  %121 = load i32, ptr %120, align 8, !tbaa !209
  %122 = load ptr, ptr %8, align 8, !tbaa !30
  %123 = getelementptr inbounds nuw %struct.Parser, ptr %122, i32 0, i32 6
  %124 = load i32, ptr %123, align 8, !tbaa !208
  %125 = load ptr, ptr %8, align 8, !tbaa !30
  %126 = getelementptr inbounds nuw %struct.Parser, ptr %125, i32 0, i32 7
  %127 = load i32, ptr %126, align 4, !tbaa !207
  %128 = load ptr, ptr %8, align 8, !tbaa !30
  %129 = getelementptr inbounds nuw %struct.Parser, ptr %128, i32 0, i32 8
  %130 = load i32, ptr %129, align 8, !tbaa !206
  %131 = load ptr, ptr %8, align 8, !tbaa !30
  %132 = getelementptr inbounds nuw %struct.Parser, ptr %131, i32 0, i32 9
  %133 = load i32, ptr %132, align 4, !tbaa !205
  %134 = load ptr, ptr %8, align 8, !tbaa !30
  %135 = getelementptr inbounds nuw %struct.Parser, ptr %134, i32 0, i32 10
  %136 = load i32, ptr %135, align 8, !tbaa !105
  %137 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef signext %121, i32 noundef signext %124, i32 noundef signext %127, i32 noundef signext %130, i32 noundef signext %133, i32 noundef signext %136)
  %138 = load ptr, ptr %8, align 8, !tbaa !30
  %139 = getelementptr inbounds nuw %struct.Parser, ptr %138, i32 0, i32 0
  %140 = getelementptr inbounds nuw %struct.D_Parser, ptr %139, i32 0, i32 9
  %141 = load i32, ptr %140, align 8, !tbaa !132
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %118
  %144 = load i32, ptr @verbose_level, align 4, !tbaa !21
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !tbaa !30
  %148 = load ptr, ptr %10, align 8, !tbaa !3
  call void @xprint_paren(ptr noundef %147, ptr noundef %148)
  br label %151

149:                                              ; preds = %143
  %150 = load ptr, ptr %10, align 8, !tbaa !3
  call void @print_paren(ptr noundef %150)
  br label %151

151:                                              ; preds = %149, %146
  %152 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %153

153:                                              ; preds = %151, %118
  br label %154

154:                                              ; preds = %153, %97
  %155 = load ptr, ptr %8, align 8, !tbaa !30
  %156 = getelementptr inbounds nuw %struct.Parser, ptr %155, i32 0, i32 0
  %157 = getelementptr inbounds nuw %struct.D_Parser, ptr %156, i32 0, i32 9
  %158 = load i32, ptr %157, align 8, !tbaa !132
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %154
  br label %161

161:                                              ; preds = %160
  %162 = load ptr, ptr %10, align 8, !tbaa !3
  %163 = getelementptr inbounds nuw %struct.PNode, ptr %162, i32 0, i32 6
  %164 = load i32, ptr %163, align 8, !tbaa !100
  %165 = add i32 %164, 1
  store i32 %165, ptr %163, align 8, !tbaa !100
  br label %166

166:                                              ; preds = %161
  br label %167

167:                                              ; preds = %166
  %168 = load ptr, ptr %10, align 8, !tbaa !3
  %169 = getelementptr inbounds nuw %struct.PNode, ptr %168, i32 0, i32 19
  store ptr %169, ptr %11, align 8, !tbaa !59
  br label %171

170:                                              ; preds = %154
  store ptr inttoptr (i64 1 to ptr), ptr %11, align 8, !tbaa !59
  br label %171

171:                                              ; preds = %170, %167
  br label %172

172:                                              ; preds = %171
  %173 = load ptr, ptr %8, align 8, !tbaa !30
  %174 = getelementptr inbounds nuw %struct.Parser, ptr %173, i32 0, i32 16
  %175 = load ptr, ptr %174, align 8, !tbaa !143
  %176 = getelementptr inbounds nuw %struct.SNode, ptr %175, i32 0, i32 7
  %177 = load i32, ptr %176, align 8, !tbaa !145
  %178 = add i32 %177, -1
  store i32 %178, ptr %176, align 8, !tbaa !145
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %172
  %181 = load ptr, ptr %8, align 8, !tbaa !30
  %182 = load ptr, ptr %8, align 8, !tbaa !30
  %183 = getelementptr inbounds nuw %struct.Parser, ptr %182, i32 0, i32 16
  %184 = load ptr, ptr %183, align 8, !tbaa !143
  call void @free_SNode(ptr noundef %181, ptr noundef %184)
  br label %185

185:                                              ; preds = %180, %172
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  %188 = load ptr, ptr %8, align 8, !tbaa !30
  %189 = getelementptr inbounds nuw %struct.Parser, ptr %188, i32 0, i32 16
  store ptr null, ptr %189, align 8, !tbaa !143
  br label %193

190:                                              ; preds = %65
  %191 = load ptr, ptr %8, align 8, !tbaa !30
  %192 = getelementptr inbounds nuw %struct.Parser, ptr %191, i32 0, i32 16
  store ptr null, ptr %192, align 8, !tbaa !143
  br label %193

193:                                              ; preds = %190, %187
  %194 = load ptr, ptr %8, align 8, !tbaa !30
  call void @free_parser_working_data(ptr noundef %194)
  %195 = load ptr, ptr %11, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  ret ptr %195
}

; Function Attrs: nounwind
define internal void @initialize_whitespace_parser(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !30
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  %4 = getelementptr inbounds nuw %struct.Parser, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !32
  %6 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !135
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !30
  %11 = call ptr @new_subparser(ptr noundef %10)
  %12 = load ptr, ptr %2, align 8, !tbaa !30
  %13 = getelementptr inbounds nuw %struct.Parser, ptr %12, i32 0, i32 27
  store ptr %11, ptr %13, align 8, !tbaa !140
  %14 = load ptr, ptr %2, align 8, !tbaa !30
  %15 = getelementptr inbounds nuw %struct.Parser, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !140
  %17 = getelementptr inbounds nuw %struct.Parser, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds nuw %struct.D_Parser, ptr %17, i32 0, i32 1
  store ptr @null_white_space, ptr %18, align 8, !tbaa !134
  %19 = load ptr, ptr %2, align 8, !tbaa !30
  %20 = getelementptr inbounds nuw %struct.Parser, ptr %19, i32 0, i32 27
  %21 = load ptr, ptr %20, align 8, !tbaa !140
  %22 = getelementptr inbounds nuw %struct.Parser, ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds nuw %struct.D_Parser, ptr %22, i32 0, i32 16
  store i32 0, ptr %23, align 4, !tbaa !130
  %24 = load ptr, ptr %2, align 8, !tbaa !30
  %25 = getelementptr inbounds nuw %struct.Parser, ptr %24, i32 0, i32 27
  %26 = load ptr, ptr %25, align 8, !tbaa !140
  %27 = getelementptr inbounds nuw %struct.Parser, ptr %26, i32 0, i32 0
  %28 = getelementptr inbounds nuw %struct.D_Parser, ptr %27, i32 0, i32 17
  store i32 1, ptr %28, align 8, !tbaa !216
  br label %29

29:                                               ; preds = %9, %1
  ret void
}

declare ptr @new_D_Scope(ptr noundef) #2

; Function Attrs: nounwind
define internal signext i32 @exhaustive_parse(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.PNode, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.d_loc_t, align 8
  %17 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !30
  store i32 %1, ptr %5, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  store ptr null, ptr %9, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 240, ptr %11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #9
  store i32 0, ptr %14, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #9
  store i32 0, ptr %15, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 32, ptr %16) #9
  %18 = load ptr, ptr %4, align 8, !tbaa !30
  %19 = getelementptr inbounds nuw %struct.Parser, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !142
  %21 = load ptr, ptr %4, align 8, !tbaa !30
  %22 = getelementptr inbounds nuw %struct.Parser, ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds nuw %struct.D_Parser, ptr %22, i32 0, i32 6
  %24 = getelementptr inbounds nuw %struct.d_loc_t, ptr %23, i32 0, i32 0
  store ptr %20, ptr %24, align 8, !tbaa !217
  store ptr %20, ptr %8, align 8, !tbaa !27
  %25 = load ptr, ptr %4, align 8, !tbaa !30
  %26 = getelementptr inbounds nuw %struct.Parser, ptr %25, i32 0, i32 0
  %27 = getelementptr inbounds nuw %struct.D_Parser, ptr %26, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %27, i64 32, i1 false), !tbaa.struct !144
  %28 = load ptr, ptr %4, align 8, !tbaa !30
  %29 = getelementptr inbounds nuw %struct.Parser, ptr %28, i32 0, i32 0
  %30 = getelementptr inbounds nuw %struct.D_Parser, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !134
  %32 = load ptr, ptr %4, align 8, !tbaa !30
  %33 = load ptr, ptr %4, align 8, !tbaa !30
  %34 = getelementptr inbounds nuw %struct.Parser, ptr %33, i32 0, i32 0
  %35 = getelementptr inbounds nuw %struct.D_Parser, ptr %34, i32 0, i32 0
  call void %31(ptr noundef %32, ptr noundef %16, ptr noundef %35)
  %36 = load ptr, ptr %4, align 8, !tbaa !30
  %37 = load ptr, ptr %4, align 8, !tbaa !30
  %38 = getelementptr inbounds nuw %struct.Parser, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !32
  %40 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !77
  %42 = load i32, ptr %5, align 4, !tbaa !21
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.D_State, ptr %41, i64 %43
  %45 = load ptr, ptr %4, align 8, !tbaa !30
  %46 = getelementptr inbounds nuw %struct.Parser, ptr %45, i32 0, i32 15
  %47 = load ptr, ptr %46, align 8, !tbaa !161
  %48 = load ptr, ptr %4, align 8, !tbaa !30
  %49 = getelementptr inbounds nuw %struct.Parser, ptr %48, i32 0, i32 0
  %50 = getelementptr inbounds nuw %struct.D_Parser, ptr %49, i32 0, i32 0
  %51 = load ptr, ptr %50, align 8, !tbaa !218
  %52 = call ptr @add_SNode(ptr noundef %36, ptr noundef %44, ptr noundef %16, ptr noundef %47, ptr noundef %51)
  store ptr %52, ptr %12, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 240, i1 false)
  %53 = load ptr, ptr %4, align 8, !tbaa !30
  %54 = getelementptr inbounds nuw %struct.Parser, ptr %53, i32 0, i32 0
  %55 = getelementptr inbounds nuw %struct.D_Parser, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !134
  %57 = getelementptr inbounds nuw %struct.PNode, ptr %11, i32 0, i32 19
  %58 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %57, i32 0, i32 5
  store ptr %56, ptr %58, align 8, !tbaa !219
  %59 = load ptr, ptr %4, align 8, !tbaa !30
  %60 = getelementptr inbounds nuw %struct.Parser, ptr %59, i32 0, i32 0
  %61 = getelementptr inbounds nuw %struct.D_Parser, ptr %60, i32 0, i32 0
  %62 = load ptr, ptr %61, align 8, !tbaa !218
  %63 = getelementptr inbounds nuw %struct.PNode, ptr %11, i32 0, i32 19
  %64 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %63, i32 0, i32 6
  store ptr %62, ptr %64, align 8, !tbaa !220
  %65 = load ptr, ptr %4, align 8, !tbaa !30
  %66 = getelementptr inbounds nuw %struct.Parser, ptr %65, i32 0, i32 15
  %67 = load ptr, ptr %66, align 8, !tbaa !161
  %68 = getelementptr inbounds nuw %struct.PNode, ptr %11, i32 0, i32 19
  %69 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %68, i32 0, i32 4
  store ptr %67, ptr %69, align 8, !tbaa !221
  %70 = getelementptr inbounds nuw %struct.PNode, ptr %11, i32 0, i32 17
  store ptr %67, ptr %70, align 8, !tbaa !91
  %71 = getelementptr inbounds nuw %struct.d_loc_t, ptr %16, i32 0, i32 0
  %72 = load ptr, ptr %71, align 8, !tbaa !141
  %73 = getelementptr inbounds nuw %struct.PNode, ptr %11, i32 0, i32 19
  %74 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %73, i32 0, i32 2
  store ptr %72, ptr %74, align 8, !tbaa !222
  %75 = load ptr, ptr %4, align 8, !tbaa !30
  %76 = getelementptr inbounds nuw %struct.d_loc_t, ptr %16, i32 0, i32 0
  %77 = load ptr, ptr %76, align 8, !tbaa !141
  %78 = call ptr @add_PNode(ptr noundef %75, i32 noundef signext 0, ptr noundef %16, ptr noundef %77, ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null)
  store ptr %78, ptr %10, align 8, !tbaa !3
  %79 = load ptr, ptr %10, align 8, !tbaa !3
  %80 = load ptr, ptr %12, align 8, !tbaa !72
  %81 = getelementptr inbounds nuw %struct.SNode, ptr %80, i32 0, i32 5
  store ptr %79, ptr %81, align 8, !tbaa !223
  %82 = load ptr, ptr %12, align 8, !tbaa !72
  %83 = getelementptr inbounds nuw %struct.SNode, ptr %82, i32 0, i32 6
  %84 = load ptr, ptr %4, align 8, !tbaa !30
  %85 = load ptr, ptr %10, align 8, !tbaa !3
  %86 = call ptr @new_ZNode(ptr noundef %84, ptr noundef %85)
  store ptr %86, ptr %13, align 8, !tbaa !188
  call void @set_add_znode(ptr noundef %83, ptr noundef %86)
  br label %87

87:                                               ; preds = %2
  %88 = load ptr, ptr %10, align 8, !tbaa !3
  %89 = getelementptr inbounds nuw %struct.PNode, ptr %88, i32 0, i32 6
  %90 = load i32, ptr %89, align 8, !tbaa !100
  %91 = add i32 %90, 1
  store i32 %91, ptr %89, align 8, !tbaa !100
  br label %92

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %303, %194, %93
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %160, %95
  %97 = load ptr, ptr %4, align 8, !tbaa !30
  %98 = getelementptr inbounds nuw %struct.Parser, ptr %97, i32 0, i32 13
  %99 = load ptr, ptr %98, align 8, !tbaa !170
  %100 = icmp ne ptr %99, null
  br i1 %100, label %101, label %161

101:                                              ; preds = %96
  %102 = load ptr, ptr %4, align 8, !tbaa !30
  %103 = getelementptr inbounds nuw %struct.Parser, ptr %102, i32 0, i32 13
  %104 = load ptr, ptr %103, align 8, !tbaa !170
  %105 = getelementptr inbounds nuw %struct.Reduction, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !175
  %107 = getelementptr inbounds nuw %struct.SNode, ptr %106, i32 0, i32 3
  %108 = getelementptr inbounds nuw %struct.d_loc_t, ptr %107, i32 0, i32 0
  %109 = load ptr, ptr %108, align 8, !tbaa !224
  store ptr %109, ptr %8, align 8, !tbaa !27
  %110 = load ptr, ptr %4, align 8, !tbaa !30
  %111 = getelementptr inbounds nuw %struct.Parser, ptr %110, i32 0, i32 14
  %112 = load ptr, ptr %111, align 8, !tbaa !177
  %113 = icmp ne ptr %112, null
  br i1 %113, label %114, label %126

114:                                              ; preds = %101
  %115 = load ptr, ptr %4, align 8, !tbaa !30
  %116 = getelementptr inbounds nuw %struct.Parser, ptr %115, i32 0, i32 14
  %117 = load ptr, ptr %116, align 8, !tbaa !177
  %118 = getelementptr inbounds nuw %struct.Shift, ptr %117, i32 0, i32 0
  %119 = load ptr, ptr %118, align 8, !tbaa !182
  %120 = getelementptr inbounds nuw %struct.SNode, ptr %119, i32 0, i32 3
  %121 = getelementptr inbounds nuw %struct.d_loc_t, ptr %120, i32 0, i32 0
  %122 = load ptr, ptr %121, align 8, !tbaa !224
  %123 = load ptr, ptr %8, align 8, !tbaa !27
  %124 = icmp ult ptr %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  br label %161

126:                                              ; preds = %114, %101
  %127 = load ptr, ptr %8, align 8, !tbaa !27
  %128 = load ptr, ptr %9, align 8, !tbaa !27
  %129 = icmp ugt ptr %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load ptr, ptr %8, align 8, !tbaa !27
  store ptr %131, ptr %9, align 8, !tbaa !27
  %132 = load ptr, ptr %4, align 8, !tbaa !30
  call void @free_old_nodes(ptr noundef %132)
  br label %133

133:                                              ; preds = %130, %126
  br label %134

134:                                              ; preds = %150, %133
  %135 = load ptr, ptr %4, align 8, !tbaa !30
  %136 = getelementptr inbounds nuw %struct.Parser, ptr %135, i32 0, i32 13
  %137 = load ptr, ptr %136, align 8, !tbaa !170
  store ptr %137, ptr %6, align 8, !tbaa !174
  %138 = icmp ne ptr %137, null
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load ptr, ptr %6, align 8, !tbaa !174
  %141 = getelementptr inbounds nuw %struct.Reduction, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !175
  %143 = getelementptr inbounds nuw %struct.SNode, ptr %142, i32 0, i32 3
  %144 = getelementptr inbounds nuw %struct.d_loc_t, ptr %143, i32 0, i32 0
  %145 = load ptr, ptr %144, align 8, !tbaa !224
  %146 = load ptr, ptr %8, align 8, !tbaa !27
  %147 = icmp eq ptr %145, %146
  br label %148

148:                                              ; preds = %139, %134
  %149 = phi i1 [ false, %134 ], [ %147, %139 ]
  br i1 %149, label %150, label %160

150:                                              ; preds = %148
  %151 = load ptr, ptr %4, align 8, !tbaa !30
  %152 = getelementptr inbounds nuw %struct.Parser, ptr %151, i32 0, i32 13
  %153 = load ptr, ptr %152, align 8, !tbaa !170
  %154 = getelementptr inbounds nuw %struct.Reduction, ptr %153, i32 0, i32 5
  %155 = load ptr, ptr %154, align 8, !tbaa !172
  %156 = load ptr, ptr %4, align 8, !tbaa !30
  %157 = getelementptr inbounds nuw %struct.Parser, ptr %156, i32 0, i32 13
  store ptr %155, ptr %157, align 8, !tbaa !170
  %158 = load ptr, ptr %4, align 8, !tbaa !30
  %159 = load ptr, ptr %6, align 8, !tbaa !174
  call void @reduce_one(ptr noundef %158, ptr noundef %159)
  br label %134, !llvm.loop !225

160:                                              ; preds = %148
  br label %96, !llvm.loop !226

161:                                              ; preds = %125, %96
  %162 = load ptr, ptr %4, align 8, !tbaa !30
  %163 = getelementptr inbounds nuw %struct.Parser, ptr %162, i32 0, i32 14
  %164 = load ptr, ptr %163, align 8, !tbaa !177
  %165 = icmp ne ptr %164, null
  br i1 %165, label %195, label %166

166:                                              ; preds = %161
  %167 = load ptr, ptr %4, align 8, !tbaa !30
  %168 = getelementptr inbounds nuw %struct.Parser, ptr %167, i32 0, i32 16
  %169 = load ptr, ptr %168, align 8, !tbaa !143
  %170 = icmp ne ptr %169, null
  br i1 %170, label %171, label %189

171:                                              ; preds = %166
  %172 = load ptr, ptr %4, align 8, !tbaa !30
  %173 = getelementptr inbounds nuw %struct.Parser, ptr %172, i32 0, i32 16
  %174 = load ptr, ptr %173, align 8, !tbaa !143
  %175 = getelementptr inbounds nuw %struct.SNode, ptr %174, i32 0, i32 3
  %176 = getelementptr inbounds nuw %struct.d_loc_t, ptr %175, i32 0, i32 0
  %177 = load ptr, ptr %176, align 8, !tbaa !224
  %178 = load ptr, ptr %4, align 8, !tbaa !30
  %179 = getelementptr inbounds nuw %struct.Parser, ptr %178, i32 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !198
  %181 = icmp eq ptr %177, %180
  br i1 %181, label %188, label %182

182:                                              ; preds = %171
  %183 = load ptr, ptr %4, align 8, !tbaa !30
  %184 = getelementptr inbounds nuw %struct.Parser, ptr %183, i32 0, i32 0
  %185 = getelementptr inbounds nuw %struct.D_Parser, ptr %184, i32 0, i32 17
  %186 = load i32, ptr %185, align 8, !tbaa !216
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182, %171
  store i32 0, ptr %3, align 4
  store i32 1, ptr %17, align 4
  br label %304

189:                                              ; preds = %182, %166
  %190 = load ptr, ptr %4, align 8, !tbaa !30
  %191 = call signext i32 @error_recovery(ptr noundef %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  store i32 1, ptr %3, align 4
  store i32 1, ptr %17, align 4
  br label %304

194:                                              ; preds = %189
  br label %94

195:                                              ; preds = %161
  %196 = load ptr, ptr %4, align 8, !tbaa !30
  %197 = getelementptr inbounds nuw %struct.Parser, ptr %196, i32 0, i32 0
  %198 = getelementptr inbounds nuw %struct.D_Parser, ptr %197, i32 0, i32 10
  %199 = load i32, ptr %198, align 4, !tbaa !227
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %210, label %201

201:                                              ; preds = %195
  %202 = load ptr, ptr %4, align 8, !tbaa !30
  %203 = getelementptr inbounds nuw %struct.Parser, ptr %202, i32 0, i32 14
  %204 = load ptr, ptr %203, align 8, !tbaa !177
  %205 = getelementptr inbounds nuw %struct.Shift, ptr %204, i32 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !179
  %207 = icmp ne ptr %206, null
  br i1 %207, label %208, label %210

208:                                              ; preds = %201
  %209 = load ptr, ptr %4, align 8, !tbaa !30
  call void @cmp_stacks(ptr noundef %209)
  br label %210

210:                                              ; preds = %208, %201, %195
  br label %211

211:                                              ; preds = %210
  %212 = load ptr, ptr %4, align 8, !tbaa !30
  %213 = getelementptr inbounds nuw %struct.Parser, ptr %212, i32 0, i32 14
  %214 = load ptr, ptr %213, align 8, !tbaa !177
  %215 = getelementptr inbounds nuw %struct.Shift, ptr %214, i32 0, i32 0
  %216 = load ptr, ptr %215, align 8, !tbaa !182
  %217 = getelementptr inbounds nuw %struct.SNode, ptr %216, i32 0, i32 3
  %218 = getelementptr inbounds nuw %struct.d_loc_t, ptr %217, i32 0, i32 0
  %219 = load ptr, ptr %218, align 8, !tbaa !224
  store ptr %219, ptr %8, align 8, !tbaa !27
  %220 = load ptr, ptr %8, align 8, !tbaa !27
  %221 = load ptr, ptr %9, align 8, !tbaa !27
  %222 = icmp ugt ptr %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %211
  %224 = load ptr, ptr %8, align 8, !tbaa !27
  store ptr %224, ptr %9, align 8, !tbaa !27
  %225 = load ptr, ptr %4, align 8, !tbaa !30
  call void @free_old_nodes(ptr noundef %225)
  br label %226

226:                                              ; preds = %223, %211
  %227 = load i32, ptr %14, align 4, !tbaa !21
  %228 = add nsw i32 %227, 1
  store i32 %228, ptr %14, align 4, !tbaa !21
  %229 = load i32, ptr %14, align 4, !tbaa !21
  %230 = load ptr, ptr %4, align 8, !tbaa !30
  %231 = getelementptr inbounds nuw %struct.Parser, ptr %230, i32 0, i32 0
  %232 = getelementptr inbounds nuw %struct.D_Parser, ptr %231, i32 0, i32 15
  %233 = load i32, ptr %232, align 8, !tbaa !127
  %234 = icmp sgt i32 %229, %233
  %235 = zext i1 %234 to i32
  store i32 %235, ptr %15, align 4, !tbaa !21
  %236 = load i32, ptr %15, align 4, !tbaa !21
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %253

238:                                              ; preds = %226
  %239 = load ptr, ptr %4, align 8, !tbaa !30
  %240 = getelementptr inbounds nuw %struct.Parser, ptr %239, i32 0, i32 14
  %241 = load ptr, ptr %240, align 8, !tbaa !177
  %242 = getelementptr inbounds nuw %struct.Shift, ptr %241, i32 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !179
  %244 = icmp ne ptr %243, null
  br i1 %244, label %253, label %245

245:                                              ; preds = %238
  %246 = load ptr, ptr %4, align 8, !tbaa !30
  %247 = load ptr, ptr %4, align 8, !tbaa !30
  %248 = getelementptr inbounds nuw %struct.Parser, ptr %247, i32 0, i32 14
  %249 = load ptr, ptr %248, align 8, !tbaa !177
  %250 = getelementptr inbounds nuw %struct.Shift, ptr %249, i32 0, i32 0
  %251 = load ptr, ptr %250, align 8, !tbaa !182
  %252 = call signext i32 @commit_stack(ptr noundef %246, ptr noundef %251)
  store i32 0, ptr %14, align 4, !tbaa !21
  store i32 0, ptr %15, align 4, !tbaa !21
  br label %253

253:                                              ; preds = %245, %238, %226
  br label %254

254:                                              ; preds = %270, %253
  %255 = load ptr, ptr %4, align 8, !tbaa !30
  %256 = getelementptr inbounds nuw %struct.Parser, ptr %255, i32 0, i32 14
  %257 = load ptr, ptr %256, align 8, !tbaa !177
  store ptr %257, ptr %7, align 8, !tbaa !181
  %258 = icmp ne ptr %257, null
  br i1 %258, label %259, label %268

259:                                              ; preds = %254
  %260 = load ptr, ptr %7, align 8, !tbaa !181
  %261 = getelementptr inbounds nuw %struct.Shift, ptr %260, i32 0, i32 0
  %262 = load ptr, ptr %261, align 8, !tbaa !182
  %263 = getelementptr inbounds nuw %struct.SNode, ptr %262, i32 0, i32 3
  %264 = getelementptr inbounds nuw %struct.d_loc_t, ptr %263, i32 0, i32 0
  %265 = load ptr, ptr %264, align 8, !tbaa !224
  %266 = load ptr, ptr %8, align 8, !tbaa !27
  %267 = icmp eq ptr %265, %266
  br label %268

268:                                              ; preds = %259, %254
  %269 = phi i1 [ false, %254 ], [ %267, %259 ]
  br i1 %269, label %270, label %280

270:                                              ; preds = %268
  %271 = load ptr, ptr %4, align 8, !tbaa !30
  %272 = getelementptr inbounds nuw %struct.Parser, ptr %271, i32 0, i32 14
  %273 = load ptr, ptr %272, align 8, !tbaa !177
  %274 = getelementptr inbounds nuw %struct.Shift, ptr %273, i32 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !179
  %276 = load ptr, ptr %4, align 8, !tbaa !30
  %277 = getelementptr inbounds nuw %struct.Parser, ptr %276, i32 0, i32 14
  store ptr %275, ptr %277, align 8, !tbaa !177
  %278 = load ptr, ptr %4, align 8, !tbaa !30
  %279 = load ptr, ptr %7, align 8, !tbaa !181
  call void @shift_one(ptr noundef %278, ptr noundef %279)
  br label %254, !llvm.loop !228

280:                                              ; preds = %268
  %281 = load i32, ptr %15, align 4, !tbaa !21
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %303

283:                                              ; preds = %280
  %284 = load ptr, ptr %4, align 8, !tbaa !30
  %285 = getelementptr inbounds nuw %struct.Parser, ptr %284, i32 0, i32 13
  %286 = load ptr, ptr %285, align 8, !tbaa !170
  %287 = icmp ne ptr %286, null
  br i1 %287, label %288, label %303

288:                                              ; preds = %283
  %289 = load ptr, ptr %4, align 8, !tbaa !30
  %290 = getelementptr inbounds nuw %struct.Parser, ptr %289, i32 0, i32 13
  %291 = load ptr, ptr %290, align 8, !tbaa !170
  %292 = getelementptr inbounds nuw %struct.Reduction, ptr %291, i32 0, i32 5
  %293 = load ptr, ptr %292, align 8, !tbaa !172
  %294 = icmp ne ptr %293, null
  br i1 %294, label %303, label %295

295:                                              ; preds = %288
  %296 = load ptr, ptr %4, align 8, !tbaa !30
  %297 = load ptr, ptr %4, align 8, !tbaa !30
  %298 = getelementptr inbounds nuw %struct.Parser, ptr %297, i32 0, i32 13
  %299 = load ptr, ptr %298, align 8, !tbaa !170
  %300 = getelementptr inbounds nuw %struct.Reduction, ptr %299, i32 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !175
  %302 = call signext i32 @commit_stack(ptr noundef %296, ptr noundef %301)
  store i32 0, ptr %14, align 4, !tbaa !21
  br label %303

303:                                              ; preds = %295, %288, %283, %280
  br label %94

304:                                              ; preds = %193, %188
  call void @llvm.lifetime.end.p0(i64 32, ptr %16) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 240, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  %305 = load i32, ptr %3, align 4
  ret i32 %305
}

; Function Attrs: nounwind
define internal ptr @commit_tree(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !30
  store ptr %1, ptr %5, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  store i32 0, ptr %8, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9
  %11 = load ptr, ptr %5, align 8, !tbaa !3
  %12 = getelementptr inbounds nuw %struct.PNode, ptr %11, i32 0, i32 9
  %13 = load i8, ptr %12, align 4, !tbaa !229
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load ptr, ptr %5, align 8, !tbaa !3
  store ptr %16, ptr %3, align 8
  store i32 1, ptr %10, align 4
  br label %198

17:                                               ; preds = %2
  %18 = load ptr, ptr %5, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.PNode, ptr %18, i32 0, i32 19
  %20 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %19, i32 0, i32 1
  %21 = getelementptr inbounds nuw %struct.d_loc_t, ptr %20, i32 0, i32 0
  %22 = load ptr, ptr %21, align 8, !tbaa !25
  %23 = load ptr, ptr %5, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.PNode, ptr %23, i32 0, i32 19
  %25 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !222
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %17
  %29 = load ptr, ptr %5, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.PNode, ptr %29, i32 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !114
  %32 = icmp ne ptr %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load ptr, ptr %5, align 8, !tbaa !3
  %35 = getelementptr inbounds nuw %struct.PNode, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !114
  %37 = getelementptr inbounds nuw %struct.D_Reduction, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !230
  %39 = icmp ne ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33, %28, %17
  %41 = load ptr, ptr %5, align 8, !tbaa !3
  %42 = getelementptr inbounds nuw %struct.PNode, ptr %41, i32 0, i32 9
  store i8 1, ptr %42, align 4, !tbaa !229
  br label %43

43:                                               ; preds = %40, %33
  %44 = load ptr, ptr %5, align 8, !tbaa !3
  %45 = getelementptr inbounds nuw %struct.PNode, ptr %44, i32 0, i32 13
  %46 = load ptr, ptr %45, align 8, !tbaa !102
  %47 = icmp ne ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load ptr, ptr %4, align 8, !tbaa !30
  %50 = load ptr, ptr %5, align 8, !tbaa !3
  %51 = call ptr @resolve_ambiguities(ptr noundef %49, ptr noundef %50)
  store ptr %51, ptr %5, align 8, !tbaa !3
  br label %52

52:                                               ; preds = %48, %43
  %53 = load ptr, ptr %4, align 8, !tbaa !30
  %54 = getelementptr inbounds nuw %struct.Parser, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !32
  %56 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !48
  %58 = load ptr, ptr %5, align 8, !tbaa !3
  %59 = getelementptr inbounds nuw %struct.PNode, ptr %58, i32 0, i32 19
  %60 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %59, i32 0, i32 0
  %61 = load i32, ptr %60, align 8, !tbaa !54
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.D_Symbol, ptr %57, i64 %62
  %64 = getelementptr inbounds nuw %struct.D_Symbol, ptr %63, i32 0, i32 0
  %65 = load i32, ptr %64, align 8, !tbaa !231
  %66 = icmp eq i32 %65, 2
  %67 = zext i1 %66 to i32
  store i32 %67, ptr %9, align 4, !tbaa !21
  %68 = load ptr, ptr %4, align 8, !tbaa !30
  %69 = getelementptr inbounds nuw %struct.Parser, ptr %68, i32 0, i32 0
  %70 = getelementptr inbounds nuw %struct.D_Parser, ptr %69, i32 0, i32 11
  %71 = load i32, ptr %70, align 8, !tbaa !232
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %52
  %74 = load i32, ptr %9, align 4, !tbaa !21
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %73, %52
  %77 = phi i1 [ false, %52 ], [ %75, %73 ]
  %78 = zext i1 %77 to i32
  store i32 %78, ptr %8, align 4, !tbaa !21
  store i32 0, ptr %6, align 4, !tbaa !21
  br label %79

79:                                               ; preds = %146, %76
  %80 = load i32, ptr %6, align 4, !tbaa !21
  %81 = load ptr, ptr %5, align 8, !tbaa !3
  %82 = getelementptr inbounds nuw %struct.PNode, ptr %81, i32 0, i32 7
  %83 = getelementptr inbounds nuw %struct.VecPNode, ptr %82, i32 0, i32 0
  %84 = load i32, ptr %83, align 8, !tbaa !20
  %85 = icmp ult i32 %80, %84
  br i1 %85, label %86, label %149

86:                                               ; preds = %79
  %87 = load ptr, ptr %4, align 8, !tbaa !30
  %88 = load ptr, ptr %5, align 8, !tbaa !3
  %89 = getelementptr inbounds nuw %struct.PNode, ptr %88, i32 0, i32 7
  %90 = getelementptr inbounds nuw %struct.VecPNode, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !22
  %92 = load i32, ptr %6, align 4, !tbaa !21
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !3
  %96 = call ptr @commit_tree(ptr noundef %87, ptr noundef %95)
  %97 = load ptr, ptr %5, align 8, !tbaa !3
  %98 = getelementptr inbounds nuw %struct.PNode, ptr %97, i32 0, i32 7
  %99 = getelementptr inbounds nuw %struct.VecPNode, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !22
  %101 = load i32, ptr %6, align 4, !tbaa !21
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds ptr, ptr %100, i64 %102
  store ptr %96, ptr %103, align 8, !tbaa !3
  %104 = load ptr, ptr %5, align 8, !tbaa !3
  %105 = getelementptr inbounds nuw %struct.PNode, ptr %104, i32 0, i32 7
  %106 = getelementptr inbounds nuw %struct.VecPNode, ptr %105, i32 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !22
  %108 = load i32, ptr %6, align 4, !tbaa !21
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds ptr, ptr %107, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !3
  %112 = getelementptr inbounds nuw %struct.PNode, ptr %111, i32 0, i32 7
  %113 = getelementptr inbounds nuw %struct.VecPNode, ptr %112, i32 0, i32 0
  %114 = load i32, ptr %113, align 8, !tbaa !20
  store i32 %114, ptr %7, align 4, !tbaa !21
  %115 = load i32, ptr %8, align 4, !tbaa !21
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %86
  %118 = load ptr, ptr %4, align 8, !tbaa !30
  %119 = getelementptr inbounds nuw %struct.Parser, ptr %118, i32 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !32
  %121 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %120, i32 0, i32 5
  %122 = load ptr, ptr %121, align 8, !tbaa !48
  %123 = load ptr, ptr %5, align 8, !tbaa !3
  %124 = getelementptr inbounds nuw %struct.PNode, ptr %123, i32 0, i32 7
  %125 = getelementptr inbounds nuw %struct.VecPNode, ptr %124, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !22
  %127 = load i32, ptr %6, align 4, !tbaa !21
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds ptr, ptr %126, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !3
  %131 = getelementptr inbounds nuw %struct.PNode, ptr %130, i32 0, i32 19
  %132 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %131, i32 0, i32 0
  %133 = load i32, ptr %132, align 8, !tbaa !54
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.D_Symbol, ptr %122, i64 %134
  %136 = getelementptr inbounds nuw %struct.D_Symbol, ptr %135, i32 0, i32 0
  %137 = load i32, ptr %136, align 8, !tbaa !231
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %139, label %145

139:                                              ; preds = %117
  %140 = load ptr, ptr %4, align 8, !tbaa !30
  %141 = load ptr, ptr %5, align 8, !tbaa !3
  %142 = load i32, ptr %6, align 4, !tbaa !21
  call void @fixup_internal_symbol(ptr noundef %140, ptr noundef %141, i32 noundef signext %142)
  %143 = load i32, ptr %6, align 4, !tbaa !21
  %144 = sub nsw i32 %143, 1
  store i32 %144, ptr %6, align 4, !tbaa !21
  br label %146

145:                                              ; preds = %117, %86
  br label %146

146:                                              ; preds = %145, %139
  %147 = load i32, ptr %6, align 4, !tbaa !21
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %6, align 4, !tbaa !21
  br label %79, !llvm.loop !233

149:                                              ; preds = %79
  %150 = load ptr, ptr %5, align 8, !tbaa !3
  %151 = getelementptr inbounds nuw %struct.PNode, ptr %150, i32 0, i32 4
  %152 = load ptr, ptr %151, align 8, !tbaa !114
  %153 = icmp ne ptr %152, null
  br i1 %153, label %154, label %178

154:                                              ; preds = %149
  %155 = load ptr, ptr %5, align 8, !tbaa !3
  %156 = getelementptr inbounds nuw %struct.PNode, ptr %155, i32 0, i32 4
  %157 = load ptr, ptr %156, align 8, !tbaa !114
  %158 = getelementptr inbounds nuw %struct.D_Reduction, ptr %157, i32 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !230
  %160 = icmp ne ptr %159, null
  br i1 %160, label %161, label %178

161:                                              ; preds = %154
  %162 = load ptr, ptr %5, align 8, !tbaa !3
  %163 = getelementptr inbounds nuw %struct.PNode, ptr %162, i32 0, i32 4
  %164 = load ptr, ptr %163, align 8, !tbaa !114
  %165 = getelementptr inbounds nuw %struct.D_Reduction, ptr %164, i32 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !230
  %167 = load ptr, ptr %5, align 8, !tbaa !3
  %168 = load ptr, ptr %5, align 8, !tbaa !3
  %169 = getelementptr inbounds nuw %struct.PNode, ptr %168, i32 0, i32 7
  %170 = getelementptr inbounds nuw %struct.VecPNode, ptr %169, i32 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !22
  %172 = load ptr, ptr %5, align 8, !tbaa !3
  %173 = getelementptr inbounds nuw %struct.PNode, ptr %172, i32 0, i32 7
  %174 = getelementptr inbounds nuw %struct.VecPNode, ptr %173, i32 0, i32 0
  %175 = load i32, ptr %174, align 8, !tbaa !20
  %176 = load ptr, ptr %4, align 8, !tbaa !30
  %177 = call signext i32 %166(ptr noundef %167, ptr noundef %171, i32 noundef signext %175, i32 noundef signext ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32), ptr noundef %176)
  br label %178

178:                                              ; preds = %161, %154, %149
  %179 = load ptr, ptr %5, align 8, !tbaa !3
  %180 = getelementptr inbounds nuw %struct.PNode, ptr %179, i32 0, i32 9
  %181 = load i8, ptr %180, align 4, !tbaa !229
  %182 = icmp ne i8 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %178
  %184 = load ptr, ptr %4, align 8, !tbaa !30
  %185 = getelementptr inbounds nuw %struct.Parser, ptr %184, i32 0, i32 0
  %186 = getelementptr inbounds nuw %struct.D_Parser, ptr %185, i32 0, i32 9
  %187 = load i32, ptr %186, align 8, !tbaa !132
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %183
  %190 = load i32, ptr %9, align 4, !tbaa !21
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load ptr, ptr %4, align 8, !tbaa !30
  %194 = load ptr, ptr %5, align 8, !tbaa !3
  call void @free_ParseTreeBelow(ptr noundef %193, ptr noundef %194)
  br label %195

195:                                              ; preds = %192, %189, %183
  br label %196

196:                                              ; preds = %195, %178
  %197 = load ptr, ptr %5, align 8, !tbaa !3
  store ptr %197, ptr %3, align 8
  store i32 1, ptr %10, align 4
  br label %198

198:                                              ; preds = %196, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  %199 = load ptr, ptr %3, align 8
  ret ptr %199
}

; Function Attrs: nounwind
define internal void @free_SNode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  store i32 0, ptr %5, align 4, !tbaa !21
  br label %6

6:                                                ; preds = %35, %2
  %7 = load i32, ptr %5, align 4, !tbaa !21
  %8 = load ptr, ptr %4, align 8, !tbaa !72
  %9 = getelementptr inbounds nuw %struct.SNode, ptr %8, i32 0, i32 6
  %10 = getelementptr inbounds nuw %struct.VecZNode, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 8, !tbaa !211
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %6
  %14 = load ptr, ptr %4, align 8, !tbaa !72
  %15 = getelementptr inbounds nuw %struct.SNode, ptr %14, i32 0, i32 6
  %16 = getelementptr inbounds nuw %struct.VecZNode, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !212
  %18 = load i32, ptr %5, align 4, !tbaa !21
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !188
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  %24 = load ptr, ptr %3, align 8, !tbaa !30
  %25 = load ptr, ptr %4, align 8, !tbaa !72
  %26 = getelementptr inbounds nuw %struct.SNode, ptr %25, i32 0, i32 6
  %27 = getelementptr inbounds nuw %struct.VecZNode, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !212
  %29 = load i32, ptr %5, align 4, !tbaa !21
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !188
  %33 = load ptr, ptr %4, align 8, !tbaa !72
  call void @free_ZNode(ptr noundef %24, ptr noundef %32, ptr noundef %33)
  br label %34

34:                                               ; preds = %23, %13
  br label %35

35:                                               ; preds = %34
  %36 = load i32, ptr %5, align 4, !tbaa !21
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %5, align 4, !tbaa !21
  br label %6, !llvm.loop !234

38:                                               ; preds = %6
  br label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %4, align 8, !tbaa !72
  %41 = getelementptr inbounds nuw %struct.SNode, ptr %40, i32 0, i32 6
  %42 = getelementptr inbounds nuw %struct.VecZNode, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !212
  %44 = icmp ne ptr %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load ptr, ptr %4, align 8, !tbaa !72
  %47 = getelementptr inbounds nuw %struct.SNode, ptr %46, i32 0, i32 6
  %48 = getelementptr inbounds nuw %struct.VecZNode, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !212
  %50 = load ptr, ptr %4, align 8, !tbaa !72
  %51 = getelementptr inbounds nuw %struct.SNode, ptr %50, i32 0, i32 6
  %52 = getelementptr inbounds nuw %struct.VecZNode, ptr %51, i32 0, i32 3
  %53 = getelementptr inbounds [3 x ptr], ptr %52, i64 0, i64 0
  %54 = icmp ne ptr %49, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load ptr, ptr %4, align 8, !tbaa !72
  %57 = getelementptr inbounds nuw %struct.SNode, ptr %56, i32 0, i32 6
  %58 = getelementptr inbounds nuw %struct.VecZNode, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !212
  call void @free(ptr noundef %59) #9
  br label %60

60:                                               ; preds = %55, %45, %39
  br label %61

61:                                               ; preds = %60
  %62 = load ptr, ptr %4, align 8, !tbaa !72
  %63 = getelementptr inbounds nuw %struct.SNode, ptr %62, i32 0, i32 6
  %64 = getelementptr inbounds nuw %struct.VecZNode, ptr %63, i32 0, i32 0
  store i32 0, ptr %64, align 8, !tbaa !211
  %65 = load ptr, ptr %4, align 8, !tbaa !72
  %66 = getelementptr inbounds nuw %struct.SNode, ptr %65, i32 0, i32 6
  %67 = getelementptr inbounds nuw %struct.VecZNode, ptr %66, i32 0, i32 2
  store ptr null, ptr %67, align 8, !tbaa !212
  br label %68

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %3, align 8, !tbaa !30
  %73 = getelementptr inbounds nuw %struct.Parser, ptr %72, i32 0, i32 22
  %74 = load ptr, ptr %73, align 8, !tbaa !190
  %75 = load ptr, ptr %4, align 8, !tbaa !72
  %76 = getelementptr inbounds nuw %struct.SNode, ptr %75, i32 0, i32 9
  store ptr %74, ptr %76, align 8, !tbaa !191
  %77 = load ptr, ptr %4, align 8, !tbaa !72
  %78 = load ptr, ptr %3, align 8, !tbaa !30
  %79 = getelementptr inbounds nuw %struct.Parser, ptr %78, i32 0, i32 22
  store ptr %77, ptr %79, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  ret void
}

declare ptr @d_dup_pathname_str(ptr noundef) #2

; Function Attrs: nounwind
declare signext i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind willreturn memory(read)
declare signext i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #7

; Function Attrs: inlinehint nounwind willreturn memory(read)
define available_externally signext i32 @atoi(ptr noundef nonnull %0) #8 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !27
  %3 = load ptr, ptr %2, align 8, !tbaa !27
  %4 = call i64 @strtol(ptr noundef %3, ptr noundef null, i32 noundef signext 10) #9
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef signext) #0

; Function Attrs: nounwind
define internal void @free_old_nodes(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %11 = load ptr, ptr %2, align 8, !tbaa !30
  %12 = getelementptr inbounds nuw %struct.Parser, ptr %11, i32 0, i32 11
  %13 = getelementptr inbounds nuw %struct.PNodeHash, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !235
  store ptr %14, ptr %5, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  %15 = load ptr, ptr %2, align 8, !tbaa !30
  %16 = getelementptr inbounds nuw %struct.Parser, ptr %15, i32 0, i32 12
  %17 = getelementptr inbounds nuw %struct.SNodeHash, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !236
  store ptr %18, ptr %8, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  br label %19

19:                                               ; preds = %72, %1
  %20 = load ptr, ptr %8, align 8, !tbaa !72
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %78

22:                                               ; preds = %19
  %23 = load ptr, ptr %8, align 8, !tbaa !72
  %24 = getelementptr inbounds nuw %struct.SNode, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  %26 = load ptr, ptr %2, align 8, !tbaa !30
  %27 = getelementptr inbounds nuw %struct.Parser, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !32
  %29 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !77
  %31 = ptrtoint ptr %25 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 120
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 12
  %37 = load ptr, ptr %8, align 8, !tbaa !72
  %38 = getelementptr inbounds nuw %struct.SNode, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !78
  %40 = ptrtoint ptr %39 to i32
  %41 = add i32 %36, %40
  %42 = load ptr, ptr %8, align 8, !tbaa !72
  %43 = getelementptr inbounds nuw %struct.SNode, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !79
  %45 = ptrtoint ptr %44 to i32
  %46 = add i32 %41, %45
  store i32 %46, ptr %4, align 4, !tbaa !21
  %47 = load ptr, ptr %2, align 8, !tbaa !30
  %48 = getelementptr inbounds nuw %struct.Parser, ptr %47, i32 0, i32 12
  %49 = getelementptr inbounds nuw %struct.SNodeHash, ptr %48, i32 0, i32 0
  %50 = load ptr, ptr %49, align 8, !tbaa !169
  %51 = load i32, ptr %4, align 4, !tbaa !21
  %52 = load ptr, ptr %2, align 8, !tbaa !30
  %53 = getelementptr inbounds nuw %struct.Parser, ptr %52, i32 0, i32 12
  %54 = getelementptr inbounds nuw %struct.SNodeHash, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !203
  %56 = urem i32 %51, %55
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds nuw ptr, ptr %50, i64 %57
  store ptr %58, ptr %10, align 8, !tbaa !83
  %59 = load ptr, ptr %8, align 8, !tbaa !72
  store ptr %59, ptr %9, align 8, !tbaa !72
  %60 = load ptr, ptr %8, align 8, !tbaa !72
  %61 = getelementptr inbounds nuw %struct.SNode, ptr %60, i32 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !191
  store ptr %62, ptr %8, align 8, !tbaa !72
  br label %63

63:                                               ; preds = %68, %22
  %64 = load ptr, ptr %10, align 8, !tbaa !83
  %65 = load ptr, ptr %64, align 8, !tbaa !72
  %66 = load ptr, ptr %9, align 8, !tbaa !72
  %67 = icmp ne ptr %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load ptr, ptr %10, align 8, !tbaa !83
  %70 = load ptr, ptr %69, align 8, !tbaa !72
  %71 = getelementptr inbounds nuw %struct.SNode, ptr %70, i32 0, i32 8
  store ptr %71, ptr %10, align 8, !tbaa !83
  br label %63, !llvm.loop !237

72:                                               ; preds = %63
  %73 = load ptr, ptr %10, align 8, !tbaa !83
  %74 = load ptr, ptr %73, align 8, !tbaa !72
  %75 = getelementptr inbounds nuw %struct.SNode, ptr %74, i32 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !80
  %77 = load ptr, ptr %10, align 8, !tbaa !83
  store ptr %76, ptr %77, align 8, !tbaa !72
  br label %19, !llvm.loop !238

78:                                               ; preds = %19
  %79 = load ptr, ptr %2, align 8, !tbaa !30
  %80 = getelementptr inbounds nuw %struct.Parser, ptr %79, i32 0, i32 12
  %81 = getelementptr inbounds nuw %struct.SNodeHash, ptr %80, i32 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !239
  store ptr %82, ptr %8, align 8, !tbaa !72
  br label %83

83:                                               ; preds = %102, %78
  %84 = load ptr, ptr %8, align 8, !tbaa !72
  %85 = icmp ne ptr %84, null
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = load ptr, ptr %8, align 8, !tbaa !72
  store ptr %87, ptr %9, align 8, !tbaa !72
  %88 = load ptr, ptr %8, align 8, !tbaa !72
  %89 = getelementptr inbounds nuw %struct.SNode, ptr %88, i32 0, i32 9
  %90 = load ptr, ptr %89, align 8, !tbaa !191
  store ptr %90, ptr %8, align 8, !tbaa !72
  br label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %9, align 8, !tbaa !72
  %93 = getelementptr inbounds nuw %struct.SNode, ptr %92, i32 0, i32 7
  %94 = load i32, ptr %93, align 8, !tbaa !145
  %95 = add i32 %94, -1
  store i32 %95, ptr %93, align 8, !tbaa !145
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load ptr, ptr %2, align 8, !tbaa !30
  %99 = load ptr, ptr %9, align 8, !tbaa !72
  call void @free_SNode(ptr noundef %98, ptr noundef %99)
  br label %100

100:                                              ; preds = %97, %91
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  br label %83, !llvm.loop !240

103:                                              ; preds = %83
  %104 = load ptr, ptr %2, align 8, !tbaa !30
  %105 = getelementptr inbounds nuw %struct.Parser, ptr %104, i32 0, i32 12
  %106 = getelementptr inbounds nuw %struct.SNodeHash, ptr %105, i32 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !236
  %108 = load ptr, ptr %2, align 8, !tbaa !30
  %109 = getelementptr inbounds nuw %struct.Parser, ptr %108, i32 0, i32 12
  %110 = getelementptr inbounds nuw %struct.SNodeHash, ptr %109, i32 0, i32 5
  store ptr %107, ptr %110, align 8, !tbaa !239
  %111 = load ptr, ptr %2, align 8, !tbaa !30
  %112 = getelementptr inbounds nuw %struct.Parser, ptr %111, i32 0, i32 12
  %113 = getelementptr inbounds nuw %struct.SNodeHash, ptr %112, i32 0, i32 4
  store ptr null, ptr %113, align 8, !tbaa !236
  br label %114

114:                                              ; preds = %281, %103
  %115 = load ptr, ptr %5, align 8, !tbaa !3
  %116 = icmp ne ptr %115, null
  br i1 %116, label %117, label %282

117:                                              ; preds = %114
  store i32 0, ptr %3, align 4, !tbaa !21
  br label %118

118:                                              ; preds = %206, %117
  %119 = load i32, ptr %3, align 4, !tbaa !21
  %120 = load ptr, ptr %5, align 8, !tbaa !3
  %121 = getelementptr inbounds nuw %struct.PNode, ptr %120, i32 0, i32 7
  %122 = getelementptr inbounds nuw %struct.VecPNode, ptr %121, i32 0, i32 0
  %123 = load i32, ptr %122, align 8, !tbaa !20
  %124 = icmp ult i32 %119, %123
  br i1 %124, label %125, label %209

125:                                              ; preds = %118
  %126 = load ptr, ptr %5, align 8, !tbaa !3
  %127 = getelementptr inbounds nuw %struct.PNode, ptr %126, i32 0, i32 7
  %128 = getelementptr inbounds nuw %struct.VecPNode, ptr %127, i32 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !22
  %130 = load i32, ptr %3, align 4, !tbaa !21
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds ptr, ptr %129, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !3
  %134 = load ptr, ptr %5, align 8, !tbaa !3
  %135 = getelementptr inbounds nuw %struct.PNode, ptr %134, i32 0, i32 7
  %136 = getelementptr inbounds nuw %struct.VecPNode, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !22
  %138 = load i32, ptr %3, align 4, !tbaa !21
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %137, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !3
  %142 = getelementptr inbounds nuw %struct.PNode, ptr %141, i32 0, i32 14
  %143 = load ptr, ptr %142, align 8, !tbaa !165
  %144 = icmp ne ptr %133, %143
  br i1 %144, label %145, label %205

145:                                              ; preds = %125
  br label %146

146:                                              ; preds = %145
  %147 = load ptr, ptr %5, align 8, !tbaa !3
  %148 = getelementptr inbounds nuw %struct.PNode, ptr %147, i32 0, i32 7
  %149 = getelementptr inbounds nuw %struct.VecPNode, ptr %148, i32 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !22
  %151 = load i32, ptr %3, align 4, !tbaa !21
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds ptr, ptr %150, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !3
  %155 = getelementptr inbounds nuw %struct.PNode, ptr %154, i32 0, i32 14
  %156 = load ptr, ptr %155, align 8, !tbaa !165
  %157 = getelementptr inbounds nuw %struct.PNode, ptr %156, i32 0, i32 6
  %158 = load i32, ptr %157, align 8, !tbaa !100
  %159 = add i32 %158, 1
  store i32 %159, ptr %157, align 8, !tbaa !100
  br label %160

160:                                              ; preds = %146
  br label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161
  %163 = load ptr, ptr %5, align 8, !tbaa !3
  %164 = getelementptr inbounds nuw %struct.PNode, ptr %163, i32 0, i32 7
  %165 = getelementptr inbounds nuw %struct.VecPNode, ptr %164, i32 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !22
  %167 = load i32, ptr %3, align 4, !tbaa !21
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %166, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !3
  %171 = getelementptr inbounds nuw %struct.PNode, ptr %170, i32 0, i32 6
  %172 = load i32, ptr %171, align 8, !tbaa !100
  %173 = add i32 %172, -1
  store i32 %173, ptr %171, align 8, !tbaa !100
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %185, label %175

175:                                              ; preds = %162
  %176 = load ptr, ptr %2, align 8, !tbaa !30
  %177 = load ptr, ptr %5, align 8, !tbaa !3
  %178 = getelementptr inbounds nuw %struct.PNode, ptr %177, i32 0, i32 7
  %179 = getelementptr inbounds nuw %struct.VecPNode, ptr %178, i32 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !22
  %181 = load i32, ptr %3, align 4, !tbaa !21
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds ptr, ptr %180, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !3
  call void @free_PNode(ptr noundef %176, ptr noundef %184)
  br label %185

185:                                              ; preds = %175, %162
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  %188 = load ptr, ptr %5, align 8, !tbaa !3
  %189 = getelementptr inbounds nuw %struct.PNode, ptr %188, i32 0, i32 7
  %190 = getelementptr inbounds nuw %struct.VecPNode, ptr %189, i32 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !22
  %192 = load i32, ptr %3, align 4, !tbaa !21
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds ptr, ptr %191, i64 %193
  %195 = load ptr, ptr %194, align 8, !tbaa !3
  %196 = getelementptr inbounds nuw %struct.PNode, ptr %195, i32 0, i32 14
  %197 = load ptr, ptr %196, align 8, !tbaa !165
  %198 = load ptr, ptr %5, align 8, !tbaa !3
  %199 = getelementptr inbounds nuw %struct.PNode, ptr %198, i32 0, i32 7
  %200 = getelementptr inbounds nuw %struct.VecPNode, ptr %199, i32 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !22
  %202 = load i32, ptr %3, align 4, !tbaa !21
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds ptr, ptr %201, i64 %203
  store ptr %197, ptr %204, align 8, !tbaa !3
  br label %205

205:                                              ; preds = %187, %125
  br label %206

206:                                              ; preds = %205
  %207 = load i32, ptr %3, align 4, !tbaa !21
  %208 = add nsw i32 %207, 1
  store i32 %208, ptr %3, align 4, !tbaa !21
  br label %118, !llvm.loop !241

209:                                              ; preds = %118
  %210 = load ptr, ptr %5, align 8, !tbaa !3
  %211 = getelementptr inbounds nuw %struct.PNode, ptr %210, i32 0, i32 19
  %212 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %211, i32 0, i32 1
  %213 = getelementptr inbounds nuw %struct.d_loc_t, ptr %212, i32 0, i32 0
  %214 = load ptr, ptr %213, align 8, !tbaa !25
  %215 = ptrtoint ptr %214 to i32
  %216 = shl i32 %215, 8
  %217 = load ptr, ptr %5, align 8, !tbaa !3
  %218 = getelementptr inbounds nuw %struct.PNode, ptr %217, i32 0, i32 19
  %219 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %218, i32 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !26
  %221 = ptrtoint ptr %220 to i32
  %222 = shl i32 %221, 16
  %223 = add i32 %216, %222
  %224 = load ptr, ptr %5, align 8, !tbaa !3
  %225 = getelementptr inbounds nuw %struct.PNode, ptr %224, i32 0, i32 19
  %226 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %225, i32 0, i32 0
  %227 = load i32, ptr %226, align 8, !tbaa !54
  %228 = add i32 %223, %227
  %229 = load ptr, ptr %5, align 8, !tbaa !3
  %230 = getelementptr inbounds nuw %struct.PNode, ptr %229, i32 0, i32 17
  %231 = load ptr, ptr %230, align 8, !tbaa !91
  %232 = ptrtoint ptr %231 to i32
  %233 = add i32 %228, %232
  %234 = load ptr, ptr %5, align 8, !tbaa !3
  %235 = getelementptr inbounds nuw %struct.PNode, ptr %234, i32 0, i32 18
  %236 = load ptr, ptr %235, align 8, !tbaa !92
  %237 = ptrtoint ptr %236 to i32
  %238 = add i32 %233, %237
  store i32 %238, ptr %4, align 4, !tbaa !21
  %239 = load ptr, ptr %2, align 8, !tbaa !30
  %240 = getelementptr inbounds nuw %struct.Parser, ptr %239, i32 0, i32 11
  %241 = getelementptr inbounds nuw %struct.PNodeHash, ptr %240, i32 0, i32 0
  %242 = load ptr, ptr %241, align 8, !tbaa !168
  %243 = load i32, ptr %4, align 4, !tbaa !21
  %244 = load ptr, ptr %2, align 8, !tbaa !30
  %245 = getelementptr inbounds nuw %struct.Parser, ptr %244, i32 0, i32 11
  %246 = getelementptr inbounds nuw %struct.PNodeHash, ptr %245, i32 0, i32 2
  %247 = load i32, ptr %246, align 4, !tbaa !201
  %248 = urem i32 %243, %247
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds nuw ptr, ptr %242, i64 %249
  store ptr %250, ptr %7, align 8, !tbaa !96
  %251 = load ptr, ptr %5, align 8, !tbaa !3
  store ptr %251, ptr %6, align 8, !tbaa !3
  %252 = load ptr, ptr %5, align 8, !tbaa !3
  %253 = getelementptr inbounds nuw %struct.PNode, ptr %252, i32 0, i32 11
  %254 = load ptr, ptr %253, align 8, !tbaa !167
  store ptr %254, ptr %5, align 8, !tbaa !3
  br label %255

255:                                              ; preds = %260, %209
  %256 = load ptr, ptr %7, align 8, !tbaa !96
  %257 = load ptr, ptr %256, align 8, !tbaa !3
  %258 = load ptr, ptr %6, align 8, !tbaa !3
  %259 = icmp ne ptr %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %255
  %261 = load ptr, ptr %7, align 8, !tbaa !96
  %262 = load ptr, ptr %261, align 8, !tbaa !3
  %263 = getelementptr inbounds nuw %struct.PNode, ptr %262, i32 0, i32 12
  store ptr %263, ptr %7, align 8, !tbaa !96
  br label %255, !llvm.loop !242

264:                                              ; preds = %255
  %265 = load ptr, ptr %7, align 8, !tbaa !96
  %266 = load ptr, ptr %265, align 8, !tbaa !3
  %267 = getelementptr inbounds nuw %struct.PNode, ptr %266, i32 0, i32 12
  %268 = load ptr, ptr %267, align 8, !tbaa !93
  %269 = load ptr, ptr %7, align 8, !tbaa !96
  store ptr %268, ptr %269, align 8, !tbaa !3
  br label %270

270:                                              ; preds = %264
  %271 = load ptr, ptr %6, align 8, !tbaa !3
  %272 = getelementptr inbounds nuw %struct.PNode, ptr %271, i32 0, i32 6
  %273 = load i32, ptr %272, align 8, !tbaa !100
  %274 = add i32 %273, -1
  store i32 %274, ptr %272, align 8, !tbaa !100
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %270
  %277 = load ptr, ptr %2, align 8, !tbaa !30
  %278 = load ptr, ptr %6, align 8, !tbaa !3
  call void @free_PNode(ptr noundef %277, ptr noundef %278)
  br label %279

279:                                              ; preds = %276, %270
  br label %280

280:                                              ; preds = %279
  br label %281

281:                                              ; preds = %280
  br label %114, !llvm.loop !243

282:                                              ; preds = %114
  %283 = load ptr, ptr %2, align 8, !tbaa !30
  %284 = getelementptr inbounds nuw %struct.Parser, ptr %283, i32 0, i32 11
  %285 = getelementptr inbounds nuw %struct.PNodeHash, ptr %284, i32 0, i32 3
  store i32 0, ptr %285, align 8, !tbaa !244
  %286 = load ptr, ptr %2, align 8, !tbaa !30
  %287 = getelementptr inbounds nuw %struct.Parser, ptr %286, i32 0, i32 11
  %288 = getelementptr inbounds nuw %struct.PNodeHash, ptr %287, i32 0, i32 4
  store ptr null, ptr %288, align 8, !tbaa !235
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define internal ptr @add_SNode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %7, align 8, !tbaa !30
  store ptr %1, ptr %8, align 8, !tbaa !245
  store ptr %2, ptr %9, align 8, !tbaa !121
  store ptr %3, ptr %10, align 8, !tbaa !66
  store ptr %4, ptr %11, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #9
  %15 = load ptr, ptr %7, align 8, !tbaa !30
  %16 = load ptr, ptr %8, align 8, !tbaa !245
  %17 = load ptr, ptr %7, align 8, !tbaa !30
  %18 = getelementptr inbounds nuw %struct.Parser, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  %20 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !77
  %22 = ptrtoint ptr %16 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 120
  %26 = trunc i64 %25 to i32
  %27 = load ptr, ptr %10, align 8, !tbaa !66
  %28 = load ptr, ptr %11, align 8, !tbaa !67
  %29 = call ptr @find_SNode(ptr noundef %15, i32 noundef signext %26, ptr noundef %27, ptr noundef %28)
  store ptr %29, ptr %13, align 8, !tbaa !72
  %30 = load ptr, ptr %13, align 8, !tbaa !72
  %31 = icmp ne ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load ptr, ptr %13, align 8, !tbaa !72
  store ptr %33, ptr %6, align 8
  store i32 1, ptr %14, align 4
  br label %94

34:                                               ; preds = %5
  %35 = load ptr, ptr %7, align 8, !tbaa !30
  %36 = load ptr, ptr %8, align 8, !tbaa !245
  %37 = load ptr, ptr %9, align 8, !tbaa !121
  %38 = load ptr, ptr %10, align 8, !tbaa !66
  %39 = load ptr, ptr %11, align 8, !tbaa !67
  %40 = call ptr @new_SNode(ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39)
  store ptr %40, ptr %13, align 8, !tbaa !72
  %41 = load ptr, ptr %13, align 8, !tbaa !72
  %42 = getelementptr inbounds nuw %struct.SNode, ptr %41, i32 0, i32 0
  %43 = load ptr, ptr %42, align 8, !tbaa !73
  %44 = getelementptr inbounds nuw %struct.D_State, ptr %43, i32 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !246
  %46 = icmp ne ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load ptr, ptr %7, align 8, !tbaa !30
  %49 = load ptr, ptr %13, align 8, !tbaa !72
  call void @add_Shift(ptr noundef %48, ptr noundef %49)
  br label %50

50:                                               ; preds = %47, %34
  store i32 0, ptr %12, align 4, !tbaa !21
  br label %51

51:                                               ; preds = %89, %50
  %52 = load i32, ptr %12, align 4, !tbaa !21
  %53 = load ptr, ptr %13, align 8, !tbaa !72
  %54 = getelementptr inbounds nuw %struct.SNode, ptr %53, i32 0, i32 0
  %55 = load ptr, ptr %54, align 8, !tbaa !73
  %56 = getelementptr inbounds nuw %struct.D_State, ptr %55, i32 0, i32 2
  %57 = getelementptr inbounds nuw %struct.anon.0, ptr %56, i32 0, i32 0
  %58 = load i32, ptr %57, align 8, !tbaa !256
  %59 = icmp ult i32 %52, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %51
  %61 = load ptr, ptr %13, align 8, !tbaa !72
  %62 = getelementptr inbounds nuw %struct.SNode, ptr %61, i32 0, i32 0
  %63 = load ptr, ptr %62, align 8, !tbaa !73
  %64 = getelementptr inbounds nuw %struct.D_State, ptr %63, i32 0, i32 2
  %65 = getelementptr inbounds nuw %struct.anon.0, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !257
  %67 = load i32, ptr %12, align 4, !tbaa !21
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !195
  %71 = getelementptr inbounds nuw %struct.D_Reduction, ptr %70, i32 0, i32 0
  %72 = load i16, ptr %71, align 8, !tbaa !258
  %73 = icmp ne i16 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %60
  %75 = load ptr, ptr %7, align 8, !tbaa !30
  %76 = load ptr, ptr %13, align 8, !tbaa !72
  %77 = load ptr, ptr %13, align 8, !tbaa !72
  %78 = getelementptr inbounds nuw %struct.SNode, ptr %77, i32 0, i32 0
  %79 = load ptr, ptr %78, align 8, !tbaa !73
  %80 = getelementptr inbounds nuw %struct.D_State, ptr %79, i32 0, i32 2
  %81 = getelementptr inbounds nuw %struct.anon.0, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !257
  %83 = load i32, ptr %12, align 4, !tbaa !21
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %82, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !195
  %87 = call ptr @add_Reduction(ptr noundef %75, ptr noundef null, ptr noundef %76, ptr noundef %86)
  br label %88

88:                                               ; preds = %74, %60
  br label %89

89:                                               ; preds = %88
  %90 = load i32, ptr %12, align 4, !tbaa !21
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %12, align 4, !tbaa !21
  br label %51, !llvm.loop !259

92:                                               ; preds = %51
  %93 = load ptr, ptr %13, align 8, !tbaa !72
  store ptr %93, ptr %6, align 8
  store i32 1, ptr %14, align 4
  br label %94

94:                                               ; preds = %92, %32
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #9
  %95 = load ptr, ptr %6, align 8
  ret ptr %95
}

; Function Attrs: nounwind
define internal ptr @add_PNode(ptr noundef %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  store ptr %0, ptr %10, align 8, !tbaa !30
  store i32 %1, ptr %11, align 4, !tbaa !21
  store ptr %2, ptr %12, align 8, !tbaa !121
  store ptr %3, ptr %13, align 8, !tbaa !27
  store ptr %4, ptr %14, align 8, !tbaa !3
  store ptr %5, ptr %15, align 8, !tbaa !195
  store ptr %6, ptr %16, align 8, !tbaa !67
  store ptr %7, ptr %17, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #9
  %21 = load ptr, ptr %10, align 8, !tbaa !30
  %22 = load ptr, ptr %12, align 8, !tbaa !121
  %23 = getelementptr inbounds nuw %struct.d_loc_t, ptr %22, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8, !tbaa !141
  %25 = load ptr, ptr %13, align 8, !tbaa !27
  %26 = load i32, ptr %11, align 4, !tbaa !21
  %27 = load ptr, ptr %14, align 8, !tbaa !3
  %28 = getelementptr inbounds nuw %struct.PNode, ptr %27, i32 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = load ptr, ptr %14, align 8, !tbaa !3
  %31 = getelementptr inbounds nuw %struct.PNode, ptr %30, i32 0, i32 18
  %32 = load ptr, ptr %31, align 8, !tbaa !92
  %33 = call ptr @find_PNode(ptr noundef %21, ptr noundef %24, ptr noundef %25, i32 noundef signext %26, ptr noundef %29, ptr noundef %32)
  store ptr %33, ptr %18, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %19) #9
  %34 = load ptr, ptr %18, align 8, !tbaa !3
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %8
  %37 = load ptr, ptr %18, align 8, !tbaa !3
  %38 = load ptr, ptr %15, align 8, !tbaa !195
  %39 = load ptr, ptr %16, align 8, !tbaa !67
  %40 = load ptr, ptr %17, align 8, !tbaa !260
  %41 = call signext i32 @PNode_equal(ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load ptr, ptr %18, align 8, !tbaa !3
  store ptr %44, ptr %9, align 8
  store i32 1, ptr %20, align 4
  br label %107

45:                                               ; preds = %36, %8
  %46 = load ptr, ptr %10, align 8, !tbaa !30
  %47 = load i32, ptr %11, align 4, !tbaa !21
  %48 = load ptr, ptr %12, align 8, !tbaa !121
  %49 = load ptr, ptr %13, align 8, !tbaa !27
  %50 = load ptr, ptr %14, align 8, !tbaa !3
  %51 = load ptr, ptr %15, align 8, !tbaa !195
  %52 = load ptr, ptr %16, align 8, !tbaa !67
  %53 = load ptr, ptr %17, align 8, !tbaa !260
  %54 = call ptr @make_PNode(ptr noundef %46, i32 noundef signext %47, ptr noundef %48, ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53)
  store ptr %54, ptr %19, align 8, !tbaa !3
  %55 = load ptr, ptr %18, align 8, !tbaa !3
  %56 = icmp ne ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %45
  %58 = load ptr, ptr %19, align 8, !tbaa !3
  store ptr %58, ptr %18, align 8, !tbaa !3
  %59 = load ptr, ptr %19, align 8, !tbaa !3
  %60 = icmp ne ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store ptr null, ptr %9, align 8
  store i32 1, ptr %20, align 4
  br label %107

62:                                               ; preds = %57
  %63 = load ptr, ptr %10, align 8, !tbaa !30
  %64 = load ptr, ptr %19, align 8, !tbaa !3
  call void @insert_PNode(ptr noundef %63, ptr noundef %64)
  br label %105

65:                                               ; preds = %45
  %66 = load ptr, ptr %19, align 8, !tbaa !3
  %67 = icmp ne ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %105

69:                                               ; preds = %65
  %70 = load ptr, ptr %10, align 8, !tbaa !30
  %71 = getelementptr inbounds nuw %struct.Parser, ptr %70, i32 0, i32 9
  %72 = load i32, ptr %71, align 4, !tbaa !205
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %71, align 4, !tbaa !205
  %74 = load ptr, ptr %10, align 8, !tbaa !30
  %75 = load ptr, ptr %19, align 8, !tbaa !3
  %76 = load ptr, ptr %18, align 8, !tbaa !3
  %77 = call signext i32 @cmp_pnodes(ptr noundef %74, ptr noundef %75, ptr noundef %76)
  switch i32 %77, label %104 [
    i32 0, label %78
    i32 -1, label %87
    i32 1, label %101
  ]

78:                                               ; preds = %69
  %79 = load ptr, ptr %18, align 8, !tbaa !3
  %80 = getelementptr inbounds nuw %struct.PNode, ptr %79, i32 0, i32 13
  %81 = load ptr, ptr %80, align 8, !tbaa !102
  %82 = load ptr, ptr %19, align 8, !tbaa !3
  %83 = getelementptr inbounds nuw %struct.PNode, ptr %82, i32 0, i32 13
  store ptr %81, ptr %83, align 8, !tbaa !102
  %84 = load ptr, ptr %19, align 8, !tbaa !3
  %85 = load ptr, ptr %18, align 8, !tbaa !3
  %86 = getelementptr inbounds nuw %struct.PNode, ptr %85, i32 0, i32 13
  store ptr %84, ptr %86, align 8, !tbaa !102
  br label %104

87:                                               ; preds = %69
  %88 = load ptr, ptr %10, align 8, !tbaa !30
  %89 = load ptr, ptr %19, align 8, !tbaa !3
  call void @insert_PNode(ptr noundef %88, ptr noundef %89)
  %90 = load ptr, ptr %19, align 8, !tbaa !3
  %91 = load ptr, ptr %18, align 8, !tbaa !3
  %92 = getelementptr inbounds nuw %struct.PNode, ptr %91, i32 0, i32 14
  store ptr %90, ptr %92, align 8, !tbaa !165
  br label %93

93:                                               ; preds = %87
  %94 = load ptr, ptr %19, align 8, !tbaa !3
  %95 = getelementptr inbounds nuw %struct.PNode, ptr %94, i32 0, i32 6
  %96 = load i32, ptr %95, align 8, !tbaa !100
  %97 = add i32 %96, 1
  store i32 %97, ptr %95, align 8, !tbaa !100
  br label %98

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98
  %100 = load ptr, ptr %19, align 8, !tbaa !3
  store ptr %100, ptr %18, align 8, !tbaa !3
  br label %104

101:                                              ; preds = %69
  %102 = load ptr, ptr %10, align 8, !tbaa !30
  %103 = load ptr, ptr %19, align 8, !tbaa !3
  call void @free_PNode(ptr noundef %102, ptr noundef %103)
  br label %104

104:                                              ; preds = %69, %101, %99, %78
  br label %105

105:                                              ; preds = %104, %68, %62
  %106 = load ptr, ptr %18, align 8, !tbaa !3
  store ptr %106, ptr %9, align 8
  store i32 1, ptr %20, align 4
  br label %107

107:                                              ; preds = %105, %61, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr %19) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #9
  %108 = load ptr, ptr %9, align 8
  ret ptr %108
}

; Function Attrs: nounwind
define internal void @set_add_znode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.VecZNode, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !67
  store ptr %1, ptr %4, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 40, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  %9 = load ptr, ptr %3, align 8, !tbaa !67
  %10 = getelementptr inbounds nuw %struct.VecZNode, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 8, !tbaa !261
  store i32 %11, ptr %7, align 4, !tbaa !21
  %12 = load i32, ptr %7, align 4, !tbaa !21
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %82

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr %3, align 8, !tbaa !67
  %17 = getelementptr inbounds nuw %struct.VecZNode, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !262
  %19 = icmp ne ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %4, align 8, !tbaa !188
  %22 = load ptr, ptr %3, align 8, !tbaa !67
  %23 = getelementptr inbounds nuw %struct.VecZNode, ptr %22, i32 0, i32 3
  %24 = getelementptr inbounds [3 x ptr], ptr %23, i64 0, i64 0
  %25 = load ptr, ptr %3, align 8, !tbaa !67
  %26 = getelementptr inbounds nuw %struct.VecZNode, ptr %25, i32 0, i32 2
  store ptr %24, ptr %26, align 8, !tbaa !262
  %27 = load ptr, ptr %3, align 8, !tbaa !67
  %28 = getelementptr inbounds nuw %struct.VecZNode, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !261
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !261
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds nuw ptr, ptr %24, i64 %31
  store ptr %21, ptr %32, align 8, !tbaa !188
  br label %81

33:                                               ; preds = %15
  %34 = load ptr, ptr %3, align 8, !tbaa !67
  %35 = getelementptr inbounds nuw %struct.VecZNode, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !262
  %37 = load ptr, ptr %3, align 8, !tbaa !67
  %38 = getelementptr inbounds nuw %struct.VecZNode, ptr %37, i32 0, i32 3
  %39 = getelementptr inbounds [3 x ptr], ptr %38, i64 0, i64 0
  %40 = icmp eq ptr %36, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %33
  %42 = load ptr, ptr %3, align 8, !tbaa !67
  %43 = getelementptr inbounds nuw %struct.VecZNode, ptr %42, i32 0, i32 0
  %44 = load i32, ptr %43, align 8, !tbaa !261
  %45 = icmp ult i32 %44, 3
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load ptr, ptr %4, align 8, !tbaa !188
  %48 = load ptr, ptr %3, align 8, !tbaa !67
  %49 = getelementptr inbounds nuw %struct.VecZNode, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !262
  %51 = load ptr, ptr %3, align 8, !tbaa !67
  %52 = getelementptr inbounds nuw %struct.VecZNode, ptr %51, i32 0, i32 0
  %53 = load i32, ptr %52, align 8, !tbaa !261
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 8, !tbaa !261
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds nuw ptr, ptr %50, i64 %55
  store ptr %47, ptr %56, align 8, !tbaa !188
  br label %81

57:                                               ; preds = %41
  br label %76

58:                                               ; preds = %33
  %59 = load ptr, ptr %3, align 8, !tbaa !67
  %60 = getelementptr inbounds nuw %struct.VecZNode, ptr %59, i32 0, i32 0
  %61 = load i32, ptr %60, align 8, !tbaa !261
  %62 = and i32 %61, 7
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load ptr, ptr %4, align 8, !tbaa !188
  %66 = load ptr, ptr %3, align 8, !tbaa !67
  %67 = getelementptr inbounds nuw %struct.VecZNode, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !262
  %69 = load ptr, ptr %3, align 8, !tbaa !67
  %70 = getelementptr inbounds nuw %struct.VecZNode, ptr %69, i32 0, i32 0
  %71 = load i32, ptr %70, align 8, !tbaa !261
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 8, !tbaa !261
  %73 = zext i32 %71 to i64
  %74 = getelementptr inbounds nuw ptr, ptr %68, i64 %73
  store ptr %65, ptr %74, align 8, !tbaa !188
  br label %81

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %76
  %78 = load ptr, ptr %3, align 8, !tbaa !67
  %79 = load ptr, ptr %4, align 8, !tbaa !188
  call void @vec_add_internal(ptr noundef %78, ptr noundef %79)
  br label %80

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80, %64, %46, %20
  store i32 1, ptr %8, align 4
  br label %113

82:                                               ; preds = %2
  %83 = load i32, ptr %7, align 4, !tbaa !21
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %110

85:                                               ; preds = %82
  %86 = load ptr, ptr %3, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %86, i64 40, i1 false), !tbaa.struct !263
  br label %87

87:                                               ; preds = %85
  %88 = load ptr, ptr %3, align 8, !tbaa !67
  %89 = getelementptr inbounds nuw %struct.VecZNode, ptr %88, i32 0, i32 0
  store i32 0, ptr %89, align 8, !tbaa !261
  %90 = load ptr, ptr %3, align 8, !tbaa !67
  %91 = getelementptr inbounds nuw %struct.VecZNode, ptr %90, i32 0, i32 2
  store ptr null, ptr %91, align 8, !tbaa !262
  br label %92

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92
  store i32 0, ptr %6, align 4, !tbaa !21
  br label %94

94:                                               ; preds = %106, %93
  %95 = load i32, ptr %6, align 4, !tbaa !21
  %96 = load i32, ptr %7, align 4, !tbaa !21
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load ptr, ptr %3, align 8, !tbaa !67
  %100 = getelementptr inbounds nuw %struct.VecZNode, ptr %5, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !262
  %102 = load i32, ptr %6, align 4, !tbaa !21
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %101, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !188
  call void @set_add_znode_hash(ptr noundef %99, ptr noundef %105)
  br label %106

106:                                              ; preds = %98
  %107 = load i32, ptr %6, align 4, !tbaa !21
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %6, align 4, !tbaa !21
  br label %94, !llvm.loop !265

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109, %82
  %111 = load ptr, ptr %3, align 8, !tbaa !67
  %112 = load ptr, ptr %4, align 8, !tbaa !188
  call void @set_add_znode_hash(ptr noundef %111, ptr noundef %112)
  store i32 0, ptr %8, align 4
  br label %113

113:                                              ; preds = %110, %81
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr %5) #9
  %114 = load i32, ptr %8, align 4
  switch i32 %114, label %116 [
    i32 0, label %115
    i32 1, label %115
  ]

115:                                              ; preds = %113, %113
  ret void

116:                                              ; preds = %113
  unreachable
}

; Function Attrs: nounwind
define internal ptr @new_ZNode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %6 = load ptr, ptr %3, align 8, !tbaa !30
  %7 = getelementptr inbounds nuw %struct.Parser, ptr %6, i32 0, i32 23
  %8 = load ptr, ptr %7, align 8, !tbaa !187
  store ptr %8, ptr %5, align 8, !tbaa !188
  %9 = load ptr, ptr %5, align 8, !tbaa !188
  %10 = icmp ne ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call noalias ptr @malloc(i64 noundef 48) #10
  store ptr %12, ptr %5, align 8, !tbaa !188
  br label %19

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 8, !tbaa !188
  %15 = getelementptr inbounds nuw %struct.ZNode, ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8, !tbaa !188
  %17 = load ptr, ptr %3, align 8, !tbaa !30
  %18 = getelementptr inbounds nuw %struct.Parser, ptr %17, i32 0, i32 23
  store ptr %16, ptr %18, align 8, !tbaa !187
  br label %19

19:                                               ; preds = %13, %11
  %20 = load ptr, ptr %4, align 8, !tbaa !3
  %21 = load ptr, ptr %5, align 8, !tbaa !188
  %22 = getelementptr inbounds nuw %struct.ZNode, ptr %21, i32 0, i32 0
  store ptr %20, ptr %22, align 8, !tbaa !213
  br label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %5, align 8, !tbaa !188
  %25 = getelementptr inbounds nuw %struct.ZNode, ptr %24, i32 0, i32 1
  %26 = getelementptr inbounds nuw %struct.VecSNode, ptr %25, i32 0, i32 0
  store i32 0, ptr %26, align 8, !tbaa !266
  %27 = load ptr, ptr %5, align 8, !tbaa !188
  %28 = getelementptr inbounds nuw %struct.ZNode, ptr %27, i32 0, i32 1
  %29 = getelementptr inbounds nuw %struct.VecSNode, ptr %28, i32 0, i32 2
  store ptr null, ptr %29, align 8, !tbaa !267
  br label %30

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load ptr, ptr %5, align 8, !tbaa !188
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret ptr %32
}

; Function Attrs: nounwind
define internal void @reduce_one(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.VecVecZNode, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %14 = load ptr, ptr %4, align 8, !tbaa !174
  %15 = getelementptr inbounds nuw %struct.Reduction, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !175
  store ptr %16, ptr %5, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #9
  %17 = load ptr, ptr %4, align 8, !tbaa !174
  %18 = getelementptr inbounds nuw %struct.Reduction, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !268
  %20 = getelementptr inbounds nuw %struct.D_Reduction, ptr %19, i32 0, i32 0
  %21 = load i16, ptr %20, align 8, !tbaa !258
  %22 = zext i16 %21 to i32
  store i32 %22, ptr %11, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 40, ptr %12) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #9
  %23 = load ptr, ptr %4, align 8, !tbaa !174
  %24 = getelementptr inbounds nuw %struct.Reduction, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8, !tbaa !269
  %26 = icmp ne ptr %25, null
  br i1 %26, label %57, label %27

27:                                               ; preds = %2
  %28 = load ptr, ptr %3, align 8, !tbaa !30
  %29 = load ptr, ptr %4, align 8, !tbaa !174
  %30 = getelementptr inbounds nuw %struct.Reduction, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !268
  %32 = getelementptr inbounds nuw %struct.D_Reduction, ptr %31, i32 0, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !270
  %34 = zext i16 %33 to i32
  %35 = load ptr, ptr %5, align 8, !tbaa !72
  %36 = getelementptr inbounds nuw %struct.SNode, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %5, align 8, !tbaa !72
  %38 = getelementptr inbounds nuw %struct.SNode, ptr %37, i32 0, i32 3
  %39 = getelementptr inbounds nuw %struct.d_loc_t, ptr %38, i32 0, i32 0
  %40 = load ptr, ptr %39, align 8, !tbaa !224
  %41 = load ptr, ptr %5, align 8, !tbaa !72
  %42 = getelementptr inbounds nuw %struct.SNode, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !223
  %44 = load ptr, ptr %4, align 8, !tbaa !174
  %45 = getelementptr inbounds nuw %struct.Reduction, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !268
  %47 = call ptr @add_PNode(ptr noundef %28, i32 noundef signext %34, ptr noundef %36, ptr noundef %40, ptr noundef %43, ptr noundef %46, ptr noundef null, ptr noundef null)
  store ptr %47, ptr %6, align 8, !tbaa !3
  %48 = icmp ne ptr %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %27
  %50 = load ptr, ptr %3, align 8, !tbaa !30
  %51 = load ptr, ptr %5, align 8, !tbaa !72
  %52 = getelementptr inbounds nuw %struct.SNode, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %6, align 8, !tbaa !3
  %54 = load ptr, ptr %5, align 8, !tbaa !72
  %55 = call ptr @goto_PNode(ptr noundef %50, ptr noundef %52, ptr noundef %53, ptr noundef %54)
  br label %56

56:                                               ; preds = %49, %27
  br label %249

57:                                               ; preds = %2
  br label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %12, i32 0, i32 0
  store i32 0, ptr %59, align 8, !tbaa !271
  %60 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %12, i32 0, i32 2
  store ptr null, ptr %60, align 8, !tbaa !273
  br label %61

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61
  %63 = load ptr, ptr %4, align 8, !tbaa !174
  %64 = getelementptr inbounds nuw %struct.Reduction, ptr %63, i32 0, i32 0
  %65 = load ptr, ptr %64, align 8, !tbaa !269
  %66 = load i32, ptr %11, align 4, !tbaa !21
  call void @build_paths(ptr noundef %65, ptr noundef %12, i32 noundef signext %66)
  store i32 0, ptr %9, align 4, !tbaa !21
  br label %67

67:                                               ; preds = %245, %62
  %68 = load i32, ptr %9, align 4, !tbaa !21
  %69 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %12, i32 0, i32 0
  %70 = load i32, ptr %69, align 8, !tbaa !271
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %72, label %248

72:                                               ; preds = %67
  %73 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %12, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !273
  %75 = load i32, ptr %9, align 4, !tbaa !21
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %74, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !67
  store ptr %78, ptr %13, align 8, !tbaa !67
  %79 = load ptr, ptr %4, align 8, !tbaa !174
  %80 = getelementptr inbounds nuw %struct.Reduction, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !274
  %82 = icmp ne ptr %81, null
  br i1 %82, label %83, label %142

83:                                               ; preds = %72
  store i32 0, ptr %10, align 4, !tbaa !21
  br label %84

84:                                               ; preds = %122, %83
  %85 = load i32, ptr %10, align 4, !tbaa !21
  %86 = load ptr, ptr %13, align 8, !tbaa !67
  %87 = getelementptr inbounds nuw %struct.VecZNode, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !262
  %89 = load ptr, ptr %4, align 8, !tbaa !174
  %90 = getelementptr inbounds nuw %struct.Reduction, ptr %89, i32 0, i32 4
  %91 = load i32, ptr %90, align 8, !tbaa !275
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %88, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !188
  %95 = getelementptr inbounds nuw %struct.ZNode, ptr %94, i32 0, i32 1
  %96 = getelementptr inbounds nuw %struct.VecSNode, ptr %95, i32 0, i32 0
  %97 = load i32, ptr %96, align 8, !tbaa !266
  %98 = icmp ult i32 %85, %97
  br i1 %98, label %99, label %125

99:                                               ; preds = %84
  %100 = load ptr, ptr %13, align 8, !tbaa !67
  %101 = getelementptr inbounds nuw %struct.VecZNode, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !262
  %103 = load ptr, ptr %4, align 8, !tbaa !174
  %104 = getelementptr inbounds nuw %struct.Reduction, ptr %103, i32 0, i32 4
  %105 = load i32, ptr %104, align 8, !tbaa !275
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %102, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !188
  %109 = getelementptr inbounds nuw %struct.ZNode, ptr %108, i32 0, i32 1
  %110 = getelementptr inbounds nuw %struct.VecSNode, ptr %109, i32 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !267
  %112 = load i32, ptr %10, align 4, !tbaa !21
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %111, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !72
  %116 = load ptr, ptr %4, align 8, !tbaa !174
  %117 = getelementptr inbounds nuw %struct.Reduction, ptr %116, i32 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !274
  %119 = icmp eq ptr %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %99
  br label %125

121:                                              ; preds = %99
  br label %122

122:                                              ; preds = %121
  %123 = load i32, ptr %10, align 4, !tbaa !21
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %10, align 4, !tbaa !21
  br label %84, !llvm.loop !276

125:                                              ; preds = %120, %84
  %126 = load i32, ptr %10, align 4, !tbaa !21
  %127 = load ptr, ptr %13, align 8, !tbaa !67
  %128 = getelementptr inbounds nuw %struct.VecZNode, ptr %127, i32 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !262
  %130 = load ptr, ptr %4, align 8, !tbaa !174
  %131 = getelementptr inbounds nuw %struct.Reduction, ptr %130, i32 0, i32 4
  %132 = load i32, ptr %131, align 8, !tbaa !275
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds ptr, ptr %129, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !188
  %136 = getelementptr inbounds nuw %struct.ZNode, ptr %135, i32 0, i32 1
  %137 = getelementptr inbounds nuw %struct.VecSNode, ptr %136, i32 0, i32 0
  %138 = load i32, ptr %137, align 8, !tbaa !266
  %139 = icmp uge i32 %126, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %125
  br label %245

141:                                              ; preds = %125
  br label %142

142:                                              ; preds = %141, %72
  %143 = load ptr, ptr %13, align 8, !tbaa !67
  %144 = getelementptr inbounds nuw %struct.VecZNode, ptr %143, i32 0, i32 0
  %145 = load i32, ptr %144, align 8, !tbaa !261
  %146 = icmp ugt i32 %145, 1
  br i1 %146, label %147, label %174

147:                                              ; preds = %142
  %148 = load ptr, ptr %13, align 8, !tbaa !67
  %149 = getelementptr inbounds nuw %struct.VecZNode, ptr %148, i32 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !262
  %151 = getelementptr inbounds ptr, ptr %150, i64 0
  %152 = load ptr, ptr %151, align 8, !tbaa !188
  %153 = getelementptr inbounds nuw %struct.ZNode, ptr %152, i32 0, i32 0
  %154 = load ptr, ptr %153, align 8, !tbaa !213
  %155 = getelementptr inbounds nuw %struct.PNode, ptr %154, i32 0, i32 2
  %156 = load i32, ptr %155, align 8, !tbaa !277
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %147
  %159 = load ptr, ptr %13, align 8, !tbaa !67
  %160 = getelementptr inbounds nuw %struct.VecZNode, ptr %159, i32 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !262
  %162 = getelementptr inbounds ptr, ptr %161, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !188
  %164 = getelementptr inbounds nuw %struct.ZNode, ptr %163, i32 0, i32 0
  %165 = load ptr, ptr %164, align 8, !tbaa !213
  %166 = getelementptr inbounds nuw %struct.PNode, ptr %165, i32 0, i32 2
  %167 = load i32, ptr %166, align 8, !tbaa !277
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %158, %147
  %170 = load ptr, ptr %13, align 8, !tbaa !67
  %171 = call signext i32 @check_path_priorities_internal(ptr noundef %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  br label %245

174:                                              ; preds = %169, %158, %142
  %175 = load ptr, ptr %3, align 8, !tbaa !30
  %176 = getelementptr inbounds nuw %struct.Parser, ptr %175, i32 0, i32 8
  %177 = load i32, ptr %176, align 8, !tbaa !206
  %178 = add nsw i32 %177, 1
  store i32 %178, ptr %176, align 8, !tbaa !206
  %179 = load ptr, ptr %13, align 8, !tbaa !67
  %180 = getelementptr inbounds nuw %struct.VecZNode, ptr %179, i32 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !262
  %182 = getelementptr inbounds ptr, ptr %181, i64 0
  %183 = load ptr, ptr %182, align 8, !tbaa !188
  %184 = getelementptr inbounds nuw %struct.ZNode, ptr %183, i32 0, i32 0
  %185 = load ptr, ptr %184, align 8, !tbaa !213
  store ptr %185, ptr %7, align 8, !tbaa !3
  %186 = load ptr, ptr %13, align 8, !tbaa !67
  %187 = getelementptr inbounds nuw %struct.VecZNode, ptr %186, i32 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !262
  %189 = load i32, ptr %11, align 4, !tbaa !21
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds ptr, ptr %188, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !188
  store ptr %193, ptr %8, align 8, !tbaa !188
  %194 = load ptr, ptr %3, align 8, !tbaa !30
  %195 = load ptr, ptr %4, align 8, !tbaa !174
  %196 = getelementptr inbounds nuw %struct.Reduction, ptr %195, i32 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !268
  %198 = getelementptr inbounds nuw %struct.D_Reduction, ptr %197, i32 0, i32 1
  %199 = load i16, ptr %198, align 2, !tbaa !270
  %200 = zext i16 %199 to i32
  %201 = load ptr, ptr %8, align 8, !tbaa !188
  %202 = getelementptr inbounds nuw %struct.ZNode, ptr %201, i32 0, i32 0
  %203 = load ptr, ptr %202, align 8, !tbaa !213
  %204 = getelementptr inbounds nuw %struct.PNode, ptr %203, i32 0, i32 19
  %205 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %204, i32 0, i32 1
  %206 = load ptr, ptr %5, align 8, !tbaa !72
  %207 = getelementptr inbounds nuw %struct.SNode, ptr %206, i32 0, i32 3
  %208 = getelementptr inbounds nuw %struct.d_loc_t, ptr %207, i32 0, i32 0
  %209 = load ptr, ptr %208, align 8, !tbaa !224
  %210 = load ptr, ptr %7, align 8, !tbaa !3
  %211 = load ptr, ptr %4, align 8, !tbaa !174
  %212 = getelementptr inbounds nuw %struct.Reduction, ptr %211, i32 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !268
  %214 = load ptr, ptr %13, align 8, !tbaa !67
  %215 = call ptr @add_PNode(ptr noundef %194, i32 noundef signext %200, ptr noundef %205, ptr noundef %209, ptr noundef %210, ptr noundef %213, ptr noundef %214, ptr noundef null)
  store ptr %215, ptr %6, align 8, !tbaa !3
  %216 = load ptr, ptr %6, align 8, !tbaa !3
  %217 = icmp ne ptr %216, null
  br i1 %217, label %218, label %244

218:                                              ; preds = %174
  store i32 0, ptr %10, align 4, !tbaa !21
  br label %219

219:                                              ; preds = %240, %218
  %220 = load i32, ptr %10, align 4, !tbaa !21
  %221 = load ptr, ptr %8, align 8, !tbaa !188
  %222 = getelementptr inbounds nuw %struct.ZNode, ptr %221, i32 0, i32 1
  %223 = getelementptr inbounds nuw %struct.VecSNode, ptr %222, i32 0, i32 0
  %224 = load i32, ptr %223, align 8, !tbaa !266
  %225 = icmp ult i32 %220, %224
  br i1 %225, label %226, label %243

226:                                              ; preds = %219
  %227 = load ptr, ptr %3, align 8, !tbaa !30
  %228 = load ptr, ptr %5, align 8, !tbaa !72
  %229 = getelementptr inbounds nuw %struct.SNode, ptr %228, i32 0, i32 3
  %230 = load ptr, ptr %6, align 8, !tbaa !3
  %231 = load ptr, ptr %8, align 8, !tbaa !188
  %232 = getelementptr inbounds nuw %struct.ZNode, ptr %231, i32 0, i32 1
  %233 = getelementptr inbounds nuw %struct.VecSNode, ptr %232, i32 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !267
  %235 = load i32, ptr %10, align 4, !tbaa !21
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds ptr, ptr %234, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !72
  %239 = call ptr @goto_PNode(ptr noundef %227, ptr noundef %229, ptr noundef %230, ptr noundef %238)
  br label %240

240:                                              ; preds = %226
  %241 = load i32, ptr %10, align 4, !tbaa !21
  %242 = add nsw i32 %241, 1
  store i32 %242, ptr %10, align 4, !tbaa !21
  br label %219, !llvm.loop !278

243:                                              ; preds = %219
  br label %244

244:                                              ; preds = %243, %174
  br label %245

245:                                              ; preds = %244, %173, %140
  %246 = load i32, ptr %9, align 4, !tbaa !21
  %247 = add nsw i32 %246, 1
  store i32 %247, ptr %9, align 4, !tbaa !21
  br label %67, !llvm.loop !279

248:                                              ; preds = %67
  call void @free_paths(ptr noundef %12)
  br label %249

249:                                              ; preds = %248, %56
  br label %250

250:                                              ; preds = %249
  %251 = load ptr, ptr %5, align 8, !tbaa !72
  %252 = getelementptr inbounds nuw %struct.SNode, ptr %251, i32 0, i32 7
  %253 = load i32, ptr %252, align 8, !tbaa !145
  %254 = add i32 %253, -1
  store i32 %254, ptr %252, align 8, !tbaa !145
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %250
  %257 = load ptr, ptr %3, align 8, !tbaa !30
  %258 = load ptr, ptr %5, align 8, !tbaa !72
  call void @free_SNode(ptr noundef %257, ptr noundef %258)
  br label %259

259:                                              ; preds = %256, %250
  br label %260

260:                                              ; preds = %259
  br label %261

261:                                              ; preds = %260
  %262 = load ptr, ptr %3, align 8, !tbaa !30
  %263 = getelementptr inbounds nuw %struct.Parser, ptr %262, i32 0, i32 18
  %264 = load ptr, ptr %263, align 8, !tbaa !171
  %265 = load ptr, ptr %4, align 8, !tbaa !174
  %266 = getelementptr inbounds nuw %struct.Reduction, ptr %265, i32 0, i32 5
  store ptr %264, ptr %266, align 8, !tbaa !172
  %267 = load ptr, ptr %4, align 8, !tbaa !174
  %268 = load ptr, ptr %3, align 8, !tbaa !30
  %269 = getelementptr inbounds nuw %struct.Parser, ptr %268, i32 0, i32 18
  store ptr %267, ptr %269, align 8, !tbaa !171
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret void
}

; Function Attrs: nounwind
define internal signext i32 @error_recovery(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca %struct.d_loc_t, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  store ptr null, ptr %5, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  store ptr null, ptr %6, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #9
  store i32 0, ptr %11, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #9
  store i32 0, ptr %12, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #9
  store i32 1, ptr %13, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #9
  store ptr null, ptr %14, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #9
  %25 = call noalias ptr @malloc(i64 noundef 80000) #10
  store ptr %25, ptr %15, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #9
  %26 = load ptr, ptr %3, align 8, !tbaa !30
  %27 = getelementptr inbounds nuw %struct.Parser, ptr %26, i32 0, i32 12
  %28 = getelementptr inbounds nuw %struct.SNodeHash, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !239
  %30 = icmp ne ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %1
  %32 = load i32, ptr %13, align 4, !tbaa !21
  store i32 %32, ptr %2, align 4
  store i32 1, ptr %17, align 4
  br label %622

33:                                               ; preds = %1
  %34 = load ptr, ptr %3, align 8, !tbaa !30
  %35 = getelementptr inbounds nuw %struct.Parser, ptr %34, i32 0, i32 0
  %36 = getelementptr inbounds nuw %struct.D_Parser, ptr %35, i32 0, i32 6
  %37 = load ptr, ptr %3, align 8, !tbaa !30
  %38 = getelementptr inbounds nuw %struct.Parser, ptr %37, i32 0, i32 12
  %39 = getelementptr inbounds nuw %struct.SNodeHash, ptr %38, i32 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !239
  %41 = getelementptr inbounds nuw %struct.SNode, ptr %40, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %36, ptr align 8 %41, i64 32, i1 false), !tbaa.struct !144
  %42 = load ptr, ptr %3, align 8, !tbaa !30
  %43 = getelementptr inbounds nuw %struct.Parser, ptr %42, i32 0, i32 0
  %44 = getelementptr inbounds nuw %struct.D_Parser, ptr %43, i32 0, i32 16
  %45 = load i32, ptr %44, align 4, !tbaa !130
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %33
  %48 = load i32, ptr %13, align 4, !tbaa !21
  store i32 %48, ptr %2, align 4
  store i32 1, ptr %17, align 4
  br label %622

49:                                               ; preds = %33
  %50 = load ptr, ptr %3, align 8, !tbaa !30
  %51 = getelementptr inbounds nuw %struct.Parser, ptr %50, i32 0, i32 0
  %52 = getelementptr inbounds nuw %struct.D_Parser, ptr %51, i32 0, i32 6
  %53 = getelementptr inbounds nuw %struct.d_loc_t, ptr %52, i32 0, i32 4
  %54 = load i32, ptr %53, align 8, !tbaa !125
  %55 = load ptr, ptr %3, align 8, !tbaa !30
  %56 = getelementptr inbounds nuw %struct.Parser, ptr %55, i32 0, i32 17
  %57 = load i32, ptr %56, align 8, !tbaa !281
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %49
  %60 = load ptr, ptr %3, align 8, !tbaa !30
  %61 = getelementptr inbounds nuw %struct.Parser, ptr %60, i32 0, i32 0
  %62 = getelementptr inbounds nuw %struct.D_Parser, ptr %61, i32 0, i32 6
  %63 = getelementptr inbounds nuw %struct.d_loc_t, ptr %62, i32 0, i32 4
  %64 = load i32, ptr %63, align 8, !tbaa !125
  %65 = load ptr, ptr %3, align 8, !tbaa !30
  %66 = getelementptr inbounds nuw %struct.Parser, ptr %65, i32 0, i32 17
  store i32 %64, ptr %66, align 8, !tbaa !281
  %67 = load ptr, ptr %3, align 8, !tbaa !30
  %68 = getelementptr inbounds nuw %struct.Parser, ptr %67, i32 0, i32 0
  %69 = getelementptr inbounds nuw %struct.D_Parser, ptr %68, i32 0, i32 18
  %70 = load i32, ptr %69, align 4, !tbaa !282
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %69, align 4, !tbaa !282
  %72 = load ptr, ptr %3, align 8, !tbaa !30
  %73 = getelementptr inbounds nuw %struct.Parser, ptr %72, i32 0, i32 0
  %74 = getelementptr inbounds nuw %struct.D_Parser, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !128
  %76 = load ptr, ptr %3, align 8, !tbaa !30
  call void %75(ptr noundef %76)
  br label %77

77:                                               ; preds = %59, %49
  %78 = load ptr, ptr %3, align 8, !tbaa !30
  %79 = getelementptr inbounds nuw %struct.Parser, ptr %78, i32 0, i32 12
  %80 = getelementptr inbounds nuw %struct.SNodeHash, ptr %79, i32 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !239
  store ptr %81, ptr %4, align 8, !tbaa !72
  br label %82

82:                                               ; preds = %96, %77
  %83 = load ptr, ptr %4, align 8, !tbaa !72
  %84 = icmp ne ptr %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load i32, ptr %12, align 4, !tbaa !21
  %87 = icmp slt i32 %86, 9999
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load ptr, ptr %4, align 8, !tbaa !72
  %90 = load ptr, ptr %15, align 8, !tbaa !83
  %91 = load i32, ptr %12, align 4, !tbaa !21
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %12, align 4, !tbaa !21
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds ptr, ptr %90, i64 %93
  store ptr %89, ptr %94, align 8, !tbaa !72
  br label %95

95:                                               ; preds = %88, %85
  br label %96

96:                                               ; preds = %95
  %97 = load ptr, ptr %4, align 8, !tbaa !72
  %98 = getelementptr inbounds nuw %struct.SNode, ptr %97, i32 0, i32 9
  %99 = load ptr, ptr %98, align 8, !tbaa !191
  store ptr %99, ptr %4, align 8, !tbaa !72
  br label %82, !llvm.loop !283

100:                                              ; preds = %82
  %101 = load ptr, ptr %3, align 8, !tbaa !30
  %102 = getelementptr inbounds nuw %struct.Parser, ptr %101, i32 0, i32 12
  %103 = getelementptr inbounds nuw %struct.SNodeHash, ptr %102, i32 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !239
  %105 = getelementptr inbounds nuw %struct.SNode, ptr %104, i32 0, i32 3
  %106 = getelementptr inbounds nuw %struct.d_loc_t, ptr %105, i32 0, i32 0
  %107 = load ptr, ptr %106, align 8, !tbaa !224
  store ptr %107, ptr %8, align 8, !tbaa !27
  br label %108

108:                                              ; preds = %268, %100
  %109 = load i32, ptr %12, align 4, !tbaa !21
  %110 = load i32, ptr %11, align 4, !tbaa !21
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %269

112:                                              ; preds = %108
  %113 = load ptr, ptr %15, align 8, !tbaa !83
  %114 = load i32, ptr %11, align 4, !tbaa !21
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr %11, align 4, !tbaa !21
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds ptr, ptr %113, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !72
  store ptr %118, ptr %4, align 8, !tbaa !72
  %119 = load ptr, ptr %4, align 8, !tbaa !72
  %120 = getelementptr inbounds nuw %struct.SNode, ptr %119, i32 0, i32 0
  %121 = load ptr, ptr %120, align 8, !tbaa !73
  %122 = getelementptr inbounds nuw %struct.D_State, ptr %121, i32 0, i32 4
  %123 = getelementptr inbounds nuw %struct.anon.2, ptr %122, i32 0, i32 0
  %124 = load i32, ptr %123, align 8, !tbaa !284
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %202

126:                                              ; preds = %112
  store i32 0, ptr %9, align 4, !tbaa !21
  br label %127

127:                                              ; preds = %198, %126
  %128 = load i32, ptr %9, align 4, !tbaa !21
  %129 = load ptr, ptr %4, align 8, !tbaa !72
  %130 = getelementptr inbounds nuw %struct.SNode, ptr %129, i32 0, i32 0
  %131 = load ptr, ptr %130, align 8, !tbaa !73
  %132 = getelementptr inbounds nuw %struct.D_State, ptr %131, i32 0, i32 4
  %133 = getelementptr inbounds nuw %struct.anon.2, ptr %132, i32 0, i32 0
  %134 = load i32, ptr %133, align 8, !tbaa !284
  %135 = icmp ult i32 %128, %134
  br i1 %135, label %136, label %201

136:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #9
  %137 = load ptr, ptr %4, align 8, !tbaa !72
  %138 = getelementptr inbounds nuw %struct.SNode, ptr %137, i32 0, i32 0
  %139 = load ptr, ptr %138, align 8, !tbaa !73
  %140 = getelementptr inbounds nuw %struct.D_State, ptr %139, i32 0, i32 4
  %141 = getelementptr inbounds nuw %struct.anon.2, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !285
  %143 = load i32, ptr %9, align 4, !tbaa !21
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.D_ErrorRecoveryHint, ptr %142, i64 %144
  store ptr %145, ptr %18, align 8, !tbaa !280
  %146 = load ptr, ptr %8, align 8, !tbaa !27
  %147 = load ptr, ptr %18, align 8, !tbaa !280
  %148 = getelementptr inbounds nuw %struct.D_ErrorRecoveryHint, ptr %147, i32 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !286
  %150 = call ptr @find_substr(ptr noundef %146, ptr noundef %149)
  store ptr %150, ptr %7, align 8, !tbaa !27
  %151 = icmp ne ptr %150, null
  br i1 %151, label %152, label %197

152:                                              ; preds = %136
  %153 = load ptr, ptr %5, align 8, !tbaa !72
  %154 = icmp ne ptr %153, null
  br i1 %154, label %155, label %192

155:                                              ; preds = %152
  %156 = load ptr, ptr %7, align 8, !tbaa !27
  %157 = load ptr, ptr %6, align 8, !tbaa !27
  %158 = icmp ult ptr %156, %157
  br i1 %158, label %192, label %159

159:                                              ; preds = %155
  %160 = load ptr, ptr %5, align 8, !tbaa !72
  %161 = icmp ne ptr %160, null
  br i1 %161, label %162, label %196

162:                                              ; preds = %159
  %163 = load ptr, ptr %7, align 8, !tbaa !27
  %164 = load ptr, ptr %6, align 8, !tbaa !27
  %165 = icmp eq ptr %163, %164
  br i1 %165, label %166, label %196

166:                                              ; preds = %162
  %167 = load ptr, ptr %5, align 8, !tbaa !72
  %168 = getelementptr inbounds nuw %struct.SNode, ptr %167, i32 0, i32 4
  %169 = load i32, ptr %168, align 8, !tbaa !288
  %170 = load ptr, ptr %4, align 8, !tbaa !72
  %171 = getelementptr inbounds nuw %struct.SNode, ptr %170, i32 0, i32 4
  %172 = load i32, ptr %171, align 8, !tbaa !288
  %173 = icmp ult i32 %169, %172
  br i1 %173, label %192, label %174

174:                                              ; preds = %166
  %175 = load ptr, ptr %5, align 8, !tbaa !72
  %176 = getelementptr inbounds nuw %struct.SNode, ptr %175, i32 0, i32 4
  %177 = load i32, ptr %176, align 8, !tbaa !288
  %178 = load ptr, ptr %4, align 8, !tbaa !72
  %179 = getelementptr inbounds nuw %struct.SNode, ptr %178, i32 0, i32 4
  %180 = load i32, ptr %179, align 8, !tbaa !288
  %181 = icmp eq i32 %177, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %174
  %183 = load ptr, ptr %14, align 8, !tbaa !280
  %184 = getelementptr inbounds nuw %struct.D_ErrorRecoveryHint, ptr %183, i32 0, i32 0
  %185 = load i16, ptr %184, align 8, !tbaa !289
  %186 = zext i16 %185 to i32
  %187 = load ptr, ptr %18, align 8, !tbaa !280
  %188 = getelementptr inbounds nuw %struct.D_ErrorRecoveryHint, ptr %187, i32 0, i32 0
  %189 = load i16, ptr %188, align 8, !tbaa !289
  %190 = zext i16 %189 to i32
  %191 = icmp slt i32 %186, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %182, %166, %155, %152
  %193 = load ptr, ptr %4, align 8, !tbaa !72
  store ptr %193, ptr %5, align 8, !tbaa !72
  %194 = load ptr, ptr %7, align 8, !tbaa !27
  store ptr %194, ptr %6, align 8, !tbaa !27
  %195 = load ptr, ptr %18, align 8, !tbaa !280
  store ptr %195, ptr %14, align 8, !tbaa !280
  br label %196

196:                                              ; preds = %192, %182, %174, %162, %159
  br label %197

197:                                              ; preds = %196, %136
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #9
  br label %198

198:                                              ; preds = %197
  %199 = load i32, ptr %9, align 4, !tbaa !21
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr %9, align 4, !tbaa !21
  br label %127, !llvm.loop !290

201:                                              ; preds = %127
  br label %202

202:                                              ; preds = %201, %112
  store i32 0, ptr %9, align 4, !tbaa !21
  br label %203

203:                                              ; preds = %265, %202
  %204 = load i32, ptr %9, align 4, !tbaa !21
  %205 = load ptr, ptr %4, align 8, !tbaa !72
  %206 = getelementptr inbounds nuw %struct.SNode, ptr %205, i32 0, i32 6
  %207 = getelementptr inbounds nuw %struct.VecZNode, ptr %206, i32 0, i32 0
  %208 = load i32, ptr %207, align 8, !tbaa !211
  %209 = icmp ult i32 %204, %208
  br i1 %209, label %210, label %268

210:                                              ; preds = %203
  %211 = load ptr, ptr %4, align 8, !tbaa !72
  %212 = getelementptr inbounds nuw %struct.SNode, ptr %211, i32 0, i32 6
  %213 = getelementptr inbounds nuw %struct.VecZNode, ptr %212, i32 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !212
  %215 = load i32, ptr %9, align 4, !tbaa !21
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds ptr, ptr %214, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !188
  %219 = icmp ne ptr %218, null
  br i1 %219, label %220, label %264

220:                                              ; preds = %210
  store i32 0, ptr %10, align 4, !tbaa !21
  br label %221

221:                                              ; preds = %260, %220
  %222 = load i32, ptr %10, align 4, !tbaa !21
  %223 = load ptr, ptr %4, align 8, !tbaa !72
  %224 = getelementptr inbounds nuw %struct.SNode, ptr %223, i32 0, i32 6
  %225 = getelementptr inbounds nuw %struct.VecZNode, ptr %224, i32 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !212
  %227 = load i32, ptr %9, align 4, !tbaa !21
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds ptr, ptr %226, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !188
  %231 = getelementptr inbounds nuw %struct.ZNode, ptr %230, i32 0, i32 1
  %232 = getelementptr inbounds nuw %struct.VecSNode, ptr %231, i32 0, i32 0
  %233 = load i32, ptr %232, align 8, !tbaa !266
  %234 = icmp ult i32 %222, %233
  br i1 %234, label %235, label %263

235:                                              ; preds = %221
  %236 = load i32, ptr %12, align 4, !tbaa !21
  %237 = icmp slt i32 %236, 9999
  br i1 %237, label %238, label %259

238:                                              ; preds = %235
  %239 = load ptr, ptr %4, align 8, !tbaa !72
  %240 = getelementptr inbounds nuw %struct.SNode, ptr %239, i32 0, i32 6
  %241 = getelementptr inbounds nuw %struct.VecZNode, ptr %240, i32 0, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !212
  %243 = load i32, ptr %9, align 4, !tbaa !21
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds ptr, ptr %242, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !188
  %247 = getelementptr inbounds nuw %struct.ZNode, ptr %246, i32 0, i32 1
  %248 = getelementptr inbounds nuw %struct.VecSNode, ptr %247, i32 0, i32 2
  %249 = load ptr, ptr %248, align 8, !tbaa !267
  %250 = load i32, ptr %10, align 4, !tbaa !21
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds ptr, ptr %249, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !72
  %254 = load ptr, ptr %15, align 8, !tbaa !83
  %255 = load i32, ptr %12, align 4, !tbaa !21
  %256 = add nsw i32 %255, 1
  store i32 %256, ptr %12, align 4, !tbaa !21
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds ptr, ptr %254, i64 %257
  store ptr %253, ptr %258, align 8, !tbaa !72
  br label %259

259:                                              ; preds = %238, %235
  br label %260

260:                                              ; preds = %259
  %261 = load i32, ptr %10, align 4, !tbaa !21
  %262 = add nsw i32 %261, 1
  store i32 %262, ptr %10, align 4, !tbaa !21
  br label %221, !llvm.loop !291

263:                                              ; preds = %221
  br label %264

264:                                              ; preds = %263, %210
  br label %265

265:                                              ; preds = %264
  %266 = load i32, ptr %9, align 4, !tbaa !21
  %267 = add nsw i32 %266, 1
  store i32 %267, ptr %9, align 4, !tbaa !21
  br label %203, !llvm.loop !292

268:                                              ; preds = %203
  br label %108, !llvm.loop !293

269:                                              ; preds = %108
  %270 = load ptr, ptr %5, align 8, !tbaa !72
  %271 = icmp ne ptr %270, null
  br i1 %271, label %272, label %619

272:                                              ; preds = %269
  call void @llvm.lifetime.start.p0(i64 8, ptr %19) #9
  %273 = call noalias ptr @malloc(i64 noundef 56) #10
  store ptr %273, ptr %19, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(i64 8, ptr %20) #9
  %274 = call noalias ptr @malloc(i64 noundef 48) #10
  store ptr %274, ptr %20, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(i64 32, ptr %21) #9
  %275 = load ptr, ptr %3, align 8, !tbaa !30
  %276 = getelementptr inbounds nuw %struct.Parser, ptr %275, i32 0, i32 0
  %277 = getelementptr inbounds nuw %struct.D_Parser, ptr %276, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %277, i64 32, i1 false), !tbaa.struct !144
  call void @llvm.lifetime.start.p0(i64 8, ptr %22) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %23) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %24) #9
  %278 = load ptr, ptr %19, align 8, !tbaa !195
  call void @llvm.memset.p0.i64(ptr align 8 %278, i8 0, i64 56, i1 false)
  br label %279

279:                                              ; preds = %272
  %280 = load ptr, ptr %3, align 8, !tbaa !30
  %281 = getelementptr inbounds nuw %struct.Parser, ptr %280, i32 0, i32 24
  %282 = getelementptr inbounds nuw %struct.anon, ptr %281, i32 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !194
  %284 = icmp ne ptr %283, null
  br i1 %284, label %301, label %285

285:                                              ; preds = %279
  %286 = load ptr, ptr %19, align 8, !tbaa !195
  %287 = load ptr, ptr %3, align 8, !tbaa !30
  %288 = getelementptr inbounds nuw %struct.Parser, ptr %287, i32 0, i32 24
  %289 = getelementptr inbounds nuw %struct.anon, ptr %288, i32 0, i32 3
  %290 = getelementptr inbounds [3 x ptr], ptr %289, i64 0, i64 0
  %291 = load ptr, ptr %3, align 8, !tbaa !30
  %292 = getelementptr inbounds nuw %struct.Parser, ptr %291, i32 0, i32 24
  %293 = getelementptr inbounds nuw %struct.anon, ptr %292, i32 0, i32 2
  store ptr %290, ptr %293, align 8, !tbaa !194
  %294 = load ptr, ptr %3, align 8, !tbaa !30
  %295 = getelementptr inbounds nuw %struct.Parser, ptr %294, i32 0, i32 24
  %296 = getelementptr inbounds nuw %struct.anon, ptr %295, i32 0, i32 0
  %297 = load i32, ptr %296, align 8, !tbaa !193
  %298 = add i32 %297, 1
  store i32 %298, ptr %296, align 8, !tbaa !193
  %299 = zext i32 %297 to i64
  %300 = getelementptr inbounds nuw ptr, ptr %290, i64 %299
  store ptr %286, ptr %300, align 8, !tbaa !195
  br label %358

301:                                              ; preds = %279
  %302 = load ptr, ptr %3, align 8, !tbaa !30
  %303 = getelementptr inbounds nuw %struct.Parser, ptr %302, i32 0, i32 24
  %304 = getelementptr inbounds nuw %struct.anon, ptr %303, i32 0, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !194
  %306 = load ptr, ptr %3, align 8, !tbaa !30
  %307 = getelementptr inbounds nuw %struct.Parser, ptr %306, i32 0, i32 24
  %308 = getelementptr inbounds nuw %struct.anon, ptr %307, i32 0, i32 3
  %309 = getelementptr inbounds [3 x ptr], ptr %308, i64 0, i64 0
  %310 = icmp eq ptr %305, %309
  br i1 %310, label %311, label %331

311:                                              ; preds = %301
  %312 = load ptr, ptr %3, align 8, !tbaa !30
  %313 = getelementptr inbounds nuw %struct.Parser, ptr %312, i32 0, i32 24
  %314 = getelementptr inbounds nuw %struct.anon, ptr %313, i32 0, i32 0
  %315 = load i32, ptr %314, align 8, !tbaa !193
  %316 = icmp ult i32 %315, 3
  br i1 %316, label %317, label %330

317:                                              ; preds = %311
  %318 = load ptr, ptr %19, align 8, !tbaa !195
  %319 = load ptr, ptr %3, align 8, !tbaa !30
  %320 = getelementptr inbounds nuw %struct.Parser, ptr %319, i32 0, i32 24
  %321 = getelementptr inbounds nuw %struct.anon, ptr %320, i32 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !194
  %323 = load ptr, ptr %3, align 8, !tbaa !30
  %324 = getelementptr inbounds nuw %struct.Parser, ptr %323, i32 0, i32 24
  %325 = getelementptr inbounds nuw %struct.anon, ptr %324, i32 0, i32 0
  %326 = load i32, ptr %325, align 8, !tbaa !193
  %327 = add i32 %326, 1
  store i32 %327, ptr %325, align 8, !tbaa !193
  %328 = zext i32 %326 to i64
  %329 = getelementptr inbounds nuw ptr, ptr %322, i64 %328
  store ptr %318, ptr %329, align 8, !tbaa !195
  br label %358

330:                                              ; preds = %311
  br label %352

331:                                              ; preds = %301
  %332 = load ptr, ptr %3, align 8, !tbaa !30
  %333 = getelementptr inbounds nuw %struct.Parser, ptr %332, i32 0, i32 24
  %334 = getelementptr inbounds nuw %struct.anon, ptr %333, i32 0, i32 0
  %335 = load i32, ptr %334, align 8, !tbaa !193
  %336 = and i32 %335, 7
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %351

338:                                              ; preds = %331
  %339 = load ptr, ptr %19, align 8, !tbaa !195
  %340 = load ptr, ptr %3, align 8, !tbaa !30
  %341 = getelementptr inbounds nuw %struct.Parser, ptr %340, i32 0, i32 24
  %342 = getelementptr inbounds nuw %struct.anon, ptr %341, i32 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !194
  %344 = load ptr, ptr %3, align 8, !tbaa !30
  %345 = getelementptr inbounds nuw %struct.Parser, ptr %344, i32 0, i32 24
  %346 = getelementptr inbounds nuw %struct.anon, ptr %345, i32 0, i32 0
  %347 = load i32, ptr %346, align 8, !tbaa !193
  %348 = add i32 %347, 1
  store i32 %348, ptr %346, align 8, !tbaa !193
  %349 = zext i32 %347 to i64
  %350 = getelementptr inbounds nuw ptr, ptr %343, i64 %349
  store ptr %339, ptr %350, align 8, !tbaa !195
  br label %358

351:                                              ; preds = %331
  br label %352

352:                                              ; preds = %351, %330
  br label %353

353:                                              ; preds = %352
  %354 = load ptr, ptr %3, align 8, !tbaa !30
  %355 = getelementptr inbounds nuw %struct.Parser, ptr %354, i32 0, i32 24
  %356 = load ptr, ptr %19, align 8, !tbaa !195
  call void @vec_add_internal(ptr noundef %355, ptr noundef %356)
  br label %357

357:                                              ; preds = %353
  br label %358

358:                                              ; preds = %357, %338, %317, %285
  %359 = load ptr, ptr %14, align 8, !tbaa !280
  %360 = getelementptr inbounds nuw %struct.D_ErrorRecoveryHint, ptr %359, i32 0, i32 0
  %361 = load i16, ptr %360, align 8, !tbaa !289
  %362 = zext i16 %361 to i32
  %363 = add nsw i32 %362, 1
  %364 = trunc i32 %363 to i16
  %365 = load ptr, ptr %19, align 8, !tbaa !195
  %366 = getelementptr inbounds nuw %struct.D_Reduction, ptr %365, i32 0, i32 0
  store i16 %364, ptr %366, align 8, !tbaa !258
  %367 = load ptr, ptr %14, align 8, !tbaa !280
  %368 = getelementptr inbounds nuw %struct.D_ErrorRecoveryHint, ptr %367, i32 0, i32 1
  %369 = load i16, ptr %368, align 2, !tbaa !294
  %370 = load ptr, ptr %19, align 8, !tbaa !195
  %371 = getelementptr inbounds nuw %struct.D_Reduction, ptr %370, i32 0, i32 1
  store i16 %369, ptr %371, align 2, !tbaa !270
  %372 = getelementptr inbounds nuw %struct.d_loc_t, ptr %21, i32 0, i32 0
  %373 = load ptr, ptr %372, align 8, !tbaa !141
  %374 = load ptr, ptr %6, align 8, !tbaa !27
  %375 = getelementptr inbounds nuw %struct.d_loc_t, ptr %21, i32 0, i32 4
  call void @update_line(ptr noundef %373, ptr noundef %374, ptr noundef %375)
  %376 = load ptr, ptr %6, align 8, !tbaa !27
  %377 = getelementptr inbounds nuw %struct.d_loc_t, ptr %21, i32 0, i32 0
  store ptr %376, ptr %377, align 8, !tbaa !141
  %378 = load ptr, ptr %5, align 8, !tbaa !72
  %379 = getelementptr inbounds nuw %struct.SNode, ptr %378, i32 0, i32 6
  %380 = getelementptr inbounds nuw %struct.VecZNode, ptr %379, i32 0, i32 2
  %381 = load ptr, ptr %380, align 8, !tbaa !212
  %382 = getelementptr inbounds ptr, ptr %381, i64 0
  %383 = load ptr, ptr %382, align 8, !tbaa !188
  %384 = getelementptr inbounds nuw %struct.ZNode, ptr %383, i32 0, i32 0
  %385 = load ptr, ptr %384, align 8, !tbaa !213
  store ptr %385, ptr %16, align 8, !tbaa !3
  %386 = load ptr, ptr %16, align 8, !tbaa !3
  %387 = getelementptr inbounds nuw %struct.PNode, ptr %386, i32 0, i32 19
  %388 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %387, i32 0, i32 5
  %389 = load ptr, ptr %388, align 8, !tbaa !219
  %390 = load ptr, ptr %3, align 8, !tbaa !30
  %391 = load ptr, ptr %16, align 8, !tbaa !3
  %392 = getelementptr inbounds nuw %struct.PNode, ptr %391, i32 0, i32 19
  %393 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %392, i32 0, i32 6
  call void %389(ptr noundef %390, ptr noundef %21, ptr noundef %393)
  br label %394

394:                                              ; preds = %358
  %395 = load ptr, ptr %5, align 8, !tbaa !72
  %396 = getelementptr inbounds nuw %struct.SNode, ptr %395, i32 0, i32 7
  %397 = load i32, ptr %396, align 8, !tbaa !145
  %398 = add i32 %397, 1
  store i32 %398, ptr %396, align 8, !tbaa !145
  br label %399

399:                                              ; preds = %394
  br label %400

400:                                              ; preds = %399
  %401 = load ptr, ptr %3, align 8, !tbaa !30
  %402 = load ptr, ptr %3, align 8, !tbaa !30
  %403 = getelementptr inbounds nuw %struct.Parser, ptr %402, i32 0, i32 0
  %404 = getelementptr inbounds nuw %struct.D_Parser, ptr %403, i32 0, i32 6
  %405 = getelementptr inbounds nuw %struct.d_loc_t, ptr %21, i32 0, i32 0
  %406 = load ptr, ptr %405, align 8, !tbaa !141
  %407 = load ptr, ptr %16, align 8, !tbaa !3
  %408 = call ptr @add_PNode(ptr noundef %401, i32 noundef signext 0, ptr noundef %404, ptr noundef %406, ptr noundef %407, ptr noundef null, ptr noundef null, ptr noundef null)
  store ptr %408, ptr %22, align 8, !tbaa !3
  %409 = load ptr, ptr %3, align 8, !tbaa !30
  %410 = load ptr, ptr %5, align 8, !tbaa !72
  %411 = getelementptr inbounds nuw %struct.SNode, ptr %410, i32 0, i32 0
  %412 = load ptr, ptr %411, align 8, !tbaa !73
  %413 = load ptr, ptr %22, align 8, !tbaa !3
  %414 = getelementptr inbounds nuw %struct.PNode, ptr %413, i32 0, i32 17
  %415 = load ptr, ptr %414, align 8, !tbaa !91
  %416 = load ptr, ptr %22, align 8, !tbaa !3
  %417 = getelementptr inbounds nuw %struct.PNode, ptr %416, i32 0, i32 18
  %418 = load ptr, ptr %417, align 8, !tbaa !92
  %419 = call ptr @new_SNode(ptr noundef %409, ptr noundef %412, ptr noundef %21, ptr noundef %415, ptr noundef %418)
  store ptr %419, ptr %23, align 8, !tbaa !72
  %420 = load ptr, ptr %22, align 8, !tbaa !3
  %421 = load ptr, ptr %23, align 8, !tbaa !72
  %422 = getelementptr inbounds nuw %struct.SNode, ptr %421, i32 0, i32 5
  store ptr %420, ptr %422, align 8, !tbaa !223
  %423 = load ptr, ptr %23, align 8, !tbaa !72
  %424 = getelementptr inbounds nuw %struct.SNode, ptr %423, i32 0, i32 6
  %425 = load ptr, ptr %3, align 8, !tbaa !30
  %426 = load ptr, ptr %22, align 8, !tbaa !3
  %427 = call ptr @new_ZNode(ptr noundef %425, ptr noundef %426)
  store ptr %427, ptr %24, align 8, !tbaa !188
  call void @set_add_znode(ptr noundef %424, ptr noundef %427)
  br label %428

428:                                              ; preds = %400
  %429 = load ptr, ptr %22, align 8, !tbaa !3
  %430 = getelementptr inbounds nuw %struct.PNode, ptr %429, i32 0, i32 6
  %431 = load i32, ptr %430, align 8, !tbaa !100
  %432 = add i32 %431, 1
  store i32 %432, ptr %430, align 8, !tbaa !100
  br label %433

433:                                              ; preds = %428
  br label %434

434:                                              ; preds = %433
  br label %435

435:                                              ; preds = %434
  %436 = load ptr, ptr %24, align 8, !tbaa !188
  %437 = getelementptr inbounds nuw %struct.ZNode, ptr %436, i32 0, i32 1
  %438 = getelementptr inbounds nuw %struct.VecSNode, ptr %437, i32 0, i32 2
  %439 = load ptr, ptr %438, align 8, !tbaa !267
  %440 = icmp ne ptr %439, null
  br i1 %440, label %457, label %441

441:                                              ; preds = %435
  %442 = load ptr, ptr %5, align 8, !tbaa !72
  %443 = load ptr, ptr %24, align 8, !tbaa !188
  %444 = getelementptr inbounds nuw %struct.ZNode, ptr %443, i32 0, i32 1
  %445 = getelementptr inbounds nuw %struct.VecSNode, ptr %444, i32 0, i32 3
  %446 = getelementptr inbounds [3 x ptr], ptr %445, i64 0, i64 0
  %447 = load ptr, ptr %24, align 8, !tbaa !188
  %448 = getelementptr inbounds nuw %struct.ZNode, ptr %447, i32 0, i32 1
  %449 = getelementptr inbounds nuw %struct.VecSNode, ptr %448, i32 0, i32 2
  store ptr %446, ptr %449, align 8, !tbaa !267
  %450 = load ptr, ptr %24, align 8, !tbaa !188
  %451 = getelementptr inbounds nuw %struct.ZNode, ptr %450, i32 0, i32 1
  %452 = getelementptr inbounds nuw %struct.VecSNode, ptr %451, i32 0, i32 0
  %453 = load i32, ptr %452, align 8, !tbaa !266
  %454 = add i32 %453, 1
  store i32 %454, ptr %452, align 8, !tbaa !266
  %455 = zext i32 %453 to i64
  %456 = getelementptr inbounds nuw ptr, ptr %446, i64 %455
  store ptr %442, ptr %456, align 8, !tbaa !72
  br label %514

457:                                              ; preds = %435
  %458 = load ptr, ptr %24, align 8, !tbaa !188
  %459 = getelementptr inbounds nuw %struct.ZNode, ptr %458, i32 0, i32 1
  %460 = getelementptr inbounds nuw %struct.VecSNode, ptr %459, i32 0, i32 2
  %461 = load ptr, ptr %460, align 8, !tbaa !267
  %462 = load ptr, ptr %24, align 8, !tbaa !188
  %463 = getelementptr inbounds nuw %struct.ZNode, ptr %462, i32 0, i32 1
  %464 = getelementptr inbounds nuw %struct.VecSNode, ptr %463, i32 0, i32 3
  %465 = getelementptr inbounds [3 x ptr], ptr %464, i64 0, i64 0
  %466 = icmp eq ptr %461, %465
  br i1 %466, label %467, label %487

467:                                              ; preds = %457
  %468 = load ptr, ptr %24, align 8, !tbaa !188
  %469 = getelementptr inbounds nuw %struct.ZNode, ptr %468, i32 0, i32 1
  %470 = getelementptr inbounds nuw %struct.VecSNode, ptr %469, i32 0, i32 0
  %471 = load i32, ptr %470, align 8, !tbaa !266
  %472 = icmp ult i32 %471, 3
  br i1 %472, label %473, label %486

473:                                              ; preds = %467
  %474 = load ptr, ptr %5, align 8, !tbaa !72
  %475 = load ptr, ptr %24, align 8, !tbaa !188
  %476 = getelementptr inbounds nuw %struct.ZNode, ptr %475, i32 0, i32 1
  %477 = getelementptr inbounds nuw %struct.VecSNode, ptr %476, i32 0, i32 2
  %478 = load ptr, ptr %477, align 8, !tbaa !267
  %479 = load ptr, ptr %24, align 8, !tbaa !188
  %480 = getelementptr inbounds nuw %struct.ZNode, ptr %479, i32 0, i32 1
  %481 = getelementptr inbounds nuw %struct.VecSNode, ptr %480, i32 0, i32 0
  %482 = load i32, ptr %481, align 8, !tbaa !266
  %483 = add i32 %482, 1
  store i32 %483, ptr %481, align 8, !tbaa !266
  %484 = zext i32 %482 to i64
  %485 = getelementptr inbounds nuw ptr, ptr %478, i64 %484
  store ptr %474, ptr %485, align 8, !tbaa !72
  br label %514

486:                                              ; preds = %467
  br label %508

487:                                              ; preds = %457
  %488 = load ptr, ptr %24, align 8, !tbaa !188
  %489 = getelementptr inbounds nuw %struct.ZNode, ptr %488, i32 0, i32 1
  %490 = getelementptr inbounds nuw %struct.VecSNode, ptr %489, i32 0, i32 0
  %491 = load i32, ptr %490, align 8, !tbaa !266
  %492 = and i32 %491, 7
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %507

494:                                              ; preds = %487
  %495 = load ptr, ptr %5, align 8, !tbaa !72
  %496 = load ptr, ptr %24, align 8, !tbaa !188
  %497 = getelementptr inbounds nuw %struct.ZNode, ptr %496, i32 0, i32 1
  %498 = getelementptr inbounds nuw %struct.VecSNode, ptr %497, i32 0, i32 2
  %499 = load ptr, ptr %498, align 8, !tbaa !267
  %500 = load ptr, ptr %24, align 8, !tbaa !188
  %501 = getelementptr inbounds nuw %struct.ZNode, ptr %500, i32 0, i32 1
  %502 = getelementptr inbounds nuw %struct.VecSNode, ptr %501, i32 0, i32 0
  %503 = load i32, ptr %502, align 8, !tbaa !266
  %504 = add i32 %503, 1
  store i32 %504, ptr %502, align 8, !tbaa !266
  %505 = zext i32 %503 to i64
  %506 = getelementptr inbounds nuw ptr, ptr %499, i64 %505
  store ptr %495, ptr %506, align 8, !tbaa !72
  br label %514

507:                                              ; preds = %487
  br label %508

508:                                              ; preds = %507, %486
  br label %509

509:                                              ; preds = %508
  %510 = load ptr, ptr %24, align 8, !tbaa !188
  %511 = getelementptr inbounds nuw %struct.ZNode, ptr %510, i32 0, i32 1
  %512 = load ptr, ptr %5, align 8, !tbaa !72
  call void @vec_add_internal(ptr noundef %511, ptr noundef %512)
  br label %513

513:                                              ; preds = %509
  br label %514

514:                                              ; preds = %513, %494, %473, %441
  %515 = load ptr, ptr %24, align 8, !tbaa !188
  %516 = load ptr, ptr %20, align 8, !tbaa !174
  %517 = getelementptr inbounds nuw %struct.Reduction, ptr %516, i32 0, i32 0
  store ptr %515, ptr %517, align 8, !tbaa !269
  %518 = load ptr, ptr %23, align 8, !tbaa !72
  %519 = load ptr, ptr %20, align 8, !tbaa !174
  %520 = getelementptr inbounds nuw %struct.Reduction, ptr %519, i32 0, i32 1
  store ptr %518, ptr %520, align 8, !tbaa !175
  br label %521

521:                                              ; preds = %514
  %522 = load ptr, ptr %5, align 8, !tbaa !72
  %523 = getelementptr inbounds nuw %struct.SNode, ptr %522, i32 0, i32 7
  %524 = load i32, ptr %523, align 8, !tbaa !145
  %525 = add i32 %524, 1
  store i32 %525, ptr %523, align 8, !tbaa !145
  br label %526

526:                                              ; preds = %521
  br label %527

527:                                              ; preds = %526
  %528 = load ptr, ptr %19, align 8, !tbaa !195
  %529 = load ptr, ptr %20, align 8, !tbaa !174
  %530 = getelementptr inbounds nuw %struct.Reduction, ptr %529, i32 0, i32 2
  store ptr %528, ptr %530, align 8, !tbaa !268
  %531 = load ptr, ptr %20, align 8, !tbaa !174
  %532 = getelementptr inbounds nuw %struct.Reduction, ptr %531, i32 0, i32 3
  store ptr null, ptr %532, align 8, !tbaa !274
  %533 = load ptr, ptr %20, align 8, !tbaa !174
  %534 = getelementptr inbounds nuw %struct.Reduction, ptr %533, i32 0, i32 5
  store ptr null, ptr %534, align 8, !tbaa !172
  %535 = load ptr, ptr %3, align 8, !tbaa !30
  call void @free_old_nodes(ptr noundef %535)
  %536 = load ptr, ptr %3, align 8, !tbaa !30
  %537 = load ptr, ptr %20, align 8, !tbaa !174
  call void @reduce_one(ptr noundef %536, ptr noundef %537)
  store i32 0, ptr %9, align 4, !tbaa !21
  br label %538

538:                                              ; preds = %604, %527
  %539 = load i32, ptr %9, align 4, !tbaa !21
  %540 = load ptr, ptr %3, align 8, !tbaa !30
  %541 = getelementptr inbounds nuw %struct.Parser, ptr %540, i32 0, i32 3
  %542 = load ptr, ptr %541, align 8, !tbaa !32
  %543 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %542, i32 0, i32 0
  %544 = load i32, ptr %543, align 8, !tbaa !295
  %545 = icmp ult i32 %539, %544
  br i1 %545, label %546, label %607

546:                                              ; preds = %538
  %547 = load ptr, ptr %3, align 8, !tbaa !30
  %548 = getelementptr inbounds nuw %struct.Parser, ptr %547, i32 0, i32 12
  %549 = getelementptr inbounds nuw %struct.SNodeHash, ptr %548, i32 0, i32 0
  %550 = load ptr, ptr %549, align 8, !tbaa !169
  %551 = load i32, ptr %9, align 4, !tbaa !21
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds ptr, ptr %550, i64 %552
  %554 = load ptr, ptr %553, align 8, !tbaa !72
  store ptr %554, ptr %4, align 8, !tbaa !72
  br label %555

555:                                              ; preds = %599, %546
  %556 = load ptr, ptr %4, align 8, !tbaa !72
  %557 = icmp ne ptr %556, null
  br i1 %557, label %558, label %603

558:                                              ; preds = %555
  store i32 0, ptr %10, align 4, !tbaa !21
  br label %559

559:                                              ; preds = %595, %558
  %560 = load i32, ptr %10, align 4, !tbaa !21
  %561 = load ptr, ptr %4, align 8, !tbaa !72
  %562 = getelementptr inbounds nuw %struct.SNode, ptr %561, i32 0, i32 6
  %563 = getelementptr inbounds nuw %struct.VecZNode, ptr %562, i32 0, i32 0
  %564 = load i32, ptr %563, align 8, !tbaa !211
  %565 = icmp ult i32 %560, %564
  br i1 %565, label %566, label %598

566:                                              ; preds = %559
  %567 = load ptr, ptr %4, align 8, !tbaa !72
  %568 = getelementptr inbounds nuw %struct.SNode, ptr %567, i32 0, i32 6
  %569 = getelementptr inbounds nuw %struct.VecZNode, ptr %568, i32 0, i32 2
  %570 = load ptr, ptr %569, align 8, !tbaa !212
  %571 = load i32, ptr %10, align 4, !tbaa !21
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds ptr, ptr %570, i64 %572
  %574 = load ptr, ptr %573, align 8, !tbaa !188
  store ptr %574, ptr %24, align 8, !tbaa !188
  %575 = icmp ne ptr %574, null
  br i1 %575, label %576, label %594

576:                                              ; preds = %566
  %577 = load ptr, ptr %24, align 8, !tbaa !188
  %578 = getelementptr inbounds nuw %struct.ZNode, ptr %577, i32 0, i32 0
  %579 = load ptr, ptr %578, align 8, !tbaa !213
  %580 = getelementptr inbounds nuw %struct.PNode, ptr %579, i32 0, i32 4
  %581 = load ptr, ptr %580, align 8, !tbaa !114
  %582 = load ptr, ptr %19, align 8, !tbaa !195
  %583 = icmp eq ptr %581, %582
  br i1 %583, label %584, label %593

584:                                              ; preds = %576
  %585 = load ptr, ptr %24, align 8, !tbaa !188
  %586 = getelementptr inbounds nuw %struct.ZNode, ptr %585, i32 0, i32 0
  %587 = load ptr, ptr %586, align 8, !tbaa !213
  %588 = getelementptr inbounds nuw %struct.PNode, ptr %587, i32 0, i32 9
  store i8 1, ptr %588, align 4, !tbaa !229
  %589 = load ptr, ptr %24, align 8, !tbaa !188
  %590 = getelementptr inbounds nuw %struct.ZNode, ptr %589, i32 0, i32 0
  %591 = load ptr, ptr %590, align 8, !tbaa !213
  %592 = getelementptr inbounds nuw %struct.PNode, ptr %591, i32 0, i32 10
  store i8 1, ptr %592, align 1, !tbaa !8
  br label %593

593:                                              ; preds = %584, %576
  br label %594

594:                                              ; preds = %593, %566
  br label %595

595:                                              ; preds = %594
  %596 = load i32, ptr %10, align 4, !tbaa !21
  %597 = add nsw i32 %596, 1
  store i32 %597, ptr %10, align 4, !tbaa !21
  br label %559, !llvm.loop !296

598:                                              ; preds = %559
  br label %599

599:                                              ; preds = %598
  %600 = load ptr, ptr %4, align 8, !tbaa !72
  %601 = getelementptr inbounds nuw %struct.SNode, ptr %600, i32 0, i32 8
  %602 = load ptr, ptr %601, align 8, !tbaa !80
  store ptr %602, ptr %4, align 8, !tbaa !72
  br label %555, !llvm.loop !297

603:                                              ; preds = %555
  br label %604

604:                                              ; preds = %603
  %605 = load i32, ptr %9, align 4, !tbaa !21
  %606 = add nsw i32 %605, 1
  store i32 %606, ptr %9, align 4, !tbaa !21
  br label %538, !llvm.loop !298

607:                                              ; preds = %538
  %608 = load ptr, ptr %3, align 8, !tbaa !30
  %609 = getelementptr inbounds nuw %struct.Parser, ptr %608, i32 0, i32 14
  %610 = load ptr, ptr %609, align 8, !tbaa !177
  %611 = icmp ne ptr %610, null
  br i1 %611, label %617, label %612

612:                                              ; preds = %607
  %613 = load ptr, ptr %3, align 8, !tbaa !30
  %614 = getelementptr inbounds nuw %struct.Parser, ptr %613, i32 0, i32 13
  %615 = load ptr, ptr %614, align 8, !tbaa !170
  %616 = icmp ne ptr %615, null
  br i1 %616, label %617, label %618

617:                                              ; preds = %612, %607
  store i32 0, ptr %13, align 4, !tbaa !21
  br label %618

618:                                              ; preds = %617, %612
  call void @llvm.lifetime.end.p0(i64 8, ptr %24) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %23) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %22) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %21) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %20) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %19) #9
  br label %619

619:                                              ; preds = %618, %269
  %620 = load ptr, ptr %15, align 8, !tbaa !83
  call void @free(ptr noundef %620) #9
  %621 = load i32, ptr %13, align 4, !tbaa !21
  store i32 %621, ptr %2, align 4
  store i32 1, ptr %17, align 4
  br label %622

622:                                              ; preds = %619, %47, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #9
  %623 = load i32, ptr %2, align 4
  ret i32 %623
}

; Function Attrs: nounwind
define internal void @cmp_stacks(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  %10 = load ptr, ptr %2, align 8, !tbaa !30
  %11 = getelementptr inbounds nuw %struct.Parser, ptr %10, i32 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !177
  %13 = getelementptr inbounds nuw %struct.Shift, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  %15 = getelementptr inbounds nuw %struct.SNode, ptr %14, i32 0, i32 3
  %16 = getelementptr inbounds nuw %struct.d_loc_t, ptr %15, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8, !tbaa !224
  store ptr %17, ptr %3, align 8, !tbaa !27
  %18 = load ptr, ptr %2, align 8, !tbaa !30
  %19 = getelementptr inbounds nuw %struct.Parser, ptr %18, i32 0, i32 14
  store ptr %19, ptr %6, align 8, !tbaa !299
  %20 = load ptr, ptr %6, align 8, !tbaa !299
  %21 = load ptr, ptr %20, align 8, !tbaa !181
  store ptr %21, ptr %4, align 8, !tbaa !181
  br label %22

22:                                               ; preds = %208, %1
  %23 = load ptr, ptr %4, align 8, !tbaa !181
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load ptr, ptr %4, align 8, !tbaa !181
  %27 = getelementptr inbounds nuw %struct.Shift, ptr %26, i32 0, i32 0
  %28 = load ptr, ptr %27, align 8, !tbaa !182
  %29 = getelementptr inbounds nuw %struct.SNode, ptr %28, i32 0, i32 3
  %30 = getelementptr inbounds nuw %struct.d_loc_t, ptr %29, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8, !tbaa !224
  %32 = load ptr, ptr %3, align 8, !tbaa !27
  %33 = icmp eq ptr %31, %32
  br label %34

34:                                               ; preds = %25, %22
  %35 = phi i1 [ false, %22 ], [ %33, %25 ]
  br i1 %35, label %36, label %214

36:                                               ; preds = %34
  %37 = load ptr, ptr %4, align 8, !tbaa !181
  %38 = getelementptr inbounds nuw %struct.Shift, ptr %37, i32 0, i32 0
  %39 = load ptr, ptr %38, align 8, !tbaa !182
  %40 = call ptr @binary_op_ZNode(ptr noundef %39)
  store ptr %40, ptr %8, align 8, !tbaa !188
  %41 = icmp ne ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %208

43:                                               ; preds = %36
  %44 = load ptr, ptr %4, align 8, !tbaa !181
  %45 = getelementptr inbounds nuw %struct.Shift, ptr %44, i32 0, i32 1
  store ptr %45, ptr %7, align 8, !tbaa !299
  %46 = load ptr, ptr %4, align 8, !tbaa !181
  %47 = getelementptr inbounds nuw %struct.Shift, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !179
  store ptr %48, ptr %5, align 8, !tbaa !181
  br label %49

49:                                               ; preds = %200, %43
  %50 = load ptr, ptr %5, align 8, !tbaa !181
  %51 = icmp ne ptr %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load ptr, ptr %5, align 8, !tbaa !181
  %54 = getelementptr inbounds nuw %struct.Shift, ptr %53, i32 0, i32 0
  %55 = load ptr, ptr %54, align 8, !tbaa !182
  %56 = getelementptr inbounds nuw %struct.SNode, ptr %55, i32 0, i32 3
  %57 = getelementptr inbounds nuw %struct.d_loc_t, ptr %56, i32 0, i32 0
  %58 = load ptr, ptr %57, align 8, !tbaa !224
  %59 = load ptr, ptr %3, align 8, !tbaa !27
  %60 = icmp eq ptr %58, %59
  br label %61

61:                                               ; preds = %52, %49
  %62 = phi i1 [ false, %49 ], [ %60, %52 ]
  br i1 %62, label %63, label %206

63:                                               ; preds = %61
  %64 = load ptr, ptr %5, align 8, !tbaa !181
  %65 = getelementptr inbounds nuw %struct.Shift, ptr %64, i32 0, i32 0
  %66 = load ptr, ptr %65, align 8, !tbaa !182
  %67 = call ptr @binary_op_ZNode(ptr noundef %66)
  store ptr %67, ptr %9, align 8, !tbaa !188
  %68 = icmp ne ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %200

70:                                               ; preds = %63
  %71 = load ptr, ptr %8, align 8, !tbaa !188
  %72 = getelementptr inbounds nuw %struct.ZNode, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %9, align 8, !tbaa !188
  %74 = getelementptr inbounds nuw %struct.ZNode, ptr %73, i32 0, i32 1
  %75 = call signext i32 @VecSNode_equal(ptr noundef %72, ptr noundef %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %200

78:                                               ; preds = %70
  %79 = load ptr, ptr %4, align 8, !tbaa !181
  %80 = getelementptr inbounds nuw %struct.Shift, ptr %79, i32 0, i32 0
  %81 = load ptr, ptr %80, align 8, !tbaa !182
  %82 = getelementptr inbounds nuw %struct.SNode, ptr %81, i32 0, i32 0
  %83 = load ptr, ptr %82, align 8, !tbaa !73
  %84 = getelementptr inbounds nuw %struct.D_State, ptr %83, i32 0, i32 13
  %85 = load i32, ptr %84, align 8, !tbaa !301
  %86 = sext i32 %85 to i64
  %87 = load ptr, ptr %5, align 8, !tbaa !181
  %88 = getelementptr inbounds nuw %struct.Shift, ptr %87, i32 0, i32 0
  %89 = load ptr, ptr %88, align 8, !tbaa !182
  %90 = getelementptr inbounds nuw %struct.SNode, ptr %89, i32 0, i32 0
  %91 = load ptr, ptr %90, align 8, !tbaa !73
  %92 = load ptr, ptr %2, align 8, !tbaa !30
  %93 = getelementptr inbounds nuw %struct.Parser, ptr %92, i32 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !32
  %95 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !77
  %97 = ptrtoint ptr %91 to i64
  %98 = ptrtoint ptr %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 120
  %101 = icmp ne i64 %86, %100
  br i1 %101, label %102, label %127

102:                                              ; preds = %78
  %103 = load ptr, ptr %5, align 8, !tbaa !181
  %104 = getelementptr inbounds nuw %struct.Shift, ptr %103, i32 0, i32 0
  %105 = load ptr, ptr %104, align 8, !tbaa !182
  %106 = getelementptr inbounds nuw %struct.SNode, ptr %105, i32 0, i32 0
  %107 = load ptr, ptr %106, align 8, !tbaa !73
  %108 = getelementptr inbounds nuw %struct.D_State, ptr %107, i32 0, i32 13
  %109 = load i32, ptr %108, align 8, !tbaa !301
  %110 = sext i32 %109 to i64
  %111 = load ptr, ptr %4, align 8, !tbaa !181
  %112 = getelementptr inbounds nuw %struct.Shift, ptr %111, i32 0, i32 0
  %113 = load ptr, ptr %112, align 8, !tbaa !182
  %114 = getelementptr inbounds nuw %struct.SNode, ptr %113, i32 0, i32 0
  %115 = load ptr, ptr %114, align 8, !tbaa !73
  %116 = load ptr, ptr %2, align 8, !tbaa !30
  %117 = getelementptr inbounds nuw %struct.Parser, ptr %116, i32 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !32
  %119 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %118, i32 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !77
  %121 = ptrtoint ptr %115 to i64
  %122 = ptrtoint ptr %120 to i64
  %123 = sub i64 %121, %122
  %124 = sdiv exact i64 %123, 120
  %125 = icmp ne i64 %110, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %102
  br label %200

127:                                              ; preds = %102, %78
  %128 = load ptr, ptr %8, align 8, !tbaa !188
  %129 = getelementptr inbounds nuw %struct.ZNode, ptr %128, i32 0, i32 0
  %130 = load ptr, ptr %129, align 8, !tbaa !213
  %131 = getelementptr inbounds nuw %struct.PNode, ptr %130, i32 0, i32 3
  %132 = load i32, ptr %131, align 4, !tbaa !302
  %133 = load ptr, ptr %9, align 8, !tbaa !188
  %134 = getelementptr inbounds nuw %struct.ZNode, ptr %133, i32 0, i32 0
  %135 = load ptr, ptr %134, align 8, !tbaa !213
  %136 = getelementptr inbounds nuw %struct.PNode, ptr %135, i32 0, i32 3
  %137 = load i32, ptr %136, align 4, !tbaa !302
  %138 = icmp sgt i32 %132, %137
  br i1 %138, label %139, label %163

139:                                              ; preds = %127
  %140 = load ptr, ptr %5, align 8, !tbaa !181
  %141 = getelementptr inbounds nuw %struct.Shift, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !179
  %143 = load ptr, ptr %7, align 8, !tbaa !299
  store ptr %142, ptr %143, align 8, !tbaa !181
  br label %144

144:                                              ; preds = %139
  %145 = load ptr, ptr %5, align 8, !tbaa !181
  %146 = getelementptr inbounds nuw %struct.Shift, ptr %145, i32 0, i32 0
  %147 = load ptr, ptr %146, align 8, !tbaa !182
  %148 = getelementptr inbounds nuw %struct.SNode, ptr %147, i32 0, i32 7
  %149 = load i32, ptr %148, align 8, !tbaa !145
  %150 = add i32 %149, -1
  store i32 %150, ptr %148, align 8, !tbaa !145
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %144
  %153 = load ptr, ptr %2, align 8, !tbaa !30
  %154 = load ptr, ptr %5, align 8, !tbaa !181
  %155 = getelementptr inbounds nuw %struct.Shift, ptr %154, i32 0, i32 0
  %156 = load ptr, ptr %155, align 8, !tbaa !182
  call void @free_SNode(ptr noundef %153, ptr noundef %156)
  br label %157

157:                                              ; preds = %152, %144
  br label %158

158:                                              ; preds = %157
  br label %159

159:                                              ; preds = %158
  %160 = load ptr, ptr %5, align 8, !tbaa !181
  call void @free(ptr noundef %160) #9
  %161 = load ptr, ptr %7, align 8, !tbaa !299
  %162 = load ptr, ptr %161, align 8, !tbaa !181
  store ptr %162, ptr %5, align 8, !tbaa !181
  br label %206

163:                                              ; preds = %127
  %164 = load ptr, ptr %8, align 8, !tbaa !188
  %165 = getelementptr inbounds nuw %struct.ZNode, ptr %164, i32 0, i32 0
  %166 = load ptr, ptr %165, align 8, !tbaa !213
  %167 = getelementptr inbounds nuw %struct.PNode, ptr %166, i32 0, i32 3
  %168 = load i32, ptr %167, align 4, !tbaa !302
  %169 = load ptr, ptr %9, align 8, !tbaa !188
  %170 = getelementptr inbounds nuw %struct.ZNode, ptr %169, i32 0, i32 0
  %171 = load ptr, ptr %170, align 8, !tbaa !213
  %172 = getelementptr inbounds nuw %struct.PNode, ptr %171, i32 0, i32 3
  %173 = load i32, ptr %172, align 4, !tbaa !302
  %174 = icmp slt i32 %168, %173
  br i1 %174, label %175, label %199

175:                                              ; preds = %163
  %176 = load ptr, ptr %4, align 8, !tbaa !181
  %177 = getelementptr inbounds nuw %struct.Shift, ptr %176, i32 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !179
  %179 = load ptr, ptr %6, align 8, !tbaa !299
  store ptr %178, ptr %179, align 8, !tbaa !181
  br label %180

180:                                              ; preds = %175
  %181 = load ptr, ptr %4, align 8, !tbaa !181
  %182 = getelementptr inbounds nuw %struct.Shift, ptr %181, i32 0, i32 0
  %183 = load ptr, ptr %182, align 8, !tbaa !182
  %184 = getelementptr inbounds nuw %struct.SNode, ptr %183, i32 0, i32 7
  %185 = load i32, ptr %184, align 8, !tbaa !145
  %186 = add i32 %185, -1
  store i32 %186, ptr %184, align 8, !tbaa !145
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %180
  %189 = load ptr, ptr %2, align 8, !tbaa !30
  %190 = load ptr, ptr %4, align 8, !tbaa !181
  %191 = getelementptr inbounds nuw %struct.Shift, ptr %190, i32 0, i32 0
  %192 = load ptr, ptr %191, align 8, !tbaa !182
  call void @free_SNode(ptr noundef %189, ptr noundef %192)
  br label %193

193:                                              ; preds = %188, %180
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %194
  %196 = load ptr, ptr %4, align 8, !tbaa !181
  call void @free(ptr noundef %196) #9
  %197 = load ptr, ptr %6, align 8, !tbaa !299
  %198 = load ptr, ptr %197, align 8, !tbaa !181
  store ptr %198, ptr %4, align 8, !tbaa !181
  br label %207

199:                                              ; preds = %163
  br label %200

200:                                              ; preds = %199, %126, %77, %69
  %201 = load ptr, ptr %5, align 8, !tbaa !181
  %202 = getelementptr inbounds nuw %struct.Shift, ptr %201, i32 0, i32 1
  store ptr %202, ptr %7, align 8, !tbaa !299
  %203 = load ptr, ptr %5, align 8, !tbaa !181
  %204 = getelementptr inbounds nuw %struct.Shift, ptr %203, i32 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !179
  store ptr %205, ptr %5, align 8, !tbaa !181
  br label %49, !llvm.loop !303

206:                                              ; preds = %159, %61
  br label %207

207:                                              ; preds = %206, %195
  br label %208

208:                                              ; preds = %207, %42
  %209 = load ptr, ptr %4, align 8, !tbaa !181
  %210 = getelementptr inbounds nuw %struct.Shift, ptr %209, i32 0, i32 1
  store ptr %210, ptr %6, align 8, !tbaa !299
  %211 = load ptr, ptr %4, align 8, !tbaa !181
  %212 = getelementptr inbounds nuw %struct.Shift, ptr %211, i32 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !179
  store ptr %213, ptr %4, align 8, !tbaa !181
  br label %22, !llvm.loop !304

214:                                              ; preds = %34
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define internal signext i32 @commit_stack(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !30
  store ptr %1, ptr %5, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  store i32 0, ptr %6, align 4, !tbaa !21
  %8 = load ptr, ptr %5, align 8, !tbaa !72
  %9 = getelementptr inbounds nuw %struct.SNode, ptr %8, i32 0, i32 6
  %10 = getelementptr inbounds nuw %struct.VecZNode, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 8, !tbaa !211
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %126

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 8, !tbaa !72
  %16 = getelementptr inbounds nuw %struct.SNode, ptr %15, i32 0, i32 6
  %17 = getelementptr inbounds nuw %struct.VecZNode, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !212
  %19 = getelementptr inbounds ptr, ptr %18, i64 0
  %20 = load ptr, ptr %19, align 8, !tbaa !188
  %21 = getelementptr inbounds nuw %struct.ZNode, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds nuw %struct.VecSNode, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 8, !tbaa !266
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store i32 -2, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %126

26:                                               ; preds = %14
  %27 = load ptr, ptr %5, align 8, !tbaa !72
  %28 = getelementptr inbounds nuw %struct.SNode, ptr %27, i32 0, i32 6
  %29 = getelementptr inbounds nuw %struct.VecZNode, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !212
  %31 = getelementptr inbounds ptr, ptr %30, i64 0
  %32 = load ptr, ptr %31, align 8, !tbaa !188
  %33 = getelementptr inbounds nuw %struct.ZNode, ptr %32, i32 0, i32 0
  %34 = load ptr, ptr %33, align 8, !tbaa !213
  %35 = getelementptr inbounds nuw %struct.PNode, ptr %34, i32 0, i32 19
  %36 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %35, i32 0, i32 1
  %37 = getelementptr inbounds nuw %struct.d_loc_t, ptr %36, i32 0, i32 0
  %38 = load ptr, ptr %37, align 8, !tbaa !25
  %39 = load ptr, ptr %5, align 8, !tbaa !72
  %40 = getelementptr inbounds nuw %struct.SNode, ptr %39, i32 0, i32 6
  %41 = getelementptr inbounds nuw %struct.VecZNode, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !212
  %43 = getelementptr inbounds ptr, ptr %42, i64 0
  %44 = load ptr, ptr %43, align 8, !tbaa !188
  %45 = getelementptr inbounds nuw %struct.ZNode, ptr %44, i32 0, i32 0
  %46 = load ptr, ptr %45, align 8, !tbaa !213
  %47 = getelementptr inbounds nuw %struct.PNode, ptr %46, i32 0, i32 19
  %48 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !222
  %50 = icmp eq ptr %38, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %26
  %52 = load ptr, ptr %5, align 8, !tbaa !72
  %53 = getelementptr inbounds nuw %struct.SNode, ptr %52, i32 0, i32 6
  %54 = getelementptr inbounds nuw %struct.VecZNode, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !212
  %56 = getelementptr inbounds ptr, ptr %55, i64 0
  %57 = load ptr, ptr %56, align 8, !tbaa !188
  %58 = getelementptr inbounds nuw %struct.ZNode, ptr %57, i32 0, i32 0
  %59 = load ptr, ptr %58, align 8, !tbaa !213
  %60 = getelementptr inbounds nuw %struct.PNode, ptr %59, i32 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !114
  %62 = icmp ne ptr %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %51
  %64 = load ptr, ptr %5, align 8, !tbaa !72
  %65 = getelementptr inbounds nuw %struct.SNode, ptr %64, i32 0, i32 6
  %66 = getelementptr inbounds nuw %struct.VecZNode, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !212
  %68 = getelementptr inbounds ptr, ptr %67, i64 0
  %69 = load ptr, ptr %68, align 8, !tbaa !188
  %70 = getelementptr inbounds nuw %struct.ZNode, ptr %69, i32 0, i32 0
  %71 = load ptr, ptr %70, align 8, !tbaa !213
  %72 = getelementptr inbounds nuw %struct.PNode, ptr %71, i32 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !114
  %74 = getelementptr inbounds nuw %struct.D_Reduction, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !230
  %76 = icmp ne ptr %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  store i32 -3, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %126

78:                                               ; preds = %63, %51, %26
  %79 = load ptr, ptr %5, align 8, !tbaa !72
  %80 = getelementptr inbounds nuw %struct.SNode, ptr %79, i32 0, i32 6
  %81 = getelementptr inbounds nuw %struct.VecZNode, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !212
  %83 = getelementptr inbounds ptr, ptr %82, i64 0
  %84 = load ptr, ptr %83, align 8, !tbaa !188
  %85 = getelementptr inbounds nuw %struct.ZNode, ptr %84, i32 0, i32 1
  %86 = getelementptr inbounds nuw %struct.VecSNode, ptr %85, i32 0, i32 0
  %87 = load i32, ptr %86, align 8, !tbaa !266
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %78
  %90 = load ptr, ptr %4, align 8, !tbaa !30
  %91 = load ptr, ptr %5, align 8, !tbaa !72
  %92 = getelementptr inbounds nuw %struct.SNode, ptr %91, i32 0, i32 6
  %93 = getelementptr inbounds nuw %struct.VecZNode, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !212
  %95 = getelementptr inbounds ptr, ptr %94, i64 0
  %96 = load ptr, ptr %95, align 8, !tbaa !188
  %97 = getelementptr inbounds nuw %struct.ZNode, ptr %96, i32 0, i32 1
  %98 = getelementptr inbounds nuw %struct.VecSNode, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !267
  %100 = getelementptr inbounds ptr, ptr %99, i64 0
  %101 = load ptr, ptr %100, align 8, !tbaa !72
  %102 = call signext i32 @commit_stack(ptr noundef %90, ptr noundef %101)
  store i32 %102, ptr %6, align 4, !tbaa !21
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %89
  %105 = load i32, ptr %6, align 4, !tbaa !21
  store i32 %105, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %126

106:                                              ; preds = %89
  br label %107

107:                                              ; preds = %106, %78
  %108 = load ptr, ptr %4, align 8, !tbaa !30
  %109 = load ptr, ptr %5, align 8, !tbaa !72
  %110 = getelementptr inbounds nuw %struct.SNode, ptr %109, i32 0, i32 6
  %111 = getelementptr inbounds nuw %struct.VecZNode, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !212
  %113 = getelementptr inbounds ptr, ptr %112, i64 0
  %114 = load ptr, ptr %113, align 8, !tbaa !188
  %115 = getelementptr inbounds nuw %struct.ZNode, ptr %114, i32 0, i32 0
  %116 = load ptr, ptr %115, align 8, !tbaa !213
  %117 = call ptr @commit_tree(ptr noundef %108, ptr noundef %116)
  %118 = load ptr, ptr %5, align 8, !tbaa !72
  %119 = getelementptr inbounds nuw %struct.SNode, ptr %118, i32 0, i32 6
  %120 = getelementptr inbounds nuw %struct.VecZNode, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !212
  %122 = getelementptr inbounds ptr, ptr %121, i64 0
  %123 = load ptr, ptr %122, align 8, !tbaa !188
  %124 = getelementptr inbounds nuw %struct.ZNode, ptr %123, i32 0, i32 0
  store ptr %117, ptr %124, align 8, !tbaa !213
  %125 = load i32, ptr %6, align 4, !tbaa !21
  store i32 %125, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %126

126:                                              ; preds = %107, %104, %77, %25, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  %127 = load i32, ptr %3, align 4
  ret i32 %127
}

; Function Attrs: nounwind
define internal void @shift_one(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.d_loc_t, align 8
  %8 = alloca %struct.d_loc_t, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  store i32 0, ptr %6, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 32, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  store ptr null, ptr %9, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #9
  %13 = load ptr, ptr %4, align 8, !tbaa !181
  %14 = getelementptr inbounds nuw %struct.Shift, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8, !tbaa !182
  %16 = getelementptr inbounds nuw %struct.SNode, ptr %15, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  store ptr %17, ptr %11, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #9
  %18 = load ptr, ptr %4, align 8, !tbaa !181
  %19 = getelementptr inbounds nuw %struct.Shift, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8, !tbaa !182
  %21 = getelementptr inbounds nuw %struct.SNode, ptr %20, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %21, i64 32, i1 false), !tbaa.struct !144
  %22 = getelementptr inbounds nuw %struct.d_loc_t, ptr %8, i32 0, i32 0
  store ptr null, ptr %22, align 8, !tbaa !141
  %23 = load ptr, ptr %3, align 8, !tbaa !30
  %24 = getelementptr inbounds nuw %struct.Parser, ptr %23, i32 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !208
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !208
  %27 = load ptr, ptr %11, align 8, !tbaa !245
  %28 = getelementptr inbounds nuw %struct.D_State, ptr %27, i32 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !305
  %30 = icmp ne ptr %29, null
  br i1 %30, label %31, label %98

31:                                               ; preds = %2
  %32 = load ptr, ptr %3, align 8, !tbaa !30
  %33 = getelementptr inbounds nuw %struct.Parser, ptr %32, i32 0, i32 26
  %34 = getelementptr inbounds nuw %struct.D_Shift, ptr %33, i32 0, i32 4
  store i32 0, ptr %34, align 8, !tbaa !306
  %35 = load ptr, ptr %3, align 8, !tbaa !30
  %36 = getelementptr inbounds nuw %struct.Parser, ptr %35, i32 0, i32 26
  %37 = getelementptr inbounds nuw %struct.D_Shift, ptr %36, i32 0, i32 2
  store i8 0, ptr %37, align 1, !tbaa !307
  %38 = load ptr, ptr %3, align 8, !tbaa !30
  %39 = getelementptr inbounds nuw %struct.Parser, ptr %38, i32 0, i32 25
  %40 = load ptr, ptr %39, align 8, !tbaa !197
  %41 = load i32, ptr %6, align 4, !tbaa !21
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ShiftResult, ptr %40, i64 %42
  %44 = getelementptr inbounds nuw %struct.ShiftResult, ptr %43, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %44, ptr align 8 %7, i64 32, i1 false), !tbaa.struct !144
  %45 = load ptr, ptr %11, align 8, !tbaa !245
  %46 = getelementptr inbounds nuw %struct.D_State, ptr %45, i32 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !305
  %48 = load ptr, ptr %3, align 8, !tbaa !30
  %49 = getelementptr inbounds nuw %struct.Parser, ptr %48, i32 0, i32 25
  %50 = load ptr, ptr %49, align 8, !tbaa !197
  %51 = load i32, ptr %6, align 4, !tbaa !21
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ShiftResult, ptr %50, i64 %52
  %54 = getelementptr inbounds nuw %struct.ShiftResult, ptr %53, i32 0, i32 1
  %55 = getelementptr inbounds nuw %struct.d_loc_t, ptr %54, i32 0, i32 0
  %56 = load ptr, ptr %3, align 8, !tbaa !30
  %57 = getelementptr inbounds nuw %struct.Parser, ptr %56, i32 0, i32 25
  %58 = load ptr, ptr %57, align 8, !tbaa !197
  %59 = load i32, ptr %6, align 4, !tbaa !21
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ShiftResult, ptr %58, i64 %60
  %62 = getelementptr inbounds nuw %struct.ShiftResult, ptr %61, i32 0, i32 1
  %63 = getelementptr inbounds nuw %struct.d_loc_t, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %3, align 8, !tbaa !30
  %65 = getelementptr inbounds nuw %struct.Parser, ptr %64, i32 0, i32 25
  %66 = load ptr, ptr %65, align 8, !tbaa !197
  %67 = load i32, ptr %6, align 4, !tbaa !21
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ShiftResult, ptr %66, i64 %68
  %70 = getelementptr inbounds nuw %struct.ShiftResult, ptr %69, i32 0, i32 1
  %71 = getelementptr inbounds nuw %struct.d_loc_t, ptr %70, i32 0, i32 4
  %72 = load ptr, ptr %3, align 8, !tbaa !30
  %73 = getelementptr inbounds nuw %struct.Parser, ptr %72, i32 0, i32 26
  %74 = getelementptr inbounds nuw %struct.D_Shift, ptr %73, i32 0, i32 0
  %75 = load ptr, ptr %3, align 8, !tbaa !30
  %76 = getelementptr inbounds nuw %struct.Parser, ptr %75, i32 0, i32 26
  %77 = getelementptr inbounds nuw %struct.D_Shift, ptr %76, i32 0, i32 4
  %78 = load ptr, ptr %3, align 8, !tbaa !30
  %79 = getelementptr inbounds nuw %struct.Parser, ptr %78, i32 0, i32 26
  %80 = getelementptr inbounds nuw %struct.D_Shift, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %3, align 8, !tbaa !30
  %82 = getelementptr inbounds nuw %struct.Parser, ptr %81, i32 0, i32 26
  %83 = getelementptr inbounds nuw %struct.D_Shift, ptr %82, i32 0, i32 3
  %84 = call signext i32 %47(ptr noundef %55, ptr noundef %63, ptr noundef %71, ptr noundef %74, ptr noundef %77, ptr noundef %80, ptr noundef %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %31
  %87 = load ptr, ptr %3, align 8, !tbaa !30
  %88 = getelementptr inbounds nuw %struct.Parser, ptr %87, i32 0, i32 26
  %89 = load ptr, ptr %3, align 8, !tbaa !30
  %90 = getelementptr inbounds nuw %struct.Parser, ptr %89, i32 0, i32 25
  %91 = load ptr, ptr %90, align 8, !tbaa !197
  %92 = load i32, ptr %6, align 4, !tbaa !21
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %6, align 4, !tbaa !21
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds %struct.ShiftResult, ptr %91, i64 %94
  %96 = getelementptr inbounds nuw %struct.ShiftResult, ptr %95, i32 0, i32 0
  store ptr %88, ptr %96, align 8, !tbaa !308
  br label %97

97:                                               ; preds = %86, %31
  br label %98

98:                                               ; preds = %97, %2
  %99 = load ptr, ptr %11, align 8, !tbaa !245
  %100 = getelementptr inbounds nuw %struct.D_State, ptr %99, i32 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !310
  %102 = icmp ne ptr %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load ptr, ptr %11, align 8, !tbaa !245
  %105 = load ptr, ptr %3, align 8, !tbaa !30
  %106 = getelementptr inbounds nuw %struct.Parser, ptr %105, i32 0, i32 25
  %107 = load ptr, ptr %106, align 8, !tbaa !197
  %108 = load i32, ptr %6, align 4, !tbaa !21
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ShiftResult, ptr %107, i64 %109
  %111 = call signext i32 @scan_buffer(ptr noundef %7, ptr noundef %104, ptr noundef %110)
  %112 = load i32, ptr %6, align 4, !tbaa !21
  %113 = add nsw i32 %112, %111
  store i32 %113, ptr %6, align 4, !tbaa !21
  br label %114

114:                                              ; preds = %103, %98
  store i32 0, ptr %5, align 4, !tbaa !21
  br label %115

115:                                              ; preds = %238, %114
  %116 = load i32, ptr %5, align 4, !tbaa !21
  %117 = load i32, ptr %6, align 4, !tbaa !21
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %241

119:                                              ; preds = %115
  %120 = load ptr, ptr %3, align 8, !tbaa !30
  %121 = getelementptr inbounds nuw %struct.Parser, ptr %120, i32 0, i32 25
  %122 = load ptr, ptr %121, align 8, !tbaa !197
  %123 = load i32, ptr %5, align 4, !tbaa !21
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.ShiftResult, ptr %122, i64 %124
  store ptr %125, ptr %12, align 8, !tbaa !311
  %126 = load ptr, ptr %3, align 8, !tbaa !30
  %127 = getelementptr inbounds nuw %struct.Parser, ptr %126, i32 0, i32 7
  %128 = load i32, ptr %127, align 4, !tbaa !207
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %127, align 4, !tbaa !207
  %130 = load ptr, ptr %3, align 8, !tbaa !30
  %131 = load ptr, ptr %12, align 8, !tbaa !311
  %132 = getelementptr inbounds nuw %struct.ShiftResult, ptr %131, i32 0, i32 0
  %133 = load ptr, ptr %132, align 8, !tbaa !308
  %134 = getelementptr inbounds nuw %struct.D_Shift, ptr %133, i32 0, i32 0
  %135 = load i16, ptr %134, align 8, !tbaa !312
  %136 = zext i16 %135 to i32
  %137 = load ptr, ptr %4, align 8, !tbaa !181
  %138 = getelementptr inbounds nuw %struct.Shift, ptr %137, i32 0, i32 0
  %139 = load ptr, ptr %138, align 8, !tbaa !182
  %140 = getelementptr inbounds nuw %struct.SNode, ptr %139, i32 0, i32 3
  %141 = load ptr, ptr %12, align 8, !tbaa !311
  %142 = getelementptr inbounds nuw %struct.ShiftResult, ptr %141, i32 0, i32 1
  %143 = getelementptr inbounds nuw %struct.d_loc_t, ptr %142, i32 0, i32 0
  %144 = load ptr, ptr %143, align 8, !tbaa !313
  %145 = load ptr, ptr %4, align 8, !tbaa !181
  %146 = getelementptr inbounds nuw %struct.Shift, ptr %145, i32 0, i32 0
  %147 = load ptr, ptr %146, align 8, !tbaa !182
  %148 = getelementptr inbounds nuw %struct.SNode, ptr %147, i32 0, i32 5
  %149 = load ptr, ptr %148, align 8, !tbaa !223
  %150 = load ptr, ptr %12, align 8, !tbaa !311
  %151 = getelementptr inbounds nuw %struct.ShiftResult, ptr %150, i32 0, i32 0
  %152 = load ptr, ptr %151, align 8, !tbaa !308
  %153 = call ptr @add_PNode(ptr noundef %130, i32 noundef signext %136, ptr noundef %140, ptr noundef %144, ptr noundef %149, ptr noundef null, ptr noundef null, ptr noundef %152)
  store ptr %153, ptr %10, align 8, !tbaa !3
  %154 = load ptr, ptr %10, align 8, !tbaa !3
  %155 = icmp ne ptr %154, null
  br i1 %155, label %156, label %237

156:                                              ; preds = %119
  %157 = getelementptr inbounds nuw %struct.d_loc_t, ptr %8, i32 0, i32 0
  %158 = load ptr, ptr %157, align 8, !tbaa !141
  %159 = icmp ne ptr %158, null
  br i1 %159, label %160, label %175

160:                                              ; preds = %156
  %161 = getelementptr inbounds nuw %struct.d_loc_t, ptr %8, i32 0, i32 0
  %162 = load ptr, ptr %161, align 8, !tbaa !141
  %163 = load ptr, ptr %12, align 8, !tbaa !311
  %164 = getelementptr inbounds nuw %struct.ShiftResult, ptr %163, i32 0, i32 1
  %165 = getelementptr inbounds nuw %struct.d_loc_t, ptr %164, i32 0, i32 0
  %166 = load ptr, ptr %165, align 8, !tbaa !313
  %167 = icmp ne ptr %162, %166
  br i1 %167, label %175, label %168

168:                                              ; preds = %160
  %169 = load ptr, ptr %9, align 8, !tbaa !67
  %170 = load ptr, ptr %10, align 8, !tbaa !3
  %171 = getelementptr inbounds nuw %struct.PNode, ptr %170, i32 0, i32 19
  %172 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %171, i32 0, i32 5
  %173 = load ptr, ptr %172, align 8, !tbaa !219
  %174 = icmp ne ptr %169, %173
  br i1 %174, label %175, label %230

175:                                              ; preds = %168, %160, %156
  %176 = load ptr, ptr %12, align 8, !tbaa !311
  %177 = getelementptr inbounds nuw %struct.ShiftResult, ptr %176, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %177, i64 32, i1 false), !tbaa.struct !144
  %178 = load ptr, ptr %10, align 8, !tbaa !3
  %179 = getelementptr inbounds nuw %struct.PNode, ptr %178, i32 0, i32 19
  %180 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %179, i32 0, i32 5
  %181 = load ptr, ptr %180, align 8, !tbaa !219
  store ptr %181, ptr %9, align 8, !tbaa !67
  %182 = load ptr, ptr %10, align 8, !tbaa !3
  %183 = getelementptr inbounds nuw %struct.PNode, ptr %182, i32 0, i32 19
  %184 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %183, i32 0, i32 5
  %185 = load ptr, ptr %184, align 8, !tbaa !219
  %186 = load ptr, ptr %3, align 8, !tbaa !30
  %187 = load ptr, ptr %10, align 8, !tbaa !3
  %188 = getelementptr inbounds nuw %struct.PNode, ptr %187, i32 0, i32 19
  %189 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %188, i32 0, i32 6
  call void %185(ptr noundef %186, ptr noundef %8, ptr noundef %189)
  %190 = load ptr, ptr %4, align 8, !tbaa !181
  %191 = getelementptr inbounds nuw %struct.Shift, ptr %190, i32 0, i32 0
  %192 = load ptr, ptr %191, align 8, !tbaa !182
  %193 = getelementptr inbounds nuw %struct.SNode, ptr %192, i32 0, i32 3
  %194 = getelementptr inbounds nuw %struct.d_loc_t, ptr %193, i32 0, i32 3
  %195 = load i32, ptr %194, align 4, !tbaa !314
  %196 = icmp sge i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %175
  %198 = load ptr, ptr %4, align 8, !tbaa !181
  %199 = getelementptr inbounds nuw %struct.Shift, ptr %198, i32 0, i32 0
  %200 = load ptr, ptr %199, align 8, !tbaa !182
  %201 = getelementptr inbounds nuw %struct.SNode, ptr %200, i32 0, i32 3
  %202 = getelementptr inbounds nuw %struct.d_loc_t, ptr %201, i32 0, i32 3
  %203 = load i32, ptr %202, align 4, !tbaa !314
  br label %211

204:                                              ; preds = %175
  %205 = load ptr, ptr %4, align 8, !tbaa !181
  %206 = getelementptr inbounds nuw %struct.Shift, ptr %205, i32 0, i32 0
  %207 = load ptr, ptr %206, align 8, !tbaa !182
  %208 = getelementptr inbounds nuw %struct.SNode, ptr %207, i32 0, i32 3
  %209 = getelementptr inbounds nuw %struct.d_loc_t, ptr %208, i32 0, i32 2
  %210 = load i32, ptr %209, align 8, !tbaa !315
  br label %211

211:                                              ; preds = %204, %197
  %212 = phi i32 [ %203, %197 ], [ %210, %204 ]
  %213 = getelementptr inbounds nuw %struct.d_loc_t, ptr %8, i32 0, i32 2
  store i32 %212, ptr %213, align 8, !tbaa !147
  %214 = load ptr, ptr %3, align 8, !tbaa !30
  %215 = load ptr, ptr %4, align 8, !tbaa !181
  %216 = getelementptr inbounds nuw %struct.Shift, ptr %215, i32 0, i32 0
  %217 = load ptr, ptr %216, align 8, !tbaa !182
  %218 = getelementptr inbounds nuw %struct.SNode, ptr %217, i32 0, i32 6
  %219 = getelementptr inbounds nuw %struct.VecZNode, ptr %218, i32 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !212
  %221 = getelementptr inbounds ptr, ptr %220, i64 0
  %222 = load ptr, ptr %221, align 8, !tbaa !188
  %223 = call ptr @find_ws_before(ptr noundef %214, ptr noundef %222)
  %224 = load ptr, ptr %10, align 8, !tbaa !3
  %225 = getelementptr inbounds nuw %struct.PNode, ptr %224, i32 0, i32 15
  store ptr %223, ptr %225, align 8, !tbaa !64
  %226 = getelementptr inbounds nuw %struct.d_loc_t, ptr %8, i32 0, i32 0
  %227 = load ptr, ptr %226, align 8, !tbaa !141
  %228 = load ptr, ptr %10, align 8, !tbaa !3
  %229 = getelementptr inbounds nuw %struct.PNode, ptr %228, i32 0, i32 16
  store ptr %227, ptr %229, align 8, !tbaa !65
  br label %230

230:                                              ; preds = %211, %168
  %231 = load ptr, ptr %3, align 8, !tbaa !30
  %232 = load ptr, ptr %10, align 8, !tbaa !3
  %233 = load ptr, ptr %4, align 8, !tbaa !181
  %234 = getelementptr inbounds nuw %struct.Shift, ptr %233, i32 0, i32 0
  %235 = load ptr, ptr %234, align 8, !tbaa !182
  %236 = call ptr @goto_PNode(ptr noundef %231, ptr noundef %8, ptr noundef %232, ptr noundef %235)
  br label %237

237:                                              ; preds = %230, %119
  br label %238

238:                                              ; preds = %237
  %239 = load i32, ptr %5, align 4, !tbaa !21
  %240 = add nsw i32 %239, 1
  store i32 %240, ptr %5, align 4, !tbaa !21
  br label %115, !llvm.loop !316

241:                                              ; preds = %115
  br label %242

242:                                              ; preds = %241
  %243 = load ptr, ptr %4, align 8, !tbaa !181
  %244 = getelementptr inbounds nuw %struct.Shift, ptr %243, i32 0, i32 0
  %245 = load ptr, ptr %244, align 8, !tbaa !182
  %246 = getelementptr inbounds nuw %struct.SNode, ptr %245, i32 0, i32 7
  %247 = load i32, ptr %246, align 8, !tbaa !145
  %248 = add i32 %247, -1
  store i32 %248, ptr %246, align 8, !tbaa !145
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %255, label %250

250:                                              ; preds = %242
  %251 = load ptr, ptr %3, align 8, !tbaa !30
  %252 = load ptr, ptr %4, align 8, !tbaa !181
  %253 = getelementptr inbounds nuw %struct.Shift, ptr %252, i32 0, i32 0
  %254 = load ptr, ptr %253, align 8, !tbaa !182
  call void @free_SNode(ptr noundef %251, ptr noundef %254)
  br label %255

255:                                              ; preds = %250, %242
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256
  %258 = load ptr, ptr %3, align 8, !tbaa !30
  %259 = getelementptr inbounds nuw %struct.Parser, ptr %258, i32 0, i32 19
  %260 = load ptr, ptr %259, align 8, !tbaa !178
  %261 = load ptr, ptr %4, align 8, !tbaa !181
  %262 = getelementptr inbounds nuw %struct.Shift, ptr %261, i32 0, i32 1
  store ptr %260, ptr %262, align 8, !tbaa !179
  %263 = load ptr, ptr %4, align 8, !tbaa !181
  %264 = load ptr, ptr %3, align 8, !tbaa !30
  %265 = getelementptr inbounds nuw %struct.Parser, ptr %264, i32 0, i32 19
  store ptr %263, ptr %265, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  ret void
}

; Function Attrs: nounwind
define internal ptr @new_SNode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !30
  store ptr %1, ptr %7, align 8, !tbaa !245
  store ptr %2, ptr %8, align 8, !tbaa !121
  store ptr %3, ptr %9, align 8, !tbaa !66
  store ptr %4, ptr %10, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #9
  %12 = load ptr, ptr %6, align 8, !tbaa !30
  %13 = getelementptr inbounds nuw %struct.Parser, ptr %12, i32 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !190
  store ptr %14, ptr %11, align 8, !tbaa !72
  %15 = load ptr, ptr %11, align 8, !tbaa !72
  %16 = icmp ne ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = call noalias ptr @malloc(i64 noundef 136) #10
  store ptr %18, ptr %11, align 8, !tbaa !72
  br label %25

19:                                               ; preds = %5
  %20 = load ptr, ptr %11, align 8, !tbaa !72
  %21 = getelementptr inbounds nuw %struct.SNode, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !191
  %23 = load ptr, ptr %6, align 8, !tbaa !30
  %24 = getelementptr inbounds nuw %struct.Parser, ptr %23, i32 0, i32 22
  store ptr %22, ptr %24, align 8, !tbaa !190
  br label %25

25:                                               ; preds = %19, %17
  %26 = load ptr, ptr %11, align 8, !tbaa !72
  %27 = getelementptr inbounds nuw %struct.SNode, ptr %26, i32 0, i32 4
  store i32 0, ptr %27, align 8, !tbaa !288
  br label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %11, align 8, !tbaa !72
  %30 = getelementptr inbounds nuw %struct.SNode, ptr %29, i32 0, i32 6
  %31 = getelementptr inbounds nuw %struct.VecZNode, ptr %30, i32 0, i32 0
  store i32 0, ptr %31, align 8, !tbaa !211
  %32 = load ptr, ptr %11, align 8, !tbaa !72
  %33 = getelementptr inbounds nuw %struct.SNode, ptr %32, i32 0, i32 6
  %34 = getelementptr inbounds nuw %struct.VecZNode, ptr %33, i32 0, i32 2
  store ptr null, ptr %34, align 8, !tbaa !212
  br label %35

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %11, align 8, !tbaa !72
  %38 = getelementptr inbounds nuw %struct.SNode, ptr %37, i32 0, i32 7
  store i32 0, ptr %38, align 8, !tbaa !145
  %39 = load ptr, ptr %11, align 8, !tbaa !72
  %40 = getelementptr inbounds nuw %struct.SNode, ptr %39, i32 0, i32 9
  store ptr null, ptr %40, align 8, !tbaa !191
  %41 = load ptr, ptr %6, align 8, !tbaa !30
  %42 = getelementptr inbounds nuw %struct.Parser, ptr %41, i32 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !209
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !209
  %45 = load ptr, ptr %7, align 8, !tbaa !245
  %46 = load ptr, ptr %11, align 8, !tbaa !72
  %47 = getelementptr inbounds nuw %struct.SNode, ptr %46, i32 0, i32 0
  store ptr %45, ptr %47, align 8, !tbaa !73
  %48 = load ptr, ptr %9, align 8, !tbaa !66
  %49 = load ptr, ptr %11, align 8, !tbaa !72
  %50 = getelementptr inbounds nuw %struct.SNode, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 8, !tbaa !78
  %51 = load ptr, ptr %10, align 8, !tbaa !67
  %52 = load ptr, ptr %11, align 8, !tbaa !72
  %53 = getelementptr inbounds nuw %struct.SNode, ptr %52, i32 0, i32 2
  store ptr %51, ptr %53, align 8, !tbaa !79
  %54 = load ptr, ptr %11, align 8, !tbaa !72
  %55 = getelementptr inbounds nuw %struct.SNode, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %8, align 8, !tbaa !121
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %55, ptr align 8 %56, i64 32, i1 false), !tbaa.struct !144
  %57 = load ptr, ptr %6, align 8, !tbaa !30
  %58 = load ptr, ptr %11, align 8, !tbaa !72
  call void @insert_SNode(ptr noundef %57, ptr noundef %58)
  %59 = load ptr, ptr %11, align 8, !tbaa !72
  %60 = getelementptr inbounds nuw %struct.SNode, ptr %59, i32 0, i32 0
  %61 = load ptr, ptr %60, align 8, !tbaa !73
  %62 = getelementptr inbounds nuw %struct.D_State, ptr %61, i32 0, i32 9
  %63 = load i8, ptr %62, align 1, !tbaa !317
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %122

65:                                               ; preds = %36
  %66 = load ptr, ptr %6, align 8, !tbaa !30
  %67 = getelementptr inbounds nuw %struct.Parser, ptr %66, i32 0, i32 16
  %68 = load ptr, ptr %67, align 8, !tbaa !143
  %69 = icmp ne ptr %68, null
  br i1 %69, label %81, label %70

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %11, align 8, !tbaa !72
  %73 = getelementptr inbounds nuw %struct.SNode, ptr %72, i32 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !145
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 8, !tbaa !145
  br label %76

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76
  %78 = load ptr, ptr %11, align 8, !tbaa !72
  %79 = load ptr, ptr %6, align 8, !tbaa !30
  %80 = getelementptr inbounds nuw %struct.Parser, ptr %79, i32 0, i32 16
  store ptr %78, ptr %80, align 8, !tbaa !143
  br label %121

81:                                               ; preds = %65
  %82 = load ptr, ptr %11, align 8, !tbaa !72
  %83 = getelementptr inbounds nuw %struct.SNode, ptr %82, i32 0, i32 3
  %84 = getelementptr inbounds nuw %struct.d_loc_t, ptr %83, i32 0, i32 0
  %85 = load ptr, ptr %84, align 8, !tbaa !224
  %86 = load ptr, ptr %6, align 8, !tbaa !30
  %87 = getelementptr inbounds nuw %struct.Parser, ptr %86, i32 0, i32 16
  %88 = load ptr, ptr %87, align 8, !tbaa !143
  %89 = getelementptr inbounds nuw %struct.SNode, ptr %88, i32 0, i32 3
  %90 = getelementptr inbounds nuw %struct.d_loc_t, ptr %89, i32 0, i32 0
  %91 = load ptr, ptr %90, align 8, !tbaa !224
  %92 = icmp ugt ptr %85, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93
  %95 = load ptr, ptr %11, align 8, !tbaa !72
  %96 = getelementptr inbounds nuw %struct.SNode, ptr %95, i32 0, i32 7
  %97 = load i32, ptr %96, align 8, !tbaa !145
  %98 = add i32 %97, 1
  store i32 %98, ptr %96, align 8, !tbaa !145
  br label %99

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  %102 = load ptr, ptr %6, align 8, !tbaa !30
  %103 = getelementptr inbounds nuw %struct.Parser, ptr %102, i32 0, i32 16
  %104 = load ptr, ptr %103, align 8, !tbaa !143
  %105 = getelementptr inbounds nuw %struct.SNode, ptr %104, i32 0, i32 7
  %106 = load i32, ptr %105, align 8, !tbaa !145
  %107 = add i32 %106, -1
  store i32 %107, ptr %105, align 8, !tbaa !145
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %101
  %110 = load ptr, ptr %6, align 8, !tbaa !30
  %111 = load ptr, ptr %6, align 8, !tbaa !30
  %112 = getelementptr inbounds nuw %struct.Parser, ptr %111, i32 0, i32 16
  %113 = load ptr, ptr %112, align 8, !tbaa !143
  call void @free_SNode(ptr noundef %110, ptr noundef %113)
  br label %114

114:                                              ; preds = %109, %101
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115
  %117 = load ptr, ptr %11, align 8, !tbaa !72
  %118 = load ptr, ptr %6, align 8, !tbaa !30
  %119 = getelementptr inbounds nuw %struct.Parser, ptr %118, i32 0, i32 16
  store ptr %117, ptr %119, align 8, !tbaa !143
  br label %120

120:                                              ; preds = %116, %81
  br label %121

121:                                              ; preds = %120, %77
  br label %122

122:                                              ; preds = %121, %36
  %123 = load ptr, ptr %11, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #9
  ret ptr %123
}

; Function Attrs: nounwind
define internal void @add_Shift(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  %8 = load ptr, ptr %3, align 8, !tbaa !30
  %9 = getelementptr inbounds nuw %struct.Parser, ptr %8, i32 0, i32 14
  store ptr %9, ptr %6, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  %10 = load ptr, ptr %3, align 8, !tbaa !30
  %11 = getelementptr inbounds nuw %struct.Parser, ptr %10, i32 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !178
  store ptr %12, ptr %7, align 8, !tbaa !181
  %13 = load ptr, ptr %7, align 8, !tbaa !181
  %14 = icmp ne ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call noalias ptr @malloc(i64 noundef 16) #10
  store ptr %16, ptr %7, align 8, !tbaa !181
  br label %23

17:                                               ; preds = %2
  %18 = load ptr, ptr %7, align 8, !tbaa !181
  %19 = getelementptr inbounds nuw %struct.Shift, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !179
  %21 = load ptr, ptr %3, align 8, !tbaa !30
  %22 = getelementptr inbounds nuw %struct.Parser, ptr %21, i32 0, i32 19
  store ptr %20, ptr %22, align 8, !tbaa !178
  br label %23

23:                                               ; preds = %17, %15
  %24 = load ptr, ptr %4, align 8, !tbaa !72
  %25 = load ptr, ptr %7, align 8, !tbaa !181
  %26 = getelementptr inbounds nuw %struct.Shift, ptr %25, i32 0, i32 0
  store ptr %24, ptr %26, align 8, !tbaa !182
  br label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !181
  %29 = getelementptr inbounds nuw %struct.Shift, ptr %28, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8, !tbaa !182
  %31 = getelementptr inbounds nuw %struct.SNode, ptr %30, i32 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !145
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8, !tbaa !145
  br label %34

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr %3, align 8, !tbaa !30
  %37 = getelementptr inbounds nuw %struct.Parser, ptr %36, i32 0, i32 14
  %38 = load ptr, ptr %37, align 8, !tbaa !177
  store ptr %38, ptr %5, align 8, !tbaa !181
  br label %39

39:                                               ; preds = %56, %35
  %40 = load ptr, ptr %5, align 8, !tbaa !181
  %41 = icmp ne ptr %40, null
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load ptr, ptr %4, align 8, !tbaa !72
  %44 = getelementptr inbounds nuw %struct.SNode, ptr %43, i32 0, i32 3
  %45 = getelementptr inbounds nuw %struct.d_loc_t, ptr %44, i32 0, i32 0
  %46 = load ptr, ptr %45, align 8, !tbaa !224
  %47 = load ptr, ptr %5, align 8, !tbaa !181
  %48 = getelementptr inbounds nuw %struct.Shift, ptr %47, i32 0, i32 0
  %49 = load ptr, ptr %48, align 8, !tbaa !182
  %50 = getelementptr inbounds nuw %struct.SNode, ptr %49, i32 0, i32 3
  %51 = getelementptr inbounds nuw %struct.d_loc_t, ptr %50, i32 0, i32 0
  %52 = load ptr, ptr %51, align 8, !tbaa !224
  %53 = icmp ule ptr %46, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %62

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %5, align 8, !tbaa !181
  %58 = getelementptr inbounds nuw %struct.Shift, ptr %57, i32 0, i32 1
  store ptr %58, ptr %6, align 8, !tbaa !299
  %59 = load ptr, ptr %5, align 8, !tbaa !181
  %60 = getelementptr inbounds nuw %struct.Shift, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !179
  store ptr %61, ptr %5, align 8, !tbaa !181
  br label %39, !llvm.loop !318

62:                                               ; preds = %54, %39
  %63 = load ptr, ptr %6, align 8, !tbaa !299
  %64 = load ptr, ptr %63, align 8, !tbaa !181
  %65 = load ptr, ptr %7, align 8, !tbaa !181
  %66 = getelementptr inbounds nuw %struct.Shift, ptr %65, i32 0, i32 1
  store ptr %64, ptr %66, align 8, !tbaa !179
  %67 = load ptr, ptr %7, align 8, !tbaa !181
  %68 = load ptr, ptr %6, align 8, !tbaa !299
  store ptr %67, ptr %68, align 8, !tbaa !181
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret void
}

; Function Attrs: nounwind
define internal ptr @add_Reduction(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !30
  store ptr %1, ptr %7, align 8, !tbaa !188
  store ptr %2, ptr %8, align 8, !tbaa !72
  store ptr %3, ptr %9, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #9
  %16 = load ptr, ptr %6, align 8, !tbaa !30
  %17 = getelementptr inbounds nuw %struct.Parser, ptr %16, i32 0, i32 13
  store ptr %17, ptr %11, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #9
  %18 = load ptr, ptr %7, align 8, !tbaa !188
  %19 = call signext i32 @znode_depth(ptr noundef %18)
  store i32 %19, ptr %12, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #9
  %20 = load ptr, ptr %6, align 8, !tbaa !30
  %21 = getelementptr inbounds nuw %struct.Parser, ptr %20, i32 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !170
  store ptr %22, ptr %10, align 8, !tbaa !174
  br label %23

23:                                               ; preds = %93, %4
  %24 = load ptr, ptr %10, align 8, !tbaa !174
  %25 = icmp ne ptr %24, null
  br i1 %25, label %26, label %99

26:                                               ; preds = %23
  %27 = load ptr, ptr %8, align 8, !tbaa !72
  %28 = getelementptr inbounds nuw %struct.SNode, ptr %27, i32 0, i32 3
  %29 = getelementptr inbounds nuw %struct.d_loc_t, ptr %28, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8, !tbaa !224
  %31 = load ptr, ptr %10, align 8, !tbaa !174
  %32 = getelementptr inbounds nuw %struct.Reduction, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !175
  %34 = getelementptr inbounds nuw %struct.SNode, ptr %33, i32 0, i32 3
  %35 = getelementptr inbounds nuw %struct.d_loc_t, ptr %34, i32 0, i32 0
  %36 = load ptr, ptr %35, align 8, !tbaa !224
  %37 = icmp ult ptr %30, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %99

39:                                               ; preds = %26
  %40 = load ptr, ptr %10, align 8, !tbaa !174
  %41 = getelementptr inbounds nuw %struct.Reduction, ptr %40, i32 0, i32 0
  %42 = load ptr, ptr %41, align 8, !tbaa !269
  %43 = call signext i32 @znode_depth(ptr noundef %42)
  store i32 %43, ptr %13, align 4, !tbaa !21
  %44 = load ptr, ptr %8, align 8, !tbaa !72
  %45 = getelementptr inbounds nuw %struct.SNode, ptr %44, i32 0, i32 3
  %46 = getelementptr inbounds nuw %struct.d_loc_t, ptr %45, i32 0, i32 0
  %47 = load ptr, ptr %46, align 8, !tbaa !224
  %48 = load ptr, ptr %10, align 8, !tbaa !174
  %49 = getelementptr inbounds nuw %struct.Reduction, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !175
  %51 = getelementptr inbounds nuw %struct.SNode, ptr %50, i32 0, i32 3
  %52 = getelementptr inbounds nuw %struct.d_loc_t, ptr %51, i32 0, i32 0
  %53 = load ptr, ptr %52, align 8, !tbaa !224
  %54 = icmp eq ptr %47, %53
  br i1 %54, label %55, label %92

55:                                               ; preds = %39
  %56 = load i32, ptr %12, align 4, !tbaa !21
  %57 = load i32, ptr %13, align 4, !tbaa !21
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %55
  %60 = load i32, ptr %12, align 4, !tbaa !21
  %61 = load i32, ptr %13, align 4, !tbaa !21
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %86, %63
  %65 = load ptr, ptr %10, align 8, !tbaa !174
  %66 = icmp ne ptr %65, null
  br i1 %66, label %67, label %90

67:                                               ; preds = %64
  %68 = load ptr, ptr %8, align 8, !tbaa !72
  %69 = load ptr, ptr %10, align 8, !tbaa !174
  %70 = getelementptr inbounds nuw %struct.Reduction, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !175
  %72 = icmp eq ptr %68, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load ptr, ptr %7, align 8, !tbaa !188
  %75 = load ptr, ptr %10, align 8, !tbaa !174
  %76 = getelementptr inbounds nuw %struct.Reduction, ptr %75, i32 0, i32 0
  %77 = load ptr, ptr %76, align 8, !tbaa !269
  %78 = icmp eq ptr %74, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load ptr, ptr %9, align 8, !tbaa !195
  %81 = load ptr, ptr %10, align 8, !tbaa !174
  %82 = getelementptr inbounds nuw %struct.Reduction, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !268
  %84 = icmp eq ptr %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store ptr null, ptr %5, align 8
  store i32 1, ptr %14, align 4
  br label %139

86:                                               ; preds = %79, %73, %67
  %87 = load ptr, ptr %10, align 8, !tbaa !174
  %88 = getelementptr inbounds nuw %struct.Reduction, ptr %87, i32 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !172
  store ptr %89, ptr %10, align 8, !tbaa !174
  br label %64, !llvm.loop !321

90:                                               ; preds = %64
  br label %91

91:                                               ; preds = %90, %59
  br label %99

92:                                               ; preds = %55, %39
  br label %93

93:                                               ; preds = %92
  %94 = load ptr, ptr %10, align 8, !tbaa !174
  %95 = getelementptr inbounds nuw %struct.Reduction, ptr %94, i32 0, i32 5
  store ptr %95, ptr %11, align 8, !tbaa !319
  %96 = load ptr, ptr %10, align 8, !tbaa !174
  %97 = getelementptr inbounds nuw %struct.Reduction, ptr %96, i32 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !172
  store ptr %98, ptr %10, align 8, !tbaa !174
  br label %23, !llvm.loop !322

99:                                               ; preds = %91, %38, %23
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #9
  %100 = load ptr, ptr %6, align 8, !tbaa !30
  %101 = getelementptr inbounds nuw %struct.Parser, ptr %100, i32 0, i32 18
  %102 = load ptr, ptr %101, align 8, !tbaa !171
  store ptr %102, ptr %15, align 8, !tbaa !174
  %103 = load ptr, ptr %15, align 8, !tbaa !174
  %104 = icmp ne ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %99
  %106 = call noalias ptr @malloc(i64 noundef 48) #10
  store ptr %106, ptr %15, align 8, !tbaa !174
  br label %113

107:                                              ; preds = %99
  %108 = load ptr, ptr %15, align 8, !tbaa !174
  %109 = getelementptr inbounds nuw %struct.Reduction, ptr %108, i32 0, i32 5
  %110 = load ptr, ptr %109, align 8, !tbaa !172
  %111 = load ptr, ptr %6, align 8, !tbaa !30
  %112 = getelementptr inbounds nuw %struct.Parser, ptr %111, i32 0, i32 18
  store ptr %110, ptr %112, align 8, !tbaa !171
  br label %113

113:                                              ; preds = %107, %105
  %114 = load ptr, ptr %7, align 8, !tbaa !188
  %115 = load ptr, ptr %15, align 8, !tbaa !174
  %116 = getelementptr inbounds nuw %struct.Reduction, ptr %115, i32 0, i32 0
  store ptr %114, ptr %116, align 8, !tbaa !269
  %117 = load ptr, ptr %8, align 8, !tbaa !72
  %118 = load ptr, ptr %15, align 8, !tbaa !174
  %119 = getelementptr inbounds nuw %struct.Reduction, ptr %118, i32 0, i32 1
  store ptr %117, ptr %119, align 8, !tbaa !175
  %120 = load ptr, ptr %15, align 8, !tbaa !174
  %121 = getelementptr inbounds nuw %struct.Reduction, ptr %120, i32 0, i32 3
  store ptr null, ptr %121, align 8, !tbaa !274
  br label %122

122:                                              ; preds = %113
  %123 = load ptr, ptr %8, align 8, !tbaa !72
  %124 = getelementptr inbounds nuw %struct.SNode, ptr %123, i32 0, i32 7
  %125 = load i32, ptr %124, align 8, !tbaa !145
  %126 = add i32 %125, 1
  store i32 %126, ptr %124, align 8, !tbaa !145
  br label %127

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127
  %129 = load ptr, ptr %9, align 8, !tbaa !195
  %130 = load ptr, ptr %15, align 8, !tbaa !174
  %131 = getelementptr inbounds nuw %struct.Reduction, ptr %130, i32 0, i32 2
  store ptr %129, ptr %131, align 8, !tbaa !268
  %132 = load ptr, ptr %11, align 8, !tbaa !319
  %133 = load ptr, ptr %132, align 8, !tbaa !174
  %134 = load ptr, ptr %15, align 8, !tbaa !174
  %135 = getelementptr inbounds nuw %struct.Reduction, ptr %134, i32 0, i32 5
  store ptr %133, ptr %135, align 8, !tbaa !172
  %136 = load ptr, ptr %15, align 8, !tbaa !174
  %137 = load ptr, ptr %11, align 8, !tbaa !319
  store ptr %136, ptr %137, align 8, !tbaa !174
  %138 = load ptr, ptr %15, align 8, !tbaa !174
  store ptr %138, ptr %5, align 8
  store i32 1, ptr %14, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #9
  br label %139

139:                                              ; preds = %128, %85
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  %140 = load ptr, ptr %5, align 8
  ret ptr %140
}

; Function Attrs: nounwind
define internal void @insert_SNode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !72
  %5 = load ptr, ptr %3, align 8, !tbaa !30
  %6 = load ptr, ptr %4, align 8, !tbaa !72
  call void @insert_SNode_internal(ptr noundef %5, ptr noundef %6)
  br label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !tbaa !72
  %9 = getelementptr inbounds nuw %struct.SNode, ptr %8, i32 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !145
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !145
  br label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !tbaa !30
  %14 = getelementptr inbounds nuw %struct.Parser, ptr %13, i32 0, i32 12
  %15 = getelementptr inbounds nuw %struct.SNodeHash, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !236
  %17 = load ptr, ptr %4, align 8, !tbaa !72
  %18 = getelementptr inbounds nuw %struct.SNode, ptr %17, i32 0, i32 9
  store ptr %16, ptr %18, align 8, !tbaa !191
  %19 = load ptr, ptr %4, align 8, !tbaa !72
  %20 = load ptr, ptr %3, align 8, !tbaa !30
  %21 = getelementptr inbounds nuw %struct.Parser, ptr %20, i32 0, i32 12
  %22 = getelementptr inbounds nuw %struct.SNodeHash, ptr %21, i32 0, i32 4
  store ptr %19, ptr %22, align 8, !tbaa !236
  ret void
}

; Function Attrs: nounwind
define internal signext i32 @znode_depth(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  store i32 0, ptr %5, align 4, !tbaa !21
  %7 = load ptr, ptr %3, align 8, !tbaa !188
  %8 = icmp ne ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 2147483647, ptr %2, align 4
  store i32 1, ptr %6, align 4
  br label %51

10:                                               ; preds = %1
  store i32 0, ptr %4, align 4, !tbaa !21
  br label %11

11:                                               ; preds = %46, %10
  %12 = load i32, ptr %4, align 4, !tbaa !21
  %13 = load ptr, ptr %3, align 8, !tbaa !188
  %14 = getelementptr inbounds nuw %struct.ZNode, ptr %13, i32 0, i32 1
  %15 = getelementptr inbounds nuw %struct.VecSNode, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8, !tbaa !266
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %11
  %19 = load i32, ptr %5, align 4, !tbaa !21
  %20 = load ptr, ptr %3, align 8, !tbaa !188
  %21 = getelementptr inbounds nuw %struct.ZNode, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds nuw %struct.VecSNode, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !267
  %24 = load i32, ptr %4, align 4, !tbaa !21
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = getelementptr inbounds nuw %struct.SNode, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !288
  %30 = icmp ult i32 %19, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %18
  %32 = load ptr, ptr %3, align 8, !tbaa !188
  %33 = getelementptr inbounds nuw %struct.ZNode, ptr %32, i32 0, i32 1
  %34 = getelementptr inbounds nuw %struct.VecSNode, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !267
  %36 = load i32, ptr %4, align 4, !tbaa !21
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = getelementptr inbounds nuw %struct.SNode, ptr %39, i32 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !288
  br label %44

42:                                               ; preds = %18
  %43 = load i32, ptr %5, align 4, !tbaa !21
  br label %44

44:                                               ; preds = %42, %31
  %45 = phi i32 [ %41, %31 ], [ %43, %42 ]
  store i32 %45, ptr %5, align 4, !tbaa !21
  br label %46

46:                                               ; preds = %44
  %47 = load i32, ptr %4, align 4, !tbaa !21
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %4, align 4, !tbaa !21
  br label %11, !llvm.loop !323

49:                                               ; preds = %11
  %50 = load i32, ptr %5, align 4, !tbaa !21
  store i32 %50, ptr %2, align 4
  store i32 1, ptr %6, align 4
  br label %51

51:                                               ; preds = %49, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  %52 = load i32, ptr %2, align 4
  ret i32 %52
}

; Function Attrs: nounwind
define internal signext i32 @PNode_equal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !195
  store ptr %2, ptr %8, align 8, !tbaa !67
  store ptr %3, ptr %9, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #9
  %13 = load ptr, ptr %6, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.PNode, ptr %13, i32 0, i32 7
  %15 = getelementptr inbounds nuw %struct.VecPNode, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8, !tbaa !20
  store i32 %16, ptr %11, align 4, !tbaa !21
  %17 = load ptr, ptr %9, align 8, !tbaa !260
  %18 = icmp ne ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load ptr, ptr %9, align 8, !tbaa !260
  %21 = load ptr, ptr %6, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.PNode, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !324
  %24 = icmp eq ptr %20, %23
  %25 = zext i1 %24 to i32
  store i32 %25, ptr %5, align 4
  store i32 1, ptr %12, align 4
  br label %84

26:                                               ; preds = %4
  %27 = load ptr, ptr %7, align 8, !tbaa !195
  %28 = load ptr, ptr %6, align 8, !tbaa !3
  %29 = getelementptr inbounds nuw %struct.PNode, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !114
  %31 = icmp ne ptr %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, ptr %5, align 4
  store i32 1, ptr %12, align 4
  br label %84

33:                                               ; preds = %26
  %34 = load ptr, ptr %8, align 8, !tbaa !67
  %35 = icmp ne ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %11, align 4, !tbaa !21
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32 1, ptr %5, align 4
  store i32 1, ptr %12, align 4
  br label %84

40:                                               ; preds = %36, %33
  %41 = load i32, ptr %11, align 4, !tbaa !21
  %42 = load ptr, ptr %8, align 8, !tbaa !67
  %43 = getelementptr inbounds nuw %struct.VecZNode, ptr %42, i32 0, i32 0
  %44 = load i32, ptr %43, align 8, !tbaa !261
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %40
  store i32 0, ptr %10, align 4, !tbaa !21
  br label %47

47:                                               ; preds = %79, %46
  %48 = load i32, ptr %10, align 4, !tbaa !21
  %49 = load i32, ptr %11, align 4, !tbaa !21
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %47
  %52 = load ptr, ptr %6, align 8, !tbaa !3
  %53 = getelementptr inbounds nuw %struct.PNode, ptr %52, i32 0, i32 7
  %54 = getelementptr inbounds nuw %struct.VecPNode, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  %56 = load i32, ptr %10, align 4, !tbaa !21
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.PNode, ptr %59, i32 0, i32 14
  %61 = load ptr, ptr %60, align 8, !tbaa !165
  %62 = load ptr, ptr %8, align 8, !tbaa !67
  %63 = getelementptr inbounds nuw %struct.VecZNode, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !262
  %65 = load i32, ptr %11, align 4, !tbaa !21
  %66 = load i32, ptr %10, align 4, !tbaa !21
  %67 = sub nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %64, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !188
  %72 = getelementptr inbounds nuw %struct.ZNode, ptr %71, i32 0, i32 0
  %73 = load ptr, ptr %72, align 8, !tbaa !213
  %74 = getelementptr inbounds nuw %struct.PNode, ptr %73, i32 0, i32 14
  %75 = load ptr, ptr %74, align 8, !tbaa !165
  %76 = icmp ne ptr %61, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %51
  store i32 0, ptr %5, align 4
  store i32 1, ptr %12, align 4
  br label %84

78:                                               ; preds = %51
  br label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %10, align 4, !tbaa !21
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %10, align 4, !tbaa !21
  br label %47, !llvm.loop !325

82:                                               ; preds = %47
  store i32 1, ptr %5, align 4
  store i32 1, ptr %12, align 4
  br label %84

83:                                               ; preds = %40
  store i32 0, ptr %5, align 4
  store i32 1, ptr %12, align 4
  br label %84

84:                                               ; preds = %83, %82, %77, %39, %32, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #9
  %85 = load i32, ptr %5, align 4
  ret i32 %85
}

; Function Attrs: nounwind
define internal ptr @make_PNode(ptr noundef %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca ptr, align 8
  %23 = alloca i32, align 4
  %24 = alloca ptr, align 8
  store ptr %0, ptr %10, align 8, !tbaa !30
  store i32 %1, ptr %11, align 4, !tbaa !21
  store ptr %2, ptr %12, align 8, !tbaa !121
  store ptr %3, ptr %13, align 8, !tbaa !27
  store ptr %4, ptr %14, align 8, !tbaa !3
  store ptr %5, ptr %15, align 8, !tbaa !195
  store ptr %6, ptr %16, align 8, !tbaa !67
  store ptr %7, ptr %17, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #9
  %25 = load ptr, ptr %10, align 8, !tbaa !30
  %26 = getelementptr inbounds nuw %struct.Parser, ptr %25, i32 0, i32 0
  %27 = getelementptr inbounds nuw %struct.D_Parser, ptr %26, i32 0, i32 8
  %28 = load i32, ptr %27, align 4, !tbaa !126
  %29 = sext i32 %28 to i64
  %30 = add i64 232, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, ptr %19, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %20) #9
  %32 = load ptr, ptr %10, align 8, !tbaa !30
  %33 = getelementptr inbounds nuw %struct.Parser, ptr %32, i32 0, i32 21
  %34 = load ptr, ptr %33, align 8, !tbaa !166
  store ptr %34, ptr %20, align 8, !tbaa !3
  %35 = load ptr, ptr %20, align 8, !tbaa !3
  %36 = icmp ne ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %8
  %38 = load i32, ptr %19, align 4, !tbaa !21
  %39 = sext i32 %38 to i64
  %40 = call noalias ptr @malloc(i64 noundef %39) #10
  store ptr %40, ptr %20, align 8, !tbaa !3
  br label %47

41:                                               ; preds = %8
  %42 = load ptr, ptr %20, align 8, !tbaa !3
  %43 = getelementptr inbounds nuw %struct.PNode, ptr %42, i32 0, i32 11
  %44 = load ptr, ptr %43, align 8, !tbaa !167
  %45 = load ptr, ptr %10, align 8, !tbaa !30
  %46 = getelementptr inbounds nuw %struct.Parser, ptr %45, i32 0, i32 21
  store ptr %44, ptr %46, align 8, !tbaa !166
  br label %47

47:                                               ; preds = %41, %37
  %48 = load ptr, ptr %10, align 8, !tbaa !30
  %49 = getelementptr inbounds nuw %struct.Parser, ptr %48, i32 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !326
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %49, align 4, !tbaa !326
  %52 = load ptr, ptr %20, align 8, !tbaa !3
  %53 = load i32, ptr %19, align 4, !tbaa !21
  %54 = sext i32 %53 to i64
  call void @llvm.memset.p0.i64(ptr align 8 %52, i8 0, i64 %54, i1 false)
  %55 = load i32, ptr %11, align 4, !tbaa !21
  %56 = load ptr, ptr %20, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.PNode, ptr %56, i32 0, i32 19
  %58 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %57, i32 0, i32 0
  store i32 %55, ptr %58, align 8, !tbaa !54
  %59 = load ptr, ptr %20, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.PNode, ptr %59, i32 0, i32 19
  %61 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %12, align 8, !tbaa !121
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %61, ptr align 8 %62, i64 32, i1 false), !tbaa.struct !144
  %63 = load ptr, ptr %15, align 8, !tbaa !195
  %64 = icmp ne ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %47
  %66 = load ptr, ptr %16, align 8, !tbaa !67
  %67 = icmp ne ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %65, %47
  %69 = load ptr, ptr %13, align 8, !tbaa !27
  %70 = load ptr, ptr %20, align 8, !tbaa !3
  %71 = getelementptr inbounds nuw %struct.PNode, ptr %70, i32 0, i32 19
  %72 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %71, i32 0, i32 2
  store ptr %69, ptr %72, align 8, !tbaa !222
  %73 = load ptr, ptr %13, align 8, !tbaa !27
  %74 = load ptr, ptr %20, align 8, !tbaa !3
  %75 = getelementptr inbounds nuw %struct.PNode, ptr %74, i32 0, i32 15
  store ptr %73, ptr %75, align 8, !tbaa !64
  br label %108

76:                                               ; preds = %65
  %77 = load ptr, ptr %14, align 8, !tbaa !3
  %78 = getelementptr inbounds nuw %struct.PNode, ptr %77, i32 0, i32 19
  %79 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !222
  %81 = load ptr, ptr %20, align 8, !tbaa !3
  %82 = getelementptr inbounds nuw %struct.PNode, ptr %81, i32 0, i32 19
  %83 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %82, i32 0, i32 2
  store ptr %80, ptr %83, align 8, !tbaa !222
  %84 = load ptr, ptr %10, align 8, !tbaa !30
  %85 = load ptr, ptr %16, align 8, !tbaa !67
  %86 = getelementptr inbounds nuw %struct.VecZNode, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !262
  %88 = load ptr, ptr %16, align 8, !tbaa !67
  %89 = getelementptr inbounds nuw %struct.VecZNode, ptr %88, i32 0, i32 0
  %90 = load i32, ptr %89, align 8, !tbaa !261
  %91 = sub i32 %90, 1
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds nuw ptr, ptr %87, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !188
  %95 = getelementptr inbounds nuw %struct.ZNode, ptr %94, i32 0, i32 1
  %96 = getelementptr inbounds nuw %struct.VecSNode, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !267
  %98 = getelementptr inbounds ptr, ptr %97, i64 0
  %99 = load ptr, ptr %98, align 8, !tbaa !72
  %100 = getelementptr inbounds nuw %struct.SNode, ptr %99, i32 0, i32 6
  %101 = getelementptr inbounds nuw %struct.VecZNode, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !212
  %103 = getelementptr inbounds ptr, ptr %102, i64 0
  %104 = load ptr, ptr %103, align 8, !tbaa !188
  %105 = call ptr @find_ws_before(ptr noundef %84, ptr noundef %104)
  %106 = load ptr, ptr %20, align 8, !tbaa !3
  %107 = getelementptr inbounds nuw %struct.PNode, ptr %106, i32 0, i32 15
  store ptr %105, ptr %107, align 8, !tbaa !64
  br label %108

108:                                              ; preds = %76, %68
  %109 = load ptr, ptr %13, align 8, !tbaa !27
  %110 = load ptr, ptr %20, align 8, !tbaa !3
  %111 = getelementptr inbounds nuw %struct.PNode, ptr %110, i32 0, i32 19
  %112 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %111, i32 0, i32 3
  store ptr %109, ptr %112, align 8, !tbaa !26
  %113 = load ptr, ptr %17, align 8, !tbaa !260
  %114 = load ptr, ptr %20, align 8, !tbaa !3
  %115 = getelementptr inbounds nuw %struct.PNode, ptr %114, i32 0, i32 5
  store ptr %113, ptr %115, align 8, !tbaa !324
  %116 = load ptr, ptr %15, align 8, !tbaa !195
  %117 = load ptr, ptr %20, align 8, !tbaa !3
  %118 = getelementptr inbounds nuw %struct.PNode, ptr %117, i32 0, i32 4
  store ptr %116, ptr %118, align 8, !tbaa !114
  %119 = load ptr, ptr %14, align 8, !tbaa !3
  %120 = getelementptr inbounds nuw %struct.PNode, ptr %119, i32 0, i32 19
  %121 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %120, i32 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !221
  %123 = load ptr, ptr %20, align 8, !tbaa !3
  %124 = getelementptr inbounds nuw %struct.PNode, ptr %123, i32 0, i32 19
  %125 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %124, i32 0, i32 4
  store ptr %122, ptr %125, align 8, !tbaa !221
  %126 = load ptr, ptr %20, align 8, !tbaa !3
  %127 = getelementptr inbounds nuw %struct.PNode, ptr %126, i32 0, i32 19
  %128 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %127, i32 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !221
  %130 = load ptr, ptr %20, align 8, !tbaa !3
  %131 = getelementptr inbounds nuw %struct.PNode, ptr %130, i32 0, i32 17
  store ptr %129, ptr %131, align 8, !tbaa !91
  %132 = load ptr, ptr %14, align 8, !tbaa !3
  %133 = getelementptr inbounds nuw %struct.PNode, ptr %132, i32 0, i32 19
  %134 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %133, i32 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !220
  %136 = load ptr, ptr %20, align 8, !tbaa !3
  %137 = getelementptr inbounds nuw %struct.PNode, ptr %136, i32 0, i32 19
  %138 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %137, i32 0, i32 6
  store ptr %135, ptr %138, align 8, !tbaa !220
  %139 = load ptr, ptr %20, align 8, !tbaa !3
  %140 = getelementptr inbounds nuw %struct.PNode, ptr %139, i32 0, i32 19
  %141 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %140, i32 0, i32 6
  %142 = load ptr, ptr %141, align 8, !tbaa !220
  %143 = load ptr, ptr %20, align 8, !tbaa !3
  %144 = getelementptr inbounds nuw %struct.PNode, ptr %143, i32 0, i32 18
  store ptr %142, ptr %144, align 8, !tbaa !92
  %145 = load ptr, ptr %14, align 8, !tbaa !3
  %146 = getelementptr inbounds nuw %struct.PNode, ptr %145, i32 0, i32 19
  %147 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %146, i32 0, i32 5
  %148 = load ptr, ptr %147, align 8, !tbaa !219
  %149 = load ptr, ptr %20, align 8, !tbaa !3
  %150 = getelementptr inbounds nuw %struct.PNode, ptr %149, i32 0, i32 19
  %151 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %150, i32 0, i32 5
  store ptr %148, ptr %151, align 8, !tbaa !219
  %152 = load ptr, ptr %20, align 8, !tbaa !3
  %153 = load ptr, ptr %20, align 8, !tbaa !3
  %154 = getelementptr inbounds nuw %struct.PNode, ptr %153, i32 0, i32 14
  store ptr %152, ptr %154, align 8, !tbaa !165
  %155 = load ptr, ptr %13, align 8, !tbaa !27
  %156 = load ptr, ptr %20, align 8, !tbaa !3
  %157 = getelementptr inbounds nuw %struct.PNode, ptr %156, i32 0, i32 16
  store ptr %155, ptr %157, align 8, !tbaa !65
  %158 = load ptr, ptr %17, align 8, !tbaa !260
  %159 = icmp ne ptr %158, null
  br i1 %159, label %160, label %198

160:                                              ; preds = %108
  %161 = load ptr, ptr %17, align 8, !tbaa !260
  %162 = getelementptr inbounds nuw %struct.D_Shift, ptr %161, i32 0, i32 2
  %163 = load i8, ptr %162, align 1, !tbaa !327
  %164 = zext i8 %163 to i32
  %165 = load ptr, ptr %20, align 8, !tbaa !3
  %166 = getelementptr inbounds nuw %struct.PNode, ptr %165, i32 0, i32 2
  store i32 %164, ptr %166, align 8, !tbaa !277
  %167 = load ptr, ptr %17, align 8, !tbaa !260
  %168 = getelementptr inbounds nuw %struct.D_Shift, ptr %167, i32 0, i32 3
  %169 = load i32, ptr %168, align 4, !tbaa !328
  %170 = load ptr, ptr %20, align 8, !tbaa !3
  %171 = getelementptr inbounds nuw %struct.PNode, ptr %170, i32 0, i32 3
  store i32 %169, ptr %171, align 4, !tbaa !302
  %172 = load ptr, ptr %17, align 8, !tbaa !260
  %173 = getelementptr inbounds nuw %struct.D_Shift, ptr %172, i32 0, i32 5
  %174 = load ptr, ptr %173, align 8, !tbaa !329
  %175 = icmp ne ptr %174, null
  br i1 %175, label %176, label %197

176:                                              ; preds = %160
  %177 = load ptr, ptr %17, align 8, !tbaa !260
  %178 = getelementptr inbounds nuw %struct.D_Shift, ptr %177, i32 0, i32 5
  %179 = load ptr, ptr %178, align 8, !tbaa !329
  %180 = load ptr, ptr %14, align 8, !tbaa !3
  %181 = load ptr, ptr %14, align 8, !tbaa !3
  %182 = getelementptr inbounds nuw %struct.PNode, ptr %181, i32 0, i32 7
  %183 = getelementptr inbounds nuw %struct.VecPNode, ptr %182, i32 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !22
  %185 = getelementptr inbounds ptr, ptr %184, i64 0
  %186 = load ptr, ptr %14, align 8, !tbaa !3
  %187 = getelementptr inbounds nuw %struct.PNode, ptr %186, i32 0, i32 7
  %188 = getelementptr inbounds nuw %struct.VecPNode, ptr %187, i32 0, i32 0
  %189 = load i32, ptr %188, align 8, !tbaa !20
  %190 = load ptr, ptr %10, align 8, !tbaa !30
  %191 = call signext i32 %179(ptr noundef %180, ptr noundef %185, i32 noundef signext %189, i32 noundef signext ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32), ptr noundef %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %176
  %194 = load ptr, ptr %10, align 8, !tbaa !30
  %195 = load ptr, ptr %20, align 8, !tbaa !3
  call void @free_PNode(ptr noundef %194, ptr noundef %195)
  store ptr null, ptr %9, align 8
  store i32 1, ptr %21, align 4
  br label %396

196:                                              ; preds = %176
  br label %197

197:                                              ; preds = %196, %160
  br label %394

198:                                              ; preds = %108
  %199 = load ptr, ptr %15, align 8, !tbaa !195
  %200 = icmp ne ptr %199, null
  br i1 %200, label %201, label %393

201:                                              ; preds = %198
  %202 = load ptr, ptr %16, align 8, !tbaa !67
  %203 = icmp ne ptr %202, null
  br i1 %203, label %204, label %315

204:                                              ; preds = %201
  %205 = load ptr, ptr %16, align 8, !tbaa !67
  %206 = getelementptr inbounds nuw %struct.VecZNode, ptr %205, i32 0, i32 0
  %207 = load i32, ptr %206, align 8, !tbaa !261
  %208 = sub i32 %207, 1
  store i32 %208, ptr %18, align 4, !tbaa !21
  br label %209

209:                                              ; preds = %311, %204
  %210 = load i32, ptr %18, align 4, !tbaa !21
  %211 = icmp sge i32 %210, 0
  br i1 %211, label %212, label %314

212:                                              ; preds = %209
  call void @llvm.lifetime.start.p0(i64 8, ptr %22) #9
  %213 = load ptr, ptr %16, align 8, !tbaa !67
  %214 = getelementptr inbounds nuw %struct.VecZNode, ptr %213, i32 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !262
  %216 = load i32, ptr %18, align 4, !tbaa !21
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds ptr, ptr %215, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !188
  %220 = getelementptr inbounds nuw %struct.ZNode, ptr %219, i32 0, i32 0
  %221 = load ptr, ptr %220, align 8, !tbaa !213
  %222 = getelementptr inbounds nuw %struct.PNode, ptr %221, i32 0, i32 14
  %223 = load ptr, ptr %222, align 8, !tbaa !165
  store ptr %223, ptr %22, align 8, !tbaa !3
  br label %224

224:                                              ; preds = %212
  %225 = load ptr, ptr %20, align 8, !tbaa !3
  %226 = getelementptr inbounds nuw %struct.PNode, ptr %225, i32 0, i32 7
  %227 = getelementptr inbounds nuw %struct.VecPNode, ptr %226, i32 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !22
  %229 = icmp ne ptr %228, null
  br i1 %229, label %246, label %230

230:                                              ; preds = %224
  %231 = load ptr, ptr %22, align 8, !tbaa !3
  %232 = load ptr, ptr %20, align 8, !tbaa !3
  %233 = getelementptr inbounds nuw %struct.PNode, ptr %232, i32 0, i32 7
  %234 = getelementptr inbounds nuw %struct.VecPNode, ptr %233, i32 0, i32 3
  %235 = getelementptr inbounds [3 x ptr], ptr %234, i64 0, i64 0
  %236 = load ptr, ptr %20, align 8, !tbaa !3
  %237 = getelementptr inbounds nuw %struct.PNode, ptr %236, i32 0, i32 7
  %238 = getelementptr inbounds nuw %struct.VecPNode, ptr %237, i32 0, i32 2
  store ptr %235, ptr %238, align 8, !tbaa !22
  %239 = load ptr, ptr %20, align 8, !tbaa !3
  %240 = getelementptr inbounds nuw %struct.PNode, ptr %239, i32 0, i32 7
  %241 = getelementptr inbounds nuw %struct.VecPNode, ptr %240, i32 0, i32 0
  %242 = load i32, ptr %241, align 8, !tbaa !20
  %243 = add i32 %242, 1
  store i32 %243, ptr %241, align 8, !tbaa !20
  %244 = zext i32 %242 to i64
  %245 = getelementptr inbounds nuw ptr, ptr %235, i64 %244
  store ptr %231, ptr %245, align 8, !tbaa !3
  br label %303

246:                                              ; preds = %224
  %247 = load ptr, ptr %20, align 8, !tbaa !3
  %248 = getelementptr inbounds nuw %struct.PNode, ptr %247, i32 0, i32 7
  %249 = getelementptr inbounds nuw %struct.VecPNode, ptr %248, i32 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !22
  %251 = load ptr, ptr %20, align 8, !tbaa !3
  %252 = getelementptr inbounds nuw %struct.PNode, ptr %251, i32 0, i32 7
  %253 = getelementptr inbounds nuw %struct.VecPNode, ptr %252, i32 0, i32 3
  %254 = getelementptr inbounds [3 x ptr], ptr %253, i64 0, i64 0
  %255 = icmp eq ptr %250, %254
  br i1 %255, label %256, label %276

256:                                              ; preds = %246
  %257 = load ptr, ptr %20, align 8, !tbaa !3
  %258 = getelementptr inbounds nuw %struct.PNode, ptr %257, i32 0, i32 7
  %259 = getelementptr inbounds nuw %struct.VecPNode, ptr %258, i32 0, i32 0
  %260 = load i32, ptr %259, align 8, !tbaa !20
  %261 = icmp ult i32 %260, 3
  br i1 %261, label %262, label %275

262:                                              ; preds = %256
  %263 = load ptr, ptr %22, align 8, !tbaa !3
  %264 = load ptr, ptr %20, align 8, !tbaa !3
  %265 = getelementptr inbounds nuw %struct.PNode, ptr %264, i32 0, i32 7
  %266 = getelementptr inbounds nuw %struct.VecPNode, ptr %265, i32 0, i32 2
  %267 = load ptr, ptr %266, align 8, !tbaa !22
  %268 = load ptr, ptr %20, align 8, !tbaa !3
  %269 = getelementptr inbounds nuw %struct.PNode, ptr %268, i32 0, i32 7
  %270 = getelementptr inbounds nuw %struct.VecPNode, ptr %269, i32 0, i32 0
  %271 = load i32, ptr %270, align 8, !tbaa !20
  %272 = add i32 %271, 1
  store i32 %272, ptr %270, align 8, !tbaa !20
  %273 = zext i32 %271 to i64
  %274 = getelementptr inbounds nuw ptr, ptr %267, i64 %273
  store ptr %263, ptr %274, align 8, !tbaa !3
  br label %303

275:                                              ; preds = %256
  br label %297

276:                                              ; preds = %246
  %277 = load ptr, ptr %20, align 8, !tbaa !3
  %278 = getelementptr inbounds nuw %struct.PNode, ptr %277, i32 0, i32 7
  %279 = getelementptr inbounds nuw %struct.VecPNode, ptr %278, i32 0, i32 0
  %280 = load i32, ptr %279, align 8, !tbaa !20
  %281 = and i32 %280, 7
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %296

283:                                              ; preds = %276
  %284 = load ptr, ptr %22, align 8, !tbaa !3
  %285 = load ptr, ptr %20, align 8, !tbaa !3
  %286 = getelementptr inbounds nuw %struct.PNode, ptr %285, i32 0, i32 7
  %287 = getelementptr inbounds nuw %struct.VecPNode, ptr %286, i32 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !22
  %289 = load ptr, ptr %20, align 8, !tbaa !3
  %290 = getelementptr inbounds nuw %struct.PNode, ptr %289, i32 0, i32 7
  %291 = getelementptr inbounds nuw %struct.VecPNode, ptr %290, i32 0, i32 0
  %292 = load i32, ptr %291, align 8, !tbaa !20
  %293 = add i32 %292, 1
  store i32 %293, ptr %291, align 8, !tbaa !20
  %294 = zext i32 %292 to i64
  %295 = getelementptr inbounds nuw ptr, ptr %288, i64 %294
  store ptr %284, ptr %295, align 8, !tbaa !3
  br label %303

296:                                              ; preds = %276
  br label %297

297:                                              ; preds = %296, %275
  br label %298

298:                                              ; preds = %297
  %299 = load ptr, ptr %20, align 8, !tbaa !3
  %300 = getelementptr inbounds nuw %struct.PNode, ptr %299, i32 0, i32 7
  %301 = load ptr, ptr %22, align 8, !tbaa !3
  call void @vec_add_internal(ptr noundef %300, ptr noundef %301)
  br label %302

302:                                              ; preds = %298
  br label %303

303:                                              ; preds = %302, %283, %262, %230
  br label %304

304:                                              ; preds = %303
  %305 = load ptr, ptr %22, align 8, !tbaa !3
  %306 = getelementptr inbounds nuw %struct.PNode, ptr %305, i32 0, i32 6
  %307 = load i32, ptr %306, align 8, !tbaa !100
  %308 = add i32 %307, 1
  store i32 %308, ptr %306, align 8, !tbaa !100
  br label %309

309:                                              ; preds = %304
  br label %310

310:                                              ; preds = %309
  call void @llvm.lifetime.end.p0(i64 8, ptr %22) #9
  br label %311

311:                                              ; preds = %310
  %312 = load i32, ptr %18, align 4, !tbaa !21
  %313 = add nsw i32 %312, -1
  store i32 %313, ptr %18, align 4, !tbaa !21
  br label %209, !llvm.loop !330

314:                                              ; preds = %209
  br label %315

315:                                              ; preds = %314, %201
  %316 = load ptr, ptr %10, align 8, !tbaa !30
  %317 = load ptr, ptr %20, align 8, !tbaa !3
  %318 = load ptr, ptr %15, align 8, !tbaa !195
  %319 = call signext i32 @reduce_actions(ptr noundef %316, ptr noundef %317, ptr noundef %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %315
  %322 = load ptr, ptr %10, align 8, !tbaa !30
  %323 = load ptr, ptr %20, align 8, !tbaa !3
  call void @free_PNode(ptr noundef %322, ptr noundef %323)
  store ptr null, ptr %9, align 8
  store i32 1, ptr %21, align 4
  br label %396

324:                                              ; preds = %315
  %325 = load ptr, ptr %16, align 8, !tbaa !67
  %326 = icmp ne ptr %325, null
  br i1 %326, label %327, label %392

327:                                              ; preds = %324
  %328 = load ptr, ptr %16, align 8, !tbaa !67
  %329 = getelementptr inbounds nuw %struct.VecZNode, ptr %328, i32 0, i32 0
  %330 = load i32, ptr %329, align 8, !tbaa !261
  %331 = icmp ugt i32 %330, 1
  br i1 %331, label %332, label %392

332:                                              ; preds = %327
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #9
  %333 = load ptr, ptr %16, align 8, !tbaa !67
  %334 = getelementptr inbounds nuw %struct.VecZNode, ptr %333, i32 0, i32 0
  %335 = load i32, ptr %334, align 8, !tbaa !261
  store i32 %335, ptr %23, align 4, !tbaa !21
  store i32 0, ptr %18, align 4, !tbaa !21
  br label %336

336:                                              ; preds = %383, %332
  %337 = load i32, ptr %18, align 4, !tbaa !21
  %338 = load i32, ptr %23, align 4, !tbaa !21
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %388

340:                                              ; preds = %336
  call void @llvm.lifetime.start.p0(i64 8, ptr %24) #9
  %341 = load ptr, ptr %20, align 8, !tbaa !3
  %342 = getelementptr inbounds nuw %struct.PNode, ptr %341, i32 0, i32 7
  %343 = getelementptr inbounds nuw %struct.VecPNode, ptr %342, i32 0, i32 2
  %344 = load ptr, ptr %343, align 8, !tbaa !22
  %345 = load i32, ptr %18, align 4, !tbaa !21
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds ptr, ptr %344, i64 %346
  %348 = load ptr, ptr %347, align 8, !tbaa !3
  store ptr %348, ptr %24, align 8, !tbaa !3
  %349 = load ptr, ptr %24, align 8, !tbaa !3
  %350 = getelementptr inbounds nuw %struct.PNode, ptr %349, i32 0, i32 0
  %351 = load i32, ptr %350, align 8, !tbaa !331
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %379

353:                                              ; preds = %340
  %354 = load ptr, ptr %20, align 8, !tbaa !3
  %355 = getelementptr inbounds nuw %struct.PNode, ptr %354, i32 0, i32 1
  %356 = load i32, ptr %355, align 4, !tbaa !332
  %357 = load ptr, ptr %20, align 8, !tbaa !3
  %358 = getelementptr inbounds nuw %struct.PNode, ptr %357, i32 0, i32 0
  %359 = load i32, ptr %358, align 8, !tbaa !331
  %360 = load ptr, ptr %24, align 8, !tbaa !3
  %361 = getelementptr inbounds nuw %struct.PNode, ptr %360, i32 0, i32 1
  %362 = load i32, ptr %361, align 4, !tbaa !332
  %363 = load ptr, ptr %24, align 8, !tbaa !3
  %364 = getelementptr inbounds nuw %struct.PNode, ptr %363, i32 0, i32 0
  %365 = load i32, ptr %364, align 8, !tbaa !331
  %366 = load i32, ptr %18, align 4, !tbaa !21
  %367 = icmp eq i32 %366, 0
  %368 = zext i1 %367 to i32
  %369 = load i32, ptr %18, align 4, !tbaa !21
  %370 = load i32, ptr %23, align 4, !tbaa !21
  %371 = sub nsw i32 %370, 1
  %372 = icmp eq i32 %369, %371
  %373 = zext i1 %372 to i32
  %374 = call signext i32 @check_child(i32 noundef signext %356, i32 noundef signext %359, i32 noundef signext %362, i32 noundef signext %365, i32 noundef signext %368, i32 noundef signext %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %379, label %376

376:                                              ; preds = %353
  %377 = load ptr, ptr %10, align 8, !tbaa !30
  %378 = load ptr, ptr %20, align 8, !tbaa !3
  call void @free_PNode(ptr noundef %377, ptr noundef %378)
  store ptr null, ptr %9, align 8
  store i32 1, ptr %21, align 4
  br label %380

379:                                              ; preds = %353, %340
  store i32 0, ptr %21, align 4
  br label %380

380:                                              ; preds = %379, %376
  call void @llvm.lifetime.end.p0(i64 8, ptr %24) #9
  %381 = load i32, ptr %21, align 4
  switch i32 %381, label %389 [
    i32 0, label %382
  ]

382:                                              ; preds = %380
  br label %383

383:                                              ; preds = %382
  %384 = load i32, ptr %23, align 4, !tbaa !21
  %385 = sub nsw i32 %384, 1
  %386 = load i32, ptr %18, align 4, !tbaa !21
  %387 = add nsw i32 %386, %385
  store i32 %387, ptr %18, align 4, !tbaa !21
  br label %336, !llvm.loop !333

388:                                              ; preds = %336
  store i32 0, ptr %21, align 4
  br label %389

389:                                              ; preds = %388, %380
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #9
  %390 = load i32, ptr %21, align 4
  switch i32 %390, label %396 [
    i32 0, label %391
  ]

391:                                              ; preds = %389
  br label %392

392:                                              ; preds = %391, %327, %324
  br label %393

393:                                              ; preds = %392, %198
  br label %394

394:                                              ; preds = %393, %197
  %395 = load ptr, ptr %20, align 8, !tbaa !3
  store ptr %395, ptr %9, align 8
  store i32 1, ptr %21, align 4
  br label %396

396:                                              ; preds = %394, %389, %321, %193
  call void @llvm.lifetime.end.p0(i64 8, ptr %20) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #9
  %397 = load ptr, ptr %9, align 8
  ret ptr %397
}

; Function Attrs: nounwind
define internal void @insert_PNode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !3
  %5 = load ptr, ptr %3, align 8, !tbaa !30
  %6 = load ptr, ptr %4, align 8, !tbaa !3
  call void @insert_PNode_internal(ptr noundef %5, ptr noundef %6)
  br label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !tbaa !3
  %9 = getelementptr inbounds nuw %struct.PNode, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !100
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !100
  br label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !tbaa !30
  %14 = getelementptr inbounds nuw %struct.Parser, ptr %13, i32 0, i32 11
  %15 = getelementptr inbounds nuw %struct.PNodeHash, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !235
  %17 = load ptr, ptr %4, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.PNode, ptr %17, i32 0, i32 11
  store ptr %16, ptr %18, align 8, !tbaa !167
  %19 = load ptr, ptr %4, align 8, !tbaa !3
  %20 = load ptr, ptr %3, align 8, !tbaa !30
  %21 = getelementptr inbounds nuw %struct.Parser, ptr %20, i32 0, i32 11
  %22 = getelementptr inbounds nuw %struct.PNodeHash, ptr %21, i32 0, i32 4
  store ptr %19, ptr %22, align 8, !tbaa !235
  ret void
}

; Function Attrs: nounwind
define internal signext i32 @cmp_pnodes(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.StackPNode, align 8
  %9 = alloca %struct.StackPNode, align 8
  %10 = alloca %struct.StackInt, align 8
  %11 = alloca %struct.StackInt, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !30
  store ptr %1, ptr %6, align 8, !tbaa !3
  store ptr %2, ptr %7, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 88, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 88, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr %11) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #9
  store i32 0, ptr %12, align 4, !tbaa !21
  %14 = load ptr, ptr %6, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.PNode, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8, !tbaa !331
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %243

18:                                               ; preds = %3
  %19 = load ptr, ptr %7, align 8, !tbaa !3
  %20 = getelementptr inbounds nuw %struct.PNode, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 8, !tbaa !331
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %243

23:                                               ; preds = %18
  %24 = load ptr, ptr %6, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.PNode, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 8, !tbaa !331
  %27 = and i32 %26, 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !tbaa !3
  %31 = getelementptr inbounds nuw %struct.PNode, ptr %30, i32 0, i32 0
  %32 = load i32, ptr %31, align 8, !tbaa !331
  %33 = and i32 %32, 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %6, align 8, !tbaa !3
  %37 = getelementptr inbounds nuw %struct.PNode, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !332
  %39 = load ptr, ptr %7, align 8, !tbaa !3
  %40 = getelementptr inbounds nuw %struct.PNode, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !332
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 -1, ptr %4, align 4
  store i32 1, ptr %13, align 4
  br label %284

44:                                               ; preds = %35
  %45 = load ptr, ptr %6, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.PNode, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !332
  %48 = load ptr, ptr %7, align 8, !tbaa !3
  %49 = getelementptr inbounds nuw %struct.PNode, ptr %48, i32 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !332
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 1, ptr %4, align 4
  store i32 1, ptr %13, align 4
  br label %284

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %29, %23
  br label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds nuw %struct.StackPNode, ptr %8, i32 0, i32 3
  %57 = getelementptr inbounds [8 x ptr], ptr %56, i64 0, i64 0
  %58 = getelementptr inbounds nuw %struct.StackPNode, ptr %8, i32 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !334
  %59 = getelementptr inbounds nuw %struct.StackPNode, ptr %8, i32 0, i32 2
  store ptr %57, ptr %59, align 8, !tbaa !336
  %60 = getelementptr inbounds nuw %struct.StackPNode, ptr %8, i32 0, i32 0
  store ptr %57, ptr %60, align 8, !tbaa !337
  %61 = getelementptr inbounds nuw %struct.StackPNode, ptr %8, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !334
  %63 = getelementptr inbounds ptr, ptr %62, i64 8
  store ptr %63, ptr %61, align 8, !tbaa !334
  br label %64

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds nuw %struct.StackPNode, ptr %9, i32 0, i32 3
  %68 = getelementptr inbounds [8 x ptr], ptr %67, i64 0, i64 0
  %69 = getelementptr inbounds nuw %struct.StackPNode, ptr %9, i32 0, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !334
  %70 = getelementptr inbounds nuw %struct.StackPNode, ptr %9, i32 0, i32 2
  store ptr %68, ptr %70, align 8, !tbaa !336
  %71 = getelementptr inbounds nuw %struct.StackPNode, ptr %9, i32 0, i32 0
  store ptr %68, ptr %71, align 8, !tbaa !337
  %72 = getelementptr inbounds nuw %struct.StackPNode, ptr %9, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !334
  %74 = getelementptr inbounds ptr, ptr %73, i64 8
  store ptr %74, ptr %72, align 8, !tbaa !334
  br label %75

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 3
  %79 = getelementptr inbounds [8 x i32], ptr %78, i64 0, i64 0
  %80 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 1
  store ptr %79, ptr %80, align 8, !tbaa !338
  %81 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 2
  store ptr %79, ptr %81, align 8, !tbaa !341
  %82 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 0
  store ptr %79, ptr %82, align 8, !tbaa !342
  %83 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !338
  %85 = getelementptr inbounds i32, ptr %84, i64 8
  store ptr %85, ptr %83, align 8, !tbaa !338
  br label %86

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87
  %89 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 3
  %90 = getelementptr inbounds [8 x i32], ptr %89, i64 0, i64 0
  %91 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 1
  store ptr %90, ptr %91, align 8, !tbaa !338
  %92 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 2
  store ptr %90, ptr %92, align 8, !tbaa !341
  %93 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 0
  store ptr %90, ptr %93, align 8, !tbaa !342
  %94 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !338
  %96 = getelementptr inbounds i32, ptr %95, i64 8
  store ptr %96, ptr %94, align 8, !tbaa !338
  br label %97

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97
  %99 = load ptr, ptr %6, align 8, !tbaa !3
  call void @get_exp_one(ptr noundef %99, ptr noundef %8, ptr noundef %10)
  %100 = load ptr, ptr %7, align 8, !tbaa !3
  call void @get_exp_one(ptr noundef %100, ptr noundef %9, ptr noundef %11)
  call void @get_unshared_priorities(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  %101 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 0
  %102 = load ptr, ptr %101, align 8, !tbaa !342
  %103 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !341
  %105 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 0
  %106 = load ptr, ptr %105, align 8, !tbaa !342
  %107 = ptrtoint ptr %104 to i64
  %108 = ptrtoint ptr %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = trunc i64 %110 to i32
  call void @intsort(ptr noundef %102, i32 noundef signext %111)
  %112 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 0
  %113 = load ptr, ptr %112, align 8, !tbaa !342
  %114 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !341
  %116 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 0
  %117 = load ptr, ptr %116, align 8, !tbaa !342
  %118 = ptrtoint ptr %115 to i64
  %119 = ptrtoint ptr %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 4
  %122 = trunc i64 %121 to i32
  call void @intsort(ptr noundef %113, i32 noundef signext %122)
  %123 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 0
  %124 = load ptr, ptr %123, align 8, !tbaa !342
  %125 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !341
  %127 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 0
  %128 = load ptr, ptr %127, align 8, !tbaa !342
  %129 = ptrtoint ptr %126 to i64
  %130 = ptrtoint ptr %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 4
  %133 = trunc i64 %132 to i32
  %134 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 0
  %135 = load ptr, ptr %134, align 8, !tbaa !342
  %136 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !341
  %138 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 0
  %139 = load ptr, ptr %138, align 8, !tbaa !342
  %140 = ptrtoint ptr %137 to i64
  %141 = ptrtoint ptr %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = call signext i32 @cmp_priorities(ptr noundef %124, i32 noundef signext %133, ptr noundef %135, i32 noundef signext %144)
  store i32 %145, ptr %12, align 4, !tbaa !21
  br label %146

146:                                              ; preds = %98
  %147 = getelementptr inbounds nuw %struct.StackPNode, ptr %8, i32 0, i32 0
  %148 = load ptr, ptr %147, align 8, !tbaa !337
  %149 = getelementptr inbounds nuw %struct.StackPNode, ptr %8, i32 0, i32 3
  %150 = getelementptr inbounds [8 x ptr], ptr %149, i64 0, i64 0
  %151 = icmp ne ptr %148, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = getelementptr inbounds nuw %struct.StackPNode, ptr %8, i32 0, i32 0
  %154 = load ptr, ptr %153, align 8, !tbaa !337
  call void @free(ptr noundef %154) #9
  br label %155

155:                                              ; preds = %152, %146
  br label %156

156:                                              ; preds = %155
  %157 = getelementptr inbounds nuw %struct.StackPNode, ptr %8, i32 0, i32 3
  %158 = getelementptr inbounds [8 x ptr], ptr %157, i64 0, i64 0
  %159 = getelementptr inbounds nuw %struct.StackPNode, ptr %8, i32 0, i32 1
  store ptr %158, ptr %159, align 8, !tbaa !334
  %160 = getelementptr inbounds nuw %struct.StackPNode, ptr %8, i32 0, i32 2
  store ptr %158, ptr %160, align 8, !tbaa !336
  %161 = getelementptr inbounds nuw %struct.StackPNode, ptr %8, i32 0, i32 0
  store ptr %158, ptr %161, align 8, !tbaa !337
  %162 = getelementptr inbounds nuw %struct.StackPNode, ptr %8, i32 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !334
  %164 = getelementptr inbounds ptr, ptr %163, i64 8
  store ptr %164, ptr %162, align 8, !tbaa !334
  br label %165

165:                                              ; preds = %156
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168
  %170 = getelementptr inbounds nuw %struct.StackPNode, ptr %9, i32 0, i32 0
  %171 = load ptr, ptr %170, align 8, !tbaa !337
  %172 = getelementptr inbounds nuw %struct.StackPNode, ptr %9, i32 0, i32 3
  %173 = getelementptr inbounds [8 x ptr], ptr %172, i64 0, i64 0
  %174 = icmp ne ptr %171, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = getelementptr inbounds nuw %struct.StackPNode, ptr %9, i32 0, i32 0
  %177 = load ptr, ptr %176, align 8, !tbaa !337
  call void @free(ptr noundef %177) #9
  br label %178

178:                                              ; preds = %175, %169
  br label %179

179:                                              ; preds = %178
  %180 = getelementptr inbounds nuw %struct.StackPNode, ptr %9, i32 0, i32 3
  %181 = getelementptr inbounds [8 x ptr], ptr %180, i64 0, i64 0
  %182 = getelementptr inbounds nuw %struct.StackPNode, ptr %9, i32 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !334
  %183 = getelementptr inbounds nuw %struct.StackPNode, ptr %9, i32 0, i32 2
  store ptr %181, ptr %183, align 8, !tbaa !336
  %184 = getelementptr inbounds nuw %struct.StackPNode, ptr %9, i32 0, i32 0
  store ptr %181, ptr %184, align 8, !tbaa !337
  %185 = getelementptr inbounds nuw %struct.StackPNode, ptr %9, i32 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !334
  %187 = getelementptr inbounds ptr, ptr %186, i64 8
  store ptr %187, ptr %185, align 8, !tbaa !334
  br label %188

188:                                              ; preds = %179
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191
  %193 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 0
  %194 = load ptr, ptr %193, align 8, !tbaa !342
  %195 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 3
  %196 = getelementptr inbounds [8 x i32], ptr %195, i64 0, i64 0
  %197 = icmp ne ptr %194, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 0
  %200 = load ptr, ptr %199, align 8, !tbaa !342
  call void @free(ptr noundef %200) #9
  br label %201

201:                                              ; preds = %198, %192
  br label %202

202:                                              ; preds = %201
  %203 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 3
  %204 = getelementptr inbounds [8 x i32], ptr %203, i64 0, i64 0
  %205 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 1
  store ptr %204, ptr %205, align 8, !tbaa !338
  %206 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 2
  store ptr %204, ptr %206, align 8, !tbaa !341
  %207 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 0
  store ptr %204, ptr %207, align 8, !tbaa !342
  %208 = getelementptr inbounds nuw %struct.StackInt, ptr %10, i32 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !338
  %210 = getelementptr inbounds i32, ptr %209, i64 8
  store ptr %210, ptr %208, align 8, !tbaa !338
  br label %211

211:                                              ; preds = %202
  br label %212

212:                                              ; preds = %211
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214
  %216 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 0
  %217 = load ptr, ptr %216, align 8, !tbaa !342
  %218 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 3
  %219 = getelementptr inbounds [8 x i32], ptr %218, i64 0, i64 0
  %220 = icmp ne ptr %217, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 0
  %223 = load ptr, ptr %222, align 8, !tbaa !342
  call void @free(ptr noundef %223) #9
  br label %224

224:                                              ; preds = %221, %215
  br label %225

225:                                              ; preds = %224
  %226 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 3
  %227 = getelementptr inbounds [8 x i32], ptr %226, i64 0, i64 0
  %228 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 1
  store ptr %227, ptr %228, align 8, !tbaa !338
  %229 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 2
  store ptr %227, ptr %229, align 8, !tbaa !341
  %230 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 0
  store ptr %227, ptr %230, align 8, !tbaa !342
  %231 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !338
  %233 = getelementptr inbounds i32, ptr %232, i64 8
  store ptr %233, ptr %231, align 8, !tbaa !338
  br label %234

234:                                              ; preds = %225
  br label %235

235:                                              ; preds = %234
  br label %236

236:                                              ; preds = %235
  br label %237

237:                                              ; preds = %236
  %238 = load i32, ptr %12, align 4, !tbaa !21
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = load i32, ptr %12, align 4, !tbaa !21
  store i32 %241, ptr %4, align 4
  store i32 1, ptr %13, align 4
  br label %284

242:                                              ; preds = %237
  br label %243

243:                                              ; preds = %242, %18, %3
  %244 = load ptr, ptr %5, align 8, !tbaa !30
  %245 = getelementptr inbounds nuw %struct.Parser, ptr %244, i32 0, i32 0
  %246 = getelementptr inbounds nuw %struct.D_Parser, ptr %245, i32 0, i32 13
  %247 = load i32, ptr %246, align 8, !tbaa !343
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %257, label %249

249:                                              ; preds = %243
  %250 = load ptr, ptr %6, align 8, !tbaa !3
  %251 = load ptr, ptr %7, align 8, !tbaa !3
  %252 = call signext i32 @cmp_eagerness(ptr noundef %250, ptr noundef %251)
  store i32 %252, ptr %12, align 4, !tbaa !21
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %249
  %255 = load i32, ptr %12, align 4, !tbaa !21
  store i32 %255, ptr %4, align 4
  store i32 1, ptr %13, align 4
  br label %284

256:                                              ; preds = %249
  br label %257

257:                                              ; preds = %256, %243
  %258 = load ptr, ptr %5, align 8, !tbaa !30
  %259 = getelementptr inbounds nuw %struct.Parser, ptr %258, i32 0, i32 0
  %260 = getelementptr inbounds nuw %struct.D_Parser, ptr %259, i32 0, i32 14
  %261 = load i32, ptr %260, align 4, !tbaa !344
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %282, label %263

263:                                              ; preds = %257
  %264 = load ptr, ptr %6, align 8, !tbaa !3
  %265 = getelementptr inbounds nuw %struct.PNode, ptr %264, i32 0, i32 8
  %266 = load i32, ptr %265, align 8, !tbaa !345
  %267 = load ptr, ptr %7, align 8, !tbaa !3
  %268 = getelementptr inbounds nuw %struct.PNode, ptr %267, i32 0, i32 8
  %269 = load i32, ptr %268, align 8, !tbaa !345
  %270 = icmp ult i32 %266, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %263
  store i32 -1, ptr %4, align 4
  store i32 1, ptr %13, align 4
  br label %284

272:                                              ; preds = %263
  %273 = load ptr, ptr %6, align 8, !tbaa !3
  %274 = getelementptr inbounds nuw %struct.PNode, ptr %273, i32 0, i32 8
  %275 = load i32, ptr %274, align 8, !tbaa !345
  %276 = load ptr, ptr %7, align 8, !tbaa !3
  %277 = getelementptr inbounds nuw %struct.PNode, ptr %276, i32 0, i32 8
  %278 = load i32, ptr %277, align 8, !tbaa !345
  %279 = icmp ugt i32 %275, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %272
  store i32 1, ptr %4, align 4
  store i32 1, ptr %13, align 4
  br label %284

281:                                              ; preds = %272
  br label %282

282:                                              ; preds = %281, %257
  %283 = load i32, ptr %12, align 4, !tbaa !21
  store i32 %283, ptr %4, align 4
  store i32 1, ptr %13, align 4
  br label %284

284:                                              ; preds = %282, %280, %271, %254, %240, %52, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 88, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 88, ptr %8) #9
  %285 = load i32, ptr %4, align 4
  ret i32 %285
}

; Function Attrs: nounwind
define internal ptr @find_ws_before(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !30
  store ptr %1, ptr %5, align 8, !tbaa !188
  br label %6

6:                                                ; preds = %59, %2
  %7 = load ptr, ptr %5, align 8, !tbaa !188
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8, !tbaa !188
  %11 = getelementptr inbounds nuw %struct.ZNode, ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8, !tbaa !213
  %13 = getelementptr inbounds nuw %struct.PNode, ptr %12, i32 0, i32 19
  %14 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %13, i32 0, i32 1
  %15 = getelementptr inbounds nuw %struct.d_loc_t, ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = load ptr, ptr %5, align 8, !tbaa !188
  %18 = getelementptr inbounds nuw %struct.ZNode, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8, !tbaa !213
  %20 = getelementptr inbounds nuw %struct.PNode, ptr %19, i32 0, i32 19
  %21 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !222
  %23 = icmp eq ptr %16, %22
  br label %24

24:                                               ; preds = %9, %6
  %25 = phi i1 [ false, %6 ], [ %23, %9 ]
  br i1 %25, label %26, label %61

26:                                               ; preds = %24
  %27 = load ptr, ptr %5, align 8, !tbaa !188
  %28 = getelementptr inbounds nuw %struct.ZNode, ptr %27, i32 0, i32 1
  %29 = getelementptr inbounds nuw %struct.VecSNode, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8, !tbaa !266
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 8, !tbaa !188
  %34 = getelementptr inbounds nuw %struct.ZNode, ptr %33, i32 0, i32 1
  %35 = getelementptr inbounds nuw %struct.VecSNode, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !267
  %37 = getelementptr inbounds ptr, ptr %36, i64 0
  %38 = load ptr, ptr %37, align 8, !tbaa !72
  %39 = getelementptr inbounds nuw %struct.SNode, ptr %38, i32 0, i32 6
  %40 = getelementptr inbounds nuw %struct.VecZNode, ptr %39, i32 0, i32 0
  %41 = load i32, ptr %40, align 8, !tbaa !211
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %32
  %44 = load ptr, ptr %5, align 8, !tbaa !188
  %45 = getelementptr inbounds nuw %struct.ZNode, ptr %44, i32 0, i32 1
  %46 = getelementptr inbounds nuw %struct.VecSNode, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !267
  %48 = getelementptr inbounds ptr, ptr %47, i64 0
  %49 = load ptr, ptr %48, align 8, !tbaa !72
  %50 = getelementptr inbounds nuw %struct.SNode, ptr %49, i32 0, i32 6
  %51 = getelementptr inbounds nuw %struct.VecZNode, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !212
  %53 = getelementptr inbounds ptr, ptr %52, i64 0
  %54 = load ptr, ptr %53, align 8, !tbaa !188
  br label %56

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55, %43
  %57 = phi ptr [ %54, %43 ], [ null, %55 ]
  br label %59

58:                                               ; preds = %26
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi ptr [ %57, %56 ], [ null, %58 ]
  store ptr %60, ptr %5, align 8, !tbaa !188
  br label %6, !llvm.loop !346

61:                                               ; preds = %24
  %62 = load ptr, ptr %5, align 8, !tbaa !188
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load ptr, ptr %5, align 8, !tbaa !188
  %66 = getelementptr inbounds nuw %struct.ZNode, ptr %65, i32 0, i32 0
  %67 = load ptr, ptr %66, align 8, !tbaa !213
  %68 = getelementptr inbounds nuw %struct.PNode, ptr %67, i32 0, i32 19
  %69 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !222
  store ptr %70, ptr %3, align 8
  br label %75

71:                                               ; preds = %61
  %72 = load ptr, ptr %4, align 8, !tbaa !30
  %73 = getelementptr inbounds nuw %struct.Parser, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !142
  store ptr %74, ptr %3, align 8
  br label %75

75:                                               ; preds = %71, %64
  %76 = load ptr, ptr %3, align 8
  ret ptr %76
}

declare void @vec_add_internal(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
define internal signext i32 @reduce_actions(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !30
  store ptr %1, ptr %6, align 8, !tbaa !3
  store ptr %2, ptr %7, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9
  store i32 0, ptr %9, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  store i32 0, ptr %8, align 4, !tbaa !21
  br label %12

12:                                               ; preds = %55, %3
  %13 = load i32, ptr %8, align 4, !tbaa !21
  %14 = load ptr, ptr %6, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.PNode, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds nuw %struct.VecPNode, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8, !tbaa !20
  %18 = icmp ult i32 %13, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %12
  %20 = load ptr, ptr %6, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.PNode, ptr %20, i32 0, i32 7
  %22 = getelementptr inbounds nuw %struct.VecPNode, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = load i32, ptr %8, align 4, !tbaa !21
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !3
  store ptr %27, ptr %10, align 8, !tbaa !3
  %28 = load ptr, ptr %10, align 8, !tbaa !3
  %29 = getelementptr inbounds nuw %struct.PNode, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !277
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %19
  %33 = load ptr, ptr %10, align 8, !tbaa !3
  %34 = getelementptr inbounds nuw %struct.PNode, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !277
  %36 = load ptr, ptr %6, align 8, !tbaa !3
  %37 = getelementptr inbounds nuw %struct.PNode, ptr %36, i32 0, i32 0
  store i32 %35, ptr %37, align 8, !tbaa !331
  %38 = load ptr, ptr %10, align 8, !tbaa !3
  %39 = getelementptr inbounds nuw %struct.PNode, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !302
  %41 = load ptr, ptr %6, align 8, !tbaa !3
  %42 = getelementptr inbounds nuw %struct.PNode, ptr %41, i32 0, i32 1
  store i32 %40, ptr %42, align 4, !tbaa !332
  br label %43

43:                                               ; preds = %32, %19
  %44 = load ptr, ptr %10, align 8, !tbaa !3
  %45 = getelementptr inbounds nuw %struct.PNode, ptr %44, i32 0, i32 8
  %46 = load i32, ptr %45, align 8, !tbaa !345
  %47 = load i32, ptr %9, align 4, !tbaa !21
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load ptr, ptr %10, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.PNode, ptr %50, i32 0, i32 8
  %52 = load i32, ptr %51, align 8, !tbaa !345
  %53 = add i32 %52, 1
  store i32 %53, ptr %9, align 4, !tbaa !21
  br label %54

54:                                               ; preds = %49, %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %8, align 4, !tbaa !21
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %8, align 4, !tbaa !21
  br label %12, !llvm.loop !347

58:                                               ; preds = %12
  %59 = load ptr, ptr %7, align 8, !tbaa !195
  %60 = getelementptr inbounds nuw %struct.D_Reduction, ptr %59, i32 0, i32 4
  %61 = load i16, ptr %60, align 8, !tbaa !348
  %62 = zext i16 %61 to i32
  %63 = load ptr, ptr %6, align 8, !tbaa !3
  %64 = getelementptr inbounds nuw %struct.PNode, ptr %63, i32 0, i32 2
  store i32 %62, ptr %64, align 8, !tbaa !277
  %65 = load ptr, ptr %7, align 8, !tbaa !195
  %66 = getelementptr inbounds nuw %struct.D_Reduction, ptr %65, i32 0, i32 6
  %67 = load i32, ptr %66, align 4, !tbaa !349
  %68 = load ptr, ptr %6, align 8, !tbaa !3
  %69 = getelementptr inbounds nuw %struct.PNode, ptr %68, i32 0, i32 3
  store i32 %67, ptr %69, align 4, !tbaa !302
  %70 = load i32, ptr %9, align 4, !tbaa !21
  %71 = load ptr, ptr %6, align 8, !tbaa !3
  %72 = getelementptr inbounds nuw %struct.PNode, ptr %71, i32 0, i32 8
  store i32 %70, ptr %72, align 8, !tbaa !345
  %73 = load ptr, ptr %7, align 8, !tbaa !195
  %74 = getelementptr inbounds nuw %struct.D_Reduction, ptr %73, i32 0, i32 5
  %75 = load i16, ptr %74, align 2, !tbaa !350
  %76 = icmp ne i16 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %58
  %78 = load ptr, ptr %7, align 8, !tbaa !195
  %79 = getelementptr inbounds nuw %struct.D_Reduction, ptr %78, i32 0, i32 5
  %80 = load i16, ptr %79, align 2, !tbaa !350
  %81 = zext i16 %80 to i32
  %82 = load ptr, ptr %6, align 8, !tbaa !3
  %83 = getelementptr inbounds nuw %struct.PNode, ptr %82, i32 0, i32 0
  store i32 %81, ptr %83, align 8, !tbaa !331
  %84 = load ptr, ptr %7, align 8, !tbaa !195
  %85 = getelementptr inbounds nuw %struct.D_Reduction, ptr %84, i32 0, i32 7
  %86 = load i32, ptr %85, align 8, !tbaa !351
  %87 = load ptr, ptr %6, align 8, !tbaa !3
  %88 = getelementptr inbounds nuw %struct.PNode, ptr %87, i32 0, i32 1
  store i32 %86, ptr %88, align 4, !tbaa !332
  br label %89

89:                                               ; preds = %77, %58
  %90 = load ptr, ptr %7, align 8, !tbaa !195
  %91 = getelementptr inbounds nuw %struct.D_Reduction, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !352
  %93 = icmp ne ptr %92, null
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  %95 = load ptr, ptr %7, align 8, !tbaa !195
  %96 = getelementptr inbounds nuw %struct.D_Reduction, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !352
  %98 = load ptr, ptr %6, align 8, !tbaa !3
  %99 = load ptr, ptr %6, align 8, !tbaa !3
  %100 = getelementptr inbounds nuw %struct.PNode, ptr %99, i32 0, i32 7
  %101 = getelementptr inbounds nuw %struct.VecPNode, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !22
  %103 = getelementptr inbounds ptr, ptr %102, i64 0
  %104 = load ptr, ptr %6, align 8, !tbaa !3
  %105 = getelementptr inbounds nuw %struct.PNode, ptr %104, i32 0, i32 7
  %106 = getelementptr inbounds nuw %struct.VecPNode, ptr %105, i32 0, i32 0
  %107 = load i32, ptr %106, align 8, !tbaa !20
  %108 = load ptr, ptr %5, align 8, !tbaa !30
  %109 = call signext i32 %97(ptr noundef %98, ptr noundef %103, i32 noundef signext %107, i32 noundef signext ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32), ptr noundef %108)
  store i32 %109, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %111

110:                                              ; preds = %89
  store i32 0, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %111

111:                                              ; preds = %110, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  %112 = load i32, ptr %4, align 4
  ret i32 %112
}

; Function Attrs: nounwind
define internal signext i32 @check_child(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, ptr %7, align 4, !tbaa !21
  store i32 %1, ptr %8, align 4, !tbaa !21
  store i32 %2, ptr %9, align 4, !tbaa !21
  store i32 %3, ptr %10, align 4, !tbaa !21
  store i32 %4, ptr %11, align 4, !tbaa !21
  store i32 %5, ptr %12, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #9
  %16 = load i32, ptr %8, align 4, !tbaa !21
  %17 = and i32 %16, 16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = load i32, ptr %8, align 4, !tbaa !21
  %21 = and i32 %20, 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19, %6
  %24 = load i32, ptr %12, align 4, !tbaa !21
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  br label %33

28:                                               ; preds = %19
  %29 = load i32, ptr %8, align 4, !tbaa !21
  %30 = icmp eq i32 %29, 9
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 2, i32 3
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i32 [ %27, %23 ], [ %32, %28 ]
  store i32 %34, ptr %13, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #9
  %35 = load i32, ptr %10, align 4, !tbaa !21
  %36 = and i32 %35, 16
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %10, align 4, !tbaa !21
  %40 = and i32 %39, 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %33
  br label %48

43:                                               ; preds = %38
  %44 = load i32, ptr %10, align 4, !tbaa !21
  %45 = icmp eq i32 %44, 9
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 2
  br label %48

48:                                               ; preds = %43, %42
  %49 = phi i32 [ 0, %42 ], [ %47, %43 ]
  store i32 %49, ptr %14, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #9
  %50 = load i32, ptr %9, align 4, !tbaa !21
  %51 = load i32, ptr %7, align 4, !tbaa !21
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %74

54:                                               ; preds = %48
  %55 = load i32, ptr %9, align 4, !tbaa !21
  %56 = load i32, ptr %7, align 4, !tbaa !21
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %72

59:                                               ; preds = %54
  %60 = load i32, ptr %10, align 4, !tbaa !21
  %61 = and i32 %60, 2
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 2, i32 0
  %65 = load i32, ptr %8, align 4, !tbaa !21
  %66 = and i32 %65, 2
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = add nsw i32 %64, %69
  %71 = add nsw i32 2, %70
  br label %72

72:                                               ; preds = %59, %58
  %73 = phi i32 [ 1, %58 ], [ %71, %59 ]
  br label %74

74:                                               ; preds = %72, %53
  %75 = phi i32 [ 0, %53 ], [ %73, %72 ]
  store i32 %75, ptr %15, align 4, !tbaa !21
  %76 = load i32, ptr %13, align 4, !tbaa !21
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x [3 x [6 x i32]]], ptr @child_table, i64 0, i64 %77
  %79 = load i32, ptr %14, align 4, !tbaa !21
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x [6 x i32]], ptr %78, i64 0, i64 %80
  %82 = load i32, ptr %15, align 4, !tbaa !21
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [6 x i32], ptr %81, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #9
  ret i32 %85
}

; Function Attrs: nounwind
define internal void @get_exp_one(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !67
  store ptr %2, ptr %6, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  %8 = load ptr, ptr %4, align 8, !tbaa !3
  %9 = getelementptr inbounds nuw %struct.PNode, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8, !tbaa !331
  %11 = and i32 %10, 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !tbaa !67
  %15 = load ptr, ptr %4, align 8, !tbaa !3
  call void @priority_insert(ptr noundef %14, ptr noundef %15)
  br label %79

16:                                               ; preds = %3
  %17 = load ptr, ptr %6, align 8, !tbaa !67
  %18 = getelementptr inbounds nuw %struct.StackInt, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !341
  %20 = load ptr, ptr %6, align 8, !tbaa !67
  %21 = getelementptr inbounds nuw %struct.StackInt, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !338
  %23 = icmp eq ptr %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load ptr, ptr %6, align 8, !tbaa !67
  %26 = load ptr, ptr %4, align 8, !tbaa !3
  %27 = getelementptr inbounds nuw %struct.PNode, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !332
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to ptr
  %31 = call ptr @stack_push_internal(ptr noundef %25, ptr noundef %30)
  br label %42

32:                                               ; preds = %16
  %33 = load ptr, ptr %4, align 8, !tbaa !3
  %34 = getelementptr inbounds nuw %struct.PNode, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !332
  %36 = load ptr, ptr %6, align 8, !tbaa !67
  %37 = getelementptr inbounds nuw %struct.StackInt, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !341
  %39 = getelementptr inbounds nuw i32, ptr %38, i32 1
  store ptr %39, ptr %37, align 8, !tbaa !341
  store i32 %35, ptr %38, align 4, !tbaa !21
  %40 = sext i32 %35 to i64
  %41 = inttoptr i64 %40 to ptr
  br label %42

42:                                               ; preds = %32, %24
  %43 = phi ptr [ %31, %24 ], [ %41, %32 ]
  store i32 0, ptr %7, align 4, !tbaa !21
  br label %44

44:                                               ; preds = %75, %42
  %45 = load i32, ptr %7, align 4, !tbaa !21
  %46 = load ptr, ptr %4, align 8, !tbaa !3
  %47 = getelementptr inbounds nuw %struct.PNode, ptr %46, i32 0, i32 7
  %48 = getelementptr inbounds nuw %struct.VecPNode, ptr %47, i32 0, i32 0
  %49 = load i32, ptr %48, align 8, !tbaa !20
  %50 = icmp ult i32 %45, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %44
  %52 = load ptr, ptr %4, align 8, !tbaa !3
  %53 = getelementptr inbounds nuw %struct.PNode, ptr %52, i32 0, i32 7
  %54 = getelementptr inbounds nuw %struct.VecPNode, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  %56 = load i32, ptr %7, align 4, !tbaa !21
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.PNode, ptr %59, i32 0, i32 0
  %61 = load i32, ptr %60, align 8, !tbaa !331
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %51
  %64 = load ptr, ptr %4, align 8, !tbaa !3
  %65 = getelementptr inbounds nuw %struct.PNode, ptr %64, i32 0, i32 7
  %66 = getelementptr inbounds nuw %struct.VecPNode, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !22
  %68 = load i32, ptr %7, align 4, !tbaa !21
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !3
  %72 = load ptr, ptr %5, align 8, !tbaa !67
  %73 = load ptr, ptr %6, align 8, !tbaa !67
  call void @get_exp_one(ptr noundef %71, ptr noundef %72, ptr noundef %73)
  br label %74

74:                                               ; preds = %63, %51
  br label %75

75:                                               ; preds = %74
  %76 = load i32, ptr %7, align 4, !tbaa !21
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %7, align 4, !tbaa !21
  br label %44, !llvm.loop !353

78:                                               ; preds = %44
  br label %79

79:                                               ; preds = %78, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  ret void
}

; Function Attrs: nounwind
define internal void @get_unshared_priorities(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !67
  store ptr %1, ptr %6, align 8, !tbaa !67
  store ptr %2, ptr %7, align 8, !tbaa !67
  store ptr %3, ptr %8, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  br label %11

11:                                               ; preds = %128, %97, %4
  br label %12

12:                                               ; preds = %11
  %13 = load ptr, ptr %5, align 8, !tbaa !67
  %14 = getelementptr inbounds nuw %struct.StackPNode, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !336
  %16 = load ptr, ptr %5, align 8, !tbaa !67
  %17 = getelementptr inbounds nuw %struct.StackPNode, ptr %16, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8, !tbaa !337
  %19 = icmp eq ptr %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load ptr, ptr %6, align 8, !tbaa !67
  store ptr %21, ptr %9, align 8, !tbaa !67
  br label %129

22:                                               ; preds = %12
  %23 = load ptr, ptr %6, align 8, !tbaa !67
  %24 = getelementptr inbounds nuw %struct.StackPNode, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !336
  %26 = load ptr, ptr %6, align 8, !tbaa !67
  %27 = getelementptr inbounds nuw %struct.StackPNode, ptr %26, i32 0, i32 0
  %28 = load ptr, ptr %27, align 8, !tbaa !337
  %29 = icmp eq ptr %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load ptr, ptr %5, align 8, !tbaa !67
  store ptr %31, ptr %9, align 8, !tbaa !67
  br label %129

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr %5, align 8, !tbaa !67
  %35 = getelementptr inbounds nuw %struct.StackPNode, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !336
  %37 = getelementptr inbounds ptr, ptr %36, i64 -1
  %38 = load ptr, ptr %37, align 8, !tbaa !3
  %39 = getelementptr inbounds nuw %struct.PNode, ptr %38, i32 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !345
  %41 = load ptr, ptr %6, align 8, !tbaa !67
  %42 = getelementptr inbounds nuw %struct.StackPNode, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !336
  %44 = getelementptr inbounds ptr, ptr %43, i64 -1
  %45 = load ptr, ptr %44, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.PNode, ptr %45, i32 0, i32 8
  %47 = load i32, ptr %46, align 8, !tbaa !345
  %48 = icmp ugt i32 %40, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = load ptr, ptr %5, align 8, !tbaa !67
  store ptr %50, ptr %9, align 8, !tbaa !67
  br label %111

51:                                               ; preds = %33
  %52 = load ptr, ptr %5, align 8, !tbaa !67
  %53 = getelementptr inbounds nuw %struct.StackPNode, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !336
  %55 = getelementptr inbounds ptr, ptr %54, i64 -1
  %56 = load ptr, ptr %55, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.PNode, ptr %56, i32 0, i32 8
  %58 = load i32, ptr %57, align 8, !tbaa !345
  %59 = load ptr, ptr %6, align 8, !tbaa !67
  %60 = getelementptr inbounds nuw %struct.StackPNode, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !336
  %62 = getelementptr inbounds ptr, ptr %61, i64 -1
  %63 = load ptr, ptr %62, align 8, !tbaa !3
  %64 = getelementptr inbounds nuw %struct.PNode, ptr %63, i32 0, i32 8
  %65 = load i32, ptr %64, align 8, !tbaa !345
  %66 = icmp ult i32 %58, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %51
  %68 = load ptr, ptr %6, align 8, !tbaa !67
  store ptr %68, ptr %9, align 8, !tbaa !67
  br label %110

69:                                               ; preds = %51
  %70 = load ptr, ptr %5, align 8, !tbaa !67
  %71 = getelementptr inbounds nuw %struct.StackPNode, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !336
  %73 = getelementptr inbounds ptr, ptr %72, i64 -1
  %74 = load ptr, ptr %73, align 8, !tbaa !3
  %75 = load ptr, ptr %6, align 8, !tbaa !67
  %76 = getelementptr inbounds nuw %struct.StackPNode, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !336
  %78 = getelementptr inbounds ptr, ptr %77, i64 -1
  %79 = load ptr, ptr %78, align 8, !tbaa !3
  %80 = icmp ugt ptr %74, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load ptr, ptr %5, align 8, !tbaa !67
  store ptr %82, ptr %9, align 8, !tbaa !67
  br label %109

83:                                               ; preds = %69
  %84 = load ptr, ptr %5, align 8, !tbaa !67
  %85 = getelementptr inbounds nuw %struct.StackPNode, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !336
  %87 = getelementptr inbounds ptr, ptr %86, i64 -1
  %88 = load ptr, ptr %87, align 8, !tbaa !3
  %89 = load ptr, ptr %6, align 8, !tbaa !67
  %90 = getelementptr inbounds nuw %struct.StackPNode, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !336
  %92 = getelementptr inbounds ptr, ptr %91, i64 -1
  %93 = load ptr, ptr %92, align 8, !tbaa !3
  %94 = icmp ult ptr %88, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load ptr, ptr %6, align 8, !tbaa !67
  store ptr %96, ptr %9, align 8, !tbaa !67
  br label %108

97:                                               ; preds = %83
  %98 = load ptr, ptr %5, align 8, !tbaa !67
  %99 = getelementptr inbounds nuw %struct.StackPNode, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !336
  %101 = getelementptr inbounds ptr, ptr %100, i32 -1
  store ptr %101, ptr %99, align 8, !tbaa !336
  %102 = load ptr, ptr %101, align 8, !tbaa !3
  %103 = load ptr, ptr %6, align 8, !tbaa !67
  %104 = getelementptr inbounds nuw %struct.StackPNode, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !336
  %106 = getelementptr inbounds ptr, ptr %105, i32 -1
  store ptr %106, ptr %104, align 8, !tbaa !336
  %107 = load ptr, ptr %106, align 8, !tbaa !3
  br label %11

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %81
  br label %110

110:                                              ; preds = %109, %67
  br label %111

111:                                              ; preds = %110, %49
  %112 = load ptr, ptr %9, align 8, !tbaa !67
  %113 = getelementptr inbounds nuw %struct.StackPNode, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !336
  %115 = getelementptr inbounds ptr, ptr %114, i32 -1
  store ptr %115, ptr %113, align 8, !tbaa !336
  %116 = load ptr, ptr %115, align 8, !tbaa !3
  store ptr %116, ptr %10, align 8, !tbaa !3
  %117 = load ptr, ptr %9, align 8, !tbaa !67
  %118 = load ptr, ptr %5, align 8, !tbaa !67
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load ptr, ptr %10, align 8, !tbaa !3
  %122 = load ptr, ptr %5, align 8, !tbaa !67
  %123 = load ptr, ptr %7, align 8, !tbaa !67
  call void @get_exp_one_down(ptr noundef %121, ptr noundef %122, ptr noundef %123)
  br label %128

124:                                              ; preds = %111
  %125 = load ptr, ptr %10, align 8, !tbaa !3
  %126 = load ptr, ptr %6, align 8, !tbaa !67
  %127 = load ptr, ptr %8, align 8, !tbaa !67
  call void @get_exp_one_down(ptr noundef %125, ptr noundef %126, ptr noundef %127)
  br label %128

128:                                              ; preds = %124, %120
  br label %11

129:                                              ; preds = %30, %20
  br label %130

130:                                              ; preds = %154, %129
  %131 = load ptr, ptr %9, align 8, !tbaa !67
  %132 = getelementptr inbounds nuw %struct.StackPNode, ptr %131, i32 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !336
  %134 = load ptr, ptr %9, align 8, !tbaa !67
  %135 = getelementptr inbounds nuw %struct.StackPNode, ptr %134, i32 0, i32 0
  %136 = load ptr, ptr %135, align 8, !tbaa !337
  %137 = icmp eq ptr %133, %136
  %138 = xor i1 %137, true
  br i1 %138, label %139, label %155

139:                                              ; preds = %130
  %140 = load ptr, ptr %9, align 8, !tbaa !67
  %141 = getelementptr inbounds nuw %struct.StackPNode, ptr %140, i32 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !336
  %143 = getelementptr inbounds ptr, ptr %142, i32 -1
  store ptr %143, ptr %141, align 8, !tbaa !336
  %144 = load ptr, ptr %143, align 8, !tbaa !3
  store ptr %144, ptr %10, align 8, !tbaa !3
  %145 = load ptr, ptr %9, align 8, !tbaa !67
  %146 = load ptr, ptr %5, align 8, !tbaa !67
  %147 = icmp eq ptr %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load ptr, ptr %10, align 8, !tbaa !3
  %150 = load ptr, ptr %7, align 8, !tbaa !67
  call void @get_exp_all(ptr noundef %149, ptr noundef %150)
  br label %154

151:                                              ; preds = %139
  %152 = load ptr, ptr %10, align 8, !tbaa !3
  %153 = load ptr, ptr %8, align 8, !tbaa !67
  call void @get_exp_all(ptr noundef %152, ptr noundef %153)
  br label %154

154:                                              ; preds = %151, %148
  br label %130, !llvm.loop !354

155:                                              ; preds = %130
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  ret void
}

; Function Attrs: nounwind
define internal void @intsort(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !355
  store i32 %1, ptr %4, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  store i32 1, ptr %5, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  br label %8

8:                                                ; preds = %56, %2
  %9 = load i32, ptr %5, align 4, !tbaa !21
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %8
  store i32 0, ptr %5, align 4, !tbaa !21
  store i32 0, ptr %6, align 4, !tbaa !21
  br label %12

12:                                               ; preds = %53, %11
  %13 = load i32, ptr %6, align 4, !tbaa !21
  %14 = load i32, ptr %4, align 4, !tbaa !21
  %15 = sub nsw i32 %14, 1
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8, !tbaa !355
  %19 = load i32, ptr %6, align 4, !tbaa !21
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !21
  %23 = load ptr, ptr %3, align 8, !tbaa !355
  %24 = load i32, ptr %6, align 4, !tbaa !21
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %23, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !21
  %29 = icmp sgt i32 %22, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %17
  %31 = load ptr, ptr %3, align 8, !tbaa !355
  %32 = load i32, ptr %6, align 4, !tbaa !21
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !21
  store i32 %35, ptr %7, align 4, !tbaa !21
  %36 = load ptr, ptr %3, align 8, !tbaa !355
  %37 = load i32, ptr %6, align 4, !tbaa !21
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %36, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !21
  %42 = load ptr, ptr %3, align 8, !tbaa !355
  %43 = load i32, ptr %6, align 4, !tbaa !21
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %42, i64 %44
  store i32 %41, ptr %45, align 4, !tbaa !21
  %46 = load i32, ptr %7, align 4, !tbaa !21
  %47 = load ptr, ptr %3, align 8, !tbaa !355
  %48 = load i32, ptr %6, align 4, !tbaa !21
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %47, i64 %50
  store i32 %46, ptr %51, align 4, !tbaa !21
  store i32 1, ptr %5, align 4, !tbaa !21
  br label %52

52:                                               ; preds = %30, %17
  br label %53

53:                                               ; preds = %52
  %54 = load i32, ptr %6, align 4, !tbaa !21
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %6, align 4, !tbaa !21
  br label %12, !llvm.loop !356

56:                                               ; preds = %12
  br label %8, !llvm.loop !357

57:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  ret void
}

; Function Attrs: nounwind
define internal signext i32 @cmp_priorities(ptr noundef %0, i32 noundef signext %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8, !tbaa !355
  store i32 %1, ptr %7, align 4, !tbaa !21
  store ptr %2, ptr %8, align 8, !tbaa !355
  store i32 %3, ptr %9, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #9
  store i32 0, ptr %10, align 4, !tbaa !21
  br label %12

12:                                               ; preds = %48, %4
  %13 = load i32, ptr %10, align 4, !tbaa !21
  %14 = load i32, ptr %7, align 4, !tbaa !21
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, ptr %10, align 4, !tbaa !21
  %18 = load i32, ptr %9, align 4, !tbaa !21
  %19 = icmp slt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  br i1 %21, label %22, label %51

22:                                               ; preds = %20
  %23 = load ptr, ptr %6, align 8, !tbaa !355
  %24 = load i32, ptr %10, align 4, !tbaa !21
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !21
  %28 = load ptr, ptr %8, align 8, !tbaa !355
  %29 = load i32, ptr %10, align 4, !tbaa !21
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %28, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !21
  %33 = icmp sgt i32 %27, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 -1, ptr %5, align 4
  store i32 1, ptr %11, align 4
  br label %52

35:                                               ; preds = %22
  %36 = load ptr, ptr %6, align 8, !tbaa !355
  %37 = load i32, ptr %10, align 4, !tbaa !21
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %36, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !21
  %41 = load ptr, ptr %8, align 8, !tbaa !355
  %42 = load i32, ptr %10, align 4, !tbaa !21
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %41, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !21
  %46 = icmp slt i32 %40, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 1, ptr %5, align 4
  store i32 1, ptr %11, align 4
  br label %52

48:                                               ; preds = %35
  %49 = load i32, ptr %10, align 4, !tbaa !21
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %10, align 4, !tbaa !21
  br label %12, !llvm.loop !358

51:                                               ; preds = %20
  store i32 0, ptr %5, align 4
  store i32 1, ptr %11, align 4
  br label %52

52:                                               ; preds = %51, %47, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #9
  %53 = load i32, ptr %5, align 4
  ret i32 %53
}

; Function Attrs: nounwind
define internal signext i32 @cmp_eagerness(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  %11 = load ptr, ptr %4, align 8, !tbaa !3
  %12 = getelementptr inbounds nuw %struct.PNode, ptr %11, i32 0, i32 7
  %13 = getelementptr inbounds nuw %struct.VecPNode, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8, !tbaa !20
  %15 = load ptr, ptr %5, align 8, !tbaa !3
  %16 = getelementptr inbounds nuw %struct.PNode, ptr %15, i32 0, i32 7
  %17 = getelementptr inbounds nuw %struct.VecPNode, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8, !tbaa !20
  %19 = icmp ult i32 %14, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load ptr, ptr %4, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.PNode, ptr %21, i32 0, i32 7
  %23 = getelementptr inbounds nuw %struct.VecPNode, ptr %22, i32 0, i32 0
  %24 = load i32, ptr %23, align 8, !tbaa !20
  br label %30

25:                                               ; preds = %2
  %26 = load ptr, ptr %5, align 8, !tbaa !3
  %27 = getelementptr inbounds nuw %struct.PNode, ptr %26, i32 0, i32 7
  %28 = getelementptr inbounds nuw %struct.VecPNode, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !20
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i32 [ %24, %20 ], [ %29, %25 ]
  store i32 %31, ptr %7, align 4, !tbaa !21
  store i32 0, ptr %6, align 4, !tbaa !21
  br label %32

32:                                               ; preds = %101, %30
  %33 = load i32, ptr %6, align 4, !tbaa !21
  %34 = load i32, ptr %7, align 4, !tbaa !21
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %104

36:                                               ; preds = %32
  %37 = load ptr, ptr %4, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw %struct.PNode, ptr %37, i32 0, i32 7
  %39 = getelementptr inbounds nuw %struct.VecPNode, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = load i32, ptr %6, align 4, !tbaa !21
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !3
  %45 = getelementptr inbounds nuw %struct.PNode, ptr %44, i32 0, i32 19
  %46 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !26
  store ptr %47, ptr %8, align 8, !tbaa !27
  %48 = load ptr, ptr %5, align 8, !tbaa !3
  %49 = getelementptr inbounds nuw %struct.PNode, ptr %48, i32 0, i32 7
  %50 = getelementptr inbounds nuw %struct.VecPNode, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !22
  %52 = load i32, ptr %6, align 4, !tbaa !21
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %51, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !3
  %56 = getelementptr inbounds nuw %struct.PNode, ptr %55, i32 0, i32 19
  %57 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !26
  store ptr %58, ptr %9, align 8, !tbaa !27
  %59 = load i32, ptr %6, align 4, !tbaa !21
  %60 = load ptr, ptr %4, align 8, !tbaa !3
  %61 = getelementptr inbounds nuw %struct.PNode, ptr %60, i32 0, i32 7
  %62 = getelementptr inbounds nuw %struct.VecPNode, ptr %61, i32 0, i32 0
  %63 = load i32, ptr %62, align 8, !tbaa !20
  %64 = sub i32 %63, 1
  %65 = icmp eq i32 %59, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %36
  %67 = load ptr, ptr %4, align 8, !tbaa !3
  %68 = getelementptr inbounds nuw %struct.PNode, ptr %67, i32 0, i32 19
  %69 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !26
  br label %73

71:                                               ; preds = %36
  %72 = load ptr, ptr %8, align 8, !tbaa !27
  br label %73

73:                                               ; preds = %71, %66
  %74 = phi ptr [ %70, %66 ], [ %72, %71 ]
  store ptr %74, ptr %8, align 8, !tbaa !27
  %75 = load i32, ptr %6, align 4, !tbaa !21
  %76 = load ptr, ptr %5, align 8, !tbaa !3
  %77 = getelementptr inbounds nuw %struct.PNode, ptr %76, i32 0, i32 7
  %78 = getelementptr inbounds nuw %struct.VecPNode, ptr %77, i32 0, i32 0
  %79 = load i32, ptr %78, align 8, !tbaa !20
  %80 = sub i32 %79, 1
  %81 = icmp eq i32 %75, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load ptr, ptr %5, align 8, !tbaa !3
  %84 = getelementptr inbounds nuw %struct.PNode, ptr %83, i32 0, i32 19
  %85 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !26
  br label %89

87:                                               ; preds = %73
  %88 = load ptr, ptr %9, align 8, !tbaa !27
  br label %89

89:                                               ; preds = %87, %82
  %90 = phi ptr [ %86, %82 ], [ %88, %87 ]
  store ptr %90, ptr %9, align 8, !tbaa !27
  %91 = load ptr, ptr %8, align 8, !tbaa !27
  %92 = load ptr, ptr %9, align 8, !tbaa !27
  %93 = icmp ugt ptr %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %10, align 4
  br label %105

95:                                               ; preds = %89
  %96 = load ptr, ptr %8, align 8, !tbaa !27
  %97 = load ptr, ptr %9, align 8, !tbaa !27
  %98 = icmp ult ptr %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 1, ptr %3, align 4
  store i32 1, ptr %10, align 4
  br label %105

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100
  %102 = load i32, ptr %6, align 4, !tbaa !21
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %6, align 4, !tbaa !21
  br label %32, !llvm.loop !359

104:                                              ; preds = %32
  store i32 0, ptr %3, align 4
  store i32 1, ptr %10, align 4
  br label %105

105:                                              ; preds = %104, %99, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  %106 = load i32, ptr %3, align 4
  ret i32 %106
}

; Function Attrs: nounwind
define internal void @priority_insert(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !67
  store ptr %1, ptr %4, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  %8 = load ptr, ptr %3, align 8, !tbaa !67
  %9 = getelementptr inbounds nuw %struct.StackPNode, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !336
  %11 = load ptr, ptr %3, align 8, !tbaa !67
  %12 = getelementptr inbounds nuw %struct.StackPNode, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !334
  %14 = icmp eq ptr %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 8, !tbaa !67
  %17 = load ptr, ptr %4, align 8, !tbaa !3
  %18 = call ptr @stack_push_internal(ptr noundef %16, ptr noundef %17)
  br label %25

19:                                               ; preds = %2
  %20 = load ptr, ptr %4, align 8, !tbaa !3
  %21 = load ptr, ptr %3, align 8, !tbaa !67
  %22 = getelementptr inbounds nuw %struct.StackPNode, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !336
  %24 = getelementptr inbounds nuw ptr, ptr %23, i32 1
  store ptr %24, ptr %22, align 8, !tbaa !336
  store ptr %20, ptr %23, align 8, !tbaa !3
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi ptr [ %18, %15 ], [ %20, %19 ]
  %27 = load ptr, ptr %3, align 8, !tbaa !67
  %28 = getelementptr inbounds nuw %struct.StackPNode, ptr %27, i32 0, i32 0
  %29 = load ptr, ptr %28, align 8, !tbaa !337
  store ptr %29, ptr %6, align 8, !tbaa !96
  %30 = load ptr, ptr %3, align 8, !tbaa !67
  %31 = getelementptr inbounds nuw %struct.StackPNode, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !336
  store ptr %32, ptr %7, align 8, !tbaa !96
  br label %33

33:                                               ; preds = %84, %25
  %34 = load ptr, ptr %7, align 8, !tbaa !96
  %35 = load ptr, ptr %6, align 8, !tbaa !96
  %36 = getelementptr inbounds ptr, ptr %35, i64 1
  %37 = icmp ugt ptr %34, %36
  br i1 %37, label %38, label %87

38:                                               ; preds = %33
  %39 = load ptr, ptr %7, align 8, !tbaa !96
  %40 = getelementptr inbounds ptr, ptr %39, i64 -1
  %41 = load ptr, ptr %40, align 8, !tbaa !3
  %42 = getelementptr inbounds nuw %struct.PNode, ptr %41, i32 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !345
  %44 = load ptr, ptr %7, align 8, !tbaa !96
  %45 = getelementptr inbounds ptr, ptr %44, i64 -2
  %46 = load ptr, ptr %45, align 8, !tbaa !3
  %47 = getelementptr inbounds nuw %struct.PNode, ptr %46, i32 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !345
  %49 = icmp ugt i32 %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %84

51:                                               ; preds = %38
  %52 = load ptr, ptr %7, align 8, !tbaa !96
  %53 = getelementptr inbounds ptr, ptr %52, i64 -1
  %54 = load ptr, ptr %53, align 8, !tbaa !3
  %55 = getelementptr inbounds nuw %struct.PNode, ptr %54, i32 0, i32 8
  %56 = load i32, ptr %55, align 8, !tbaa !345
  %57 = load ptr, ptr %7, align 8, !tbaa !96
  %58 = getelementptr inbounds ptr, ptr %57, i64 -2
  %59 = load ptr, ptr %58, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.PNode, ptr %59, i32 0, i32 8
  %61 = load i32, ptr %60, align 8, !tbaa !345
  %62 = icmp eq i32 %56, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %51
  %64 = load ptr, ptr %7, align 8, !tbaa !96
  %65 = getelementptr inbounds ptr, ptr %64, i64 -1
  %66 = load ptr, ptr %65, align 8, !tbaa !3
  %67 = load ptr, ptr %7, align 8, !tbaa !96
  %68 = getelementptr inbounds ptr, ptr %67, i64 -2
  %69 = load ptr, ptr %68, align 8, !tbaa !3
  %70 = icmp ugt ptr %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %84

72:                                               ; preds = %63, %51
  %73 = load ptr, ptr %7, align 8, !tbaa !96
  %74 = getelementptr inbounds ptr, ptr %73, i64 -1
  %75 = load ptr, ptr %74, align 8, !tbaa !3
  store ptr %75, ptr %5, align 8, !tbaa !3
  %76 = load ptr, ptr %7, align 8, !tbaa !96
  %77 = getelementptr inbounds ptr, ptr %76, i64 -2
  %78 = load ptr, ptr %77, align 8, !tbaa !3
  %79 = load ptr, ptr %7, align 8, !tbaa !96
  %80 = getelementptr inbounds ptr, ptr %79, i64 -1
  store ptr %78, ptr %80, align 8, !tbaa !3
  %81 = load ptr, ptr %5, align 8, !tbaa !3
  %82 = load ptr, ptr %7, align 8, !tbaa !96
  %83 = getelementptr inbounds ptr, ptr %82, i64 -2
  store ptr %81, ptr %83, align 8, !tbaa !3
  br label %84

84:                                               ; preds = %72, %71, %50
  %85 = load ptr, ptr %7, align 8, !tbaa !96
  %86 = getelementptr inbounds ptr, ptr %85, i32 -1
  store ptr %86, ptr %7, align 8, !tbaa !96
  br label %33, !llvm.loop !360

87:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret void
}

declare ptr @stack_push_internal(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
define internal void @get_exp_one_down(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !67
  store ptr %2, ptr %6, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  %8 = load ptr, ptr %6, align 8, !tbaa !67
  %9 = getelementptr inbounds nuw %struct.StackInt, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !341
  %11 = load ptr, ptr %6, align 8, !tbaa !67
  %12 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !338
  %14 = icmp eq ptr %10, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8, !tbaa !67
  %17 = load ptr, ptr %4, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.PNode, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !332
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to ptr
  %22 = call ptr @stack_push_internal(ptr noundef %16, ptr noundef %21)
  br label %33

23:                                               ; preds = %3
  %24 = load ptr, ptr %4, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.PNode, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !332
  %27 = load ptr, ptr %6, align 8, !tbaa !67
  %28 = getelementptr inbounds nuw %struct.StackInt, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !341
  %30 = getelementptr inbounds nuw i32, ptr %29, i32 1
  store ptr %30, ptr %28, align 8, !tbaa !341
  store i32 %26, ptr %29, align 4, !tbaa !21
  %31 = sext i32 %26 to i64
  %32 = inttoptr i64 %31 to ptr
  br label %33

33:                                               ; preds = %23, %15
  %34 = phi ptr [ %22, %15 ], [ %32, %23 ]
  store i32 0, ptr %7, align 4, !tbaa !21
  br label %35

35:                                               ; preds = %66, %33
  %36 = load i32, ptr %7, align 4, !tbaa !21
  %37 = load ptr, ptr %4, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw %struct.PNode, ptr %37, i32 0, i32 7
  %39 = getelementptr inbounds nuw %struct.VecPNode, ptr %38, i32 0, i32 0
  %40 = load i32, ptr %39, align 8, !tbaa !20
  %41 = icmp ult i32 %36, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %35
  %43 = load ptr, ptr %4, align 8, !tbaa !3
  %44 = getelementptr inbounds nuw %struct.PNode, ptr %43, i32 0, i32 7
  %45 = getelementptr inbounds nuw %struct.VecPNode, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !22
  %47 = load i32, ptr %7, align 4, !tbaa !21
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.PNode, ptr %50, i32 0, i32 0
  %52 = load i32, ptr %51, align 8, !tbaa !331
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %42
  %55 = load ptr, ptr %4, align 8, !tbaa !3
  %56 = getelementptr inbounds nuw %struct.PNode, ptr %55, i32 0, i32 7
  %57 = getelementptr inbounds nuw %struct.VecPNode, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !22
  %59 = load i32, ptr %7, align 4, !tbaa !21
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %58, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !3
  %63 = load ptr, ptr %5, align 8, !tbaa !67
  %64 = load ptr, ptr %6, align 8, !tbaa !67
  call void @get_exp_one(ptr noundef %62, ptr noundef %63, ptr noundef %64)
  br label %65

65:                                               ; preds = %54, %42
  br label %66

66:                                               ; preds = %65
  %67 = load i32, ptr %7, align 4, !tbaa !21
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %7, align 4, !tbaa !21
  br label %35, !llvm.loop !361

69:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  ret void
}

; Function Attrs: nounwind
define internal void @get_exp_all(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  %6 = load ptr, ptr %3, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.PNode, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8, !tbaa !331
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !tbaa !67
  %12 = getelementptr inbounds nuw %struct.StackInt, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !341
  %14 = load ptr, ptr %4, align 8, !tbaa !67
  %15 = getelementptr inbounds nuw %struct.StackInt, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !338
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load ptr, ptr %4, align 8, !tbaa !67
  %20 = load ptr, ptr %3, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.PNode, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !332
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to ptr
  %25 = call ptr @stack_push_internal(ptr noundef %19, ptr noundef %24)
  br label %36

26:                                               ; preds = %10
  %27 = load ptr, ptr %3, align 8, !tbaa !3
  %28 = getelementptr inbounds nuw %struct.PNode, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !332
  %30 = load ptr, ptr %4, align 8, !tbaa !67
  %31 = getelementptr inbounds nuw %struct.StackInt, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !341
  %33 = getelementptr inbounds nuw i32, ptr %32, i32 1
  store ptr %33, ptr %31, align 8, !tbaa !341
  store i32 %29, ptr %32, align 4, !tbaa !21
  %34 = sext i32 %29 to i64
  %35 = inttoptr i64 %34 to ptr
  br label %36

36:                                               ; preds = %26, %18
  %37 = phi ptr [ %25, %18 ], [ %35, %26 ]
  br label %38

38:                                               ; preds = %36, %2
  store i32 0, ptr %5, align 4, !tbaa !21
  br label %39

39:                                               ; preds = %58, %38
  %40 = load i32, ptr %5, align 4, !tbaa !21
  %41 = load ptr, ptr %3, align 8, !tbaa !3
  %42 = getelementptr inbounds nuw %struct.PNode, ptr %41, i32 0, i32 7
  %43 = getelementptr inbounds nuw %struct.VecPNode, ptr %42, i32 0, i32 0
  %44 = load i32, ptr %43, align 8, !tbaa !20
  %45 = icmp ult i32 %40, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = load ptr, ptr %3, align 8, !tbaa !3
  %48 = getelementptr inbounds nuw %struct.PNode, ptr %47, i32 0, i32 7
  %49 = getelementptr inbounds nuw %struct.VecPNode, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !22
  %51 = load i32, ptr %5, align 4, !tbaa !21
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !3
  %55 = getelementptr inbounds nuw %struct.PNode, ptr %54, i32 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !165
  %57 = load ptr, ptr %4, align 8, !tbaa !67
  call void @get_exp_all(ptr noundef %56, ptr noundef %57)
  br label %58

58:                                               ; preds = %46
  %59 = load i32, ptr %5, align 4, !tbaa !21
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %5, align 4, !tbaa !21
  br label %39, !llvm.loop !362

61:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  ret void
}

; Function Attrs: nounwind
define internal void @set_add_znode_hash(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.VecZNode, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !67
  store ptr %1, ptr %4, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 40, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  %11 = load ptr, ptr %3, align 8, !tbaa !67
  %12 = getelementptr inbounds nuw %struct.VecZNode, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !261
  store i32 %13, ptr %8, align 4, !tbaa !21
  %14 = load i32, ptr %8, align 4, !tbaa !21
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9
  %17 = load ptr, ptr %4, align 8, !tbaa !188
  %18 = getelementptr inbounds nuw %struct.ZNode, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8, !tbaa !213
  %20 = ptrtoint ptr %19 to i32
  %21 = load i32, ptr %8, align 4, !tbaa !21
  %22 = urem i32 %20, %21
  store i32 %22, ptr %9, align 4, !tbaa !21
  %23 = load i32, ptr %9, align 4, !tbaa !21
  store i32 %23, ptr %6, align 4, !tbaa !21
  store i32 0, ptr %7, align 4, !tbaa !21
  br label %24

24:                                               ; preds = %53, %16
  %25 = load i32, ptr %6, align 4, !tbaa !21
  %26 = load ptr, ptr %3, align 8, !tbaa !67
  %27 = getelementptr inbounds nuw %struct.VecZNode, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8, !tbaa !261
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, ptr %7, align 4, !tbaa !21
  %32 = icmp slt i32 %31, 5
  br label %33

33:                                               ; preds = %30, %24
  %34 = phi i1 [ false, %24 ], [ %32, %30 ]
  br i1 %34, label %35, label %60

35:                                               ; preds = %33
  %36 = load ptr, ptr %3, align 8, !tbaa !67
  %37 = getelementptr inbounds nuw %struct.VecZNode, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !262
  %39 = load i32, ptr %6, align 4, !tbaa !21
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !188
  %43 = icmp ne ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %35
  %45 = load ptr, ptr %4, align 8, !tbaa !188
  %46 = load ptr, ptr %3, align 8, !tbaa !67
  %47 = getelementptr inbounds nuw %struct.VecZNode, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !262
  %49 = load i32, ptr %6, align 4, !tbaa !21
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  store ptr %45, ptr %51, align 8, !tbaa !188
  store i32 1, ptr %10, align 4
  br label %61

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52
  %54 = load i32, ptr %6, align 4, !tbaa !21
  %55 = add nsw i32 %54, 1
  %56 = load i32, ptr %8, align 4, !tbaa !21
  %57 = srem i32 %55, %56
  store i32 %57, ptr %6, align 4, !tbaa !21
  %58 = load i32, ptr %7, align 4, !tbaa !21
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %7, align 4, !tbaa !21
  br label %24, !llvm.loop !363

60:                                               ; preds = %33
  store i32 0, ptr %10, align 4
  br label %61

61:                                               ; preds = %60, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9
  %62 = load i32, ptr %10, align 4
  switch i32 %62, label %121 [
    i32 0, label %63
  ]

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63, %2
  %65 = load i32, ptr %8, align 4, !tbaa !21
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw %struct.VecZNode, ptr %5, i32 0, i32 2
  store ptr null, ptr %68, align 8, !tbaa !262
  %69 = load ptr, ptr %3, align 8, !tbaa !67
  %70 = getelementptr inbounds nuw %struct.VecZNode, ptr %69, i32 0, i32 1
  store i32 2, ptr %70, align 4, !tbaa !364
  br label %86

71:                                               ; preds = %64
  %72 = load ptr, ptr %3, align 8, !tbaa !67
  %73 = getelementptr inbounds nuw %struct.VecZNode, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !262
  %75 = getelementptr inbounds nuw %struct.VecZNode, ptr %5, i32 0, i32 2
  store ptr %74, ptr %75, align 8, !tbaa !262
  %76 = load ptr, ptr %3, align 8, !tbaa !67
  %77 = getelementptr inbounds nuw %struct.VecZNode, ptr %76, i32 0, i32 0
  %78 = load i32, ptr %77, align 8, !tbaa !261
  %79 = getelementptr inbounds nuw %struct.VecZNode, ptr %5, i32 0, i32 0
  store i32 %78, ptr %79, align 8, !tbaa !261
  %80 = load ptr, ptr %3, align 8, !tbaa !67
  %81 = getelementptr inbounds nuw %struct.VecZNode, ptr %80, i32 0, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !364
  %83 = add i32 %82, 2
  %84 = load ptr, ptr %3, align 8, !tbaa !67
  %85 = getelementptr inbounds nuw %struct.VecZNode, ptr %84, i32 0, i32 1
  store i32 %83, ptr %85, align 4, !tbaa !364
  br label %86

86:                                               ; preds = %71, %67
  %87 = load ptr, ptr %3, align 8, !tbaa !67
  %88 = getelementptr inbounds nuw %struct.VecZNode, ptr %87, i32 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !364
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds nuw [0 x i32], ptr @prime2, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !21
  %93 = load ptr, ptr %3, align 8, !tbaa !67
  %94 = getelementptr inbounds nuw %struct.VecZNode, ptr %93, i32 0, i32 0
  store i32 %92, ptr %94, align 8, !tbaa !261
  %95 = load ptr, ptr %3, align 8, !tbaa !67
  %96 = getelementptr inbounds nuw %struct.VecZNode, ptr %95, i32 0, i32 0
  %97 = load i32, ptr %96, align 8, !tbaa !261
  %98 = zext i32 %97 to i64
  %99 = mul i64 %98, 8
  %100 = call noalias ptr @malloc(i64 noundef %99) #10
  %101 = load ptr, ptr %3, align 8, !tbaa !67
  %102 = getelementptr inbounds nuw %struct.VecZNode, ptr %101, i32 0, i32 2
  store ptr %100, ptr %102, align 8, !tbaa !262
  %103 = load ptr, ptr %3, align 8, !tbaa !67
  %104 = getelementptr inbounds nuw %struct.VecZNode, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !262
  %106 = load ptr, ptr %3, align 8, !tbaa !67
  %107 = getelementptr inbounds nuw %struct.VecZNode, ptr %106, i32 0, i32 0
  %108 = load i32, ptr %107, align 8, !tbaa !261
  %109 = zext i32 %108 to i64
  %110 = mul i64 %109, 8
  call void @llvm.memset.p0.i64(ptr align 8 %105, i8 0, i64 %110, i1 false)
  %111 = getelementptr inbounds nuw %struct.VecZNode, ptr %5, i32 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !262
  %113 = icmp ne ptr %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %86
  %115 = load ptr, ptr %3, align 8, !tbaa !67
  call void @set_union_znode(ptr noundef %115, ptr noundef %5)
  %116 = getelementptr inbounds nuw %struct.VecZNode, ptr %5, i32 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !262
  call void @free(ptr noundef %117) #9
  br label %118

118:                                              ; preds = %114, %86
  %119 = load ptr, ptr %3, align 8, !tbaa !67
  %120 = load ptr, ptr %4, align 8, !tbaa !188
  call void @set_add_znode(ptr noundef %119, ptr noundef %120)
  store i32 0, ptr %10, align 4
  br label %121

121:                                              ; preds = %118, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr %5) #9
  %122 = load i32, ptr %10, align 4
  switch i32 %122, label %124 [
    i32 0, label %123
    i32 1, label %123
  ]

123:                                              ; preds = %121, %121
  ret void

124:                                              ; preds = %121
  unreachable
}

; Function Attrs: nounwind
define internal void @set_union_znode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !67
  store ptr %1, ptr %4, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  store i32 0, ptr %5, align 4, !tbaa !21
  br label %6

6:                                                ; preds = %31, %2
  %7 = load i32, ptr %5, align 4, !tbaa !21
  %8 = load ptr, ptr %4, align 8, !tbaa !67
  %9 = getelementptr inbounds nuw %struct.VecZNode, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8, !tbaa !261
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %6
  %13 = load ptr, ptr %4, align 8, !tbaa !67
  %14 = getelementptr inbounds nuw %struct.VecZNode, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !262
  %16 = load i32, ptr %5, align 4, !tbaa !21
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !188
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  %22 = load ptr, ptr %3, align 8, !tbaa !67
  %23 = load ptr, ptr %4, align 8, !tbaa !67
  %24 = getelementptr inbounds nuw %struct.VecZNode, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !262
  %26 = load i32, ptr %5, align 4, !tbaa !21
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !188
  call void @set_add_znode(ptr noundef %22, ptr noundef %29)
  br label %30

30:                                               ; preds = %21, %12
  br label %31

31:                                               ; preds = %30
  %32 = load i32, ptr %5, align 4, !tbaa !21
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %5, align 4, !tbaa !21
  br label %6, !llvm.loop !365

34:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  ret void
}

; Function Attrs: nounwind
define internal ptr @goto_PNode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
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
  %20 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !30
  store ptr %1, ptr %7, align 8, !tbaa !121
  store ptr %2, ptr %8, align 8, !tbaa !3
  store ptr %3, ptr %9, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #9
  store ptr null, ptr %12, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #9
  %21 = load ptr, ptr %9, align 8, !tbaa !72
  %22 = getelementptr inbounds nuw %struct.SNode, ptr %21, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = getelementptr inbounds nuw %struct.D_State, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8, !tbaa !366
  %26 = load ptr, ptr %8, align 8, !tbaa !3
  %27 = getelementptr inbounds nuw %struct.PNode, ptr %26, i32 0, i32 19
  %28 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !54
  %30 = sdiv i32 %29, 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %25, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !28
  %34 = zext i8 %33 to i32
  %35 = load ptr, ptr %8, align 8, !tbaa !3
  %36 = getelementptr inbounds nuw %struct.PNode, ptr %35, i32 0, i32 19
  %37 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 8, !tbaa !54
  %39 = srem i32 %38, 8
  %40 = shl i32 1, %39
  %41 = and i32 %34, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %4
  store ptr null, ptr %5, align 8
  store i32 1, ptr %18, align 4
  br label %392

44:                                               ; preds = %4
  %45 = load ptr, ptr %6, align 8, !tbaa !30
  %46 = getelementptr inbounds nuw %struct.Parser, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !32
  %48 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !367
  %50 = load ptr, ptr %8, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.PNode, ptr %50, i32 0, i32 19
  %52 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %51, i32 0, i32 0
  %53 = load i32, ptr %52, align 8, !tbaa !54
  %54 = load ptr, ptr %9, align 8, !tbaa !72
  %55 = getelementptr inbounds nuw %struct.SNode, ptr %54, i32 0, i32 0
  %56 = load ptr, ptr %55, align 8, !tbaa !73
  %57 = getelementptr inbounds nuw %struct.D_State, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !368
  %59 = sub nsw i32 %53, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, ptr %49, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !151
  %63 = zext i16 %62 to i32
  %64 = sub nsw i32 %63, 1
  store i32 %64, ptr %17, align 4, !tbaa !21
  %65 = load ptr, ptr %6, align 8, !tbaa !30
  %66 = getelementptr inbounds nuw %struct.Parser, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !32
  %68 = getelementptr inbounds nuw %struct.D_ParserTables, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !77
  %70 = load i32, ptr %17, align 4, !tbaa !21
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.D_State, ptr %69, i64 %71
  store ptr %72, ptr %13, align 8, !tbaa !245
  %73 = load ptr, ptr %6, align 8, !tbaa !30
  %74 = load ptr, ptr %13, align 8, !tbaa !245
  %75 = load ptr, ptr %7, align 8, !tbaa !121
  %76 = load ptr, ptr %8, align 8, !tbaa !3
  %77 = getelementptr inbounds nuw %struct.PNode, ptr %76, i32 0, i32 17
  %78 = load ptr, ptr %77, align 8, !tbaa !91
  %79 = load ptr, ptr %8, align 8, !tbaa !3
  %80 = getelementptr inbounds nuw %struct.PNode, ptr %79, i32 0, i32 18
  %81 = load ptr, ptr %80, align 8, !tbaa !92
  %82 = call ptr @add_SNode(ptr noundef %73, ptr noundef %74, ptr noundef %75, ptr noundef %78, ptr noundef %81)
  store ptr %82, ptr %10, align 8, !tbaa !72
  %83 = load ptr, ptr %8, align 8, !tbaa !3
  %84 = load ptr, ptr %10, align 8, !tbaa !72
  %85 = getelementptr inbounds nuw %struct.SNode, ptr %84, i32 0, i32 5
  store ptr %83, ptr %85, align 8, !tbaa !223
  %86 = load ptr, ptr %9, align 8, !tbaa !72
  %87 = load ptr, ptr %10, align 8, !tbaa !72
  %88 = icmp ne ptr %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %44
  %90 = load ptr, ptr %10, align 8, !tbaa !72
  %91 = getelementptr inbounds nuw %struct.SNode, ptr %90, i32 0, i32 4
  %92 = load i32, ptr %91, align 8, !tbaa !288
  %93 = load ptr, ptr %9, align 8, !tbaa !72
  %94 = getelementptr inbounds nuw %struct.SNode, ptr %93, i32 0, i32 4
  %95 = load i32, ptr %94, align 8, !tbaa !288
  %96 = add i32 %95, 1
  %97 = icmp ult i32 %92, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %89
  %99 = load ptr, ptr %9, align 8, !tbaa !72
  %100 = getelementptr inbounds nuw %struct.SNode, ptr %99, i32 0, i32 4
  %101 = load i32, ptr %100, align 8, !tbaa !288
  %102 = add i32 %101, 1
  %103 = load ptr, ptr %10, align 8, !tbaa !72
  %104 = getelementptr inbounds nuw %struct.SNode, ptr %103, i32 0, i32 4
  store i32 %102, ptr %104, align 8, !tbaa !288
  br label %105

105:                                              ; preds = %98, %89, %44
  %106 = load ptr, ptr %10, align 8, !tbaa !72
  %107 = getelementptr inbounds nuw %struct.SNode, ptr %106, i32 0, i32 6
  %108 = load ptr, ptr %8, align 8, !tbaa !3
  %109 = call ptr @set_find_znode(ptr noundef %107, ptr noundef %108)
  store ptr %109, ptr %12, align 8, !tbaa !188
  %110 = load ptr, ptr %12, align 8, !tbaa !188
  %111 = icmp ne ptr %110, null
  br i1 %111, label %266, label %112

112:                                              ; preds = %105
  %113 = load ptr, ptr %10, align 8, !tbaa !72
  %114 = getelementptr inbounds nuw %struct.SNode, ptr %113, i32 0, i32 6
  %115 = load ptr, ptr %6, align 8, !tbaa !30
  %116 = load ptr, ptr %8, align 8, !tbaa !3
  %117 = call ptr @new_ZNode(ptr noundef %115, ptr noundef %116)
  store ptr %117, ptr %12, align 8, !tbaa !188
  call void @set_add_znode(ptr noundef %114, ptr noundef %117)
  br label %118

118:                                              ; preds = %112
  %119 = load ptr, ptr %8, align 8, !tbaa !3
  %120 = getelementptr inbounds nuw %struct.PNode, ptr %119, i32 0, i32 6
  %121 = load i32, ptr %120, align 8, !tbaa !100
  %122 = add i32 %121, 1
  store i32 %122, ptr %120, align 8, !tbaa !100
  br label %123

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123
  store i32 0, ptr %15, align 4, !tbaa !21
  br label %125

125:                                              ; preds = %164, %124
  %126 = load i32, ptr %15, align 4, !tbaa !21
  %127 = load ptr, ptr %10, align 8, !tbaa !72
  %128 = getelementptr inbounds nuw %struct.SNode, ptr %127, i32 0, i32 0
  %129 = load ptr, ptr %128, align 8, !tbaa !73
  %130 = getelementptr inbounds nuw %struct.D_State, ptr %129, i32 0, i32 2
  %131 = getelementptr inbounds nuw %struct.anon.0, ptr %130, i32 0, i32 0
  %132 = load i32, ptr %131, align 8, !tbaa !256
  %133 = icmp ult i32 %126, %132
  br i1 %133, label %134, label %167

134:                                              ; preds = %125
  %135 = load ptr, ptr %10, align 8, !tbaa !72
  %136 = getelementptr inbounds nuw %struct.SNode, ptr %135, i32 0, i32 0
  %137 = load ptr, ptr %136, align 8, !tbaa !73
  %138 = getelementptr inbounds nuw %struct.D_State, ptr %137, i32 0, i32 2
  %139 = getelementptr inbounds nuw %struct.anon.0, ptr %138, i32 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !257
  %141 = load i32, ptr %15, align 4, !tbaa !21
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds ptr, ptr %140, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !195
  %145 = getelementptr inbounds nuw %struct.D_Reduction, ptr %144, i32 0, i32 0
  %146 = load i16, ptr %145, align 8, !tbaa !258
  %147 = icmp ne i16 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %134
  %149 = load ptr, ptr %6, align 8, !tbaa !30
  %150 = load ptr, ptr %12, align 8, !tbaa !188
  %151 = load ptr, ptr %10, align 8, !tbaa !72
  %152 = load ptr, ptr %10, align 8, !tbaa !72
  %153 = getelementptr inbounds nuw %struct.SNode, ptr %152, i32 0, i32 0
  %154 = load ptr, ptr %153, align 8, !tbaa !73
  %155 = getelementptr inbounds nuw %struct.D_State, ptr %154, i32 0, i32 2
  %156 = getelementptr inbounds nuw %struct.anon.0, ptr %155, i32 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !257
  %158 = load i32, ptr %15, align 4, !tbaa !21
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %157, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !195
  %162 = call ptr @add_Reduction(ptr noundef %149, ptr noundef %150, ptr noundef %151, ptr noundef %161)
  br label %163

163:                                              ; preds = %148, %134
  br label %164

164:                                              ; preds = %163
  %165 = load i32, ptr %15, align 4, !tbaa !21
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr %15, align 4, !tbaa !21
  br label %125, !llvm.loop !369

167:                                              ; preds = %125
  %168 = load ptr, ptr %8, align 8, !tbaa !3
  %169 = getelementptr inbounds nuw %struct.PNode, ptr %168, i32 0, i32 5
  %170 = load ptr, ptr %169, align 8, !tbaa !324
  %171 = icmp ne ptr %170, null
  br i1 %171, label %265, label %172

172:                                              ; preds = %167
  store i32 0, ptr %15, align 4, !tbaa !21
  br label %173

173:                                              ; preds = %261, %172
  %174 = load i32, ptr %15, align 4, !tbaa !21
  %175 = load ptr, ptr %10, align 8, !tbaa !72
  %176 = getelementptr inbounds nuw %struct.SNode, ptr %175, i32 0, i32 0
  %177 = load ptr, ptr %176, align 8, !tbaa !73
  %178 = getelementptr inbounds nuw %struct.D_State, ptr %177, i32 0, i32 3
  %179 = getelementptr inbounds nuw %struct.anon.1, ptr %178, i32 0, i32 0
  %180 = load i32, ptr %179, align 8, !tbaa !370
  %181 = icmp ult i32 %174, %180
  br i1 %181, label %182, label %264

182:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 8, ptr %19) #9
  %183 = load ptr, ptr %10, align 8, !tbaa !72
  %184 = getelementptr inbounds nuw %struct.SNode, ptr %183, i32 0, i32 0
  %185 = load ptr, ptr %184, align 8, !tbaa !73
  %186 = getelementptr inbounds nuw %struct.D_State, ptr %185, i32 0, i32 3
  %187 = getelementptr inbounds nuw %struct.anon.1, ptr %186, i32 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !371
  %189 = load i32, ptr %15, align 4, !tbaa !21
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.D_RightEpsilonHint, ptr %188, i64 %190
  store ptr %191, ptr %19, align 8, !tbaa !372
  %192 = load ptr, ptr %6, align 8, !tbaa !30
  %193 = load ptr, ptr %19, align 8, !tbaa !372
  %194 = getelementptr inbounds nuw %struct.D_RightEpsilonHint, ptr %193, i32 0, i32 1
  %195 = load i16, ptr %194, align 2, !tbaa !373
  %196 = zext i16 %195 to i32
  %197 = load ptr, ptr %10, align 8, !tbaa !72
  %198 = getelementptr inbounds nuw %struct.SNode, ptr %197, i32 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !78
  %200 = load ptr, ptr %10, align 8, !tbaa !72
  %201 = getelementptr inbounds nuw %struct.SNode, ptr %200, i32 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !79
  %203 = call ptr @find_SNode(ptr noundef %192, i32 noundef signext %196, ptr noundef %199, ptr noundef %202)
  store ptr %203, ptr %11, align 8, !tbaa !72
  %204 = load ptr, ptr %11, align 8, !tbaa !72
  %205 = icmp ne ptr %204, null
  br i1 %205, label %207, label %206

206:                                              ; preds = %182
  store i32 9, ptr %18, align 4
  br label %258

207:                                              ; preds = %182
  store i32 0, ptr %16, align 4, !tbaa !21
  br label %208

208:                                              ; preds = %254, %207
  %209 = load i32, ptr %16, align 4, !tbaa !21
  %210 = load ptr, ptr %11, align 8, !tbaa !72
  %211 = getelementptr inbounds nuw %struct.SNode, ptr %210, i32 0, i32 6
  %212 = getelementptr inbounds nuw %struct.VecZNode, ptr %211, i32 0, i32 0
  %213 = load i32, ptr %212, align 8, !tbaa !211
  %214 = icmp ult i32 %209, %213
  br i1 %214, label %215, label %257

215:                                              ; preds = %208
  %216 = load ptr, ptr %11, align 8, !tbaa !72
  %217 = getelementptr inbounds nuw %struct.SNode, ptr %216, i32 0, i32 6
  %218 = getelementptr inbounds nuw %struct.VecZNode, ptr %217, i32 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !212
  %220 = load i32, ptr %16, align 4, !tbaa !21
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds ptr, ptr %219, i64 %221
  %223 = load ptr, ptr %222, align 8, !tbaa !188
  %224 = icmp ne ptr %223, null
  br i1 %224, label %225, label %253

225:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 8, ptr %20) #9
  %226 = load ptr, ptr %6, align 8, !tbaa !30
  %227 = load ptr, ptr %11, align 8, !tbaa !72
  %228 = getelementptr inbounds nuw %struct.SNode, ptr %227, i32 0, i32 6
  %229 = getelementptr inbounds nuw %struct.VecZNode, ptr %228, i32 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !212
  %231 = load i32, ptr %16, align 4, !tbaa !21
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds ptr, ptr %230, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !188
  %235 = load ptr, ptr %11, align 8, !tbaa !72
  %236 = load ptr, ptr %19, align 8, !tbaa !372
  %237 = getelementptr inbounds nuw %struct.D_RightEpsilonHint, ptr %236, i32 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !375
  %239 = call ptr @add_Reduction(ptr noundef %226, ptr noundef %234, ptr noundef %235, ptr noundef %238)
  store ptr %239, ptr %20, align 8, !tbaa !174
  %240 = load ptr, ptr %20, align 8, !tbaa !174
  %241 = icmp ne ptr %240, null
  br i1 %241, label %242, label %252

242:                                              ; preds = %225
  %243 = load ptr, ptr %10, align 8, !tbaa !72
  %244 = load ptr, ptr %20, align 8, !tbaa !174
  %245 = getelementptr inbounds nuw %struct.Reduction, ptr %244, i32 0, i32 3
  store ptr %243, ptr %245, align 8, !tbaa !274
  %246 = load ptr, ptr %19, align 8, !tbaa !372
  %247 = getelementptr inbounds nuw %struct.D_RightEpsilonHint, ptr %246, i32 0, i32 0
  %248 = load i16, ptr %247, align 8, !tbaa !376
  %249 = zext i16 %248 to i32
  %250 = load ptr, ptr %20, align 8, !tbaa !174
  %251 = getelementptr inbounds nuw %struct.Reduction, ptr %250, i32 0, i32 4
  store i32 %249, ptr %251, align 8, !tbaa !275
  br label %252

252:                                              ; preds = %242, %225
  call void @llvm.lifetime.end.p0(i64 8, ptr %20) #9
  br label %253

253:                                              ; preds = %252, %215
  br label %254

254:                                              ; preds = %253
  %255 = load i32, ptr %16, align 4, !tbaa !21
  %256 = add nsw i32 %255, 1
  store i32 %256, ptr %16, align 4, !tbaa !21
  br label %208, !llvm.loop !377

257:                                              ; preds = %208
  store i32 0, ptr %18, align 4
  br label %258

258:                                              ; preds = %257, %206
  call void @llvm.lifetime.end.p0(i64 8, ptr %19) #9
  %259 = load i32, ptr %18, align 4
  switch i32 %259, label %394 [
    i32 0, label %260
    i32 9, label %261
  ]

260:                                              ; preds = %258
  br label %261

261:                                              ; preds = %260, %258
  %262 = load i32, ptr %15, align 4, !tbaa !21
  %263 = add nsw i32 %262, 1
  store i32 %263, ptr %15, align 4, !tbaa !21
  br label %173, !llvm.loop !378

264:                                              ; preds = %173
  br label %265

265:                                              ; preds = %264, %167
  br label %266

266:                                              ; preds = %265, %105
  store i32 0, ptr %14, align 4, !tbaa !21
  br label %267

267:                                              ; preds = %287, %266
  %268 = load i32, ptr %14, align 4, !tbaa !21
  %269 = load ptr, ptr %12, align 8, !tbaa !188
  %270 = getelementptr inbounds nuw %struct.ZNode, ptr %269, i32 0, i32 1
  %271 = getelementptr inbounds nuw %struct.VecSNode, ptr %270, i32 0, i32 0
  %272 = load i32, ptr %271, align 8, !tbaa !266
  %273 = icmp ult i32 %268, %272
  br i1 %273, label %274, label %290

274:                                              ; preds = %267
  %275 = load ptr, ptr %12, align 8, !tbaa !188
  %276 = getelementptr inbounds nuw %struct.ZNode, ptr %275, i32 0, i32 1
  %277 = getelementptr inbounds nuw %struct.VecSNode, ptr %276, i32 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !267
  %279 = load i32, ptr %14, align 4, !tbaa !21
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds ptr, ptr %278, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !72
  %283 = load ptr, ptr %9, align 8, !tbaa !72
  %284 = icmp eq ptr %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %274
  br label %290

286:                                              ; preds = %274
  br label %287

287:                                              ; preds = %286
  %288 = load i32, ptr %14, align 4, !tbaa !21
  %289 = add nsw i32 %288, 1
  store i32 %289, ptr %14, align 4, !tbaa !21
  br label %267, !llvm.loop !379

290:                                              ; preds = %285, %267
  %291 = load i32, ptr %14, align 4, !tbaa !21
  %292 = load ptr, ptr %12, align 8, !tbaa !188
  %293 = getelementptr inbounds nuw %struct.ZNode, ptr %292, i32 0, i32 1
  %294 = getelementptr inbounds nuw %struct.VecSNode, ptr %293, i32 0, i32 0
  %295 = load i32, ptr %294, align 8, !tbaa !266
  %296 = icmp uge i32 %291, %295
  br i1 %296, label %297, label %390

297:                                              ; preds = %290
  br label %298

298:                                              ; preds = %297
  %299 = load ptr, ptr %12, align 8, !tbaa !188
  %300 = getelementptr inbounds nuw %struct.ZNode, ptr %299, i32 0, i32 1
  %301 = getelementptr inbounds nuw %struct.VecSNode, ptr %300, i32 0, i32 2
  %302 = load ptr, ptr %301, align 8, !tbaa !267
  %303 = icmp ne ptr %302, null
  br i1 %303, label %320, label %304

304:                                              ; preds = %298
  %305 = load ptr, ptr %9, align 8, !tbaa !72
  %306 = load ptr, ptr %12, align 8, !tbaa !188
  %307 = getelementptr inbounds nuw %struct.ZNode, ptr %306, i32 0, i32 1
  %308 = getelementptr inbounds nuw %struct.VecSNode, ptr %307, i32 0, i32 3
  %309 = getelementptr inbounds [3 x ptr], ptr %308, i64 0, i64 0
  %310 = load ptr, ptr %12, align 8, !tbaa !188
  %311 = getelementptr inbounds nuw %struct.ZNode, ptr %310, i32 0, i32 1
  %312 = getelementptr inbounds nuw %struct.VecSNode, ptr %311, i32 0, i32 2
  store ptr %309, ptr %312, align 8, !tbaa !267
  %313 = load ptr, ptr %12, align 8, !tbaa !188
  %314 = getelementptr inbounds nuw %struct.ZNode, ptr %313, i32 0, i32 1
  %315 = getelementptr inbounds nuw %struct.VecSNode, ptr %314, i32 0, i32 0
  %316 = load i32, ptr %315, align 8, !tbaa !266
  %317 = add i32 %316, 1
  store i32 %317, ptr %315, align 8, !tbaa !266
  %318 = zext i32 %316 to i64
  %319 = getelementptr inbounds nuw ptr, ptr %309, i64 %318
  store ptr %305, ptr %319, align 8, !tbaa !72
  br label %377

320:                                              ; preds = %298
  %321 = load ptr, ptr %12, align 8, !tbaa !188
  %322 = getelementptr inbounds nuw %struct.ZNode, ptr %321, i32 0, i32 1
  %323 = getelementptr inbounds nuw %struct.VecSNode, ptr %322, i32 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !267
  %325 = load ptr, ptr %12, align 8, !tbaa !188
  %326 = getelementptr inbounds nuw %struct.ZNode, ptr %325, i32 0, i32 1
  %327 = getelementptr inbounds nuw %struct.VecSNode, ptr %326, i32 0, i32 3
  %328 = getelementptr inbounds [3 x ptr], ptr %327, i64 0, i64 0
  %329 = icmp eq ptr %324, %328
  br i1 %329, label %330, label %350

330:                                              ; preds = %320
  %331 = load ptr, ptr %12, align 8, !tbaa !188
  %332 = getelementptr inbounds nuw %struct.ZNode, ptr %331, i32 0, i32 1
  %333 = getelementptr inbounds nuw %struct.VecSNode, ptr %332, i32 0, i32 0
  %334 = load i32, ptr %333, align 8, !tbaa !266
  %335 = icmp ult i32 %334, 3
  br i1 %335, label %336, label %349

336:                                              ; preds = %330
  %337 = load ptr, ptr %9, align 8, !tbaa !72
  %338 = load ptr, ptr %12, align 8, !tbaa !188
  %339 = getelementptr inbounds nuw %struct.ZNode, ptr %338, i32 0, i32 1
  %340 = getelementptr inbounds nuw %struct.VecSNode, ptr %339, i32 0, i32 2
  %341 = load ptr, ptr %340, align 8, !tbaa !267
  %342 = load ptr, ptr %12, align 8, !tbaa !188
  %343 = getelementptr inbounds nuw %struct.ZNode, ptr %342, i32 0, i32 1
  %344 = getelementptr inbounds nuw %struct.VecSNode, ptr %343, i32 0, i32 0
  %345 = load i32, ptr %344, align 8, !tbaa !266
  %346 = add i32 %345, 1
  store i32 %346, ptr %344, align 8, !tbaa !266
  %347 = zext i32 %345 to i64
  %348 = getelementptr inbounds nuw ptr, ptr %341, i64 %347
  store ptr %337, ptr %348, align 8, !tbaa !72
  br label %377

349:                                              ; preds = %330
  br label %371

350:                                              ; preds = %320
  %351 = load ptr, ptr %12, align 8, !tbaa !188
  %352 = getelementptr inbounds nuw %struct.ZNode, ptr %351, i32 0, i32 1
  %353 = getelementptr inbounds nuw %struct.VecSNode, ptr %352, i32 0, i32 0
  %354 = load i32, ptr %353, align 8, !tbaa !266
  %355 = and i32 %354, 7
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %370

357:                                              ; preds = %350
  %358 = load ptr, ptr %9, align 8, !tbaa !72
  %359 = load ptr, ptr %12, align 8, !tbaa !188
  %360 = getelementptr inbounds nuw %struct.ZNode, ptr %359, i32 0, i32 1
  %361 = getelementptr inbounds nuw %struct.VecSNode, ptr %360, i32 0, i32 2
  %362 = load ptr, ptr %361, align 8, !tbaa !267
  %363 = load ptr, ptr %12, align 8, !tbaa !188
  %364 = getelementptr inbounds nuw %struct.ZNode, ptr %363, i32 0, i32 1
  %365 = getelementptr inbounds nuw %struct.VecSNode, ptr %364, i32 0, i32 0
  %366 = load i32, ptr %365, align 8, !tbaa !266
  %367 = add i32 %366, 1
  store i32 %367, ptr %365, align 8, !tbaa !266
  %368 = zext i32 %366 to i64
  %369 = getelementptr inbounds nuw ptr, ptr %362, i64 %368
  store ptr %358, ptr %369, align 8, !tbaa !72
  br label %377

370:                                              ; preds = %350
  br label %371

371:                                              ; preds = %370, %349
  br label %372

372:                                              ; preds = %371
  %373 = load ptr, ptr %12, align 8, !tbaa !188
  %374 = getelementptr inbounds nuw %struct.ZNode, ptr %373, i32 0, i32 1
  %375 = load ptr, ptr %9, align 8, !tbaa !72
  call void @vec_add_internal(ptr noundef %374, ptr noundef %375)
  br label %376

376:                                              ; preds = %372
  br label %377

377:                                              ; preds = %376, %357, %336, %304
  %378 = load ptr, ptr %10, align 8, !tbaa !72
  %379 = load ptr, ptr %9, align 8, !tbaa !72
  %380 = icmp ne ptr %378, %379
  br i1 %380, label %381, label %389

381:                                              ; preds = %377
  br label %382

382:                                              ; preds = %381
  %383 = load ptr, ptr %9, align 8, !tbaa !72
  %384 = getelementptr inbounds nuw %struct.SNode, ptr %383, i32 0, i32 7
  %385 = load i32, ptr %384, align 8, !tbaa !145
  %386 = add i32 %385, 1
  store i32 %386, ptr %384, align 8, !tbaa !145
  br label %387

387:                                              ; preds = %382
  br label %388

388:                                              ; preds = %387
  br label %389

389:                                              ; preds = %388, %377
  br label %390

390:                                              ; preds = %389, %290
  %391 = load ptr, ptr %10, align 8, !tbaa !72
  store ptr %391, ptr %5, align 8
  store i32 1, ptr %18, align 4
  br label %392

392:                                              ; preds = %390, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  %393 = load ptr, ptr %5, align 8
  ret ptr %393

394:                                              ; preds = %258
  unreachable
}

; Function Attrs: nounwind
define internal void @build_paths(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !188
  store ptr %1, ptr %5, align 8, !tbaa !67
  store i32 %2, ptr %6, align 4, !tbaa !21
  %7 = load i32, ptr %6, align 4, !tbaa !21
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %85

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %10
  %12 = load ptr, ptr %5, align 8, !tbaa !67
  %13 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !273
  %15 = icmp ne ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %5, align 8, !tbaa !67
  %18 = call ptr @new_VecZNode(ptr noundef %17, i32 noundef signext 0, i32 noundef signext -1)
  %19 = load ptr, ptr %5, align 8, !tbaa !67
  %20 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %19, i32 0, i32 3
  %21 = getelementptr inbounds [3 x ptr], ptr %20, i64 0, i64 0
  %22 = load ptr, ptr %5, align 8, !tbaa !67
  %23 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %22, i32 0, i32 2
  store ptr %21, ptr %23, align 8, !tbaa !273
  %24 = load ptr, ptr %5, align 8, !tbaa !67
  %25 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 8, !tbaa !271
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !271
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds nuw ptr, ptr %21, i64 %28
  store ptr %18, ptr %29, align 8, !tbaa !67
  br label %80

30:                                               ; preds = %11
  %31 = load ptr, ptr %5, align 8, !tbaa !67
  %32 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !273
  %34 = load ptr, ptr %5, align 8, !tbaa !67
  %35 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %34, i32 0, i32 3
  %36 = getelementptr inbounds [3 x ptr], ptr %35, i64 0, i64 0
  %37 = icmp eq ptr %33, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %30
  %39 = load ptr, ptr %5, align 8, !tbaa !67
  %40 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %39, i32 0, i32 0
  %41 = load i32, ptr %40, align 8, !tbaa !271
  %42 = icmp ult i32 %41, 3
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load ptr, ptr %5, align 8, !tbaa !67
  %45 = call ptr @new_VecZNode(ptr noundef %44, i32 noundef signext 0, i32 noundef signext -1)
  %46 = load ptr, ptr %5, align 8, !tbaa !67
  %47 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !273
  %49 = load ptr, ptr %5, align 8, !tbaa !67
  %50 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8, !tbaa !271
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 8, !tbaa !271
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds nuw ptr, ptr %48, i64 %53
  store ptr %45, ptr %54, align 8, !tbaa !67
  br label %80

55:                                               ; preds = %38
  br label %75

56:                                               ; preds = %30
  %57 = load ptr, ptr %5, align 8, !tbaa !67
  %58 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %57, i32 0, i32 0
  %59 = load i32, ptr %58, align 8, !tbaa !271
  %60 = and i32 %59, 7
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load ptr, ptr %5, align 8, !tbaa !67
  %64 = call ptr @new_VecZNode(ptr noundef %63, i32 noundef signext 0, i32 noundef signext -1)
  %65 = load ptr, ptr %5, align 8, !tbaa !67
  %66 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !273
  %68 = load ptr, ptr %5, align 8, !tbaa !67
  %69 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 8, !tbaa !271
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 8, !tbaa !271
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds nuw ptr, ptr %67, i64 %72
  store ptr %64, ptr %73, align 8, !tbaa !67
  br label %80

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74, %55
  br label %76

76:                                               ; preds = %75
  %77 = load ptr, ptr %5, align 8, !tbaa !67
  %78 = load ptr, ptr %5, align 8, !tbaa !67
  %79 = call ptr @new_VecZNode(ptr noundef %78, i32 noundef signext 0, i32 noundef signext -1)
  call void @vec_add_internal(ptr noundef %77, ptr noundef %79)
  br label %80

80:                                               ; preds = %76, %62, %43, %16
  %81 = load ptr, ptr %4, align 8, !tbaa !188
  %82 = load ptr, ptr %5, align 8, !tbaa !67
  %83 = load i32, ptr %6, align 4, !tbaa !21
  %84 = load i32, ptr %6, align 4, !tbaa !21
  call void @build_paths_internal(ptr noundef %81, ptr noundef %82, i32 noundef signext 0, i32 noundef signext %83, i32 noundef signext %84)
  br label %85

85:                                               ; preds = %80, %9
  ret void
}

; Function Attrs: nounwind
define internal signext i32 @check_path_priorities_internal(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  store i32 0, ptr %4, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9
  store i32 0, ptr %9, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #9
  %16 = load ptr, ptr %3, align 8, !tbaa !67
  %17 = getelementptr inbounds nuw %struct.VecZNode, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8, !tbaa !261
  %19 = load i32, ptr %4, align 4, !tbaa !21
  %20 = add nsw i32 %19, 1
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  store i32 1, ptr %15, align 4
  br label %316

23:                                               ; preds = %1
  %24 = load ptr, ptr %3, align 8, !tbaa !67
  %25 = getelementptr inbounds nuw %struct.VecZNode, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !262
  %27 = load i32, ptr %4, align 4, !tbaa !21
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !188
  %31 = getelementptr inbounds nuw %struct.ZNode, ptr %30, i32 0, i32 0
  %32 = load ptr, ptr %31, align 8, !tbaa !213
  store ptr %32, ptr %13, align 8, !tbaa !3
  %33 = load ptr, ptr %13, align 8, !tbaa !3
  %34 = getelementptr inbounds nuw %struct.PNode, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !277
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %84, label %37

37:                                               ; preds = %23
  store i32 1, ptr %4, align 4, !tbaa !21
  %38 = load ptr, ptr %3, align 8, !tbaa !67
  %39 = getelementptr inbounds nuw %struct.VecZNode, ptr %38, i32 0, i32 0
  %40 = load i32, ptr %39, align 8, !tbaa !261
  %41 = load i32, ptr %4, align 4, !tbaa !21
  %42 = add nsw i32 %41, 1
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, ptr %2, align 4
  store i32 1, ptr %15, align 4
  br label %316

45:                                               ; preds = %37
  %46 = load ptr, ptr %3, align 8, !tbaa !67
  %47 = getelementptr inbounds nuw %struct.VecZNode, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !262
  %49 = load i32, ptr %4, align 4, !tbaa !21
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !188
  %53 = getelementptr inbounds nuw %struct.ZNode, ptr %52, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8, !tbaa !213
  store ptr %54, ptr %14, align 8, !tbaa !3
  %55 = load ptr, ptr %14, align 8, !tbaa !3
  %56 = getelementptr inbounds nuw %struct.PNode, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !277
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %45
  store i32 0, ptr %2, align 4
  store i32 1, ptr %15, align 4
  br label %316

60:                                               ; preds = %45
  %61 = load ptr, ptr %13, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.PNode, ptr %61, i32 0, i32 0
  %63 = load i32, ptr %62, align 8, !tbaa !331
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load ptr, ptr %14, align 8, !tbaa !3
  %67 = getelementptr inbounds nuw %struct.PNode, ptr %66, i32 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !302
  %69 = load ptr, ptr %14, align 8, !tbaa !3
  %70 = getelementptr inbounds nuw %struct.PNode, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !277
  %72 = load ptr, ptr %13, align 8, !tbaa !3
  %73 = getelementptr inbounds nuw %struct.PNode, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !332
  %75 = load ptr, ptr %13, align 8, !tbaa !3
  %76 = getelementptr inbounds nuw %struct.PNode, ptr %75, i32 0, i32 0
  %77 = load i32, ptr %76, align 8, !tbaa !331
  %78 = call signext i32 @check_child(i32 noundef signext %68, i32 noundef signext %71, i32 noundef signext %74, i32 noundef signext %77, i32 noundef signext 0, i32 noundef signext 1)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %65
  store i32 -1, ptr %2, align 4
  store i32 1, ptr %15, align 4
  br label %316

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %60
  %83 = load ptr, ptr %14, align 8, !tbaa !3
  store ptr %83, ptr %13, align 8, !tbaa !3
  br label %84

84:                                               ; preds = %82, %23
  %85 = load ptr, ptr %3, align 8, !tbaa !67
  %86 = getelementptr inbounds nuw %struct.VecZNode, ptr %85, i32 0, i32 0
  %87 = load i32, ptr %86, align 8, !tbaa !261
  %88 = load i32, ptr %4, align 4, !tbaa !21
  %89 = add nsw i32 %88, 1
  %90 = icmp ugt i32 %87, %89
  br i1 %90, label %91, label %197

91:                                               ; preds = %84
  %92 = load ptr, ptr %3, align 8, !tbaa !67
  %93 = getelementptr inbounds nuw %struct.VecZNode, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !262
  %95 = load i32, ptr %4, align 4, !tbaa !21
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %94, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !188
  %100 = getelementptr inbounds nuw %struct.ZNode, ptr %99, i32 0, i32 0
  %101 = load ptr, ptr %100, align 8, !tbaa !213
  store ptr %101, ptr %14, align 8, !tbaa !3
  %102 = load ptr, ptr %3, align 8, !tbaa !67
  %103 = getelementptr inbounds nuw %struct.VecZNode, ptr %102, i32 0, i32 0
  %104 = load i32, ptr %103, align 8, !tbaa !261
  %105 = load i32, ptr %4, align 4, !tbaa !21
  %106 = add nsw i32 %105, 2
  %107 = icmp ugt i32 %104, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %91
  %109 = load ptr, ptr %13, align 8, !tbaa !3
  %110 = load ptr, ptr %14, align 8, !tbaa !3
  %111 = load ptr, ptr %3, align 8, !tbaa !67
  %112 = getelementptr inbounds nuw %struct.VecZNode, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !262
  %114 = load i32, ptr %4, align 4, !tbaa !21
  %115 = add nsw i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %113, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !188
  %119 = getelementptr inbounds nuw %struct.ZNode, ptr %118, i32 0, i32 0
  %120 = load ptr, ptr %119, align 8, !tbaa !213
  %121 = call signext i32 @check_assoc_priority(ptr noundef %109, ptr noundef %110, ptr noundef %120)
  store i32 %121, ptr %2, align 4
  store i32 1, ptr %15, align 4
  br label %316

122:                                              ; preds = %91
  %123 = load ptr, ptr %3, align 8, !tbaa !67
  %124 = getelementptr inbounds nuw %struct.VecZNode, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !262
  %126 = load i32, ptr %4, align 4, !tbaa !21
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds ptr, ptr %125, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !188
  store ptr %130, ptr %10, align 8, !tbaa !188
  store i32 0, ptr %6, align 4, !tbaa !21
  br label %131

131:                                              ; preds = %185, %122
  %132 = load i32, ptr %6, align 4, !tbaa !21
  %133 = load ptr, ptr %10, align 8, !tbaa !188
  %134 = getelementptr inbounds nuw %struct.ZNode, ptr %133, i32 0, i32 1
  %135 = getelementptr inbounds nuw %struct.VecSNode, ptr %134, i32 0, i32 0
  %136 = load i32, ptr %135, align 8, !tbaa !266
  %137 = icmp ult i32 %132, %136
  br i1 %137, label %138, label %188

138:                                              ; preds = %131
  store i32 0, ptr %5, align 4, !tbaa !21
  br label %139

139:                                              ; preds = %181, %138
  %140 = load i32, ptr %5, align 4, !tbaa !21
  %141 = load ptr, ptr %10, align 8, !tbaa !188
  %142 = getelementptr inbounds nuw %struct.ZNode, ptr %141, i32 0, i32 1
  %143 = getelementptr inbounds nuw %struct.VecSNode, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !267
  %145 = load i32, ptr %6, align 4, !tbaa !21
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds ptr, ptr %144, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !72
  %149 = getelementptr inbounds nuw %struct.SNode, ptr %148, i32 0, i32 6
  %150 = getelementptr inbounds nuw %struct.VecZNode, ptr %149, i32 0, i32 0
  %151 = load i32, ptr %150, align 8, !tbaa !211
  %152 = icmp ult i32 %140, %151
  br i1 %152, label %153, label %184

153:                                              ; preds = %139
  store i32 1, ptr %9, align 4, !tbaa !21
  %154 = load ptr, ptr %10, align 8, !tbaa !188
  %155 = getelementptr inbounds nuw %struct.ZNode, ptr %154, i32 0, i32 1
  %156 = getelementptr inbounds nuw %struct.VecSNode, ptr %155, i32 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !267
  %158 = load i32, ptr %6, align 4, !tbaa !21
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %157, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !72
  %162 = getelementptr inbounds nuw %struct.SNode, ptr %161, i32 0, i32 6
  %163 = getelementptr inbounds nuw %struct.VecZNode, ptr %162, i32 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !212
  %165 = load i32, ptr %5, align 4, !tbaa !21
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds ptr, ptr %164, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !188
  store ptr %168, ptr %11, align 8, !tbaa !188
  %169 = load ptr, ptr %11, align 8, !tbaa !188
  %170 = icmp ne ptr %169, null
  br i1 %170, label %171, label %180

171:                                              ; preds = %153
  %172 = load ptr, ptr %13, align 8, !tbaa !3
  %173 = load ptr, ptr %14, align 8, !tbaa !3
  %174 = load ptr, ptr %11, align 8, !tbaa !188
  %175 = getelementptr inbounds nuw %struct.ZNode, ptr %174, i32 0, i32 0
  %176 = load ptr, ptr %175, align 8, !tbaa !213
  %177 = call signext i32 @check_assoc_priority(ptr noundef %172, ptr noundef %173, ptr noundef %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %171
  store i32 0, ptr %2, align 4
  store i32 1, ptr %15, align 4
  br label %316

180:                                              ; preds = %171, %153
  br label %181

181:                                              ; preds = %180
  %182 = load i32, ptr %5, align 4, !tbaa !21
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %5, align 4, !tbaa !21
  br label %139, !llvm.loop !380

184:                                              ; preds = %139
  br label %185

185:                                              ; preds = %184
  %186 = load i32, ptr %6, align 4, !tbaa !21
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %6, align 4, !tbaa !21
  br label %131, !llvm.loop !381

188:                                              ; preds = %131
  %189 = load i32, ptr %9, align 4, !tbaa !21
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %13, align 8, !tbaa !3
  %193 = load ptr, ptr %14, align 8, !tbaa !3
  %194 = call signext i32 @check_assoc_priority(ptr noundef %192, ptr noundef %193, ptr noundef null)
  store i32 %194, ptr %2, align 4
  store i32 1, ptr %15, align 4
  br label %316

195:                                              ; preds = %188
  br label %196

196:                                              ; preds = %195
  br label %315

197:                                              ; preds = %84
  %198 = load ptr, ptr %3, align 8, !tbaa !67
  %199 = getelementptr inbounds nuw %struct.VecZNode, ptr %198, i32 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !262
  %201 = load i32, ptr %4, align 4, !tbaa !21
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds ptr, ptr %200, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !188
  store ptr %204, ptr %10, align 8, !tbaa !188
  store i32 0, ptr %6, align 4, !tbaa !21
  br label %205

205:                                              ; preds = %311, %197
  %206 = load i32, ptr %6, align 4, !tbaa !21
  %207 = load ptr, ptr %10, align 8, !tbaa !188
  %208 = getelementptr inbounds nuw %struct.ZNode, ptr %207, i32 0, i32 1
  %209 = getelementptr inbounds nuw %struct.VecSNode, ptr %208, i32 0, i32 0
  %210 = load i32, ptr %209, align 8, !tbaa !266
  %211 = icmp ult i32 %206, %210
  br i1 %211, label %212, label %314

212:                                              ; preds = %205
  store i32 0, ptr %5, align 4, !tbaa !21
  br label %213

213:                                              ; preds = %307, %212
  %214 = load i32, ptr %5, align 4, !tbaa !21
  %215 = load ptr, ptr %10, align 8, !tbaa !188
  %216 = getelementptr inbounds nuw %struct.ZNode, ptr %215, i32 0, i32 1
  %217 = getelementptr inbounds nuw %struct.VecSNode, ptr %216, i32 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !267
  %219 = load i32, ptr %6, align 4, !tbaa !21
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds ptr, ptr %218, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !72
  %223 = getelementptr inbounds nuw %struct.SNode, ptr %222, i32 0, i32 6
  %224 = getelementptr inbounds nuw %struct.VecZNode, ptr %223, i32 0, i32 0
  %225 = load i32, ptr %224, align 8, !tbaa !211
  %226 = icmp ult i32 %214, %225
  br i1 %226, label %227, label %310

227:                                              ; preds = %213
  %228 = load ptr, ptr %10, align 8, !tbaa !188
  %229 = getelementptr inbounds nuw %struct.ZNode, ptr %228, i32 0, i32 1
  %230 = getelementptr inbounds nuw %struct.VecSNode, ptr %229, i32 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !267
  %232 = load i32, ptr %6, align 4, !tbaa !21
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds ptr, ptr %231, i64 %233
  %235 = load ptr, ptr %234, align 8, !tbaa !72
  %236 = getelementptr inbounds nuw %struct.SNode, ptr %235, i32 0, i32 6
  %237 = getelementptr inbounds nuw %struct.VecZNode, ptr %236, i32 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !212
  %239 = load i32, ptr %5, align 4, !tbaa !21
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds ptr, ptr %238, i64 %240
  %242 = load ptr, ptr %241, align 8, !tbaa !188
  store ptr %242, ptr %11, align 8, !tbaa !188
  %243 = load ptr, ptr %11, align 8, !tbaa !188
  %244 = icmp ne ptr %243, null
  br i1 %244, label %245, label %306

245:                                              ; preds = %227
  store i32 0, ptr %8, align 4, !tbaa !21
  br label %246

246:                                              ; preds = %302, %245
  %247 = load i32, ptr %8, align 4, !tbaa !21
  %248 = load ptr, ptr %11, align 8, !tbaa !188
  %249 = getelementptr inbounds nuw %struct.ZNode, ptr %248, i32 0, i32 1
  %250 = getelementptr inbounds nuw %struct.VecSNode, ptr %249, i32 0, i32 0
  %251 = load i32, ptr %250, align 8, !tbaa !266
  %252 = icmp ult i32 %247, %251
  br i1 %252, label %253, label %305

253:                                              ; preds = %246
  store i32 0, ptr %7, align 4, !tbaa !21
  br label %254

254:                                              ; preds = %298, %253
  %255 = load i32, ptr %7, align 4, !tbaa !21
  %256 = load ptr, ptr %11, align 8, !tbaa !188
  %257 = getelementptr inbounds nuw %struct.ZNode, ptr %256, i32 0, i32 1
  %258 = getelementptr inbounds nuw %struct.VecSNode, ptr %257, i32 0, i32 2
  %259 = load ptr, ptr %258, align 8, !tbaa !267
  %260 = load i32, ptr %8, align 4, !tbaa !21
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds ptr, ptr %259, i64 %261
  %263 = load ptr, ptr %262, align 8, !tbaa !72
  %264 = getelementptr inbounds nuw %struct.SNode, ptr %263, i32 0, i32 6
  %265 = getelementptr inbounds nuw %struct.VecZNode, ptr %264, i32 0, i32 0
  %266 = load i32, ptr %265, align 8, !tbaa !211
  %267 = icmp ult i32 %255, %266
  br i1 %267, label %268, label %301

268:                                              ; preds = %254
  store i32 1, ptr %9, align 4, !tbaa !21
  %269 = load ptr, ptr %11, align 8, !tbaa !188
  %270 = getelementptr inbounds nuw %struct.ZNode, ptr %269, i32 0, i32 1
  %271 = getelementptr inbounds nuw %struct.VecSNode, ptr %270, i32 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !267
  %273 = load i32, ptr %8, align 4, !tbaa !21
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds ptr, ptr %272, i64 %274
  %276 = load ptr, ptr %275, align 8, !tbaa !72
  %277 = getelementptr inbounds nuw %struct.SNode, ptr %276, i32 0, i32 6
  %278 = getelementptr inbounds nuw %struct.VecZNode, ptr %277, i32 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !212
  %280 = load i32, ptr %7, align 4, !tbaa !21
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds ptr, ptr %279, i64 %281
  %283 = load ptr, ptr %282, align 8, !tbaa !188
  store ptr %283, ptr %12, align 8, !tbaa !188
  %284 = load ptr, ptr %12, align 8, !tbaa !188
  %285 = icmp ne ptr %284, null
  br i1 %285, label %286, label %297

286:                                              ; preds = %268
  %287 = load ptr, ptr %13, align 8, !tbaa !3
  %288 = load ptr, ptr %11, align 8, !tbaa !188
  %289 = getelementptr inbounds nuw %struct.ZNode, ptr %288, i32 0, i32 0
  %290 = load ptr, ptr %289, align 8, !tbaa !213
  %291 = load ptr, ptr %12, align 8, !tbaa !188
  %292 = getelementptr inbounds nuw %struct.ZNode, ptr %291, i32 0, i32 0
  %293 = load ptr, ptr %292, align 8, !tbaa !213
  %294 = call signext i32 @check_assoc_priority(ptr noundef %287, ptr noundef %290, ptr noundef %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %286
  store i32 0, ptr %2, align 4
  store i32 1, ptr %15, align 4
  br label %316

297:                                              ; preds = %286, %268
  br label %298

298:                                              ; preds = %297
  %299 = load i32, ptr %7, align 4, !tbaa !21
  %300 = add nsw i32 %299, 1
  store i32 %300, ptr %7, align 4, !tbaa !21
  br label %254, !llvm.loop !382

301:                                              ; preds = %254
  br label %302

302:                                              ; preds = %301
  %303 = load i32, ptr %8, align 4, !tbaa !21
  %304 = add nsw i32 %303, 1
  store i32 %304, ptr %8, align 4, !tbaa !21
  br label %246, !llvm.loop !383

305:                                              ; preds = %246
  br label %306

306:                                              ; preds = %305, %227
  br label %307

307:                                              ; preds = %306
  %308 = load i32, ptr %5, align 4, !tbaa !21
  %309 = add nsw i32 %308, 1
  store i32 %309, ptr %5, align 4, !tbaa !21
  br label %213, !llvm.loop !384

310:                                              ; preds = %213
  br label %311

311:                                              ; preds = %310
  %312 = load i32, ptr %6, align 4, !tbaa !21
  %313 = add nsw i32 %312, 1
  store i32 %313, ptr %6, align 4, !tbaa !21
  br label %205, !llvm.loop !385

314:                                              ; preds = %205
  store i32 0, ptr %2, align 4
  store i32 1, ptr %15, align 4
  br label %316

315:                                              ; preds = %196
  store i32 -1, ptr %2, align 4
  store i32 1, ptr %15, align 4
  br label %316

316:                                              ; preds = %315, %314, %296, %191, %179, %108, %80, %59, %44, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  %317 = load i32, ptr %2, align 4
  ret i32 %317
}

; Function Attrs: nounwind
define internal void @free_paths(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  br label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds nuw (%struct.VecZNode, ptr @path1, i32 0, i32 2), align 8, !tbaa !262
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds nuw (%struct.VecZNode, ptr @path1, i32 0, i32 2), align 8, !tbaa !262
  %9 = icmp ne ptr %8, getelementptr inbounds nuw (%struct.VecZNode, ptr @path1, i32 0, i32 3)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds nuw (%struct.VecZNode, ptr @path1, i32 0, i32 2), align 8, !tbaa !262
  call void @free(ptr noundef %11) #9
  br label %12

12:                                               ; preds = %10, %7, %4
  br label %13

13:                                               ; preds = %12
  store i32 0, ptr @path1, align 8, !tbaa !261
  store ptr null, ptr getelementptr inbounds nuw (%struct.VecZNode, ptr @path1, i32 0, i32 2), align 8, !tbaa !262
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16
  store i32 1, ptr %3, align 4, !tbaa !21
  br label %18

18:                                               ; preds = %95, %17
  %19 = load i32, ptr %3, align 4, !tbaa !21
  %20 = load ptr, ptr %2, align 8, !tbaa !67
  %21 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8, !tbaa !271
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %98

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr %2, align 8, !tbaa !67
  %27 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !273
  %29 = load i32, ptr %3, align 4, !tbaa !21
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !67
  %33 = getelementptr inbounds nuw %struct.VecZNode, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !262
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %66

36:                                               ; preds = %25
  %37 = load ptr, ptr %2, align 8, !tbaa !67
  %38 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !273
  %40 = load i32, ptr %3, align 4, !tbaa !21
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  %44 = getelementptr inbounds nuw %struct.VecZNode, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !262
  %46 = load ptr, ptr %2, align 8, !tbaa !67
  %47 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !273
  %49 = load i32, ptr %3, align 4, !tbaa !21
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !67
  %53 = getelementptr inbounds nuw %struct.VecZNode, ptr %52, i32 0, i32 3
  %54 = getelementptr inbounds [3 x ptr], ptr %53, i64 0, i64 0
  %55 = icmp ne ptr %45, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %36
  %57 = load ptr, ptr %2, align 8, !tbaa !67
  %58 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !273
  %60 = load i32, ptr %3, align 4, !tbaa !21
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %59, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !67
  %64 = getelementptr inbounds nuw %struct.VecZNode, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !262
  call void @free(ptr noundef %65) #9
  br label %66

66:                                               ; preds = %56, %36, %25
  br label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr %2, align 8, !tbaa !67
  %69 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !273
  %71 = load i32, ptr %3, align 4, !tbaa !21
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %70, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !67
  %75 = getelementptr inbounds nuw %struct.VecZNode, ptr %74, i32 0, i32 0
  store i32 0, ptr %75, align 8, !tbaa !261
  %76 = load ptr, ptr %2, align 8, !tbaa !67
  %77 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !273
  %79 = load i32, ptr %3, align 4, !tbaa !21
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %78, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !67
  %83 = getelementptr inbounds nuw %struct.VecZNode, ptr %82, i32 0, i32 2
  store ptr null, ptr %83, align 8, !tbaa !262
  br label %84

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  %88 = load ptr, ptr %2, align 8, !tbaa !67
  %89 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !273
  %91 = load i32, ptr %3, align 4, !tbaa !21
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %90, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !67
  call void @free(ptr noundef %94) #9
  br label %95

95:                                               ; preds = %87
  %96 = load i32, ptr %3, align 4, !tbaa !21
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %3, align 4, !tbaa !21
  br label %18, !llvm.loop !386

98:                                               ; preds = %18
  br label %99

99:                                               ; preds = %98
  %100 = load ptr, ptr %2, align 8, !tbaa !67
  %101 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !273
  %103 = icmp ne ptr %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load ptr, ptr %2, align 8, !tbaa !67
  %106 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %105, i32 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !273
  %108 = load ptr, ptr %2, align 8, !tbaa !67
  %109 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %108, i32 0, i32 3
  %110 = getelementptr inbounds [3 x ptr], ptr %109, i64 0, i64 0
  %111 = icmp ne ptr %107, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load ptr, ptr %2, align 8, !tbaa !67
  %114 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !273
  call void @free(ptr noundef %115) #9
  br label %116

116:                                              ; preds = %112, %104, %99
  br label %117

117:                                              ; preds = %116
  %118 = load ptr, ptr %2, align 8, !tbaa !67
  %119 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %118, i32 0, i32 0
  store i32 0, ptr %119, align 8, !tbaa !271
  %120 = load ptr, ptr %2, align 8, !tbaa !67
  %121 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %120, i32 0, i32 2
  store ptr null, ptr %121, align 8, !tbaa !273
  br label %122

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %122
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define internal ptr @set_find_znode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !67
  store ptr %1, ptr %5, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  %11 = load ptr, ptr %4, align 8, !tbaa !67
  %12 = getelementptr inbounds nuw %struct.VecZNode, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !261
  store i32 %13, ptr %8, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9
  %14 = load i32, ptr %8, align 4, !tbaa !21
  %15 = icmp ule i32 %14, 3
  br i1 %15, label %16, label %46

16:                                               ; preds = %2
  store i32 0, ptr %6, align 4, !tbaa !21
  br label %17

17:                                               ; preds = %42, %16
  %18 = load i32, ptr %6, align 4, !tbaa !21
  %19 = load i32, ptr %8, align 4, !tbaa !21
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = load ptr, ptr %4, align 8, !tbaa !67
  %23 = getelementptr inbounds nuw %struct.VecZNode, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !262
  %25 = load i32, ptr %6, align 4, !tbaa !21
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds nuw ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !188
  %29 = getelementptr inbounds nuw %struct.ZNode, ptr %28, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8, !tbaa !213
  %31 = load ptr, ptr %5, align 8, !tbaa !3
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load ptr, ptr %4, align 8, !tbaa !67
  %35 = getelementptr inbounds nuw %struct.VecZNode, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !262
  %37 = load i32, ptr %6, align 4, !tbaa !21
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !188
  store ptr %40, ptr %3, align 8
  store i32 1, ptr %10, align 4
  br label %103

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41
  %43 = load i32, ptr %6, align 4, !tbaa !21
  %44 = add i32 %43, 1
  store i32 %44, ptr %6, align 4, !tbaa !21
  br label %17, !llvm.loop !387

45:                                               ; preds = %17
  store ptr null, ptr %3, align 8
  store i32 1, ptr %10, align 4
  br label %103

46:                                               ; preds = %2
  %47 = load ptr, ptr %5, align 8, !tbaa !3
  %48 = ptrtoint ptr %47 to i32
  %49 = load i32, ptr %8, align 4, !tbaa !21
  %50 = urem i32 %48, %49
  store i32 %50, ptr %9, align 4, !tbaa !21
  %51 = load i32, ptr %9, align 4, !tbaa !21
  store i32 %51, ptr %6, align 4, !tbaa !21
  store i32 0, ptr %7, align 4, !tbaa !21
  br label %52

52:                                               ; preds = %95, %46
  %53 = load i32, ptr %6, align 4, !tbaa !21
  %54 = load ptr, ptr %4, align 8, !tbaa !67
  %55 = getelementptr inbounds nuw %struct.VecZNode, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8, !tbaa !261
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, ptr %7, align 4, !tbaa !21
  %60 = icmp ult i32 %59, 5
  br label %61

61:                                               ; preds = %58, %52
  %62 = phi i1 [ false, %52 ], [ %60, %58 ]
  br i1 %62, label %63, label %102

63:                                               ; preds = %61
  %64 = load ptr, ptr %4, align 8, !tbaa !67
  %65 = getelementptr inbounds nuw %struct.VecZNode, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !262
  %67 = load i32, ptr %6, align 4, !tbaa !21
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds nuw ptr, ptr %66, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !188
  %71 = icmp ne ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  store ptr null, ptr %3, align 8
  store i32 1, ptr %10, align 4
  br label %103

73:                                               ; preds = %63
  %74 = load ptr, ptr %4, align 8, !tbaa !67
  %75 = getelementptr inbounds nuw %struct.VecZNode, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !262
  %77 = load i32, ptr %6, align 4, !tbaa !21
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw ptr, ptr %76, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !188
  %81 = getelementptr inbounds nuw %struct.ZNode, ptr %80, i32 0, i32 0
  %82 = load ptr, ptr %81, align 8, !tbaa !213
  %83 = load ptr, ptr %5, align 8, !tbaa !3
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %73
  %86 = load ptr, ptr %4, align 8, !tbaa !67
  %87 = getelementptr inbounds nuw %struct.VecZNode, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !262
  %89 = load i32, ptr %6, align 4, !tbaa !21
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds nuw ptr, ptr %88, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !188
  store ptr %92, ptr %3, align 8
  store i32 1, ptr %10, align 4
  br label %103

93:                                               ; preds = %73
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  %96 = load i32, ptr %6, align 4, !tbaa !21
  %97 = add i32 %96, 1
  %98 = load i32, ptr %8, align 4, !tbaa !21
  %99 = urem i32 %97, %98
  store i32 %99, ptr %6, align 4, !tbaa !21
  %100 = load i32, ptr %7, align 4, !tbaa !21
  %101 = add i32 %100, 1
  store i32 %101, ptr %7, align 4, !tbaa !21
  br label %52, !llvm.loop !388

102:                                              ; preds = %61
  store ptr null, ptr %3, align 8
  store i32 1, ptr %10, align 4
  br label %103

103:                                              ; preds = %102, %85, %72, %45, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  %104 = load ptr, ptr %3, align 8
  ret ptr %104
}

; Function Attrs: nounwind
define internal ptr @new_VecZNode(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !67
  store i32 %1, ptr %5, align 4, !tbaa !21
  store i32 %2, ptr %6, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  %9 = load ptr, ptr %4, align 8, !tbaa !67
  %10 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 8, !tbaa !271
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store ptr @path1, ptr %8, align 8, !tbaa !67
  br label %16

14:                                               ; preds = %3
  %15 = call noalias ptr @malloc(i64 noundef 40) #10
  store ptr %15, ptr %8, align 8, !tbaa !67
  br label %16

16:                                               ; preds = %14, %13
  br label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %8, align 8, !tbaa !67
  %19 = getelementptr inbounds nuw %struct.VecZNode, ptr %18, i32 0, i32 0
  store i32 0, ptr %19, align 8, !tbaa !261
  %20 = load ptr, ptr %8, align 8, !tbaa !67
  %21 = getelementptr inbounds nuw %struct.VecZNode, ptr %20, i32 0, i32 2
  store ptr null, ptr %21, align 8, !tbaa !262
  br label %22

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load i32, ptr %6, align 4, !tbaa !21
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %151

26:                                               ; preds = %23
  store i32 0, ptr %7, align 4, !tbaa !21
  br label %27

27:                                               ; preds = %147, %26
  %28 = load i32, ptr %7, align 4, !tbaa !21
  %29 = load i32, ptr %5, align 4, !tbaa !21
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %150

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %8, align 8, !tbaa !67
  %34 = getelementptr inbounds nuw %struct.VecZNode, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !262
  %36 = icmp ne ptr %35, null
  br i1 %36, label %62, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %4, align 8, !tbaa !67
  %39 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !273
  %41 = load i32, ptr %6, align 4, !tbaa !21
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !67
  %45 = getelementptr inbounds nuw %struct.VecZNode, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !262
  %47 = load i32, ptr %7, align 4, !tbaa !21
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !188
  %51 = load ptr, ptr %8, align 8, !tbaa !67
  %52 = getelementptr inbounds nuw %struct.VecZNode, ptr %51, i32 0, i32 3
  %53 = getelementptr inbounds [3 x ptr], ptr %52, i64 0, i64 0
  %54 = load ptr, ptr %8, align 8, !tbaa !67
  %55 = getelementptr inbounds nuw %struct.VecZNode, ptr %54, i32 0, i32 2
  store ptr %53, ptr %55, align 8, !tbaa !262
  %56 = load ptr, ptr %8, align 8, !tbaa !67
  %57 = getelementptr inbounds nuw %struct.VecZNode, ptr %56, i32 0, i32 0
  %58 = load i32, ptr %57, align 8, !tbaa !261
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 8, !tbaa !261
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds nuw ptr, ptr %53, i64 %60
  store ptr %50, ptr %61, align 8, !tbaa !188
  br label %146

62:                                               ; preds = %32
  %63 = load ptr, ptr %8, align 8, !tbaa !67
  %64 = getelementptr inbounds nuw %struct.VecZNode, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !262
  %66 = load ptr, ptr %8, align 8, !tbaa !67
  %67 = getelementptr inbounds nuw %struct.VecZNode, ptr %66, i32 0, i32 3
  %68 = getelementptr inbounds [3 x ptr], ptr %67, i64 0, i64 0
  %69 = icmp eq ptr %65, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %62
  %71 = load ptr, ptr %8, align 8, !tbaa !67
  %72 = getelementptr inbounds nuw %struct.VecZNode, ptr %71, i32 0, i32 0
  %73 = load i32, ptr %72, align 8, !tbaa !261
  %74 = icmp ult i32 %73, 3
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load ptr, ptr %4, align 8, !tbaa !67
  %77 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !273
  %79 = load i32, ptr %6, align 4, !tbaa !21
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %78, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !67
  %83 = getelementptr inbounds nuw %struct.VecZNode, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !262
  %85 = load i32, ptr %7, align 4, !tbaa !21
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %84, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !188
  %89 = load ptr, ptr %8, align 8, !tbaa !67
  %90 = getelementptr inbounds nuw %struct.VecZNode, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !262
  %92 = load ptr, ptr %8, align 8, !tbaa !67
  %93 = getelementptr inbounds nuw %struct.VecZNode, ptr %92, i32 0, i32 0
  %94 = load i32, ptr %93, align 8, !tbaa !261
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 8, !tbaa !261
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds nuw ptr, ptr %91, i64 %96
  store ptr %88, ptr %97, align 8, !tbaa !188
  br label %146

98:                                               ; preds = %70
  br label %129

99:                                               ; preds = %62
  %100 = load ptr, ptr %8, align 8, !tbaa !67
  %101 = getelementptr inbounds nuw %struct.VecZNode, ptr %100, i32 0, i32 0
  %102 = load i32, ptr %101, align 8, !tbaa !261
  %103 = and i32 %102, 7
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %99
  %106 = load ptr, ptr %4, align 8, !tbaa !67
  %107 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !273
  %109 = load i32, ptr %6, align 4, !tbaa !21
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %108, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !67
  %113 = getelementptr inbounds nuw %struct.VecZNode, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !262
  %115 = load i32, ptr %7, align 4, !tbaa !21
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %114, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !188
  %119 = load ptr, ptr %8, align 8, !tbaa !67
  %120 = getelementptr inbounds nuw %struct.VecZNode, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !262
  %122 = load ptr, ptr %8, align 8, !tbaa !67
  %123 = getelementptr inbounds nuw %struct.VecZNode, ptr %122, i32 0, i32 0
  %124 = load i32, ptr %123, align 8, !tbaa !261
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 8, !tbaa !261
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds nuw ptr, ptr %121, i64 %126
  store ptr %118, ptr %127, align 8, !tbaa !188
  br label %146

128:                                              ; preds = %99
  br label %129

129:                                              ; preds = %128, %98
  br label %130

130:                                              ; preds = %129
  %131 = load ptr, ptr %8, align 8, !tbaa !67
  %132 = load ptr, ptr %4, align 8, !tbaa !67
  %133 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !273
  %135 = load i32, ptr %6, align 4, !tbaa !21
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds ptr, ptr %134, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !67
  %139 = getelementptr inbounds nuw %struct.VecZNode, ptr %138, i32 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !262
  %141 = load i32, ptr %7, align 4, !tbaa !21
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds ptr, ptr %140, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !188
  call void @vec_add_internal(ptr noundef %131, ptr noundef %144)
  br label %145

145:                                              ; preds = %130
  br label %146

146:                                              ; preds = %145, %105, %75, %37
  br label %147

147:                                              ; preds = %146
  %148 = load i32, ptr %7, align 4, !tbaa !21
  %149 = add nsw i32 %148, 1
  store i32 %149, ptr %7, align 4, !tbaa !21
  br label %27, !llvm.loop !389

150:                                              ; preds = %27
  br label %151

151:                                              ; preds = %150, %23
  %152 = load ptr, ptr %8, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  ret ptr %152
}

; Function Attrs: nounwind
define internal void @build_paths_internal(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %6, align 8, !tbaa !188
  store ptr %1, ptr %7, align 8, !tbaa !67
  store i32 %2, ptr %8, align 4, !tbaa !21
  store i32 %3, ptr %9, align 4, !tbaa !21
  store i32 %4, ptr %10, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #9
  br label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr %7, align 8, !tbaa !67
  %17 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !273
  %19 = load i32, ptr %8, align 4, !tbaa !21
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = getelementptr inbounds nuw %struct.VecZNode, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !262
  %25 = icmp ne ptr %24, null
  br i1 %25, label %57, label %26

26:                                               ; preds = %15
  %27 = load ptr, ptr %6, align 8, !tbaa !188
  %28 = load ptr, ptr %7, align 8, !tbaa !67
  %29 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !273
  %31 = load i32, ptr %8, align 4, !tbaa !21
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = getelementptr inbounds nuw %struct.VecZNode, ptr %34, i32 0, i32 3
  %36 = getelementptr inbounds [3 x ptr], ptr %35, i64 0, i64 0
  %37 = load ptr, ptr %7, align 8, !tbaa !67
  %38 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !273
  %40 = load i32, ptr %8, align 4, !tbaa !21
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  %44 = getelementptr inbounds nuw %struct.VecZNode, ptr %43, i32 0, i32 2
  store ptr %36, ptr %44, align 8, !tbaa !262
  %45 = load ptr, ptr %7, align 8, !tbaa !67
  %46 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !273
  %48 = load i32, ptr %8, align 4, !tbaa !21
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %47, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !67
  %52 = getelementptr inbounds nuw %struct.VecZNode, ptr %51, i32 0, i32 0
  %53 = load i32, ptr %52, align 8, !tbaa !261
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 8, !tbaa !261
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds nuw ptr, ptr %36, i64 %55
  store ptr %27, ptr %56, align 8, !tbaa !188
  br label %159

57:                                               ; preds = %15
  %58 = load ptr, ptr %7, align 8, !tbaa !67
  %59 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !273
  %61 = load i32, ptr %8, align 4, !tbaa !21
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !67
  %65 = getelementptr inbounds nuw %struct.VecZNode, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !262
  %67 = load ptr, ptr %7, align 8, !tbaa !67
  %68 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !273
  %70 = load i32, ptr %8, align 4, !tbaa !21
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %69, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !67
  %74 = getelementptr inbounds nuw %struct.VecZNode, ptr %73, i32 0, i32 3
  %75 = getelementptr inbounds [3 x ptr], ptr %74, i64 0, i64 0
  %76 = icmp eq ptr %66, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %57
  %78 = load ptr, ptr %7, align 8, !tbaa !67
  %79 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !273
  %81 = load i32, ptr %8, align 4, !tbaa !21
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !67
  %85 = getelementptr inbounds nuw %struct.VecZNode, ptr %84, i32 0, i32 0
  %86 = load i32, ptr %85, align 8, !tbaa !261
  %87 = icmp ult i32 %86, 3
  br i1 %87, label %88, label %111

88:                                               ; preds = %77
  %89 = load ptr, ptr %6, align 8, !tbaa !188
  %90 = load ptr, ptr %7, align 8, !tbaa !67
  %91 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !273
  %93 = load i32, ptr %8, align 4, !tbaa !21
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds ptr, ptr %92, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !67
  %97 = getelementptr inbounds nuw %struct.VecZNode, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !262
  %99 = load ptr, ptr %7, align 8, !tbaa !67
  %100 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %99, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !273
  %102 = load i32, ptr %8, align 4, !tbaa !21
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %101, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !67
  %106 = getelementptr inbounds nuw %struct.VecZNode, ptr %105, i32 0, i32 0
  %107 = load i32, ptr %106, align 8, !tbaa !261
  %108 = add i32 %107, 1
  store i32 %108, ptr %106, align 8, !tbaa !261
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds nuw ptr, ptr %98, i64 %109
  store ptr %89, ptr %110, align 8, !tbaa !188
  br label %159

111:                                              ; preds = %77
  br label %148

112:                                              ; preds = %57
  %113 = load ptr, ptr %7, align 8, !tbaa !67
  %114 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !273
  %116 = load i32, ptr %8, align 4, !tbaa !21
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds ptr, ptr %115, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !67
  %120 = getelementptr inbounds nuw %struct.VecZNode, ptr %119, i32 0, i32 0
  %121 = load i32, ptr %120, align 8, !tbaa !261
  %122 = and i32 %121, 7
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %112
  %125 = load ptr, ptr %6, align 8, !tbaa !188
  %126 = load ptr, ptr %7, align 8, !tbaa !67
  %127 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %126, i32 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !273
  %129 = load i32, ptr %8, align 4, !tbaa !21
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %128, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !67
  %133 = getelementptr inbounds nuw %struct.VecZNode, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !262
  %135 = load ptr, ptr %7, align 8, !tbaa !67
  %136 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !273
  %138 = load i32, ptr %8, align 4, !tbaa !21
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %137, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !67
  %142 = getelementptr inbounds nuw %struct.VecZNode, ptr %141, i32 0, i32 0
  %143 = load i32, ptr %142, align 8, !tbaa !261
  %144 = add i32 %143, 1
  store i32 %144, ptr %142, align 8, !tbaa !261
  %145 = zext i32 %143 to i64
  %146 = getelementptr inbounds nuw ptr, ptr %134, i64 %145
  store ptr %125, ptr %146, align 8, !tbaa !188
  br label %159

147:                                              ; preds = %112
  br label %148

148:                                              ; preds = %147, %111
  br label %149

149:                                              ; preds = %148
  %150 = load ptr, ptr %7, align 8, !tbaa !67
  %151 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %150, i32 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !273
  %153 = load i32, ptr %8, align 4, !tbaa !21
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %152, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !67
  %157 = load ptr, ptr %6, align 8, !tbaa !188
  call void @vec_add_internal(ptr noundef %156, ptr noundef %157)
  br label %158

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %124, %88, %26
  %160 = load i32, ptr %10, align 4, !tbaa !21
  %161 = icmp sle i32 %160, 1
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store i32 1, ptr %14, align 4
  br label %336

163:                                              ; preds = %159
  store i32 0, ptr %12, align 4, !tbaa !21
  br label %164

164:                                              ; preds = %332, %163
  %165 = load i32, ptr %12, align 4, !tbaa !21
  %166 = load ptr, ptr %6, align 8, !tbaa !188
  %167 = getelementptr inbounds nuw %struct.ZNode, ptr %166, i32 0, i32 1
  %168 = getelementptr inbounds nuw %struct.VecSNode, ptr %167, i32 0, i32 0
  %169 = load i32, ptr %168, align 8, !tbaa !266
  %170 = icmp ult i32 %165, %169
  br i1 %170, label %171, label %335

171:                                              ; preds = %164
  store i32 0, ptr %11, align 4, !tbaa !21
  store i32 0, ptr %13, align 4, !tbaa !21
  br label %172

172:                                              ; preds = %328, %171
  %173 = load i32, ptr %11, align 4, !tbaa !21
  %174 = load ptr, ptr %6, align 8, !tbaa !188
  %175 = getelementptr inbounds nuw %struct.ZNode, ptr %174, i32 0, i32 1
  %176 = getelementptr inbounds nuw %struct.VecSNode, ptr %175, i32 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !267
  %178 = load i32, ptr %12, align 4, !tbaa !21
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds ptr, ptr %177, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !72
  %182 = getelementptr inbounds nuw %struct.SNode, ptr %181, i32 0, i32 6
  %183 = getelementptr inbounds nuw %struct.VecZNode, ptr %182, i32 0, i32 0
  %184 = load i32, ptr %183, align 8, !tbaa !211
  %185 = icmp ult i32 %173, %184
  br i1 %185, label %186, label %331

186:                                              ; preds = %172
  %187 = load ptr, ptr %6, align 8, !tbaa !188
  %188 = getelementptr inbounds nuw %struct.ZNode, ptr %187, i32 0, i32 1
  %189 = getelementptr inbounds nuw %struct.VecSNode, ptr %188, i32 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !267
  %191 = load i32, ptr %12, align 4, !tbaa !21
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds ptr, ptr %190, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !72
  %195 = getelementptr inbounds nuw %struct.SNode, ptr %194, i32 0, i32 6
  %196 = getelementptr inbounds nuw %struct.VecZNode, ptr %195, i32 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !212
  %198 = load i32, ptr %11, align 4, !tbaa !21
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds ptr, ptr %197, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !188
  %202 = icmp ne ptr %201, null
  br i1 %202, label %203, label %327

203:                                              ; preds = %186
  %204 = load i32, ptr %12, align 4, !tbaa !21
  %205 = load i32, ptr %13, align 4, !tbaa !21
  %206 = add nsw i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %304

208:                                              ; preds = %203
  br label %209

209:                                              ; preds = %208
  %210 = load ptr, ptr %7, align 8, !tbaa !67
  %211 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %210, i32 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !273
  %213 = icmp ne ptr %212, null
  br i1 %213, label %233, label %214

214:                                              ; preds = %209
  %215 = load ptr, ptr %7, align 8, !tbaa !67
  %216 = load i32, ptr %9, align 4, !tbaa !21
  %217 = load i32, ptr %10, align 4, !tbaa !21
  %218 = sub nsw i32 %217, 1
  %219 = sub nsw i32 %216, %218
  %220 = load i32, ptr %8, align 4, !tbaa !21
  %221 = call ptr @new_VecZNode(ptr noundef %215, i32 noundef signext %219, i32 noundef signext %220)
  %222 = load ptr, ptr %7, align 8, !tbaa !67
  %223 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %222, i32 0, i32 3
  %224 = getelementptr inbounds [3 x ptr], ptr %223, i64 0, i64 0
  %225 = load ptr, ptr %7, align 8, !tbaa !67
  %226 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %225, i32 0, i32 2
  store ptr %224, ptr %226, align 8, !tbaa !273
  %227 = load ptr, ptr %7, align 8, !tbaa !67
  %228 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %227, i32 0, i32 0
  %229 = load i32, ptr %228, align 8, !tbaa !271
  %230 = add i32 %229, 1
  store i32 %230, ptr %228, align 8, !tbaa !271
  %231 = zext i32 %229 to i64
  %232 = getelementptr inbounds nuw ptr, ptr %224, i64 %231
  store ptr %221, ptr %232, align 8, !tbaa !67
  br label %299

233:                                              ; preds = %209
  %234 = load ptr, ptr %7, align 8, !tbaa !67
  %235 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %234, i32 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !273
  %237 = load ptr, ptr %7, align 8, !tbaa !67
  %238 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %237, i32 0, i32 3
  %239 = getelementptr inbounds [3 x ptr], ptr %238, i64 0, i64 0
  %240 = icmp eq ptr %236, %239
  br i1 %240, label %241, label %264

241:                                              ; preds = %233
  %242 = load ptr, ptr %7, align 8, !tbaa !67
  %243 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %242, i32 0, i32 0
  %244 = load i32, ptr %243, align 8, !tbaa !271
  %245 = icmp ult i32 %244, 3
  br i1 %245, label %246, label %263

246:                                              ; preds = %241
  %247 = load ptr, ptr %7, align 8, !tbaa !67
  %248 = load i32, ptr %9, align 4, !tbaa !21
  %249 = load i32, ptr %10, align 4, !tbaa !21
  %250 = sub nsw i32 %249, 1
  %251 = sub nsw i32 %248, %250
  %252 = load i32, ptr %8, align 4, !tbaa !21
  %253 = call ptr @new_VecZNode(ptr noundef %247, i32 noundef signext %251, i32 noundef signext %252)
  %254 = load ptr, ptr %7, align 8, !tbaa !67
  %255 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %254, i32 0, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !273
  %257 = load ptr, ptr %7, align 8, !tbaa !67
  %258 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %257, i32 0, i32 0
  %259 = load i32, ptr %258, align 8, !tbaa !271
  %260 = add i32 %259, 1
  store i32 %260, ptr %258, align 8, !tbaa !271
  %261 = zext i32 %259 to i64
  %262 = getelementptr inbounds nuw ptr, ptr %256, i64 %261
  store ptr %253, ptr %262, align 8, !tbaa !67
  br label %299

263:                                              ; preds = %241
  br label %288

264:                                              ; preds = %233
  %265 = load ptr, ptr %7, align 8, !tbaa !67
  %266 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %265, i32 0, i32 0
  %267 = load i32, ptr %266, align 8, !tbaa !271
  %268 = and i32 %267, 7
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %287

270:                                              ; preds = %264
  %271 = load ptr, ptr %7, align 8, !tbaa !67
  %272 = load i32, ptr %9, align 4, !tbaa !21
  %273 = load i32, ptr %10, align 4, !tbaa !21
  %274 = sub nsw i32 %273, 1
  %275 = sub nsw i32 %272, %274
  %276 = load i32, ptr %8, align 4, !tbaa !21
  %277 = call ptr @new_VecZNode(ptr noundef %271, i32 noundef signext %275, i32 noundef signext %276)
  %278 = load ptr, ptr %7, align 8, !tbaa !67
  %279 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %278, i32 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !273
  %281 = load ptr, ptr %7, align 8, !tbaa !67
  %282 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %281, i32 0, i32 0
  %283 = load i32, ptr %282, align 8, !tbaa !271
  %284 = add i32 %283, 1
  store i32 %284, ptr %282, align 8, !tbaa !271
  %285 = zext i32 %283 to i64
  %286 = getelementptr inbounds nuw ptr, ptr %280, i64 %285
  store ptr %277, ptr %286, align 8, !tbaa !67
  br label %299

287:                                              ; preds = %264
  br label %288

288:                                              ; preds = %287, %263
  br label %289

289:                                              ; preds = %288
  %290 = load ptr, ptr %7, align 8, !tbaa !67
  %291 = load ptr, ptr %7, align 8, !tbaa !67
  %292 = load i32, ptr %9, align 4, !tbaa !21
  %293 = load i32, ptr %10, align 4, !tbaa !21
  %294 = sub nsw i32 %293, 1
  %295 = sub nsw i32 %292, %294
  %296 = load i32, ptr %8, align 4, !tbaa !21
  %297 = call ptr @new_VecZNode(ptr noundef %291, i32 noundef signext %295, i32 noundef signext %296)
  call void @vec_add_internal(ptr noundef %290, ptr noundef %297)
  br label %298

298:                                              ; preds = %289
  br label %299

299:                                              ; preds = %298, %270, %246, %214
  %300 = load ptr, ptr %7, align 8, !tbaa !67
  %301 = getelementptr inbounds nuw %struct.VecVecZNode, ptr %300, i32 0, i32 0
  %302 = load i32, ptr %301, align 8, !tbaa !271
  %303 = sub i32 %302, 1
  store i32 %303, ptr %8, align 4, !tbaa !21
  br label %304

304:                                              ; preds = %299, %203
  %305 = load ptr, ptr %6, align 8, !tbaa !188
  %306 = getelementptr inbounds nuw %struct.ZNode, ptr %305, i32 0, i32 1
  %307 = getelementptr inbounds nuw %struct.VecSNode, ptr %306, i32 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !267
  %309 = load i32, ptr %12, align 4, !tbaa !21
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds ptr, ptr %308, i64 %310
  %312 = load ptr, ptr %311, align 8, !tbaa !72
  %313 = getelementptr inbounds nuw %struct.SNode, ptr %312, i32 0, i32 6
  %314 = getelementptr inbounds nuw %struct.VecZNode, ptr %313, i32 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !212
  %316 = load i32, ptr %11, align 4, !tbaa !21
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds ptr, ptr %315, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !188
  %320 = load ptr, ptr %7, align 8, !tbaa !67
  %321 = load i32, ptr %8, align 4, !tbaa !21
  %322 = load i32, ptr %9, align 4, !tbaa !21
  %323 = load i32, ptr %10, align 4, !tbaa !21
  %324 = sub nsw i32 %323, 1
  call void @build_paths_internal(ptr noundef %319, ptr noundef %320, i32 noundef signext %321, i32 noundef signext %322, i32 noundef signext %324)
  %325 = load i32, ptr %13, align 4, !tbaa !21
  %326 = add nsw i32 %325, 1
  store i32 %326, ptr %13, align 4, !tbaa !21
  br label %327

327:                                              ; preds = %304, %186
  br label %328

328:                                              ; preds = %327
  %329 = load i32, ptr %11, align 4, !tbaa !21
  %330 = add nsw i32 %329, 1
  store i32 %330, ptr %11, align 4, !tbaa !21
  br label %172, !llvm.loop !390

331:                                              ; preds = %172
  br label %332

332:                                              ; preds = %331
  %333 = load i32, ptr %12, align 4, !tbaa !21
  %334 = add nsw i32 %333, 1
  store i32 %334, ptr %12, align 4, !tbaa !21
  br label %164, !llvm.loop !391

335:                                              ; preds = %164
  store i32 0, ptr %14, align 4
  br label %336

336:                                              ; preds = %335, %162
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #9
  %337 = load i32, ptr %14, align 4
  switch i32 %337, label %339 [
    i32 0, label %338
    i32 1, label %338
  ]

338:                                              ; preds = %336, %336
  ret void

339:                                              ; preds = %336
  unreachable
}

; Function Attrs: nounwind
define internal signext i32 @check_assoc_priority(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !3
  store ptr %2, ptr %7, align 8, !tbaa !3
  %8 = load ptr, ptr %5, align 8, !tbaa !3
  %9 = getelementptr inbounds nuw %struct.PNode, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !277
  %11 = and i32 %10, 16
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.PNode, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !277
  %17 = and i32 %16, 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %55, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %6, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.PNode, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !277
  %23 = and i32 %22, 16
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %6, align 8, !tbaa !3
  %27 = getelementptr inbounds nuw %struct.PNode, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !277
  %29 = and i32 %28, 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %25, %19
  %32 = load ptr, ptr %5, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.PNode, ptr %32, i32 0, i32 0
  %34 = load i32, ptr %33, align 8, !tbaa !331
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load ptr, ptr %6, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw %struct.PNode, ptr %37, i32 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !302
  %40 = load ptr, ptr %6, align 8, !tbaa !3
  %41 = getelementptr inbounds nuw %struct.PNode, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !277
  %43 = load ptr, ptr %5, align 8, !tbaa !3
  %44 = getelementptr inbounds nuw %struct.PNode, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !332
  %46 = load ptr, ptr %5, align 8, !tbaa !3
  %47 = getelementptr inbounds nuw %struct.PNode, ptr %46, i32 0, i32 0
  %48 = load i32, ptr %47, align 8, !tbaa !331
  %49 = call signext i32 @check_child(i32 noundef signext %39, i32 noundef signext %42, i32 noundef signext %45, i32 noundef signext %48, i32 noundef signext 0, i32 noundef signext 1)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %36
  store i32 -1, ptr %4, align 4
  br label %127

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %31
  br label %54

54:                                               ; preds = %53, %25
  br label %126

55:                                               ; preds = %13, %3
  %56 = load ptr, ptr %6, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.PNode, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !277
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load ptr, ptr %6, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.PNode, ptr %61, i32 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !302
  %64 = load ptr, ptr %6, align 8, !tbaa !3
  %65 = getelementptr inbounds nuw %struct.PNode, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !277
  %67 = load ptr, ptr %5, align 8, !tbaa !3
  %68 = getelementptr inbounds nuw %struct.PNode, ptr %67, i32 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !302
  %70 = load ptr, ptr %5, align 8, !tbaa !3
  %71 = getelementptr inbounds nuw %struct.PNode, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !277
  %73 = call signext i32 @check_child(i32 noundef signext %63, i32 noundef signext %66, i32 noundef signext %69, i32 noundef signext %72, i32 noundef signext 0, i32 noundef signext 1)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %60
  store i32 -1, ptr %4, align 4
  br label %127

76:                                               ; preds = %60
  br label %103

77:                                               ; preds = %55
  %78 = load ptr, ptr %7, align 8, !tbaa !3
  %79 = icmp ne ptr %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  %81 = load ptr, ptr %7, align 8, !tbaa !3
  %82 = getelementptr inbounds nuw %struct.PNode, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !277
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = load ptr, ptr %7, align 8, !tbaa !3
  %87 = getelementptr inbounds nuw %struct.PNode, ptr %86, i32 0, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !302
  %89 = load ptr, ptr %7, align 8, !tbaa !3
  %90 = getelementptr inbounds nuw %struct.PNode, ptr %89, i32 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !277
  %92 = load ptr, ptr %5, align 8, !tbaa !3
  %93 = getelementptr inbounds nuw %struct.PNode, ptr %92, i32 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !302
  %95 = load ptr, ptr %5, align 8, !tbaa !3
  %96 = getelementptr inbounds nuw %struct.PNode, ptr %95, i32 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !277
  %98 = call signext i32 @check_child(i32 noundef signext %88, i32 noundef signext %91, i32 noundef signext %94, i32 noundef signext %97, i32 noundef signext 0, i32 noundef signext 1)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %85
  store i32 -1, ptr %4, align 4
  br label %127

101:                                              ; preds = %85, %80
  br label %102

102:                                              ; preds = %101, %77
  br label %103

103:                                              ; preds = %102, %76
  %104 = load ptr, ptr %6, align 8, !tbaa !3
  %105 = getelementptr inbounds nuw %struct.PNode, ptr %104, i32 0, i32 0
  %106 = load i32, ptr %105, align 8, !tbaa !331
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %103
  %109 = load ptr, ptr %5, align 8, !tbaa !3
  %110 = getelementptr inbounds nuw %struct.PNode, ptr %109, i32 0, i32 3
  %111 = load i32, ptr %110, align 4, !tbaa !302
  %112 = load ptr, ptr %5, align 8, !tbaa !3
  %113 = getelementptr inbounds nuw %struct.PNode, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !277
  %115 = load ptr, ptr %6, align 8, !tbaa !3
  %116 = getelementptr inbounds nuw %struct.PNode, ptr %115, i32 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !332
  %118 = load ptr, ptr %6, align 8, !tbaa !3
  %119 = getelementptr inbounds nuw %struct.PNode, ptr %118, i32 0, i32 0
  %120 = load i32, ptr %119, align 8, !tbaa !331
  %121 = call signext i32 @check_child(i32 noundef signext %111, i32 noundef signext %114, i32 noundef signext %117, i32 noundef signext %120, i32 noundef signext 1, i32 noundef signext 0)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %108
  store i32 -1, ptr %4, align 4
  br label %127

124:                                              ; preds = %108
  br label %125

125:                                              ; preds = %124, %103
  br label %126

126:                                              ; preds = %125, %54
  store i32 0, ptr %4, align 4
  br label %127

127:                                              ; preds = %126, %123, %100, %75, %51
  %128 = load i32, ptr %4, align 4
  ret i32 %128
}

; Function Attrs: nounwind
define internal ptr @find_substr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !27
  store ptr %1, ptr %5, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  %8 = load ptr, ptr %5, align 8, !tbaa !27
  %9 = call i64 @strlen(ptr noundef %8) #11
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr %6, align 4, !tbaa !21
  %11 = load i32, ptr %6, align 4, !tbaa !21
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %29, %13
  %15 = load ptr, ptr %4, align 8, !tbaa !27
  %16 = load i8, ptr %15, align 1, !tbaa !28
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load ptr, ptr %4, align 8, !tbaa !27
  %21 = load i8, ptr %20, align 1, !tbaa !28
  %22 = sext i8 %21 to i32
  %23 = load ptr, ptr %5, align 8, !tbaa !27
  %24 = load i8, ptr %23, align 1, !tbaa !28
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %22, %25
  br label %27

27:                                               ; preds = %19, %14
  %28 = phi i1 [ false, %14 ], [ %26, %19 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load ptr, ptr %4, align 8, !tbaa !27
  %31 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %31, ptr %4, align 8, !tbaa !27
  br label %14, !llvm.loop !392

32:                                               ; preds = %27
  %33 = load ptr, ptr %4, align 8, !tbaa !27
  %34 = load i8, ptr %33, align 1, !tbaa !28
  %35 = sext i8 %34 to i32
  %36 = load ptr, ptr %5, align 8, !tbaa !27
  %37 = load i8, ptr %36, align 1, !tbaa !28
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load ptr, ptr %4, align 8, !tbaa !27
  %42 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %42, ptr %3, align 8
  store i32 1, ptr %7, align 4
  br label %66

43:                                               ; preds = %32
  br label %65

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %61, %44
  %46 = load ptr, ptr %4, align 8, !tbaa !27
  %47 = load i8, ptr %46, align 1, !tbaa !28
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load ptr, ptr %5, align 8, !tbaa !27
  %51 = load ptr, ptr %4, align 8, !tbaa !27
  %52 = load i32, ptr %6, align 4, !tbaa !21
  %53 = sext i32 %52 to i64
  %54 = call signext i32 @strncmp(ptr noundef %50, ptr noundef %51, i64 noundef %53) #11
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %4, align 8, !tbaa !27
  %58 = load i32, ptr %6, align 4, !tbaa !21
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %57, i64 %59
  store ptr %60, ptr %3, align 8
  store i32 1, ptr %7, align 4
  br label %66

61:                                               ; preds = %49
  %62 = load ptr, ptr %4, align 8, !tbaa !27
  %63 = getelementptr inbounds nuw i8, ptr %62, i32 1
  store ptr %63, ptr %4, align 8, !tbaa !27
  br label %45, !llvm.loop !393

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %64, %43
  store ptr null, ptr %3, align 8
  store i32 1, ptr %7, align 4
  br label %66

66:                                               ; preds = %65, %56, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  %67 = load ptr, ptr %3, align 8
  ret ptr %67
}

; Function Attrs: nounwind
define internal void @update_line(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !27
  store ptr %1, ptr %5, align 8, !tbaa !27
  store ptr %2, ptr %6, align 8, !tbaa !355
  br label %7

7:                                                ; preds = %21, %3
  %8 = load ptr, ptr %4, align 8, !tbaa !27
  %9 = load ptr, ptr %5, align 8, !tbaa !27
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 8, !tbaa !27
  %13 = load i8, ptr %12, align 1, !tbaa !28
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load ptr, ptr %6, align 8, !tbaa !355
  %18 = load i32, ptr %17, align 4, !tbaa !21
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !21
  br label %20

20:                                               ; preds = %16, %11
  br label %21

21:                                               ; preds = %20
  %22 = load ptr, ptr %4, align 8, !tbaa !27
  %23 = getelementptr inbounds nuw i8, ptr %22, i32 1
  store ptr %23, ptr %4, align 8, !tbaa !27
  br label %7, !llvm.loop !394

24:                                               ; preds = %7
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: nounwind
define internal ptr @binary_op_ZNode(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #9
  %6 = load ptr, ptr %3, align 8, !tbaa !72
  %7 = getelementptr inbounds nuw %struct.SNode, ptr %6, i32 0, i32 6
  %8 = getelementptr inbounds nuw %struct.VecZNode, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8, !tbaa !211
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store ptr null, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %63

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8, !tbaa !72
  %14 = getelementptr inbounds nuw %struct.SNode, ptr %13, i32 0, i32 6
  %15 = getelementptr inbounds nuw %struct.VecZNode, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !212
  %17 = getelementptr inbounds ptr, ptr %16, i64 0
  %18 = load ptr, ptr %17, align 8, !tbaa !188
  store ptr %18, ptr %4, align 8, !tbaa !188
  %19 = load ptr, ptr %4, align 8, !tbaa !188
  %20 = getelementptr inbounds nuw %struct.ZNode, ptr %19, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8, !tbaa !213
  %22 = getelementptr inbounds nuw %struct.PNode, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !277
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %52

25:                                               ; preds = %12
  %26 = load ptr, ptr %4, align 8, !tbaa !188
  %27 = getelementptr inbounds nuw %struct.ZNode, ptr %26, i32 0, i32 1
  %28 = getelementptr inbounds nuw %struct.VecSNode, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !266
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store ptr null, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %63

32:                                               ; preds = %25
  %33 = load ptr, ptr %4, align 8, !tbaa !188
  %34 = getelementptr inbounds nuw %struct.ZNode, ptr %33, i32 0, i32 1
  %35 = getelementptr inbounds nuw %struct.VecSNode, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !267
  %37 = getelementptr inbounds ptr, ptr %36, i64 0
  %38 = load ptr, ptr %37, align 8, !tbaa !72
  store ptr %38, ptr %3, align 8, !tbaa !72
  %39 = load ptr, ptr %3, align 8, !tbaa !72
  %40 = getelementptr inbounds nuw %struct.SNode, ptr %39, i32 0, i32 6
  %41 = getelementptr inbounds nuw %struct.VecZNode, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 8, !tbaa !211
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store ptr null, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %63

45:                                               ; preds = %32
  %46 = load ptr, ptr %3, align 8, !tbaa !72
  %47 = getelementptr inbounds nuw %struct.SNode, ptr %46, i32 0, i32 6
  %48 = getelementptr inbounds nuw %struct.VecZNode, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !212
  %50 = getelementptr inbounds ptr, ptr %49, i64 0
  %51 = load ptr, ptr %50, align 8, !tbaa !188
  store ptr %51, ptr %4, align 8, !tbaa !188
  br label %52

52:                                               ; preds = %45, %12
  %53 = load ptr, ptr %4, align 8, !tbaa !188
  %54 = getelementptr inbounds nuw %struct.ZNode, ptr %53, i32 0, i32 0
  %55 = load ptr, ptr %54, align 8, !tbaa !213
  %56 = getelementptr inbounds nuw %struct.PNode, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !277
  %58 = and i32 %57, 16
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  store ptr null, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %63

61:                                               ; preds = %52
  %62 = load ptr, ptr %4, align 8, !tbaa !188
  store ptr %62, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %63

63:                                               ; preds = %61, %60, %44, %31, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #9
  %64 = load ptr, ptr %2, align 8
  ret ptr %64
}

; Function Attrs: nounwind
define internal signext i32 @VecSNode_equal(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !67
  store ptr %1, ptr %5, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  %9 = load ptr, ptr %4, align 8, !tbaa !67
  %10 = getelementptr inbounds nuw %struct.VecSNode, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 8, !tbaa !395
  %12 = load ptr, ptr %5, align 8, !tbaa !67
  %13 = getelementptr inbounds nuw %struct.VecSNode, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8, !tbaa !395
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %64

17:                                               ; preds = %2
  store i32 0, ptr %6, align 4, !tbaa !21
  br label %18

18:                                               ; preds = %60, %17
  %19 = load i32, ptr %6, align 4, !tbaa !21
  %20 = load ptr, ptr %4, align 8, !tbaa !67
  %21 = getelementptr inbounds nuw %struct.VecSNode, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8, !tbaa !395
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %18
  store i32 0, ptr %7, align 4, !tbaa !21
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, ptr %7, align 4, !tbaa !21
  %27 = load ptr, ptr %5, align 8, !tbaa !67
  %28 = getelementptr inbounds nuw %struct.VecSNode, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !395
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load ptr, ptr %4, align 8, !tbaa !67
  %33 = getelementptr inbounds nuw %struct.VecSNode, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !396
  %35 = load i32, ptr %6, align 4, !tbaa !21
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !72
  %39 = load ptr, ptr %5, align 8, !tbaa !67
  %40 = getelementptr inbounds nuw %struct.VecSNode, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !396
  %42 = load i32, ptr %7, align 4, !tbaa !21
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !72
  %46 = icmp eq ptr %38, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  br label %52

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = load i32, ptr %7, align 4, !tbaa !21
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %7, align 4, !tbaa !21
  br label %25, !llvm.loop !397

52:                                               ; preds = %47, %25
  %53 = load i32, ptr %7, align 4, !tbaa !21
  %54 = load ptr, ptr %5, align 8, !tbaa !67
  %55 = getelementptr inbounds nuw %struct.VecSNode, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8, !tbaa !395
  %57 = icmp uge i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %64

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59
  %61 = load i32, ptr %6, align 4, !tbaa !21
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %6, align 4, !tbaa !21
  br label %18, !llvm.loop !398

63:                                               ; preds = %18
  store i32 1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %64

64:                                               ; preds = %63, %58, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  %65 = load i32, ptr %3, align 4
  ret i32 %65
}

declare signext i32 @scan_buffer(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
define internal ptr @resolve_ambiguities(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.anon.3, align 8
  store ptr %0, ptr %3, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr %8) #9
  br label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  store i32 0, ptr %10, align 8, !tbaa !399
  %11 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  store ptr null, ptr %11, align 8, !tbaa !401
  br label %12

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %4, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.PNode, ptr %14, i32 0, i32 19
  %16 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %15, i32 0, i32 1
  %17 = getelementptr inbounds nuw %struct.d_loc_t, ptr %16, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8, !tbaa !25
  %19 = load ptr, ptr %4, align 8, !tbaa !3
  %20 = getelementptr inbounds nuw %struct.PNode, ptr %19, i32 0, i32 19
  %21 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !222
  %23 = icmp eq ptr %18, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load ptr, ptr %4, align 8, !tbaa !3
  %26 = call signext i32 @final_actionless(ptr noundef %25)
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %24, %13
  %29 = phi i1 [ false, %13 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, ptr %7, align 4, !tbaa !21
  br label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !401
  %34 = icmp ne ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 8, !tbaa !3
  %37 = getelementptr inbounds nuw %struct.PNode, ptr %36, i32 0, i32 19
  %38 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 3
  %39 = getelementptr inbounds [3 x ptr], ptr %38, i64 0, i64 0
  %40 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !401
  %41 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %42 = load i32, ptr %41, align 8, !tbaa !399
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 8, !tbaa !399
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds nuw ptr, ptr %39, i64 %44
  store ptr %37, ptr %45, align 8, !tbaa !59
  br label %88

46:                                               ; preds = %31
  %47 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !401
  %49 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 3
  %50 = getelementptr inbounds [3 x ptr], ptr %49, i64 0, i64 0
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %54 = load i32, ptr %53, align 8, !tbaa !399
  %55 = icmp ult i32 %54, 3
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load ptr, ptr %4, align 8, !tbaa !3
  %58 = getelementptr inbounds nuw %struct.PNode, ptr %57, i32 0, i32 19
  %59 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !401
  %61 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %62 = load i32, ptr %61, align 8, !tbaa !399
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 8, !tbaa !399
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds nuw ptr, ptr %60, i64 %64
  store ptr %58, ptr %65, align 8, !tbaa !59
  br label %88

66:                                               ; preds = %52
  br label %83

67:                                               ; preds = %46
  %68 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %69 = load i32, ptr %68, align 8, !tbaa !399
  %70 = and i32 %69, 7
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load ptr, ptr %4, align 8, !tbaa !3
  %74 = getelementptr inbounds nuw %struct.PNode, ptr %73, i32 0, i32 19
  %75 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !401
  %77 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %78 = load i32, ptr %77, align 8, !tbaa !399
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 8, !tbaa !399
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds nuw ptr, ptr %76, i64 %80
  store ptr %74, ptr %81, align 8, !tbaa !59
  br label %88

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %66
  br label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr %4, align 8, !tbaa !3
  %86 = getelementptr inbounds nuw %struct.PNode, ptr %85, i32 0, i32 19
  call void @vec_add_internal(ptr noundef %8, ptr noundef %86)
  br label %87

87:                                               ; preds = %84
  br label %88

88:                                               ; preds = %87, %72, %56, %35
  %89 = load ptr, ptr %4, align 8, !tbaa !3
  %90 = getelementptr inbounds nuw %struct.PNode, ptr %89, i32 0, i32 13
  %91 = load ptr, ptr %90, align 8, !tbaa !102
  store ptr %91, ptr %5, align 8, !tbaa !3
  br label %92

92:                                               ; preds = %180, %88
  %93 = load ptr, ptr %5, align 8, !tbaa !3
  %94 = icmp ne ptr %93, null
  br i1 %94, label %95, label %184

95:                                               ; preds = %92
  %96 = load ptr, ptr %3, align 8, !tbaa !30
  %97 = getelementptr inbounds nuw %struct.Parser, ptr %96, i32 0, i32 0
  %98 = getelementptr inbounds nuw %struct.D_Parser, ptr %97, i32 0, i32 12
  %99 = load i32, ptr %98, align 4, !tbaa !402
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %95
  %102 = load i32, ptr %7, align 4, !tbaa !21
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %101
  %105 = load ptr, ptr %5, align 8, !tbaa !3
  %106 = getelementptr inbounds nuw %struct.PNode, ptr %105, i32 0, i32 19
  %107 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %106, i32 0, i32 1
  %108 = getelementptr inbounds nuw %struct.d_loc_t, ptr %107, i32 0, i32 0
  %109 = load ptr, ptr %108, align 8, !tbaa !25
  %110 = load ptr, ptr %5, align 8, !tbaa !3
  %111 = getelementptr inbounds nuw %struct.PNode, ptr %110, i32 0, i32 19
  %112 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !222
  %114 = icmp eq ptr %109, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %104
  %116 = load ptr, ptr %5, align 8, !tbaa !3
  %117 = call signext i32 @final_actionless(ptr noundef %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %180

120:                                              ; preds = %115, %104, %101
  br label %121

121:                                              ; preds = %120, %95
  br label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !401
  %125 = icmp ne ptr %124, null
  br i1 %125, label %137, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %5, align 8, !tbaa !3
  %128 = getelementptr inbounds nuw %struct.PNode, ptr %127, i32 0, i32 19
  %129 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 3
  %130 = getelementptr inbounds [3 x ptr], ptr %129, i64 0, i64 0
  %131 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !401
  %132 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %133 = load i32, ptr %132, align 8, !tbaa !399
  %134 = add i32 %133, 1
  store i32 %134, ptr %132, align 8, !tbaa !399
  %135 = zext i32 %133 to i64
  %136 = getelementptr inbounds nuw ptr, ptr %130, i64 %135
  store ptr %128, ptr %136, align 8, !tbaa !59
  br label %179

137:                                              ; preds = %122
  %138 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !401
  %140 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 3
  %141 = getelementptr inbounds [3 x ptr], ptr %140, i64 0, i64 0
  %142 = icmp eq ptr %139, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %137
  %144 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %145 = load i32, ptr %144, align 8, !tbaa !399
  %146 = icmp ult i32 %145, 3
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load ptr, ptr %5, align 8, !tbaa !3
  %149 = getelementptr inbounds nuw %struct.PNode, ptr %148, i32 0, i32 19
  %150 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !401
  %152 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %153 = load i32, ptr %152, align 8, !tbaa !399
  %154 = add i32 %153, 1
  store i32 %154, ptr %152, align 8, !tbaa !399
  %155 = zext i32 %153 to i64
  %156 = getelementptr inbounds nuw ptr, ptr %151, i64 %155
  store ptr %149, ptr %156, align 8, !tbaa !59
  br label %179

157:                                              ; preds = %143
  br label %174

158:                                              ; preds = %137
  %159 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %160 = load i32, ptr %159, align 8, !tbaa !399
  %161 = and i32 %160, 7
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %158
  %164 = load ptr, ptr %5, align 8, !tbaa !3
  %165 = getelementptr inbounds nuw %struct.PNode, ptr %164, i32 0, i32 19
  %166 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !401
  %168 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %169 = load i32, ptr %168, align 8, !tbaa !399
  %170 = add i32 %169, 1
  store i32 %170, ptr %168, align 8, !tbaa !399
  %171 = zext i32 %169 to i64
  %172 = getelementptr inbounds nuw ptr, ptr %167, i64 %171
  store ptr %165, ptr %172, align 8, !tbaa !59
  br label %179

173:                                              ; preds = %158
  br label %174

174:                                              ; preds = %173, %157
  br label %175

175:                                              ; preds = %174
  %176 = load ptr, ptr %5, align 8, !tbaa !3
  %177 = getelementptr inbounds nuw %struct.PNode, ptr %176, i32 0, i32 19
  call void @vec_add_internal(ptr noundef %8, ptr noundef %177)
  br label %178

178:                                              ; preds = %175
  br label %179

179:                                              ; preds = %178, %163, %147, %126
  br label %180

180:                                              ; preds = %179, %119
  %181 = load ptr, ptr %5, align 8, !tbaa !3
  %182 = getelementptr inbounds nuw %struct.PNode, ptr %181, i32 0, i32 13
  %183 = load ptr, ptr %182, align 8, !tbaa !102
  store ptr %183, ptr %5, align 8, !tbaa !3
  br label %92, !llvm.loop !403

184:                                              ; preds = %92
  %185 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %186 = load i32, ptr %185, align 8, !tbaa !399
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !401
  %191 = getelementptr inbounds ptr, ptr %190, i64 0
  %192 = load ptr, ptr %191, align 8, !tbaa !59
  store ptr %192, ptr %6, align 8, !tbaa !59
  br label %204

193:                                              ; preds = %184
  %194 = load ptr, ptr %3, align 8, !tbaa !30
  %195 = getelementptr inbounds nuw %struct.Parser, ptr %194, i32 0, i32 0
  %196 = getelementptr inbounds nuw %struct.D_Parser, ptr %195, i32 0, i32 4
  %197 = load ptr, ptr %196, align 8, !tbaa !129
  %198 = load ptr, ptr %3, align 8, !tbaa !30
  %199 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  %200 = load i32, ptr %199, align 8, !tbaa !399
  %201 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !401
  %203 = call ptr %197(ptr noundef %198, i32 noundef signext %200, ptr noundef %202)
  store ptr %203, ptr %6, align 8, !tbaa !59
  br label %204

204:                                              ; preds = %193, %188
  br label %205

205:                                              ; preds = %204
  %206 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !401
  %208 = icmp ne ptr %207, null
  br i1 %208, label %209, label %218

209:                                              ; preds = %205
  %210 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !401
  %212 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 3
  %213 = getelementptr inbounds [3 x ptr], ptr %212, i64 0, i64 0
  %214 = icmp ne ptr %211, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !401
  call void @free(ptr noundef %217) #9
  br label %218

218:                                              ; preds = %215, %209, %205
  br label %219

219:                                              ; preds = %218
  %220 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 0
  store i32 0, ptr %220, align 8, !tbaa !399
  %221 = getelementptr inbounds nuw %struct.anon.3, ptr %8, i32 0, i32 2
  store ptr null, ptr %221, align 8, !tbaa !401
  br label %222

222:                                              ; preds = %219
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224
  %226 = load ptr, ptr %6, align 8, !tbaa !59
  %227 = sext i32 sub nsw (i32 0, i32 ptrtoint (ptr getelementptr (%struct.PNode, ptr null, i32 0, i32 19) to i32)) to i64
  %228 = getelementptr inbounds i8, ptr %226, i64 %227
  call void @llvm.lifetime.end.p0(i64 40, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret ptr %228
}

; Function Attrs: nounwind
define internal void @fixup_internal_symbol(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !30
  store ptr %1, ptr %5, align 8, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  %11 = load ptr, ptr %5, align 8, !tbaa !3
  %12 = getelementptr inbounds nuw %struct.PNode, ptr %11, i32 0, i32 7
  %13 = getelementptr inbounds nuw %struct.VecPNode, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = load i32, ptr %6, align 4, !tbaa !21
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !3
  store ptr %18, ptr %7, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #9
  %19 = load ptr, ptr %7, align 8, !tbaa !3
  %20 = getelementptr inbounds nuw %struct.PNode, ptr %19, i32 0, i32 7
  %21 = getelementptr inbounds nuw %struct.VecPNode, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8, !tbaa !20
  store i32 %22, ptr %9, align 4, !tbaa !21
  %23 = load ptr, ptr %5, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.PNode, ptr %23, i32 0, i32 7
  %25 = getelementptr inbounds nuw %struct.VecPNode, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 8, !tbaa !20
  store i32 %26, ptr %10, align 4, !tbaa !21
  %27 = load ptr, ptr %5, align 8, !tbaa !3
  %28 = load ptr, ptr %7, align 8, !tbaa !3
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  call void (ptr, ...) @d_fail(ptr noundef @.str.12)
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32, ptr %9, align 4, !tbaa !21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %31
  %35 = load i32, ptr %6, align 4, !tbaa !21
  store i32 %35, ptr %8, align 4, !tbaa !21
  br label %36

36:                                               ; preds = %58, %34
  %37 = load i32, ptr %8, align 4, !tbaa !21
  %38 = load i32, ptr %10, align 4, !tbaa !21
  %39 = sub nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load ptr, ptr %5, align 8, !tbaa !3
  %43 = getelementptr inbounds nuw %struct.PNode, ptr %42, i32 0, i32 7
  %44 = getelementptr inbounds nuw %struct.VecPNode, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !22
  %46 = load i32, ptr %8, align 4, !tbaa !21
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %45, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !3
  %51 = load ptr, ptr %5, align 8, !tbaa !3
  %52 = getelementptr inbounds nuw %struct.PNode, ptr %51, i32 0, i32 7
  %53 = getelementptr inbounds nuw %struct.VecPNode, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !22
  %55 = load i32, ptr %8, align 4, !tbaa !21
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %54, i64 %56
  store ptr %50, ptr %57, align 8, !tbaa !3
  br label %58

58:                                               ; preds = %41
  %59 = load i32, ptr %8, align 4, !tbaa !21
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %8, align 4, !tbaa !21
  br label %36, !llvm.loop !404

61:                                               ; preds = %36
  %62 = load ptr, ptr %5, align 8, !tbaa !3
  %63 = getelementptr inbounds nuw %struct.PNode, ptr %62, i32 0, i32 7
  %64 = getelementptr inbounds nuw %struct.VecPNode, ptr %63, i32 0, i32 0
  %65 = load i32, ptr %64, align 8, !tbaa !20
  %66 = add i32 %65, -1
  store i32 %66, ptr %64, align 8, !tbaa !20
  br label %254

67:                                               ; preds = %31
  %68 = load i32, ptr %9, align 4, !tbaa !21
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %96

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %7, align 8, !tbaa !3
  %73 = getelementptr inbounds nuw %struct.PNode, ptr %72, i32 0, i32 7
  %74 = getelementptr inbounds nuw %struct.VecPNode, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !22
  %76 = getelementptr inbounds ptr, ptr %75, i64 0
  %77 = load ptr, ptr %76, align 8, !tbaa !3
  %78 = getelementptr inbounds nuw %struct.PNode, ptr %77, i32 0, i32 6
  %79 = load i32, ptr %78, align 8, !tbaa !100
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 8, !tbaa !100
  br label %81

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81
  %83 = load ptr, ptr %7, align 8, !tbaa !3
  %84 = getelementptr inbounds nuw %struct.PNode, ptr %83, i32 0, i32 7
  %85 = getelementptr inbounds nuw %struct.VecPNode, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !22
  %87 = getelementptr inbounds ptr, ptr %86, i64 0
  %88 = load ptr, ptr %87, align 8, !tbaa !3
  %89 = load ptr, ptr %5, align 8, !tbaa !3
  %90 = getelementptr inbounds nuw %struct.PNode, ptr %89, i32 0, i32 7
  %91 = getelementptr inbounds nuw %struct.VecPNode, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !22
  %93 = load i32, ptr %6, align 4, !tbaa !21
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds ptr, ptr %92, i64 %94
  store ptr %88, ptr %95, align 8, !tbaa !3
  br label %253

96:                                               ; preds = %67
  store i32 0, ptr %8, align 4, !tbaa !21
  br label %97

97:                                               ; preds = %179, %96
  %98 = load i32, ptr %8, align 4, !tbaa !21
  %99 = load i32, ptr %9, align 4, !tbaa !21
  %100 = sub nsw i32 %99, 1
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %182

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102
  %104 = load ptr, ptr %5, align 8, !tbaa !3
  %105 = getelementptr inbounds nuw %struct.PNode, ptr %104, i32 0, i32 7
  %106 = getelementptr inbounds nuw %struct.VecPNode, ptr %105, i32 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !22
  %108 = icmp ne ptr %107, null
  br i1 %108, label %124, label %109

109:                                              ; preds = %103
  %110 = load ptr, ptr %5, align 8, !tbaa !3
  %111 = getelementptr inbounds nuw %struct.PNode, ptr %110, i32 0, i32 7
  %112 = getelementptr inbounds nuw %struct.VecPNode, ptr %111, i32 0, i32 3
  %113 = getelementptr inbounds [3 x ptr], ptr %112, i64 0, i64 0
  %114 = load ptr, ptr %5, align 8, !tbaa !3
  %115 = getelementptr inbounds nuw %struct.PNode, ptr %114, i32 0, i32 7
  %116 = getelementptr inbounds nuw %struct.VecPNode, ptr %115, i32 0, i32 2
  store ptr %113, ptr %116, align 8, !tbaa !22
  %117 = load ptr, ptr %5, align 8, !tbaa !3
  %118 = getelementptr inbounds nuw %struct.PNode, ptr %117, i32 0, i32 7
  %119 = getelementptr inbounds nuw %struct.VecPNode, ptr %118, i32 0, i32 0
  %120 = load i32, ptr %119, align 8, !tbaa !20
  %121 = add i32 %120, 1
  store i32 %121, ptr %119, align 8, !tbaa !20
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds nuw ptr, ptr %113, i64 %122
  store ptr null, ptr %123, align 8, !tbaa !3
  br label %178

124:                                              ; preds = %103
  %125 = load ptr, ptr %5, align 8, !tbaa !3
  %126 = getelementptr inbounds nuw %struct.PNode, ptr %125, i32 0, i32 7
  %127 = getelementptr inbounds nuw %struct.VecPNode, ptr %126, i32 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !22
  %129 = load ptr, ptr %5, align 8, !tbaa !3
  %130 = getelementptr inbounds nuw %struct.PNode, ptr %129, i32 0, i32 7
  %131 = getelementptr inbounds nuw %struct.VecPNode, ptr %130, i32 0, i32 3
  %132 = getelementptr inbounds [3 x ptr], ptr %131, i64 0, i64 0
  %133 = icmp eq ptr %128, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %124
  %135 = load ptr, ptr %5, align 8, !tbaa !3
  %136 = getelementptr inbounds nuw %struct.PNode, ptr %135, i32 0, i32 7
  %137 = getelementptr inbounds nuw %struct.VecPNode, ptr %136, i32 0, i32 0
  %138 = load i32, ptr %137, align 8, !tbaa !20
  %139 = icmp ult i32 %138, 3
  br i1 %139, label %140, label %152

140:                                              ; preds = %134
  %141 = load ptr, ptr %5, align 8, !tbaa !3
  %142 = getelementptr inbounds nuw %struct.PNode, ptr %141, i32 0, i32 7
  %143 = getelementptr inbounds nuw %struct.VecPNode, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !22
  %145 = load ptr, ptr %5, align 8, !tbaa !3
  %146 = getelementptr inbounds nuw %struct.PNode, ptr %145, i32 0, i32 7
  %147 = getelementptr inbounds nuw %struct.VecPNode, ptr %146, i32 0, i32 0
  %148 = load i32, ptr %147, align 8, !tbaa !20
  %149 = add i32 %148, 1
  store i32 %149, ptr %147, align 8, !tbaa !20
  %150 = zext i32 %148 to i64
  %151 = getelementptr inbounds nuw ptr, ptr %144, i64 %150
  store ptr null, ptr %151, align 8, !tbaa !3
  br label %178

152:                                              ; preds = %134
  br label %173

153:                                              ; preds = %124
  %154 = load ptr, ptr %5, align 8, !tbaa !3
  %155 = getelementptr inbounds nuw %struct.PNode, ptr %154, i32 0, i32 7
  %156 = getelementptr inbounds nuw %struct.VecPNode, ptr %155, i32 0, i32 0
  %157 = load i32, ptr %156, align 8, !tbaa !20
  %158 = and i32 %157, 7
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %153
  %161 = load ptr, ptr %5, align 8, !tbaa !3
  %162 = getelementptr inbounds nuw %struct.PNode, ptr %161, i32 0, i32 7
  %163 = getelementptr inbounds nuw %struct.VecPNode, ptr %162, i32 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !22
  %165 = load ptr, ptr %5, align 8, !tbaa !3
  %166 = getelementptr inbounds nuw %struct.PNode, ptr %165, i32 0, i32 7
  %167 = getelementptr inbounds nuw %struct.VecPNode, ptr %166, i32 0, i32 0
  %168 = load i32, ptr %167, align 8, !tbaa !20
  %169 = add i32 %168, 1
  store i32 %169, ptr %167, align 8, !tbaa !20
  %170 = zext i32 %168 to i64
  %171 = getelementptr inbounds nuw ptr, ptr %164, i64 %170
  store ptr null, ptr %171, align 8, !tbaa !3
  br label %178

172:                                              ; preds = %153
  br label %173

173:                                              ; preds = %172, %152
  br label %174

174:                                              ; preds = %173
  %175 = load ptr, ptr %5, align 8, !tbaa !3
  %176 = getelementptr inbounds nuw %struct.PNode, ptr %175, i32 0, i32 7
  call void @vec_add_internal(ptr noundef %176, ptr noundef null)
  br label %177

177:                                              ; preds = %174
  br label %178

178:                                              ; preds = %177, %160, %140, %109
  br label %179

179:                                              ; preds = %178
  %180 = load i32, ptr %8, align 4, !tbaa !21
  %181 = add nsw i32 %180, 1
  store i32 %181, ptr %8, align 4, !tbaa !21
  br label %97, !llvm.loop !405

182:                                              ; preds = %97
  %183 = load i32, ptr %10, align 4, !tbaa !21
  %184 = sub nsw i32 %183, 1
  store i32 %184, ptr %8, align 4, !tbaa !21
  br label %185

185:                                              ; preds = %209, %182
  %186 = load i32, ptr %8, align 4, !tbaa !21
  %187 = load i32, ptr %6, align 4, !tbaa !21
  %188 = add nsw i32 %187, 1
  %189 = icmp sge i32 %186, %188
  br i1 %189, label %190, label %212

190:                                              ; preds = %185
  %191 = load ptr, ptr %5, align 8, !tbaa !3
  %192 = getelementptr inbounds nuw %struct.PNode, ptr %191, i32 0, i32 7
  %193 = getelementptr inbounds nuw %struct.VecPNode, ptr %192, i32 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !22
  %195 = load i32, ptr %8, align 4, !tbaa !21
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds ptr, ptr %194, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !3
  %199 = load ptr, ptr %5, align 8, !tbaa !3
  %200 = getelementptr inbounds nuw %struct.PNode, ptr %199, i32 0, i32 7
  %201 = getelementptr inbounds nuw %struct.VecPNode, ptr %200, i32 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !22
  %203 = load i32, ptr %8, align 4, !tbaa !21
  %204 = sub nsw i32 %203, 1
  %205 = load i32, ptr %9, align 4, !tbaa !21
  %206 = add nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds ptr, ptr %202, i64 %207
  store ptr %198, ptr %208, align 8, !tbaa !3
  br label %209

209:                                              ; preds = %190
  %210 = load i32, ptr %8, align 4, !tbaa !21
  %211 = add nsw i32 %210, -1
  store i32 %211, ptr %8, align 4, !tbaa !21
  br label %185, !llvm.loop !406

212:                                              ; preds = %185
  store i32 0, ptr %8, align 4, !tbaa !21
  br label %213

213:                                              ; preds = %249, %212
  %214 = load i32, ptr %8, align 4, !tbaa !21
  %215 = load i32, ptr %9, align 4, !tbaa !21
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %252

217:                                              ; preds = %213
  br label %218

218:                                              ; preds = %217
  %219 = load ptr, ptr %7, align 8, !tbaa !3
  %220 = getelementptr inbounds nuw %struct.PNode, ptr %219, i32 0, i32 7
  %221 = getelementptr inbounds nuw %struct.VecPNode, ptr %220, i32 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !22
  %223 = load i32, ptr %8, align 4, !tbaa !21
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds ptr, ptr %222, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !3
  %227 = getelementptr inbounds nuw %struct.PNode, ptr %226, i32 0, i32 6
  %228 = load i32, ptr %227, align 8, !tbaa !100
  %229 = add i32 %228, 1
  store i32 %229, ptr %227, align 8, !tbaa !100
  br label %230

230:                                              ; preds = %218
  br label %231

231:                                              ; preds = %230
  %232 = load ptr, ptr %7, align 8, !tbaa !3
  %233 = getelementptr inbounds nuw %struct.PNode, ptr %232, i32 0, i32 7
  %234 = getelementptr inbounds nuw %struct.VecPNode, ptr %233, i32 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !22
  %236 = load i32, ptr %8, align 4, !tbaa !21
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds ptr, ptr %235, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !3
  %240 = load ptr, ptr %5, align 8, !tbaa !3
  %241 = getelementptr inbounds nuw %struct.PNode, ptr %240, i32 0, i32 7
  %242 = getelementptr inbounds nuw %struct.VecPNode, ptr %241, i32 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !22
  %244 = load i32, ptr %6, align 4, !tbaa !21
  %245 = load i32, ptr %8, align 4, !tbaa !21
  %246 = add nsw i32 %244, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds ptr, ptr %243, i64 %247
  store ptr %239, ptr %248, align 8, !tbaa !3
  br label %249

249:                                              ; preds = %231
  %250 = load i32, ptr %8, align 4, !tbaa !21
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %8, align 4, !tbaa !21
  br label %213, !llvm.loop !407

252:                                              ; preds = %213
  br label %253

253:                                              ; preds = %252, %82
  br label %254

254:                                              ; preds = %253, %61
  br label %255

255:                                              ; preds = %254
  %256 = load ptr, ptr %7, align 8, !tbaa !3
  %257 = getelementptr inbounds nuw %struct.PNode, ptr %256, i32 0, i32 6
  %258 = load i32, ptr %257, align 8, !tbaa !100
  %259 = add i32 %258, -1
  store i32 %259, ptr %257, align 8, !tbaa !100
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %255
  %262 = load ptr, ptr %4, align 8, !tbaa !30
  %263 = load ptr, ptr %7, align 8, !tbaa !3
  call void @free_PNode(ptr noundef %262, ptr noundef %263)
  br label %264

264:                                              ; preds = %261, %255
  br label %265

265:                                              ; preds = %264
  br label %266

266:                                              ; preds = %265
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  ret void
}

; Function Attrs: nounwind
define internal signext i32 @final_actionless(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  %6 = load ptr, ptr %3, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.PNode, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !tbaa !3
  %12 = getelementptr inbounds nuw %struct.PNode, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = getelementptr inbounds nuw %struct.D_Reduction, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !230
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 0, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %43

18:                                               ; preds = %10, %1
  store i32 0, ptr %4, align 4, !tbaa !21
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, ptr %4, align 4, !tbaa !21
  %21 = load ptr, ptr %3, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.PNode, ptr %21, i32 0, i32 7
  %23 = getelementptr inbounds nuw %struct.VecPNode, ptr %22, i32 0, i32 0
  %24 = load i32, ptr %23, align 8, !tbaa !20
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load ptr, ptr %3, align 8, !tbaa !3
  %28 = getelementptr inbounds nuw %struct.PNode, ptr %27, i32 0, i32 7
  %29 = getelementptr inbounds nuw %struct.VecPNode, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = load i32, ptr %4, align 4, !tbaa !21
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !3
  %35 = call signext i32 @final_actionless(ptr noundef %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  store i32 0, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %43

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %4, align 4, !tbaa !21
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %4, align 4, !tbaa !21
  br label %19, !llvm.loop !408

42:                                               ; preds = %19
  store i32 1, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %43

43:                                               ; preds = %42, %37, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  %44 = load i32, ptr %2, align 4
  ret i32 %44
}

; Function Attrs: nounwind
define internal void @free_ZNode(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !30
  store ptr %1, ptr %5, align 8, !tbaa !188
  store ptr %2, ptr %6, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  br label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %5, align 8, !tbaa !188
  %10 = getelementptr inbounds nuw %struct.ZNode, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8, !tbaa !213
  %12 = getelementptr inbounds nuw %struct.PNode, ptr %11, i32 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !100
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 8, !tbaa !100
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %4, align 8, !tbaa !30
  %18 = load ptr, ptr %5, align 8, !tbaa !188
  %19 = getelementptr inbounds nuw %struct.ZNode, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8, !tbaa !213
  call void @free_PNode(ptr noundef %17, ptr noundef %20)
  br label %21

21:                                               ; preds = %16, %8
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22
  store i32 0, ptr %7, align 4, !tbaa !21
  br label %24

24:                                               ; preds = %70, %23
  %25 = load i32, ptr %7, align 4, !tbaa !21
  %26 = load ptr, ptr %5, align 8, !tbaa !188
  %27 = getelementptr inbounds nuw %struct.ZNode, ptr %26, i32 0, i32 1
  %28 = getelementptr inbounds nuw %struct.VecSNode, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !266
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %73

31:                                               ; preds = %24
  %32 = load ptr, ptr %6, align 8, !tbaa !72
  %33 = load ptr, ptr %5, align 8, !tbaa !188
  %34 = getelementptr inbounds nuw %struct.ZNode, ptr %33, i32 0, i32 1
  %35 = getelementptr inbounds nuw %struct.VecSNode, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !267
  %37 = load i32, ptr %7, align 4, !tbaa !21
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = icmp ne ptr %32, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr %5, align 8, !tbaa !188
  %45 = getelementptr inbounds nuw %struct.ZNode, ptr %44, i32 0, i32 1
  %46 = getelementptr inbounds nuw %struct.VecSNode, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !267
  %48 = load i32, ptr %7, align 4, !tbaa !21
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %47, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !72
  %52 = getelementptr inbounds nuw %struct.SNode, ptr %51, i32 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !145
  %54 = add i32 %53, -1
  store i32 %54, ptr %52, align 8, !tbaa !145
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %43
  %57 = load ptr, ptr %4, align 8, !tbaa !30
  %58 = load ptr, ptr %5, align 8, !tbaa !188
  %59 = getelementptr inbounds nuw %struct.ZNode, ptr %58, i32 0, i32 1
  %60 = getelementptr inbounds nuw %struct.VecSNode, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !267
  %62 = load i32, ptr %7, align 4, !tbaa !21
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %61, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !72
  call void @free_SNode(ptr noundef %57, ptr noundef %65)
  br label %66

66:                                               ; preds = %56, %43
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %31
  br label %70

70:                                               ; preds = %69
  %71 = load i32, ptr %7, align 4, !tbaa !21
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %7, align 4, !tbaa !21
  br label %24, !llvm.loop !409

73:                                               ; preds = %24
  br label %74

74:                                               ; preds = %73
  %75 = load ptr, ptr %5, align 8, !tbaa !188
  %76 = getelementptr inbounds nuw %struct.ZNode, ptr %75, i32 0, i32 1
  %77 = getelementptr inbounds nuw %struct.VecSNode, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !267
  %79 = icmp ne ptr %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %74
  %81 = load ptr, ptr %5, align 8, !tbaa !188
  %82 = getelementptr inbounds nuw %struct.ZNode, ptr %81, i32 0, i32 1
  %83 = getelementptr inbounds nuw %struct.VecSNode, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !267
  %85 = load ptr, ptr %5, align 8, !tbaa !188
  %86 = getelementptr inbounds nuw %struct.ZNode, ptr %85, i32 0, i32 1
  %87 = getelementptr inbounds nuw %struct.VecSNode, ptr %86, i32 0, i32 3
  %88 = getelementptr inbounds [3 x ptr], ptr %87, i64 0, i64 0
  %89 = icmp ne ptr %84, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load ptr, ptr %5, align 8, !tbaa !188
  %92 = getelementptr inbounds nuw %struct.ZNode, ptr %91, i32 0, i32 1
  %93 = getelementptr inbounds nuw %struct.VecSNode, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !267
  call void @free(ptr noundef %94) #9
  br label %95

95:                                               ; preds = %90, %80, %74
  br label %96

96:                                               ; preds = %95
  %97 = load ptr, ptr %5, align 8, !tbaa !188
  %98 = getelementptr inbounds nuw %struct.ZNode, ptr %97, i32 0, i32 1
  %99 = getelementptr inbounds nuw %struct.VecSNode, ptr %98, i32 0, i32 0
  store i32 0, ptr %99, align 8, !tbaa !266
  %100 = load ptr, ptr %5, align 8, !tbaa !188
  %101 = getelementptr inbounds nuw %struct.ZNode, ptr %100, i32 0, i32 1
  %102 = getelementptr inbounds nuw %struct.VecSNode, ptr %101, i32 0, i32 2
  store ptr null, ptr %102, align 8, !tbaa !267
  br label %103

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105
  %107 = load ptr, ptr %4, align 8, !tbaa !30
  %108 = getelementptr inbounds nuw %struct.Parser, ptr %107, i32 0, i32 23
  %109 = load ptr, ptr %108, align 8, !tbaa !187
  %110 = load ptr, ptr %5, align 8, !tbaa !188
  %111 = getelementptr inbounds nuw %struct.ZNode, ptr %110, i32 0, i32 0
  store ptr %109, ptr %111, align 8, !tbaa !188
  %112 = load ptr, ptr %5, align 8, !tbaa !188
  %113 = load ptr, ptr %4, align 8, !tbaa !30
  %114 = getelementptr inbounds nuw %struct.Parser, ptr %113, i32 0, i32 23
  store ptr %112, ptr %114, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #7 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #8 = { inlinehint nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 _ZTS5PNode", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !6, i64 85}
!9 = !{!"PNode", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !11, i64 16, !12, i64 24, !10, i64 32, !13, i64 40, !10, i64 80, !6, i64 84, !6, i64 85, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !16, i64 120, !16, i64 128, !17, i64 136, !5, i64 144, !18, i64 152}
!10 = !{!"int", !6, i64 0}
!11 = !{!"p1 _ZTS11D_Reduction", !5, i64 0}
!12 = !{!"p1 _ZTS7D_Shift", !5, i64 0}
!13 = !{!"", !10, i64 0, !10, i64 4, !14, i64 8, !6, i64 16}
!14 = !{!"p2 _ZTS5PNode", !15, i64 0}
!15 = !{!"any p2 pointer", !5, i64 0}
!16 = !{!"p1 omnipotent char", !5, i64 0}
!17 = !{!"p1 _ZTS7D_Scope", !5, i64 0}
!18 = !{!"D_ParseNode", !10, i64 0, !19, i64 8, !16, i64 40, !16, i64 48, !17, i64 56, !5, i64 64, !5, i64 72, !5, i64 80}
!19 = !{!"d_loc_t", !16, i64 0, !16, i64 8, !10, i64 16, !10, i64 20, !10, i64 24}
!20 = !{!9, !10, i64 40}
!21 = !{!10, !10, i64 0}
!22 = !{!9, !14, i64 48}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!9, !16, i64 160}
!26 = !{!9, !16, i64 200}
!27 = !{!16, !16, i64 0}
!28 = !{!6, !6, i64 0}
!29 = distinct !{!29, !24}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS6Parser", !5, i64 0}
!32 = !{!33, !35, i64 144}
!33 = !{!"Parser", !34, i64 0, !16, i64 128, !16, i64 136, !35, i64 144, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !36, i64 184, !37, i64 216, !40, i64 256, !41, i64 264, !17, i64 272, !39, i64 280, !10, i64 288, !40, i64 296, !41, i64 304, !10, i64 312, !4, i64 320, !39, i64 328, !42, i64 336, !43, i64 344, !45, i64 384, !46, i64 392, !31, i64 416, !5, i64 424}
!34 = !{!"D_Parser", !5, i64 0, !5, i64 8, !17, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !19, i64 48, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124}
!35 = !{!"p1 _ZTS14D_ParserTables", !5, i64 0}
!36 = !{!"PNodeHash", !14, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !4, i64 24}
!37 = !{!"SNodeHash", !38, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !39, i64 24, !39, i64 32}
!38 = !{!"p2 _ZTS5SNode", !15, i64 0}
!39 = !{!"p1 _ZTS5SNode", !5, i64 0}
!40 = !{!"p1 _ZTS9Reduction", !5, i64 0}
!41 = !{!"p1 _ZTS5Shift", !5, i64 0}
!42 = !{!"p1 _ZTS5ZNode", !5, i64 0}
!43 = !{!"", !10, i64 0, !10, i64 4, !44, i64 8, !6, i64 16}
!44 = !{!"p2 _ZTS11D_Reduction", !15, i64 0}
!45 = !{!"p1 _ZTS11ShiftResult", !5, i64 0}
!46 = !{!"D_Shift", !47, i64 0, !6, i64 2, !6, i64 3, !10, i64 4, !10, i64 8, !5, i64 16}
!47 = !{!"short", !6, i64 0}
!48 = !{!49, !52, i64 32}
!49 = !{!"D_ParserTables", !10, i64 0, !50, i64 8, !51, i64 16, !10, i64 24, !10, i64 28, !52, i64 32, !5, i64 40, !10, i64 48, !53, i64 56, !10, i64 64}
!50 = !{!"p1 _ZTS7D_State", !5, i64 0}
!51 = !{!"p1 short", !5, i64 0}
!52 = !{!"p1 _ZTS8D_Symbol", !5, i64 0}
!53 = !{!"p1 _ZTS6D_Pass", !5, i64 0}
!54 = !{!9, !10, i64 152}
!55 = !{!56, !16, i64 8}
!56 = !{!"D_Symbol", !10, i64 0, !16, i64 8, !10, i64 16}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 _ZTS11D_ParseNode", !5, i64 0}
!61 = distinct !{!61, !24}
!62 = !{!63, !63, i64 0}
!63 = !{!"p1 _ZTS8D_Parser", !5, i64 0}
!64 = !{!9, !16, i64 120}
!65 = !{!9, !16, i64 128}
!66 = !{!17, !17, i64 0}
!67 = !{!5, !5, i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTS9SNodeHash", !5, i64 0}
!70 = !{!37, !38, i64 0}
!71 = !{!37, !10, i64 12}
!72 = !{!39, !39, i64 0}
!73 = !{!74, !50, i64 0}
!74 = !{!"SNode", !50, i64 0, !17, i64 8, !5, i64 16, !19, i64 24, !10, i64 56, !4, i64 64, !75, i64 72, !10, i64 112, !39, i64 120, !39, i64 128}
!75 = !{!"", !10, i64 0, !10, i64 4, !76, i64 8, !6, i64 16}
!76 = !{!"p2 _ZTS5ZNode", !15, i64 0}
!77 = !{!49, !50, i64 8}
!78 = !{!74, !17, i64 8}
!79 = !{!74, !5, i64 16}
!80 = !{!74, !39, i64 120}
!81 = distinct !{!81, !24}
!82 = !{!37, !10, i64 16}
!83 = !{!38, !38, i64 0}
!84 = !{!37, !10, i64 8}
!85 = distinct !{!85, !24}
!86 = distinct !{!86, !24}
!87 = !{!88, !88, i64 0}
!88 = !{!"p1 _ZTS9PNodeHash", !5, i64 0}
!89 = !{!36, !14, i64 0}
!90 = !{!36, !10, i64 12}
!91 = !{!9, !17, i64 136}
!92 = !{!9, !5, i64 144}
!93 = !{!9, !4, i64 96}
!94 = distinct !{!94, !24}
!95 = !{!36, !10, i64 16}
!96 = !{!14, !14, i64 0}
!97 = !{!36, !10, i64 8}
!98 = distinct !{!98, !24}
!99 = distinct !{!99, !24}
!100 = !{!9, !10, i64 32}
!101 = distinct !{!101, !24}
!102 = !{!9, !4, i64 104}
!103 = !{!104, !104, i64 0}
!104 = !{!"p2 _ZTS11D_ParseNode", !15, i64 0}
!105 = !{!33, !10, i64 176}
!106 = distinct !{!106, !24}
!107 = !{!18, !10, i64 32}
!108 = !{!18, !16, i64 16}
!109 = !{!49, !10, i64 48}
!110 = !{!49, !53, i64 56}
!111 = !{!53, !53, i64 0}
!112 = !{!113, !10, i64 12}
!113 = !{!"D_Pass", !16, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!114 = !{!9, !11, i64 16}
!115 = !{!116, !10, i64 40}
!116 = !{!"D_Reduction", !47, i64 0, !47, i64 2, !5, i64 8, !5, i64 16, !47, i64 24, !47, i64 26, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !15, i64 48}
!117 = !{!113, !10, i64 16}
!118 = !{!116, !15, i64 48}
!119 = distinct !{!119, !24}
!120 = distinct !{!120, !24}
!121 = !{!122, !122, i64 0}
!122 = !{!"p1 _ZTS7d_loc_t", !5, i64 0}
!123 = !{!15, !15, i64 0}
!124 = !{!35, !35, i64 0}
!125 = !{!33, !10, i64 72}
!126 = !{!33, !10, i64 84}
!127 = !{!33, !10, i64 112}
!128 = !{!33, !5, i64 24}
!129 = !{!33, !5, i64 32}
!130 = !{!33, !10, i64 116}
!131 = !{!49, !10, i64 64}
!132 = !{!33, !10, i64 88}
!133 = !{!49, !5, i64 40}
!134 = !{!33, !5, i64 8}
!135 = !{!49, !10, i64 24}
!136 = !{!34, !16, i64 56}
!137 = !{!138, !138, i64 0}
!138 = !{!"p1 _ZTS8_IO_FILE", !5, i64 0}
!139 = !{!34, !10, i64 72}
!140 = !{!33, !31, i64 416}
!141 = !{!19, !16, i64 0}
!142 = !{!33, !16, i64 128}
!143 = !{!33, !39, i64 280}
!144 = !{i64 0, i64 8, !27, i64 8, i64 8, !27, i64 16, i64 4, !21, i64 20, i64 4, !21, i64 24, i64 4, !21}
!145 = !{!74, !10, i64 112}
!146 = !{!34, !16, i64 48}
!147 = !{!19, !10, i64 16}
!148 = distinct !{!148, !24}
!149 = distinct !{!149, !24}
!150 = !{!51, !51, i64 0}
!151 = !{!47, !47, i64 0}
!152 = !{!19, !10, i64 24}
!153 = distinct !{!153, !24}
!154 = distinct !{!154, !24}
!155 = !{!19, !16, i64 8}
!156 = distinct !{!156, !24}
!157 = distinct !{!157, !24}
!158 = distinct !{!158, !24}
!159 = distinct !{!159, !24}
!160 = !{!19, !10, i64 20}
!161 = !{!33, !17, i64 272}
!162 = !{!33, !17, i64 16}
!163 = !{!33, !5, i64 40}
!164 = distinct !{!164, !24}
!165 = !{!9, !4, i64 112}
!166 = !{!33, !4, i64 320}
!167 = !{!9, !4, i64 88}
!168 = !{!33, !14, i64 184}
!169 = !{!33, !38, i64 216}
!170 = !{!33, !40, i64 256}
!171 = !{!33, !40, i64 296}
!172 = !{!173, !40, i64 40}
!173 = !{!"Reduction", !42, i64 0, !39, i64 8, !11, i64 16, !39, i64 24, !10, i64 32, !40, i64 40}
!174 = !{!40, !40, i64 0}
!175 = !{!173, !39, i64 8}
!176 = distinct !{!176, !24}
!177 = !{!33, !41, i64 264}
!178 = !{!33, !41, i64 304}
!179 = !{!180, !41, i64 8}
!180 = !{!"Shift", !39, i64 0, !41, i64 8}
!181 = !{!41, !41, i64 0}
!182 = !{!180, !39, i64 0}
!183 = distinct !{!183, !24}
!184 = distinct !{!184, !24}
!185 = distinct !{!185, !24}
!186 = distinct !{!186, !24}
!187 = !{!33, !42, i64 336}
!188 = !{!42, !42, i64 0}
!189 = distinct !{!189, !24}
!190 = !{!33, !39, i64 328}
!191 = !{!74, !39, i64 128}
!192 = distinct !{!192, !24}
!193 = !{!33, !10, i64 344}
!194 = !{!33, !44, i64 352}
!195 = !{!11, !11, i64 0}
!196 = distinct !{!196, !24}
!197 = !{!33, !45, i64 384}
!198 = !{!33, !16, i64 136}
!199 = !{!33, !5, i64 424}
!200 = !{!33, !10, i64 192}
!201 = !{!33, !10, i64 196}
!202 = !{!33, !10, i64 224}
!203 = !{!33, !10, i64 228}
!204 = !{!49, !10, i64 28}
!205 = !{!33, !10, i64 172}
!206 = !{!33, !10, i64 168}
!207 = !{!33, !10, i64 164}
!208 = !{!33, !10, i64 160}
!209 = !{!33, !10, i64 152}
!210 = !{!33, !10, i64 80}
!211 = !{!74, !10, i64 72}
!212 = !{!74, !76, i64 80}
!213 = !{!214, !4, i64 0}
!214 = !{!"ZNode", !4, i64 0, !215, i64 8}
!215 = !{!"", !10, i64 0, !10, i64 4, !38, i64 8, !6, i64 16}
!216 = !{!33, !10, i64 120}
!217 = !{!33, !16, i64 48}
!218 = !{!33, !5, i64 0}
!219 = !{!9, !5, i64 216}
!220 = !{!9, !5, i64 224}
!221 = !{!9, !17, i64 208}
!222 = !{!9, !16, i64 192}
!223 = !{!74, !4, i64 64}
!224 = !{!74, !16, i64 24}
!225 = distinct !{!225, !24}
!226 = distinct !{!226, !24}
!227 = !{!33, !10, i64 92}
!228 = distinct !{!228, !24}
!229 = !{!9, !6, i64 84}
!230 = !{!116, !5, i64 16}
!231 = !{!56, !10, i64 0}
!232 = !{!33, !10, i64 96}
!233 = distinct !{!233, !24}
!234 = distinct !{!234, !24}
!235 = !{!33, !4, i64 208}
!236 = !{!33, !39, i64 240}
!237 = distinct !{!237, !24}
!238 = distinct !{!238, !24}
!239 = !{!33, !39, i64 248}
!240 = distinct !{!240, !24}
!241 = distinct !{!241, !24}
!242 = distinct !{!242, !24}
!243 = distinct !{!243, !24}
!244 = !{!33, !10, i64 200}
!245 = !{!50, !50, i64 0}
!246 = !{!247, !253, i64 64}
!247 = !{!"D_State", !16, i64 0, !10, i64 8, !248, i64 16, !249, i64 32, !251, i64 48, !253, i64 64, !5, i64 72, !5, i64 80, !6, i64 88, !6, i64 89, !6, i64 90, !5, i64 96, !254, i64 104, !10, i64 112}
!248 = !{!"", !10, i64 0, !44, i64 8}
!249 = !{!"", !10, i64 0, !250, i64 8}
!250 = !{!"p1 _ZTS18D_RightEpsilonHint", !5, i64 0}
!251 = !{!"", !10, i64 0, !252, i64 8}
!252 = !{!"p1 _ZTS19D_ErrorRecoveryHint", !5, i64 0}
!253 = !{!"p2 _ZTS7D_Shift", !15, i64 0}
!254 = !{!"p3 _ZTS7D_Shift", !255, i64 0}
!255 = !{!"any p3 pointer", !15, i64 0}
!256 = !{!247, !10, i64 16}
!257 = !{!247, !44, i64 24}
!258 = !{!116, !47, i64 0}
!259 = distinct !{!259, !24}
!260 = !{!12, !12, i64 0}
!261 = !{!75, !10, i64 0}
!262 = !{!75, !76, i64 8}
!263 = !{i64 0, i64 4, !21, i64 4, i64 4, !21, i64 8, i64 8, !264, i64 16, i64 24, !28}
!264 = !{!76, !76, i64 0}
!265 = distinct !{!265, !24}
!266 = !{!214, !10, i64 8}
!267 = !{!214, !38, i64 16}
!268 = !{!173, !11, i64 16}
!269 = !{!173, !42, i64 0}
!270 = !{!116, !47, i64 2}
!271 = !{!272, !10, i64 0}
!272 = !{!"", !10, i64 0, !10, i64 4, !15, i64 8, !6, i64 16}
!273 = !{!272, !15, i64 8}
!274 = !{!173, !39, i64 24}
!275 = !{!173, !10, i64 32}
!276 = distinct !{!276, !24}
!277 = !{!9, !10, i64 8}
!278 = distinct !{!278, !24}
!279 = distinct !{!279, !24}
!280 = !{!252, !252, i64 0}
!281 = !{!33, !10, i64 288}
!282 = !{!33, !10, i64 124}
!283 = distinct !{!283, !24}
!284 = !{!247, !10, i64 48}
!285 = !{!247, !252, i64 56}
!286 = !{!287, !16, i64 8}
!287 = !{!"D_ErrorRecoveryHint", !47, i64 0, !47, i64 2, !16, i64 8}
!288 = !{!74, !10, i64 56}
!289 = !{!287, !47, i64 0}
!290 = distinct !{!290, !24}
!291 = distinct !{!291, !24}
!292 = distinct !{!292, !24}
!293 = distinct !{!293, !24}
!294 = !{!287, !47, i64 2}
!295 = !{!49, !10, i64 0}
!296 = distinct !{!296, !24}
!297 = distinct !{!297, !24}
!298 = distinct !{!298, !24}
!299 = !{!300, !300, i64 0}
!300 = !{!"p2 _ZTS5Shift", !15, i64 0}
!301 = !{!247, !10, i64 112}
!302 = !{!9, !10, i64 12}
!303 = distinct !{!303, !24}
!304 = distinct !{!304, !24}
!305 = !{!247, !5, i64 72}
!306 = !{!33, !10, i64 400}
!307 = !{!33, !6, i64 395}
!308 = !{!309, !12, i64 0}
!309 = !{!"ShiftResult", !12, i64 0, !19, i64 8}
!310 = !{!247, !5, i64 80}
!311 = !{!45, !45, i64 0}
!312 = !{!46, !47, i64 0}
!313 = !{!309, !16, i64 8}
!314 = !{!74, !10, i64 44}
!315 = !{!74, !10, i64 40}
!316 = distinct !{!316, !24}
!317 = !{!247, !6, i64 89}
!318 = distinct !{!318, !24}
!319 = !{!320, !320, i64 0}
!320 = !{!"p2 _ZTS9Reduction", !15, i64 0}
!321 = distinct !{!321, !24}
!322 = distinct !{!322, !24}
!323 = distinct !{!323, !24}
!324 = !{!9, !12, i64 24}
!325 = distinct !{!325, !24}
!326 = !{!33, !10, i64 156}
!327 = !{!46, !6, i64 3}
!328 = !{!46, !10, i64 4}
!329 = !{!46, !5, i64 16}
!330 = distinct !{!330, !24}
!331 = !{!9, !10, i64 0}
!332 = !{!9, !10, i64 4}
!333 = distinct !{!333, !24}
!334 = !{!335, !14, i64 8}
!335 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !6, i64 24}
!336 = !{!335, !14, i64 16}
!337 = !{!335, !14, i64 0}
!338 = !{!339, !340, i64 8}
!339 = !{!"", !340, i64 0, !340, i64 8, !340, i64 16, !6, i64 24}
!340 = !{!"p1 int", !5, i64 0}
!341 = !{!339, !340, i64 16}
!342 = !{!339, !340, i64 0}
!343 = !{!33, !10, i64 104}
!344 = !{!33, !10, i64 108}
!345 = !{!9, !10, i64 80}
!346 = distinct !{!346, !24}
!347 = distinct !{!347, !24}
!348 = !{!116, !47, i64 24}
!349 = !{!116, !10, i64 28}
!350 = !{!116, !47, i64 26}
!351 = !{!116, !10, i64 32}
!352 = !{!116, !5, i64 8}
!353 = distinct !{!353, !24}
!354 = distinct !{!354, !24}
!355 = !{!340, !340, i64 0}
!356 = distinct !{!356, !24}
!357 = distinct !{!357, !24}
!358 = distinct !{!358, !24}
!359 = distinct !{!359, !24}
!360 = distinct !{!360, !24}
!361 = distinct !{!361, !24}
!362 = distinct !{!362, !24}
!363 = distinct !{!363, !24}
!364 = !{!75, !10, i64 4}
!365 = distinct !{!365, !24}
!366 = !{!247, !16, i64 0}
!367 = !{!49, !51, i64 16}
!368 = !{!247, !10, i64 8}
!369 = distinct !{!369, !24}
!370 = !{!247, !10, i64 32}
!371 = !{!247, !250, i64 40}
!372 = !{!250, !250, i64 0}
!373 = !{!374, !47, i64 2}
!374 = !{!"D_RightEpsilonHint", !47, i64 0, !47, i64 2, !11, i64 8}
!375 = !{!374, !11, i64 8}
!376 = !{!374, !47, i64 0}
!377 = distinct !{!377, !24}
!378 = distinct !{!378, !24}
!379 = distinct !{!379, !24}
!380 = distinct !{!380, !24}
!381 = distinct !{!381, !24}
!382 = distinct !{!382, !24}
!383 = distinct !{!383, !24}
!384 = distinct !{!384, !24}
!385 = distinct !{!385, !24}
!386 = distinct !{!386, !24}
!387 = distinct !{!387, !24}
!388 = distinct !{!388, !24}
!389 = distinct !{!389, !24}
!390 = distinct !{!390, !24}
!391 = distinct !{!391, !24}
!392 = distinct !{!392, !24}
!393 = distinct !{!393, !24}
!394 = distinct !{!394, !24}
!395 = !{!215, !10, i64 0}
!396 = !{!215, !38, i64 8}
!397 = distinct !{!397, !24}
!398 = distinct !{!398, !24}
!399 = !{!400, !10, i64 0}
!400 = !{!"", !10, i64 0, !10, i64 4, !104, i64 8, !6, i64 16}
!401 = !{!400, !104, i64 8}
!402 = !{!33, !10, i64 100}
!403 = distinct !{!403, !24}
!404 = distinct !{!404, !24}
!405 = distinct !{!405, !24}
!406 = distinct !{!406, !24}
!407 = distinct !{!407, !24}
!408 = distinct !{!408, !24}
!409 = distinct !{!409, !24}
