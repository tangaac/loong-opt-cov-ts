; ModuleID = './MultiSource/Applications/d/CMakeFiles/make_dparser.dir/gram.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/d/gram.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.Grammar = type { ptr, %struct.anon.0, %struct.anon.1, %struct.anon.2, %struct.Code, ptr, i32, %struct.anon.3, %struct.anon.4, ptr, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.1 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.2 = type { i32, i32, ptr, [3 x ptr] }
%struct.Code = type { ptr, i32 }
%struct.anon.3 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.4 = type { i32, i32, ptr, [3 x ptr] }
%struct.Production = type { ptr, i32, %struct.anon, i32, i8, ptr, [8 x ptr], [8 x ptr], ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, ptr, [3 x ptr] }
%struct.Rule = type { i32, ptr, i32, i32, i32, i32, %struct.anon.5, ptr, %struct.Code, %struct.Code, %struct.anon.6, i32, ptr }
%struct.anon.5 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.6 = type { i32, i32, ptr, [3 x ptr] }
%struct.Elem = type { i32, i32, ptr, %union.anon }
%union.anon = type { %struct.Unresolved }
%struct.Unresolved = type { ptr, i32 }
%struct.Term = type { i32, i32, i32, i32, i32, ptr, i32, i8, ptr }
%struct.Declaration = type { ptr, i32, i32 }
%struct.D_Pass = type { ptr, i32, i32, i32 }
%struct.EnumStr = type { i32, ptr }
%struct.State = type { i32, i64, %struct.anon.7, %struct.anon.8, %struct.VecGoto, %struct.VecAction, %struct.VecAction, %struct.VecHint, %struct.VecHint, %struct.Scanner, i8, ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.7 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.8 = type { i32, i32, ptr, [3 x ptr] }
%struct.VecGoto = type { i32, i32, ptr, [3 x ptr] }
%struct.VecAction = type { i32, i32, ptr, [3 x ptr] }
%struct.VecHint = type { i32, i32, ptr, [3 x ptr] }
%struct.Scanner = type { %struct.VecScanState, %struct.VecScanStateTransition }
%struct.VecScanState = type { i32, i32, ptr, [3 x ptr] }
%struct.VecScanStateTransition = type { i32, i32, ptr, [3 x ptr] }
%struct.Goto = type { ptr, ptr }
%struct.Action = type { i32, ptr, ptr, ptr, i32, ptr }
%struct.EqState = type { ptr, ptr, ptr }
%struct.D_Parser = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.d_loc_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.d_loc_t = type { ptr, ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"declare expects argument, line %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"declare does not expect argument, line %d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"duplicate pass '%s' line %d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unknown pass '%s' line %d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" _synthetic\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"0 Start\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"1 Start\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"<EOF> \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"string(\22%s\22) \00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"regex(\22%s\22) \00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"code(\22%s\22) \00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"token(\22%s\22) \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"unknown token kind\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"$none\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"$left\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"$right\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"$unary_left\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"$unary_right\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"$binary_left\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"$binary_right\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"$noassoc\00", align 1
@assoc_strings = dso_local global [8 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.15 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.16 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.17 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.18 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.19 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.20 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.22 }], align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"SPECULATIVE_CODE\0A%s\0AEND CODE\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"FINAL_CODE\0A%s\0AEND CODE\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"PRODUCTIONS\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%s (%d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"\09: \00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"\09| \00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"op %d \00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"rule %d \00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"\09;\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"TERMINALS\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"(%d)\0A\00", align 1
@verbose_level = external global i32, align 4
@.str.37 = private unnamed_addr constant [10 x i8] c"eq %d %d \00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"diff state (%d %d) \00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"diff rule \00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"][ \00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"reduces_to %d %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c"%d productions %d terminals %d states %d declarations\0A\00", align 1
@.str.46 = private unnamed_addr constant [50 x i8] c"encountered an escaped NULL while processing '%s'\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"empty string after unescape '%s'\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"STATE %d (%d ITEMS)%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c" ACCEPT\00", align 1
@.str.50 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"  GOTO\0A\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c" : %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"  ACTION\0A\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"\09%s\09\00", align 1
@action_types = internal global [3 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62], align 8
@.str.55 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"reduce/reduce\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"shift/reduce\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"\09%s: \00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c". \00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"ACCEPT\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"SHIFT\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"REDUCE\00", align 1
@.str.63 = private unnamed_addr constant [50 x i8] c"  CONFLICT (before precedence and associativity)\0A\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"\09%s conflict \00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"duplicate production '%s'\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"unresolved identifier: '%s'\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"circular regex production '%s'\00", align 1
@.str.68 = private unnamed_addr constant [69 x i8] c"final and/or multi-rule code not permitted in regex productions '%s'\00", align 1
@.str.69 = private unnamed_addr constant [62 x i8] c"regex production '%s' cannot invoke non-regex production '%s'\00", align 1
@.str.70 = private unnamed_addr constant [56 x i8] c"code not permitted in rule %d of regex productions '%s'\00", align 1
@.str.71 = private unnamed_addr constant [56 x i8] c"regex production '%s' cannot include scanners or tokens\00", align 1
@.str.72 = private unnamed_addr constant [50 x i8] c"unable to resolve circular regex production: '%s'\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"unresolved declaration '%s'\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"shared tokenize subtrees\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"whitespace\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"number of rules in default action != 1\00", align 1

; Function Attrs: nounwind
define dso_local ptr @new_production(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  %8 = load ptr, ptr %4, align 8, !tbaa !3
  %9 = load ptr, ptr %5, align 8, !tbaa !8
  %10 = load ptr, ptr %5, align 8, !tbaa !8
  %11 = call i64 @strlen(ptr noundef %10) #10
  %12 = trunc i64 %11 to i32
  %13 = call ptr @lookup_production(ptr noundef %8, ptr noundef %9, i32 noundef signext %12)
  store ptr %13, ptr %6, align 8, !tbaa !10
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 8, !tbaa !10
  store ptr %16, ptr %3, align 8
  store i32 1, ptr %7, align 4
  br label %109

17:                                               ; preds = %2
  %18 = call noalias ptr @malloc(i64 noundef 232) #11
  store ptr %18, ptr %6, align 8, !tbaa !10
  %19 = load ptr, ptr %6, align 8, !tbaa !10
  call void @llvm.memset.p0.i64(ptr align 8 %19, i8 0, i64 232, i1 false)
  br label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.Grammar, ptr %21, i32 0, i32 1
  %23 = getelementptr inbounds nuw %struct.anon.0, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !12
  %25 = icmp ne ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %6, align 8, !tbaa !10
  %28 = load ptr, ptr %4, align 8, !tbaa !3
  %29 = getelementptr inbounds nuw %struct.Grammar, ptr %28, i32 0, i32 1
  %30 = getelementptr inbounds nuw %struct.anon.0, ptr %29, i32 0, i32 3
  %31 = getelementptr inbounds [3 x ptr], ptr %30, i64 0, i64 0
  %32 = load ptr, ptr %4, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.Grammar, ptr %32, i32 0, i32 1
  %34 = getelementptr inbounds nuw %struct.anon.0, ptr %33, i32 0, i32 2
  store ptr %31, ptr %34, align 8, !tbaa !12
  %35 = load ptr, ptr %4, align 8, !tbaa !3
  %36 = getelementptr inbounds nuw %struct.Grammar, ptr %35, i32 0, i32 1
  %37 = getelementptr inbounds nuw %struct.anon.0, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 8, !tbaa !30
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 8, !tbaa !30
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds nuw ptr, ptr %31, i64 %40
  store ptr %27, ptr %41, align 8, !tbaa !10
  br label %99

42:                                               ; preds = %20
  %43 = load ptr, ptr %4, align 8, !tbaa !3
  %44 = getelementptr inbounds nuw %struct.Grammar, ptr %43, i32 0, i32 1
  %45 = getelementptr inbounds nuw %struct.anon.0, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !12
  %47 = load ptr, ptr %4, align 8, !tbaa !3
  %48 = getelementptr inbounds nuw %struct.Grammar, ptr %47, i32 0, i32 1
  %49 = getelementptr inbounds nuw %struct.anon.0, ptr %48, i32 0, i32 3
  %50 = getelementptr inbounds [3 x ptr], ptr %49, i64 0, i64 0
  %51 = icmp eq ptr %46, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %42
  %53 = load ptr, ptr %4, align 8, !tbaa !3
  %54 = getelementptr inbounds nuw %struct.Grammar, ptr %53, i32 0, i32 1
  %55 = getelementptr inbounds nuw %struct.anon.0, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8, !tbaa !30
  %57 = icmp ult i32 %56, 3
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load ptr, ptr %6, align 8, !tbaa !10
  %60 = load ptr, ptr %4, align 8, !tbaa !3
  %61 = getelementptr inbounds nuw %struct.Grammar, ptr %60, i32 0, i32 1
  %62 = getelementptr inbounds nuw %struct.anon.0, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !12
  %64 = load ptr, ptr %4, align 8, !tbaa !3
  %65 = getelementptr inbounds nuw %struct.Grammar, ptr %64, i32 0, i32 1
  %66 = getelementptr inbounds nuw %struct.anon.0, ptr %65, i32 0, i32 0
  %67 = load i32, ptr %66, align 8, !tbaa !30
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 8, !tbaa !30
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds nuw ptr, ptr %63, i64 %69
  store ptr %59, ptr %70, align 8, !tbaa !10
  br label %99

71:                                               ; preds = %52
  br label %93

72:                                               ; preds = %42
  %73 = load ptr, ptr %4, align 8, !tbaa !3
  %74 = getelementptr inbounds nuw %struct.Grammar, ptr %73, i32 0, i32 1
  %75 = getelementptr inbounds nuw %struct.anon.0, ptr %74, i32 0, i32 0
  %76 = load i32, ptr %75, align 8, !tbaa !30
  %77 = and i32 %76, 7
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %72
  %80 = load ptr, ptr %6, align 8, !tbaa !10
  %81 = load ptr, ptr %4, align 8, !tbaa !3
  %82 = getelementptr inbounds nuw %struct.Grammar, ptr %81, i32 0, i32 1
  %83 = getelementptr inbounds nuw %struct.anon.0, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !12
  %85 = load ptr, ptr %4, align 8, !tbaa !3
  %86 = getelementptr inbounds nuw %struct.Grammar, ptr %85, i32 0, i32 1
  %87 = getelementptr inbounds nuw %struct.anon.0, ptr %86, i32 0, i32 0
  %88 = load i32, ptr %87, align 8, !tbaa !30
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 8, !tbaa !30
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds nuw ptr, ptr %84, i64 %90
  store ptr %80, ptr %91, align 8, !tbaa !10
  br label %99

92:                                               ; preds = %72
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93
  %95 = load ptr, ptr %4, align 8, !tbaa !3
  %96 = getelementptr inbounds nuw %struct.Grammar, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %6, align 8, !tbaa !10
  call void @vec_add_internal(ptr noundef %96, ptr noundef %97)
  br label %98

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98, %79, %58, %26
  %100 = load ptr, ptr %5, align 8, !tbaa !8
  %101 = load ptr, ptr %6, align 8, !tbaa !10
  %102 = getelementptr inbounds nuw %struct.Production, ptr %101, i32 0, i32 0
  store ptr %100, ptr %102, align 8, !tbaa !31
  %103 = load ptr, ptr %5, align 8, !tbaa !8
  %104 = call i64 @strlen(ptr noundef %103) #10
  %105 = trunc i64 %104 to i32
  %106 = load ptr, ptr %6, align 8, !tbaa !10
  %107 = getelementptr inbounds nuw %struct.Production, ptr %106, i32 0, i32 1
  store i32 %105, ptr %107, align 8, !tbaa !37
  %108 = load ptr, ptr %6, align 8, !tbaa !10
  store ptr %108, ptr %3, align 8
  store i32 1, ptr %7, align 4
  br label %109

109:                                              ; preds = %99, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  %110 = load ptr, ptr %3, align 8
  ret ptr %110
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local ptr @lookup_production(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !8
  store i32 %2, ptr %7, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  store i32 0, ptr %8, align 4, !tbaa !38
  br label %11

11:                                               ; preds = %46, %3
  %12 = load i32, ptr %8, align 4, !tbaa !38
  %13 = load ptr, ptr %5, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.Grammar, ptr %13, i32 0, i32 1
  %15 = getelementptr inbounds nuw %struct.anon.0, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8, !tbaa !30
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  %19 = load ptr, ptr %5, align 8, !tbaa !3
  %20 = getelementptr inbounds nuw %struct.Grammar, ptr %19, i32 0, i32 1
  %21 = getelementptr inbounds nuw %struct.anon.0, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = load i32, ptr %8, align 4, !tbaa !38
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  store ptr %26, ptr %9, align 8, !tbaa !10
  %27 = load ptr, ptr %9, align 8, !tbaa !10
  %28 = getelementptr inbounds nuw %struct.Production, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !37
  %30 = load i32, ptr %7, align 4, !tbaa !38
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %18
  %33 = load ptr, ptr %9, align 8, !tbaa !10
  %34 = getelementptr inbounds nuw %struct.Production, ptr %33, i32 0, i32 0
  %35 = load ptr, ptr %34, align 8, !tbaa !31
  %36 = load ptr, ptr %6, align 8, !tbaa !8
  %37 = load i32, ptr %7, align 4, !tbaa !38
  %38 = sext i32 %37 to i64
  %39 = call signext i32 @strncmp(ptr noundef %35, ptr noundef %36, i64 noundef %38) #10
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32, %18
  store i32 4, ptr %10, align 4
  br label %44

42:                                               ; preds = %32
  %43 = load ptr, ptr %9, align 8, !tbaa !10
  store ptr %43, ptr %4, align 8
  store i32 1, ptr %10, align 4
  br label %44

44:                                               ; preds = %42, %41
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  %45 = load i32, ptr %10, align 4
  switch i32 %45, label %50 [
    i32 4, label %46
  ]

46:                                               ; preds = %44
  %47 = load i32, ptr %8, align 4, !tbaa !38
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %8, align 4, !tbaa !38
  br label %11, !llvm.loop !39

49:                                               ; preds = %11
  store ptr null, ptr %4, align 8
  store i32 1, ptr %10, align 4
  br label %50

50:                                               ; preds = %49, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  %51 = load ptr, ptr %4, align 8
  ret ptr %51
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @vec_add_internal(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local ptr @new_rule(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %6 = call noalias ptr @malloc(i64 noundef 168) #11
  store ptr %6, ptr %5, align 8, !tbaa !41
  %7 = load ptr, ptr %5, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 168, i1 false)
  %8 = load ptr, ptr %4, align 8, !tbaa !10
  %9 = load ptr, ptr %5, align 8, !tbaa !41
  %10 = getelementptr inbounds nuw %struct.Rule, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 8, !tbaa !42
  %11 = call ptr @new_elem()
  %12 = load ptr, ptr %5, align 8, !tbaa !41
  %13 = getelementptr inbounds nuw %struct.Rule, ptr %12, i32 0, i32 7
  store ptr %11, ptr %13, align 8, !tbaa !48
  %14 = load ptr, ptr %5, align 8, !tbaa !41
  %15 = getelementptr inbounds nuw %struct.Rule, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = getelementptr inbounds nuw %struct.Elem, ptr %16, i32 0, i32 0
  store i32 3, ptr %17, align 8, !tbaa !49
  %18 = load ptr, ptr %5, align 8, !tbaa !41
  %19 = load ptr, ptr %5, align 8, !tbaa !41
  %20 = getelementptr inbounds nuw %struct.Rule, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = getelementptr inbounds nuw %struct.Elem, ptr %21, i32 0, i32 2
  store ptr %18, ptr %22, align 8, !tbaa !51
  %23 = load ptr, ptr %3, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.Grammar, ptr %23, i32 0, i32 26
  %25 = load i32, ptr %24, align 8, !tbaa !52
  %26 = load ptr, ptr %5, align 8, !tbaa !41
  %27 = getelementptr inbounds nuw %struct.Rule, ptr %26, i32 0, i32 11
  store i32 %25, ptr %27, align 8, !tbaa !53
  %28 = load ptr, ptr %5, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret ptr %28
}

; Function Attrs: nounwind
define dso_local ptr @new_elem_nterm(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !10
  store ptr %1, ptr %4, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %6 = call ptr @new_elem()
  store ptr %6, ptr %5, align 8, !tbaa !54
  %7 = load ptr, ptr %5, align 8, !tbaa !54
  %8 = getelementptr inbounds nuw %struct.Elem, ptr %7, i32 0, i32 0
  store i32 0, ptr %8, align 8, !tbaa !49
  %9 = load ptr, ptr %3, align 8, !tbaa !10
  %10 = load ptr, ptr %5, align 8, !tbaa !54
  %11 = getelementptr inbounds nuw %struct.Elem, ptr %10, i32 0, i32 3
  store ptr %9, ptr %11, align 8, !tbaa !55
  %12 = load ptr, ptr %4, align 8, !tbaa !41
  %13 = load ptr, ptr %5, align 8, !tbaa !54
  %14 = getelementptr inbounds nuw %struct.Elem, ptr %13, i32 0, i32 2
  store ptr %12, ptr %14, align 8, !tbaa !51
  %15 = load ptr, ptr %5, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret ptr %15
}

; Function Attrs: nounwind
define dso_local ptr @escape_string_for_regex(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  %5 = load ptr, ptr %2, align 8, !tbaa !8
  %6 = call i64 @strlen(ptr noundef %5) #10
  %7 = add i64 %6, 1
  %8 = mul i64 %7, 2
  %9 = call noalias ptr @malloc(i64 noundef %8) #11
  store ptr %9, ptr %3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #9
  %10 = load ptr, ptr %3, align 8, !tbaa !8
  store ptr %10, ptr %4, align 8, !tbaa !8
  br label %11

11:                                               ; preds = %28, %1
  %12 = load ptr, ptr %2, align 8, !tbaa !8
  %13 = load i8, ptr %12, align 1, !tbaa !55
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load ptr, ptr %2, align 8, !tbaa !8
  %17 = load i8, ptr %16, align 1, !tbaa !55
  %18 = sext i8 %17 to i32
  switch i32 %18, label %22 [
    i32 40, label %19
    i32 41, label %19
    i32 91, label %19
    i32 93, label %19
    i32 45, label %19
    i32 94, label %19
    i32 42, label %19
    i32 63, label %19
    i32 43, label %19
  ]

19:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15
  %20 = load ptr, ptr %3, align 8, !tbaa !8
  %21 = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %21, ptr %3, align 8, !tbaa !8
  store i8 92, ptr %20, align 1, !tbaa !55
  br label %22

22:                                               ; preds = %15, %19
  %23 = load ptr, ptr %2, align 8, !tbaa !8
  %24 = load i8, ptr %23, align 1, !tbaa !55
  %25 = load ptr, ptr %3, align 8, !tbaa !8
  %26 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %26, ptr %3, align 8, !tbaa !8
  store i8 %24, ptr %25, align 1, !tbaa !55
  br label %27

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27
  %29 = load ptr, ptr %2, align 8, !tbaa !8
  %30 = getelementptr inbounds nuw i8, ptr %29, i32 1
  store ptr %30, ptr %2, align 8, !tbaa !8
  br label %11, !llvm.loop !56

31:                                               ; preds = %11
  %32 = load ptr, ptr %3, align 8, !tbaa !8
  store i8 0, ptr %32, align 1, !tbaa !55
  %33 = load ptr, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret ptr %33
}

; Function Attrs: nounwind
define dso_local ptr @new_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !8
  store ptr %2, ptr %7, align 8, !tbaa !8
  store ptr %3, ptr %8, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  %10 = load ptr, ptr %5, align 8, !tbaa !3
  %11 = load ptr, ptr %6, align 8, !tbaa !8
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  %13 = load ptr, ptr %7, align 8, !tbaa !8
  %14 = getelementptr inbounds i8, ptr %13, i64 -1
  %15 = load ptr, ptr %8, align 8, !tbaa !41
  %16 = call ptr @new_term_string(ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %15)
  store ptr %16, ptr %9, align 8, !tbaa !54
  %17 = load ptr, ptr %6, align 8, !tbaa !8
  %18 = load i8, ptr %17, align 1, !tbaa !55
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 34
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = load ptr, ptr %9, align 8, !tbaa !54
  %24 = getelementptr inbounds nuw %struct.Elem, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = getelementptr inbounds nuw %struct.Term, ptr %25, i32 0, i32 0
  store i32 %22, ptr %26, align 8, !tbaa !57
  %27 = load ptr, ptr %9, align 8, !tbaa !54
  %28 = getelementptr inbounds nuw %struct.Elem, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  call void @unescape_term_string(ptr noundef %29)
  %30 = load ptr, ptr %9, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  ret ptr %30
}

; Function Attrs: nounwind
define internal ptr @new_term_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !8
  store ptr %2, ptr %7, align 8, !tbaa !8
  store ptr %3, ptr %8, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  %11 = call ptr @new_term()
  store ptr %11, ptr %9, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  %12 = load ptr, ptr %7, align 8, !tbaa !8
  %13 = load ptr, ptr %6, align 8, !tbaa !8
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = add nsw i64 %16, 1
  %18 = call noalias ptr @malloc(i64 noundef %17) #11
  %19 = load ptr, ptr %9, align 8, !tbaa !59
  %20 = getelementptr inbounds nuw %struct.Term, ptr %19, i32 0, i32 5
  store ptr %18, ptr %20, align 8, !tbaa !60
  %21 = load ptr, ptr %9, align 8, !tbaa !59
  %22 = getelementptr inbounds nuw %struct.Term, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = load ptr, ptr %6, align 8, !tbaa !8
  %25 = load ptr, ptr %7, align 8, !tbaa !8
  %26 = load ptr, ptr %6, align 8, !tbaa !8
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %24, i64 %29, i1 false)
  %30 = load ptr, ptr %9, align 8, !tbaa !59
  %31 = getelementptr inbounds nuw %struct.Term, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  %33 = load ptr, ptr %7, align 8, !tbaa !8
  %34 = load ptr, ptr %6, align 8, !tbaa !8
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = getelementptr inbounds i8, ptr %32, i64 %37
  store i8 0, ptr %38, align 1, !tbaa !55
  %39 = load ptr, ptr %7, align 8, !tbaa !8
  %40 = load ptr, ptr %6, align 8, !tbaa !8
  %41 = ptrtoint ptr %39 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = load ptr, ptr %9, align 8, !tbaa !59
  %46 = getelementptr inbounds nuw %struct.Term, ptr %45, i32 0, i32 6
  store i32 %44, ptr %46, align 8, !tbaa !61
  br label %47

47:                                               ; preds = %4
  %48 = load ptr, ptr %5, align 8, !tbaa !3
  %49 = getelementptr inbounds nuw %struct.Grammar, ptr %48, i32 0, i32 2
  %50 = getelementptr inbounds nuw %struct.anon.1, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !62
  %52 = icmp ne ptr %51, null
  br i1 %52, label %69, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %9, align 8, !tbaa !59
  %55 = load ptr, ptr %5, align 8, !tbaa !3
  %56 = getelementptr inbounds nuw %struct.Grammar, ptr %55, i32 0, i32 2
  %57 = getelementptr inbounds nuw %struct.anon.1, ptr %56, i32 0, i32 3
  %58 = getelementptr inbounds [3 x ptr], ptr %57, i64 0, i64 0
  %59 = load ptr, ptr %5, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.Grammar, ptr %59, i32 0, i32 2
  %61 = getelementptr inbounds nuw %struct.anon.1, ptr %60, i32 0, i32 2
  store ptr %58, ptr %61, align 8, !tbaa !62
  %62 = load ptr, ptr %5, align 8, !tbaa !3
  %63 = getelementptr inbounds nuw %struct.Grammar, ptr %62, i32 0, i32 2
  %64 = getelementptr inbounds nuw %struct.anon.1, ptr %63, i32 0, i32 0
  %65 = load i32, ptr %64, align 8, !tbaa !63
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 8, !tbaa !63
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds nuw ptr, ptr %58, i64 %67
  store ptr %54, ptr %68, align 8, !tbaa !59
  br label %126

69:                                               ; preds = %47
  %70 = load ptr, ptr %5, align 8, !tbaa !3
  %71 = getelementptr inbounds nuw %struct.Grammar, ptr %70, i32 0, i32 2
  %72 = getelementptr inbounds nuw %struct.anon.1, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !62
  %74 = load ptr, ptr %5, align 8, !tbaa !3
  %75 = getelementptr inbounds nuw %struct.Grammar, ptr %74, i32 0, i32 2
  %76 = getelementptr inbounds nuw %struct.anon.1, ptr %75, i32 0, i32 3
  %77 = getelementptr inbounds [3 x ptr], ptr %76, i64 0, i64 0
  %78 = icmp eq ptr %73, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %69
  %80 = load ptr, ptr %5, align 8, !tbaa !3
  %81 = getelementptr inbounds nuw %struct.Grammar, ptr %80, i32 0, i32 2
  %82 = getelementptr inbounds nuw %struct.anon.1, ptr %81, i32 0, i32 0
  %83 = load i32, ptr %82, align 8, !tbaa !63
  %84 = icmp ult i32 %83, 3
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load ptr, ptr %9, align 8, !tbaa !59
  %87 = load ptr, ptr %5, align 8, !tbaa !3
  %88 = getelementptr inbounds nuw %struct.Grammar, ptr %87, i32 0, i32 2
  %89 = getelementptr inbounds nuw %struct.anon.1, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !62
  %91 = load ptr, ptr %5, align 8, !tbaa !3
  %92 = getelementptr inbounds nuw %struct.Grammar, ptr %91, i32 0, i32 2
  %93 = getelementptr inbounds nuw %struct.anon.1, ptr %92, i32 0, i32 0
  %94 = load i32, ptr %93, align 8, !tbaa !63
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 8, !tbaa !63
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds nuw ptr, ptr %90, i64 %96
  store ptr %86, ptr %97, align 8, !tbaa !59
  br label %126

98:                                               ; preds = %79
  br label %120

99:                                               ; preds = %69
  %100 = load ptr, ptr %5, align 8, !tbaa !3
  %101 = getelementptr inbounds nuw %struct.Grammar, ptr %100, i32 0, i32 2
  %102 = getelementptr inbounds nuw %struct.anon.1, ptr %101, i32 0, i32 0
  %103 = load i32, ptr %102, align 8, !tbaa !63
  %104 = and i32 %103, 7
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %99
  %107 = load ptr, ptr %9, align 8, !tbaa !59
  %108 = load ptr, ptr %5, align 8, !tbaa !3
  %109 = getelementptr inbounds nuw %struct.Grammar, ptr %108, i32 0, i32 2
  %110 = getelementptr inbounds nuw %struct.anon.1, ptr %109, i32 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !62
  %112 = load ptr, ptr %5, align 8, !tbaa !3
  %113 = getelementptr inbounds nuw %struct.Grammar, ptr %112, i32 0, i32 2
  %114 = getelementptr inbounds nuw %struct.anon.1, ptr %113, i32 0, i32 0
  %115 = load i32, ptr %114, align 8, !tbaa !63
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 8, !tbaa !63
  %117 = zext i32 %115 to i64
  %118 = getelementptr inbounds nuw ptr, ptr %111, i64 %117
  store ptr %107, ptr %118, align 8, !tbaa !59
  br label %126

119:                                              ; preds = %99
  br label %120

120:                                              ; preds = %119, %98
  br label %121

121:                                              ; preds = %120
  %122 = load ptr, ptr %5, align 8, !tbaa !3
  %123 = getelementptr inbounds nuw %struct.Grammar, ptr %122, i32 0, i32 2
  %124 = load ptr, ptr %9, align 8, !tbaa !59
  call void @vec_add_internal(ptr noundef %123, ptr noundef %124)
  br label %125

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %106, %85, %53
  %127 = load ptr, ptr %9, align 8, !tbaa !59
  %128 = load ptr, ptr %8, align 8, !tbaa !41
  %129 = call ptr @new_elem_term(ptr noundef %127, ptr noundef %128)
  store ptr %129, ptr %10, align 8, !tbaa !54
  %130 = load ptr, ptr %10, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  ret ptr %130
}

; Function Attrs: nounwind
define internal void @unescape_term_string(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store ptr %0, ptr %2, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #9
  store ptr null, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  store i32 0, ptr %7, align 4, !tbaa !38
  %10 = load ptr, ptr %2, align 8, !tbaa !59
  %11 = getelementptr inbounds nuw %struct.Term, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  store ptr %12, ptr %3, align 8, !tbaa !8
  store ptr %12, ptr %5, align 8, !tbaa !8
  br label %13

13:                                               ; preds = %324, %1
  %14 = load ptr, ptr %3, align 8, !tbaa !8
  %15 = load i8, ptr %14, align 1, !tbaa !55
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %327

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 8, !tbaa !8
  %19 = load i8, ptr %18, align 1, !tbaa !55
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 92
  br i1 %21, label %22, label %316

22:                                               ; preds = %17
  %23 = load ptr, ptr %3, align 8, !tbaa !8
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !55
  %26 = sext i8 %25 to i32
  switch i32 %26, label %304 [
    i32 98, label %27
    i32 102, label %31
    i32 110, label %35
    i32 114, label %39
    i32 116, label %43
    i32 118, label %47
    i32 97, label %51
    i32 99, label %55
    i32 34, label %57
    i32 39, label %67
    i32 120, label %77
    i32 100, label %117
    i32 48, label %203
    i32 49, label %203
    i32 50, label %203
    i32 51, label %203
    i32 52, label %203
    i32 53, label %203
    i32 54, label %203
    i32 55, label %203
  ]

27:                                               ; preds = %22
  %28 = load ptr, ptr %5, align 8, !tbaa !8
  store i8 8, ptr %28, align 1, !tbaa !55
  %29 = load ptr, ptr %3, align 8, !tbaa !8
  %30 = getelementptr inbounds nuw i8, ptr %29, i32 1
  store ptr %30, ptr %3, align 8, !tbaa !8
  br label %315

31:                                               ; preds = %22
  %32 = load ptr, ptr %5, align 8, !tbaa !8
  store i8 12, ptr %32, align 1, !tbaa !55
  %33 = load ptr, ptr %3, align 8, !tbaa !8
  %34 = getelementptr inbounds nuw i8, ptr %33, i32 1
  store ptr %34, ptr %3, align 8, !tbaa !8
  br label %315

35:                                               ; preds = %22
  %36 = load ptr, ptr %5, align 8, !tbaa !8
  store i8 10, ptr %36, align 1, !tbaa !55
  %37 = load ptr, ptr %3, align 8, !tbaa !8
  %38 = getelementptr inbounds nuw i8, ptr %37, i32 1
  store ptr %38, ptr %3, align 8, !tbaa !8
  br label %315

39:                                               ; preds = %22
  %40 = load ptr, ptr %5, align 8, !tbaa !8
  store i8 13, ptr %40, align 1, !tbaa !55
  %41 = load ptr, ptr %3, align 8, !tbaa !8
  %42 = getelementptr inbounds nuw i8, ptr %41, i32 1
  store ptr %42, ptr %3, align 8, !tbaa !8
  br label %315

43:                                               ; preds = %22
  %44 = load ptr, ptr %5, align 8, !tbaa !8
  store i8 9, ptr %44, align 1, !tbaa !55
  %45 = load ptr, ptr %3, align 8, !tbaa !8
  %46 = getelementptr inbounds nuw i8, ptr %45, i32 1
  store ptr %46, ptr %3, align 8, !tbaa !8
  br label %315

47:                                               ; preds = %22
  %48 = load ptr, ptr %5, align 8, !tbaa !8
  store i8 11, ptr %48, align 1, !tbaa !55
  %49 = load ptr, ptr %3, align 8, !tbaa !8
  %50 = getelementptr inbounds nuw i8, ptr %49, i32 1
  store ptr %50, ptr %3, align 8, !tbaa !8
  br label %315

51:                                               ; preds = %22
  %52 = load ptr, ptr %5, align 8, !tbaa !8
  store i8 7, ptr %52, align 1, !tbaa !55
  %53 = load ptr, ptr %3, align 8, !tbaa !8
  %54 = getelementptr inbounds nuw i8, ptr %53, i32 1
  store ptr %54, ptr %3, align 8, !tbaa !8
  br label %315

55:                                               ; preds = %22
  %56 = load ptr, ptr %5, align 8, !tbaa !8
  store i8 0, ptr %56, align 1, !tbaa !55
  store i32 1, ptr %8, align 4
  br label %345

57:                                               ; preds = %22
  %58 = load ptr, ptr %2, align 8, !tbaa !59
  %59 = getelementptr inbounds nuw %struct.Term, ptr %58, i32 0, i32 0
  %60 = load i32, ptr %59, align 8, !tbaa !57
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load ptr, ptr %5, align 8, !tbaa !8
  store i8 34, ptr %63, align 1, !tbaa !55
  %64 = load ptr, ptr %3, align 8, !tbaa !8
  %65 = getelementptr inbounds nuw i8, ptr %64, i32 1
  store ptr %65, ptr %3, align 8, !tbaa !8
  br label %315

66:                                               ; preds = %57
  br label %303

67:                                               ; preds = %22
  %68 = load ptr, ptr %2, align 8, !tbaa !59
  %69 = getelementptr inbounds nuw %struct.Term, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 8, !tbaa !57
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load ptr, ptr %5, align 8, !tbaa !8
  store i8 39, ptr %73, align 1, !tbaa !55
  %74 = load ptr, ptr %3, align 8, !tbaa !8
  %75 = getelementptr inbounds nuw i8, ptr %74, i32 1
  store ptr %75, ptr %3, align 8, !tbaa !8
  br label %315

76:                                               ; preds = %67
  br label %303

77:                                               ; preds = %22
  store i32 0, ptr %6, align 4, !tbaa !38
  %78 = call ptr @__ctype_b_loc() #12
  %79 = load ptr, ptr %78, align 8, !tbaa !64
  %80 = load ptr, ptr %3, align 8, !tbaa !8
  %81 = getelementptr inbounds i8, ptr %80, i64 2
  %82 = load i8, ptr %81, align 1, !tbaa !55
  %83 = sext i8 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i16, ptr %79, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !66
  %87 = zext i16 %86 to i32
  %88 = and i32 %87, 4096
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %77
  store i32 16, ptr %7, align 4, !tbaa !38
  %91 = load ptr, ptr %3, align 8, !tbaa !8
  %92 = getelementptr inbounds i8, ptr %91, i64 2
  store ptr %92, ptr %4, align 8, !tbaa !8
  %93 = load i32, ptr %6, align 4, !tbaa !38
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %6, align 4, !tbaa !38
  %95 = call ptr @__ctype_b_loc() #12
  %96 = load ptr, ptr %95, align 8, !tbaa !64
  %97 = load ptr, ptr %3, align 8, !tbaa !8
  %98 = getelementptr inbounds i8, ptr %97, i64 3
  %99 = load i8, ptr %98, align 1, !tbaa !55
  %100 = sext i8 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16, ptr %96, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !66
  %104 = zext i16 %103 to i32
  %105 = and i32 %104, 4096
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %90
  %108 = load i32, ptr %6, align 4, !tbaa !38
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr %6, align 4, !tbaa !38
  br label %110

110:                                              ; preds = %107, %90
  br label %111

111:                                              ; preds = %110, %77
  %112 = load i32, ptr %6, align 4, !tbaa !38
  %113 = add nsw i32 %112, 1
  %114 = load ptr, ptr %3, align 8, !tbaa !8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, ptr %114, i64 %115
  store ptr %116, ptr %3, align 8, !tbaa !8
  br label %266

117:                                              ; preds = %22
  store i32 0, ptr %6, align 4, !tbaa !38
  %118 = call ptr @__ctype_b_loc() #12
  %119 = load ptr, ptr %118, align 8, !tbaa !64
  %120 = load ptr, ptr %3, align 8, !tbaa !8
  %121 = getelementptr inbounds i8, ptr %120, i64 2
  %122 = load i8, ptr %121, align 1, !tbaa !55
  %123 = sext i8 %122 to i32
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i16, ptr %119, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !66
  %127 = zext i16 %126 to i32
  %128 = and i32 %127, 2048
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %197

130:                                              ; preds = %117
  store i32 10, ptr %7, align 4, !tbaa !38
  %131 = load ptr, ptr %3, align 8, !tbaa !8
  %132 = getelementptr inbounds i8, ptr %131, i64 2
  store ptr %132, ptr %4, align 8, !tbaa !8
  %133 = load i32, ptr %6, align 4, !tbaa !38
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %6, align 4, !tbaa !38
  %135 = call ptr @__ctype_b_loc() #12
  %136 = load ptr, ptr %135, align 8, !tbaa !64
  %137 = load ptr, ptr %3, align 8, !tbaa !8
  %138 = getelementptr inbounds i8, ptr %137, i64 3
  %139 = load i8, ptr %138, align 1, !tbaa !55
  %140 = sext i8 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i16, ptr %136, i64 %141
  %143 = load i16, ptr %142, align 2, !tbaa !66
  %144 = zext i16 %143 to i32
  %145 = and i32 %144, 2048
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %196

147:                                              ; preds = %130
  %148 = load i32, ptr %6, align 4, !tbaa !38
  %149 = add nsw i32 %148, 1
  store i32 %149, ptr %6, align 4, !tbaa !38
  %150 = call ptr @__ctype_b_loc() #12
  %151 = load ptr, ptr %150, align 8, !tbaa !64
  %152 = load ptr, ptr %3, align 8, !tbaa !8
  %153 = getelementptr inbounds i8, ptr %152, i64 4
  %154 = load i8, ptr %153, align 1, !tbaa !55
  %155 = sext i8 %154 to i32
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i16, ptr %151, i64 %156
  %158 = load i16, ptr %157, align 2, !tbaa !66
  %159 = zext i16 %158 to i32
  %160 = and i32 %159, 2048
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %195

162:                                              ; preds = %147
  %163 = load ptr, ptr %3, align 8, !tbaa !8
  %164 = getelementptr inbounds i8, ptr %163, i64 2
  %165 = load i8, ptr %164, align 1, !tbaa !55
  %166 = sext i8 %165 to i32
  %167 = icmp slt i32 %166, 50
  br i1 %167, label %192, label %168

168:                                              ; preds = %162
  %169 = load ptr, ptr %3, align 8, !tbaa !8
  %170 = getelementptr inbounds i8, ptr %169, i64 2
  %171 = load i8, ptr %170, align 1, !tbaa !55
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 50
  br i1 %173, label %174, label %195

174:                                              ; preds = %168
  %175 = load ptr, ptr %3, align 8, !tbaa !8
  %176 = getelementptr inbounds i8, ptr %175, i64 3
  %177 = load i8, ptr %176, align 1, !tbaa !55
  %178 = sext i8 %177 to i32
  %179 = icmp slt i32 %178, 53
  br i1 %179, label %192, label %180

180:                                              ; preds = %174
  %181 = load ptr, ptr %3, align 8, !tbaa !8
  %182 = getelementptr inbounds i8, ptr %181, i64 3
  %183 = load i8, ptr %182, align 1, !tbaa !55
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 53
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load ptr, ptr %3, align 8, !tbaa !8
  %188 = getelementptr inbounds i8, ptr %187, i64 4
  %189 = load i8, ptr %188, align 1, !tbaa !55
  %190 = sext i8 %189 to i32
  %191 = icmp slt i32 %190, 54
  br i1 %191, label %192, label %195

192:                                              ; preds = %186, %174, %162
  %193 = load i32, ptr %6, align 4, !tbaa !38
  %194 = add nsw i32 %193, 1
  store i32 %194, ptr %6, align 4, !tbaa !38
  br label %195

195:                                              ; preds = %192, %186, %180, %168, %147
  br label %196

196:                                              ; preds = %195, %130
  br label %197

197:                                              ; preds = %196, %117
  %198 = load i32, ptr %6, align 4, !tbaa !38
  %199 = add nsw i32 %198, 1
  %200 = load ptr, ptr %3, align 8, !tbaa !8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, ptr %200, i64 %201
  store ptr %202, ptr %3, align 8, !tbaa !8
  br label %266

203:                                              ; preds = %22, %22, %22, %22, %22, %22, %22, %22
  store i32 1, ptr %6, align 4, !tbaa !38
  store i32 8, ptr %7, align 4, !tbaa !38
  %204 = load ptr, ptr %3, align 8, !tbaa !8
  %205 = getelementptr inbounds i8, ptr %204, i64 1
  store ptr %205, ptr %4, align 8, !tbaa !8
  %206 = call ptr @__ctype_b_loc() #12
  %207 = load ptr, ptr %206, align 8, !tbaa !64
  %208 = load ptr, ptr %3, align 8, !tbaa !8
  %209 = getelementptr inbounds i8, ptr %208, i64 2
  %210 = load i8, ptr %209, align 1, !tbaa !55
  %211 = sext i8 %210 to i32
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i16, ptr %207, i64 %212
  %214 = load i16, ptr %213, align 2, !tbaa !66
  %215 = zext i16 %214 to i32
  %216 = and i32 %215, 2048
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %261

218:                                              ; preds = %203
  %219 = load ptr, ptr %3, align 8, !tbaa !8
  %220 = getelementptr inbounds i8, ptr %219, i64 2
  %221 = load i8, ptr %220, align 1, !tbaa !55
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %222, 56
  br i1 %223, label %224, label %261

224:                                              ; preds = %218
  %225 = load ptr, ptr %3, align 8, !tbaa !8
  %226 = getelementptr inbounds i8, ptr %225, i64 2
  %227 = load i8, ptr %226, align 1, !tbaa !55
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %228, 57
  br i1 %229, label %230, label %261

230:                                              ; preds = %224
  %231 = load i32, ptr %6, align 4, !tbaa !38
  %232 = add nsw i32 %231, 1
  store i32 %232, ptr %6, align 4, !tbaa !38
  %233 = call ptr @__ctype_b_loc() #12
  %234 = load ptr, ptr %233, align 8, !tbaa !64
  %235 = load ptr, ptr %3, align 8, !tbaa !8
  %236 = getelementptr inbounds i8, ptr %235, i64 3
  %237 = load i8, ptr %236, align 1, !tbaa !55
  %238 = sext i8 %237 to i32
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i16, ptr %234, i64 %239
  %241 = load i16, ptr %240, align 2, !tbaa !66
  %242 = zext i16 %241 to i32
  %243 = and i32 %242, 2048
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %260

245:                                              ; preds = %230
  %246 = load ptr, ptr %3, align 8, !tbaa !8
  %247 = getelementptr inbounds i8, ptr %246, i64 3
  %248 = load i8, ptr %247, align 1, !tbaa !55
  %249 = sext i8 %248 to i32
  %250 = icmp ne i32 %249, 56
  br i1 %250, label %251, label %260

251:                                              ; preds = %245
  %252 = load ptr, ptr %3, align 8, !tbaa !8
  %253 = getelementptr inbounds i8, ptr %252, i64 3
  %254 = load i8, ptr %253, align 1, !tbaa !55
  %255 = sext i8 %254 to i32
  %256 = icmp ne i32 %255, 57
  br i1 %256, label %257, label %260

257:                                              ; preds = %251
  %258 = load i32, ptr %6, align 4, !tbaa !38
  %259 = add nsw i32 %258, 1
  store i32 %259, ptr %6, align 4, !tbaa !38
  br label %260

260:                                              ; preds = %257, %251, %245, %230
  br label %261

261:                                              ; preds = %260, %224, %218, %203
  %262 = load i32, ptr %6, align 4, !tbaa !38
  %263 = load ptr, ptr %3, align 8, !tbaa !8
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i8, ptr %263, i64 %264
  store ptr %265, ptr %3, align 8, !tbaa !8
  br label %266

266:                                              ; preds = %261, %197, %111
  %267 = load i32, ptr %6, align 4, !tbaa !38
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %269, label %301

269:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 1, ptr %9) #9
  %270 = load ptr, ptr %4, align 8, !tbaa !8
  %271 = load i32, ptr %6, align 4, !tbaa !38
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, ptr %270, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !55
  store i8 %274, ptr %9, align 1, !tbaa !55
  %275 = load ptr, ptr %4, align 8, !tbaa !8
  %276 = load i32, ptr %6, align 4, !tbaa !38
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, ptr %275, i64 %277
  store i8 0, ptr %278, align 1, !tbaa !55
  %279 = load ptr, ptr %4, align 8, !tbaa !8
  %280 = load i32, ptr %7, align 4, !tbaa !38
  %281 = call i64 @strtol(ptr noundef %279, ptr noundef null, i32 noundef signext %280) #9
  %282 = trunc i64 %281 to i8
  %283 = load ptr, ptr %5, align 8, !tbaa !8
  store i8 %282, ptr %283, align 1, !tbaa !55
  %284 = load i8, ptr %9, align 1, !tbaa !55
  %285 = load ptr, ptr %4, align 8, !tbaa !8
  %286 = load i32, ptr %6, align 4, !tbaa !38
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, ptr %285, i64 %287
  store i8 %284, ptr %288, align 1, !tbaa !55
  %289 = load ptr, ptr %3, align 8, !tbaa !8
  %290 = load i8, ptr %289, align 1, !tbaa !55
  %291 = sext i8 %290 to i32
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %269
  store i32 5, ptr %8, align 4
  br label %298

294:                                              ; preds = %269
  %295 = load ptr, ptr %2, align 8, !tbaa !59
  %296 = getelementptr inbounds nuw %struct.Term, ptr %295, i32 0, i32 5
  %297 = load ptr, ptr %296, align 8, !tbaa !60
  call void (ptr, ...) @d_fail(ptr noundef @.str.46, ptr noundef %297)
  store i32 0, ptr %8, align 4
  br label %298

298:                                              ; preds = %294, %293
  call void @llvm.lifetime.end.p0(i64 1, ptr %9) #9
  %299 = load i32, ptr %8, align 4
  switch i32 %299, label %348 [
    i32 0, label %300
    i32 5, label %315
  ]

300:                                              ; preds = %298
  br label %302

301:                                              ; preds = %266
  br label %323

302:                                              ; preds = %300
  br label %303

303:                                              ; preds = %302, %76, %66
  br label %304

304:                                              ; preds = %22, %303
  %305 = load ptr, ptr %3, align 8, !tbaa !8
  %306 = load i8, ptr %305, align 1, !tbaa !55
  %307 = load ptr, ptr %5, align 8, !tbaa !8
  %308 = getelementptr inbounds nuw i8, ptr %307, i32 1
  store ptr %308, ptr %5, align 8, !tbaa !8
  store i8 %306, ptr %307, align 1, !tbaa !55
  %309 = load ptr, ptr %3, align 8, !tbaa !8
  %310 = getelementptr inbounds i8, ptr %309, i64 1
  %311 = load i8, ptr %310, align 1, !tbaa !55
  %312 = load ptr, ptr %5, align 8, !tbaa !8
  store i8 %311, ptr %312, align 1, !tbaa !55
  %313 = load ptr, ptr %3, align 8, !tbaa !8
  %314 = getelementptr inbounds nuw i8, ptr %313, i32 1
  store ptr %314, ptr %3, align 8, !tbaa !8
  br label %315

315:                                              ; preds = %304, %298, %72, %62, %51, %47, %43, %39, %35, %31, %27
  br label %320

316:                                              ; preds = %17
  %317 = load ptr, ptr %3, align 8, !tbaa !8
  %318 = load i8, ptr %317, align 1, !tbaa !55
  %319 = load ptr, ptr %5, align 8, !tbaa !8
  store i8 %318, ptr %319, align 1, !tbaa !55
  br label %320

320:                                              ; preds = %316, %315
  %321 = load ptr, ptr %5, align 8, !tbaa !8
  %322 = getelementptr inbounds nuw i8, ptr %321, i32 1
  store ptr %322, ptr %5, align 8, !tbaa !8
  br label %323

323:                                              ; preds = %320, %301
  br label %324

324:                                              ; preds = %323
  %325 = load ptr, ptr %3, align 8, !tbaa !8
  %326 = getelementptr inbounds nuw i8, ptr %325, i32 1
  store ptr %326, ptr %3, align 8, !tbaa !8
  br label %13, !llvm.loop !68

327:                                              ; preds = %13
  %328 = load ptr, ptr %5, align 8, !tbaa !8
  store i8 0, ptr %328, align 1, !tbaa !55
  %329 = load ptr, ptr %2, align 8, !tbaa !59
  %330 = getelementptr inbounds nuw %struct.Term, ptr %329, i32 0, i32 5
  %331 = load ptr, ptr %330, align 8, !tbaa !60
  %332 = call i64 @strlen(ptr noundef %331) #10
  %333 = trunc i64 %332 to i32
  %334 = load ptr, ptr %2, align 8, !tbaa !59
  %335 = getelementptr inbounds nuw %struct.Term, ptr %334, i32 0, i32 6
  store i32 %333, ptr %335, align 8, !tbaa !61
  %336 = load ptr, ptr %2, align 8, !tbaa !59
  %337 = getelementptr inbounds nuw %struct.Term, ptr %336, i32 0, i32 6
  %338 = load i32, ptr %337, align 8, !tbaa !61
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %344, label %340

340:                                              ; preds = %327
  %341 = load ptr, ptr %2, align 8, !tbaa !59
  %342 = getelementptr inbounds nuw %struct.Term, ptr %341, i32 0, i32 5
  %343 = load ptr, ptr %342, align 8, !tbaa !60
  call void (ptr, ...) @d_fail(ptr noundef @.str.47, ptr noundef %343)
  br label %344

344:                                              ; preds = %340, %327
  store i32 0, ptr %8, align 4
  br label %345

345:                                              ; preds = %344, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  %346 = load i32, ptr %8, align 4
  switch i32 %346, label %348 [
    i32 0, label %347
    i32 1, label %347
  ]

347:                                              ; preds = %345, %345
  ret void

348:                                              ; preds = %345, %298
  unreachable
}

; Function Attrs: nounwind
define dso_local ptr @new_ident(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !8
  store ptr %1, ptr %5, align 8, !tbaa !8
  store ptr %2, ptr %6, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  %8 = call ptr @new_elem()
  store ptr %8, ptr %7, align 8, !tbaa !54
  %9 = load ptr, ptr %7, align 8, !tbaa !54
  %10 = getelementptr inbounds nuw %struct.Elem, ptr %9, i32 0, i32 0
  store i32 2, ptr %10, align 8, !tbaa !49
  %11 = load ptr, ptr %4, align 8, !tbaa !8
  %12 = load ptr, ptr %5, align 8, !tbaa !8
  %13 = call ptr @dup_str(ptr noundef %11, ptr noundef %12)
  %14 = load ptr, ptr %7, align 8, !tbaa !54
  %15 = getelementptr inbounds nuw %struct.Elem, ptr %14, i32 0, i32 3
  %16 = getelementptr inbounds nuw %struct.Unresolved, ptr %15, i32 0, i32 0
  store ptr %13, ptr %16, align 8, !tbaa !55
  %17 = load ptr, ptr %7, align 8, !tbaa !54
  %18 = getelementptr inbounds nuw %struct.Elem, ptr %17, i32 0, i32 3
  %19 = getelementptr inbounds nuw %struct.Unresolved, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = call i64 @strlen(ptr noundef %20) #10
  %22 = trunc i64 %21 to i32
  %23 = load ptr, ptr %7, align 8, !tbaa !54
  %24 = getelementptr inbounds nuw %struct.Elem, ptr %23, i32 0, i32 3
  %25 = getelementptr inbounds nuw %struct.Unresolved, ptr %24, i32 0, i32 1
  store i32 %22, ptr %25, align 8, !tbaa !55
  %26 = load ptr, ptr %6, align 8, !tbaa !41
  %27 = load ptr, ptr %7, align 8, !tbaa !54
  %28 = getelementptr inbounds nuw %struct.Elem, ptr %27, i32 0, i32 2
  store ptr %26, ptr %28, align 8, !tbaa !51
  %29 = load ptr, ptr %6, align 8, !tbaa !41
  %30 = icmp ne ptr %29, null
  br i1 %30, label %31, label %112

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %6, align 8, !tbaa !41
  %34 = getelementptr inbounds nuw %struct.Rule, ptr %33, i32 0, i32 6
  %35 = getelementptr inbounds nuw %struct.anon.5, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !69
  %37 = icmp ne ptr %36, null
  br i1 %37, label %54, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %7, align 8, !tbaa !54
  %40 = load ptr, ptr %6, align 8, !tbaa !41
  %41 = getelementptr inbounds nuw %struct.Rule, ptr %40, i32 0, i32 6
  %42 = getelementptr inbounds nuw %struct.anon.5, ptr %41, i32 0, i32 3
  %43 = getelementptr inbounds [3 x ptr], ptr %42, i64 0, i64 0
  %44 = load ptr, ptr %6, align 8, !tbaa !41
  %45 = getelementptr inbounds nuw %struct.Rule, ptr %44, i32 0, i32 6
  %46 = getelementptr inbounds nuw %struct.anon.5, ptr %45, i32 0, i32 2
  store ptr %43, ptr %46, align 8, !tbaa !69
  %47 = load ptr, ptr %6, align 8, !tbaa !41
  %48 = getelementptr inbounds nuw %struct.Rule, ptr %47, i32 0, i32 6
  %49 = getelementptr inbounds nuw %struct.anon.5, ptr %48, i32 0, i32 0
  %50 = load i32, ptr %49, align 8, !tbaa !70
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8, !tbaa !70
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds nuw ptr, ptr %43, i64 %52
  store ptr %39, ptr %53, align 8, !tbaa !54
  br label %111

54:                                               ; preds = %32
  %55 = load ptr, ptr %6, align 8, !tbaa !41
  %56 = getelementptr inbounds nuw %struct.Rule, ptr %55, i32 0, i32 6
  %57 = getelementptr inbounds nuw %struct.anon.5, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !69
  %59 = load ptr, ptr %6, align 8, !tbaa !41
  %60 = getelementptr inbounds nuw %struct.Rule, ptr %59, i32 0, i32 6
  %61 = getelementptr inbounds nuw %struct.anon.5, ptr %60, i32 0, i32 3
  %62 = getelementptr inbounds [3 x ptr], ptr %61, i64 0, i64 0
  %63 = icmp eq ptr %58, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %54
  %65 = load ptr, ptr %6, align 8, !tbaa !41
  %66 = getelementptr inbounds nuw %struct.Rule, ptr %65, i32 0, i32 6
  %67 = getelementptr inbounds nuw %struct.anon.5, ptr %66, i32 0, i32 0
  %68 = load i32, ptr %67, align 8, !tbaa !70
  %69 = icmp ult i32 %68, 3
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load ptr, ptr %7, align 8, !tbaa !54
  %72 = load ptr, ptr %6, align 8, !tbaa !41
  %73 = getelementptr inbounds nuw %struct.Rule, ptr %72, i32 0, i32 6
  %74 = getelementptr inbounds nuw %struct.anon.5, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !69
  %76 = load ptr, ptr %6, align 8, !tbaa !41
  %77 = getelementptr inbounds nuw %struct.Rule, ptr %76, i32 0, i32 6
  %78 = getelementptr inbounds nuw %struct.anon.5, ptr %77, i32 0, i32 0
  %79 = load i32, ptr %78, align 8, !tbaa !70
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 8, !tbaa !70
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds nuw ptr, ptr %75, i64 %81
  store ptr %71, ptr %82, align 8, !tbaa !54
  br label %111

83:                                               ; preds = %64
  br label %105

84:                                               ; preds = %54
  %85 = load ptr, ptr %6, align 8, !tbaa !41
  %86 = getelementptr inbounds nuw %struct.Rule, ptr %85, i32 0, i32 6
  %87 = getelementptr inbounds nuw %struct.anon.5, ptr %86, i32 0, i32 0
  %88 = load i32, ptr %87, align 8, !tbaa !70
  %89 = and i32 %88, 7
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %84
  %92 = load ptr, ptr %7, align 8, !tbaa !54
  %93 = load ptr, ptr %6, align 8, !tbaa !41
  %94 = getelementptr inbounds nuw %struct.Rule, ptr %93, i32 0, i32 6
  %95 = getelementptr inbounds nuw %struct.anon.5, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !69
  %97 = load ptr, ptr %6, align 8, !tbaa !41
  %98 = getelementptr inbounds nuw %struct.Rule, ptr %97, i32 0, i32 6
  %99 = getelementptr inbounds nuw %struct.anon.5, ptr %98, i32 0, i32 0
  %100 = load i32, ptr %99, align 8, !tbaa !70
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 8, !tbaa !70
  %102 = zext i32 %100 to i64
  %103 = getelementptr inbounds nuw ptr, ptr %96, i64 %102
  store ptr %92, ptr %103, align 8, !tbaa !54
  br label %111

104:                                              ; preds = %84
  br label %105

105:                                              ; preds = %104, %83
  br label %106

106:                                              ; preds = %105
  %107 = load ptr, ptr %6, align 8, !tbaa !41
  %108 = getelementptr inbounds nuw %struct.Rule, ptr %107, i32 0, i32 6
  %109 = load ptr, ptr %7, align 8, !tbaa !54
  call void @vec_add_internal(ptr noundef %108, ptr noundef %109)
  br label %110

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110, %91, %70, %38
  br label %112

112:                                              ; preds = %111, %3
  %113 = load ptr, ptr %7, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  ret ptr %113
}

declare ptr @dup_str(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
define dso_local void @new_token(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !8
  store ptr %2, ptr %6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  %8 = call ptr @new_term()
  store ptr %8, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr %6, align 8, !tbaa !8
  %10 = load ptr, ptr %5, align 8, !tbaa !8
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = add nsw i64 %13, 1
  %15 = call noalias ptr @malloc(i64 noundef %14) #11
  %16 = load ptr, ptr %7, align 8, !tbaa !59
  %17 = getelementptr inbounds nuw %struct.Term, ptr %16, i32 0, i32 5
  store ptr %15, ptr %17, align 8, !tbaa !60
  %18 = load ptr, ptr %7, align 8, !tbaa !59
  %19 = getelementptr inbounds nuw %struct.Term, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = load ptr, ptr %5, align 8, !tbaa !8
  %22 = load ptr, ptr %6, align 8, !tbaa !8
  %23 = load ptr, ptr %5, align 8, !tbaa !8
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %21, i64 %26, i1 false)
  %27 = load ptr, ptr %7, align 8, !tbaa !59
  %28 = getelementptr inbounds nuw %struct.Term, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = load ptr, ptr %6, align 8, !tbaa !8
  %31 = load ptr, ptr %5, align 8, !tbaa !8
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = getelementptr inbounds i8, ptr %29, i64 %34
  store i8 0, ptr %35, align 1, !tbaa !55
  %36 = load ptr, ptr %6, align 8, !tbaa !8
  %37 = load ptr, ptr %5, align 8, !tbaa !8
  %38 = ptrtoint ptr %36 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = load ptr, ptr %7, align 8, !tbaa !59
  %43 = getelementptr inbounds nuw %struct.Term, ptr %42, i32 0, i32 6
  store i32 %41, ptr %43, align 8, !tbaa !61
  br label %44

44:                                               ; preds = %3
  %45 = load ptr, ptr %4, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.Grammar, ptr %45, i32 0, i32 2
  %47 = getelementptr inbounds nuw %struct.anon.1, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = icmp ne ptr %48, null
  br i1 %49, label %66, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %7, align 8, !tbaa !59
  %52 = load ptr, ptr %4, align 8, !tbaa !3
  %53 = getelementptr inbounds nuw %struct.Grammar, ptr %52, i32 0, i32 2
  %54 = getelementptr inbounds nuw %struct.anon.1, ptr %53, i32 0, i32 3
  %55 = getelementptr inbounds [3 x ptr], ptr %54, i64 0, i64 0
  %56 = load ptr, ptr %4, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.Grammar, ptr %56, i32 0, i32 2
  %58 = getelementptr inbounds nuw %struct.anon.1, ptr %57, i32 0, i32 2
  store ptr %55, ptr %58, align 8, !tbaa !62
  %59 = load ptr, ptr %4, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.Grammar, ptr %59, i32 0, i32 2
  %61 = getelementptr inbounds nuw %struct.anon.1, ptr %60, i32 0, i32 0
  %62 = load i32, ptr %61, align 8, !tbaa !63
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 8, !tbaa !63
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds nuw ptr, ptr %55, i64 %64
  store ptr %51, ptr %65, align 8, !tbaa !59
  br label %123

66:                                               ; preds = %44
  %67 = load ptr, ptr %4, align 8, !tbaa !3
  %68 = getelementptr inbounds nuw %struct.Grammar, ptr %67, i32 0, i32 2
  %69 = getelementptr inbounds nuw %struct.anon.1, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !62
  %71 = load ptr, ptr %4, align 8, !tbaa !3
  %72 = getelementptr inbounds nuw %struct.Grammar, ptr %71, i32 0, i32 2
  %73 = getelementptr inbounds nuw %struct.anon.1, ptr %72, i32 0, i32 3
  %74 = getelementptr inbounds [3 x ptr], ptr %73, i64 0, i64 0
  %75 = icmp eq ptr %70, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %66
  %77 = load ptr, ptr %4, align 8, !tbaa !3
  %78 = getelementptr inbounds nuw %struct.Grammar, ptr %77, i32 0, i32 2
  %79 = getelementptr inbounds nuw %struct.anon.1, ptr %78, i32 0, i32 0
  %80 = load i32, ptr %79, align 8, !tbaa !63
  %81 = icmp ult i32 %80, 3
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = load ptr, ptr %7, align 8, !tbaa !59
  %84 = load ptr, ptr %4, align 8, !tbaa !3
  %85 = getelementptr inbounds nuw %struct.Grammar, ptr %84, i32 0, i32 2
  %86 = getelementptr inbounds nuw %struct.anon.1, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !62
  %88 = load ptr, ptr %4, align 8, !tbaa !3
  %89 = getelementptr inbounds nuw %struct.Grammar, ptr %88, i32 0, i32 2
  %90 = getelementptr inbounds nuw %struct.anon.1, ptr %89, i32 0, i32 0
  %91 = load i32, ptr %90, align 8, !tbaa !63
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 8, !tbaa !63
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds nuw ptr, ptr %87, i64 %93
  store ptr %83, ptr %94, align 8, !tbaa !59
  br label %123

95:                                               ; preds = %76
  br label %117

96:                                               ; preds = %66
  %97 = load ptr, ptr %4, align 8, !tbaa !3
  %98 = getelementptr inbounds nuw %struct.Grammar, ptr %97, i32 0, i32 2
  %99 = getelementptr inbounds nuw %struct.anon.1, ptr %98, i32 0, i32 0
  %100 = load i32, ptr %99, align 8, !tbaa !63
  %101 = and i32 %100, 7
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %96
  %104 = load ptr, ptr %7, align 8, !tbaa !59
  %105 = load ptr, ptr %4, align 8, !tbaa !3
  %106 = getelementptr inbounds nuw %struct.Grammar, ptr %105, i32 0, i32 2
  %107 = getelementptr inbounds nuw %struct.anon.1, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !62
  %109 = load ptr, ptr %4, align 8, !tbaa !3
  %110 = getelementptr inbounds nuw %struct.Grammar, ptr %109, i32 0, i32 2
  %111 = getelementptr inbounds nuw %struct.anon.1, ptr %110, i32 0, i32 0
  %112 = load i32, ptr %111, align 8, !tbaa !63
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 8, !tbaa !63
  %114 = zext i32 %112 to i64
  %115 = getelementptr inbounds nuw ptr, ptr %108, i64 %114
  store ptr %104, ptr %115, align 8, !tbaa !59
  br label %123

116:                                              ; preds = %96
  br label %117

117:                                              ; preds = %116, %95
  br label %118

118:                                              ; preds = %117
  %119 = load ptr, ptr %4, align 8, !tbaa !3
  %120 = getelementptr inbounds nuw %struct.Grammar, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %7, align 8, !tbaa !59
  call void @vec_add_internal(ptr noundef %120, ptr noundef %121)
  br label %122

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122, %103, %82, %50
  %124 = load ptr, ptr %7, align 8, !tbaa !59
  %125 = getelementptr inbounds nuw %struct.Term, ptr %124, i32 0, i32 0
  store i32 3, ptr %125, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind
define dso_local ptr @new_code(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !8
  store ptr %2, ptr %7, align 8, !tbaa !8
  store ptr %3, ptr %8, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  %10 = load ptr, ptr %5, align 8, !tbaa !3
  %11 = load ptr, ptr %6, align 8, !tbaa !8
  %12 = load ptr, ptr %7, align 8, !tbaa !8
  %13 = load ptr, ptr %8, align 8, !tbaa !41
  %14 = call ptr @new_term_string(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  store ptr %14, ptr %9, align 8, !tbaa !54
  %15 = load ptr, ptr %9, align 8, !tbaa !54
  %16 = getelementptr inbounds nuw %struct.Elem, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = getelementptr inbounds nuw %struct.Term, ptr %17, i32 0, i32 0
  store i32 2, ptr %18, align 8, !tbaa !57
  %19 = load ptr, ptr %9, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  ret ptr %19
}

; Function Attrs: nounwind
define dso_local ptr @dup_elem(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !54
  store ptr %1, ptr %4, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %6 = call noalias ptr @malloc(i64 noundef 32) #11
  store ptr %6, ptr %5, align 8, !tbaa !54
  %7 = load ptr, ptr %5, align 8, !tbaa !54
  %8 = load ptr, ptr %3, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %8, i64 32, i1 false)
  %9 = load ptr, ptr %4, align 8, !tbaa !41
  %10 = load ptr, ptr %5, align 8, !tbaa !54
  %11 = getelementptr inbounds nuw %struct.Elem, ptr %10, i32 0, i32 2
  store ptr %9, ptr %11, align 8, !tbaa !51
  %12 = load ptr, ptr %5, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret ptr %12
}

; Function Attrs: nounwind
define dso_local void @add_global_code(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !8
  store ptr %2, ptr %7, align 8, !tbaa !8
  store i32 %3, ptr %8, align 4, !tbaa !38
  %9 = load ptr, ptr %5, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.Grammar, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = icmp ne ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = call noalias ptr @malloc(i64 noundef 64) #11
  %15 = load ptr, ptr %5, align 8, !tbaa !3
  %16 = getelementptr inbounds nuw %struct.Grammar, ptr %15, i32 0, i32 5
  store ptr %14, ptr %16, align 8, !tbaa !71
  br label %38

17:                                               ; preds = %4
  %18 = load ptr, ptr %5, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.Grammar, ptr %18, i32 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !72
  %21 = add nsw i32 %20, 1
  %22 = and i32 %21, 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %5, align 8, !tbaa !3
  %26 = getelementptr inbounds nuw %struct.Grammar, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  %28 = load ptr, ptr %5, align 8, !tbaa !3
  %29 = getelementptr inbounds nuw %struct.Grammar, ptr %28, i32 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !72
  %31 = add nsw i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 16, %32
  %34 = call ptr @realloc(ptr noundef %27, i64 noundef %33) #13
  %35 = load ptr, ptr %5, align 8, !tbaa !3
  %36 = getelementptr inbounds nuw %struct.Grammar, ptr %35, i32 0, i32 5
  store ptr %34, ptr %36, align 8, !tbaa !71
  br label %37

37:                                               ; preds = %24, %17
  br label %38

38:                                               ; preds = %37, %13
  %39 = load ptr, ptr %6, align 8, !tbaa !8
  %40 = load ptr, ptr %7, align 8, !tbaa !8
  %41 = call ptr @dup_str(ptr noundef %39, ptr noundef %40)
  %42 = load ptr, ptr %5, align 8, !tbaa !3
  %43 = getelementptr inbounds nuw %struct.Grammar, ptr %42, i32 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = load ptr, ptr %5, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.Grammar, ptr %45, i32 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !72
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.Code, ptr %44, i64 %48
  %50 = getelementptr inbounds nuw %struct.Code, ptr %49, i32 0, i32 0
  store ptr %41, ptr %50, align 8, !tbaa !73
  %51 = load i32, ptr %8, align 4, !tbaa !38
  %52 = load ptr, ptr %5, align 8, !tbaa !3
  %53 = getelementptr inbounds nuw %struct.Grammar, ptr %52, i32 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !71
  %55 = load ptr, ptr %5, align 8, !tbaa !3
  %56 = getelementptr inbounds nuw %struct.Grammar, ptr %55, i32 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !72
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.Code, ptr %54, i64 %58
  %60 = getelementptr inbounds nuw %struct.Code, ptr %59, i32 0, i32 1
  store i32 %51, ptr %60, align 8, !tbaa !74
  %61 = load ptr, ptr %5, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.Grammar, ptr %61, i32 0, i32 6
  %63 = load i32, ptr %62, align 8, !tbaa !72
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %62, align 8, !tbaa !72
  ret void
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #7

; Function Attrs: nounwind
define dso_local void @new_declaration(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !54
  store i32 %2, ptr %6, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  %8 = call noalias ptr @malloc(i64 noundef 16) #11
  store ptr %8, ptr %7, align 8, !tbaa !75
  %9 = load ptr, ptr %5, align 8, !tbaa !54
  %10 = load ptr, ptr %7, align 8, !tbaa !75
  %11 = getelementptr inbounds nuw %struct.Declaration, ptr %10, i32 0, i32 0
  store ptr %9, ptr %11, align 8, !tbaa !77
  %12 = load i32, ptr %6, align 4, !tbaa !38
  %13 = load ptr, ptr %7, align 8, !tbaa !75
  %14 = getelementptr inbounds nuw %struct.Declaration, ptr %13, i32 0, i32 1
  store i32 %12, ptr %14, align 8, !tbaa !79
  %15 = load ptr, ptr %4, align 8, !tbaa !3
  %16 = getelementptr inbounds nuw %struct.Grammar, ptr %15, i32 0, i32 7
  %17 = getelementptr inbounds nuw %struct.anon.3, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8, !tbaa !80
  %19 = load ptr, ptr %7, align 8, !tbaa !75
  %20 = getelementptr inbounds nuw %struct.Declaration, ptr %19, i32 0, i32 2
  store i32 %18, ptr %20, align 4, !tbaa !81
  br label %21

21:                                               ; preds = %3
  %22 = load ptr, ptr %4, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct.Grammar, ptr %22, i32 0, i32 7
  %24 = getelementptr inbounds nuw %struct.anon.3, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !82
  %26 = icmp ne ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %7, align 8, !tbaa !75
  %29 = load ptr, ptr %4, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.Grammar, ptr %29, i32 0, i32 7
  %31 = getelementptr inbounds nuw %struct.anon.3, ptr %30, i32 0, i32 3
  %32 = getelementptr inbounds [3 x ptr], ptr %31, i64 0, i64 0
  %33 = load ptr, ptr %4, align 8, !tbaa !3
  %34 = getelementptr inbounds nuw %struct.Grammar, ptr %33, i32 0, i32 7
  %35 = getelementptr inbounds nuw %struct.anon.3, ptr %34, i32 0, i32 2
  store ptr %32, ptr %35, align 8, !tbaa !82
  %36 = load ptr, ptr %4, align 8, !tbaa !3
  %37 = getelementptr inbounds nuw %struct.Grammar, ptr %36, i32 0, i32 7
  %38 = getelementptr inbounds nuw %struct.anon.3, ptr %37, i32 0, i32 0
  %39 = load i32, ptr %38, align 8, !tbaa !80
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 8, !tbaa !80
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds nuw ptr, ptr %32, i64 %41
  store ptr %28, ptr %42, align 8, !tbaa !75
  br label %100

43:                                               ; preds = %21
  %44 = load ptr, ptr %4, align 8, !tbaa !3
  %45 = getelementptr inbounds nuw %struct.Grammar, ptr %44, i32 0, i32 7
  %46 = getelementptr inbounds nuw %struct.anon.3, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !82
  %48 = load ptr, ptr %4, align 8, !tbaa !3
  %49 = getelementptr inbounds nuw %struct.Grammar, ptr %48, i32 0, i32 7
  %50 = getelementptr inbounds nuw %struct.anon.3, ptr %49, i32 0, i32 3
  %51 = getelementptr inbounds [3 x ptr], ptr %50, i64 0, i64 0
  %52 = icmp eq ptr %47, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %43
  %54 = load ptr, ptr %4, align 8, !tbaa !3
  %55 = getelementptr inbounds nuw %struct.Grammar, ptr %54, i32 0, i32 7
  %56 = getelementptr inbounds nuw %struct.anon.3, ptr %55, i32 0, i32 0
  %57 = load i32, ptr %56, align 8, !tbaa !80
  %58 = icmp ult i32 %57, 3
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load ptr, ptr %7, align 8, !tbaa !75
  %61 = load ptr, ptr %4, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.Grammar, ptr %61, i32 0, i32 7
  %63 = getelementptr inbounds nuw %struct.anon.3, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !82
  %65 = load ptr, ptr %4, align 8, !tbaa !3
  %66 = getelementptr inbounds nuw %struct.Grammar, ptr %65, i32 0, i32 7
  %67 = getelementptr inbounds nuw %struct.anon.3, ptr %66, i32 0, i32 0
  %68 = load i32, ptr %67, align 8, !tbaa !80
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 8, !tbaa !80
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds nuw ptr, ptr %64, i64 %70
  store ptr %60, ptr %71, align 8, !tbaa !75
  br label %100

72:                                               ; preds = %53
  br label %94

73:                                               ; preds = %43
  %74 = load ptr, ptr %4, align 8, !tbaa !3
  %75 = getelementptr inbounds nuw %struct.Grammar, ptr %74, i32 0, i32 7
  %76 = getelementptr inbounds nuw %struct.anon.3, ptr %75, i32 0, i32 0
  %77 = load i32, ptr %76, align 8, !tbaa !80
  %78 = and i32 %77, 7
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %73
  %81 = load ptr, ptr %7, align 8, !tbaa !75
  %82 = load ptr, ptr %4, align 8, !tbaa !3
  %83 = getelementptr inbounds nuw %struct.Grammar, ptr %82, i32 0, i32 7
  %84 = getelementptr inbounds nuw %struct.anon.3, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !82
  %86 = load ptr, ptr %4, align 8, !tbaa !3
  %87 = getelementptr inbounds nuw %struct.Grammar, ptr %86, i32 0, i32 7
  %88 = getelementptr inbounds nuw %struct.anon.3, ptr %87, i32 0, i32 0
  %89 = load i32, ptr %88, align 8, !tbaa !80
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 8, !tbaa !80
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds nuw ptr, ptr %85, i64 %91
  store ptr %81, ptr %92, align 8, !tbaa !75
  br label %100

93:                                               ; preds = %73
  br label %94

94:                                               ; preds = %93, %72
  br label %95

95:                                               ; preds = %94
  %96 = load ptr, ptr %4, align 8, !tbaa !3
  %97 = getelementptr inbounds nuw %struct.Grammar, ptr %96, i32 0, i32 7
  %98 = load ptr, ptr %7, align 8, !tbaa !75
  call void @vec_add_internal(ptr noundef %97, ptr noundef %98)
  br label %99

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99, %80, %59, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  ret void
}

; Function Attrs: nounwind
define dso_local void @add_declaration(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !8
  store ptr %2, ptr %8, align 8, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !38
  store i32 %4, ptr %10, align 4, !tbaa !38
  %11 = load ptr, ptr %7, align 8, !tbaa !8
  %12 = load ptr, ptr %8, align 8, !tbaa !8
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %5
  %15 = load i32, ptr %9, align 4, !tbaa !38
  switch i32 %15, label %34 [
    i32 3, label %16
    i32 4, label %19
    i32 1, label %22
    i32 2, label %25
    i32 0, label %28
    i32 7, label %31
  ]

16:                                               ; preds = %14
  %17 = load ptr, ptr %6, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.Grammar, ptr %17, i32 0, i32 10
  store i32 1, ptr %18, align 8, !tbaa !83
  br label %53

19:                                               ; preds = %14
  %20 = load ptr, ptr %6, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.Grammar, ptr %20, i32 0, i32 13
  store i32 1, ptr %21, align 4, !tbaa !84
  br label %53

22:                                               ; preds = %14
  %23 = load ptr, ptr %6, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.Grammar, ptr %23, i32 0, i32 15
  store i32 1, ptr %24, align 4, !tbaa !85
  br label %53

25:                                               ; preds = %14
  %26 = load ptr, ptr %6, align 8, !tbaa !3
  %27 = getelementptr inbounds nuw %struct.Grammar, ptr %26, i32 0, i32 15
  store i32 0, ptr %27, align 4, !tbaa !85
  br label %53

28:                                               ; preds = %14
  %29 = load ptr, ptr %6, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.Grammar, ptr %29, i32 0, i32 14
  store i32 1, ptr %30, align 8, !tbaa !86
  br label %53

31:                                               ; preds = %14
  %32 = load ptr, ptr %6, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.Grammar, ptr %32, i32 0, i32 16
  store i32 1, ptr %33, align 8, !tbaa !87
  br label %53

34:                                               ; preds = %14
  %35 = load i32, ptr %10, align 4, !tbaa !38
  call void (ptr, ...) @d_fail(ptr noundef @.str, i32 noundef signext %35)
  br label %36

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36, %5
  %38 = load i32, ptr %9, align 4, !tbaa !38
  switch i32 %38, label %47 [
    i32 6, label %39
    i32 3, label %45
  ]

39:                                               ; preds = %37
  %40 = load ptr, ptr %7, align 8, !tbaa !8
  %41 = load ptr, ptr %8, align 8, !tbaa !8
  %42 = call ptr @dup_str(ptr noundef %40, ptr noundef %41)
  %43 = load ptr, ptr %6, align 8, !tbaa !3
  %44 = getelementptr inbounds nuw %struct.Grammar, ptr %43, i32 0, i32 9
  store ptr %42, ptr %44, align 8, !tbaa !88
  br label %53

45:                                               ; preds = %37
  %46 = load i32, ptr %10, align 4, !tbaa !38
  call void (ptr, ...) @d_fail(ptr noundef @.str.1, i32 noundef signext %46)
  br label %47

47:                                               ; preds = %37, %45
  %48 = load ptr, ptr %6, align 8, !tbaa !3
  %49 = load ptr, ptr %7, align 8, !tbaa !8
  %50 = load ptr, ptr %8, align 8, !tbaa !8
  %51 = call ptr @new_ident(ptr noundef %49, ptr noundef %50, ptr noundef null)
  %52 = load i32, ptr %9, align 4, !tbaa !38
  call void @new_declaration(ptr noundef %48, ptr noundef %51, i32 noundef signext %52)
  br label %53

53:                                               ; preds = %16, %19, %22, %25, %28, %31, %39, %47
  ret void
}

declare void @d_fail(ptr noundef, ...) #5

; Function Attrs: nounwind
define dso_local ptr @find_pass(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !8
  store ptr %2, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9
  br label %11

11:                                               ; preds = %30, %3
  %12 = load ptr, ptr %6, align 8, !tbaa !8
  %13 = load i8, ptr %12, align 1, !tbaa !55
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = call ptr @__ctype_b_loc() #12
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = load ptr, ptr %6, align 8, !tbaa !8
  %20 = load i8, ptr %19, align 1, !tbaa !55
  %21 = sext i8 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, ptr %18, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !66
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 8192
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %16, %11
  %29 = phi i1 [ false, %11 ], [ %27, %16 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load ptr, ptr %6, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %31, i32 1
  store ptr %32, ptr %6, align 8, !tbaa !8
  br label %11, !llvm.loop !89

33:                                               ; preds = %28
  %34 = load ptr, ptr %7, align 8, !tbaa !8
  %35 = load ptr, ptr %6, align 8, !tbaa !8
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, ptr %9, align 4, !tbaa !38
  store i32 0, ptr %8, align 4, !tbaa !38
  br label %40

40:                                               ; preds = %86, %33
  %41 = load i32, ptr %8, align 4, !tbaa !38
  %42 = load ptr, ptr %5, align 8, !tbaa !3
  %43 = getelementptr inbounds nuw %struct.Grammar, ptr %42, i32 0, i32 8
  %44 = getelementptr inbounds nuw %struct.anon.4, ptr %43, i32 0, i32 0
  %45 = load i32, ptr %44, align 8, !tbaa !90
  %46 = icmp ult i32 %41, %45
  br i1 %46, label %47, label %89

47:                                               ; preds = %40
  %48 = load i32, ptr %9, align 4, !tbaa !38
  %49 = load ptr, ptr %5, align 8, !tbaa !3
  %50 = getelementptr inbounds nuw %struct.Grammar, ptr %49, i32 0, i32 8
  %51 = getelementptr inbounds nuw %struct.anon.4, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !91
  %53 = load i32, ptr %8, align 4, !tbaa !38
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %52, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !92
  %57 = getelementptr inbounds nuw %struct.D_Pass, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !94
  %59 = icmp eq i32 %48, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %47
  %61 = load ptr, ptr %5, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.Grammar, ptr %61, i32 0, i32 8
  %63 = getelementptr inbounds nuw %struct.anon.4, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !91
  %65 = load i32, ptr %8, align 4, !tbaa !38
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !92
  %69 = getelementptr inbounds nuw %struct.D_Pass, ptr %68, i32 0, i32 0
  %70 = load ptr, ptr %69, align 8, !tbaa !96
  %71 = load ptr, ptr %6, align 8, !tbaa !8
  %72 = load i32, ptr %9, align 4, !tbaa !38
  %73 = sext i32 %72 to i64
  %74 = call signext i32 @strncmp(ptr noundef %70, ptr noundef %71, i64 noundef %73) #10
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %60
  %77 = load ptr, ptr %5, align 8, !tbaa !3
  %78 = getelementptr inbounds nuw %struct.Grammar, ptr %77, i32 0, i32 8
  %79 = getelementptr inbounds nuw %struct.anon.4, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !91
  %81 = load i32, ptr %8, align 4, !tbaa !38
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !92
  store ptr %84, ptr %4, align 8
  store i32 1, ptr %10, align 4
  br label %90

85:                                               ; preds = %60, %47
  br label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %8, align 4, !tbaa !38
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %8, align 4, !tbaa !38
  br label %40, !llvm.loop !97

89:                                               ; preds = %40
  store ptr null, ptr %4, align 8
  store i32 1, ptr %10, align 4
  br label %90

90:                                               ; preds = %89, %76
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  %91 = load ptr, ptr %4, align 8
  ret ptr %91
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #8

; Function Attrs: nounwind willreturn memory(read)
declare signext i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
define dso_local void @add_pass(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !8
  store ptr %2, ptr %8, align 8, !tbaa !8
  store i32 %3, ptr %9, align 4, !tbaa !38
  store i32 %4, ptr %10, align 4, !tbaa !38
  %12 = load ptr, ptr %6, align 8, !tbaa !3
  %13 = load ptr, ptr %7, align 8, !tbaa !8
  %14 = load ptr, ptr %8, align 8, !tbaa !8
  %15 = call ptr @find_pass(ptr noundef %12, ptr noundef %13, ptr noundef %14)
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load ptr, ptr %7, align 8, !tbaa !8
  %19 = load ptr, ptr %8, align 8, !tbaa !8
  %20 = call ptr @dup_str(ptr noundef %18, ptr noundef %19)
  %21 = load i32, ptr %10, align 4, !tbaa !38
  call void (ptr, ...) @d_fail(ptr noundef @.str.2, ptr noundef %20, i32 noundef signext %21)
  br label %126

22:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #9
  %23 = call noalias ptr @malloc(i64 noundef 24) #11
  store ptr %23, ptr %11, align 8, !tbaa !92
  %24 = load ptr, ptr %7, align 8, !tbaa !8
  %25 = load ptr, ptr %8, align 8, !tbaa !8
  %26 = call ptr @dup_str(ptr noundef %24, ptr noundef %25)
  %27 = load ptr, ptr %11, align 8, !tbaa !92
  %28 = getelementptr inbounds nuw %struct.D_Pass, ptr %27, i32 0, i32 0
  store ptr %26, ptr %28, align 8, !tbaa !96
  %29 = load ptr, ptr %8, align 8, !tbaa !8
  %30 = load ptr, ptr %7, align 8, !tbaa !8
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = load ptr, ptr %11, align 8, !tbaa !92
  %36 = getelementptr inbounds nuw %struct.D_Pass, ptr %35, i32 0, i32 1
  store i32 %34, ptr %36, align 8, !tbaa !94
  %37 = load i32, ptr %9, align 4, !tbaa !38
  %38 = load ptr, ptr %11, align 8, !tbaa !92
  %39 = getelementptr inbounds nuw %struct.D_Pass, ptr %38, i32 0, i32 2
  store i32 %37, ptr %39, align 4, !tbaa !98
  %40 = load ptr, ptr %6, align 8, !tbaa !3
  %41 = getelementptr inbounds nuw %struct.Grammar, ptr %40, i32 0, i32 28
  %42 = load i32, ptr %41, align 8, !tbaa !99
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 8, !tbaa !99
  %44 = load ptr, ptr %11, align 8, !tbaa !92
  %45 = getelementptr inbounds nuw %struct.D_Pass, ptr %44, i32 0, i32 3
  store i32 %42, ptr %45, align 8, !tbaa !100
  br label %46

46:                                               ; preds = %22
  %47 = load ptr, ptr %6, align 8, !tbaa !3
  %48 = getelementptr inbounds nuw %struct.Grammar, ptr %47, i32 0, i32 8
  %49 = getelementptr inbounds nuw %struct.anon.4, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !91
  %51 = icmp ne ptr %50, null
  br i1 %51, label %68, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %11, align 8, !tbaa !92
  %54 = load ptr, ptr %6, align 8, !tbaa !3
  %55 = getelementptr inbounds nuw %struct.Grammar, ptr %54, i32 0, i32 8
  %56 = getelementptr inbounds nuw %struct.anon.4, ptr %55, i32 0, i32 3
  %57 = getelementptr inbounds [3 x ptr], ptr %56, i64 0, i64 0
  %58 = load ptr, ptr %6, align 8, !tbaa !3
  %59 = getelementptr inbounds nuw %struct.Grammar, ptr %58, i32 0, i32 8
  %60 = getelementptr inbounds nuw %struct.anon.4, ptr %59, i32 0, i32 2
  store ptr %57, ptr %60, align 8, !tbaa !91
  %61 = load ptr, ptr %6, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.Grammar, ptr %61, i32 0, i32 8
  %63 = getelementptr inbounds nuw %struct.anon.4, ptr %62, i32 0, i32 0
  %64 = load i32, ptr %63, align 8, !tbaa !90
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 8, !tbaa !90
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds nuw ptr, ptr %57, i64 %66
  store ptr %53, ptr %67, align 8, !tbaa !92
  br label %125

68:                                               ; preds = %46
  %69 = load ptr, ptr %6, align 8, !tbaa !3
  %70 = getelementptr inbounds nuw %struct.Grammar, ptr %69, i32 0, i32 8
  %71 = getelementptr inbounds nuw %struct.anon.4, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !91
  %73 = load ptr, ptr %6, align 8, !tbaa !3
  %74 = getelementptr inbounds nuw %struct.Grammar, ptr %73, i32 0, i32 8
  %75 = getelementptr inbounds nuw %struct.anon.4, ptr %74, i32 0, i32 3
  %76 = getelementptr inbounds [3 x ptr], ptr %75, i64 0, i64 0
  %77 = icmp eq ptr %72, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %68
  %79 = load ptr, ptr %6, align 8, !tbaa !3
  %80 = getelementptr inbounds nuw %struct.Grammar, ptr %79, i32 0, i32 8
  %81 = getelementptr inbounds nuw %struct.anon.4, ptr %80, i32 0, i32 0
  %82 = load i32, ptr %81, align 8, !tbaa !90
  %83 = icmp ult i32 %82, 3
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load ptr, ptr %11, align 8, !tbaa !92
  %86 = load ptr, ptr %6, align 8, !tbaa !3
  %87 = getelementptr inbounds nuw %struct.Grammar, ptr %86, i32 0, i32 8
  %88 = getelementptr inbounds nuw %struct.anon.4, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !91
  %90 = load ptr, ptr %6, align 8, !tbaa !3
  %91 = getelementptr inbounds nuw %struct.Grammar, ptr %90, i32 0, i32 8
  %92 = getelementptr inbounds nuw %struct.anon.4, ptr %91, i32 0, i32 0
  %93 = load i32, ptr %92, align 8, !tbaa !90
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 8, !tbaa !90
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds nuw ptr, ptr %89, i64 %95
  store ptr %85, ptr %96, align 8, !tbaa !92
  br label %125

97:                                               ; preds = %78
  br label %119

98:                                               ; preds = %68
  %99 = load ptr, ptr %6, align 8, !tbaa !3
  %100 = getelementptr inbounds nuw %struct.Grammar, ptr %99, i32 0, i32 8
  %101 = getelementptr inbounds nuw %struct.anon.4, ptr %100, i32 0, i32 0
  %102 = load i32, ptr %101, align 8, !tbaa !90
  %103 = and i32 %102, 7
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %98
  %106 = load ptr, ptr %11, align 8, !tbaa !92
  %107 = load ptr, ptr %6, align 8, !tbaa !3
  %108 = getelementptr inbounds nuw %struct.Grammar, ptr %107, i32 0, i32 8
  %109 = getelementptr inbounds nuw %struct.anon.4, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !91
  %111 = load ptr, ptr %6, align 8, !tbaa !3
  %112 = getelementptr inbounds nuw %struct.Grammar, ptr %111, i32 0, i32 8
  %113 = getelementptr inbounds nuw %struct.anon.4, ptr %112, i32 0, i32 0
  %114 = load i32, ptr %113, align 8, !tbaa !90
  %115 = add i32 %114, 1
  store i32 %115, ptr %113, align 8, !tbaa !90
  %116 = zext i32 %114 to i64
  %117 = getelementptr inbounds nuw ptr, ptr %110, i64 %116
  store ptr %106, ptr %117, align 8, !tbaa !92
  br label %125

118:                                              ; preds = %98
  br label %119

119:                                              ; preds = %118, %97
  br label %120

120:                                              ; preds = %119
  %121 = load ptr, ptr %6, align 8, !tbaa !3
  %122 = getelementptr inbounds nuw %struct.Grammar, ptr %121, i32 0, i32 8
  %123 = load ptr, ptr %11, align 8, !tbaa !92
  call void @vec_add_internal(ptr noundef %122, ptr noundef %123)
  br label %124

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %124, %105, %84, %52
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #9
  br label %126

126:                                              ; preds = %125, %17
  ret void
}

; Function Attrs: nounwind
define dso_local void @add_pass_code(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef signext %6, i32 noundef signext %7) #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  store ptr %0, ptr %9, align 8, !tbaa !3
  store ptr %1, ptr %10, align 8, !tbaa !41
  store ptr %2, ptr %11, align 8, !tbaa !8
  store ptr %3, ptr %12, align 8, !tbaa !8
  store ptr %4, ptr %13, align 8, !tbaa !8
  store ptr %5, ptr %14, align 8, !tbaa !8
  store i32 %6, ptr %15, align 4, !tbaa !38
  store i32 %7, ptr %16, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #9
  %18 = load ptr, ptr %9, align 8, !tbaa !3
  %19 = load ptr, ptr %11, align 8, !tbaa !8
  %20 = load ptr, ptr %12, align 8, !tbaa !8
  %21 = call ptr @find_pass(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  store ptr %21, ptr %17, align 8, !tbaa !92
  %22 = load ptr, ptr %17, align 8, !tbaa !92
  %23 = icmp ne ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %8
  %25 = load ptr, ptr %11, align 8, !tbaa !8
  %26 = load ptr, ptr %12, align 8, !tbaa !8
  %27 = call ptr @dup_str(ptr noundef %25, ptr noundef %26)
  %28 = load i32, ptr %15, align 4, !tbaa !38
  call void (ptr, ...) @d_fail(ptr noundef @.str.3, ptr noundef %27, i32 noundef signext %28)
  br label %29

29:                                               ; preds = %24, %8
  br label %30

30:                                               ; preds = %115, %29
  %31 = load ptr, ptr %10, align 8, !tbaa !41
  %32 = getelementptr inbounds nuw %struct.Rule, ptr %31, i32 0, i32 10
  %33 = getelementptr inbounds nuw %struct.anon.6, ptr %32, i32 0, i32 0
  %34 = load i32, ptr %33, align 8, !tbaa !101
  %35 = load ptr, ptr %17, align 8, !tbaa !92
  %36 = getelementptr inbounds nuw %struct.D_Pass, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !100
  %38 = icmp ule i32 %34, %37
  br i1 %38, label %39, label %116

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load ptr, ptr %10, align 8, !tbaa !41
  %42 = getelementptr inbounds nuw %struct.Rule, ptr %41, i32 0, i32 10
  %43 = getelementptr inbounds nuw %struct.anon.6, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !102
  %45 = icmp ne ptr %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %40
  %47 = load ptr, ptr %10, align 8, !tbaa !41
  %48 = getelementptr inbounds nuw %struct.Rule, ptr %47, i32 0, i32 10
  %49 = getelementptr inbounds nuw %struct.anon.6, ptr %48, i32 0, i32 3
  %50 = getelementptr inbounds [3 x ptr], ptr %49, i64 0, i64 0
  %51 = load ptr, ptr %10, align 8, !tbaa !41
  %52 = getelementptr inbounds nuw %struct.Rule, ptr %51, i32 0, i32 10
  %53 = getelementptr inbounds nuw %struct.anon.6, ptr %52, i32 0, i32 2
  store ptr %50, ptr %53, align 8, !tbaa !102
  %54 = load ptr, ptr %10, align 8, !tbaa !41
  %55 = getelementptr inbounds nuw %struct.Rule, ptr %54, i32 0, i32 10
  %56 = getelementptr inbounds nuw %struct.anon.6, ptr %55, i32 0, i32 0
  %57 = load i32, ptr %56, align 8, !tbaa !101
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !101
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds nuw ptr, ptr %50, i64 %59
  store ptr null, ptr %60, align 8, !tbaa !103
  br label %115

61:                                               ; preds = %40
  %62 = load ptr, ptr %10, align 8, !tbaa !41
  %63 = getelementptr inbounds nuw %struct.Rule, ptr %62, i32 0, i32 10
  %64 = getelementptr inbounds nuw %struct.anon.6, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !102
  %66 = load ptr, ptr %10, align 8, !tbaa !41
  %67 = getelementptr inbounds nuw %struct.Rule, ptr %66, i32 0, i32 10
  %68 = getelementptr inbounds nuw %struct.anon.6, ptr %67, i32 0, i32 3
  %69 = getelementptr inbounds [3 x ptr], ptr %68, i64 0, i64 0
  %70 = icmp eq ptr %65, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %61
  %72 = load ptr, ptr %10, align 8, !tbaa !41
  %73 = getelementptr inbounds nuw %struct.Rule, ptr %72, i32 0, i32 10
  %74 = getelementptr inbounds nuw %struct.anon.6, ptr %73, i32 0, i32 0
  %75 = load i32, ptr %74, align 8, !tbaa !101
  %76 = icmp ult i32 %75, 3
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load ptr, ptr %10, align 8, !tbaa !41
  %79 = getelementptr inbounds nuw %struct.Rule, ptr %78, i32 0, i32 10
  %80 = getelementptr inbounds nuw %struct.anon.6, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !102
  %82 = load ptr, ptr %10, align 8, !tbaa !41
  %83 = getelementptr inbounds nuw %struct.Rule, ptr %82, i32 0, i32 10
  %84 = getelementptr inbounds nuw %struct.anon.6, ptr %83, i32 0, i32 0
  %85 = load i32, ptr %84, align 8, !tbaa !101
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 8, !tbaa !101
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds nuw ptr, ptr %81, i64 %87
  store ptr null, ptr %88, align 8, !tbaa !103
  br label %115

89:                                               ; preds = %71
  br label %110

90:                                               ; preds = %61
  %91 = load ptr, ptr %10, align 8, !tbaa !41
  %92 = getelementptr inbounds nuw %struct.Rule, ptr %91, i32 0, i32 10
  %93 = getelementptr inbounds nuw %struct.anon.6, ptr %92, i32 0, i32 0
  %94 = load i32, ptr %93, align 8, !tbaa !101
  %95 = and i32 %94, 7
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %90
  %98 = load ptr, ptr %10, align 8, !tbaa !41
  %99 = getelementptr inbounds nuw %struct.Rule, ptr %98, i32 0, i32 10
  %100 = getelementptr inbounds nuw %struct.anon.6, ptr %99, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !102
  %102 = load ptr, ptr %10, align 8, !tbaa !41
  %103 = getelementptr inbounds nuw %struct.Rule, ptr %102, i32 0, i32 10
  %104 = getelementptr inbounds nuw %struct.anon.6, ptr %103, i32 0, i32 0
  %105 = load i32, ptr %104, align 8, !tbaa !101
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 8, !tbaa !101
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds nuw ptr, ptr %101, i64 %107
  store ptr null, ptr %108, align 8, !tbaa !103
  br label %115

109:                                              ; preds = %90
  br label %110

110:                                              ; preds = %109, %89
  br label %111

111:                                              ; preds = %110
  %112 = load ptr, ptr %10, align 8, !tbaa !41
  %113 = getelementptr inbounds nuw %struct.Rule, ptr %112, i32 0, i32 10
  call void @vec_add_internal(ptr noundef %113, ptr noundef null)
  br label %114

114:                                              ; preds = %111
  br label %115

115:                                              ; preds = %114, %97, %77, %46
  br label %30, !llvm.loop !104

116:                                              ; preds = %30
  %117 = call noalias ptr @malloc(i64 noundef 16) #11
  %118 = load ptr, ptr %10, align 8, !tbaa !41
  %119 = getelementptr inbounds nuw %struct.Rule, ptr %118, i32 0, i32 10
  %120 = getelementptr inbounds nuw %struct.anon.6, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !102
  %122 = load ptr, ptr %17, align 8, !tbaa !92
  %123 = getelementptr inbounds nuw %struct.D_Pass, ptr %122, i32 0, i32 3
  %124 = load i32, ptr %123, align 8, !tbaa !100
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds nuw ptr, ptr %121, i64 %125
  store ptr %117, ptr %126, align 8, !tbaa !103
  %127 = load ptr, ptr %13, align 8, !tbaa !8
  %128 = load ptr, ptr %14, align 8, !tbaa !8
  %129 = call ptr @dup_str(ptr noundef %127, ptr noundef %128)
  %130 = load ptr, ptr %10, align 8, !tbaa !41
  %131 = getelementptr inbounds nuw %struct.Rule, ptr %130, i32 0, i32 10
  %132 = getelementptr inbounds nuw %struct.anon.6, ptr %131, i32 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !102
  %134 = load ptr, ptr %17, align 8, !tbaa !92
  %135 = getelementptr inbounds nuw %struct.D_Pass, ptr %134, i32 0, i32 3
  %136 = load i32, ptr %135, align 8, !tbaa !100
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds nuw ptr, ptr %133, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !103
  %140 = getelementptr inbounds nuw %struct.Code, ptr %139, i32 0, i32 0
  store ptr %129, ptr %140, align 8, !tbaa !73
  %141 = load i32, ptr %16, align 4, !tbaa !38
  %142 = load ptr, ptr %10, align 8, !tbaa !41
  %143 = getelementptr inbounds nuw %struct.Rule, ptr %142, i32 0, i32 10
  %144 = getelementptr inbounds nuw %struct.anon.6, ptr %143, i32 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !102
  %146 = load ptr, ptr %17, align 8, !tbaa !92
  %147 = getelementptr inbounds nuw %struct.D_Pass, ptr %146, i32 0, i32 3
  %148 = load i32, ptr %147, align 8, !tbaa !100
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds nuw ptr, ptr %145, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !103
  %152 = getelementptr inbounds nuw %struct.Code, ptr %151, i32 0, i32 1
  store i32 %141, ptr %152, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #9
  ret void
}

; Function Attrs: nounwind
define dso_local ptr @new_internal_production(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %12 = load ptr, ptr %4, align 8, !tbaa !10
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !tbaa !10
  %16 = getelementptr inbounds nuw %struct.Production, ptr %15, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi ptr [ %17, %14 ], [ @.str.4, %18 ]
  store ptr %20, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  %21 = load ptr, ptr %5, align 8, !tbaa !8
  %22 = call i64 @strlen(ptr noundef %21) #10
  %23 = add i64 %22, 20
  %24 = call noalias ptr @malloc(i64 noundef %23) #11
  store ptr %24, ptr %6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  store ptr null, ptr %7, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  store ptr null, ptr %8, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #9
  store i32 0, ptr %11, align 4, !tbaa !38
  %25 = load ptr, ptr %6, align 8, !tbaa !8
  %26 = load ptr, ptr %5, align 8, !tbaa !8
  %27 = load ptr, ptr %3, align 8, !tbaa !3
  %28 = getelementptr inbounds nuw %struct.Grammar, ptr %27, i32 0, i32 1
  %29 = getelementptr inbounds nuw %struct.anon.0, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8, !tbaa !30
  %31 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef %25, ptr noundef @.str.5, ptr noundef %26, i32 noundef signext %30) #9
  %32 = load ptr, ptr %3, align 8, !tbaa !3
  %33 = load ptr, ptr %6, align 8, !tbaa !8
  %34 = call ptr @new_production(ptr noundef %32, ptr noundef %33)
  store ptr %34, ptr %7, align 8, !tbaa !10
  %35 = load ptr, ptr %7, align 8, !tbaa !10
  %36 = getelementptr inbounds nuw %struct.Production, ptr %35, i32 0, i32 4
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, -29
  %39 = or i8 %38, 4
  store i8 %39, ptr %36, align 4
  %40 = load ptr, ptr %4, align 8, !tbaa !10
  %41 = icmp ne ptr %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %19
  %43 = load ptr, ptr %4, align 8, !tbaa !10
  %44 = getelementptr inbounds nuw %struct.Production, ptr %43, i32 0, i32 4
  %45 = load i8, ptr %44, align 4
  %46 = and i8 %45, 1
  %47 = zext i8 %46 to i32
  br label %49

48:                                               ; preds = %19
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi i32 [ %47, %42 ], [ 0, %48 ]
  %51 = load ptr, ptr %7, align 8, !tbaa !10
  %52 = getelementptr inbounds nuw %struct.Production, ptr %51, i32 0, i32 4
  %53 = trunc i32 %50 to i8
  %54 = load i8, ptr %52, align 4
  %55 = and i8 %53, 1
  %56 = and i8 %54, -2
  %57 = or i8 %56, %55
  store i8 %57, ptr %52, align 4
  %58 = zext i8 %55 to i32
  %59 = load ptr, ptr %4, align 8, !tbaa !10
  %60 = icmp ne ptr %59, null
  br i1 %60, label %61, label %128

61:                                               ; preds = %49
  store i32 0, ptr %10, align 4, !tbaa !38
  br label %62

62:                                               ; preds = %124, %61
  %63 = load i32, ptr %10, align 4, !tbaa !38
  %64 = load ptr, ptr %3, align 8, !tbaa !3
  %65 = getelementptr inbounds nuw %struct.Grammar, ptr %64, i32 0, i32 1
  %66 = getelementptr inbounds nuw %struct.anon.0, ptr %65, i32 0, i32 0
  %67 = load i32, ptr %66, align 8, !tbaa !30
  %68 = icmp ult i32 %63, %67
  br i1 %68, label %69, label %127

69:                                               ; preds = %62
  %70 = load i32, ptr %11, align 4, !tbaa !38
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load ptr, ptr %3, align 8, !tbaa !3
  %74 = getelementptr inbounds nuw %struct.Grammar, ptr %73, i32 0, i32 1
  %75 = getelementptr inbounds nuw %struct.anon.0, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !12
  %77 = load i32, ptr %10, align 4, !tbaa !38
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %76, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !10
  store ptr %80, ptr %9, align 8, !tbaa !10
  %81 = load ptr, ptr %8, align 8, !tbaa !10
  %82 = load ptr, ptr %3, align 8, !tbaa !3
  %83 = getelementptr inbounds nuw %struct.Grammar, ptr %82, i32 0, i32 1
  %84 = getelementptr inbounds nuw %struct.anon.0, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !12
  %86 = load i32, ptr %10, align 4, !tbaa !38
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %85, i64 %87
  store ptr %81, ptr %88, align 8, !tbaa !10
  %89 = load ptr, ptr %9, align 8, !tbaa !10
  store ptr %89, ptr %8, align 8, !tbaa !10
  br label %123

90:                                               ; preds = %69
  %91 = load ptr, ptr %4, align 8, !tbaa !10
  %92 = load ptr, ptr %3, align 8, !tbaa !3
  %93 = getelementptr inbounds nuw %struct.Grammar, ptr %92, i32 0, i32 1
  %94 = getelementptr inbounds nuw %struct.anon.0, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !12
  %96 = load i32, ptr %10, align 4, !tbaa !38
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %95, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !10
  %100 = icmp eq ptr %91, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %90
  store i32 1, ptr %11, align 4, !tbaa !38
  %102 = load ptr, ptr %3, align 8, !tbaa !3
  %103 = getelementptr inbounds nuw %struct.Grammar, ptr %102, i32 0, i32 1
  %104 = getelementptr inbounds nuw %struct.anon.0, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !12
  %106 = load i32, ptr %10, align 4, !tbaa !38
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %105, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !10
  store ptr %110, ptr %8, align 8, !tbaa !10
  %111 = load ptr, ptr %7, align 8, !tbaa !10
  %112 = load ptr, ptr %3, align 8, !tbaa !3
  %113 = getelementptr inbounds nuw %struct.Grammar, ptr %112, i32 0, i32 1
  %114 = getelementptr inbounds nuw %struct.anon.0, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !12
  %116 = load i32, ptr %10, align 4, !tbaa !38
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %115, i64 %118
  store ptr %111, ptr %119, align 8, !tbaa !10
  %120 = load i32, ptr %10, align 4, !tbaa !38
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %10, align 4, !tbaa !38
  br label %122

122:                                              ; preds = %101, %90
  br label %123

123:                                              ; preds = %122, %72
  br label %124

124:                                              ; preds = %123
  %125 = load i32, ptr %10, align 4, !tbaa !38
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %10, align 4, !tbaa !38
  br label %62, !llvm.loop !105

127:                                              ; preds = %62
  br label %128

128:                                              ; preds = %127, %49
  %129 = load ptr, ptr %7, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret ptr %129
}

; Function Attrs: nounwind
declare signext i32 @sprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind
define dso_local void @conditional_EBNF(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #9
  %5 = load ptr, ptr %2, align 8, !tbaa !3
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.Grammar, ptr %6, i32 0, i32 23
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = call ptr @new_internal_production(ptr noundef %5, ptr noundef %8)
  store ptr %9, ptr %3, align 8, !tbaa !10
  %10 = load ptr, ptr %3, align 8, !tbaa !10
  %11 = getelementptr inbounds nuw %struct.Production, ptr %10, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, -29
  %14 = or i8 %13, 8
  store i8 %14, ptr %11, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !3
  %16 = load ptr, ptr %3, align 8, !tbaa !10
  %17 = call ptr @new_rule(ptr noundef %15, ptr noundef %16)
  store ptr %17, ptr %4, align 8, !tbaa !41
  br label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %4, align 8, !tbaa !41
  %20 = getelementptr inbounds nuw %struct.Rule, ptr %19, i32 0, i32 6
  %21 = getelementptr inbounds nuw %struct.anon.5, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = icmp ne ptr %22, null
  br i1 %23, label %55, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %2, align 8, !tbaa !3
  %26 = getelementptr inbounds nuw %struct.Grammar, ptr %25, i32 0, i32 24
  %27 = load ptr, ptr %26, align 8, !tbaa !107
  %28 = getelementptr inbounds nuw %struct.Rule, ptr %27, i32 0, i32 6
  %29 = getelementptr inbounds nuw %struct.anon.5, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !69
  %31 = load ptr, ptr %2, align 8, !tbaa !3
  %32 = getelementptr inbounds nuw %struct.Grammar, ptr %31, i32 0, i32 24
  %33 = load ptr, ptr %32, align 8, !tbaa !107
  %34 = getelementptr inbounds nuw %struct.Rule, ptr %33, i32 0, i32 6
  %35 = getelementptr inbounds nuw %struct.anon.5, ptr %34, i32 0, i32 0
  %36 = load i32, ptr %35, align 8, !tbaa !70
  %37 = sub i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %30, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = load ptr, ptr %4, align 8, !tbaa !41
  %42 = getelementptr inbounds nuw %struct.Rule, ptr %41, i32 0, i32 6
  %43 = getelementptr inbounds nuw %struct.anon.5, ptr %42, i32 0, i32 3
  %44 = getelementptr inbounds [3 x ptr], ptr %43, i64 0, i64 0
  %45 = load ptr, ptr %4, align 8, !tbaa !41
  %46 = getelementptr inbounds nuw %struct.Rule, ptr %45, i32 0, i32 6
  %47 = getelementptr inbounds nuw %struct.anon.5, ptr %46, i32 0, i32 2
  store ptr %44, ptr %47, align 8, !tbaa !69
  %48 = load ptr, ptr %4, align 8, !tbaa !41
  %49 = getelementptr inbounds nuw %struct.Rule, ptr %48, i32 0, i32 6
  %50 = getelementptr inbounds nuw %struct.anon.5, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8, !tbaa !70
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 8, !tbaa !70
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds nuw ptr, ptr %44, i64 %53
  store ptr %40, ptr %54, align 8, !tbaa !54
  br label %157

55:                                               ; preds = %18
  %56 = load ptr, ptr %4, align 8, !tbaa !41
  %57 = getelementptr inbounds nuw %struct.Rule, ptr %56, i32 0, i32 6
  %58 = getelementptr inbounds nuw %struct.anon.5, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !69
  %60 = load ptr, ptr %4, align 8, !tbaa !41
  %61 = getelementptr inbounds nuw %struct.Rule, ptr %60, i32 0, i32 6
  %62 = getelementptr inbounds nuw %struct.anon.5, ptr %61, i32 0, i32 3
  %63 = getelementptr inbounds [3 x ptr], ptr %62, i64 0, i64 0
  %64 = icmp eq ptr %59, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %55
  %66 = load ptr, ptr %4, align 8, !tbaa !41
  %67 = getelementptr inbounds nuw %struct.Rule, ptr %66, i32 0, i32 6
  %68 = getelementptr inbounds nuw %struct.anon.5, ptr %67, i32 0, i32 0
  %69 = load i32, ptr %68, align 8, !tbaa !70
  %70 = icmp ult i32 %69, 3
  br i1 %70, label %71, label %99

71:                                               ; preds = %65
  %72 = load ptr, ptr %2, align 8, !tbaa !3
  %73 = getelementptr inbounds nuw %struct.Grammar, ptr %72, i32 0, i32 24
  %74 = load ptr, ptr %73, align 8, !tbaa !107
  %75 = getelementptr inbounds nuw %struct.Rule, ptr %74, i32 0, i32 6
  %76 = getelementptr inbounds nuw %struct.anon.5, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !69
  %78 = load ptr, ptr %2, align 8, !tbaa !3
  %79 = getelementptr inbounds nuw %struct.Grammar, ptr %78, i32 0, i32 24
  %80 = load ptr, ptr %79, align 8, !tbaa !107
  %81 = getelementptr inbounds nuw %struct.Rule, ptr %80, i32 0, i32 6
  %82 = getelementptr inbounds nuw %struct.anon.5, ptr %81, i32 0, i32 0
  %83 = load i32, ptr %82, align 8, !tbaa !70
  %84 = sub i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds nuw ptr, ptr %77, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !54
  %88 = load ptr, ptr %4, align 8, !tbaa !41
  %89 = getelementptr inbounds nuw %struct.Rule, ptr %88, i32 0, i32 6
  %90 = getelementptr inbounds nuw %struct.anon.5, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !69
  %92 = load ptr, ptr %4, align 8, !tbaa !41
  %93 = getelementptr inbounds nuw %struct.Rule, ptr %92, i32 0, i32 6
  %94 = getelementptr inbounds nuw %struct.anon.5, ptr %93, i32 0, i32 0
  %95 = load i32, ptr %94, align 8, !tbaa !70
  %96 = add i32 %95, 1
  store i32 %96, ptr %94, align 8, !tbaa !70
  %97 = zext i32 %95 to i64
  %98 = getelementptr inbounds nuw ptr, ptr %91, i64 %97
  store ptr %87, ptr %98, align 8, !tbaa !54
  br label %157

99:                                               ; preds = %65
  br label %136

100:                                              ; preds = %55
  %101 = load ptr, ptr %4, align 8, !tbaa !41
  %102 = getelementptr inbounds nuw %struct.Rule, ptr %101, i32 0, i32 6
  %103 = getelementptr inbounds nuw %struct.anon.5, ptr %102, i32 0, i32 0
  %104 = load i32, ptr %103, align 8, !tbaa !70
  %105 = and i32 %104, 7
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %100
  %108 = load ptr, ptr %2, align 8, !tbaa !3
  %109 = getelementptr inbounds nuw %struct.Grammar, ptr %108, i32 0, i32 24
  %110 = load ptr, ptr %109, align 8, !tbaa !107
  %111 = getelementptr inbounds nuw %struct.Rule, ptr %110, i32 0, i32 6
  %112 = getelementptr inbounds nuw %struct.anon.5, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !69
  %114 = load ptr, ptr %2, align 8, !tbaa !3
  %115 = getelementptr inbounds nuw %struct.Grammar, ptr %114, i32 0, i32 24
  %116 = load ptr, ptr %115, align 8, !tbaa !107
  %117 = getelementptr inbounds nuw %struct.Rule, ptr %116, i32 0, i32 6
  %118 = getelementptr inbounds nuw %struct.anon.5, ptr %117, i32 0, i32 0
  %119 = load i32, ptr %118, align 8, !tbaa !70
  %120 = sub i32 %119, 1
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds nuw ptr, ptr %113, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !54
  %124 = load ptr, ptr %4, align 8, !tbaa !41
  %125 = getelementptr inbounds nuw %struct.Rule, ptr %124, i32 0, i32 6
  %126 = getelementptr inbounds nuw %struct.anon.5, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !69
  %128 = load ptr, ptr %4, align 8, !tbaa !41
  %129 = getelementptr inbounds nuw %struct.Rule, ptr %128, i32 0, i32 6
  %130 = getelementptr inbounds nuw %struct.anon.5, ptr %129, i32 0, i32 0
  %131 = load i32, ptr %130, align 8, !tbaa !70
  %132 = add i32 %131, 1
  store i32 %132, ptr %130, align 8, !tbaa !70
  %133 = zext i32 %131 to i64
  %134 = getelementptr inbounds nuw ptr, ptr %127, i64 %133
  store ptr %123, ptr %134, align 8, !tbaa !54
  br label %157

135:                                              ; preds = %100
  br label %136

136:                                              ; preds = %135, %99
  br label %137

137:                                              ; preds = %136
  %138 = load ptr, ptr %4, align 8, !tbaa !41
  %139 = getelementptr inbounds nuw %struct.Rule, ptr %138, i32 0, i32 6
  %140 = load ptr, ptr %2, align 8, !tbaa !3
  %141 = getelementptr inbounds nuw %struct.Grammar, ptr %140, i32 0, i32 24
  %142 = load ptr, ptr %141, align 8, !tbaa !107
  %143 = getelementptr inbounds nuw %struct.Rule, ptr %142, i32 0, i32 6
  %144 = getelementptr inbounds nuw %struct.anon.5, ptr %143, i32 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !69
  %146 = load ptr, ptr %2, align 8, !tbaa !3
  %147 = getelementptr inbounds nuw %struct.Grammar, ptr %146, i32 0, i32 24
  %148 = load ptr, ptr %147, align 8, !tbaa !107
  %149 = getelementptr inbounds nuw %struct.Rule, ptr %148, i32 0, i32 6
  %150 = getelementptr inbounds nuw %struct.anon.5, ptr %149, i32 0, i32 0
  %151 = load i32, ptr %150, align 8, !tbaa !70
  %152 = sub i32 %151, 1
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds nuw ptr, ptr %145, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !54
  call void @vec_add_internal(ptr noundef %139, ptr noundef %155)
  br label %156

156:                                              ; preds = %137
  br label %157

157:                                              ; preds = %156, %107, %71, %24
  %158 = load ptr, ptr %4, align 8, !tbaa !41
  %159 = load ptr, ptr %2, align 8, !tbaa !3
  %160 = getelementptr inbounds nuw %struct.Grammar, ptr %159, i32 0, i32 24
  %161 = load ptr, ptr %160, align 8, !tbaa !107
  %162 = getelementptr inbounds nuw %struct.Rule, ptr %161, i32 0, i32 6
  %163 = getelementptr inbounds nuw %struct.anon.5, ptr %162, i32 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !69
  %165 = load ptr, ptr %2, align 8, !tbaa !3
  %166 = getelementptr inbounds nuw %struct.Grammar, ptr %165, i32 0, i32 24
  %167 = load ptr, ptr %166, align 8, !tbaa !107
  %168 = getelementptr inbounds nuw %struct.Rule, ptr %167, i32 0, i32 6
  %169 = getelementptr inbounds nuw %struct.anon.5, ptr %168, i32 0, i32 0
  %170 = load i32, ptr %169, align 8, !tbaa !70
  %171 = sub i32 %170, 1
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds nuw ptr, ptr %164, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !54
  %175 = getelementptr inbounds nuw %struct.Elem, ptr %174, i32 0, i32 2
  store ptr %158, ptr %175, align 8, !tbaa !51
  %176 = load ptr, ptr %4, align 8, !tbaa !41
  %177 = load ptr, ptr %4, align 8, !tbaa !41
  %178 = getelementptr inbounds nuw %struct.Rule, ptr %177, i32 0, i32 6
  %179 = getelementptr inbounds nuw %struct.anon.5, ptr %178, i32 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !69
  %181 = load ptr, ptr %4, align 8, !tbaa !41
  %182 = getelementptr inbounds nuw %struct.Rule, ptr %181, i32 0, i32 6
  %183 = getelementptr inbounds nuw %struct.anon.5, ptr %182, i32 0, i32 0
  %184 = load i32, ptr %183, align 8, !tbaa !70
  %185 = sub i32 %184, 1
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds nuw ptr, ptr %180, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !54
  %189 = getelementptr inbounds nuw %struct.Elem, ptr %188, i32 0, i32 2
  store ptr %176, ptr %189, align 8, !tbaa !51
  br label %190

190:                                              ; preds = %157
  %191 = load ptr, ptr %3, align 8, !tbaa !10
  %192 = getelementptr inbounds nuw %struct.Production, ptr %191, i32 0, i32 2
  %193 = getelementptr inbounds nuw %struct.anon, ptr %192, i32 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !108
  %195 = icmp ne ptr %194, null
  br i1 %195, label %212, label %196

196:                                              ; preds = %190
  %197 = load ptr, ptr %4, align 8, !tbaa !41
  %198 = load ptr, ptr %3, align 8, !tbaa !10
  %199 = getelementptr inbounds nuw %struct.Production, ptr %198, i32 0, i32 2
  %200 = getelementptr inbounds nuw %struct.anon, ptr %199, i32 0, i32 3
  %201 = getelementptr inbounds [3 x ptr], ptr %200, i64 0, i64 0
  %202 = load ptr, ptr %3, align 8, !tbaa !10
  %203 = getelementptr inbounds nuw %struct.Production, ptr %202, i32 0, i32 2
  %204 = getelementptr inbounds nuw %struct.anon, ptr %203, i32 0, i32 2
  store ptr %201, ptr %204, align 8, !tbaa !108
  %205 = load ptr, ptr %3, align 8, !tbaa !10
  %206 = getelementptr inbounds nuw %struct.Production, ptr %205, i32 0, i32 2
  %207 = getelementptr inbounds nuw %struct.anon, ptr %206, i32 0, i32 0
  %208 = load i32, ptr %207, align 8, !tbaa !109
  %209 = add i32 %208, 1
  store i32 %209, ptr %207, align 8, !tbaa !109
  %210 = zext i32 %208 to i64
  %211 = getelementptr inbounds nuw ptr, ptr %201, i64 %210
  store ptr %197, ptr %211, align 8, !tbaa !41
  br label %269

212:                                              ; preds = %190
  %213 = load ptr, ptr %3, align 8, !tbaa !10
  %214 = getelementptr inbounds nuw %struct.Production, ptr %213, i32 0, i32 2
  %215 = getelementptr inbounds nuw %struct.anon, ptr %214, i32 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !108
  %217 = load ptr, ptr %3, align 8, !tbaa !10
  %218 = getelementptr inbounds nuw %struct.Production, ptr %217, i32 0, i32 2
  %219 = getelementptr inbounds nuw %struct.anon, ptr %218, i32 0, i32 3
  %220 = getelementptr inbounds [3 x ptr], ptr %219, i64 0, i64 0
  %221 = icmp eq ptr %216, %220
  br i1 %221, label %222, label %242

222:                                              ; preds = %212
  %223 = load ptr, ptr %3, align 8, !tbaa !10
  %224 = getelementptr inbounds nuw %struct.Production, ptr %223, i32 0, i32 2
  %225 = getelementptr inbounds nuw %struct.anon, ptr %224, i32 0, i32 0
  %226 = load i32, ptr %225, align 8, !tbaa !109
  %227 = icmp ult i32 %226, 3
  br i1 %227, label %228, label %241

228:                                              ; preds = %222
  %229 = load ptr, ptr %4, align 8, !tbaa !41
  %230 = load ptr, ptr %3, align 8, !tbaa !10
  %231 = getelementptr inbounds nuw %struct.Production, ptr %230, i32 0, i32 2
  %232 = getelementptr inbounds nuw %struct.anon, ptr %231, i32 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !108
  %234 = load ptr, ptr %3, align 8, !tbaa !10
  %235 = getelementptr inbounds nuw %struct.Production, ptr %234, i32 0, i32 2
  %236 = getelementptr inbounds nuw %struct.anon, ptr %235, i32 0, i32 0
  %237 = load i32, ptr %236, align 8, !tbaa !109
  %238 = add i32 %237, 1
  store i32 %238, ptr %236, align 8, !tbaa !109
  %239 = zext i32 %237 to i64
  %240 = getelementptr inbounds nuw ptr, ptr %233, i64 %239
  store ptr %229, ptr %240, align 8, !tbaa !41
  br label %269

241:                                              ; preds = %222
  br label %263

242:                                              ; preds = %212
  %243 = load ptr, ptr %3, align 8, !tbaa !10
  %244 = getelementptr inbounds nuw %struct.Production, ptr %243, i32 0, i32 2
  %245 = getelementptr inbounds nuw %struct.anon, ptr %244, i32 0, i32 0
  %246 = load i32, ptr %245, align 8, !tbaa !109
  %247 = and i32 %246, 7
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %242
  %250 = load ptr, ptr %4, align 8, !tbaa !41
  %251 = load ptr, ptr %3, align 8, !tbaa !10
  %252 = getelementptr inbounds nuw %struct.Production, ptr %251, i32 0, i32 2
  %253 = getelementptr inbounds nuw %struct.anon, ptr %252, i32 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !108
  %255 = load ptr, ptr %3, align 8, !tbaa !10
  %256 = getelementptr inbounds nuw %struct.Production, ptr %255, i32 0, i32 2
  %257 = getelementptr inbounds nuw %struct.anon, ptr %256, i32 0, i32 0
  %258 = load i32, ptr %257, align 8, !tbaa !109
  %259 = add i32 %258, 1
  store i32 %259, ptr %257, align 8, !tbaa !109
  %260 = zext i32 %258 to i64
  %261 = getelementptr inbounds nuw ptr, ptr %254, i64 %260
  store ptr %250, ptr %261, align 8, !tbaa !41
  br label %269

262:                                              ; preds = %242
  br label %263

263:                                              ; preds = %262, %241
  br label %264

264:                                              ; preds = %263
  %265 = load ptr, ptr %3, align 8, !tbaa !10
  %266 = getelementptr inbounds nuw %struct.Production, ptr %265, i32 0, i32 2
  %267 = load ptr, ptr %4, align 8, !tbaa !41
  call void @vec_add_internal(ptr noundef %266, ptr noundef %267)
  br label %268

268:                                              ; preds = %264
  br label %269

269:                                              ; preds = %268, %249, %228, %196
  br label %270

270:                                              ; preds = %269
  %271 = load ptr, ptr %3, align 8, !tbaa !10
  %272 = getelementptr inbounds nuw %struct.Production, ptr %271, i32 0, i32 2
  %273 = getelementptr inbounds nuw %struct.anon, ptr %272, i32 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !108
  %275 = icmp ne ptr %274, null
  br i1 %275, label %294, label %276

276:                                              ; preds = %270
  %277 = load ptr, ptr %2, align 8, !tbaa !3
  %278 = load ptr, ptr %3, align 8, !tbaa !10
  %279 = call ptr @new_rule(ptr noundef %277, ptr noundef %278)
  %280 = load ptr, ptr %3, align 8, !tbaa !10
  %281 = getelementptr inbounds nuw %struct.Production, ptr %280, i32 0, i32 2
  %282 = getelementptr inbounds nuw %struct.anon, ptr %281, i32 0, i32 3
  %283 = getelementptr inbounds [3 x ptr], ptr %282, i64 0, i64 0
  %284 = load ptr, ptr %3, align 8, !tbaa !10
  %285 = getelementptr inbounds nuw %struct.Production, ptr %284, i32 0, i32 2
  %286 = getelementptr inbounds nuw %struct.anon, ptr %285, i32 0, i32 2
  store ptr %283, ptr %286, align 8, !tbaa !108
  %287 = load ptr, ptr %3, align 8, !tbaa !10
  %288 = getelementptr inbounds nuw %struct.Production, ptr %287, i32 0, i32 2
  %289 = getelementptr inbounds nuw %struct.anon, ptr %288, i32 0, i32 0
  %290 = load i32, ptr %289, align 8, !tbaa !109
  %291 = add i32 %290, 1
  store i32 %291, ptr %289, align 8, !tbaa !109
  %292 = zext i32 %290 to i64
  %293 = getelementptr inbounds nuw ptr, ptr %283, i64 %292
  store ptr %279, ptr %293, align 8, !tbaa !41
  br label %357

294:                                              ; preds = %270
  %295 = load ptr, ptr %3, align 8, !tbaa !10
  %296 = getelementptr inbounds nuw %struct.Production, ptr %295, i32 0, i32 2
  %297 = getelementptr inbounds nuw %struct.anon, ptr %296, i32 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !108
  %299 = load ptr, ptr %3, align 8, !tbaa !10
  %300 = getelementptr inbounds nuw %struct.Production, ptr %299, i32 0, i32 2
  %301 = getelementptr inbounds nuw %struct.anon, ptr %300, i32 0, i32 3
  %302 = getelementptr inbounds [3 x ptr], ptr %301, i64 0, i64 0
  %303 = icmp eq ptr %298, %302
  br i1 %303, label %304, label %326

304:                                              ; preds = %294
  %305 = load ptr, ptr %3, align 8, !tbaa !10
  %306 = getelementptr inbounds nuw %struct.Production, ptr %305, i32 0, i32 2
  %307 = getelementptr inbounds nuw %struct.anon, ptr %306, i32 0, i32 0
  %308 = load i32, ptr %307, align 8, !tbaa !109
  %309 = icmp ult i32 %308, 3
  br i1 %309, label %310, label %325

310:                                              ; preds = %304
  %311 = load ptr, ptr %2, align 8, !tbaa !3
  %312 = load ptr, ptr %3, align 8, !tbaa !10
  %313 = call ptr @new_rule(ptr noundef %311, ptr noundef %312)
  %314 = load ptr, ptr %3, align 8, !tbaa !10
  %315 = getelementptr inbounds nuw %struct.Production, ptr %314, i32 0, i32 2
  %316 = getelementptr inbounds nuw %struct.anon, ptr %315, i32 0, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !108
  %318 = load ptr, ptr %3, align 8, !tbaa !10
  %319 = getelementptr inbounds nuw %struct.Production, ptr %318, i32 0, i32 2
  %320 = getelementptr inbounds nuw %struct.anon, ptr %319, i32 0, i32 0
  %321 = load i32, ptr %320, align 8, !tbaa !109
  %322 = add i32 %321, 1
  store i32 %322, ptr %320, align 8, !tbaa !109
  %323 = zext i32 %321 to i64
  %324 = getelementptr inbounds nuw ptr, ptr %317, i64 %323
  store ptr %313, ptr %324, align 8, !tbaa !41
  br label %357

325:                                              ; preds = %304
  br label %349

326:                                              ; preds = %294
  %327 = load ptr, ptr %3, align 8, !tbaa !10
  %328 = getelementptr inbounds nuw %struct.Production, ptr %327, i32 0, i32 2
  %329 = getelementptr inbounds nuw %struct.anon, ptr %328, i32 0, i32 0
  %330 = load i32, ptr %329, align 8, !tbaa !109
  %331 = and i32 %330, 7
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %348

333:                                              ; preds = %326
  %334 = load ptr, ptr %2, align 8, !tbaa !3
  %335 = load ptr, ptr %3, align 8, !tbaa !10
  %336 = call ptr @new_rule(ptr noundef %334, ptr noundef %335)
  %337 = load ptr, ptr %3, align 8, !tbaa !10
  %338 = getelementptr inbounds nuw %struct.Production, ptr %337, i32 0, i32 2
  %339 = getelementptr inbounds nuw %struct.anon, ptr %338, i32 0, i32 2
  %340 = load ptr, ptr %339, align 8, !tbaa !108
  %341 = load ptr, ptr %3, align 8, !tbaa !10
  %342 = getelementptr inbounds nuw %struct.Production, ptr %341, i32 0, i32 2
  %343 = getelementptr inbounds nuw %struct.anon, ptr %342, i32 0, i32 0
  %344 = load i32, ptr %343, align 8, !tbaa !109
  %345 = add i32 %344, 1
  store i32 %345, ptr %343, align 8, !tbaa !109
  %346 = zext i32 %344 to i64
  %347 = getelementptr inbounds nuw ptr, ptr %340, i64 %346
  store ptr %336, ptr %347, align 8, !tbaa !41
  br label %357

348:                                              ; preds = %326
  br label %349

349:                                              ; preds = %348, %325
  br label %350

350:                                              ; preds = %349
  %351 = load ptr, ptr %3, align 8, !tbaa !10
  %352 = getelementptr inbounds nuw %struct.Production, ptr %351, i32 0, i32 2
  %353 = load ptr, ptr %2, align 8, !tbaa !3
  %354 = load ptr, ptr %3, align 8, !tbaa !10
  %355 = call ptr @new_rule(ptr noundef %353, ptr noundef %354)
  call void @vec_add_internal(ptr noundef %352, ptr noundef %355)
  br label %356

356:                                              ; preds = %350
  br label %357

357:                                              ; preds = %356, %333, %310, %276
  %358 = load ptr, ptr %3, align 8, !tbaa !10
  %359 = load ptr, ptr %2, align 8, !tbaa !3
  %360 = getelementptr inbounds nuw %struct.Grammar, ptr %359, i32 0, i32 24
  %361 = load ptr, ptr %360, align 8, !tbaa !107
  %362 = call ptr @new_elem_nterm(ptr noundef %358, ptr noundef %361)
  %363 = load ptr, ptr %2, align 8, !tbaa !3
  %364 = getelementptr inbounds nuw %struct.Grammar, ptr %363, i32 0, i32 24
  %365 = load ptr, ptr %364, align 8, !tbaa !107
  %366 = getelementptr inbounds nuw %struct.Rule, ptr %365, i32 0, i32 6
  %367 = getelementptr inbounds nuw %struct.anon.5, ptr %366, i32 0, i32 2
  %368 = load ptr, ptr %367, align 8, !tbaa !69
  %369 = load ptr, ptr %2, align 8, !tbaa !3
  %370 = getelementptr inbounds nuw %struct.Grammar, ptr %369, i32 0, i32 24
  %371 = load ptr, ptr %370, align 8, !tbaa !107
  %372 = getelementptr inbounds nuw %struct.Rule, ptr %371, i32 0, i32 6
  %373 = getelementptr inbounds nuw %struct.anon.5, ptr %372, i32 0, i32 0
  %374 = load i32, ptr %373, align 8, !tbaa !70
  %375 = sub i32 %374, 1
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds nuw ptr, ptr %368, i64 %376
  store ptr %362, ptr %377, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define dso_local void @star_EBNF(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #9
  %5 = load ptr, ptr %2, align 8, !tbaa !3
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.Grammar, ptr %6, i32 0, i32 23
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = call ptr @new_internal_production(ptr noundef %5, ptr noundef %8)
  store ptr %9, ptr %3, align 8, !tbaa !10
  %10 = load ptr, ptr %3, align 8, !tbaa !10
  %11 = getelementptr inbounds nuw %struct.Production, ptr %10, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, -29
  %14 = or i8 %13, 12
  store i8 %14, ptr %11, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !3
  %16 = load ptr, ptr %3, align 8, !tbaa !10
  %17 = call ptr @new_rule(ptr noundef %15, ptr noundef %16)
  store ptr %17, ptr %4, align 8, !tbaa !41
  %18 = load ptr, ptr %2, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.Grammar, ptr %18, i32 0, i32 11
  %20 = load i32, ptr %19, align 4, !tbaa !110
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %285, label %22

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22
  %24 = load ptr, ptr %4, align 8, !tbaa !41
  %25 = getelementptr inbounds nuw %struct.Rule, ptr %24, i32 0, i32 6
  %26 = getelementptr inbounds nuw %struct.anon.5, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = icmp ne ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %3, align 8, !tbaa !10
  %31 = load ptr, ptr %4, align 8, !tbaa !41
  %32 = call ptr @new_elem_nterm(ptr noundef %30, ptr noundef %31)
  %33 = load ptr, ptr %4, align 8, !tbaa !41
  %34 = getelementptr inbounds nuw %struct.Rule, ptr %33, i32 0, i32 6
  %35 = getelementptr inbounds nuw %struct.anon.5, ptr %34, i32 0, i32 3
  %36 = getelementptr inbounds [3 x ptr], ptr %35, i64 0, i64 0
  %37 = load ptr, ptr %4, align 8, !tbaa !41
  %38 = getelementptr inbounds nuw %struct.Rule, ptr %37, i32 0, i32 6
  %39 = getelementptr inbounds nuw %struct.anon.5, ptr %38, i32 0, i32 2
  store ptr %36, ptr %39, align 8, !tbaa !69
  %40 = load ptr, ptr %4, align 8, !tbaa !41
  %41 = getelementptr inbounds nuw %struct.Rule, ptr %40, i32 0, i32 6
  %42 = getelementptr inbounds nuw %struct.anon.5, ptr %41, i32 0, i32 0
  %43 = load i32, ptr %42, align 8, !tbaa !70
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !70
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds nuw ptr, ptr %36, i64 %45
  store ptr %32, ptr %46, align 8, !tbaa !54
  br label %110

47:                                               ; preds = %23
  %48 = load ptr, ptr %4, align 8, !tbaa !41
  %49 = getelementptr inbounds nuw %struct.Rule, ptr %48, i32 0, i32 6
  %50 = getelementptr inbounds nuw %struct.anon.5, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !69
  %52 = load ptr, ptr %4, align 8, !tbaa !41
  %53 = getelementptr inbounds nuw %struct.Rule, ptr %52, i32 0, i32 6
  %54 = getelementptr inbounds nuw %struct.anon.5, ptr %53, i32 0, i32 3
  %55 = getelementptr inbounds [3 x ptr], ptr %54, i64 0, i64 0
  %56 = icmp eq ptr %51, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %47
  %58 = load ptr, ptr %4, align 8, !tbaa !41
  %59 = getelementptr inbounds nuw %struct.Rule, ptr %58, i32 0, i32 6
  %60 = getelementptr inbounds nuw %struct.anon.5, ptr %59, i32 0, i32 0
  %61 = load i32, ptr %60, align 8, !tbaa !70
  %62 = icmp ult i32 %61, 3
  br i1 %62, label %63, label %78

63:                                               ; preds = %57
  %64 = load ptr, ptr %3, align 8, !tbaa !10
  %65 = load ptr, ptr %4, align 8, !tbaa !41
  %66 = call ptr @new_elem_nterm(ptr noundef %64, ptr noundef %65)
  %67 = load ptr, ptr %4, align 8, !tbaa !41
  %68 = getelementptr inbounds nuw %struct.Rule, ptr %67, i32 0, i32 6
  %69 = getelementptr inbounds nuw %struct.anon.5, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !69
  %71 = load ptr, ptr %4, align 8, !tbaa !41
  %72 = getelementptr inbounds nuw %struct.Rule, ptr %71, i32 0, i32 6
  %73 = getelementptr inbounds nuw %struct.anon.5, ptr %72, i32 0, i32 0
  %74 = load i32, ptr %73, align 8, !tbaa !70
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 8, !tbaa !70
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds nuw ptr, ptr %70, i64 %76
  store ptr %66, ptr %77, align 8, !tbaa !54
  br label %110

78:                                               ; preds = %57
  br label %102

79:                                               ; preds = %47
  %80 = load ptr, ptr %4, align 8, !tbaa !41
  %81 = getelementptr inbounds nuw %struct.Rule, ptr %80, i32 0, i32 6
  %82 = getelementptr inbounds nuw %struct.anon.5, ptr %81, i32 0, i32 0
  %83 = load i32, ptr %82, align 8, !tbaa !70
  %84 = and i32 %83, 7
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %79
  %87 = load ptr, ptr %3, align 8, !tbaa !10
  %88 = load ptr, ptr %4, align 8, !tbaa !41
  %89 = call ptr @new_elem_nterm(ptr noundef %87, ptr noundef %88)
  %90 = load ptr, ptr %4, align 8, !tbaa !41
  %91 = getelementptr inbounds nuw %struct.Rule, ptr %90, i32 0, i32 6
  %92 = getelementptr inbounds nuw %struct.anon.5, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !69
  %94 = load ptr, ptr %4, align 8, !tbaa !41
  %95 = getelementptr inbounds nuw %struct.Rule, ptr %94, i32 0, i32 6
  %96 = getelementptr inbounds nuw %struct.anon.5, ptr %95, i32 0, i32 0
  %97 = load i32, ptr %96, align 8, !tbaa !70
  %98 = add i32 %97, 1
  store i32 %98, ptr %96, align 8, !tbaa !70
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds nuw ptr, ptr %93, i64 %99
  store ptr %89, ptr %100, align 8, !tbaa !54
  br label %110

101:                                              ; preds = %79
  br label %102

102:                                              ; preds = %101, %78
  br label %103

103:                                              ; preds = %102
  %104 = load ptr, ptr %4, align 8, !tbaa !41
  %105 = getelementptr inbounds nuw %struct.Rule, ptr %104, i32 0, i32 6
  %106 = load ptr, ptr %3, align 8, !tbaa !10
  %107 = load ptr, ptr %4, align 8, !tbaa !41
  %108 = call ptr @new_elem_nterm(ptr noundef %106, ptr noundef %107)
  call void @vec_add_internal(ptr noundef %105, ptr noundef %108)
  br label %109

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %86, %63, %29
  br label %111

111:                                              ; preds = %110
  %112 = load ptr, ptr %4, align 8, !tbaa !41
  %113 = getelementptr inbounds nuw %struct.Rule, ptr %112, i32 0, i32 6
  %114 = getelementptr inbounds nuw %struct.anon.5, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !69
  %116 = icmp ne ptr %115, null
  br i1 %116, label %148, label %117

117:                                              ; preds = %111
  %118 = load ptr, ptr %2, align 8, !tbaa !3
  %119 = getelementptr inbounds nuw %struct.Grammar, ptr %118, i32 0, i32 24
  %120 = load ptr, ptr %119, align 8, !tbaa !107
  %121 = getelementptr inbounds nuw %struct.Rule, ptr %120, i32 0, i32 6
  %122 = getelementptr inbounds nuw %struct.anon.5, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !69
  %124 = load ptr, ptr %2, align 8, !tbaa !3
  %125 = getelementptr inbounds nuw %struct.Grammar, ptr %124, i32 0, i32 24
  %126 = load ptr, ptr %125, align 8, !tbaa !107
  %127 = getelementptr inbounds nuw %struct.Rule, ptr %126, i32 0, i32 6
  %128 = getelementptr inbounds nuw %struct.anon.5, ptr %127, i32 0, i32 0
  %129 = load i32, ptr %128, align 8, !tbaa !70
  %130 = sub i32 %129, 1
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds nuw ptr, ptr %123, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !54
  %134 = load ptr, ptr %4, align 8, !tbaa !41
  %135 = getelementptr inbounds nuw %struct.Rule, ptr %134, i32 0, i32 6
  %136 = getelementptr inbounds nuw %struct.anon.5, ptr %135, i32 0, i32 3
  %137 = getelementptr inbounds [3 x ptr], ptr %136, i64 0, i64 0
  %138 = load ptr, ptr %4, align 8, !tbaa !41
  %139 = getelementptr inbounds nuw %struct.Rule, ptr %138, i32 0, i32 6
  %140 = getelementptr inbounds nuw %struct.anon.5, ptr %139, i32 0, i32 2
  store ptr %137, ptr %140, align 8, !tbaa !69
  %141 = load ptr, ptr %4, align 8, !tbaa !41
  %142 = getelementptr inbounds nuw %struct.Rule, ptr %141, i32 0, i32 6
  %143 = getelementptr inbounds nuw %struct.anon.5, ptr %142, i32 0, i32 0
  %144 = load i32, ptr %143, align 8, !tbaa !70
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 8, !tbaa !70
  %146 = zext i32 %144 to i64
  %147 = getelementptr inbounds nuw ptr, ptr %137, i64 %146
  store ptr %133, ptr %147, align 8, !tbaa !54
  br label %250

148:                                              ; preds = %111
  %149 = load ptr, ptr %4, align 8, !tbaa !41
  %150 = getelementptr inbounds nuw %struct.Rule, ptr %149, i32 0, i32 6
  %151 = getelementptr inbounds nuw %struct.anon.5, ptr %150, i32 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !69
  %153 = load ptr, ptr %4, align 8, !tbaa !41
  %154 = getelementptr inbounds nuw %struct.Rule, ptr %153, i32 0, i32 6
  %155 = getelementptr inbounds nuw %struct.anon.5, ptr %154, i32 0, i32 3
  %156 = getelementptr inbounds [3 x ptr], ptr %155, i64 0, i64 0
  %157 = icmp eq ptr %152, %156
  br i1 %157, label %158, label %193

158:                                              ; preds = %148
  %159 = load ptr, ptr %4, align 8, !tbaa !41
  %160 = getelementptr inbounds nuw %struct.Rule, ptr %159, i32 0, i32 6
  %161 = getelementptr inbounds nuw %struct.anon.5, ptr %160, i32 0, i32 0
  %162 = load i32, ptr %161, align 8, !tbaa !70
  %163 = icmp ult i32 %162, 3
  br i1 %163, label %164, label %192

164:                                              ; preds = %158
  %165 = load ptr, ptr %2, align 8, !tbaa !3
  %166 = getelementptr inbounds nuw %struct.Grammar, ptr %165, i32 0, i32 24
  %167 = load ptr, ptr %166, align 8, !tbaa !107
  %168 = getelementptr inbounds nuw %struct.Rule, ptr %167, i32 0, i32 6
  %169 = getelementptr inbounds nuw %struct.anon.5, ptr %168, i32 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !69
  %171 = load ptr, ptr %2, align 8, !tbaa !3
  %172 = getelementptr inbounds nuw %struct.Grammar, ptr %171, i32 0, i32 24
  %173 = load ptr, ptr %172, align 8, !tbaa !107
  %174 = getelementptr inbounds nuw %struct.Rule, ptr %173, i32 0, i32 6
  %175 = getelementptr inbounds nuw %struct.anon.5, ptr %174, i32 0, i32 0
  %176 = load i32, ptr %175, align 8, !tbaa !70
  %177 = sub i32 %176, 1
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds nuw ptr, ptr %170, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !54
  %181 = load ptr, ptr %4, align 8, !tbaa !41
  %182 = getelementptr inbounds nuw %struct.Rule, ptr %181, i32 0, i32 6
  %183 = getelementptr inbounds nuw %struct.anon.5, ptr %182, i32 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !69
  %185 = load ptr, ptr %4, align 8, !tbaa !41
  %186 = getelementptr inbounds nuw %struct.Rule, ptr %185, i32 0, i32 6
  %187 = getelementptr inbounds nuw %struct.anon.5, ptr %186, i32 0, i32 0
  %188 = load i32, ptr %187, align 8, !tbaa !70
  %189 = add i32 %188, 1
  store i32 %189, ptr %187, align 8, !tbaa !70
  %190 = zext i32 %188 to i64
  %191 = getelementptr inbounds nuw ptr, ptr %184, i64 %190
  store ptr %180, ptr %191, align 8, !tbaa !54
  br label %250

192:                                              ; preds = %158
  br label %229

193:                                              ; preds = %148
  %194 = load ptr, ptr %4, align 8, !tbaa !41
  %195 = getelementptr inbounds nuw %struct.Rule, ptr %194, i32 0, i32 6
  %196 = getelementptr inbounds nuw %struct.anon.5, ptr %195, i32 0, i32 0
  %197 = load i32, ptr %196, align 8, !tbaa !70
  %198 = and i32 %197, 7
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %228

200:                                              ; preds = %193
  %201 = load ptr, ptr %2, align 8, !tbaa !3
  %202 = getelementptr inbounds nuw %struct.Grammar, ptr %201, i32 0, i32 24
  %203 = load ptr, ptr %202, align 8, !tbaa !107
  %204 = getelementptr inbounds nuw %struct.Rule, ptr %203, i32 0, i32 6
  %205 = getelementptr inbounds nuw %struct.anon.5, ptr %204, i32 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !69
  %207 = load ptr, ptr %2, align 8, !tbaa !3
  %208 = getelementptr inbounds nuw %struct.Grammar, ptr %207, i32 0, i32 24
  %209 = load ptr, ptr %208, align 8, !tbaa !107
  %210 = getelementptr inbounds nuw %struct.Rule, ptr %209, i32 0, i32 6
  %211 = getelementptr inbounds nuw %struct.anon.5, ptr %210, i32 0, i32 0
  %212 = load i32, ptr %211, align 8, !tbaa !70
  %213 = sub i32 %212, 1
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds nuw ptr, ptr %206, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !54
  %217 = load ptr, ptr %4, align 8, !tbaa !41
  %218 = getelementptr inbounds nuw %struct.Rule, ptr %217, i32 0, i32 6
  %219 = getelementptr inbounds nuw %struct.anon.5, ptr %218, i32 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !69
  %221 = load ptr, ptr %4, align 8, !tbaa !41
  %222 = getelementptr inbounds nuw %struct.Rule, ptr %221, i32 0, i32 6
  %223 = getelementptr inbounds nuw %struct.anon.5, ptr %222, i32 0, i32 0
  %224 = load i32, ptr %223, align 8, !tbaa !70
  %225 = add i32 %224, 1
  store i32 %225, ptr %223, align 8, !tbaa !70
  %226 = zext i32 %224 to i64
  %227 = getelementptr inbounds nuw ptr, ptr %220, i64 %226
  store ptr %216, ptr %227, align 8, !tbaa !54
  br label %250

228:                                              ; preds = %193
  br label %229

229:                                              ; preds = %228, %192
  br label %230

230:                                              ; preds = %229
  %231 = load ptr, ptr %4, align 8, !tbaa !41
  %232 = getelementptr inbounds nuw %struct.Rule, ptr %231, i32 0, i32 6
  %233 = load ptr, ptr %2, align 8, !tbaa !3
  %234 = getelementptr inbounds nuw %struct.Grammar, ptr %233, i32 0, i32 24
  %235 = load ptr, ptr %234, align 8, !tbaa !107
  %236 = getelementptr inbounds nuw %struct.Rule, ptr %235, i32 0, i32 6
  %237 = getelementptr inbounds nuw %struct.anon.5, ptr %236, i32 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !69
  %239 = load ptr, ptr %2, align 8, !tbaa !3
  %240 = getelementptr inbounds nuw %struct.Grammar, ptr %239, i32 0, i32 24
  %241 = load ptr, ptr %240, align 8, !tbaa !107
  %242 = getelementptr inbounds nuw %struct.Rule, ptr %241, i32 0, i32 6
  %243 = getelementptr inbounds nuw %struct.anon.5, ptr %242, i32 0, i32 0
  %244 = load i32, ptr %243, align 8, !tbaa !70
  %245 = sub i32 %244, 1
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds nuw ptr, ptr %238, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !54
  call void @vec_add_internal(ptr noundef %232, ptr noundef %248)
  br label %249

249:                                              ; preds = %230
  br label %250

250:                                              ; preds = %249, %200, %164, %117
  %251 = load ptr, ptr %3, align 8, !tbaa !10
  %252 = load ptr, ptr %2, align 8, !tbaa !3
  %253 = getelementptr inbounds nuw %struct.Grammar, ptr %252, i32 0, i32 24
  %254 = load ptr, ptr %253, align 8, !tbaa !107
  %255 = call ptr @new_elem_nterm(ptr noundef %251, ptr noundef %254)
  %256 = load ptr, ptr %2, align 8, !tbaa !3
  %257 = getelementptr inbounds nuw %struct.Grammar, ptr %256, i32 0, i32 24
  %258 = load ptr, ptr %257, align 8, !tbaa !107
  %259 = getelementptr inbounds nuw %struct.Rule, ptr %258, i32 0, i32 6
  %260 = getelementptr inbounds nuw %struct.anon.5, ptr %259, i32 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !69
  %262 = load ptr, ptr %2, align 8, !tbaa !3
  %263 = getelementptr inbounds nuw %struct.Grammar, ptr %262, i32 0, i32 24
  %264 = load ptr, ptr %263, align 8, !tbaa !107
  %265 = getelementptr inbounds nuw %struct.Rule, ptr %264, i32 0, i32 6
  %266 = getelementptr inbounds nuw %struct.anon.5, ptr %265, i32 0, i32 0
  %267 = load i32, ptr %266, align 8, !tbaa !70
  %268 = sub i32 %267, 1
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds nuw ptr, ptr %261, i64 %269
  store ptr %255, ptr %270, align 8, !tbaa !54
  %271 = load ptr, ptr %4, align 8, !tbaa !41
  %272 = load ptr, ptr %4, align 8, !tbaa !41
  %273 = getelementptr inbounds nuw %struct.Rule, ptr %272, i32 0, i32 6
  %274 = getelementptr inbounds nuw %struct.anon.5, ptr %273, i32 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !69
  %276 = load ptr, ptr %4, align 8, !tbaa !41
  %277 = getelementptr inbounds nuw %struct.Rule, ptr %276, i32 0, i32 6
  %278 = getelementptr inbounds nuw %struct.anon.5, ptr %277, i32 0, i32 0
  %279 = load i32, ptr %278, align 8, !tbaa !70
  %280 = sub i32 %279, 1
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds nuw ptr, ptr %275, i64 %281
  %283 = load ptr, ptr %282, align 8, !tbaa !54
  %284 = getelementptr inbounds nuw %struct.Elem, ptr %283, i32 0, i32 2
  store ptr %271, ptr %284, align 8, !tbaa !51
  br label %548

285:                                              ; preds = %1
  br label %286

286:                                              ; preds = %285
  %287 = load ptr, ptr %4, align 8, !tbaa !41
  %288 = getelementptr inbounds nuw %struct.Rule, ptr %287, i32 0, i32 6
  %289 = getelementptr inbounds nuw %struct.anon.5, ptr %288, i32 0, i32 2
  %290 = load ptr, ptr %289, align 8, !tbaa !69
  %291 = icmp ne ptr %290, null
  br i1 %291, label %323, label %292

292:                                              ; preds = %286
  %293 = load ptr, ptr %2, align 8, !tbaa !3
  %294 = getelementptr inbounds nuw %struct.Grammar, ptr %293, i32 0, i32 24
  %295 = load ptr, ptr %294, align 8, !tbaa !107
  %296 = getelementptr inbounds nuw %struct.Rule, ptr %295, i32 0, i32 6
  %297 = getelementptr inbounds nuw %struct.anon.5, ptr %296, i32 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !69
  %299 = load ptr, ptr %2, align 8, !tbaa !3
  %300 = getelementptr inbounds nuw %struct.Grammar, ptr %299, i32 0, i32 24
  %301 = load ptr, ptr %300, align 8, !tbaa !107
  %302 = getelementptr inbounds nuw %struct.Rule, ptr %301, i32 0, i32 6
  %303 = getelementptr inbounds nuw %struct.anon.5, ptr %302, i32 0, i32 0
  %304 = load i32, ptr %303, align 8, !tbaa !70
  %305 = sub i32 %304, 1
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds nuw ptr, ptr %298, i64 %306
  %308 = load ptr, ptr %307, align 8, !tbaa !54
  %309 = load ptr, ptr %4, align 8, !tbaa !41
  %310 = getelementptr inbounds nuw %struct.Rule, ptr %309, i32 0, i32 6
  %311 = getelementptr inbounds nuw %struct.anon.5, ptr %310, i32 0, i32 3
  %312 = getelementptr inbounds [3 x ptr], ptr %311, i64 0, i64 0
  %313 = load ptr, ptr %4, align 8, !tbaa !41
  %314 = getelementptr inbounds nuw %struct.Rule, ptr %313, i32 0, i32 6
  %315 = getelementptr inbounds nuw %struct.anon.5, ptr %314, i32 0, i32 2
  store ptr %312, ptr %315, align 8, !tbaa !69
  %316 = load ptr, ptr %4, align 8, !tbaa !41
  %317 = getelementptr inbounds nuw %struct.Rule, ptr %316, i32 0, i32 6
  %318 = getelementptr inbounds nuw %struct.anon.5, ptr %317, i32 0, i32 0
  %319 = load i32, ptr %318, align 8, !tbaa !70
  %320 = add i32 %319, 1
  store i32 %320, ptr %318, align 8, !tbaa !70
  %321 = zext i32 %319 to i64
  %322 = getelementptr inbounds nuw ptr, ptr %312, i64 %321
  store ptr %308, ptr %322, align 8, !tbaa !54
  br label %425

323:                                              ; preds = %286
  %324 = load ptr, ptr %4, align 8, !tbaa !41
  %325 = getelementptr inbounds nuw %struct.Rule, ptr %324, i32 0, i32 6
  %326 = getelementptr inbounds nuw %struct.anon.5, ptr %325, i32 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !69
  %328 = load ptr, ptr %4, align 8, !tbaa !41
  %329 = getelementptr inbounds nuw %struct.Rule, ptr %328, i32 0, i32 6
  %330 = getelementptr inbounds nuw %struct.anon.5, ptr %329, i32 0, i32 3
  %331 = getelementptr inbounds [3 x ptr], ptr %330, i64 0, i64 0
  %332 = icmp eq ptr %327, %331
  br i1 %332, label %333, label %368

333:                                              ; preds = %323
  %334 = load ptr, ptr %4, align 8, !tbaa !41
  %335 = getelementptr inbounds nuw %struct.Rule, ptr %334, i32 0, i32 6
  %336 = getelementptr inbounds nuw %struct.anon.5, ptr %335, i32 0, i32 0
  %337 = load i32, ptr %336, align 8, !tbaa !70
  %338 = icmp ult i32 %337, 3
  br i1 %338, label %339, label %367

339:                                              ; preds = %333
  %340 = load ptr, ptr %2, align 8, !tbaa !3
  %341 = getelementptr inbounds nuw %struct.Grammar, ptr %340, i32 0, i32 24
  %342 = load ptr, ptr %341, align 8, !tbaa !107
  %343 = getelementptr inbounds nuw %struct.Rule, ptr %342, i32 0, i32 6
  %344 = getelementptr inbounds nuw %struct.anon.5, ptr %343, i32 0, i32 2
  %345 = load ptr, ptr %344, align 8, !tbaa !69
  %346 = load ptr, ptr %2, align 8, !tbaa !3
  %347 = getelementptr inbounds nuw %struct.Grammar, ptr %346, i32 0, i32 24
  %348 = load ptr, ptr %347, align 8, !tbaa !107
  %349 = getelementptr inbounds nuw %struct.Rule, ptr %348, i32 0, i32 6
  %350 = getelementptr inbounds nuw %struct.anon.5, ptr %349, i32 0, i32 0
  %351 = load i32, ptr %350, align 8, !tbaa !70
  %352 = sub i32 %351, 1
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds nuw ptr, ptr %345, i64 %353
  %355 = load ptr, ptr %354, align 8, !tbaa !54
  %356 = load ptr, ptr %4, align 8, !tbaa !41
  %357 = getelementptr inbounds nuw %struct.Rule, ptr %356, i32 0, i32 6
  %358 = getelementptr inbounds nuw %struct.anon.5, ptr %357, i32 0, i32 2
  %359 = load ptr, ptr %358, align 8, !tbaa !69
  %360 = load ptr, ptr %4, align 8, !tbaa !41
  %361 = getelementptr inbounds nuw %struct.Rule, ptr %360, i32 0, i32 6
  %362 = getelementptr inbounds nuw %struct.anon.5, ptr %361, i32 0, i32 0
  %363 = load i32, ptr %362, align 8, !tbaa !70
  %364 = add i32 %363, 1
  store i32 %364, ptr %362, align 8, !tbaa !70
  %365 = zext i32 %363 to i64
  %366 = getelementptr inbounds nuw ptr, ptr %359, i64 %365
  store ptr %355, ptr %366, align 8, !tbaa !54
  br label %425

367:                                              ; preds = %333
  br label %404

368:                                              ; preds = %323
  %369 = load ptr, ptr %4, align 8, !tbaa !41
  %370 = getelementptr inbounds nuw %struct.Rule, ptr %369, i32 0, i32 6
  %371 = getelementptr inbounds nuw %struct.anon.5, ptr %370, i32 0, i32 0
  %372 = load i32, ptr %371, align 8, !tbaa !70
  %373 = and i32 %372, 7
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %403

375:                                              ; preds = %368
  %376 = load ptr, ptr %2, align 8, !tbaa !3
  %377 = getelementptr inbounds nuw %struct.Grammar, ptr %376, i32 0, i32 24
  %378 = load ptr, ptr %377, align 8, !tbaa !107
  %379 = getelementptr inbounds nuw %struct.Rule, ptr %378, i32 0, i32 6
  %380 = getelementptr inbounds nuw %struct.anon.5, ptr %379, i32 0, i32 2
  %381 = load ptr, ptr %380, align 8, !tbaa !69
  %382 = load ptr, ptr %2, align 8, !tbaa !3
  %383 = getelementptr inbounds nuw %struct.Grammar, ptr %382, i32 0, i32 24
  %384 = load ptr, ptr %383, align 8, !tbaa !107
  %385 = getelementptr inbounds nuw %struct.Rule, ptr %384, i32 0, i32 6
  %386 = getelementptr inbounds nuw %struct.anon.5, ptr %385, i32 0, i32 0
  %387 = load i32, ptr %386, align 8, !tbaa !70
  %388 = sub i32 %387, 1
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds nuw ptr, ptr %381, i64 %389
  %391 = load ptr, ptr %390, align 8, !tbaa !54
  %392 = load ptr, ptr %4, align 8, !tbaa !41
  %393 = getelementptr inbounds nuw %struct.Rule, ptr %392, i32 0, i32 6
  %394 = getelementptr inbounds nuw %struct.anon.5, ptr %393, i32 0, i32 2
  %395 = load ptr, ptr %394, align 8, !tbaa !69
  %396 = load ptr, ptr %4, align 8, !tbaa !41
  %397 = getelementptr inbounds nuw %struct.Rule, ptr %396, i32 0, i32 6
  %398 = getelementptr inbounds nuw %struct.anon.5, ptr %397, i32 0, i32 0
  %399 = load i32, ptr %398, align 8, !tbaa !70
  %400 = add i32 %399, 1
  store i32 %400, ptr %398, align 8, !tbaa !70
  %401 = zext i32 %399 to i64
  %402 = getelementptr inbounds nuw ptr, ptr %395, i64 %401
  store ptr %391, ptr %402, align 8, !tbaa !54
  br label %425

403:                                              ; preds = %368
  br label %404

404:                                              ; preds = %403, %367
  br label %405

405:                                              ; preds = %404
  %406 = load ptr, ptr %4, align 8, !tbaa !41
  %407 = getelementptr inbounds nuw %struct.Rule, ptr %406, i32 0, i32 6
  %408 = load ptr, ptr %2, align 8, !tbaa !3
  %409 = getelementptr inbounds nuw %struct.Grammar, ptr %408, i32 0, i32 24
  %410 = load ptr, ptr %409, align 8, !tbaa !107
  %411 = getelementptr inbounds nuw %struct.Rule, ptr %410, i32 0, i32 6
  %412 = getelementptr inbounds nuw %struct.anon.5, ptr %411, i32 0, i32 2
  %413 = load ptr, ptr %412, align 8, !tbaa !69
  %414 = load ptr, ptr %2, align 8, !tbaa !3
  %415 = getelementptr inbounds nuw %struct.Grammar, ptr %414, i32 0, i32 24
  %416 = load ptr, ptr %415, align 8, !tbaa !107
  %417 = getelementptr inbounds nuw %struct.Rule, ptr %416, i32 0, i32 6
  %418 = getelementptr inbounds nuw %struct.anon.5, ptr %417, i32 0, i32 0
  %419 = load i32, ptr %418, align 8, !tbaa !70
  %420 = sub i32 %419, 1
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds nuw ptr, ptr %413, i64 %421
  %423 = load ptr, ptr %422, align 8, !tbaa !54
  call void @vec_add_internal(ptr noundef %407, ptr noundef %423)
  br label %424

424:                                              ; preds = %405
  br label %425

425:                                              ; preds = %424, %375, %339, %292
  %426 = load ptr, ptr %3, align 8, !tbaa !10
  %427 = load ptr, ptr %2, align 8, !tbaa !3
  %428 = getelementptr inbounds nuw %struct.Grammar, ptr %427, i32 0, i32 24
  %429 = load ptr, ptr %428, align 8, !tbaa !107
  %430 = call ptr @new_elem_nterm(ptr noundef %426, ptr noundef %429)
  %431 = load ptr, ptr %2, align 8, !tbaa !3
  %432 = getelementptr inbounds nuw %struct.Grammar, ptr %431, i32 0, i32 24
  %433 = load ptr, ptr %432, align 8, !tbaa !107
  %434 = getelementptr inbounds nuw %struct.Rule, ptr %433, i32 0, i32 6
  %435 = getelementptr inbounds nuw %struct.anon.5, ptr %434, i32 0, i32 2
  %436 = load ptr, ptr %435, align 8, !tbaa !69
  %437 = load ptr, ptr %2, align 8, !tbaa !3
  %438 = getelementptr inbounds nuw %struct.Grammar, ptr %437, i32 0, i32 24
  %439 = load ptr, ptr %438, align 8, !tbaa !107
  %440 = getelementptr inbounds nuw %struct.Rule, ptr %439, i32 0, i32 6
  %441 = getelementptr inbounds nuw %struct.anon.5, ptr %440, i32 0, i32 0
  %442 = load i32, ptr %441, align 8, !tbaa !70
  %443 = sub i32 %442, 1
  %444 = zext i32 %443 to i64
  %445 = getelementptr inbounds nuw ptr, ptr %436, i64 %444
  store ptr %430, ptr %445, align 8, !tbaa !54
  %446 = load ptr, ptr %4, align 8, !tbaa !41
  %447 = load ptr, ptr %4, align 8, !tbaa !41
  %448 = getelementptr inbounds nuw %struct.Rule, ptr %447, i32 0, i32 6
  %449 = getelementptr inbounds nuw %struct.anon.5, ptr %448, i32 0, i32 2
  %450 = load ptr, ptr %449, align 8, !tbaa !69
  %451 = load ptr, ptr %4, align 8, !tbaa !41
  %452 = getelementptr inbounds nuw %struct.Rule, ptr %451, i32 0, i32 6
  %453 = getelementptr inbounds nuw %struct.anon.5, ptr %452, i32 0, i32 0
  %454 = load i32, ptr %453, align 8, !tbaa !70
  %455 = sub i32 %454, 1
  %456 = zext i32 %455 to i64
  %457 = getelementptr inbounds nuw ptr, ptr %450, i64 %456
  %458 = load ptr, ptr %457, align 8, !tbaa !54
  %459 = getelementptr inbounds nuw %struct.Elem, ptr %458, i32 0, i32 2
  store ptr %446, ptr %459, align 8, !tbaa !51
  br label %460

460:                                              ; preds = %425
  %461 = load ptr, ptr %4, align 8, !tbaa !41
  %462 = getelementptr inbounds nuw %struct.Rule, ptr %461, i32 0, i32 6
  %463 = getelementptr inbounds nuw %struct.anon.5, ptr %462, i32 0, i32 2
  %464 = load ptr, ptr %463, align 8, !tbaa !69
  %465 = icmp ne ptr %464, null
  br i1 %465, label %484, label %466

466:                                              ; preds = %460
  %467 = load ptr, ptr %3, align 8, !tbaa !10
  %468 = load ptr, ptr %4, align 8, !tbaa !41
  %469 = call ptr @new_elem_nterm(ptr noundef %467, ptr noundef %468)
  %470 = load ptr, ptr %4, align 8, !tbaa !41
  %471 = getelementptr inbounds nuw %struct.Rule, ptr %470, i32 0, i32 6
  %472 = getelementptr inbounds nuw %struct.anon.5, ptr %471, i32 0, i32 3
  %473 = getelementptr inbounds [3 x ptr], ptr %472, i64 0, i64 0
  %474 = load ptr, ptr %4, align 8, !tbaa !41
  %475 = getelementptr inbounds nuw %struct.Rule, ptr %474, i32 0, i32 6
  %476 = getelementptr inbounds nuw %struct.anon.5, ptr %475, i32 0, i32 2
  store ptr %473, ptr %476, align 8, !tbaa !69
  %477 = load ptr, ptr %4, align 8, !tbaa !41
  %478 = getelementptr inbounds nuw %struct.Rule, ptr %477, i32 0, i32 6
  %479 = getelementptr inbounds nuw %struct.anon.5, ptr %478, i32 0, i32 0
  %480 = load i32, ptr %479, align 8, !tbaa !70
  %481 = add i32 %480, 1
  store i32 %481, ptr %479, align 8, !tbaa !70
  %482 = zext i32 %480 to i64
  %483 = getelementptr inbounds nuw ptr, ptr %473, i64 %482
  store ptr %469, ptr %483, align 8, !tbaa !54
  br label %547

484:                                              ; preds = %460
  %485 = load ptr, ptr %4, align 8, !tbaa !41
  %486 = getelementptr inbounds nuw %struct.Rule, ptr %485, i32 0, i32 6
  %487 = getelementptr inbounds nuw %struct.anon.5, ptr %486, i32 0, i32 2
  %488 = load ptr, ptr %487, align 8, !tbaa !69
  %489 = load ptr, ptr %4, align 8, !tbaa !41
  %490 = getelementptr inbounds nuw %struct.Rule, ptr %489, i32 0, i32 6
  %491 = getelementptr inbounds nuw %struct.anon.5, ptr %490, i32 0, i32 3
  %492 = getelementptr inbounds [3 x ptr], ptr %491, i64 0, i64 0
  %493 = icmp eq ptr %488, %492
  br i1 %493, label %494, label %516

494:                                              ; preds = %484
  %495 = load ptr, ptr %4, align 8, !tbaa !41
  %496 = getelementptr inbounds nuw %struct.Rule, ptr %495, i32 0, i32 6
  %497 = getelementptr inbounds nuw %struct.anon.5, ptr %496, i32 0, i32 0
  %498 = load i32, ptr %497, align 8, !tbaa !70
  %499 = icmp ult i32 %498, 3
  br i1 %499, label %500, label %515

500:                                              ; preds = %494
  %501 = load ptr, ptr %3, align 8, !tbaa !10
  %502 = load ptr, ptr %4, align 8, !tbaa !41
  %503 = call ptr @new_elem_nterm(ptr noundef %501, ptr noundef %502)
  %504 = load ptr, ptr %4, align 8, !tbaa !41
  %505 = getelementptr inbounds nuw %struct.Rule, ptr %504, i32 0, i32 6
  %506 = getelementptr inbounds nuw %struct.anon.5, ptr %505, i32 0, i32 2
  %507 = load ptr, ptr %506, align 8, !tbaa !69
  %508 = load ptr, ptr %4, align 8, !tbaa !41
  %509 = getelementptr inbounds nuw %struct.Rule, ptr %508, i32 0, i32 6
  %510 = getelementptr inbounds nuw %struct.anon.5, ptr %509, i32 0, i32 0
  %511 = load i32, ptr %510, align 8, !tbaa !70
  %512 = add i32 %511, 1
  store i32 %512, ptr %510, align 8, !tbaa !70
  %513 = zext i32 %511 to i64
  %514 = getelementptr inbounds nuw ptr, ptr %507, i64 %513
  store ptr %503, ptr %514, align 8, !tbaa !54
  br label %547

515:                                              ; preds = %494
  br label %539

516:                                              ; preds = %484
  %517 = load ptr, ptr %4, align 8, !tbaa !41
  %518 = getelementptr inbounds nuw %struct.Rule, ptr %517, i32 0, i32 6
  %519 = getelementptr inbounds nuw %struct.anon.5, ptr %518, i32 0, i32 0
  %520 = load i32, ptr %519, align 8, !tbaa !70
  %521 = and i32 %520, 7
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %538

523:                                              ; preds = %516
  %524 = load ptr, ptr %3, align 8, !tbaa !10
  %525 = load ptr, ptr %4, align 8, !tbaa !41
  %526 = call ptr @new_elem_nterm(ptr noundef %524, ptr noundef %525)
  %527 = load ptr, ptr %4, align 8, !tbaa !41
  %528 = getelementptr inbounds nuw %struct.Rule, ptr %527, i32 0, i32 6
  %529 = getelementptr inbounds nuw %struct.anon.5, ptr %528, i32 0, i32 2
  %530 = load ptr, ptr %529, align 8, !tbaa !69
  %531 = load ptr, ptr %4, align 8, !tbaa !41
  %532 = getelementptr inbounds nuw %struct.Rule, ptr %531, i32 0, i32 6
  %533 = getelementptr inbounds nuw %struct.anon.5, ptr %532, i32 0, i32 0
  %534 = load i32, ptr %533, align 8, !tbaa !70
  %535 = add i32 %534, 1
  store i32 %535, ptr %533, align 8, !tbaa !70
  %536 = zext i32 %534 to i64
  %537 = getelementptr inbounds nuw ptr, ptr %530, i64 %536
  store ptr %526, ptr %537, align 8, !tbaa !54
  br label %547

538:                                              ; preds = %516
  br label %539

539:                                              ; preds = %538, %515
  br label %540

540:                                              ; preds = %539
  %541 = load ptr, ptr %4, align 8, !tbaa !41
  %542 = getelementptr inbounds nuw %struct.Rule, ptr %541, i32 0, i32 6
  %543 = load ptr, ptr %3, align 8, !tbaa !10
  %544 = load ptr, ptr %4, align 8, !tbaa !41
  %545 = call ptr @new_elem_nterm(ptr noundef %543, ptr noundef %544)
  call void @vec_add_internal(ptr noundef %542, ptr noundef %545)
  br label %546

546:                                              ; preds = %540
  br label %547

547:                                              ; preds = %546, %523, %500, %466
  br label %548

548:                                              ; preds = %547, %250
  br label %549

549:                                              ; preds = %548
  %550 = load ptr, ptr %3, align 8, !tbaa !10
  %551 = getelementptr inbounds nuw %struct.Production, ptr %550, i32 0, i32 2
  %552 = getelementptr inbounds nuw %struct.anon, ptr %551, i32 0, i32 2
  %553 = load ptr, ptr %552, align 8, !tbaa !108
  %554 = icmp ne ptr %553, null
  br i1 %554, label %571, label %555

555:                                              ; preds = %549
  %556 = load ptr, ptr %4, align 8, !tbaa !41
  %557 = load ptr, ptr %3, align 8, !tbaa !10
  %558 = getelementptr inbounds nuw %struct.Production, ptr %557, i32 0, i32 2
  %559 = getelementptr inbounds nuw %struct.anon, ptr %558, i32 0, i32 3
  %560 = getelementptr inbounds [3 x ptr], ptr %559, i64 0, i64 0
  %561 = load ptr, ptr %3, align 8, !tbaa !10
  %562 = getelementptr inbounds nuw %struct.Production, ptr %561, i32 0, i32 2
  %563 = getelementptr inbounds nuw %struct.anon, ptr %562, i32 0, i32 2
  store ptr %560, ptr %563, align 8, !tbaa !108
  %564 = load ptr, ptr %3, align 8, !tbaa !10
  %565 = getelementptr inbounds nuw %struct.Production, ptr %564, i32 0, i32 2
  %566 = getelementptr inbounds nuw %struct.anon, ptr %565, i32 0, i32 0
  %567 = load i32, ptr %566, align 8, !tbaa !109
  %568 = add i32 %567, 1
  store i32 %568, ptr %566, align 8, !tbaa !109
  %569 = zext i32 %567 to i64
  %570 = getelementptr inbounds nuw ptr, ptr %560, i64 %569
  store ptr %556, ptr %570, align 8, !tbaa !41
  br label %628

571:                                              ; preds = %549
  %572 = load ptr, ptr %3, align 8, !tbaa !10
  %573 = getelementptr inbounds nuw %struct.Production, ptr %572, i32 0, i32 2
  %574 = getelementptr inbounds nuw %struct.anon, ptr %573, i32 0, i32 2
  %575 = load ptr, ptr %574, align 8, !tbaa !108
  %576 = load ptr, ptr %3, align 8, !tbaa !10
  %577 = getelementptr inbounds nuw %struct.Production, ptr %576, i32 0, i32 2
  %578 = getelementptr inbounds nuw %struct.anon, ptr %577, i32 0, i32 3
  %579 = getelementptr inbounds [3 x ptr], ptr %578, i64 0, i64 0
  %580 = icmp eq ptr %575, %579
  br i1 %580, label %581, label %601

581:                                              ; preds = %571
  %582 = load ptr, ptr %3, align 8, !tbaa !10
  %583 = getelementptr inbounds nuw %struct.Production, ptr %582, i32 0, i32 2
  %584 = getelementptr inbounds nuw %struct.anon, ptr %583, i32 0, i32 0
  %585 = load i32, ptr %584, align 8, !tbaa !109
  %586 = icmp ult i32 %585, 3
  br i1 %586, label %587, label %600

587:                                              ; preds = %581
  %588 = load ptr, ptr %4, align 8, !tbaa !41
  %589 = load ptr, ptr %3, align 8, !tbaa !10
  %590 = getelementptr inbounds nuw %struct.Production, ptr %589, i32 0, i32 2
  %591 = getelementptr inbounds nuw %struct.anon, ptr %590, i32 0, i32 2
  %592 = load ptr, ptr %591, align 8, !tbaa !108
  %593 = load ptr, ptr %3, align 8, !tbaa !10
  %594 = getelementptr inbounds nuw %struct.Production, ptr %593, i32 0, i32 2
  %595 = getelementptr inbounds nuw %struct.anon, ptr %594, i32 0, i32 0
  %596 = load i32, ptr %595, align 8, !tbaa !109
  %597 = add i32 %596, 1
  store i32 %597, ptr %595, align 8, !tbaa !109
  %598 = zext i32 %596 to i64
  %599 = getelementptr inbounds nuw ptr, ptr %592, i64 %598
  store ptr %588, ptr %599, align 8, !tbaa !41
  br label %628

600:                                              ; preds = %581
  br label %622

601:                                              ; preds = %571
  %602 = load ptr, ptr %3, align 8, !tbaa !10
  %603 = getelementptr inbounds nuw %struct.Production, ptr %602, i32 0, i32 2
  %604 = getelementptr inbounds nuw %struct.anon, ptr %603, i32 0, i32 0
  %605 = load i32, ptr %604, align 8, !tbaa !109
  %606 = and i32 %605, 7
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %621

608:                                              ; preds = %601
  %609 = load ptr, ptr %4, align 8, !tbaa !41
  %610 = load ptr, ptr %3, align 8, !tbaa !10
  %611 = getelementptr inbounds nuw %struct.Production, ptr %610, i32 0, i32 2
  %612 = getelementptr inbounds nuw %struct.anon, ptr %611, i32 0, i32 2
  %613 = load ptr, ptr %612, align 8, !tbaa !108
  %614 = load ptr, ptr %3, align 8, !tbaa !10
  %615 = getelementptr inbounds nuw %struct.Production, ptr %614, i32 0, i32 2
  %616 = getelementptr inbounds nuw %struct.anon, ptr %615, i32 0, i32 0
  %617 = load i32, ptr %616, align 8, !tbaa !109
  %618 = add i32 %617, 1
  store i32 %618, ptr %616, align 8, !tbaa !109
  %619 = zext i32 %617 to i64
  %620 = getelementptr inbounds nuw ptr, ptr %613, i64 %619
  store ptr %609, ptr %620, align 8, !tbaa !41
  br label %628

621:                                              ; preds = %601
  br label %622

622:                                              ; preds = %621, %600
  br label %623

623:                                              ; preds = %622
  %624 = load ptr, ptr %3, align 8, !tbaa !10
  %625 = getelementptr inbounds nuw %struct.Production, ptr %624, i32 0, i32 2
  %626 = load ptr, ptr %4, align 8, !tbaa !41
  call void @vec_add_internal(ptr noundef %625, ptr noundef %626)
  br label %627

627:                                              ; preds = %623
  br label %628

628:                                              ; preds = %627, %608, %587, %555
  br label %629

629:                                              ; preds = %628
  %630 = load ptr, ptr %3, align 8, !tbaa !10
  %631 = getelementptr inbounds nuw %struct.Production, ptr %630, i32 0, i32 2
  %632 = getelementptr inbounds nuw %struct.anon, ptr %631, i32 0, i32 2
  %633 = load ptr, ptr %632, align 8, !tbaa !108
  %634 = icmp ne ptr %633, null
  br i1 %634, label %653, label %635

635:                                              ; preds = %629
  %636 = load ptr, ptr %2, align 8, !tbaa !3
  %637 = load ptr, ptr %3, align 8, !tbaa !10
  %638 = call ptr @new_rule(ptr noundef %636, ptr noundef %637)
  %639 = load ptr, ptr %3, align 8, !tbaa !10
  %640 = getelementptr inbounds nuw %struct.Production, ptr %639, i32 0, i32 2
  %641 = getelementptr inbounds nuw %struct.anon, ptr %640, i32 0, i32 3
  %642 = getelementptr inbounds [3 x ptr], ptr %641, i64 0, i64 0
  %643 = load ptr, ptr %3, align 8, !tbaa !10
  %644 = getelementptr inbounds nuw %struct.Production, ptr %643, i32 0, i32 2
  %645 = getelementptr inbounds nuw %struct.anon, ptr %644, i32 0, i32 2
  store ptr %642, ptr %645, align 8, !tbaa !108
  %646 = load ptr, ptr %3, align 8, !tbaa !10
  %647 = getelementptr inbounds nuw %struct.Production, ptr %646, i32 0, i32 2
  %648 = getelementptr inbounds nuw %struct.anon, ptr %647, i32 0, i32 0
  %649 = load i32, ptr %648, align 8, !tbaa !109
  %650 = add i32 %649, 1
  store i32 %650, ptr %648, align 8, !tbaa !109
  %651 = zext i32 %649 to i64
  %652 = getelementptr inbounds nuw ptr, ptr %642, i64 %651
  store ptr %638, ptr %652, align 8, !tbaa !41
  br label %716

653:                                              ; preds = %629
  %654 = load ptr, ptr %3, align 8, !tbaa !10
  %655 = getelementptr inbounds nuw %struct.Production, ptr %654, i32 0, i32 2
  %656 = getelementptr inbounds nuw %struct.anon, ptr %655, i32 0, i32 2
  %657 = load ptr, ptr %656, align 8, !tbaa !108
  %658 = load ptr, ptr %3, align 8, !tbaa !10
  %659 = getelementptr inbounds nuw %struct.Production, ptr %658, i32 0, i32 2
  %660 = getelementptr inbounds nuw %struct.anon, ptr %659, i32 0, i32 3
  %661 = getelementptr inbounds [3 x ptr], ptr %660, i64 0, i64 0
  %662 = icmp eq ptr %657, %661
  br i1 %662, label %663, label %685

663:                                              ; preds = %653
  %664 = load ptr, ptr %3, align 8, !tbaa !10
  %665 = getelementptr inbounds nuw %struct.Production, ptr %664, i32 0, i32 2
  %666 = getelementptr inbounds nuw %struct.anon, ptr %665, i32 0, i32 0
  %667 = load i32, ptr %666, align 8, !tbaa !109
  %668 = icmp ult i32 %667, 3
  br i1 %668, label %669, label %684

669:                                              ; preds = %663
  %670 = load ptr, ptr %2, align 8, !tbaa !3
  %671 = load ptr, ptr %3, align 8, !tbaa !10
  %672 = call ptr @new_rule(ptr noundef %670, ptr noundef %671)
  %673 = load ptr, ptr %3, align 8, !tbaa !10
  %674 = getelementptr inbounds nuw %struct.Production, ptr %673, i32 0, i32 2
  %675 = getelementptr inbounds nuw %struct.anon, ptr %674, i32 0, i32 2
  %676 = load ptr, ptr %675, align 8, !tbaa !108
  %677 = load ptr, ptr %3, align 8, !tbaa !10
  %678 = getelementptr inbounds nuw %struct.Production, ptr %677, i32 0, i32 2
  %679 = getelementptr inbounds nuw %struct.anon, ptr %678, i32 0, i32 0
  %680 = load i32, ptr %679, align 8, !tbaa !109
  %681 = add i32 %680, 1
  store i32 %681, ptr %679, align 8, !tbaa !109
  %682 = zext i32 %680 to i64
  %683 = getelementptr inbounds nuw ptr, ptr %676, i64 %682
  store ptr %672, ptr %683, align 8, !tbaa !41
  br label %716

684:                                              ; preds = %663
  br label %708

685:                                              ; preds = %653
  %686 = load ptr, ptr %3, align 8, !tbaa !10
  %687 = getelementptr inbounds nuw %struct.Production, ptr %686, i32 0, i32 2
  %688 = getelementptr inbounds nuw %struct.anon, ptr %687, i32 0, i32 0
  %689 = load i32, ptr %688, align 8, !tbaa !109
  %690 = and i32 %689, 7
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %692, label %707

692:                                              ; preds = %685
  %693 = load ptr, ptr %2, align 8, !tbaa !3
  %694 = load ptr, ptr %3, align 8, !tbaa !10
  %695 = call ptr @new_rule(ptr noundef %693, ptr noundef %694)
  %696 = load ptr, ptr %3, align 8, !tbaa !10
  %697 = getelementptr inbounds nuw %struct.Production, ptr %696, i32 0, i32 2
  %698 = getelementptr inbounds nuw %struct.anon, ptr %697, i32 0, i32 2
  %699 = load ptr, ptr %698, align 8, !tbaa !108
  %700 = load ptr, ptr %3, align 8, !tbaa !10
  %701 = getelementptr inbounds nuw %struct.Production, ptr %700, i32 0, i32 2
  %702 = getelementptr inbounds nuw %struct.anon, ptr %701, i32 0, i32 0
  %703 = load i32, ptr %702, align 8, !tbaa !109
  %704 = add i32 %703, 1
  store i32 %704, ptr %702, align 8, !tbaa !109
  %705 = zext i32 %703 to i64
  %706 = getelementptr inbounds nuw ptr, ptr %699, i64 %705
  store ptr %695, ptr %706, align 8, !tbaa !41
  br label %716

707:                                              ; preds = %685
  br label %708

708:                                              ; preds = %707, %684
  br label %709

709:                                              ; preds = %708
  %710 = load ptr, ptr %3, align 8, !tbaa !10
  %711 = getelementptr inbounds nuw %struct.Production, ptr %710, i32 0, i32 2
  %712 = load ptr, ptr %2, align 8, !tbaa !3
  %713 = load ptr, ptr %3, align 8, !tbaa !10
  %714 = call ptr @new_rule(ptr noundef %712, ptr noundef %713)
  call void @vec_add_internal(ptr noundef %711, ptr noundef %714)
  br label %715

715:                                              ; preds = %709
  br label %716

716:                                              ; preds = %715, %692, %669, %635
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define dso_local void @plus_EBNF(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  %7 = load ptr, ptr %2, align 8, !tbaa !3
  %8 = getelementptr inbounds nuw %struct.Grammar, ptr %7, i32 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = call ptr @new_internal_production(ptr noundef %6, ptr noundef %9)
  store ptr %10, ptr %3, align 8, !tbaa !10
  %11 = load ptr, ptr %3, align 8, !tbaa !10
  %12 = getelementptr inbounds nuw %struct.Production, ptr %11, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, -29
  %15 = or i8 %14, 16
  store i8 %15, ptr %12, align 4
  %16 = load ptr, ptr %2, align 8, !tbaa !3
  %17 = load ptr, ptr %3, align 8, !tbaa !10
  %18 = call ptr @new_rule(ptr noundef %16, ptr noundef %17)
  store ptr %18, ptr %4, align 8, !tbaa !41
  %19 = load ptr, ptr %2, align 8, !tbaa !3
  %20 = getelementptr inbounds nuw %struct.Grammar, ptr %19, i32 0, i32 11
  %21 = load i32, ptr %20, align 4, !tbaa !110
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %236, label %23

23:                                               ; preds = %1
  %24 = load ptr, ptr %2, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.Grammar, ptr %24, i32 0, i32 24
  %26 = load ptr, ptr %25, align 8, !tbaa !107
  %27 = getelementptr inbounds nuw %struct.Rule, ptr %26, i32 0, i32 6
  %28 = getelementptr inbounds nuw %struct.anon.5, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  %30 = load ptr, ptr %2, align 8, !tbaa !3
  %31 = getelementptr inbounds nuw %struct.Grammar, ptr %30, i32 0, i32 24
  %32 = load ptr, ptr %31, align 8, !tbaa !107
  %33 = getelementptr inbounds nuw %struct.Rule, ptr %32, i32 0, i32 6
  %34 = getelementptr inbounds nuw %struct.anon.5, ptr %33, i32 0, i32 0
  %35 = load i32, ptr %34, align 8, !tbaa !70
  %36 = sub i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds nuw ptr, ptr %29, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  store ptr %39, ptr %5, align 8, !tbaa !54
  br label %40

40:                                               ; preds = %23
  %41 = load ptr, ptr %4, align 8, !tbaa !41
  %42 = getelementptr inbounds nuw %struct.Rule, ptr %41, i32 0, i32 6
  %43 = getelementptr inbounds nuw %struct.anon.5, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !69
  %45 = icmp ne ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %40
  %47 = load ptr, ptr %3, align 8, !tbaa !10
  %48 = load ptr, ptr %4, align 8, !tbaa !41
  %49 = call ptr @new_elem_nterm(ptr noundef %47, ptr noundef %48)
  %50 = load ptr, ptr %4, align 8, !tbaa !41
  %51 = getelementptr inbounds nuw %struct.Rule, ptr %50, i32 0, i32 6
  %52 = getelementptr inbounds nuw %struct.anon.5, ptr %51, i32 0, i32 3
  %53 = getelementptr inbounds [3 x ptr], ptr %52, i64 0, i64 0
  %54 = load ptr, ptr %4, align 8, !tbaa !41
  %55 = getelementptr inbounds nuw %struct.Rule, ptr %54, i32 0, i32 6
  %56 = getelementptr inbounds nuw %struct.anon.5, ptr %55, i32 0, i32 2
  store ptr %53, ptr %56, align 8, !tbaa !69
  %57 = load ptr, ptr %4, align 8, !tbaa !41
  %58 = getelementptr inbounds nuw %struct.Rule, ptr %57, i32 0, i32 6
  %59 = getelementptr inbounds nuw %struct.anon.5, ptr %58, i32 0, i32 0
  %60 = load i32, ptr %59, align 8, !tbaa !70
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 8, !tbaa !70
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds nuw ptr, ptr %53, i64 %62
  store ptr %49, ptr %63, align 8, !tbaa !54
  br label %127

64:                                               ; preds = %40
  %65 = load ptr, ptr %4, align 8, !tbaa !41
  %66 = getelementptr inbounds nuw %struct.Rule, ptr %65, i32 0, i32 6
  %67 = getelementptr inbounds nuw %struct.anon.5, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !69
  %69 = load ptr, ptr %4, align 8, !tbaa !41
  %70 = getelementptr inbounds nuw %struct.Rule, ptr %69, i32 0, i32 6
  %71 = getelementptr inbounds nuw %struct.anon.5, ptr %70, i32 0, i32 3
  %72 = getelementptr inbounds [3 x ptr], ptr %71, i64 0, i64 0
  %73 = icmp eq ptr %68, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %64
  %75 = load ptr, ptr %4, align 8, !tbaa !41
  %76 = getelementptr inbounds nuw %struct.Rule, ptr %75, i32 0, i32 6
  %77 = getelementptr inbounds nuw %struct.anon.5, ptr %76, i32 0, i32 0
  %78 = load i32, ptr %77, align 8, !tbaa !70
  %79 = icmp ult i32 %78, 3
  br i1 %79, label %80, label %95

80:                                               ; preds = %74
  %81 = load ptr, ptr %3, align 8, !tbaa !10
  %82 = load ptr, ptr %4, align 8, !tbaa !41
  %83 = call ptr @new_elem_nterm(ptr noundef %81, ptr noundef %82)
  %84 = load ptr, ptr %4, align 8, !tbaa !41
  %85 = getelementptr inbounds nuw %struct.Rule, ptr %84, i32 0, i32 6
  %86 = getelementptr inbounds nuw %struct.anon.5, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !69
  %88 = load ptr, ptr %4, align 8, !tbaa !41
  %89 = getelementptr inbounds nuw %struct.Rule, ptr %88, i32 0, i32 6
  %90 = getelementptr inbounds nuw %struct.anon.5, ptr %89, i32 0, i32 0
  %91 = load i32, ptr %90, align 8, !tbaa !70
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 8, !tbaa !70
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds nuw ptr, ptr %87, i64 %93
  store ptr %83, ptr %94, align 8, !tbaa !54
  br label %127

95:                                               ; preds = %74
  br label %119

96:                                               ; preds = %64
  %97 = load ptr, ptr %4, align 8, !tbaa !41
  %98 = getelementptr inbounds nuw %struct.Rule, ptr %97, i32 0, i32 6
  %99 = getelementptr inbounds nuw %struct.anon.5, ptr %98, i32 0, i32 0
  %100 = load i32, ptr %99, align 8, !tbaa !70
  %101 = and i32 %100, 7
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %96
  %104 = load ptr, ptr %3, align 8, !tbaa !10
  %105 = load ptr, ptr %4, align 8, !tbaa !41
  %106 = call ptr @new_elem_nterm(ptr noundef %104, ptr noundef %105)
  %107 = load ptr, ptr %4, align 8, !tbaa !41
  %108 = getelementptr inbounds nuw %struct.Rule, ptr %107, i32 0, i32 6
  %109 = getelementptr inbounds nuw %struct.anon.5, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !69
  %111 = load ptr, ptr %4, align 8, !tbaa !41
  %112 = getelementptr inbounds nuw %struct.Rule, ptr %111, i32 0, i32 6
  %113 = getelementptr inbounds nuw %struct.anon.5, ptr %112, i32 0, i32 0
  %114 = load i32, ptr %113, align 8, !tbaa !70
  %115 = add i32 %114, 1
  store i32 %115, ptr %113, align 8, !tbaa !70
  %116 = zext i32 %114 to i64
  %117 = getelementptr inbounds nuw ptr, ptr %110, i64 %116
  store ptr %106, ptr %117, align 8, !tbaa !54
  br label %127

118:                                              ; preds = %96
  br label %119

119:                                              ; preds = %118, %95
  br label %120

120:                                              ; preds = %119
  %121 = load ptr, ptr %4, align 8, !tbaa !41
  %122 = getelementptr inbounds nuw %struct.Rule, ptr %121, i32 0, i32 6
  %123 = load ptr, ptr %3, align 8, !tbaa !10
  %124 = load ptr, ptr %4, align 8, !tbaa !41
  %125 = call ptr @new_elem_nterm(ptr noundef %123, ptr noundef %124)
  call void @vec_add_internal(ptr noundef %122, ptr noundef %125)
  br label %126

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %103, %80, %46
  br label %128

128:                                              ; preds = %127
  %129 = load ptr, ptr %4, align 8, !tbaa !41
  %130 = getelementptr inbounds nuw %struct.Rule, ptr %129, i32 0, i32 6
  %131 = getelementptr inbounds nuw %struct.anon.5, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !69
  %133 = icmp ne ptr %132, null
  br i1 %133, label %152, label %134

134:                                              ; preds = %128
  %135 = load ptr, ptr %5, align 8, !tbaa !54
  %136 = load ptr, ptr %4, align 8, !tbaa !41
  %137 = call ptr @dup_elem(ptr noundef %135, ptr noundef %136)
  %138 = load ptr, ptr %4, align 8, !tbaa !41
  %139 = getelementptr inbounds nuw %struct.Rule, ptr %138, i32 0, i32 6
  %140 = getelementptr inbounds nuw %struct.anon.5, ptr %139, i32 0, i32 3
  %141 = getelementptr inbounds [3 x ptr], ptr %140, i64 0, i64 0
  %142 = load ptr, ptr %4, align 8, !tbaa !41
  %143 = getelementptr inbounds nuw %struct.Rule, ptr %142, i32 0, i32 6
  %144 = getelementptr inbounds nuw %struct.anon.5, ptr %143, i32 0, i32 2
  store ptr %141, ptr %144, align 8, !tbaa !69
  %145 = load ptr, ptr %4, align 8, !tbaa !41
  %146 = getelementptr inbounds nuw %struct.Rule, ptr %145, i32 0, i32 6
  %147 = getelementptr inbounds nuw %struct.anon.5, ptr %146, i32 0, i32 0
  %148 = load i32, ptr %147, align 8, !tbaa !70
  %149 = add i32 %148, 1
  store i32 %149, ptr %147, align 8, !tbaa !70
  %150 = zext i32 %148 to i64
  %151 = getelementptr inbounds nuw ptr, ptr %141, i64 %150
  store ptr %137, ptr %151, align 8, !tbaa !54
  br label %215

152:                                              ; preds = %128
  %153 = load ptr, ptr %4, align 8, !tbaa !41
  %154 = getelementptr inbounds nuw %struct.Rule, ptr %153, i32 0, i32 6
  %155 = getelementptr inbounds nuw %struct.anon.5, ptr %154, i32 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !69
  %157 = load ptr, ptr %4, align 8, !tbaa !41
  %158 = getelementptr inbounds nuw %struct.Rule, ptr %157, i32 0, i32 6
  %159 = getelementptr inbounds nuw %struct.anon.5, ptr %158, i32 0, i32 3
  %160 = getelementptr inbounds [3 x ptr], ptr %159, i64 0, i64 0
  %161 = icmp eq ptr %156, %160
  br i1 %161, label %162, label %184

162:                                              ; preds = %152
  %163 = load ptr, ptr %4, align 8, !tbaa !41
  %164 = getelementptr inbounds nuw %struct.Rule, ptr %163, i32 0, i32 6
  %165 = getelementptr inbounds nuw %struct.anon.5, ptr %164, i32 0, i32 0
  %166 = load i32, ptr %165, align 8, !tbaa !70
  %167 = icmp ult i32 %166, 3
  br i1 %167, label %168, label %183

168:                                              ; preds = %162
  %169 = load ptr, ptr %5, align 8, !tbaa !54
  %170 = load ptr, ptr %4, align 8, !tbaa !41
  %171 = call ptr @dup_elem(ptr noundef %169, ptr noundef %170)
  %172 = load ptr, ptr %4, align 8, !tbaa !41
  %173 = getelementptr inbounds nuw %struct.Rule, ptr %172, i32 0, i32 6
  %174 = getelementptr inbounds nuw %struct.anon.5, ptr %173, i32 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !69
  %176 = load ptr, ptr %4, align 8, !tbaa !41
  %177 = getelementptr inbounds nuw %struct.Rule, ptr %176, i32 0, i32 6
  %178 = getelementptr inbounds nuw %struct.anon.5, ptr %177, i32 0, i32 0
  %179 = load i32, ptr %178, align 8, !tbaa !70
  %180 = add i32 %179, 1
  store i32 %180, ptr %178, align 8, !tbaa !70
  %181 = zext i32 %179 to i64
  %182 = getelementptr inbounds nuw ptr, ptr %175, i64 %181
  store ptr %171, ptr %182, align 8, !tbaa !54
  br label %215

183:                                              ; preds = %162
  br label %207

184:                                              ; preds = %152
  %185 = load ptr, ptr %4, align 8, !tbaa !41
  %186 = getelementptr inbounds nuw %struct.Rule, ptr %185, i32 0, i32 6
  %187 = getelementptr inbounds nuw %struct.anon.5, ptr %186, i32 0, i32 0
  %188 = load i32, ptr %187, align 8, !tbaa !70
  %189 = and i32 %188, 7
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %206

191:                                              ; preds = %184
  %192 = load ptr, ptr %5, align 8, !tbaa !54
  %193 = load ptr, ptr %4, align 8, !tbaa !41
  %194 = call ptr @dup_elem(ptr noundef %192, ptr noundef %193)
  %195 = load ptr, ptr %4, align 8, !tbaa !41
  %196 = getelementptr inbounds nuw %struct.Rule, ptr %195, i32 0, i32 6
  %197 = getelementptr inbounds nuw %struct.anon.5, ptr %196, i32 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !69
  %199 = load ptr, ptr %4, align 8, !tbaa !41
  %200 = getelementptr inbounds nuw %struct.Rule, ptr %199, i32 0, i32 6
  %201 = getelementptr inbounds nuw %struct.anon.5, ptr %200, i32 0, i32 0
  %202 = load i32, ptr %201, align 8, !tbaa !70
  %203 = add i32 %202, 1
  store i32 %203, ptr %201, align 8, !tbaa !70
  %204 = zext i32 %202 to i64
  %205 = getelementptr inbounds nuw ptr, ptr %198, i64 %204
  store ptr %194, ptr %205, align 8, !tbaa !54
  br label %215

206:                                              ; preds = %184
  br label %207

207:                                              ; preds = %206, %183
  br label %208

208:                                              ; preds = %207
  %209 = load ptr, ptr %4, align 8, !tbaa !41
  %210 = getelementptr inbounds nuw %struct.Rule, ptr %209, i32 0, i32 6
  %211 = load ptr, ptr %5, align 8, !tbaa !54
  %212 = load ptr, ptr %4, align 8, !tbaa !41
  %213 = call ptr @dup_elem(ptr noundef %211, ptr noundef %212)
  call void @vec_add_internal(ptr noundef %210, ptr noundef %213)
  br label %214

214:                                              ; preds = %208
  br label %215

215:                                              ; preds = %214, %191, %168, %134
  %216 = load ptr, ptr %3, align 8, !tbaa !10
  %217 = load ptr, ptr %2, align 8, !tbaa !3
  %218 = getelementptr inbounds nuw %struct.Grammar, ptr %217, i32 0, i32 24
  %219 = load ptr, ptr %218, align 8, !tbaa !107
  %220 = call ptr @new_elem_nterm(ptr noundef %216, ptr noundef %219)
  %221 = load ptr, ptr %2, align 8, !tbaa !3
  %222 = getelementptr inbounds nuw %struct.Grammar, ptr %221, i32 0, i32 24
  %223 = load ptr, ptr %222, align 8, !tbaa !107
  %224 = getelementptr inbounds nuw %struct.Rule, ptr %223, i32 0, i32 6
  %225 = getelementptr inbounds nuw %struct.anon.5, ptr %224, i32 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !69
  %227 = load ptr, ptr %2, align 8, !tbaa !3
  %228 = getelementptr inbounds nuw %struct.Grammar, ptr %227, i32 0, i32 24
  %229 = load ptr, ptr %228, align 8, !tbaa !107
  %230 = getelementptr inbounds nuw %struct.Rule, ptr %229, i32 0, i32 6
  %231 = getelementptr inbounds nuw %struct.anon.5, ptr %230, i32 0, i32 0
  %232 = load i32, ptr %231, align 8, !tbaa !70
  %233 = sub i32 %232, 1
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds nuw ptr, ptr %226, i64 %234
  store ptr %220, ptr %235, align 8, !tbaa !54
  br label %449

236:                                              ; preds = %1
  %237 = load ptr, ptr %2, align 8, !tbaa !3
  %238 = getelementptr inbounds nuw %struct.Grammar, ptr %237, i32 0, i32 24
  %239 = load ptr, ptr %238, align 8, !tbaa !107
  %240 = getelementptr inbounds nuw %struct.Rule, ptr %239, i32 0, i32 6
  %241 = getelementptr inbounds nuw %struct.anon.5, ptr %240, i32 0, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !69
  %243 = load ptr, ptr %2, align 8, !tbaa !3
  %244 = getelementptr inbounds nuw %struct.Grammar, ptr %243, i32 0, i32 24
  %245 = load ptr, ptr %244, align 8, !tbaa !107
  %246 = getelementptr inbounds nuw %struct.Rule, ptr %245, i32 0, i32 6
  %247 = getelementptr inbounds nuw %struct.anon.5, ptr %246, i32 0, i32 0
  %248 = load i32, ptr %247, align 8, !tbaa !70
  %249 = sub i32 %248, 1
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds nuw ptr, ptr %242, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !54
  store ptr %252, ptr %5, align 8, !tbaa !54
  br label %253

253:                                              ; preds = %236
  %254 = load ptr, ptr %4, align 8, !tbaa !41
  %255 = getelementptr inbounds nuw %struct.Rule, ptr %254, i32 0, i32 6
  %256 = getelementptr inbounds nuw %struct.anon.5, ptr %255, i32 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !69
  %258 = icmp ne ptr %257, null
  br i1 %258, label %277, label %259

259:                                              ; preds = %253
  %260 = load ptr, ptr %5, align 8, !tbaa !54
  %261 = load ptr, ptr %4, align 8, !tbaa !41
  %262 = call ptr @dup_elem(ptr noundef %260, ptr noundef %261)
  %263 = load ptr, ptr %4, align 8, !tbaa !41
  %264 = getelementptr inbounds nuw %struct.Rule, ptr %263, i32 0, i32 6
  %265 = getelementptr inbounds nuw %struct.anon.5, ptr %264, i32 0, i32 3
  %266 = getelementptr inbounds [3 x ptr], ptr %265, i64 0, i64 0
  %267 = load ptr, ptr %4, align 8, !tbaa !41
  %268 = getelementptr inbounds nuw %struct.Rule, ptr %267, i32 0, i32 6
  %269 = getelementptr inbounds nuw %struct.anon.5, ptr %268, i32 0, i32 2
  store ptr %266, ptr %269, align 8, !tbaa !69
  %270 = load ptr, ptr %4, align 8, !tbaa !41
  %271 = getelementptr inbounds nuw %struct.Rule, ptr %270, i32 0, i32 6
  %272 = getelementptr inbounds nuw %struct.anon.5, ptr %271, i32 0, i32 0
  %273 = load i32, ptr %272, align 8, !tbaa !70
  %274 = add i32 %273, 1
  store i32 %274, ptr %272, align 8, !tbaa !70
  %275 = zext i32 %273 to i64
  %276 = getelementptr inbounds nuw ptr, ptr %266, i64 %275
  store ptr %262, ptr %276, align 8, !tbaa !54
  br label %340

277:                                              ; preds = %253
  %278 = load ptr, ptr %4, align 8, !tbaa !41
  %279 = getelementptr inbounds nuw %struct.Rule, ptr %278, i32 0, i32 6
  %280 = getelementptr inbounds nuw %struct.anon.5, ptr %279, i32 0, i32 2
  %281 = load ptr, ptr %280, align 8, !tbaa !69
  %282 = load ptr, ptr %4, align 8, !tbaa !41
  %283 = getelementptr inbounds nuw %struct.Rule, ptr %282, i32 0, i32 6
  %284 = getelementptr inbounds nuw %struct.anon.5, ptr %283, i32 0, i32 3
  %285 = getelementptr inbounds [3 x ptr], ptr %284, i64 0, i64 0
  %286 = icmp eq ptr %281, %285
  br i1 %286, label %287, label %309

287:                                              ; preds = %277
  %288 = load ptr, ptr %4, align 8, !tbaa !41
  %289 = getelementptr inbounds nuw %struct.Rule, ptr %288, i32 0, i32 6
  %290 = getelementptr inbounds nuw %struct.anon.5, ptr %289, i32 0, i32 0
  %291 = load i32, ptr %290, align 8, !tbaa !70
  %292 = icmp ult i32 %291, 3
  br i1 %292, label %293, label %308

293:                                              ; preds = %287
  %294 = load ptr, ptr %5, align 8, !tbaa !54
  %295 = load ptr, ptr %4, align 8, !tbaa !41
  %296 = call ptr @dup_elem(ptr noundef %294, ptr noundef %295)
  %297 = load ptr, ptr %4, align 8, !tbaa !41
  %298 = getelementptr inbounds nuw %struct.Rule, ptr %297, i32 0, i32 6
  %299 = getelementptr inbounds nuw %struct.anon.5, ptr %298, i32 0, i32 2
  %300 = load ptr, ptr %299, align 8, !tbaa !69
  %301 = load ptr, ptr %4, align 8, !tbaa !41
  %302 = getelementptr inbounds nuw %struct.Rule, ptr %301, i32 0, i32 6
  %303 = getelementptr inbounds nuw %struct.anon.5, ptr %302, i32 0, i32 0
  %304 = load i32, ptr %303, align 8, !tbaa !70
  %305 = add i32 %304, 1
  store i32 %305, ptr %303, align 8, !tbaa !70
  %306 = zext i32 %304 to i64
  %307 = getelementptr inbounds nuw ptr, ptr %300, i64 %306
  store ptr %296, ptr %307, align 8, !tbaa !54
  br label %340

308:                                              ; preds = %287
  br label %332

309:                                              ; preds = %277
  %310 = load ptr, ptr %4, align 8, !tbaa !41
  %311 = getelementptr inbounds nuw %struct.Rule, ptr %310, i32 0, i32 6
  %312 = getelementptr inbounds nuw %struct.anon.5, ptr %311, i32 0, i32 0
  %313 = load i32, ptr %312, align 8, !tbaa !70
  %314 = and i32 %313, 7
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %331

316:                                              ; preds = %309
  %317 = load ptr, ptr %5, align 8, !tbaa !54
  %318 = load ptr, ptr %4, align 8, !tbaa !41
  %319 = call ptr @dup_elem(ptr noundef %317, ptr noundef %318)
  %320 = load ptr, ptr %4, align 8, !tbaa !41
  %321 = getelementptr inbounds nuw %struct.Rule, ptr %320, i32 0, i32 6
  %322 = getelementptr inbounds nuw %struct.anon.5, ptr %321, i32 0, i32 2
  %323 = load ptr, ptr %322, align 8, !tbaa !69
  %324 = load ptr, ptr %4, align 8, !tbaa !41
  %325 = getelementptr inbounds nuw %struct.Rule, ptr %324, i32 0, i32 6
  %326 = getelementptr inbounds nuw %struct.anon.5, ptr %325, i32 0, i32 0
  %327 = load i32, ptr %326, align 8, !tbaa !70
  %328 = add i32 %327, 1
  store i32 %328, ptr %326, align 8, !tbaa !70
  %329 = zext i32 %327 to i64
  %330 = getelementptr inbounds nuw ptr, ptr %323, i64 %329
  store ptr %319, ptr %330, align 8, !tbaa !54
  br label %340

331:                                              ; preds = %309
  br label %332

332:                                              ; preds = %331, %308
  br label %333

333:                                              ; preds = %332
  %334 = load ptr, ptr %4, align 8, !tbaa !41
  %335 = getelementptr inbounds nuw %struct.Rule, ptr %334, i32 0, i32 6
  %336 = load ptr, ptr %5, align 8, !tbaa !54
  %337 = load ptr, ptr %4, align 8, !tbaa !41
  %338 = call ptr @dup_elem(ptr noundef %336, ptr noundef %337)
  call void @vec_add_internal(ptr noundef %335, ptr noundef %338)
  br label %339

339:                                              ; preds = %333
  br label %340

340:                                              ; preds = %339, %316, %293, %259
  %341 = load ptr, ptr %3, align 8, !tbaa !10
  %342 = load ptr, ptr %2, align 8, !tbaa !3
  %343 = getelementptr inbounds nuw %struct.Grammar, ptr %342, i32 0, i32 24
  %344 = load ptr, ptr %343, align 8, !tbaa !107
  %345 = call ptr @new_elem_nterm(ptr noundef %341, ptr noundef %344)
  %346 = load ptr, ptr %2, align 8, !tbaa !3
  %347 = getelementptr inbounds nuw %struct.Grammar, ptr %346, i32 0, i32 24
  %348 = load ptr, ptr %347, align 8, !tbaa !107
  %349 = getelementptr inbounds nuw %struct.Rule, ptr %348, i32 0, i32 6
  %350 = getelementptr inbounds nuw %struct.anon.5, ptr %349, i32 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !69
  %352 = load ptr, ptr %2, align 8, !tbaa !3
  %353 = getelementptr inbounds nuw %struct.Grammar, ptr %352, i32 0, i32 24
  %354 = load ptr, ptr %353, align 8, !tbaa !107
  %355 = getelementptr inbounds nuw %struct.Rule, ptr %354, i32 0, i32 6
  %356 = getelementptr inbounds nuw %struct.anon.5, ptr %355, i32 0, i32 0
  %357 = load i32, ptr %356, align 8, !tbaa !70
  %358 = sub i32 %357, 1
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds nuw ptr, ptr %351, i64 %359
  store ptr %345, ptr %360, align 8, !tbaa !54
  br label %361

361:                                              ; preds = %340
  %362 = load ptr, ptr %4, align 8, !tbaa !41
  %363 = getelementptr inbounds nuw %struct.Rule, ptr %362, i32 0, i32 6
  %364 = getelementptr inbounds nuw %struct.anon.5, ptr %363, i32 0, i32 2
  %365 = load ptr, ptr %364, align 8, !tbaa !69
  %366 = icmp ne ptr %365, null
  br i1 %366, label %385, label %367

367:                                              ; preds = %361
  %368 = load ptr, ptr %3, align 8, !tbaa !10
  %369 = load ptr, ptr %4, align 8, !tbaa !41
  %370 = call ptr @new_elem_nterm(ptr noundef %368, ptr noundef %369)
  %371 = load ptr, ptr %4, align 8, !tbaa !41
  %372 = getelementptr inbounds nuw %struct.Rule, ptr %371, i32 0, i32 6
  %373 = getelementptr inbounds nuw %struct.anon.5, ptr %372, i32 0, i32 3
  %374 = getelementptr inbounds [3 x ptr], ptr %373, i64 0, i64 0
  %375 = load ptr, ptr %4, align 8, !tbaa !41
  %376 = getelementptr inbounds nuw %struct.Rule, ptr %375, i32 0, i32 6
  %377 = getelementptr inbounds nuw %struct.anon.5, ptr %376, i32 0, i32 2
  store ptr %374, ptr %377, align 8, !tbaa !69
  %378 = load ptr, ptr %4, align 8, !tbaa !41
  %379 = getelementptr inbounds nuw %struct.Rule, ptr %378, i32 0, i32 6
  %380 = getelementptr inbounds nuw %struct.anon.5, ptr %379, i32 0, i32 0
  %381 = load i32, ptr %380, align 8, !tbaa !70
  %382 = add i32 %381, 1
  store i32 %382, ptr %380, align 8, !tbaa !70
  %383 = zext i32 %381 to i64
  %384 = getelementptr inbounds nuw ptr, ptr %374, i64 %383
  store ptr %370, ptr %384, align 8, !tbaa !54
  br label %448

385:                                              ; preds = %361
  %386 = load ptr, ptr %4, align 8, !tbaa !41
  %387 = getelementptr inbounds nuw %struct.Rule, ptr %386, i32 0, i32 6
  %388 = getelementptr inbounds nuw %struct.anon.5, ptr %387, i32 0, i32 2
  %389 = load ptr, ptr %388, align 8, !tbaa !69
  %390 = load ptr, ptr %4, align 8, !tbaa !41
  %391 = getelementptr inbounds nuw %struct.Rule, ptr %390, i32 0, i32 6
  %392 = getelementptr inbounds nuw %struct.anon.5, ptr %391, i32 0, i32 3
  %393 = getelementptr inbounds [3 x ptr], ptr %392, i64 0, i64 0
  %394 = icmp eq ptr %389, %393
  br i1 %394, label %395, label %417

395:                                              ; preds = %385
  %396 = load ptr, ptr %4, align 8, !tbaa !41
  %397 = getelementptr inbounds nuw %struct.Rule, ptr %396, i32 0, i32 6
  %398 = getelementptr inbounds nuw %struct.anon.5, ptr %397, i32 0, i32 0
  %399 = load i32, ptr %398, align 8, !tbaa !70
  %400 = icmp ult i32 %399, 3
  br i1 %400, label %401, label %416

401:                                              ; preds = %395
  %402 = load ptr, ptr %3, align 8, !tbaa !10
  %403 = load ptr, ptr %4, align 8, !tbaa !41
  %404 = call ptr @new_elem_nterm(ptr noundef %402, ptr noundef %403)
  %405 = load ptr, ptr %4, align 8, !tbaa !41
  %406 = getelementptr inbounds nuw %struct.Rule, ptr %405, i32 0, i32 6
  %407 = getelementptr inbounds nuw %struct.anon.5, ptr %406, i32 0, i32 2
  %408 = load ptr, ptr %407, align 8, !tbaa !69
  %409 = load ptr, ptr %4, align 8, !tbaa !41
  %410 = getelementptr inbounds nuw %struct.Rule, ptr %409, i32 0, i32 6
  %411 = getelementptr inbounds nuw %struct.anon.5, ptr %410, i32 0, i32 0
  %412 = load i32, ptr %411, align 8, !tbaa !70
  %413 = add i32 %412, 1
  store i32 %413, ptr %411, align 8, !tbaa !70
  %414 = zext i32 %412 to i64
  %415 = getelementptr inbounds nuw ptr, ptr %408, i64 %414
  store ptr %404, ptr %415, align 8, !tbaa !54
  br label %448

416:                                              ; preds = %395
  br label %440

417:                                              ; preds = %385
  %418 = load ptr, ptr %4, align 8, !tbaa !41
  %419 = getelementptr inbounds nuw %struct.Rule, ptr %418, i32 0, i32 6
  %420 = getelementptr inbounds nuw %struct.anon.5, ptr %419, i32 0, i32 0
  %421 = load i32, ptr %420, align 8, !tbaa !70
  %422 = and i32 %421, 7
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %439

424:                                              ; preds = %417
  %425 = load ptr, ptr %3, align 8, !tbaa !10
  %426 = load ptr, ptr %4, align 8, !tbaa !41
  %427 = call ptr @new_elem_nterm(ptr noundef %425, ptr noundef %426)
  %428 = load ptr, ptr %4, align 8, !tbaa !41
  %429 = getelementptr inbounds nuw %struct.Rule, ptr %428, i32 0, i32 6
  %430 = getelementptr inbounds nuw %struct.anon.5, ptr %429, i32 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !69
  %432 = load ptr, ptr %4, align 8, !tbaa !41
  %433 = getelementptr inbounds nuw %struct.Rule, ptr %432, i32 0, i32 6
  %434 = getelementptr inbounds nuw %struct.anon.5, ptr %433, i32 0, i32 0
  %435 = load i32, ptr %434, align 8, !tbaa !70
  %436 = add i32 %435, 1
  store i32 %436, ptr %434, align 8, !tbaa !70
  %437 = zext i32 %435 to i64
  %438 = getelementptr inbounds nuw ptr, ptr %431, i64 %437
  store ptr %427, ptr %438, align 8, !tbaa !54
  br label %448

439:                                              ; preds = %417
  br label %440

440:                                              ; preds = %439, %416
  br label %441

441:                                              ; preds = %440
  %442 = load ptr, ptr %4, align 8, !tbaa !41
  %443 = getelementptr inbounds nuw %struct.Rule, ptr %442, i32 0, i32 6
  %444 = load ptr, ptr %3, align 8, !tbaa !10
  %445 = load ptr, ptr %4, align 8, !tbaa !41
  %446 = call ptr @new_elem_nterm(ptr noundef %444, ptr noundef %445)
  call void @vec_add_internal(ptr noundef %443, ptr noundef %446)
  br label %447

447:                                              ; preds = %441
  br label %448

448:                                              ; preds = %447, %424, %401, %367
  br label %449

449:                                              ; preds = %448, %215
  br label %450

450:                                              ; preds = %449
  %451 = load ptr, ptr %3, align 8, !tbaa !10
  %452 = getelementptr inbounds nuw %struct.Production, ptr %451, i32 0, i32 2
  %453 = getelementptr inbounds nuw %struct.anon, ptr %452, i32 0, i32 2
  %454 = load ptr, ptr %453, align 8, !tbaa !108
  %455 = icmp ne ptr %454, null
  br i1 %455, label %472, label %456

456:                                              ; preds = %450
  %457 = load ptr, ptr %4, align 8, !tbaa !41
  %458 = load ptr, ptr %3, align 8, !tbaa !10
  %459 = getelementptr inbounds nuw %struct.Production, ptr %458, i32 0, i32 2
  %460 = getelementptr inbounds nuw %struct.anon, ptr %459, i32 0, i32 3
  %461 = getelementptr inbounds [3 x ptr], ptr %460, i64 0, i64 0
  %462 = load ptr, ptr %3, align 8, !tbaa !10
  %463 = getelementptr inbounds nuw %struct.Production, ptr %462, i32 0, i32 2
  %464 = getelementptr inbounds nuw %struct.anon, ptr %463, i32 0, i32 2
  store ptr %461, ptr %464, align 8, !tbaa !108
  %465 = load ptr, ptr %3, align 8, !tbaa !10
  %466 = getelementptr inbounds nuw %struct.Production, ptr %465, i32 0, i32 2
  %467 = getelementptr inbounds nuw %struct.anon, ptr %466, i32 0, i32 0
  %468 = load i32, ptr %467, align 8, !tbaa !109
  %469 = add i32 %468, 1
  store i32 %469, ptr %467, align 8, !tbaa !109
  %470 = zext i32 %468 to i64
  %471 = getelementptr inbounds nuw ptr, ptr %461, i64 %470
  store ptr %457, ptr %471, align 8, !tbaa !41
  br label %529

472:                                              ; preds = %450
  %473 = load ptr, ptr %3, align 8, !tbaa !10
  %474 = getelementptr inbounds nuw %struct.Production, ptr %473, i32 0, i32 2
  %475 = getelementptr inbounds nuw %struct.anon, ptr %474, i32 0, i32 2
  %476 = load ptr, ptr %475, align 8, !tbaa !108
  %477 = load ptr, ptr %3, align 8, !tbaa !10
  %478 = getelementptr inbounds nuw %struct.Production, ptr %477, i32 0, i32 2
  %479 = getelementptr inbounds nuw %struct.anon, ptr %478, i32 0, i32 3
  %480 = getelementptr inbounds [3 x ptr], ptr %479, i64 0, i64 0
  %481 = icmp eq ptr %476, %480
  br i1 %481, label %482, label %502

482:                                              ; preds = %472
  %483 = load ptr, ptr %3, align 8, !tbaa !10
  %484 = getelementptr inbounds nuw %struct.Production, ptr %483, i32 0, i32 2
  %485 = getelementptr inbounds nuw %struct.anon, ptr %484, i32 0, i32 0
  %486 = load i32, ptr %485, align 8, !tbaa !109
  %487 = icmp ult i32 %486, 3
  br i1 %487, label %488, label %501

488:                                              ; preds = %482
  %489 = load ptr, ptr %4, align 8, !tbaa !41
  %490 = load ptr, ptr %3, align 8, !tbaa !10
  %491 = getelementptr inbounds nuw %struct.Production, ptr %490, i32 0, i32 2
  %492 = getelementptr inbounds nuw %struct.anon, ptr %491, i32 0, i32 2
  %493 = load ptr, ptr %492, align 8, !tbaa !108
  %494 = load ptr, ptr %3, align 8, !tbaa !10
  %495 = getelementptr inbounds nuw %struct.Production, ptr %494, i32 0, i32 2
  %496 = getelementptr inbounds nuw %struct.anon, ptr %495, i32 0, i32 0
  %497 = load i32, ptr %496, align 8, !tbaa !109
  %498 = add i32 %497, 1
  store i32 %498, ptr %496, align 8, !tbaa !109
  %499 = zext i32 %497 to i64
  %500 = getelementptr inbounds nuw ptr, ptr %493, i64 %499
  store ptr %489, ptr %500, align 8, !tbaa !41
  br label %529

501:                                              ; preds = %482
  br label %523

502:                                              ; preds = %472
  %503 = load ptr, ptr %3, align 8, !tbaa !10
  %504 = getelementptr inbounds nuw %struct.Production, ptr %503, i32 0, i32 2
  %505 = getelementptr inbounds nuw %struct.anon, ptr %504, i32 0, i32 0
  %506 = load i32, ptr %505, align 8, !tbaa !109
  %507 = and i32 %506, 7
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %522

509:                                              ; preds = %502
  %510 = load ptr, ptr %4, align 8, !tbaa !41
  %511 = load ptr, ptr %3, align 8, !tbaa !10
  %512 = getelementptr inbounds nuw %struct.Production, ptr %511, i32 0, i32 2
  %513 = getelementptr inbounds nuw %struct.anon, ptr %512, i32 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !108
  %515 = load ptr, ptr %3, align 8, !tbaa !10
  %516 = getelementptr inbounds nuw %struct.Production, ptr %515, i32 0, i32 2
  %517 = getelementptr inbounds nuw %struct.anon, ptr %516, i32 0, i32 0
  %518 = load i32, ptr %517, align 8, !tbaa !109
  %519 = add i32 %518, 1
  store i32 %519, ptr %517, align 8, !tbaa !109
  %520 = zext i32 %518 to i64
  %521 = getelementptr inbounds nuw ptr, ptr %514, i64 %520
  store ptr %510, ptr %521, align 8, !tbaa !41
  br label %529

522:                                              ; preds = %502
  br label %523

523:                                              ; preds = %522, %501
  br label %524

524:                                              ; preds = %523
  %525 = load ptr, ptr %3, align 8, !tbaa !10
  %526 = getelementptr inbounds nuw %struct.Production, ptr %525, i32 0, i32 2
  %527 = load ptr, ptr %4, align 8, !tbaa !41
  call void @vec_add_internal(ptr noundef %526, ptr noundef %527)
  br label %528

528:                                              ; preds = %524
  br label %529

529:                                              ; preds = %528, %509, %488, %456
  %530 = load ptr, ptr %2, align 8, !tbaa !3
  %531 = load ptr, ptr %3, align 8, !tbaa !10
  %532 = call ptr @new_rule(ptr noundef %530, ptr noundef %531)
  store ptr %532, ptr %4, align 8, !tbaa !41
  br label %533

533:                                              ; preds = %529
  %534 = load ptr, ptr %4, align 8, !tbaa !41
  %535 = getelementptr inbounds nuw %struct.Rule, ptr %534, i32 0, i32 6
  %536 = getelementptr inbounds nuw %struct.anon.5, ptr %535, i32 0, i32 2
  %537 = load ptr, ptr %536, align 8, !tbaa !69
  %538 = icmp ne ptr %537, null
  br i1 %538, label %555, label %539

539:                                              ; preds = %533
  %540 = load ptr, ptr %5, align 8, !tbaa !54
  %541 = load ptr, ptr %4, align 8, !tbaa !41
  %542 = getelementptr inbounds nuw %struct.Rule, ptr %541, i32 0, i32 6
  %543 = getelementptr inbounds nuw %struct.anon.5, ptr %542, i32 0, i32 3
  %544 = getelementptr inbounds [3 x ptr], ptr %543, i64 0, i64 0
  %545 = load ptr, ptr %4, align 8, !tbaa !41
  %546 = getelementptr inbounds nuw %struct.Rule, ptr %545, i32 0, i32 6
  %547 = getelementptr inbounds nuw %struct.anon.5, ptr %546, i32 0, i32 2
  store ptr %544, ptr %547, align 8, !tbaa !69
  %548 = load ptr, ptr %4, align 8, !tbaa !41
  %549 = getelementptr inbounds nuw %struct.Rule, ptr %548, i32 0, i32 6
  %550 = getelementptr inbounds nuw %struct.anon.5, ptr %549, i32 0, i32 0
  %551 = load i32, ptr %550, align 8, !tbaa !70
  %552 = add i32 %551, 1
  store i32 %552, ptr %550, align 8, !tbaa !70
  %553 = zext i32 %551 to i64
  %554 = getelementptr inbounds nuw ptr, ptr %544, i64 %553
  store ptr %540, ptr %554, align 8, !tbaa !54
  br label %612

555:                                              ; preds = %533
  %556 = load ptr, ptr %4, align 8, !tbaa !41
  %557 = getelementptr inbounds nuw %struct.Rule, ptr %556, i32 0, i32 6
  %558 = getelementptr inbounds nuw %struct.anon.5, ptr %557, i32 0, i32 2
  %559 = load ptr, ptr %558, align 8, !tbaa !69
  %560 = load ptr, ptr %4, align 8, !tbaa !41
  %561 = getelementptr inbounds nuw %struct.Rule, ptr %560, i32 0, i32 6
  %562 = getelementptr inbounds nuw %struct.anon.5, ptr %561, i32 0, i32 3
  %563 = getelementptr inbounds [3 x ptr], ptr %562, i64 0, i64 0
  %564 = icmp eq ptr %559, %563
  br i1 %564, label %565, label %585

565:                                              ; preds = %555
  %566 = load ptr, ptr %4, align 8, !tbaa !41
  %567 = getelementptr inbounds nuw %struct.Rule, ptr %566, i32 0, i32 6
  %568 = getelementptr inbounds nuw %struct.anon.5, ptr %567, i32 0, i32 0
  %569 = load i32, ptr %568, align 8, !tbaa !70
  %570 = icmp ult i32 %569, 3
  br i1 %570, label %571, label %584

571:                                              ; preds = %565
  %572 = load ptr, ptr %5, align 8, !tbaa !54
  %573 = load ptr, ptr %4, align 8, !tbaa !41
  %574 = getelementptr inbounds nuw %struct.Rule, ptr %573, i32 0, i32 6
  %575 = getelementptr inbounds nuw %struct.anon.5, ptr %574, i32 0, i32 2
  %576 = load ptr, ptr %575, align 8, !tbaa !69
  %577 = load ptr, ptr %4, align 8, !tbaa !41
  %578 = getelementptr inbounds nuw %struct.Rule, ptr %577, i32 0, i32 6
  %579 = getelementptr inbounds nuw %struct.anon.5, ptr %578, i32 0, i32 0
  %580 = load i32, ptr %579, align 8, !tbaa !70
  %581 = add i32 %580, 1
  store i32 %581, ptr %579, align 8, !tbaa !70
  %582 = zext i32 %580 to i64
  %583 = getelementptr inbounds nuw ptr, ptr %576, i64 %582
  store ptr %572, ptr %583, align 8, !tbaa !54
  br label %612

584:                                              ; preds = %565
  br label %606

585:                                              ; preds = %555
  %586 = load ptr, ptr %4, align 8, !tbaa !41
  %587 = getelementptr inbounds nuw %struct.Rule, ptr %586, i32 0, i32 6
  %588 = getelementptr inbounds nuw %struct.anon.5, ptr %587, i32 0, i32 0
  %589 = load i32, ptr %588, align 8, !tbaa !70
  %590 = and i32 %589, 7
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %605

592:                                              ; preds = %585
  %593 = load ptr, ptr %5, align 8, !tbaa !54
  %594 = load ptr, ptr %4, align 8, !tbaa !41
  %595 = getelementptr inbounds nuw %struct.Rule, ptr %594, i32 0, i32 6
  %596 = getelementptr inbounds nuw %struct.anon.5, ptr %595, i32 0, i32 2
  %597 = load ptr, ptr %596, align 8, !tbaa !69
  %598 = load ptr, ptr %4, align 8, !tbaa !41
  %599 = getelementptr inbounds nuw %struct.Rule, ptr %598, i32 0, i32 6
  %600 = getelementptr inbounds nuw %struct.anon.5, ptr %599, i32 0, i32 0
  %601 = load i32, ptr %600, align 8, !tbaa !70
  %602 = add i32 %601, 1
  store i32 %602, ptr %600, align 8, !tbaa !70
  %603 = zext i32 %601 to i64
  %604 = getelementptr inbounds nuw ptr, ptr %597, i64 %603
  store ptr %593, ptr %604, align 8, !tbaa !54
  br label %612

605:                                              ; preds = %585
  br label %606

606:                                              ; preds = %605, %584
  br label %607

607:                                              ; preds = %606
  %608 = load ptr, ptr %4, align 8, !tbaa !41
  %609 = getelementptr inbounds nuw %struct.Rule, ptr %608, i32 0, i32 6
  %610 = load ptr, ptr %5, align 8, !tbaa !54
  call void @vec_add_internal(ptr noundef %609, ptr noundef %610)
  br label %611

611:                                              ; preds = %607
  br label %612

612:                                              ; preds = %611, %592, %571, %539
  %613 = load ptr, ptr %4, align 8, !tbaa !41
  %614 = load ptr, ptr %5, align 8, !tbaa !54
  %615 = getelementptr inbounds nuw %struct.Elem, ptr %614, i32 0, i32 2
  store ptr %613, ptr %615, align 8, !tbaa !51
  br label %616

616:                                              ; preds = %612
  %617 = load ptr, ptr %3, align 8, !tbaa !10
  %618 = getelementptr inbounds nuw %struct.Production, ptr %617, i32 0, i32 2
  %619 = getelementptr inbounds nuw %struct.anon, ptr %618, i32 0, i32 2
  %620 = load ptr, ptr %619, align 8, !tbaa !108
  %621 = icmp ne ptr %620, null
  br i1 %621, label %638, label %622

622:                                              ; preds = %616
  %623 = load ptr, ptr %4, align 8, !tbaa !41
  %624 = load ptr, ptr %3, align 8, !tbaa !10
  %625 = getelementptr inbounds nuw %struct.Production, ptr %624, i32 0, i32 2
  %626 = getelementptr inbounds nuw %struct.anon, ptr %625, i32 0, i32 3
  %627 = getelementptr inbounds [3 x ptr], ptr %626, i64 0, i64 0
  %628 = load ptr, ptr %3, align 8, !tbaa !10
  %629 = getelementptr inbounds nuw %struct.Production, ptr %628, i32 0, i32 2
  %630 = getelementptr inbounds nuw %struct.anon, ptr %629, i32 0, i32 2
  store ptr %627, ptr %630, align 8, !tbaa !108
  %631 = load ptr, ptr %3, align 8, !tbaa !10
  %632 = getelementptr inbounds nuw %struct.Production, ptr %631, i32 0, i32 2
  %633 = getelementptr inbounds nuw %struct.anon, ptr %632, i32 0, i32 0
  %634 = load i32, ptr %633, align 8, !tbaa !109
  %635 = add i32 %634, 1
  store i32 %635, ptr %633, align 8, !tbaa !109
  %636 = zext i32 %634 to i64
  %637 = getelementptr inbounds nuw ptr, ptr %627, i64 %636
  store ptr %623, ptr %637, align 8, !tbaa !41
  br label %695

638:                                              ; preds = %616
  %639 = load ptr, ptr %3, align 8, !tbaa !10
  %640 = getelementptr inbounds nuw %struct.Production, ptr %639, i32 0, i32 2
  %641 = getelementptr inbounds nuw %struct.anon, ptr %640, i32 0, i32 2
  %642 = load ptr, ptr %641, align 8, !tbaa !108
  %643 = load ptr, ptr %3, align 8, !tbaa !10
  %644 = getelementptr inbounds nuw %struct.Production, ptr %643, i32 0, i32 2
  %645 = getelementptr inbounds nuw %struct.anon, ptr %644, i32 0, i32 3
  %646 = getelementptr inbounds [3 x ptr], ptr %645, i64 0, i64 0
  %647 = icmp eq ptr %642, %646
  br i1 %647, label %648, label %668

648:                                              ; preds = %638
  %649 = load ptr, ptr %3, align 8, !tbaa !10
  %650 = getelementptr inbounds nuw %struct.Production, ptr %649, i32 0, i32 2
  %651 = getelementptr inbounds nuw %struct.anon, ptr %650, i32 0, i32 0
  %652 = load i32, ptr %651, align 8, !tbaa !109
  %653 = icmp ult i32 %652, 3
  br i1 %653, label %654, label %667

654:                                              ; preds = %648
  %655 = load ptr, ptr %4, align 8, !tbaa !41
  %656 = load ptr, ptr %3, align 8, !tbaa !10
  %657 = getelementptr inbounds nuw %struct.Production, ptr %656, i32 0, i32 2
  %658 = getelementptr inbounds nuw %struct.anon, ptr %657, i32 0, i32 2
  %659 = load ptr, ptr %658, align 8, !tbaa !108
  %660 = load ptr, ptr %3, align 8, !tbaa !10
  %661 = getelementptr inbounds nuw %struct.Production, ptr %660, i32 0, i32 2
  %662 = getelementptr inbounds nuw %struct.anon, ptr %661, i32 0, i32 0
  %663 = load i32, ptr %662, align 8, !tbaa !109
  %664 = add i32 %663, 1
  store i32 %664, ptr %662, align 8, !tbaa !109
  %665 = zext i32 %663 to i64
  %666 = getelementptr inbounds nuw ptr, ptr %659, i64 %665
  store ptr %655, ptr %666, align 8, !tbaa !41
  br label %695

667:                                              ; preds = %648
  br label %689

668:                                              ; preds = %638
  %669 = load ptr, ptr %3, align 8, !tbaa !10
  %670 = getelementptr inbounds nuw %struct.Production, ptr %669, i32 0, i32 2
  %671 = getelementptr inbounds nuw %struct.anon, ptr %670, i32 0, i32 0
  %672 = load i32, ptr %671, align 8, !tbaa !109
  %673 = and i32 %672, 7
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %688

675:                                              ; preds = %668
  %676 = load ptr, ptr %4, align 8, !tbaa !41
  %677 = load ptr, ptr %3, align 8, !tbaa !10
  %678 = getelementptr inbounds nuw %struct.Production, ptr %677, i32 0, i32 2
  %679 = getelementptr inbounds nuw %struct.anon, ptr %678, i32 0, i32 2
  %680 = load ptr, ptr %679, align 8, !tbaa !108
  %681 = load ptr, ptr %3, align 8, !tbaa !10
  %682 = getelementptr inbounds nuw %struct.Production, ptr %681, i32 0, i32 2
  %683 = getelementptr inbounds nuw %struct.anon, ptr %682, i32 0, i32 0
  %684 = load i32, ptr %683, align 8, !tbaa !109
  %685 = add i32 %684, 1
  store i32 %685, ptr %683, align 8, !tbaa !109
  %686 = zext i32 %684 to i64
  %687 = getelementptr inbounds nuw ptr, ptr %680, i64 %686
  store ptr %676, ptr %687, align 8, !tbaa !41
  br label %695

688:                                              ; preds = %668
  br label %689

689:                                              ; preds = %688, %667
  br label %690

690:                                              ; preds = %689
  %691 = load ptr, ptr %3, align 8, !tbaa !10
  %692 = getelementptr inbounds nuw %struct.Production, ptr %691, i32 0, i32 2
  %693 = load ptr, ptr %4, align 8, !tbaa !41
  call void @vec_add_internal(ptr noundef %692, ptr noundef %693)
  br label %694

694:                                              ; preds = %690
  br label %695

695:                                              ; preds = %694, %675, %654, %622
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define dso_local void @initialize_productions(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  %7 = call noalias ptr @strdup(ptr noundef @.str.6) #9
  %8 = call ptr @new_production(ptr noundef %6, ptr noundef %7)
  store ptr %8, ptr %4, align 8, !tbaa !10
  %9 = load ptr, ptr %4, align 8, !tbaa !10
  %10 = getelementptr inbounds nuw %struct.Production, ptr %9, i32 0, i32 4
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, -29
  %13 = or i8 %12, 4
  store i8 %13, ptr %10, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !3
  %15 = load ptr, ptr %4, align 8, !tbaa !10
  %16 = call ptr @new_rule(ptr noundef %14, ptr noundef %15)
  store ptr %16, ptr %5, align 8, !tbaa !41
  br label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr %5, align 8, !tbaa !41
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 6
  %20 = getelementptr inbounds nuw %struct.anon.5, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = icmp ne ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %5, align 8, !tbaa !41
  %25 = call ptr @new_elem_nterm(ptr noundef null, ptr noundef %24)
  %26 = load ptr, ptr %5, align 8, !tbaa !41
  %27 = getelementptr inbounds nuw %struct.Rule, ptr %26, i32 0, i32 6
  %28 = getelementptr inbounds nuw %struct.anon.5, ptr %27, i32 0, i32 3
  %29 = getelementptr inbounds [3 x ptr], ptr %28, i64 0, i64 0
  %30 = load ptr, ptr %5, align 8, !tbaa !41
  %31 = getelementptr inbounds nuw %struct.Rule, ptr %30, i32 0, i32 6
  %32 = getelementptr inbounds nuw %struct.anon.5, ptr %31, i32 0, i32 2
  store ptr %29, ptr %32, align 8, !tbaa !69
  %33 = load ptr, ptr %5, align 8, !tbaa !41
  %34 = getelementptr inbounds nuw %struct.Rule, ptr %33, i32 0, i32 6
  %35 = getelementptr inbounds nuw %struct.anon.5, ptr %34, i32 0, i32 0
  %36 = load i32, ptr %35, align 8, !tbaa !70
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 8, !tbaa !70
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds nuw ptr, ptr %29, i64 %38
  store ptr %25, ptr %39, align 8, !tbaa !54
  br label %100

40:                                               ; preds = %17
  %41 = load ptr, ptr %5, align 8, !tbaa !41
  %42 = getelementptr inbounds nuw %struct.Rule, ptr %41, i32 0, i32 6
  %43 = getelementptr inbounds nuw %struct.anon.5, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !69
  %45 = load ptr, ptr %5, align 8, !tbaa !41
  %46 = getelementptr inbounds nuw %struct.Rule, ptr %45, i32 0, i32 6
  %47 = getelementptr inbounds nuw %struct.anon.5, ptr %46, i32 0, i32 3
  %48 = getelementptr inbounds [3 x ptr], ptr %47, i64 0, i64 0
  %49 = icmp eq ptr %44, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %40
  %51 = load ptr, ptr %5, align 8, !tbaa !41
  %52 = getelementptr inbounds nuw %struct.Rule, ptr %51, i32 0, i32 6
  %53 = getelementptr inbounds nuw %struct.anon.5, ptr %52, i32 0, i32 0
  %54 = load i32, ptr %53, align 8, !tbaa !70
  %55 = icmp ult i32 %54, 3
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load ptr, ptr %5, align 8, !tbaa !41
  %58 = call ptr @new_elem_nterm(ptr noundef null, ptr noundef %57)
  %59 = load ptr, ptr %5, align 8, !tbaa !41
  %60 = getelementptr inbounds nuw %struct.Rule, ptr %59, i32 0, i32 6
  %61 = getelementptr inbounds nuw %struct.anon.5, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !69
  %63 = load ptr, ptr %5, align 8, !tbaa !41
  %64 = getelementptr inbounds nuw %struct.Rule, ptr %63, i32 0, i32 6
  %65 = getelementptr inbounds nuw %struct.anon.5, ptr %64, i32 0, i32 0
  %66 = load i32, ptr %65, align 8, !tbaa !70
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 8, !tbaa !70
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds nuw ptr, ptr %62, i64 %68
  store ptr %58, ptr %69, align 8, !tbaa !54
  br label %100

70:                                               ; preds = %50
  br label %93

71:                                               ; preds = %40
  %72 = load ptr, ptr %5, align 8, !tbaa !41
  %73 = getelementptr inbounds nuw %struct.Rule, ptr %72, i32 0, i32 6
  %74 = getelementptr inbounds nuw %struct.anon.5, ptr %73, i32 0, i32 0
  %75 = load i32, ptr %74, align 8, !tbaa !70
  %76 = and i32 %75, 7
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %71
  %79 = load ptr, ptr %5, align 8, !tbaa !41
  %80 = call ptr @new_elem_nterm(ptr noundef null, ptr noundef %79)
  %81 = load ptr, ptr %5, align 8, !tbaa !41
  %82 = getelementptr inbounds nuw %struct.Rule, ptr %81, i32 0, i32 6
  %83 = getelementptr inbounds nuw %struct.anon.5, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !69
  %85 = load ptr, ptr %5, align 8, !tbaa !41
  %86 = getelementptr inbounds nuw %struct.Rule, ptr %85, i32 0, i32 6
  %87 = getelementptr inbounds nuw %struct.anon.5, ptr %86, i32 0, i32 0
  %88 = load i32, ptr %87, align 8, !tbaa !70
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 8, !tbaa !70
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds nuw ptr, ptr %84, i64 %90
  store ptr %80, ptr %91, align 8, !tbaa !54
  br label %100

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92, %70
  br label %94

94:                                               ; preds = %93
  %95 = load ptr, ptr %5, align 8, !tbaa !41
  %96 = getelementptr inbounds nuw %struct.Rule, ptr %95, i32 0, i32 6
  %97 = load ptr, ptr %5, align 8, !tbaa !41
  %98 = call ptr @new_elem_nterm(ptr noundef null, ptr noundef %97)
  call void @vec_add_internal(ptr noundef %96, ptr noundef %98)
  br label %99

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %78, %56, %23
  br label %101

101:                                              ; preds = %100
  %102 = load ptr, ptr %4, align 8, !tbaa !10
  %103 = getelementptr inbounds nuw %struct.Production, ptr %102, i32 0, i32 2
  %104 = getelementptr inbounds nuw %struct.anon, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !108
  %106 = icmp ne ptr %105, null
  br i1 %106, label %123, label %107

107:                                              ; preds = %101
  %108 = load ptr, ptr %5, align 8, !tbaa !41
  %109 = load ptr, ptr %4, align 8, !tbaa !10
  %110 = getelementptr inbounds nuw %struct.Production, ptr %109, i32 0, i32 2
  %111 = getelementptr inbounds nuw %struct.anon, ptr %110, i32 0, i32 3
  %112 = getelementptr inbounds [3 x ptr], ptr %111, i64 0, i64 0
  %113 = load ptr, ptr %4, align 8, !tbaa !10
  %114 = getelementptr inbounds nuw %struct.Production, ptr %113, i32 0, i32 2
  %115 = getelementptr inbounds nuw %struct.anon, ptr %114, i32 0, i32 2
  store ptr %112, ptr %115, align 8, !tbaa !108
  %116 = load ptr, ptr %4, align 8, !tbaa !10
  %117 = getelementptr inbounds nuw %struct.Production, ptr %116, i32 0, i32 2
  %118 = getelementptr inbounds nuw %struct.anon, ptr %117, i32 0, i32 0
  %119 = load i32, ptr %118, align 8, !tbaa !109
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 8, !tbaa !109
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds nuw ptr, ptr %112, i64 %121
  store ptr %108, ptr %122, align 8, !tbaa !41
  br label %180

123:                                              ; preds = %101
  %124 = load ptr, ptr %4, align 8, !tbaa !10
  %125 = getelementptr inbounds nuw %struct.Production, ptr %124, i32 0, i32 2
  %126 = getelementptr inbounds nuw %struct.anon, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !108
  %128 = load ptr, ptr %4, align 8, !tbaa !10
  %129 = getelementptr inbounds nuw %struct.Production, ptr %128, i32 0, i32 2
  %130 = getelementptr inbounds nuw %struct.anon, ptr %129, i32 0, i32 3
  %131 = getelementptr inbounds [3 x ptr], ptr %130, i64 0, i64 0
  %132 = icmp eq ptr %127, %131
  br i1 %132, label %133, label %153

133:                                              ; preds = %123
  %134 = load ptr, ptr %4, align 8, !tbaa !10
  %135 = getelementptr inbounds nuw %struct.Production, ptr %134, i32 0, i32 2
  %136 = getelementptr inbounds nuw %struct.anon, ptr %135, i32 0, i32 0
  %137 = load i32, ptr %136, align 8, !tbaa !109
  %138 = icmp ult i32 %137, 3
  br i1 %138, label %139, label %152

139:                                              ; preds = %133
  %140 = load ptr, ptr %5, align 8, !tbaa !41
  %141 = load ptr, ptr %4, align 8, !tbaa !10
  %142 = getelementptr inbounds nuw %struct.Production, ptr %141, i32 0, i32 2
  %143 = getelementptr inbounds nuw %struct.anon, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !108
  %145 = load ptr, ptr %4, align 8, !tbaa !10
  %146 = getelementptr inbounds nuw %struct.Production, ptr %145, i32 0, i32 2
  %147 = getelementptr inbounds nuw %struct.anon, ptr %146, i32 0, i32 0
  %148 = load i32, ptr %147, align 8, !tbaa !109
  %149 = add i32 %148, 1
  store i32 %149, ptr %147, align 8, !tbaa !109
  %150 = zext i32 %148 to i64
  %151 = getelementptr inbounds nuw ptr, ptr %144, i64 %150
  store ptr %140, ptr %151, align 8, !tbaa !41
  br label %180

152:                                              ; preds = %133
  br label %174

153:                                              ; preds = %123
  %154 = load ptr, ptr %4, align 8, !tbaa !10
  %155 = getelementptr inbounds nuw %struct.Production, ptr %154, i32 0, i32 2
  %156 = getelementptr inbounds nuw %struct.anon, ptr %155, i32 0, i32 0
  %157 = load i32, ptr %156, align 8, !tbaa !109
  %158 = and i32 %157, 7
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %153
  %161 = load ptr, ptr %5, align 8, !tbaa !41
  %162 = load ptr, ptr %4, align 8, !tbaa !10
  %163 = getelementptr inbounds nuw %struct.Production, ptr %162, i32 0, i32 2
  %164 = getelementptr inbounds nuw %struct.anon, ptr %163, i32 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !108
  %166 = load ptr, ptr %4, align 8, !tbaa !10
  %167 = getelementptr inbounds nuw %struct.Production, ptr %166, i32 0, i32 2
  %168 = getelementptr inbounds nuw %struct.anon, ptr %167, i32 0, i32 0
  %169 = load i32, ptr %168, align 8, !tbaa !109
  %170 = add i32 %169, 1
  store i32 %170, ptr %168, align 8, !tbaa !109
  %171 = zext i32 %169 to i64
  %172 = getelementptr inbounds nuw ptr, ptr %165, i64 %171
  store ptr %161, ptr %172, align 8, !tbaa !41
  br label %180

173:                                              ; preds = %153
  br label %174

174:                                              ; preds = %173, %152
  br label %175

175:                                              ; preds = %174
  %176 = load ptr, ptr %4, align 8, !tbaa !10
  %177 = getelementptr inbounds nuw %struct.Production, ptr %176, i32 0, i32 2
  %178 = load ptr, ptr %5, align 8, !tbaa !41
  call void @vec_add_internal(ptr noundef %177, ptr noundef %178)
  br label %179

179:                                              ; preds = %175
  br label %180

180:                                              ; preds = %179, %160, %139, %107
  %181 = load ptr, ptr %2, align 8, !tbaa !3
  %182 = call noalias ptr @strdup(ptr noundef @.str.7) #9
  %183 = call ptr @new_production(ptr noundef %181, ptr noundef %182)
  store ptr %183, ptr %3, align 8, !tbaa !10
  %184 = load ptr, ptr %3, align 8, !tbaa !10
  %185 = getelementptr inbounds nuw %struct.Production, ptr %184, i32 0, i32 4
  %186 = load i8, ptr %185, align 4
  %187 = and i8 %186, -29
  %188 = or i8 %187, 4
  store i8 %188, ptr %185, align 4
  %189 = load ptr, ptr %3, align 8, !tbaa !10
  %190 = load ptr, ptr %5, align 8, !tbaa !41
  %191 = getelementptr inbounds nuw %struct.Rule, ptr %190, i32 0, i32 6
  %192 = getelementptr inbounds nuw %struct.anon.5, ptr %191, i32 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !69
  %194 = getelementptr inbounds ptr, ptr %193, i64 0
  %195 = load ptr, ptr %194, align 8, !tbaa !54
  %196 = getelementptr inbounds nuw %struct.Elem, ptr %195, i32 0, i32 3
  store ptr %189, ptr %196, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #0

; Function Attrs: nounwind
define dso_local void @finish_productions(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  %5 = load ptr, ptr %2, align 8, !tbaa !3
  %6 = getelementptr inbounds nuw %struct.Grammar, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds nuw %struct.anon.0, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  store ptr %10, ptr %3, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #9
  %11 = load ptr, ptr %2, align 8, !tbaa !3
  %12 = load ptr, ptr %2, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.Grammar, ptr %12, i32 0, i32 1
  %14 = getelementptr inbounds nuw %struct.anon.0, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = call ptr @new_rule(ptr noundef %11, ptr noundef %17)
  store ptr %18, ptr %4, align 8, !tbaa !41
  br label %19

19:                                               ; preds = %1
  %20 = load ptr, ptr %4, align 8, !tbaa !41
  %21 = getelementptr inbounds nuw %struct.Rule, ptr %20, i32 0, i32 6
  %22 = getelementptr inbounds nuw %struct.anon.5, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !69
  %24 = icmp ne ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %4, align 8, !tbaa !41
  %27 = call ptr @new_elem_nterm(ptr noundef null, ptr noundef %26)
  %28 = load ptr, ptr %4, align 8, !tbaa !41
  %29 = getelementptr inbounds nuw %struct.Rule, ptr %28, i32 0, i32 6
  %30 = getelementptr inbounds nuw %struct.anon.5, ptr %29, i32 0, i32 3
  %31 = getelementptr inbounds [3 x ptr], ptr %30, i64 0, i64 0
  %32 = load ptr, ptr %4, align 8, !tbaa !41
  %33 = getelementptr inbounds nuw %struct.Rule, ptr %32, i32 0, i32 6
  %34 = getelementptr inbounds nuw %struct.anon.5, ptr %33, i32 0, i32 2
  store ptr %31, ptr %34, align 8, !tbaa !69
  %35 = load ptr, ptr %4, align 8, !tbaa !41
  %36 = getelementptr inbounds nuw %struct.Rule, ptr %35, i32 0, i32 6
  %37 = getelementptr inbounds nuw %struct.anon.5, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 8, !tbaa !70
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 8, !tbaa !70
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds nuw ptr, ptr %31, i64 %40
  store ptr %27, ptr %41, align 8, !tbaa !54
  br label %102

42:                                               ; preds = %19
  %43 = load ptr, ptr %4, align 8, !tbaa !41
  %44 = getelementptr inbounds nuw %struct.Rule, ptr %43, i32 0, i32 6
  %45 = getelementptr inbounds nuw %struct.anon.5, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !69
  %47 = load ptr, ptr %4, align 8, !tbaa !41
  %48 = getelementptr inbounds nuw %struct.Rule, ptr %47, i32 0, i32 6
  %49 = getelementptr inbounds nuw %struct.anon.5, ptr %48, i32 0, i32 3
  %50 = getelementptr inbounds [3 x ptr], ptr %49, i64 0, i64 0
  %51 = icmp eq ptr %46, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %42
  %53 = load ptr, ptr %4, align 8, !tbaa !41
  %54 = getelementptr inbounds nuw %struct.Rule, ptr %53, i32 0, i32 6
  %55 = getelementptr inbounds nuw %struct.anon.5, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8, !tbaa !70
  %57 = icmp ult i32 %56, 3
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = load ptr, ptr %4, align 8, !tbaa !41
  %60 = call ptr @new_elem_nterm(ptr noundef null, ptr noundef %59)
  %61 = load ptr, ptr %4, align 8, !tbaa !41
  %62 = getelementptr inbounds nuw %struct.Rule, ptr %61, i32 0, i32 6
  %63 = getelementptr inbounds nuw %struct.anon.5, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !69
  %65 = load ptr, ptr %4, align 8, !tbaa !41
  %66 = getelementptr inbounds nuw %struct.Rule, ptr %65, i32 0, i32 6
  %67 = getelementptr inbounds nuw %struct.anon.5, ptr %66, i32 0, i32 0
  %68 = load i32, ptr %67, align 8, !tbaa !70
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 8, !tbaa !70
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds nuw ptr, ptr %64, i64 %70
  store ptr %60, ptr %71, align 8, !tbaa !54
  br label %102

72:                                               ; preds = %52
  br label %95

73:                                               ; preds = %42
  %74 = load ptr, ptr %4, align 8, !tbaa !41
  %75 = getelementptr inbounds nuw %struct.Rule, ptr %74, i32 0, i32 6
  %76 = getelementptr inbounds nuw %struct.anon.5, ptr %75, i32 0, i32 0
  %77 = load i32, ptr %76, align 8, !tbaa !70
  %78 = and i32 %77, 7
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %73
  %81 = load ptr, ptr %4, align 8, !tbaa !41
  %82 = call ptr @new_elem_nterm(ptr noundef null, ptr noundef %81)
  %83 = load ptr, ptr %4, align 8, !tbaa !41
  %84 = getelementptr inbounds nuw %struct.Rule, ptr %83, i32 0, i32 6
  %85 = getelementptr inbounds nuw %struct.anon.5, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !69
  %87 = load ptr, ptr %4, align 8, !tbaa !41
  %88 = getelementptr inbounds nuw %struct.Rule, ptr %87, i32 0, i32 6
  %89 = getelementptr inbounds nuw %struct.anon.5, ptr %88, i32 0, i32 0
  %90 = load i32, ptr %89, align 8, !tbaa !70
  %91 = add i32 %90, 1
  store i32 %91, ptr %89, align 8, !tbaa !70
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds nuw ptr, ptr %86, i64 %92
  store ptr %82, ptr %93, align 8, !tbaa !54
  br label %102

94:                                               ; preds = %73
  br label %95

95:                                               ; preds = %94, %72
  br label %96

96:                                               ; preds = %95
  %97 = load ptr, ptr %4, align 8, !tbaa !41
  %98 = getelementptr inbounds nuw %struct.Rule, ptr %97, i32 0, i32 6
  %99 = load ptr, ptr %4, align 8, !tbaa !41
  %100 = call ptr @new_elem_nterm(ptr noundef null, ptr noundef %99)
  call void @vec_add_internal(ptr noundef %98, ptr noundef %100)
  br label %101

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %80, %58, %25
  br label %103

103:                                              ; preds = %102
  %104 = load ptr, ptr %3, align 8, !tbaa !10
  %105 = getelementptr inbounds nuw %struct.Production, ptr %104, i32 0, i32 2
  %106 = getelementptr inbounds nuw %struct.anon, ptr %105, i32 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !108
  %108 = icmp ne ptr %107, null
  br i1 %108, label %125, label %109

109:                                              ; preds = %103
  %110 = load ptr, ptr %4, align 8, !tbaa !41
  %111 = load ptr, ptr %3, align 8, !tbaa !10
  %112 = getelementptr inbounds nuw %struct.Production, ptr %111, i32 0, i32 2
  %113 = getelementptr inbounds nuw %struct.anon, ptr %112, i32 0, i32 3
  %114 = getelementptr inbounds [3 x ptr], ptr %113, i64 0, i64 0
  %115 = load ptr, ptr %3, align 8, !tbaa !10
  %116 = getelementptr inbounds nuw %struct.Production, ptr %115, i32 0, i32 2
  %117 = getelementptr inbounds nuw %struct.anon, ptr %116, i32 0, i32 2
  store ptr %114, ptr %117, align 8, !tbaa !108
  %118 = load ptr, ptr %3, align 8, !tbaa !10
  %119 = getelementptr inbounds nuw %struct.Production, ptr %118, i32 0, i32 2
  %120 = getelementptr inbounds nuw %struct.anon, ptr %119, i32 0, i32 0
  %121 = load i32, ptr %120, align 8, !tbaa !109
  %122 = add i32 %121, 1
  store i32 %122, ptr %120, align 8, !tbaa !109
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds nuw ptr, ptr %114, i64 %123
  store ptr %110, ptr %124, align 8, !tbaa !41
  br label %182

125:                                              ; preds = %103
  %126 = load ptr, ptr %3, align 8, !tbaa !10
  %127 = getelementptr inbounds nuw %struct.Production, ptr %126, i32 0, i32 2
  %128 = getelementptr inbounds nuw %struct.anon, ptr %127, i32 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !108
  %130 = load ptr, ptr %3, align 8, !tbaa !10
  %131 = getelementptr inbounds nuw %struct.Production, ptr %130, i32 0, i32 2
  %132 = getelementptr inbounds nuw %struct.anon, ptr %131, i32 0, i32 3
  %133 = getelementptr inbounds [3 x ptr], ptr %132, i64 0, i64 0
  %134 = icmp eq ptr %129, %133
  br i1 %134, label %135, label %155

135:                                              ; preds = %125
  %136 = load ptr, ptr %3, align 8, !tbaa !10
  %137 = getelementptr inbounds nuw %struct.Production, ptr %136, i32 0, i32 2
  %138 = getelementptr inbounds nuw %struct.anon, ptr %137, i32 0, i32 0
  %139 = load i32, ptr %138, align 8, !tbaa !109
  %140 = icmp ult i32 %139, 3
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = load ptr, ptr %4, align 8, !tbaa !41
  %143 = load ptr, ptr %3, align 8, !tbaa !10
  %144 = getelementptr inbounds nuw %struct.Production, ptr %143, i32 0, i32 2
  %145 = getelementptr inbounds nuw %struct.anon, ptr %144, i32 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !108
  %147 = load ptr, ptr %3, align 8, !tbaa !10
  %148 = getelementptr inbounds nuw %struct.Production, ptr %147, i32 0, i32 2
  %149 = getelementptr inbounds nuw %struct.anon, ptr %148, i32 0, i32 0
  %150 = load i32, ptr %149, align 8, !tbaa !109
  %151 = add i32 %150, 1
  store i32 %151, ptr %149, align 8, !tbaa !109
  %152 = zext i32 %150 to i64
  %153 = getelementptr inbounds nuw ptr, ptr %146, i64 %152
  store ptr %142, ptr %153, align 8, !tbaa !41
  br label %182

154:                                              ; preds = %135
  br label %176

155:                                              ; preds = %125
  %156 = load ptr, ptr %3, align 8, !tbaa !10
  %157 = getelementptr inbounds nuw %struct.Production, ptr %156, i32 0, i32 2
  %158 = getelementptr inbounds nuw %struct.anon, ptr %157, i32 0, i32 0
  %159 = load i32, ptr %158, align 8, !tbaa !109
  %160 = and i32 %159, 7
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %155
  %163 = load ptr, ptr %4, align 8, !tbaa !41
  %164 = load ptr, ptr %3, align 8, !tbaa !10
  %165 = getelementptr inbounds nuw %struct.Production, ptr %164, i32 0, i32 2
  %166 = getelementptr inbounds nuw %struct.anon, ptr %165, i32 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !108
  %168 = load ptr, ptr %3, align 8, !tbaa !10
  %169 = getelementptr inbounds nuw %struct.Production, ptr %168, i32 0, i32 2
  %170 = getelementptr inbounds nuw %struct.anon, ptr %169, i32 0, i32 0
  %171 = load i32, ptr %170, align 8, !tbaa !109
  %172 = add i32 %171, 1
  store i32 %172, ptr %170, align 8, !tbaa !109
  %173 = zext i32 %171 to i64
  %174 = getelementptr inbounds nuw ptr, ptr %167, i64 %173
  store ptr %163, ptr %174, align 8, !tbaa !41
  br label %182

175:                                              ; preds = %155
  br label %176

176:                                              ; preds = %175, %154
  br label %177

177:                                              ; preds = %176
  %178 = load ptr, ptr %3, align 8, !tbaa !10
  %179 = getelementptr inbounds nuw %struct.Production, ptr %178, i32 0, i32 2
  %180 = load ptr, ptr %4, align 8, !tbaa !41
  call void @vec_add_internal(ptr noundef %179, ptr noundef %180)
  br label %181

181:                                              ; preds = %177
  br label %182

182:                                              ; preds = %181, %162, %141, %109
  %183 = load ptr, ptr %2, align 8, !tbaa !3
  %184 = getelementptr inbounds nuw %struct.Grammar, ptr %183, i32 0, i32 1
  %185 = getelementptr inbounds nuw %struct.anon.0, ptr %184, i32 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !12
  %187 = getelementptr inbounds ptr, ptr %186, i64 2
  %188 = load ptr, ptr %187, align 8, !tbaa !10
  %189 = load ptr, ptr %4, align 8, !tbaa !41
  %190 = getelementptr inbounds nuw %struct.Rule, ptr %189, i32 0, i32 6
  %191 = getelementptr inbounds nuw %struct.anon.5, ptr %190, i32 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !69
  %193 = getelementptr inbounds ptr, ptr %192, i64 0
  %194 = load ptr, ptr %193, align 8, !tbaa !54
  %195 = getelementptr inbounds nuw %struct.Elem, ptr %194, i32 0, i32 3
  store ptr %188, ptr %195, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define dso_local void @print_term(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  %4 = load ptr, ptr %2, align 8, !tbaa !59
  %5 = getelementptr inbounds nuw %struct.Term, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !tbaa !59
  %10 = getelementptr inbounds nuw %struct.Term, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = call ptr @escape_string(ptr noundef %11)
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi ptr [ %12, %8 ], [ null, %13 ]
  store ptr %15, ptr %3, align 8, !tbaa !8
  %16 = load ptr, ptr %2, align 8, !tbaa !59
  %17 = getelementptr inbounds nuw %struct.Term, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8, !tbaa !57
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load ptr, ptr %2, align 8, !tbaa !59
  %22 = getelementptr inbounds nuw %struct.Term, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load ptr, ptr %2, align 8, !tbaa !59
  %27 = getelementptr inbounds nuw %struct.Term, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  %29 = load i8, ptr %28, align 1, !tbaa !55
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25, %20
  %32 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %36

33:                                               ; preds = %25
  %34 = load ptr, ptr %3, align 8, !tbaa !8
  %35 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %34)
  br label %36

36:                                               ; preds = %33, %31
  br label %65

37:                                               ; preds = %14
  %38 = load ptr, ptr %2, align 8, !tbaa !59
  %39 = getelementptr inbounds nuw %struct.Term, ptr %38, i32 0, i32 0
  %40 = load i32, ptr %39, align 8, !tbaa !57
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load ptr, ptr %3, align 8, !tbaa !8
  %44 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %43)
  br label %64

45:                                               ; preds = %37
  %46 = load ptr, ptr %2, align 8, !tbaa !59
  %47 = getelementptr inbounds nuw %struct.Term, ptr %46, i32 0, i32 0
  %48 = load i32, ptr %47, align 8, !tbaa !57
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load ptr, ptr %3, align 8, !tbaa !8
  %52 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.11, ptr noundef %51)
  br label %63

53:                                               ; preds = %45
  %54 = load ptr, ptr %2, align 8, !tbaa !59
  %55 = getelementptr inbounds nuw %struct.Term, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8, !tbaa !57
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load ptr, ptr %3, align 8, !tbaa !8
  %60 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.12, ptr noundef %59)
  br label %62

61:                                               ; preds = %53
  call void (ptr, ...) @d_fail(ptr noundef @.str.13)
  br label %62

62:                                               ; preds = %61, %58
  br label %63

63:                                               ; preds = %62, %50
  br label %64

64:                                               ; preds = %63, %42
  br label %65

65:                                               ; preds = %64, %36
  %66 = load ptr, ptr %3, align 8, !tbaa !8
  %67 = icmp ne ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load ptr, ptr %3, align 8, !tbaa !8
  call void @free(ptr noundef %69) #9
  br label %70

70:                                               ; preds = %68, %65
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret void
}

declare ptr @escape_string(ptr noundef) #5

declare signext i32 @printf(ptr noundef, ...) #5

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind
define dso_local void @print_elem(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !54
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds nuw %struct.Elem, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !54
  %9 = getelementptr inbounds nuw %struct.Elem, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  call void @print_term(ptr noundef %10)
  br label %30

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8, !tbaa !54
  %13 = getelementptr inbounds nuw %struct.Elem, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8, !tbaa !49
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load ptr, ptr %2, align 8, !tbaa !54
  %18 = getelementptr inbounds nuw %struct.Elem, ptr %17, i32 0, i32 3
  %19 = getelementptr inbounds nuw %struct.Unresolved, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef %20)
  br label %29

22:                                               ; preds = %11
  %23 = load ptr, ptr %2, align 8, !tbaa !54
  %24 = getelementptr inbounds nuw %struct.Elem, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = getelementptr inbounds nuw %struct.Production, ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8, !tbaa !31
  %28 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef %27)
  br label %29

29:                                               ; preds = %22, %16
  br label %30

30:                                               ; preds = %29, %7
  ret void
}

; Function Attrs: nounwind
define dso_local void @print_rule(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  %4 = load ptr, ptr %2, align 8, !tbaa !41
  %5 = getelementptr inbounds nuw %struct.Rule, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds nuw %struct.Production, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.23, ptr noundef %8)
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i32, ptr %3, align 4, !tbaa !38
  %12 = load ptr, ptr %2, align 8, !tbaa !41
  %13 = getelementptr inbounds nuw %struct.Rule, ptr %12, i32 0, i32 6
  %14 = getelementptr inbounds nuw %struct.anon.5, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8, !tbaa !70
  %16 = icmp ult i32 %11, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = load ptr, ptr %2, align 8, !tbaa !41
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 6
  %20 = getelementptr inbounds nuw %struct.anon.5, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = load i32, ptr %3, align 4, !tbaa !38
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  call void @print_elem(ptr noundef %25)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, ptr %3, align 4, !tbaa !38
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %3, align 4, !tbaa !38
  br label %10, !llvm.loop !111

29:                                               ; preds = %10
  %30 = load ptr, ptr %2, align 8, !tbaa !41
  %31 = getelementptr inbounds nuw %struct.Rule, ptr %30, i32 0, i32 8
  %32 = getelementptr inbounds nuw %struct.Code, ptr %31, i32 0, i32 0
  %33 = load ptr, ptr %32, align 8, !tbaa !112
  %34 = icmp ne ptr %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load ptr, ptr %2, align 8, !tbaa !41
  %37 = getelementptr inbounds nuw %struct.Rule, ptr %36, i32 0, i32 8
  %38 = getelementptr inbounds nuw %struct.Code, ptr %37, i32 0, i32 0
  %39 = load ptr, ptr %38, align 8, !tbaa !112
  %40 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.24, ptr noundef %39)
  br label %41

41:                                               ; preds = %35, %29
  %42 = load ptr, ptr %2, align 8, !tbaa !41
  %43 = getelementptr inbounds nuw %struct.Rule, ptr %42, i32 0, i32 9
  %44 = getelementptr inbounds nuw %struct.Code, ptr %43, i32 0, i32 0
  %45 = load ptr, ptr %44, align 8, !tbaa !113
  %46 = icmp ne ptr %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load ptr, ptr %2, align 8, !tbaa !41
  %49 = getelementptr inbounds nuw %struct.Rule, ptr %48, i32 0, i32 9
  %50 = getelementptr inbounds nuw %struct.Code, ptr %49, i32 0, i32 0
  %51 = load ptr, ptr %50, align 8, !tbaa !113
  %52 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.25, ptr noundef %51)
  br label %53

53:                                               ; preds = %47, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define dso_local void @print_grammar(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  %9 = load ptr, ptr %2, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.Grammar, ptr %9, i32 0, i32 1
  %11 = getelementptr inbounds nuw %struct.anon.0, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8, !tbaa !30
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 1, ptr %8, align 4
  br label %188

15:                                               ; preds = %1
  %16 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.26)
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %17

17:                                               ; preds = %154, %15
  %18 = load i32, ptr %3, align 4, !tbaa !38
  %19 = load ptr, ptr %2, align 8, !tbaa !3
  %20 = getelementptr inbounds nuw %struct.Grammar, ptr %19, i32 0, i32 1
  %21 = getelementptr inbounds nuw %struct.anon.0, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8, !tbaa !30
  %23 = icmp ult i32 %18, %22
  br i1 %23, label %24, label %157

24:                                               ; preds = %17
  %25 = load ptr, ptr %2, align 8, !tbaa !3
  %26 = getelementptr inbounds nuw %struct.Grammar, ptr %25, i32 0, i32 1
  %27 = getelementptr inbounds nuw %struct.anon.0, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !12
  %29 = load i32, ptr %3, align 4, !tbaa !38
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !10
  store ptr %32, ptr %6, align 8, !tbaa !10
  %33 = load ptr, ptr %6, align 8, !tbaa !10
  %34 = getelementptr inbounds nuw %struct.Production, ptr %33, i32 0, i32 0
  %35 = load ptr, ptr %34, align 8, !tbaa !31
  %36 = load i32, ptr %3, align 4, !tbaa !38
  %37 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.27, ptr noundef %35, i32 noundef signext %36)
  store i32 0, ptr %4, align 4, !tbaa !38
  br label %38

38:                                               ; preds = %148, %24
  %39 = load i32, ptr %4, align 4, !tbaa !38
  %40 = load ptr, ptr %6, align 8, !tbaa !10
  %41 = getelementptr inbounds nuw %struct.Production, ptr %40, i32 0, i32 2
  %42 = getelementptr inbounds nuw %struct.anon, ptr %41, i32 0, i32 0
  %43 = load i32, ptr %42, align 8, !tbaa !109
  %44 = icmp ult i32 %39, %43
  br i1 %44, label %45, label %151

45:                                               ; preds = %38
  %46 = load ptr, ptr %6, align 8, !tbaa !10
  %47 = getelementptr inbounds nuw %struct.Production, ptr %46, i32 0, i32 2
  %48 = getelementptr inbounds nuw %struct.anon, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !108
  %50 = load i32, ptr %4, align 4, !tbaa !38
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds nuw ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !41
  store ptr %53, ptr %7, align 8, !tbaa !41
  %54 = load i32, ptr %4, align 4, !tbaa !38
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  %57 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.28)
  br label %60

58:                                               ; preds = %45
  %59 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.29)
  br label %60

60:                                               ; preds = %58, %56
  store i32 0, ptr %5, align 4, !tbaa !38
  br label %61

61:                                               ; preds = %77, %60
  %62 = load i32, ptr %5, align 4, !tbaa !38
  %63 = load ptr, ptr %7, align 8, !tbaa !41
  %64 = getelementptr inbounds nuw %struct.Rule, ptr %63, i32 0, i32 6
  %65 = getelementptr inbounds nuw %struct.anon.5, ptr %64, i32 0, i32 0
  %66 = load i32, ptr %65, align 8, !tbaa !70
  %67 = icmp ult i32 %62, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load ptr, ptr %7, align 8, !tbaa !41
  %70 = getelementptr inbounds nuw %struct.Rule, ptr %69, i32 0, i32 6
  %71 = getelementptr inbounds nuw %struct.anon.5, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !69
  %73 = load i32, ptr %5, align 4, !tbaa !38
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds nuw ptr, ptr %72, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !54
  call void @print_elem(ptr noundef %76)
  br label %77

77:                                               ; preds = %68
  %78 = load i32, ptr %5, align 4, !tbaa !38
  %79 = add i32 %78, 1
  store i32 %79, ptr %5, align 4, !tbaa !38
  br label %61, !llvm.loop !114

80:                                               ; preds = %61
  %81 = load ptr, ptr %7, align 8, !tbaa !41
  %82 = getelementptr inbounds nuw %struct.Rule, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !115
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load ptr, ptr %7, align 8, !tbaa !41
  %87 = getelementptr inbounds nuw %struct.Rule, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !115
  %89 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.30, i32 noundef signext %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load ptr, ptr %7, align 8, !tbaa !41
  %92 = getelementptr inbounds nuw %struct.Rule, ptr %91, i32 0, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !116
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load ptr, ptr %7, align 8, !tbaa !41
  %97 = getelementptr inbounds nuw %struct.Rule, ptr %96, i32 0, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !116
  %99 = call ptr @assoc_str(i32 noundef signext %98)
  %100 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef %99)
  br label %101

101:                                              ; preds = %95, %90
  %102 = load ptr, ptr %7, align 8, !tbaa !41
  %103 = getelementptr inbounds nuw %struct.Rule, ptr %102, i32 0, i32 4
  %104 = load i32, ptr %103, align 8, !tbaa !117
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load ptr, ptr %7, align 8, !tbaa !41
  %108 = getelementptr inbounds nuw %struct.Rule, ptr %107, i32 0, i32 4
  %109 = load i32, ptr %108, align 8, !tbaa !117
  %110 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.31, i32 noundef signext %109)
  br label %111

111:                                              ; preds = %106, %101
  %112 = load ptr, ptr %7, align 8, !tbaa !41
  %113 = getelementptr inbounds nuw %struct.Rule, ptr %112, i32 0, i32 5
  %114 = load i32, ptr %113, align 4, !tbaa !118
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load ptr, ptr %7, align 8, !tbaa !41
  %118 = getelementptr inbounds nuw %struct.Rule, ptr %117, i32 0, i32 5
  %119 = load i32, ptr %118, align 4, !tbaa !118
  %120 = call ptr @assoc_str(i32 noundef signext %119)
  %121 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef %120)
  br label %122

122:                                              ; preds = %116, %111
  %123 = load ptr, ptr %7, align 8, !tbaa !41
  %124 = getelementptr inbounds nuw %struct.Rule, ptr %123, i32 0, i32 8
  %125 = getelementptr inbounds nuw %struct.Code, ptr %124, i32 0, i32 0
  %126 = load ptr, ptr %125, align 8, !tbaa !112
  %127 = icmp ne ptr %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load ptr, ptr %7, align 8, !tbaa !41
  %130 = getelementptr inbounds nuw %struct.Rule, ptr %129, i32 0, i32 8
  %131 = getelementptr inbounds nuw %struct.Code, ptr %130, i32 0, i32 0
  %132 = load ptr, ptr %131, align 8, !tbaa !112
  %133 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef %132)
  br label %134

134:                                              ; preds = %128, %122
  %135 = load ptr, ptr %7, align 8, !tbaa !41
  %136 = getelementptr inbounds nuw %struct.Rule, ptr %135, i32 0, i32 9
  %137 = getelementptr inbounds nuw %struct.Code, ptr %136, i32 0, i32 0
  %138 = load ptr, ptr %137, align 8, !tbaa !113
  %139 = icmp ne ptr %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load ptr, ptr %7, align 8, !tbaa !41
  %142 = getelementptr inbounds nuw %struct.Rule, ptr %141, i32 0, i32 9
  %143 = getelementptr inbounds nuw %struct.Code, ptr %142, i32 0, i32 0
  %144 = load ptr, ptr %143, align 8, !tbaa !113
  %145 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef %144)
  br label %146

146:                                              ; preds = %140, %134
  %147 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.32)
  br label %148

148:                                              ; preds = %146
  %149 = load i32, ptr %4, align 4, !tbaa !38
  %150 = add i32 %149, 1
  store i32 %150, ptr %4, align 4, !tbaa !38
  br label %38, !llvm.loop !119

151:                                              ; preds = %38
  %152 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.33)
  %153 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.32)
  br label %154

154:                                              ; preds = %151
  %155 = load i32, ptr %3, align 4, !tbaa !38
  %156 = add i32 %155, 1
  store i32 %156, ptr %3, align 4, !tbaa !38
  br label %17, !llvm.loop !120

157:                                              ; preds = %17
  %158 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.34)
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %159

159:                                              ; preds = %183, %157
  %160 = load i32, ptr %3, align 4, !tbaa !38
  %161 = load ptr, ptr %2, align 8, !tbaa !3
  %162 = getelementptr inbounds nuw %struct.Grammar, ptr %161, i32 0, i32 2
  %163 = getelementptr inbounds nuw %struct.anon.1, ptr %162, i32 0, i32 0
  %164 = load i32, ptr %163, align 8, !tbaa !63
  %165 = icmp ult i32 %160, %164
  br i1 %165, label %166, label %186

166:                                              ; preds = %159
  %167 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.35)
  %168 = load ptr, ptr %2, align 8, !tbaa !3
  %169 = getelementptr inbounds nuw %struct.Grammar, ptr %168, i32 0, i32 2
  %170 = getelementptr inbounds nuw %struct.anon.1, ptr %169, i32 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !62
  %172 = load i32, ptr %3, align 4, !tbaa !38
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds nuw ptr, ptr %171, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !59
  call void @print_term(ptr noundef %175)
  %176 = load i32, ptr %3, align 4, !tbaa !38
  %177 = load ptr, ptr %2, align 8, !tbaa !3
  %178 = getelementptr inbounds nuw %struct.Grammar, ptr %177, i32 0, i32 1
  %179 = getelementptr inbounds nuw %struct.anon.0, ptr %178, i32 0, i32 0
  %180 = load i32, ptr %179, align 8, !tbaa !30
  %181 = add i32 %176, %180
  %182 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.36, i32 noundef signext %181)
  br label %183

183:                                              ; preds = %166
  %184 = load i32, ptr %3, align 4, !tbaa !38
  %185 = add i32 %184, 1
  store i32 %185, ptr %3, align 4, !tbaa !38
  br label %159, !llvm.loop !121

186:                                              ; preds = %159
  %187 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.32)
  store i32 0, ptr %8, align 4
  br label %188

188:                                              ; preds = %186, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  %189 = load i32, ptr %8, align 4
  switch i32 %189, label %191 [
    i32 0, label %190
    i32 1, label %190
  ]

190:                                              ; preds = %188, %188
  ret void

191:                                              ; preds = %188
  unreachable
}

; Function Attrs: nounwind
define internal ptr @assoc_str(i32 noundef signext %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  store i32 0, ptr %4, align 4, !tbaa !38
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, ptr %4, align 4, !tbaa !38
  %8 = sext i32 %7 to i64
  %9 = icmp ult i64 %8, 8
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load i32, ptr %3, align 4, !tbaa !38
  %12 = load i32, ptr %4, align 4, !tbaa !38
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x %struct.EnumStr], ptr @assoc_strings, i64 0, i64 %13
  %15 = getelementptr inbounds nuw %struct.EnumStr, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8, !tbaa !122
  %17 = icmp eq i32 %11, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load i32, ptr %4, align 4, !tbaa !38
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x %struct.EnumStr], ptr @assoc_strings, i64 0, i64 %20
  %22 = getelementptr inbounds nuw %struct.EnumStr, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !124
  store ptr %23, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %30

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %4, align 4, !tbaa !38
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %4, align 4, !tbaa !38
  br label %6, !llvm.loop !125

28:                                               ; preds = %6
  %29 = load ptr, ptr getelementptr inbounds nuw (%struct.EnumStr, ptr @assoc_strings, i32 0, i32 1), align 8, !tbaa !124
  store ptr %29, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %30

30:                                               ; preds = %28, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  %31 = load ptr, ptr %2, align 8
  ret ptr %31
}

; Function Attrs: nounwind
define dso_local void @print_states(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, ptr %3, align 4, !tbaa !38
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.Grammar, ptr %6, i32 0, i32 3
  %8 = getelementptr inbounds nuw %struct.anon.2, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = icmp ult i32 %5, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %4
  %12 = load ptr, ptr %2, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.Grammar, ptr %12, i32 0, i32 3
  %14 = getelementptr inbounds nuw %struct.anon.2, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !127
  %16 = load i32, ptr %3, align 4, !tbaa !38
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  call void @print_state(ptr noundef %19)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, ptr %3, align 4, !tbaa !38
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %3, align 4, !tbaa !38
  br label %4, !llvm.loop !129

23:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define internal void @print_state(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  store i32 0, ptr %4, align 4, !tbaa !38
  %7 = load ptr, ptr %2, align 8, !tbaa !128
  %8 = getelementptr inbounds nuw %struct.State, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8, !tbaa !130
  %10 = load ptr, ptr %2, align 8, !tbaa !128
  %11 = getelementptr inbounds nuw %struct.State, ptr %10, i32 0, i32 2
  %12 = getelementptr inbounds nuw %struct.anon.7, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !144
  %14 = load ptr, ptr %2, align 8, !tbaa !128
  %15 = getelementptr inbounds nuw %struct.State, ptr %14, i32 0, i32 10
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, ptr @.str.49, ptr @.str.50
  %22 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.48, i32 noundef signext %9, i32 noundef signext %13, ptr noundef %21)
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %23

23:                                               ; preds = %39, %1
  %24 = load i32, ptr %3, align 4, !tbaa !38
  %25 = load ptr, ptr %2, align 8, !tbaa !128
  %26 = getelementptr inbounds nuw %struct.State, ptr %25, i32 0, i32 2
  %27 = getelementptr inbounds nuw %struct.anon.7, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8, !tbaa !144
  %29 = icmp ult i32 %24, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load ptr, ptr %2, align 8, !tbaa !128
  %32 = getelementptr inbounds nuw %struct.State, ptr %31, i32 0, i32 2
  %33 = getelementptr inbounds nuw %struct.anon.7, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !145
  %35 = load i32, ptr %3, align 4, !tbaa !38
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  call void @print_item(ptr noundef %38)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, ptr %3, align 4, !tbaa !38
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %3, align 4, !tbaa !38
  br label %23, !llvm.loop !146

42:                                               ; preds = %23
  %43 = load ptr, ptr %2, align 8, !tbaa !128
  %44 = getelementptr inbounds nuw %struct.State, ptr %43, i32 0, i32 4
  %45 = getelementptr inbounds nuw %struct.VecGoto, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 8, !tbaa !147
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.51)
  br label %50

50:                                               ; preds = %48, %42
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %51

51:                                               ; preds = %83, %50
  %52 = load i32, ptr %3, align 4, !tbaa !38
  %53 = load ptr, ptr %2, align 8, !tbaa !128
  %54 = getelementptr inbounds nuw %struct.State, ptr %53, i32 0, i32 4
  %55 = getelementptr inbounds nuw %struct.VecGoto, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8, !tbaa !147
  %57 = icmp ult i32 %52, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %51
  %59 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.35)
  %60 = load ptr, ptr %2, align 8, !tbaa !128
  %61 = getelementptr inbounds nuw %struct.State, ptr %60, i32 0, i32 4
  %62 = getelementptr inbounds nuw %struct.VecGoto, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !148
  %64 = load i32, ptr %3, align 4, !tbaa !38
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %63, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !149
  %68 = getelementptr inbounds nuw %struct.Goto, ptr %67, i32 0, i32 0
  %69 = load ptr, ptr %68, align 8, !tbaa !151
  call void @print_elem(ptr noundef %69)
  %70 = load ptr, ptr %2, align 8, !tbaa !128
  %71 = getelementptr inbounds nuw %struct.State, ptr %70, i32 0, i32 4
  %72 = getelementptr inbounds nuw %struct.VecGoto, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !148
  %74 = load i32, ptr %3, align 4, !tbaa !38
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %73, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !149
  %78 = getelementptr inbounds nuw %struct.Goto, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !153
  %80 = getelementptr inbounds nuw %struct.State, ptr %79, i32 0, i32 0
  %81 = load i32, ptr %80, align 8, !tbaa !130
  %82 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.52, i32 noundef signext %81)
  br label %83

83:                                               ; preds = %58
  %84 = load i32, ptr %3, align 4, !tbaa !38
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %3, align 4, !tbaa !38
  br label %51, !llvm.loop !154

86:                                               ; preds = %51
  %87 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.53)
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %88

88:                                               ; preds = %115, %86
  %89 = load i32, ptr %3, align 4, !tbaa !38
  %90 = load ptr, ptr %2, align 8, !tbaa !128
  %91 = getelementptr inbounds nuw %struct.State, ptr %90, i32 0, i32 6
  %92 = getelementptr inbounds nuw %struct.VecAction, ptr %91, i32 0, i32 0
  %93 = load i32, ptr %92, align 8, !tbaa !155
  %94 = icmp ult i32 %89, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %96 = load ptr, ptr %2, align 8, !tbaa !128
  %97 = getelementptr inbounds nuw %struct.State, ptr %96, i32 0, i32 6
  %98 = getelementptr inbounds nuw %struct.VecAction, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !156
  %100 = load i32, ptr %3, align 4, !tbaa !38
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %99, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !157
  store ptr %103, ptr %5, align 8, !tbaa !157
  %104 = load ptr, ptr %5, align 8, !tbaa !157
  %105 = getelementptr inbounds nuw %struct.Action, ptr %104, i32 0, i32 0
  %106 = load i32, ptr %105, align 8, !tbaa !159
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds nuw [3 x ptr], ptr @action_types, i64 0, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !8
  %110 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.54, ptr noundef %109)
  %111 = load ptr, ptr %5, align 8, !tbaa !157
  %112 = getelementptr inbounds nuw %struct.Action, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !161
  call void @print_rule(ptr noundef %113)
  %114 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.32)
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  br label %115

115:                                              ; preds = %95
  %116 = load i32, ptr %3, align 4, !tbaa !38
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %3, align 4, !tbaa !38
  br label %88, !llvm.loop !162

118:                                              ; preds = %88
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %119

119:                                              ; preds = %158, %118
  %120 = load i32, ptr %3, align 4, !tbaa !38
  %121 = load ptr, ptr %2, align 8, !tbaa !128
  %122 = getelementptr inbounds nuw %struct.State, ptr %121, i32 0, i32 5
  %123 = getelementptr inbounds nuw %struct.VecAction, ptr %122, i32 0, i32 0
  %124 = load i32, ptr %123, align 8, !tbaa !163
  %125 = icmp ult i32 %120, %124
  br i1 %125, label %126, label %161

126:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  %127 = load ptr, ptr %2, align 8, !tbaa !128
  %128 = getelementptr inbounds nuw %struct.State, ptr %127, i32 0, i32 5
  %129 = getelementptr inbounds nuw %struct.VecAction, ptr %128, i32 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !164
  %131 = load i32, ptr %3, align 4, !tbaa !38
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds ptr, ptr %130, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !157
  store ptr %134, ptr %6, align 8, !tbaa !157
  %135 = load ptr, ptr %6, align 8, !tbaa !157
  %136 = getelementptr inbounds nuw %struct.Action, ptr %135, i32 0, i32 0
  %137 = load i32, ptr %136, align 8, !tbaa !159
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds nuw [3 x ptr], ptr @action_types, i64 0, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !8
  %141 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.54, ptr noundef %140)
  %142 = load ptr, ptr %6, align 8, !tbaa !157
  %143 = getelementptr inbounds nuw %struct.Action, ptr %142, i32 0, i32 0
  %144 = load i32, ptr %143, align 8, !tbaa !159
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %156

146:                                              ; preds = %126
  %147 = load ptr, ptr %6, align 8, !tbaa !157
  %148 = getelementptr inbounds nuw %struct.Action, ptr %147, i32 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !165
  call void @print_term(ptr noundef %149)
  %150 = load ptr, ptr %6, align 8, !tbaa !157
  %151 = getelementptr inbounds nuw %struct.Action, ptr %150, i32 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !166
  %153 = getelementptr inbounds nuw %struct.State, ptr %152, i32 0, i32 0
  %154 = load i32, ptr %153, align 8, !tbaa !130
  %155 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.55, i32 noundef signext %154)
  br label %156

156:                                              ; preds = %146, %126
  %157 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.32)
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  br label %158

158:                                              ; preds = %156
  %159 = load i32, ptr %3, align 4, !tbaa !38
  %160 = add nsw i32 %159, 1
  store i32 %160, ptr %3, align 4, !tbaa !38
  br label %119, !llvm.loop !167

161:                                              ; preds = %119
  %162 = load ptr, ptr %2, align 8, !tbaa !128
  %163 = getelementptr inbounds nuw %struct.State, ptr %162, i32 0, i32 6
  %164 = getelementptr inbounds nuw %struct.VecAction, ptr %163, i32 0, i32 0
  %165 = load i32, ptr %164, align 8, !tbaa !155
  %166 = icmp ugt i32 %165, 1
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  call void @print_conflict(ptr noundef @.str.56, ptr noundef %4)
  br label %168

168:                                              ; preds = %167, %161
  %169 = load ptr, ptr %2, align 8, !tbaa !128
  %170 = getelementptr inbounds nuw %struct.State, ptr %169, i32 0, i32 6
  %171 = getelementptr inbounds nuw %struct.VecAction, ptr %170, i32 0, i32 0
  %172 = load i32, ptr %171, align 8, !tbaa !155
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %168
  %175 = load ptr, ptr %2, align 8, !tbaa !128
  %176 = getelementptr inbounds nuw %struct.State, ptr %175, i32 0, i32 5
  %177 = getelementptr inbounds nuw %struct.VecAction, ptr %176, i32 0, i32 0
  %178 = load i32, ptr %177, align 8, !tbaa !163
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  call void @print_conflict(ptr noundef @.str.57, ptr noundef %4)
  br label %181

181:                                              ; preds = %180, %174, %168
  %182 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.32)
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @state_for_declaration(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  store i32 0, ptr %6, align 4, !tbaa !38
  br label %8

8:                                                ; preds = %46, %2
  %9 = load i32, ptr %6, align 4, !tbaa !38
  %10 = load ptr, ptr %4, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct.Grammar, ptr %10, i32 0, i32 7
  %12 = getelementptr inbounds nuw %struct.anon.3, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !80
  %14 = icmp ult i32 %9, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 7
  %18 = getelementptr inbounds nuw %struct.anon.3, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = load i32, ptr %6, align 4, !tbaa !38
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds nuw %struct.Declaration, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !79
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %45

27:                                               ; preds = %15
  %28 = load ptr, ptr %4, align 8, !tbaa !3
  %29 = getelementptr inbounds nuw %struct.Grammar, ptr %28, i32 0, i32 7
  %30 = getelementptr inbounds nuw %struct.anon.3, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !82
  %32 = load i32, ptr %6, align 4, !tbaa !38
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !75
  %36 = getelementptr inbounds nuw %struct.Declaration, ptr %35, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  %38 = getelementptr inbounds nuw %struct.Elem, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !55
  %40 = getelementptr inbounds nuw %struct.Production, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !168
  %42 = load i32, ptr %5, align 4, !tbaa !38
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  store i32 1, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %50

45:                                               ; preds = %27, %15
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %6, align 4, !tbaa !38
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %6, align 4, !tbaa !38
  br label %8, !llvm.loop !169

49:                                               ; preds = %8
  store i32 0, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %50

50:                                               ; preds = %49, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  %51 = load i32, ptr %3, align 4
  ret i32 %51
}

; Function Attrs: nounwind
define dso_local void @build_eq(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  store i32 1, ptr %6, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #9
  %17 = load ptr, ptr %2, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.Grammar, ptr %17, i32 0, i32 3
  %19 = getelementptr inbounds nuw %struct.anon.2, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8, !tbaa !126
  %21 = zext i32 %20 to i64
  %22 = mul i64 24, %21
  %23 = call noalias ptr @malloc(i64 noundef %22) #11
  store ptr %23, ptr %11, align 8, !tbaa !170
  %24 = load ptr, ptr %11, align 8, !tbaa !170
  %25 = load ptr, ptr %2, align 8, !tbaa !3
  %26 = getelementptr inbounds nuw %struct.Grammar, ptr %25, i32 0, i32 3
  %27 = getelementptr inbounds nuw %struct.anon.2, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8, !tbaa !126
  %29 = zext i32 %28 to i64
  %30 = mul i64 24, %29
  call void @llvm.memset.p0.i64(ptr align 8 %24, i8 0, i64 %30, i1 false)
  br label %31

31:                                               ; preds = %501, %1
  %32 = load i32, ptr %6, align 4, !tbaa !38
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %502

34:                                               ; preds = %31
  store i32 0, ptr %6, align 4, !tbaa !38
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %35

35:                                               ; preds = %498, %34
  %36 = load i32, ptr %3, align 4, !tbaa !38
  %37 = load ptr, ptr %2, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw %struct.Grammar, ptr %37, i32 0, i32 3
  %39 = getelementptr inbounds nuw %struct.anon.2, ptr %38, i32 0, i32 0
  %40 = load i32, ptr %39, align 8, !tbaa !126
  %41 = icmp ult i32 %36, %40
  br i1 %41, label %42, label %501

42:                                               ; preds = %35
  %43 = load ptr, ptr %2, align 8, !tbaa !3
  %44 = getelementptr inbounds nuw %struct.Grammar, ptr %43, i32 0, i32 3
  %45 = getelementptr inbounds nuw %struct.anon.2, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !127
  %47 = load i32, ptr %3, align 4, !tbaa !38
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !128
  store ptr %50, ptr %9, align 8, !tbaa !128
  %51 = load ptr, ptr %11, align 8, !tbaa !170
  %52 = load ptr, ptr %9, align 8, !tbaa !128
  %53 = getelementptr inbounds nuw %struct.State, ptr %52, i32 0, i32 0
  %54 = load i32, ptr %53, align 8, !tbaa !130
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds nuw %struct.EqState, ptr %51, i64 %55
  store ptr %56, ptr %12, align 8, !tbaa !170
  %57 = load i32, ptr %3, align 4, !tbaa !38
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %4, align 4, !tbaa !38
  br label %59

59:                                               ; preds = %494, %42
  %60 = load i32, ptr %4, align 4, !tbaa !38
  %61 = load ptr, ptr %2, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.Grammar, ptr %61, i32 0, i32 3
  %63 = getelementptr inbounds nuw %struct.anon.2, ptr %62, i32 0, i32 0
  %64 = load i32, ptr %63, align 8, !tbaa !126
  %65 = icmp ult i32 %60, %64
  br i1 %65, label %66, label %497

66:                                               ; preds = %59
  %67 = load ptr, ptr %2, align 8, !tbaa !3
  %68 = getelementptr inbounds nuw %struct.Grammar, ptr %67, i32 0, i32 3
  %69 = getelementptr inbounds nuw %struct.anon.2, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !127
  %71 = load i32, ptr %4, align 4, !tbaa !38
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %70, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !128
  store ptr %74, ptr %10, align 8, !tbaa !128
  %75 = load ptr, ptr %11, align 8, !tbaa !170
  %76 = load ptr, ptr %10, align 8, !tbaa !128
  %77 = getelementptr inbounds nuw %struct.State, ptr %76, i32 0, i32 0
  %78 = load i32, ptr %77, align 8, !tbaa !130
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds nuw %struct.EqState, ptr %75, i64 %79
  store ptr %80, ptr %13, align 8, !tbaa !170
  %81 = load ptr, ptr %12, align 8, !tbaa !170
  %82 = getelementptr inbounds nuw %struct.EqState, ptr %81, i32 0, i32 0
  %83 = load ptr, ptr %82, align 8, !tbaa !171
  %84 = icmp ne ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %66
  %86 = load ptr, ptr %13, align 8, !tbaa !170
  %87 = getelementptr inbounds nuw %struct.EqState, ptr %86, i32 0, i32 0
  %88 = load ptr, ptr %87, align 8, !tbaa !171
  %89 = icmp ne ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %85, %66
  br label %494

91:                                               ; preds = %85
  %92 = load ptr, ptr %9, align 8, !tbaa !128
  %93 = getelementptr inbounds nuw %struct.State, ptr %92, i32 0, i32 13
  %94 = load ptr, ptr %93, align 8, !tbaa !173
  %95 = load ptr, ptr %10, align 8, !tbaa !128
  %96 = getelementptr inbounds nuw %struct.State, ptr %95, i32 0, i32 13
  %97 = load ptr, ptr %96, align 8, !tbaa !173
  %98 = icmp ne ptr %94, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load ptr, ptr %10, align 8, !tbaa !128
  %101 = getelementptr inbounds nuw %struct.State, ptr %100, i32 0, i32 13
  %102 = load ptr, ptr %101, align 8, !tbaa !173
  %103 = load ptr, ptr %9, align 8, !tbaa !128
  %104 = icmp ne ptr %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %494

106:                                              ; preds = %99, %91
  %107 = load ptr, ptr %9, align 8, !tbaa !128
  %108 = getelementptr inbounds nuw %struct.State, ptr %107, i32 0, i32 4
  %109 = getelementptr inbounds nuw %struct.VecGoto, ptr %108, i32 0, i32 0
  %110 = load i32, ptr %109, align 8, !tbaa !147
  %111 = load ptr, ptr %10, align 8, !tbaa !128
  %112 = getelementptr inbounds nuw %struct.State, ptr %111, i32 0, i32 4
  %113 = getelementptr inbounds nuw %struct.VecGoto, ptr %112, i32 0, i32 0
  %114 = load i32, ptr %113, align 8, !tbaa !147
  %115 = icmp ne i32 %110, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %494

117:                                              ; preds = %106
  store i32 0, ptr %5, align 4, !tbaa !38
  br label %118

118:                                              ; preds = %319, %117
  %119 = load i32, ptr %5, align 4, !tbaa !38
  %120 = load ptr, ptr %9, align 8, !tbaa !128
  %121 = getelementptr inbounds nuw %struct.State, ptr %120, i32 0, i32 4
  %122 = getelementptr inbounds nuw %struct.VecGoto, ptr %121, i32 0, i32 0
  %123 = load i32, ptr %122, align 8, !tbaa !147
  %124 = icmp ult i32 %119, %123
  br i1 %124, label %125, label %322

125:                                              ; preds = %118
  %126 = load ptr, ptr %2, align 8, !tbaa !3
  %127 = load ptr, ptr %9, align 8, !tbaa !128
  %128 = getelementptr inbounds nuw %struct.State, ptr %127, i32 0, i32 4
  %129 = getelementptr inbounds nuw %struct.VecGoto, ptr %128, i32 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !148
  %131 = load i32, ptr %5, align 4, !tbaa !38
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds ptr, ptr %130, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !149
  %135 = getelementptr inbounds nuw %struct.Goto, ptr %134, i32 0, i32 0
  %136 = load ptr, ptr %135, align 8, !tbaa !151
  %137 = call signext i32 @elem_symbol(ptr noundef %126, ptr noundef %136)
  %138 = load ptr, ptr %2, align 8, !tbaa !3
  %139 = load ptr, ptr %10, align 8, !tbaa !128
  %140 = getelementptr inbounds nuw %struct.State, ptr %139, i32 0, i32 4
  %141 = getelementptr inbounds nuw %struct.VecGoto, ptr %140, i32 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !148
  %143 = load i32, ptr %5, align 4, !tbaa !38
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds ptr, ptr %142, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !149
  %147 = getelementptr inbounds nuw %struct.Goto, ptr %146, i32 0, i32 0
  %148 = load ptr, ptr %147, align 8, !tbaa !151
  %149 = call signext i32 @elem_symbol(ptr noundef %138, ptr noundef %148)
  %150 = icmp ne i32 %137, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %125
  br label %493

152:                                              ; preds = %125
  %153 = load ptr, ptr %9, align 8, !tbaa !128
  %154 = getelementptr inbounds nuw %struct.State, ptr %153, i32 0, i32 4
  %155 = getelementptr inbounds nuw %struct.VecGoto, ptr %154, i32 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !148
  %157 = load i32, ptr %5, align 4, !tbaa !38
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %156, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !149
  %161 = getelementptr inbounds nuw %struct.Goto, ptr %160, i32 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !153
  %163 = load ptr, ptr %10, align 8, !tbaa !128
  %164 = getelementptr inbounds nuw %struct.State, ptr %163, i32 0, i32 4
  %165 = getelementptr inbounds nuw %struct.VecGoto, ptr %164, i32 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !148
  %167 = load i32, ptr %5, align 4, !tbaa !38
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %166, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !149
  %171 = getelementptr inbounds nuw %struct.Goto, ptr %170, i32 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !153
  %173 = icmp ne ptr %162, %172
  br i1 %173, label %174, label %318

174:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #9
  %175 = load ptr, ptr %11, align 8, !tbaa !170
  %176 = load ptr, ptr %9, align 8, !tbaa !128
  %177 = getelementptr inbounds nuw %struct.State, ptr %176, i32 0, i32 4
  %178 = getelementptr inbounds nuw %struct.VecGoto, ptr %177, i32 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !148
  %180 = load i32, ptr %5, align 4, !tbaa !38
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds ptr, ptr %179, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !149
  %184 = getelementptr inbounds nuw %struct.Goto, ptr %183, i32 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !153
  %186 = getelementptr inbounds nuw %struct.State, ptr %185, i32 0, i32 0
  %187 = load i32, ptr %186, align 8, !tbaa !130
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds nuw %struct.EqState, ptr %175, i64 %188
  store ptr %189, ptr %14, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #9
  %190 = load ptr, ptr %11, align 8, !tbaa !170
  %191 = load ptr, ptr %10, align 8, !tbaa !128
  %192 = getelementptr inbounds nuw %struct.State, ptr %191, i32 0, i32 4
  %193 = getelementptr inbounds nuw %struct.VecGoto, ptr %192, i32 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !148
  %195 = load i32, ptr %5, align 4, !tbaa !38
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds ptr, ptr %194, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !149
  %199 = getelementptr inbounds nuw %struct.Goto, ptr %198, i32 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !153
  %201 = getelementptr inbounds nuw %struct.State, ptr %200, i32 0, i32 0
  %202 = load i32, ptr %201, align 8, !tbaa !130
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds nuw %struct.EqState, ptr %190, i64 %203
  store ptr %204, ptr %15, align 8, !tbaa !170
  %205 = load ptr, ptr %14, align 8, !tbaa !170
  %206 = getelementptr inbounds nuw %struct.EqState, ptr %205, i32 0, i32 0
  %207 = load ptr, ptr %206, align 8, !tbaa !171
  %208 = load ptr, ptr %10, align 8, !tbaa !128
  %209 = getelementptr inbounds nuw %struct.State, ptr %208, i32 0, i32 4
  %210 = getelementptr inbounds nuw %struct.VecGoto, ptr %209, i32 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !148
  %212 = load i32, ptr %5, align 4, !tbaa !38
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds ptr, ptr %211, i64 %213
  %215 = load ptr, ptr %214, align 8, !tbaa !149
  %216 = getelementptr inbounds nuw %struct.Goto, ptr %215, i32 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !153
  %218 = icmp ne ptr %207, %217
  br i1 %218, label %219, label %235

219:                                              ; preds = %174
  %220 = load ptr, ptr %15, align 8, !tbaa !170
  %221 = getelementptr inbounds nuw %struct.EqState, ptr %220, i32 0, i32 0
  %222 = load ptr, ptr %221, align 8, !tbaa !171
  %223 = load ptr, ptr %9, align 8, !tbaa !128
  %224 = getelementptr inbounds nuw %struct.State, ptr %223, i32 0, i32 4
  %225 = getelementptr inbounds nuw %struct.VecGoto, ptr %224, i32 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !148
  %227 = load i32, ptr %5, align 4, !tbaa !38
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds ptr, ptr %226, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !149
  %231 = getelementptr inbounds nuw %struct.Goto, ptr %230, i32 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !153
  %233 = icmp ne ptr %222, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %219
  store i32 13, ptr %16, align 4
  br label %315

235:                                              ; preds = %219, %174
  %236 = load ptr, ptr %13, align 8, !tbaa !170
  %237 = getelementptr inbounds nuw %struct.EqState, ptr %236, i32 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !174
  %239 = icmp ne ptr %238, null
  br i1 %239, label %240, label %262

240:                                              ; preds = %235
  %241 = load ptr, ptr %13, align 8, !tbaa !170
  %242 = getelementptr inbounds nuw %struct.EqState, ptr %241, i32 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !174
  %244 = load ptr, ptr %11, align 8, !tbaa !170
  %245 = load ptr, ptr %10, align 8, !tbaa !128
  %246 = getelementptr inbounds nuw %struct.State, ptr %245, i32 0, i32 4
  %247 = getelementptr inbounds nuw %struct.VecGoto, ptr %246, i32 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !148
  %249 = load i32, ptr %5, align 4, !tbaa !38
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds ptr, ptr %248, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !149
  %253 = getelementptr inbounds nuw %struct.Goto, ptr %252, i32 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !153
  %255 = getelementptr inbounds nuw %struct.State, ptr %254, i32 0, i32 0
  %256 = load i32, ptr %255, align 8, !tbaa !130
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds nuw %struct.EqState, ptr %244, i64 %257
  %259 = getelementptr inbounds nuw %struct.EqState, ptr %258, i32 0, i32 0
  %260 = load ptr, ptr %259, align 8, !tbaa !171
  %261 = icmp ne ptr %243, %260
  br i1 %261, label %289, label %262

262:                                              ; preds = %240, %235
  %263 = load ptr, ptr %12, align 8, !tbaa !170
  %264 = getelementptr inbounds nuw %struct.EqState, ptr %263, i32 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !174
  %266 = icmp ne ptr %265, null
  br i1 %266, label %267, label %290

267:                                              ; preds = %262
  %268 = load ptr, ptr %12, align 8, !tbaa !170
  %269 = getelementptr inbounds nuw %struct.EqState, ptr %268, i32 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !174
  %271 = load ptr, ptr %11, align 8, !tbaa !170
  %272 = load ptr, ptr %9, align 8, !tbaa !128
  %273 = getelementptr inbounds nuw %struct.State, ptr %272, i32 0, i32 4
  %274 = getelementptr inbounds nuw %struct.VecGoto, ptr %273, i32 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !148
  %276 = load i32, ptr %5, align 4, !tbaa !38
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds ptr, ptr %275, i64 %277
  %279 = load ptr, ptr %278, align 8, !tbaa !149
  %280 = getelementptr inbounds nuw %struct.Goto, ptr %279, i32 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !153
  %282 = getelementptr inbounds nuw %struct.State, ptr %281, i32 0, i32 0
  %283 = load i32, ptr %282, align 8, !tbaa !130
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds nuw %struct.EqState, ptr %271, i64 %284
  %286 = getelementptr inbounds nuw %struct.EqState, ptr %285, i32 0, i32 0
  %287 = load ptr, ptr %286, align 8, !tbaa !171
  %288 = icmp ne ptr %270, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %267, %240
  store i32 13, ptr %16, align 4
  br label %315

290:                                              ; preds = %267, %262
  %291 = load ptr, ptr %10, align 8, !tbaa !128
  %292 = getelementptr inbounds nuw %struct.State, ptr %291, i32 0, i32 4
  %293 = getelementptr inbounds nuw %struct.VecGoto, ptr %292, i32 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !148
  %295 = load i32, ptr %5, align 4, !tbaa !38
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds ptr, ptr %294, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !149
  %299 = getelementptr inbounds nuw %struct.Goto, ptr %298, i32 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !153
  %301 = load ptr, ptr %13, align 8, !tbaa !170
  %302 = getelementptr inbounds nuw %struct.EqState, ptr %301, i32 0, i32 2
  store ptr %300, ptr %302, align 8, !tbaa !174
  %303 = load ptr, ptr %9, align 8, !tbaa !128
  %304 = getelementptr inbounds nuw %struct.State, ptr %303, i32 0, i32 4
  %305 = getelementptr inbounds nuw %struct.VecGoto, ptr %304, i32 0, i32 2
  %306 = load ptr, ptr %305, align 8, !tbaa !148
  %307 = load i32, ptr %5, align 4, !tbaa !38
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds ptr, ptr %306, i64 %308
  %310 = load ptr, ptr %309, align 8, !tbaa !149
  %311 = getelementptr inbounds nuw %struct.Goto, ptr %310, i32 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !153
  %313 = load ptr, ptr %12, align 8, !tbaa !170
  %314 = getelementptr inbounds nuw %struct.EqState, ptr %313, i32 0, i32 2
  store ptr %312, ptr %314, align 8, !tbaa !174
  store i32 0, ptr %16, align 4
  br label %315

315:                                              ; preds = %289, %234, %290
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #9
  %316 = load i32, ptr %16, align 4
  switch i32 %316, label %788 [
    i32 0, label %317
    i32 13, label %493
  ]

317:                                              ; preds = %315
  br label %318

318:                                              ; preds = %317, %152
  br label %319

319:                                              ; preds = %318
  %320 = load i32, ptr %5, align 4, !tbaa !38
  %321 = add nsw i32 %320, 1
  store i32 %321, ptr %5, align 4, !tbaa !38
  br label %118, !llvm.loop !175

322:                                              ; preds = %118
  %323 = load ptr, ptr %9, align 8, !tbaa !128
  %324 = getelementptr inbounds nuw %struct.State, ptr %323, i32 0, i32 6
  %325 = getelementptr inbounds nuw %struct.VecAction, ptr %324, i32 0, i32 0
  %326 = load i32, ptr %325, align 8, !tbaa !155
  %327 = load ptr, ptr %10, align 8, !tbaa !128
  %328 = getelementptr inbounds nuw %struct.State, ptr %327, i32 0, i32 6
  %329 = getelementptr inbounds nuw %struct.VecAction, ptr %328, i32 0, i32 0
  %330 = load i32, ptr %329, align 8, !tbaa !155
  %331 = icmp ne i32 %326, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %322
  br label %494

333:                                              ; preds = %322
  store i32 0, ptr %5, align 4, !tbaa !38
  br label %334

334:                                              ; preds = %486, %333
  %335 = load i32, ptr %5, align 4, !tbaa !38
  %336 = load ptr, ptr %9, align 8, !tbaa !128
  %337 = getelementptr inbounds nuw %struct.State, ptr %336, i32 0, i32 6
  %338 = getelementptr inbounds nuw %struct.VecAction, ptr %337, i32 0, i32 0
  %339 = load i32, ptr %338, align 8, !tbaa !155
  %340 = icmp ult i32 %335, %339
  br i1 %340, label %341, label %489

341:                                              ; preds = %334
  %342 = load ptr, ptr %9, align 8, !tbaa !128
  %343 = getelementptr inbounds nuw %struct.State, ptr %342, i32 0, i32 6
  %344 = getelementptr inbounds nuw %struct.VecAction, ptr %343, i32 0, i32 2
  %345 = load ptr, ptr %344, align 8, !tbaa !156
  %346 = load i32, ptr %5, align 4, !tbaa !38
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds ptr, ptr %345, i64 %347
  %349 = load ptr, ptr %348, align 8, !tbaa !157
  %350 = getelementptr inbounds nuw %struct.Action, ptr %349, i32 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !161
  %352 = load ptr, ptr %10, align 8, !tbaa !128
  %353 = getelementptr inbounds nuw %struct.State, ptr %352, i32 0, i32 6
  %354 = getelementptr inbounds nuw %struct.VecAction, ptr %353, i32 0, i32 2
  %355 = load ptr, ptr %354, align 8, !tbaa !156
  %356 = load i32, ptr %5, align 4, !tbaa !38
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds ptr, ptr %355, i64 %357
  %359 = load ptr, ptr %358, align 8, !tbaa !157
  %360 = getelementptr inbounds nuw %struct.Action, ptr %359, i32 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !161
  %362 = icmp eq ptr %351, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %341
  br label %486

364:                                              ; preds = %341
  %365 = load ptr, ptr %9, align 8, !tbaa !128
  %366 = getelementptr inbounds nuw %struct.State, ptr %365, i32 0, i32 6
  %367 = getelementptr inbounds nuw %struct.VecAction, ptr %366, i32 0, i32 2
  %368 = load ptr, ptr %367, align 8, !tbaa !156
  %369 = load i32, ptr %5, align 4, !tbaa !38
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds ptr, ptr %368, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !157
  %373 = getelementptr inbounds nuw %struct.Action, ptr %372, i32 0, i32 2
  %374 = load ptr, ptr %373, align 8, !tbaa !161
  %375 = getelementptr inbounds nuw %struct.Rule, ptr %374, i32 0, i32 1
  %376 = load ptr, ptr %375, align 8, !tbaa !42
  %377 = load ptr, ptr %10, align 8, !tbaa !128
  %378 = getelementptr inbounds nuw %struct.State, ptr %377, i32 0, i32 6
  %379 = getelementptr inbounds nuw %struct.VecAction, ptr %378, i32 0, i32 2
  %380 = load ptr, ptr %379, align 8, !tbaa !156
  %381 = load i32, ptr %5, align 4, !tbaa !38
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds ptr, ptr %380, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !157
  %385 = getelementptr inbounds nuw %struct.Action, ptr %384, i32 0, i32 2
  %386 = load ptr, ptr %385, align 8, !tbaa !161
  %387 = getelementptr inbounds nuw %struct.Rule, ptr %386, i32 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !42
  %389 = icmp ne ptr %376, %388
  br i1 %389, label %390, label %391

390:                                              ; preds = %364
  br label %493

391:                                              ; preds = %364
  %392 = load ptr, ptr %9, align 8, !tbaa !128
  %393 = getelementptr inbounds nuw %struct.State, ptr %392, i32 0, i32 6
  %394 = getelementptr inbounds nuw %struct.VecAction, ptr %393, i32 0, i32 2
  %395 = load ptr, ptr %394, align 8, !tbaa !156
  %396 = load i32, ptr %5, align 4, !tbaa !38
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds ptr, ptr %395, i64 %397
  %399 = load ptr, ptr %398, align 8, !tbaa !157
  %400 = getelementptr inbounds nuw %struct.Action, ptr %399, i32 0, i32 2
  %401 = load ptr, ptr %400, align 8, !tbaa !161
  %402 = getelementptr inbounds nuw %struct.Rule, ptr %401, i32 0, i32 6
  %403 = getelementptr inbounds nuw %struct.anon.5, ptr %402, i32 0, i32 0
  %404 = load i32, ptr %403, align 8, !tbaa !70
  store i32 %404, ptr %7, align 4, !tbaa !38
  %405 = load ptr, ptr %10, align 8, !tbaa !128
  %406 = getelementptr inbounds nuw %struct.State, ptr %405, i32 0, i32 6
  %407 = getelementptr inbounds nuw %struct.VecAction, ptr %406, i32 0, i32 2
  %408 = load ptr, ptr %407, align 8, !tbaa !156
  %409 = load i32, ptr %5, align 4, !tbaa !38
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds ptr, ptr %408, i64 %410
  %412 = load ptr, ptr %411, align 8, !tbaa !157
  %413 = getelementptr inbounds nuw %struct.Action, ptr %412, i32 0, i32 2
  %414 = load ptr, ptr %413, align 8, !tbaa !161
  %415 = getelementptr inbounds nuw %struct.Rule, ptr %414, i32 0, i32 6
  %416 = getelementptr inbounds nuw %struct.anon.5, ptr %415, i32 0, i32 0
  %417 = load i32, ptr %416, align 8, !tbaa !70
  store i32 %417, ptr %8, align 4, !tbaa !38
  %418 = icmp ne i32 %404, %417
  br i1 %418, label %419, label %485

419:                                              ; preds = %391
  %420 = load ptr, ptr %13, align 8, !tbaa !170
  %421 = getelementptr inbounds nuw %struct.EqState, ptr %420, i32 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !176
  %423 = icmp ne ptr %422, null
  br i1 %423, label %424, label %439

424:                                              ; preds = %419
  %425 = load ptr, ptr %13, align 8, !tbaa !170
  %426 = getelementptr inbounds nuw %struct.EqState, ptr %425, i32 0, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !176
  %428 = load ptr, ptr %10, align 8, !tbaa !128
  %429 = getelementptr inbounds nuw %struct.State, ptr %428, i32 0, i32 6
  %430 = getelementptr inbounds nuw %struct.VecAction, ptr %429, i32 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !156
  %432 = load i32, ptr %5, align 4, !tbaa !38
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds ptr, ptr %431, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !157
  %436 = getelementptr inbounds nuw %struct.Action, ptr %435, i32 0, i32 2
  %437 = load ptr, ptr %436, align 8, !tbaa !161
  %438 = icmp ne ptr %427, %437
  br i1 %438, label %459, label %439

439:                                              ; preds = %424, %419
  %440 = load ptr, ptr %12, align 8, !tbaa !170
  %441 = getelementptr inbounds nuw %struct.EqState, ptr %440, i32 0, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !176
  %443 = icmp ne ptr %442, null
  br i1 %443, label %444, label %460

444:                                              ; preds = %439
  %445 = load ptr, ptr %12, align 8, !tbaa !170
  %446 = getelementptr inbounds nuw %struct.EqState, ptr %445, i32 0, i32 1
  %447 = load ptr, ptr %446, align 8, !tbaa !176
  %448 = load ptr, ptr %9, align 8, !tbaa !128
  %449 = getelementptr inbounds nuw %struct.State, ptr %448, i32 0, i32 6
  %450 = getelementptr inbounds nuw %struct.VecAction, ptr %449, i32 0, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !156
  %452 = load i32, ptr %5, align 4, !tbaa !38
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds ptr, ptr %451, i64 %453
  %455 = load ptr, ptr %454, align 8, !tbaa !157
  %456 = getelementptr inbounds nuw %struct.Action, ptr %455, i32 0, i32 2
  %457 = load ptr, ptr %456, align 8, !tbaa !161
  %458 = icmp ne ptr %447, %457
  br i1 %458, label %459, label %460

459:                                              ; preds = %444, %424
  br label %493

460:                                              ; preds = %444, %439
  %461 = load ptr, ptr %10, align 8, !tbaa !128
  %462 = getelementptr inbounds nuw %struct.State, ptr %461, i32 0, i32 6
  %463 = getelementptr inbounds nuw %struct.VecAction, ptr %462, i32 0, i32 2
  %464 = load ptr, ptr %463, align 8, !tbaa !156
  %465 = load i32, ptr %5, align 4, !tbaa !38
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds ptr, ptr %464, i64 %466
  %468 = load ptr, ptr %467, align 8, !tbaa !157
  %469 = getelementptr inbounds nuw %struct.Action, ptr %468, i32 0, i32 2
  %470 = load ptr, ptr %469, align 8, !tbaa !161
  %471 = load ptr, ptr %13, align 8, !tbaa !170
  %472 = getelementptr inbounds nuw %struct.EqState, ptr %471, i32 0, i32 1
  store ptr %470, ptr %472, align 8, !tbaa !176
  %473 = load ptr, ptr %9, align 8, !tbaa !128
  %474 = getelementptr inbounds nuw %struct.State, ptr %473, i32 0, i32 6
  %475 = getelementptr inbounds nuw %struct.VecAction, ptr %474, i32 0, i32 2
  %476 = load ptr, ptr %475, align 8, !tbaa !156
  %477 = load i32, ptr %5, align 4, !tbaa !38
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds ptr, ptr %476, i64 %478
  %480 = load ptr, ptr %479, align 8, !tbaa !157
  %481 = getelementptr inbounds nuw %struct.Action, ptr %480, i32 0, i32 2
  %482 = load ptr, ptr %481, align 8, !tbaa !161
  %483 = load ptr, ptr %12, align 8, !tbaa !170
  %484 = getelementptr inbounds nuw %struct.EqState, ptr %483, i32 0, i32 1
  store ptr %482, ptr %484, align 8, !tbaa !176
  br label %485

485:                                              ; preds = %460, %391
  br label %486

486:                                              ; preds = %485, %363
  %487 = load i32, ptr %5, align 4, !tbaa !38
  %488 = add nsw i32 %487, 1
  store i32 %488, ptr %5, align 4, !tbaa !38
  br label %334, !llvm.loop !177

489:                                              ; preds = %334
  %490 = load ptr, ptr %9, align 8, !tbaa !128
  %491 = load ptr, ptr %13, align 8, !tbaa !170
  %492 = getelementptr inbounds nuw %struct.EqState, ptr %491, i32 0, i32 0
  store ptr %490, ptr %492, align 8, !tbaa !171
  store i32 1, ptr %6, align 4, !tbaa !38
  br label %493

493:                                              ; preds = %489, %315, %459, %390, %151
  br label %494

494:                                              ; preds = %493, %332, %116, %105, %90
  %495 = load i32, ptr %4, align 4, !tbaa !38
  %496 = add nsw i32 %495, 1
  store i32 %496, ptr %4, align 4, !tbaa !38
  br label %59, !llvm.loop !178

497:                                              ; preds = %59
  br label %498

498:                                              ; preds = %497
  %499 = load i32, ptr %3, align 4, !tbaa !38
  %500 = add nsw i32 %499, 1
  store i32 %500, ptr %3, align 4, !tbaa !38
  br label %35, !llvm.loop !179

501:                                              ; preds = %35
  br label %31, !llvm.loop !180

502:                                              ; preds = %31
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %503

503:                                              ; preds = %592, %502
  %504 = load i32, ptr %3, align 4, !tbaa !38
  %505 = load ptr, ptr %2, align 8, !tbaa !3
  %506 = getelementptr inbounds nuw %struct.Grammar, ptr %505, i32 0, i32 3
  %507 = getelementptr inbounds nuw %struct.anon.2, ptr %506, i32 0, i32 0
  %508 = load i32, ptr %507, align 8, !tbaa !126
  %509 = icmp ult i32 %504, %508
  br i1 %509, label %510, label %595

510:                                              ; preds = %503
  %511 = load ptr, ptr %2, align 8, !tbaa !3
  %512 = getelementptr inbounds nuw %struct.Grammar, ptr %511, i32 0, i32 3
  %513 = getelementptr inbounds nuw %struct.anon.2, ptr %512, i32 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !127
  %515 = load i32, ptr %3, align 4, !tbaa !38
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds ptr, ptr %514, i64 %516
  %518 = load ptr, ptr %517, align 8, !tbaa !128
  store ptr %518, ptr %9, align 8, !tbaa !128
  %519 = load ptr, ptr %11, align 8, !tbaa !170
  %520 = load ptr, ptr %9, align 8, !tbaa !128
  %521 = getelementptr inbounds nuw %struct.State, ptr %520, i32 0, i32 0
  %522 = load i32, ptr %521, align 8, !tbaa !130
  %523 = zext i32 %522 to i64
  %524 = getelementptr inbounds nuw %struct.EqState, ptr %519, i64 %523
  store ptr %524, ptr %12, align 8, !tbaa !170
  %525 = load ptr, ptr %12, align 8, !tbaa !170
  %526 = getelementptr inbounds nuw %struct.EqState, ptr %525, i32 0, i32 0
  %527 = load ptr, ptr %526, align 8, !tbaa !171
  %528 = icmp ne ptr %527, null
  br i1 %528, label %529, label %591

529:                                              ; preds = %510
  %530 = load i32, ptr @verbose_level, align 4, !tbaa !38
  %531 = icmp sgt i32 %530, 2
  br i1 %531, label %532, label %590

532:                                              ; preds = %529
  %533 = load ptr, ptr %9, align 8, !tbaa !128
  %534 = getelementptr inbounds nuw %struct.State, ptr %533, i32 0, i32 0
  %535 = load i32, ptr %534, align 8, !tbaa !130
  %536 = load ptr, ptr %12, align 8, !tbaa !170
  %537 = getelementptr inbounds nuw %struct.EqState, ptr %536, i32 0, i32 0
  %538 = load ptr, ptr %537, align 8, !tbaa !171
  %539 = getelementptr inbounds nuw %struct.State, ptr %538, i32 0, i32 0
  %540 = load i32, ptr %539, align 8, !tbaa !130
  %541 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.37, i32 noundef signext %535, i32 noundef signext %540)
  %542 = load ptr, ptr %12, align 8, !tbaa !170
  %543 = getelementptr inbounds nuw %struct.EqState, ptr %542, i32 0, i32 2
  %544 = load ptr, ptr %543, align 8, !tbaa !174
  %545 = icmp ne ptr %544, null
  br i1 %545, label %546, label %565

546:                                              ; preds = %532
  %547 = load ptr, ptr %12, align 8, !tbaa !170
  %548 = getelementptr inbounds nuw %struct.EqState, ptr %547, i32 0, i32 2
  %549 = load ptr, ptr %548, align 8, !tbaa !174
  %550 = getelementptr inbounds nuw %struct.State, ptr %549, i32 0, i32 0
  %551 = load i32, ptr %550, align 8, !tbaa !130
  %552 = load ptr, ptr %11, align 8, !tbaa !170
  %553 = load ptr, ptr %12, align 8, !tbaa !170
  %554 = getelementptr inbounds nuw %struct.EqState, ptr %553, i32 0, i32 0
  %555 = load ptr, ptr %554, align 8, !tbaa !171
  %556 = getelementptr inbounds nuw %struct.State, ptr %555, i32 0, i32 0
  %557 = load i32, ptr %556, align 8, !tbaa !130
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds nuw %struct.EqState, ptr %552, i64 %558
  %560 = getelementptr inbounds nuw %struct.EqState, ptr %559, i32 0, i32 2
  %561 = load ptr, ptr %560, align 8, !tbaa !174
  %562 = getelementptr inbounds nuw %struct.State, ptr %561, i32 0, i32 0
  %563 = load i32, ptr %562, align 8, !tbaa !130
  %564 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.38, i32 noundef signext %551, i32 noundef signext %563)
  br label %565

565:                                              ; preds = %546, %532
  %566 = load ptr, ptr %12, align 8, !tbaa !170
  %567 = getelementptr inbounds nuw %struct.EqState, ptr %566, i32 0, i32 1
  %568 = load ptr, ptr %567, align 8, !tbaa !176
  %569 = icmp ne ptr %568, null
  br i1 %569, label %570, label %588

570:                                              ; preds = %565
  %571 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.39)
  %572 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.40)
  %573 = load ptr, ptr %12, align 8, !tbaa !170
  %574 = getelementptr inbounds nuw %struct.EqState, ptr %573, i32 0, i32 1
  %575 = load ptr, ptr %574, align 8, !tbaa !176
  call void @print_rule(ptr noundef %575)
  %576 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.41)
  %577 = load ptr, ptr %11, align 8, !tbaa !170
  %578 = load ptr, ptr %12, align 8, !tbaa !170
  %579 = getelementptr inbounds nuw %struct.EqState, ptr %578, i32 0, i32 0
  %580 = load ptr, ptr %579, align 8, !tbaa !171
  %581 = getelementptr inbounds nuw %struct.State, ptr %580, i32 0, i32 0
  %582 = load i32, ptr %581, align 8, !tbaa !130
  %583 = zext i32 %582 to i64
  %584 = getelementptr inbounds nuw %struct.EqState, ptr %577, i64 %583
  %585 = getelementptr inbounds nuw %struct.EqState, ptr %584, i32 0, i32 1
  %586 = load ptr, ptr %585, align 8, !tbaa !176
  call void @print_rule(ptr noundef %586)
  %587 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.42)
  br label %588

588:                                              ; preds = %570, %565
  %589 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.32)
  br label %590

590:                                              ; preds = %588, %529
  br label %591

591:                                              ; preds = %590, %510
  br label %592

592:                                              ; preds = %591
  %593 = load i32, ptr %3, align 4, !tbaa !38
  %594 = add nsw i32 %593, 1
  store i32 %594, ptr %3, align 4, !tbaa !38
  br label %503, !llvm.loop !181

595:                                              ; preds = %503
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %596

596:                                              ; preds = %744, %595
  %597 = load i32, ptr %3, align 4, !tbaa !38
  %598 = load ptr, ptr %2, align 8, !tbaa !3
  %599 = getelementptr inbounds nuw %struct.Grammar, ptr %598, i32 0, i32 3
  %600 = getelementptr inbounds nuw %struct.anon.2, ptr %599, i32 0, i32 0
  %601 = load i32, ptr %600, align 8, !tbaa !126
  %602 = icmp ult i32 %597, %601
  br i1 %602, label %603, label %747

603:                                              ; preds = %596
  %604 = load ptr, ptr %2, align 8, !tbaa !3
  %605 = getelementptr inbounds nuw %struct.Grammar, ptr %604, i32 0, i32 3
  %606 = getelementptr inbounds nuw %struct.anon.2, ptr %605, i32 0, i32 2
  %607 = load ptr, ptr %606, align 8, !tbaa !127
  %608 = load i32, ptr %3, align 4, !tbaa !38
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds ptr, ptr %607, i64 %609
  %611 = load ptr, ptr %610, align 8, !tbaa !128
  store ptr %611, ptr %9, align 8, !tbaa !128
  %612 = load ptr, ptr %11, align 8, !tbaa !170
  %613 = load ptr, ptr %9, align 8, !tbaa !128
  %614 = getelementptr inbounds nuw %struct.State, ptr %613, i32 0, i32 0
  %615 = load i32, ptr %614, align 8, !tbaa !130
  %616 = zext i32 %615 to i64
  %617 = getelementptr inbounds nuw %struct.EqState, ptr %612, i64 %616
  store ptr %617, ptr %12, align 8, !tbaa !170
  %618 = load ptr, ptr %12, align 8, !tbaa !170
  %619 = getelementptr inbounds nuw %struct.EqState, ptr %618, i32 0, i32 0
  %620 = load ptr, ptr %619, align 8, !tbaa !171
  %621 = icmp ne ptr %620, null
  br i1 %621, label %622, label %743

622:                                              ; preds = %603
  %623 = load ptr, ptr %12, align 8, !tbaa !170
  %624 = getelementptr inbounds nuw %struct.EqState, ptr %623, i32 0, i32 2
  %625 = load ptr, ptr %624, align 8, !tbaa !174
  %626 = icmp ne ptr %625, null
  br i1 %626, label %627, label %743

627:                                              ; preds = %622
  %628 = load ptr, ptr %11, align 8, !tbaa !170
  %629 = load ptr, ptr %12, align 8, !tbaa !170
  %630 = getelementptr inbounds nuw %struct.EqState, ptr %629, i32 0, i32 2
  %631 = load ptr, ptr %630, align 8, !tbaa !174
  %632 = getelementptr inbounds nuw %struct.State, ptr %631, i32 0, i32 0
  %633 = load i32, ptr %632, align 8, !tbaa !130
  %634 = zext i32 %633 to i64
  %635 = getelementptr inbounds nuw %struct.EqState, ptr %628, i64 %634
  %636 = getelementptr inbounds nuw %struct.EqState, ptr %635, i32 0, i32 1
  %637 = load ptr, ptr %636, align 8, !tbaa !176
  %638 = icmp ne ptr %637, null
  br i1 %638, label %639, label %677

639:                                              ; preds = %627
  %640 = load ptr, ptr %11, align 8, !tbaa !170
  %641 = load ptr, ptr %12, align 8, !tbaa !170
  %642 = getelementptr inbounds nuw %struct.EqState, ptr %641, i32 0, i32 2
  %643 = load ptr, ptr %642, align 8, !tbaa !174
  %644 = getelementptr inbounds nuw %struct.State, ptr %643, i32 0, i32 0
  %645 = load i32, ptr %644, align 8, !tbaa !130
  %646 = zext i32 %645 to i64
  %647 = getelementptr inbounds nuw %struct.EqState, ptr %640, i64 %646
  %648 = getelementptr inbounds nuw %struct.EqState, ptr %647, i32 0, i32 1
  %649 = load ptr, ptr %648, align 8, !tbaa !176
  %650 = getelementptr inbounds nuw %struct.Rule, ptr %649, i32 0, i32 6
  %651 = getelementptr inbounds nuw %struct.anon.5, ptr %650, i32 0, i32 0
  %652 = load i32, ptr %651, align 8, !tbaa !70
  %653 = icmp eq i32 %652, 2
  br i1 %653, label %654, label %677

654:                                              ; preds = %639
  %655 = load ptr, ptr %12, align 8, !tbaa !170
  %656 = getelementptr inbounds nuw %struct.EqState, ptr %655, i32 0, i32 0
  %657 = load ptr, ptr %656, align 8, !tbaa !171
  %658 = load ptr, ptr %9, align 8, !tbaa !128
  %659 = getelementptr inbounds nuw %struct.State, ptr %658, i32 0, i32 14
  store ptr %657, ptr %659, align 8, !tbaa !182
  %660 = load ptr, ptr %11, align 8, !tbaa !170
  %661 = load ptr, ptr %12, align 8, !tbaa !170
  %662 = getelementptr inbounds nuw %struct.EqState, ptr %661, i32 0, i32 0
  %663 = load ptr, ptr %662, align 8, !tbaa !171
  %664 = getelementptr inbounds nuw %struct.State, ptr %663, i32 0, i32 0
  %665 = load i32, ptr %664, align 8, !tbaa !130
  %666 = zext i32 %665 to i64
  %667 = getelementptr inbounds nuw %struct.EqState, ptr %660, i64 %666
  %668 = getelementptr inbounds nuw %struct.EqState, ptr %667, i32 0, i32 1
  %669 = load ptr, ptr %668, align 8, !tbaa !176
  %670 = load ptr, ptr %9, align 8, !tbaa !128
  %671 = getelementptr inbounds nuw %struct.State, ptr %670, i32 0, i32 15
  store ptr %669, ptr %671, align 8, !tbaa !183
  %672 = load ptr, ptr %12, align 8, !tbaa !170
  %673 = getelementptr inbounds nuw %struct.EqState, ptr %672, i32 0, i32 1
  %674 = load ptr, ptr %673, align 8, !tbaa !176
  %675 = load ptr, ptr %9, align 8, !tbaa !128
  %676 = getelementptr inbounds nuw %struct.State, ptr %675, i32 0, i32 16
  store ptr %674, ptr %676, align 8, !tbaa !184
  br label %742

677:                                              ; preds = %639, %627
  %678 = load ptr, ptr %11, align 8, !tbaa !170
  %679 = load ptr, ptr %11, align 8, !tbaa !170
  %680 = load ptr, ptr %12, align 8, !tbaa !170
  %681 = getelementptr inbounds nuw %struct.EqState, ptr %680, i32 0, i32 0
  %682 = load ptr, ptr %681, align 8, !tbaa !171
  %683 = getelementptr inbounds nuw %struct.State, ptr %682, i32 0, i32 0
  %684 = load i32, ptr %683, align 8, !tbaa !130
  %685 = zext i32 %684 to i64
  %686 = getelementptr inbounds nuw %struct.EqState, ptr %679, i64 %685
  %687 = getelementptr inbounds nuw %struct.EqState, ptr %686, i32 0, i32 2
  %688 = load ptr, ptr %687, align 8, !tbaa !174
  %689 = getelementptr inbounds nuw %struct.State, ptr %688, i32 0, i32 0
  %690 = load i32, ptr %689, align 8, !tbaa !130
  %691 = zext i32 %690 to i64
  %692 = getelementptr inbounds nuw %struct.EqState, ptr %678, i64 %691
  %693 = getelementptr inbounds nuw %struct.EqState, ptr %692, i32 0, i32 1
  %694 = load ptr, ptr %693, align 8, !tbaa !176
  %695 = icmp ne ptr %694, null
  br i1 %695, label %696, label %741

696:                                              ; preds = %677
  %697 = load ptr, ptr %11, align 8, !tbaa !170
  %698 = load ptr, ptr %11, align 8, !tbaa !170
  %699 = load ptr, ptr %12, align 8, !tbaa !170
  %700 = getelementptr inbounds nuw %struct.EqState, ptr %699, i32 0, i32 0
  %701 = load ptr, ptr %700, align 8, !tbaa !171
  %702 = getelementptr inbounds nuw %struct.State, ptr %701, i32 0, i32 0
  %703 = load i32, ptr %702, align 8, !tbaa !130
  %704 = zext i32 %703 to i64
  %705 = getelementptr inbounds nuw %struct.EqState, ptr %698, i64 %704
  %706 = getelementptr inbounds nuw %struct.EqState, ptr %705, i32 0, i32 2
  %707 = load ptr, ptr %706, align 8, !tbaa !174
  %708 = getelementptr inbounds nuw %struct.State, ptr %707, i32 0, i32 0
  %709 = load i32, ptr %708, align 8, !tbaa !130
  %710 = zext i32 %709 to i64
  %711 = getelementptr inbounds nuw %struct.EqState, ptr %697, i64 %710
  %712 = getelementptr inbounds nuw %struct.EqState, ptr %711, i32 0, i32 1
  %713 = load ptr, ptr %712, align 8, !tbaa !176
  %714 = getelementptr inbounds nuw %struct.Rule, ptr %713, i32 0, i32 6
  %715 = getelementptr inbounds nuw %struct.anon.5, ptr %714, i32 0, i32 0
  %716 = load i32, ptr %715, align 8, !tbaa !70
  %717 = icmp eq i32 %716, 2
  br i1 %717, label %718, label %741

718:                                              ; preds = %696
  %719 = load ptr, ptr %9, align 8, !tbaa !128
  %720 = load ptr, ptr %12, align 8, !tbaa !170
  %721 = getelementptr inbounds nuw %struct.EqState, ptr %720, i32 0, i32 0
  %722 = load ptr, ptr %721, align 8, !tbaa !171
  %723 = getelementptr inbounds nuw %struct.State, ptr %722, i32 0, i32 14
  store ptr %719, ptr %723, align 8, !tbaa !182
  %724 = load ptr, ptr %12, align 8, !tbaa !170
  %725 = getelementptr inbounds nuw %struct.EqState, ptr %724, i32 0, i32 1
  %726 = load ptr, ptr %725, align 8, !tbaa !176
  %727 = load ptr, ptr %9, align 8, !tbaa !128
  %728 = getelementptr inbounds nuw %struct.State, ptr %727, i32 0, i32 15
  store ptr %726, ptr %728, align 8, !tbaa !183
  %729 = load ptr, ptr %11, align 8, !tbaa !170
  %730 = load ptr, ptr %12, align 8, !tbaa !170
  %731 = getelementptr inbounds nuw %struct.EqState, ptr %730, i32 0, i32 0
  %732 = load ptr, ptr %731, align 8, !tbaa !171
  %733 = getelementptr inbounds nuw %struct.State, ptr %732, i32 0, i32 0
  %734 = load i32, ptr %733, align 8, !tbaa !130
  %735 = zext i32 %734 to i64
  %736 = getelementptr inbounds nuw %struct.EqState, ptr %729, i64 %735
  %737 = getelementptr inbounds nuw %struct.EqState, ptr %736, i32 0, i32 1
  %738 = load ptr, ptr %737, align 8, !tbaa !176
  %739 = load ptr, ptr %9, align 8, !tbaa !128
  %740 = getelementptr inbounds nuw %struct.State, ptr %739, i32 0, i32 16
  store ptr %738, ptr %740, align 8, !tbaa !184
  br label %741

741:                                              ; preds = %718, %696, %677
  br label %742

742:                                              ; preds = %741, %654
  br label %743

743:                                              ; preds = %742, %622, %603
  br label %744

744:                                              ; preds = %743
  %745 = load i32, ptr %3, align 4, !tbaa !38
  %746 = add nsw i32 %745, 1
  store i32 %746, ptr %3, align 4, !tbaa !38
  br label %596, !llvm.loop !185

747:                                              ; preds = %596
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %748

748:                                              ; preds = %783, %747
  %749 = load i32, ptr %3, align 4, !tbaa !38
  %750 = load ptr, ptr %2, align 8, !tbaa !3
  %751 = getelementptr inbounds nuw %struct.Grammar, ptr %750, i32 0, i32 3
  %752 = getelementptr inbounds nuw %struct.anon.2, ptr %751, i32 0, i32 0
  %753 = load i32, ptr %752, align 8, !tbaa !126
  %754 = icmp ult i32 %749, %753
  br i1 %754, label %755, label %786

755:                                              ; preds = %748
  %756 = load ptr, ptr %2, align 8, !tbaa !3
  %757 = getelementptr inbounds nuw %struct.Grammar, ptr %756, i32 0, i32 3
  %758 = getelementptr inbounds nuw %struct.anon.2, ptr %757, i32 0, i32 2
  %759 = load ptr, ptr %758, align 8, !tbaa !127
  %760 = load i32, ptr %3, align 4, !tbaa !38
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds ptr, ptr %759, i64 %761
  %763 = load ptr, ptr %762, align 8, !tbaa !128
  store ptr %763, ptr %9, align 8, !tbaa !128
  %764 = load ptr, ptr %9, align 8, !tbaa !128
  %765 = getelementptr inbounds nuw %struct.State, ptr %764, i32 0, i32 14
  %766 = load ptr, ptr %765, align 8, !tbaa !182
  %767 = icmp ne ptr %766, null
  br i1 %767, label %768, label %782

768:                                              ; preds = %755
  %769 = load i32, ptr @verbose_level, align 4, !tbaa !38
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %781

771:                                              ; preds = %768
  %772 = load ptr, ptr %9, align 8, !tbaa !128
  %773 = getelementptr inbounds nuw %struct.State, ptr %772, i32 0, i32 0
  %774 = load i32, ptr %773, align 8, !tbaa !130
  %775 = load ptr, ptr %9, align 8, !tbaa !128
  %776 = getelementptr inbounds nuw %struct.State, ptr %775, i32 0, i32 14
  %777 = load ptr, ptr %776, align 8, !tbaa !182
  %778 = getelementptr inbounds nuw %struct.State, ptr %777, i32 0, i32 0
  %779 = load i32, ptr %778, align 8, !tbaa !130
  %780 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.43, i32 noundef signext %774, i32 noundef signext %779)
  br label %781

781:                                              ; preds = %771, %768
  br label %782

782:                                              ; preds = %781, %755
  br label %783

783:                                              ; preds = %782
  %784 = load i32, ptr %3, align 4, !tbaa !38
  %785 = add nsw i32 %784, 1
  store i32 %785, ptr %3, align 4, !tbaa !38
  br label %748, !llvm.loop !186

786:                                              ; preds = %748
  %787 = load ptr, ptr %11, align 8, !tbaa !170
  call void @free(ptr noundef %787) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void

788:                                              ; preds = %315
  unreachable
}

declare signext i32 @elem_symbol(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
define dso_local ptr @new_D_Grammar(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  %4 = call noalias ptr @malloc(i64 noundef 592) #11
  store ptr %4, ptr %3, align 8, !tbaa !3
  %5 = load ptr, ptr %3, align 8, !tbaa !3
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 592, i1 false)
  %6 = load ptr, ptr %2, align 8, !tbaa !8
  %7 = load ptr, ptr %2, align 8, !tbaa !8
  %8 = load ptr, ptr %2, align 8, !tbaa !8
  %9 = call i64 @strlen(ptr noundef %8) #10
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 %9
  %11 = call ptr @dup_str(ptr noundef %6, ptr noundef %10)
  %12 = load ptr, ptr %3, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.Grammar, ptr %12, i32 0, i32 0
  store ptr %11, ptr %13, align 8, !tbaa !187
  %14 = load ptr, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret ptr %14
}

; Function Attrs: nounwind
define dso_local void @free_D_Grammar(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8, !tbaa !3
  %4 = getelementptr inbounds nuw %struct.Grammar, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8, !tbaa !187
  call void @free(ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @parse_grammar(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !188
  store i32 %2, ptr %7, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  %12 = load ptr, ptr %5, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.Grammar, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8, !tbaa !187
  %15 = call noalias ptr @fopen(ptr noundef %14, ptr noundef @.str.44)
  store ptr %15, ptr %8, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  %16 = load ptr, ptr %8, align 8, !tbaa !190
  %17 = icmp ne ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 -1, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %57

19:                                               ; preds = %3
  %20 = load ptr, ptr %5, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.Grammar, ptr %20, i32 0, i32 0
  %22 = load ptr, ptr %21, align 8, !tbaa !187
  %23 = call ptr @sbuf_read(ptr noundef %22)
  store ptr %23, ptr %9, align 8, !tbaa !8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 -1, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %57

26:                                               ; preds = %19
  %27 = load ptr, ptr %5, align 8, !tbaa !3
  call void @initialize_productions(ptr noundef %27)
  %28 = load ptr, ptr %6, align 8, !tbaa !188
  %29 = load i32, ptr %7, align 4, !tbaa !38
  %30 = call ptr @new_D_Parser(ptr noundef %28, i32 noundef signext %29)
  store ptr %30, ptr %10, align 8, !tbaa !192
  %31 = load ptr, ptr %5, align 8, !tbaa !3
  %32 = load ptr, ptr %10, align 8, !tbaa !192
  %33 = getelementptr inbounds nuw %struct.D_Parser, ptr %32, i32 0, i32 0
  store ptr %31, ptr %33, align 8, !tbaa !194
  %34 = load ptr, ptr %5, align 8, !tbaa !3
  %35 = getelementptr inbounds nuw %struct.Grammar, ptr %34, i32 0, i32 0
  %36 = load ptr, ptr %35, align 8, !tbaa !187
  %37 = load ptr, ptr %10, align 8, !tbaa !192
  %38 = getelementptr inbounds nuw %struct.D_Parser, ptr %37, i32 0, i32 6
  %39 = getelementptr inbounds nuw %struct.d_loc_t, ptr %38, i32 0, i32 1
  store ptr %36, ptr %39, align 8, !tbaa !198
  %40 = load ptr, ptr %10, align 8, !tbaa !192
  %41 = load ptr, ptr %9, align 8, !tbaa !8
  %42 = load ptr, ptr %9, align 8, !tbaa !8
  %43 = call i64 @strlen(ptr noundef %42) #10
  %44 = trunc i64 %43 to i32
  %45 = call ptr @dparse(ptr noundef %40, ptr noundef %41, i32 noundef signext %44)
  %46 = icmp ne ptr %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %26
  %48 = load ptr, ptr %5, align 8, !tbaa !3
  %49 = getelementptr inbounds nuw %struct.Grammar, ptr %48, i32 0, i32 1
  %50 = getelementptr inbounds nuw %struct.anon.0, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8, !tbaa !30
  %52 = icmp ugt i32 %51, 2
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load ptr, ptr %5, align 8, !tbaa !3
  call void @finish_productions(ptr noundef %54)
  br label %55

55:                                               ; preds = %53, %47
  store i32 0, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %57

56:                                               ; preds = %26
  store i32 -1, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %57

57:                                               ; preds = %56, %55, %25, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  %58 = load i32, ptr %4, align 4
  ret i32 %58
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #5

declare ptr @sbuf_read(ptr noundef) #5

declare ptr @new_D_Parser(ptr noundef, i32 noundef signext) #5

declare ptr @dparse(ptr noundef, ptr noundef, i32 noundef signext) #5

; Function Attrs: nounwind
define dso_local signext i32 @build_grammar(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8, !tbaa !3
  call void @resolve_grammar(ptr noundef %3)
  %4 = load ptr, ptr %2, align 8, !tbaa !3
  call void @convert_regex_productions(ptr noundef %4)
  %5 = load ptr, ptr %2, align 8, !tbaa !3
  call void @propogate_declarations(ptr noundef %5)
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  call void @merge_identical_terminals(ptr noundef %6)
  %7 = load ptr, ptr %2, align 8, !tbaa !3
  call void @make_elems_for_productions(ptr noundef %7)
  %8 = load ptr, ptr %2, align 8, !tbaa !3
  call void @check_default_actions(ptr noundef %8)
  %9 = load ptr, ptr %2, align 8, !tbaa !3
  call void @build_LR_tables(ptr noundef %9)
  %10 = load ptr, ptr %2, align 8, !tbaa !3
  call void @map_declarations_to_states(ptr noundef %10)
  %11 = load i32, ptr @verbose_level, align 4, !tbaa !38
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.Grammar, ptr %14, i32 0, i32 1
  %16 = getelementptr inbounds nuw %struct.anon.0, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8, !tbaa !30
  %18 = load ptr, ptr %2, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.Grammar, ptr %18, i32 0, i32 2
  %20 = getelementptr inbounds nuw %struct.anon.1, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 8, !tbaa !63
  %22 = load ptr, ptr %2, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct.Grammar, ptr %22, i32 0, i32 3
  %24 = getelementptr inbounds nuw %struct.anon.2, ptr %23, i32 0, i32 0
  %25 = load i32, ptr %24, align 8, !tbaa !126
  %26 = load ptr, ptr %2, align 8, !tbaa !3
  %27 = getelementptr inbounds nuw %struct.Grammar, ptr %26, i32 0, i32 7
  %28 = getelementptr inbounds nuw %struct.anon.3, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !80
  %30 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.45, i32 noundef signext %17, i32 noundef signext %21, i32 noundef signext %25, i32 noundef signext %29)
  br label %31

31:                                               ; preds = %13, %1
  %32 = load i32, ptr @verbose_level, align 4, !tbaa !38
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load ptr, ptr %2, align 8, !tbaa !3
  call void @print_grammar(ptr noundef %35)
  %36 = load ptr, ptr %2, align 8, !tbaa !3
  call void @print_states(ptr noundef %36)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load ptr, ptr %2, align 8, !tbaa !3
  call void @build_scanners(ptr noundef %38)
  %39 = load ptr, ptr %2, align 8, !tbaa !3
  call void @build_eq(ptr noundef %39)
  ret i32 0
}

; Function Attrs: nounwind
define internal void @resolve_grammar(ptr noundef %0) #0 {
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
  %12 = alloca ptr, align 8
  %13 = alloca [256 x i8], align 1
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #9
  %14 = load ptr, ptr %2, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.Grammar, ptr %14, i32 0, i32 29
  store i32 0, ptr %15, align 4, !tbaa !199
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %16

16:                                               ; preds = %201, %1
  %17 = load i32, ptr %3, align 4, !tbaa !38
  %18 = load ptr, ptr %2, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.Grammar, ptr %18, i32 0, i32 1
  %20 = getelementptr inbounds nuw %struct.anon.0, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 8, !tbaa !30
  %22 = icmp ult i32 %17, %21
  br i1 %22, label %23, label %204

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.Grammar, ptr %24, i32 0, i32 1
  %26 = getelementptr inbounds nuw %struct.anon.0, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !12
  %28 = load i32, ptr %3, align 4, !tbaa !38
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !10
  store ptr %31, ptr %7, align 8, !tbaa !10
  %32 = load ptr, ptr %7, align 8, !tbaa !10
  %33 = load ptr, ptr %2, align 8, !tbaa !3
  %34 = load ptr, ptr %7, align 8, !tbaa !10
  %35 = getelementptr inbounds nuw %struct.Production, ptr %34, i32 0, i32 0
  %36 = load ptr, ptr %35, align 8, !tbaa !31
  %37 = load ptr, ptr %7, align 8, !tbaa !10
  %38 = getelementptr inbounds nuw %struct.Production, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !37
  %40 = call ptr @lookup_production(ptr noundef %33, ptr noundef %36, i32 noundef signext %39)
  %41 = icmp ne ptr %32, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %23
  %43 = load ptr, ptr %7, align 8, !tbaa !10
  %44 = getelementptr inbounds nuw %struct.Production, ptr %43, i32 0, i32 0
  %45 = load ptr, ptr %44, align 8, !tbaa !31
  call void (ptr, ...) @d_fail(ptr noundef @.str.65, ptr noundef %45)
  br label %46

46:                                               ; preds = %42, %23
  %47 = load i32, ptr %3, align 4, !tbaa !38
  %48 = load ptr, ptr %7, align 8, !tbaa !10
  %49 = getelementptr inbounds nuw %struct.Production, ptr %48, i32 0, i32 3
  store i32 %47, ptr %49, align 8, !tbaa !168
  store i32 0, ptr %4, align 4, !tbaa !38
  br label %50

50:                                               ; preds = %197, %46
  %51 = load i32, ptr %4, align 4, !tbaa !38
  %52 = load ptr, ptr %7, align 8, !tbaa !10
  %53 = getelementptr inbounds nuw %struct.Production, ptr %52, i32 0, i32 2
  %54 = getelementptr inbounds nuw %struct.anon, ptr %53, i32 0, i32 0
  %55 = load i32, ptr %54, align 8, !tbaa !109
  %56 = icmp ult i32 %51, %55
  br i1 %56, label %57, label %200

57:                                               ; preds = %50
  %58 = load ptr, ptr %7, align 8, !tbaa !10
  %59 = getelementptr inbounds nuw %struct.Production, ptr %58, i32 0, i32 2
  %60 = getelementptr inbounds nuw %struct.anon, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !108
  %62 = load i32, ptr %4, align 4, !tbaa !38
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %61, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !41
  store ptr %65, ptr %9, align 8, !tbaa !41
  %66 = load ptr, ptr %2, align 8, !tbaa !3
  %67 = getelementptr inbounds nuw %struct.Grammar, ptr %66, i32 0, i32 29
  %68 = load i32, ptr %67, align 4, !tbaa !199
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %67, align 4, !tbaa !199
  %70 = load ptr, ptr %9, align 8, !tbaa !41
  %71 = getelementptr inbounds nuw %struct.Rule, ptr %70, i32 0, i32 0
  store i32 %68, ptr %71, align 8, !tbaa !200
  store ptr null, ptr %11, align 8, !tbaa !59
  store i32 0, ptr %5, align 4, !tbaa !38
  br label %72

72:                                               ; preds = %160, %57
  %73 = load i32, ptr %5, align 4, !tbaa !38
  %74 = load ptr, ptr %9, align 8, !tbaa !41
  %75 = getelementptr inbounds nuw %struct.Rule, ptr %74, i32 0, i32 6
  %76 = getelementptr inbounds nuw %struct.anon.5, ptr %75, i32 0, i32 0
  %77 = load i32, ptr %76, align 8, !tbaa !70
  %78 = icmp ult i32 %73, %77
  br i1 %78, label %79, label %163

79:                                               ; preds = %72
  %80 = load ptr, ptr %9, align 8, !tbaa !41
  %81 = getelementptr inbounds nuw %struct.Rule, ptr %80, i32 0, i32 6
  %82 = getelementptr inbounds nuw %struct.anon.5, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !69
  %84 = load i32, ptr %5, align 4, !tbaa !38
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %83, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !54
  store ptr %87, ptr %10, align 8, !tbaa !54
  %88 = load i32, ptr %5, align 4, !tbaa !38
  %89 = load ptr, ptr %10, align 8, !tbaa !54
  %90 = getelementptr inbounds nuw %struct.Elem, ptr %89, i32 0, i32 1
  store i32 %88, ptr %90, align 4, !tbaa !201
  %91 = load ptr, ptr %10, align 8, !tbaa !54
  %92 = getelementptr inbounds nuw %struct.Elem, ptr %91, i32 0, i32 0
  %93 = load i32, ptr %92, align 8, !tbaa !49
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %150

95:                                               ; preds = %79
  %96 = load ptr, ptr %10, align 8, !tbaa !54
  %97 = getelementptr inbounds nuw %struct.Elem, ptr %96, i32 0, i32 3
  %98 = getelementptr inbounds nuw %struct.Unresolved, ptr %97, i32 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !55
  store i32 %99, ptr %6, align 4, !tbaa !38
  %100 = load ptr, ptr %2, align 8, !tbaa !3
  %101 = load ptr, ptr %10, align 8, !tbaa !54
  %102 = getelementptr inbounds nuw %struct.Elem, ptr %101, i32 0, i32 3
  %103 = getelementptr inbounds nuw %struct.Unresolved, ptr %102, i32 0, i32 0
  %104 = load ptr, ptr %103, align 8, !tbaa !55
  %105 = load i32, ptr %6, align 4, !tbaa !38
  %106 = call ptr @lookup_production(ptr noundef %100, ptr noundef %104, i32 noundef signext %105)
  store ptr %106, ptr %8, align 8, !tbaa !10
  %107 = icmp ne ptr %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %95
  %109 = load ptr, ptr %10, align 8, !tbaa !54
  %110 = getelementptr inbounds nuw %struct.Elem, ptr %109, i32 0, i32 0
  store i32 0, ptr %110, align 8, !tbaa !49
  %111 = load ptr, ptr %8, align 8, !tbaa !10
  %112 = load ptr, ptr %10, align 8, !tbaa !54
  %113 = getelementptr inbounds nuw %struct.Elem, ptr %112, i32 0, i32 3
  store ptr %111, ptr %113, align 8, !tbaa !55
  br label %149

114:                                              ; preds = %95
  %115 = load ptr, ptr %2, align 8, !tbaa !3
  %116 = load ptr, ptr %10, align 8, !tbaa !54
  %117 = getelementptr inbounds nuw %struct.Elem, ptr %116, i32 0, i32 3
  %118 = getelementptr inbounds nuw %struct.Unresolved, ptr %117, i32 0, i32 0
  %119 = load ptr, ptr %118, align 8, !tbaa !55
  %120 = load i32, ptr %6, align 4, !tbaa !38
  %121 = call ptr @lookup_token(ptr noundef %115, ptr noundef %119, i32 noundef signext %120)
  store ptr %121, ptr %12, align 8, !tbaa !59
  %122 = icmp ne ptr %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %114
  %124 = load ptr, ptr %10, align 8, !tbaa !54
  %125 = getelementptr inbounds nuw %struct.Elem, ptr %124, i32 0, i32 0
  store i32 1, ptr %125, align 8, !tbaa !49
  %126 = load ptr, ptr %12, align 8, !tbaa !59
  %127 = load ptr, ptr %10, align 8, !tbaa !54
  %128 = getelementptr inbounds nuw %struct.Elem, ptr %127, i32 0, i32 3
  store ptr %126, ptr %128, align 8, !tbaa !55
  br label %148

129:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 256, ptr %13) #9
  %130 = getelementptr inbounds [256 x i8], ptr %13, i64 0, i64 0
  %131 = load ptr, ptr %10, align 8, !tbaa !54
  %132 = getelementptr inbounds nuw %struct.Elem, ptr %131, i32 0, i32 3
  %133 = getelementptr inbounds nuw %struct.Unresolved, ptr %132, i32 0, i32 0
  %134 = load ptr, ptr %133, align 8, !tbaa !55
  %135 = load i32, ptr %6, align 4, !tbaa !38
  %136 = sext i32 %135 to i64
  %137 = call ptr @strncpy(ptr noundef %130, ptr noundef %134, i64 noundef %136) #9
  %138 = load i32, ptr %6, align 4, !tbaa !38
  %139 = icmp slt i32 %138, 255
  br i1 %139, label %140, label %142

140:                                              ; preds = %129
  %141 = load i32, ptr %6, align 4, !tbaa !38
  br label %143

142:                                              ; preds = %129
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i32 [ %141, %140 ], [ 255, %142 ]
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [256 x i8], ptr %13, i64 0, i64 %145
  store i8 0, ptr %146, align 1, !tbaa !55
  %147 = getelementptr inbounds [256 x i8], ptr %13, i64 0, i64 0
  call void (ptr, ...) @d_fail(ptr noundef @.str.66, ptr noundef %147)
  call void @llvm.lifetime.end.p0(i64 256, ptr %13) #9
  br label %148

148:                                              ; preds = %143, %123
  br label %149

149:                                              ; preds = %148, %108
  br label %150

150:                                              ; preds = %149, %79
  %151 = load ptr, ptr %10, align 8, !tbaa !54
  %152 = getelementptr inbounds nuw %struct.Elem, ptr %151, i32 0, i32 0
  %153 = load i32, ptr %152, align 8, !tbaa !49
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load ptr, ptr %10, align 8, !tbaa !54
  %157 = getelementptr inbounds nuw %struct.Elem, ptr %156, i32 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !55
  store ptr %158, ptr %11, align 8, !tbaa !59
  br label %159

159:                                              ; preds = %155, %150
  br label %160

160:                                              ; preds = %159
  %161 = load i32, ptr %5, align 4, !tbaa !38
  %162 = add nsw i32 %161, 1
  store i32 %162, ptr %5, align 4, !tbaa !38
  br label %72, !llvm.loop !202

163:                                              ; preds = %72
  %164 = load ptr, ptr %9, align 8, !tbaa !41
  %165 = getelementptr inbounds nuw %struct.Rule, ptr %164, i32 0, i32 6
  %166 = getelementptr inbounds nuw %struct.anon.5, ptr %165, i32 0, i32 0
  %167 = load i32, ptr %166, align 8, !tbaa !70
  %168 = load ptr, ptr %9, align 8, !tbaa !41
  %169 = getelementptr inbounds nuw %struct.Rule, ptr %168, i32 0, i32 7
  %170 = load ptr, ptr %169, align 8, !tbaa !48
  %171 = getelementptr inbounds nuw %struct.Elem, ptr %170, i32 0, i32 1
  store i32 %167, ptr %171, align 4, !tbaa !201
  %172 = load ptr, ptr %2, align 8, !tbaa !3
  %173 = getelementptr inbounds nuw %struct.Grammar, ptr %172, i32 0, i32 10
  %174 = load i32, ptr %173, align 8, !tbaa !83
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %196

176:                                              ; preds = %163
  %177 = load ptr, ptr %11, align 8, !tbaa !59
  %178 = icmp ne ptr %177, null
  br i1 %178, label %179, label %195

179:                                              ; preds = %176
  %180 = load ptr, ptr %9, align 8, !tbaa !41
  %181 = getelementptr inbounds nuw %struct.Rule, ptr %180, i32 0, i32 5
  %182 = load i32, ptr %181, align 4, !tbaa !118
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load ptr, ptr %9, align 8, !tbaa !41
  %186 = getelementptr inbounds nuw %struct.Rule, ptr %185, i32 0, i32 5
  %187 = load i32, ptr %186, align 4, !tbaa !118
  %188 = load ptr, ptr %11, align 8, !tbaa !59
  %189 = getelementptr inbounds nuw %struct.Term, ptr %188, i32 0, i32 3
  store i32 %187, ptr %189, align 4, !tbaa !203
  %190 = load ptr, ptr %9, align 8, !tbaa !41
  %191 = getelementptr inbounds nuw %struct.Rule, ptr %190, i32 0, i32 4
  %192 = load i32, ptr %191, align 8, !tbaa !117
  %193 = load ptr, ptr %11, align 8, !tbaa !59
  %194 = getelementptr inbounds nuw %struct.Term, ptr %193, i32 0, i32 4
  store i32 %192, ptr %194, align 8, !tbaa !204
  br label %195

195:                                              ; preds = %184, %179, %176
  br label %196

196:                                              ; preds = %195, %163
  br label %197

197:                                              ; preds = %196
  %198 = load i32, ptr %4, align 4, !tbaa !38
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %4, align 4, !tbaa !38
  br label %50, !llvm.loop !205

200:                                              ; preds = %50
  br label %201

201:                                              ; preds = %200
  %202 = load i32, ptr %3, align 4, !tbaa !38
  %203 = add nsw i32 %202, 1
  store i32 %203, ptr %3, align 4, !tbaa !38
  br label %16, !llvm.loop !206

204:                                              ; preds = %16
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %205

205:                                              ; preds = %223, %204
  %206 = load i32, ptr %3, align 4, !tbaa !38
  %207 = load ptr, ptr %2, align 8, !tbaa !3
  %208 = getelementptr inbounds nuw %struct.Grammar, ptr %207, i32 0, i32 2
  %209 = getelementptr inbounds nuw %struct.anon.1, ptr %208, i32 0, i32 0
  %210 = load i32, ptr %209, align 8, !tbaa !63
  %211 = icmp ult i32 %206, %210
  br i1 %211, label %212, label %226

212:                                              ; preds = %205
  %213 = load i32, ptr %3, align 4, !tbaa !38
  %214 = load ptr, ptr %2, align 8, !tbaa !3
  %215 = getelementptr inbounds nuw %struct.Grammar, ptr %214, i32 0, i32 2
  %216 = getelementptr inbounds nuw %struct.anon.1, ptr %215, i32 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !62
  %218 = load i32, ptr %3, align 4, !tbaa !38
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds ptr, ptr %217, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !59
  %222 = getelementptr inbounds nuw %struct.Term, ptr %221, i32 0, i32 1
  store i32 %213, ptr %222, align 4, !tbaa !207
  br label %223

223:                                              ; preds = %212
  %224 = load i32, ptr %3, align 4, !tbaa !38
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr %3, align 4, !tbaa !38
  br label %205, !llvm.loop !208

226:                                              ; preds = %205
  %227 = load ptr, ptr %2, align 8, !tbaa !3
  call void @compute_nullable(ptr noundef %227)
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define internal void @convert_regex_productions(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %8

8:                                                ; preds = %34, %1
  %9 = load i32, ptr %3, align 4, !tbaa !38
  %10 = load ptr, ptr %2, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct.Grammar, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !30
  %14 = icmp ult i32 %9, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %8
  %16 = load ptr, ptr %2, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 1
  %18 = getelementptr inbounds nuw %struct.anon.0, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  %20 = load i32, ptr %3, align 4, !tbaa !38
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  store ptr %23, ptr %6, align 8, !tbaa !10
  %24 = load ptr, ptr %6, align 8, !tbaa !10
  %25 = getelementptr inbounds nuw %struct.Production, ptr %24, i32 0, i32 4
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %15
  br label %34

31:                                               ; preds = %15
  %32 = load ptr, ptr %2, align 8, !tbaa !3
  %33 = load ptr, ptr %6, align 8, !tbaa !10
  call void @convert_regex_production_one(ptr noundef %32, ptr noundef %33)
  br label %34

34:                                               ; preds = %31, %30
  %35 = load i32, ptr %3, align 4, !tbaa !38
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %3, align 4, !tbaa !38
  br label %8, !llvm.loop !209

37:                                               ; preds = %8
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %38

38:                                               ; preds = %143, %37
  %39 = load i32, ptr %3, align 4, !tbaa !38
  %40 = load ptr, ptr %2, align 8, !tbaa !3
  %41 = getelementptr inbounds nuw %struct.Grammar, ptr %40, i32 0, i32 1
  %42 = getelementptr inbounds nuw %struct.anon.0, ptr %41, i32 0, i32 0
  %43 = load i32, ptr %42, align 8, !tbaa !30
  %44 = icmp ult i32 %39, %43
  br i1 %44, label %45, label %146

45:                                               ; preds = %38
  %46 = load ptr, ptr %2, align 8, !tbaa !3
  %47 = getelementptr inbounds nuw %struct.Grammar, ptr %46, i32 0, i32 1
  %48 = getelementptr inbounds nuw %struct.anon.0, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !12
  %50 = load i32, ptr %3, align 4, !tbaa !38
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !10
  store ptr %53, ptr %6, align 8, !tbaa !10
  store i32 0, ptr %4, align 4, !tbaa !38
  br label %54

54:                                               ; preds = %139, %45
  %55 = load i32, ptr %4, align 4, !tbaa !38
  %56 = load ptr, ptr %6, align 8, !tbaa !10
  %57 = getelementptr inbounds nuw %struct.Production, ptr %56, i32 0, i32 2
  %58 = getelementptr inbounds nuw %struct.anon, ptr %57, i32 0, i32 0
  %59 = load i32, ptr %58, align 8, !tbaa !109
  %60 = icmp ult i32 %55, %59
  br i1 %60, label %61, label %142

61:                                               ; preds = %54
  %62 = load ptr, ptr %6, align 8, !tbaa !10
  %63 = getelementptr inbounds nuw %struct.Production, ptr %62, i32 0, i32 2
  %64 = getelementptr inbounds nuw %struct.anon, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !108
  %66 = load i32, ptr %4, align 4, !tbaa !38
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %65, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !41
  store ptr %69, ptr %7, align 8, !tbaa !41
  store i32 0, ptr %5, align 4, !tbaa !38
  br label %70

70:                                               ; preds = %135, %61
  %71 = load i32, ptr %5, align 4, !tbaa !38
  %72 = load ptr, ptr %7, align 8, !tbaa !41
  %73 = getelementptr inbounds nuw %struct.Rule, ptr %72, i32 0, i32 6
  %74 = getelementptr inbounds nuw %struct.anon.5, ptr %73, i32 0, i32 0
  %75 = load i32, ptr %74, align 8, !tbaa !70
  %76 = icmp ult i32 %71, %75
  br i1 %76, label %77, label %138

77:                                               ; preds = %70
  %78 = load ptr, ptr %7, align 8, !tbaa !41
  %79 = getelementptr inbounds nuw %struct.Rule, ptr %78, i32 0, i32 6
  %80 = getelementptr inbounds nuw %struct.anon.5, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !69
  %82 = load i32, ptr %5, align 4, !tbaa !38
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %81, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !54
  %86 = getelementptr inbounds nuw %struct.Elem, ptr %85, i32 0, i32 0
  %87 = load i32, ptr %86, align 8, !tbaa !49
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %134

89:                                               ; preds = %77
  %90 = load ptr, ptr %7, align 8, !tbaa !41
  %91 = getelementptr inbounds nuw %struct.Rule, ptr %90, i32 0, i32 6
  %92 = getelementptr inbounds nuw %struct.anon.5, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !69
  %94 = load i32, ptr %5, align 4, !tbaa !38
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %93, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !54
  %98 = getelementptr inbounds nuw %struct.Elem, ptr %97, i32 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !55
  %100 = getelementptr inbounds nuw %struct.Production, ptr %99, i32 0, i32 10
  %101 = load ptr, ptr %100, align 8, !tbaa !210
  %102 = icmp ne ptr %101, null
  br i1 %102, label %103, label %134

103:                                              ; preds = %89
  %104 = load ptr, ptr %7, align 8, !tbaa !41
  %105 = getelementptr inbounds nuw %struct.Rule, ptr %104, i32 0, i32 6
  %106 = getelementptr inbounds nuw %struct.anon.5, ptr %105, i32 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !69
  %108 = load i32, ptr %5, align 4, !tbaa !38
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds ptr, ptr %107, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !54
  %112 = getelementptr inbounds nuw %struct.Elem, ptr %111, i32 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !55
  %114 = getelementptr inbounds nuw %struct.Production, ptr %113, i32 0, i32 10
  %115 = load ptr, ptr %114, align 8, !tbaa !210
  %116 = load ptr, ptr %7, align 8, !tbaa !41
  %117 = getelementptr inbounds nuw %struct.Rule, ptr %116, i32 0, i32 6
  %118 = getelementptr inbounds nuw %struct.anon.5, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !69
  %120 = load i32, ptr %5, align 4, !tbaa !38
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %119, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !54
  %124 = getelementptr inbounds nuw %struct.Elem, ptr %123, i32 0, i32 3
  store ptr %115, ptr %124, align 8, !tbaa !55
  %125 = load ptr, ptr %7, align 8, !tbaa !41
  %126 = getelementptr inbounds nuw %struct.Rule, ptr %125, i32 0, i32 6
  %127 = getelementptr inbounds nuw %struct.anon.5, ptr %126, i32 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !69
  %129 = load i32, ptr %5, align 4, !tbaa !38
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %128, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !54
  %133 = getelementptr inbounds nuw %struct.Elem, ptr %132, i32 0, i32 0
  store i32 1, ptr %133, align 8, !tbaa !49
  br label %134

134:                                              ; preds = %103, %89, %77
  br label %135

135:                                              ; preds = %134
  %136 = load i32, ptr %5, align 4, !tbaa !38
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr %5, align 4, !tbaa !38
  br label %70, !llvm.loop !211

138:                                              ; preds = %70
  br label %139

139:                                              ; preds = %138
  %140 = load i32, ptr %4, align 4, !tbaa !38
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %4, align 4, !tbaa !38
  br label %54, !llvm.loop !212

142:                                              ; preds = %54
  br label %143

143:                                              ; preds = %142
  %144 = load i32, ptr %3, align 4, !tbaa !38
  %145 = add nsw i32 %144, 1
  store i32 %145, ptr %3, align 4, !tbaa !38
  br label %38, !llvm.loop !213

146:                                              ; preds = %38
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define internal void @propogate_declarations(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  %9 = load ptr, ptr %2, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.Grammar, ptr %9, i32 0, i32 14
  %11 = load i32, ptr %10, align 8, !tbaa !86
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 8, !tbaa !3
  %15 = load ptr, ptr %2, align 8, !tbaa !3
  %16 = getelementptr inbounds nuw %struct.Grammar, ptr %15, i32 0, i32 1
  %17 = getelementptr inbounds nuw %struct.anon.0, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = getelementptr inbounds ptr, ptr %18, i64 0
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  %21 = call ptr @new_elem_nterm(ptr noundef %20, ptr noundef null)
  call void @new_declaration(ptr noundef %14, ptr noundef %21, i32 noundef signext 0)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load ptr, ptr %2, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.Grammar, ptr %23, i32 0, i32 15
  %25 = load i32, ptr %24, align 4, !tbaa !85
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load ptr, ptr %2, align 8, !tbaa !3
  %29 = load ptr, ptr %2, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.Grammar, ptr %29, i32 0, i32 1
  %31 = getelementptr inbounds nuw %struct.anon.0, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  %33 = getelementptr inbounds ptr, ptr %32, i64 0
  %34 = load ptr, ptr %33, align 8, !tbaa !10
  %35 = call ptr @new_elem_nterm(ptr noundef %34, ptr noundef null)
  call void @new_declaration(ptr noundef %28, ptr noundef %35, i32 noundef signext 1)
  br label %36

36:                                               ; preds = %27, %22
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %37

37:                                               ; preds = %83, %36
  %38 = load i32, ptr %3, align 4, !tbaa !38
  %39 = load ptr, ptr %2, align 8, !tbaa !3
  %40 = getelementptr inbounds nuw %struct.Grammar, ptr %39, i32 0, i32 7
  %41 = getelementptr inbounds nuw %struct.anon.3, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 8, !tbaa !80
  %43 = icmp ult i32 %38, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %37
  %45 = load ptr, ptr %2, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.Grammar, ptr %45, i32 0, i32 7
  %47 = getelementptr inbounds nuw %struct.anon.3, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !82
  %49 = load i32, ptr %3, align 4, !tbaa !38
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !75
  %53 = getelementptr inbounds nuw %struct.Declaration, ptr %52, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8, !tbaa !77
  store ptr %54, ptr %8, align 8, !tbaa !54
  %55 = load ptr, ptr %8, align 8, !tbaa !54
  %56 = getelementptr inbounds nuw %struct.Elem, ptr %55, i32 0, i32 0
  %57 = load i32, ptr %56, align 8, !tbaa !49
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %82

59:                                               ; preds = %44
  %60 = load ptr, ptr %2, align 8, !tbaa !3
  %61 = load ptr, ptr %8, align 8, !tbaa !54
  %62 = getelementptr inbounds nuw %struct.Elem, ptr %61, i32 0, i32 3
  %63 = getelementptr inbounds nuw %struct.Unresolved, ptr %62, i32 0, i32 0
  %64 = load ptr, ptr %63, align 8, !tbaa !55
  %65 = load ptr, ptr %8, align 8, !tbaa !54
  %66 = getelementptr inbounds nuw %struct.Elem, ptr %65, i32 0, i32 3
  %67 = getelementptr inbounds nuw %struct.Unresolved, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !55
  %69 = call ptr @lookup_production(ptr noundef %60, ptr noundef %64, i32 noundef signext %68)
  store ptr %69, ptr %6, align 8, !tbaa !10
  %70 = icmp ne ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %59
  %72 = load ptr, ptr %8, align 8, !tbaa !54
  %73 = getelementptr inbounds nuw %struct.Elem, ptr %72, i32 0, i32 3
  %74 = getelementptr inbounds nuw %struct.Unresolved, ptr %73, i32 0, i32 0
  %75 = load ptr, ptr %74, align 8, !tbaa !55
  call void (ptr, ...) @d_fail(ptr noundef @.str.73, ptr noundef %75)
  br label %76

76:                                               ; preds = %71, %59
  %77 = load ptr, ptr %8, align 8, !tbaa !54
  %78 = getelementptr inbounds nuw %struct.Elem, ptr %77, i32 0, i32 0
  store i32 0, ptr %78, align 8, !tbaa !49
  %79 = load ptr, ptr %6, align 8, !tbaa !10
  %80 = load ptr, ptr %8, align 8, !tbaa !54
  %81 = getelementptr inbounds nuw %struct.Elem, ptr %80, i32 0, i32 3
  store ptr %79, ptr %81, align 8, !tbaa !55
  br label %82

82:                                               ; preds = %76, %44
  br label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %3, align 4, !tbaa !38
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %3, align 4, !tbaa !38
  br label %37, !llvm.loop !214

86:                                               ; preds = %37
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %87

87:                                               ; preds = %129, %86
  %88 = load i32, ptr %3, align 4, !tbaa !38
  %89 = load ptr, ptr %2, align 8, !tbaa !3
  %90 = getelementptr inbounds nuw %struct.Grammar, ptr %89, i32 0, i32 7
  %91 = getelementptr inbounds nuw %struct.anon.3, ptr %90, i32 0, i32 0
  %92 = load i32, ptr %91, align 8, !tbaa !80
  %93 = icmp ult i32 %88, %92
  br i1 %93, label %94, label %132

94:                                               ; preds = %87
  %95 = load ptr, ptr %2, align 8, !tbaa !3
  %96 = getelementptr inbounds nuw %struct.Grammar, ptr %95, i32 0, i32 7
  %97 = getelementptr inbounds nuw %struct.anon.3, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !82
  %99 = load i32, ptr %3, align 4, !tbaa !38
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %98, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !75
  %103 = call signext i32 @scanner_declaration(ptr noundef %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %94
  %106 = load ptr, ptr %2, align 8, !tbaa !3
  %107 = getelementptr inbounds nuw %struct.Grammar, ptr %106, i32 0, i32 7
  %108 = getelementptr inbounds nuw %struct.anon.3, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !82
  %110 = load i32, ptr %3, align 4, !tbaa !38
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds ptr, ptr %109, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !75
  %114 = getelementptr inbounds nuw %struct.Declaration, ptr %113, i32 0, i32 0
  %115 = load ptr, ptr %114, align 8, !tbaa !77
  %116 = getelementptr inbounds nuw %struct.Elem, ptr %115, i32 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !55
  store ptr %117, ptr %6, align 8, !tbaa !10
  %118 = load ptr, ptr %6, align 8, !tbaa !10
  %119 = load ptr, ptr %6, align 8, !tbaa !10
  %120 = load ptr, ptr %2, align 8, !tbaa !3
  %121 = getelementptr inbounds nuw %struct.Grammar, ptr %120, i32 0, i32 7
  %122 = getelementptr inbounds nuw %struct.anon.3, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !82
  %124 = load i32, ptr %3, align 4, !tbaa !38
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds ptr, ptr %123, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !75
  call void @set_declaration_group(ptr noundef %118, ptr noundef %119, ptr noundef %127)
  br label %128

128:                                              ; preds = %105, %94
  br label %129

129:                                              ; preds = %128
  %130 = load i32, ptr %3, align 4, !tbaa !38
  %131 = add nsw i32 %130, 1
  store i32 %131, ptr %3, align 4, !tbaa !38
  br label %87, !llvm.loop !215

132:                                              ; preds = %87
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %133

133:                                              ; preds = %288, %132
  %134 = load i32, ptr %3, align 4, !tbaa !38
  %135 = load ptr, ptr %2, align 8, !tbaa !3
  %136 = getelementptr inbounds nuw %struct.Grammar, ptr %135, i32 0, i32 1
  %137 = getelementptr inbounds nuw %struct.anon.0, ptr %136, i32 0, i32 0
  %138 = load i32, ptr %137, align 8, !tbaa !30
  %139 = icmp ult i32 %134, %138
  br i1 %139, label %140, label %291

140:                                              ; preds = %133
  %141 = load ptr, ptr %2, align 8, !tbaa !3
  %142 = getelementptr inbounds nuw %struct.Grammar, ptr %141, i32 0, i32 1
  %143 = getelementptr inbounds nuw %struct.anon.0, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !12
  %145 = load i32, ptr %3, align 4, !tbaa !38
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds ptr, ptr %144, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !10
  store ptr %148, ptr %6, align 8, !tbaa !10
  store i32 0, ptr %4, align 4, !tbaa !38
  br label %149

149:                                              ; preds = %284, %140
  %150 = load i32, ptr %4, align 4, !tbaa !38
  %151 = load ptr, ptr %6, align 8, !tbaa !10
  %152 = getelementptr inbounds nuw %struct.Production, ptr %151, i32 0, i32 2
  %153 = getelementptr inbounds nuw %struct.anon, ptr %152, i32 0, i32 0
  %154 = load i32, ptr %153, align 8, !tbaa !109
  %155 = icmp ult i32 %150, %154
  br i1 %155, label %156, label %287

156:                                              ; preds = %149
  %157 = load ptr, ptr %6, align 8, !tbaa !10
  %158 = getelementptr inbounds nuw %struct.Production, ptr %157, i32 0, i32 2
  %159 = getelementptr inbounds nuw %struct.anon, ptr %158, i32 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !108
  %161 = load i32, ptr %4, align 4, !tbaa !38
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds ptr, ptr %160, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !41
  store ptr %164, ptr %7, align 8, !tbaa !41
  store i32 0, ptr %5, align 4, !tbaa !38
  br label %165

165:                                              ; preds = %280, %156
  %166 = load i32, ptr %5, align 4, !tbaa !38
  %167 = load ptr, ptr %7, align 8, !tbaa !41
  %168 = getelementptr inbounds nuw %struct.Rule, ptr %167, i32 0, i32 6
  %169 = getelementptr inbounds nuw %struct.anon.5, ptr %168, i32 0, i32 0
  %170 = load i32, ptr %169, align 8, !tbaa !70
  %171 = icmp ult i32 %166, %170
  br i1 %171, label %172, label %283

172:                                              ; preds = %165
  %173 = load ptr, ptr %7, align 8, !tbaa !41
  %174 = getelementptr inbounds nuw %struct.Rule, ptr %173, i32 0, i32 6
  %175 = getelementptr inbounds nuw %struct.anon.5, ptr %174, i32 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !69
  %177 = load i32, ptr %5, align 4, !tbaa !38
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds ptr, ptr %176, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !54
  store ptr %180, ptr %8, align 8, !tbaa !54
  %181 = load ptr, ptr %8, align 8, !tbaa !54
  %182 = getelementptr inbounds nuw %struct.Elem, ptr %181, i32 0, i32 0
  %183 = load i32, ptr %182, align 8, !tbaa !49
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %279

185:                                              ; preds = %172
  %186 = load ptr, ptr %6, align 8, !tbaa !10
  %187 = getelementptr inbounds nuw %struct.Production, ptr %186, i32 0, i32 6
  %188 = getelementptr inbounds [8 x ptr], ptr %187, i64 0, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !10
  %190 = icmp ne ptr %189, null
  br i1 %190, label %205, label %191

191:                                              ; preds = %185
  %192 = load ptr, ptr %6, align 8, !tbaa !10
  %193 = getelementptr inbounds nuw %struct.Production, ptr %192, i32 0, i32 6
  %194 = getelementptr inbounds [8 x ptr], ptr %193, i64 0, i64 2
  %195 = load ptr, ptr %194, align 8, !tbaa !10
  %196 = icmp ne ptr %195, null
  br i1 %196, label %205, label %197

197:                                              ; preds = %191
  %198 = load ptr, ptr %8, align 8, !tbaa !54
  %199 = getelementptr inbounds nuw %struct.Elem, ptr %198, i32 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !55
  %201 = getelementptr inbounds nuw %struct.Term, ptr %200, i32 0, i32 7
  %202 = load i8, ptr %201, align 4
  %203 = and i8 %202, -8
  %204 = or i8 %203, 0
  store i8 %204, ptr %201, align 4
  br label %278

205:                                              ; preds = %191, %185
  %206 = load ptr, ptr %6, align 8, !tbaa !10
  %207 = getelementptr inbounds nuw %struct.Production, ptr %206, i32 0, i32 6
  %208 = getelementptr inbounds [8 x ptr], ptr %207, i64 0, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !10
  %210 = icmp ne ptr %209, null
  br i1 %210, label %211, label %225

211:                                              ; preds = %205
  %212 = load ptr, ptr %6, align 8, !tbaa !10
  %213 = getelementptr inbounds nuw %struct.Production, ptr %212, i32 0, i32 6
  %214 = getelementptr inbounds [8 x ptr], ptr %213, i64 0, i64 2
  %215 = load ptr, ptr %214, align 8, !tbaa !10
  %216 = icmp ne ptr %215, null
  br i1 %216, label %225, label %217

217:                                              ; preds = %211
  %218 = load ptr, ptr %8, align 8, !tbaa !54
  %219 = getelementptr inbounds nuw %struct.Elem, ptr %218, i32 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !55
  %221 = getelementptr inbounds nuw %struct.Term, ptr %220, i32 0, i32 7
  %222 = load i8, ptr %221, align 4
  %223 = and i8 %222, -8
  %224 = or i8 %223, 1
  store i8 %224, ptr %221, align 4
  br label %277

225:                                              ; preds = %211, %205
  %226 = load ptr, ptr %6, align 8, !tbaa !10
  %227 = getelementptr inbounds nuw %struct.Production, ptr %226, i32 0, i32 6
  %228 = getelementptr inbounds [8 x ptr], ptr %227, i64 0, i64 1
  %229 = load ptr, ptr %228, align 8, !tbaa !10
  %230 = icmp ne ptr %229, null
  br i1 %230, label %245, label %231

231:                                              ; preds = %225
  %232 = load ptr, ptr %6, align 8, !tbaa !10
  %233 = getelementptr inbounds nuw %struct.Production, ptr %232, i32 0, i32 6
  %234 = getelementptr inbounds [8 x ptr], ptr %233, i64 0, i64 2
  %235 = load ptr, ptr %234, align 8, !tbaa !10
  %236 = icmp ne ptr %235, null
  br i1 %236, label %237, label %245

237:                                              ; preds = %231
  %238 = load ptr, ptr %8, align 8, !tbaa !54
  %239 = getelementptr inbounds nuw %struct.Elem, ptr %238, i32 0, i32 3
  %240 = load ptr, ptr %239, align 8, !tbaa !55
  %241 = getelementptr inbounds nuw %struct.Term, ptr %240, i32 0, i32 7
  %242 = load i8, ptr %241, align 4
  %243 = and i8 %242, -8
  %244 = or i8 %243, 0
  store i8 %244, ptr %241, align 4
  br label %276

245:                                              ; preds = %231, %225
  %246 = load ptr, ptr %6, align 8, !tbaa !10
  %247 = getelementptr inbounds nuw %struct.Production, ptr %246, i32 0, i32 7
  %248 = getelementptr inbounds [8 x ptr], ptr %247, i64 0, i64 1
  %249 = load ptr, ptr %248, align 8, !tbaa !75
  %250 = getelementptr inbounds nuw %struct.Declaration, ptr %249, i32 0, i32 2
  %251 = load i32, ptr %250, align 4, !tbaa !81
  %252 = load ptr, ptr %6, align 8, !tbaa !10
  %253 = getelementptr inbounds nuw %struct.Production, ptr %252, i32 0, i32 7
  %254 = getelementptr inbounds [8 x ptr], ptr %253, i64 0, i64 2
  %255 = load ptr, ptr %254, align 8, !tbaa !75
  %256 = getelementptr inbounds nuw %struct.Declaration, ptr %255, i32 0, i32 2
  %257 = load i32, ptr %256, align 4, !tbaa !81
  %258 = icmp ugt i32 %251, %257
  br i1 %258, label %259, label %267

259:                                              ; preds = %245
  %260 = load ptr, ptr %8, align 8, !tbaa !54
  %261 = getelementptr inbounds nuw %struct.Elem, ptr %260, i32 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !55
  %263 = getelementptr inbounds nuw %struct.Term, ptr %262, i32 0, i32 7
  %264 = load i8, ptr %263, align 4
  %265 = and i8 %264, -8
  %266 = or i8 %265, 1
  store i8 %266, ptr %263, align 4
  br label %275

267:                                              ; preds = %245
  %268 = load ptr, ptr %8, align 8, !tbaa !54
  %269 = getelementptr inbounds nuw %struct.Elem, ptr %268, i32 0, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !55
  %271 = getelementptr inbounds nuw %struct.Term, ptr %270, i32 0, i32 7
  %272 = load i8, ptr %271, align 4
  %273 = and i8 %272, -8
  %274 = or i8 %273, 0
  store i8 %274, ptr %271, align 4
  br label %275

275:                                              ; preds = %267, %259
  br label %276

276:                                              ; preds = %275, %237
  br label %277

277:                                              ; preds = %276, %217
  br label %278

278:                                              ; preds = %277, %197
  br label %279

279:                                              ; preds = %278, %172
  br label %280

280:                                              ; preds = %279
  %281 = load i32, ptr %5, align 4, !tbaa !38
  %282 = add nsw i32 %281, 1
  store i32 %282, ptr %5, align 4, !tbaa !38
  br label %165, !llvm.loop !216

283:                                              ; preds = %165
  br label %284

284:                                              ; preds = %283
  %285 = load i32, ptr %4, align 4, !tbaa !38
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr %4, align 4, !tbaa !38
  br label %149, !llvm.loop !217

287:                                              ; preds = %149
  br label %288

288:                                              ; preds = %287
  %289 = load i32, ptr %3, align 4, !tbaa !38
  %290 = add nsw i32 %289, 1
  store i32 %290, ptr %3, align 4, !tbaa !38
  br label %133, !llvm.loop !218

291:                                              ; preds = %133
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define internal void @merge_identical_terminals(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %9

9:                                                ; preds = %78, %1
  %10 = load i32, ptr %3, align 4, !tbaa !38
  %11 = load ptr, ptr %2, align 8, !tbaa !3
  %12 = getelementptr inbounds nuw %struct.Grammar, ptr %11, i32 0, i32 1
  %13 = getelementptr inbounds nuw %struct.anon.0, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8, !tbaa !30
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %16, label %81

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.Grammar, ptr %17, i32 0, i32 1
  %19 = getelementptr inbounds nuw %struct.anon.0, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !12
  %21 = load i32, ptr %3, align 4, !tbaa !38
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !10
  store ptr %24, ptr %6, align 8, !tbaa !10
  store i32 0, ptr %4, align 4, !tbaa !38
  br label %25

25:                                               ; preds = %74, %16
  %26 = load i32, ptr %4, align 4, !tbaa !38
  %27 = load ptr, ptr %6, align 8, !tbaa !10
  %28 = getelementptr inbounds nuw %struct.Production, ptr %27, i32 0, i32 2
  %29 = getelementptr inbounds nuw %struct.anon, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8, !tbaa !109
  %31 = icmp ult i32 %26, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %25
  %33 = load ptr, ptr %6, align 8, !tbaa !10
  %34 = getelementptr inbounds nuw %struct.Production, ptr %33, i32 0, i32 2
  %35 = getelementptr inbounds nuw %struct.anon, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !108
  %37 = load i32, ptr %4, align 4, !tbaa !38
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !41
  store ptr %40, ptr %7, align 8, !tbaa !41
  store i32 0, ptr %5, align 4, !tbaa !38
  br label %41

41:                                               ; preds = %70, %32
  %42 = load i32, ptr %5, align 4, !tbaa !38
  %43 = load ptr, ptr %7, align 8, !tbaa !41
  %44 = getelementptr inbounds nuw %struct.Rule, ptr %43, i32 0, i32 6
  %45 = getelementptr inbounds nuw %struct.anon.5, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 8, !tbaa !70
  %47 = icmp ult i32 %42, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = load ptr, ptr %7, align 8, !tbaa !41
  %50 = getelementptr inbounds nuw %struct.Rule, ptr %49, i32 0, i32 6
  %51 = getelementptr inbounds nuw %struct.anon.5, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !69
  %53 = load i32, ptr %5, align 4, !tbaa !38
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %52, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !54
  store ptr %56, ptr %8, align 8, !tbaa !54
  %57 = load ptr, ptr %8, align 8, !tbaa !54
  %58 = getelementptr inbounds nuw %struct.Elem, ptr %57, i32 0, i32 0
  %59 = load i32, ptr %58, align 8, !tbaa !49
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %69

61:                                               ; preds = %48
  %62 = load ptr, ptr %2, align 8, !tbaa !3
  %63 = load ptr, ptr %8, align 8, !tbaa !54
  %64 = getelementptr inbounds nuw %struct.Elem, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !55
  %66 = call ptr @unique_term(ptr noundef %62, ptr noundef %65)
  %67 = load ptr, ptr %8, align 8, !tbaa !54
  %68 = getelementptr inbounds nuw %struct.Elem, ptr %67, i32 0, i32 3
  store ptr %66, ptr %68, align 8, !tbaa !55
  br label %69

69:                                               ; preds = %61, %48
  br label %70

70:                                               ; preds = %69
  %71 = load i32, ptr %5, align 4, !tbaa !38
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %5, align 4, !tbaa !38
  br label %41, !llvm.loop !219

73:                                               ; preds = %41
  br label %74

74:                                               ; preds = %73
  %75 = load i32, ptr %4, align 4, !tbaa !38
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %4, align 4, !tbaa !38
  br label %25, !llvm.loop !220

77:                                               ; preds = %25
  br label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %3, align 4, !tbaa !38
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %3, align 4, !tbaa !38
  br label %9, !llvm.loop !221

81:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define internal void @make_elems_for_productions(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  %10 = load ptr, ptr %2, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct.Grammar, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  %14 = getelementptr inbounds ptr, ptr %13, i64 0
  %15 = load ptr, ptr %14, align 8, !tbaa !10
  store ptr %15, ptr %8, align 8, !tbaa !10
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %16

16:                                               ; preds = %193, %1
  %17 = load i32, ptr %3, align 4, !tbaa !38
  %18 = load ptr, ptr %2, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.Grammar, ptr %18, i32 0, i32 1
  %20 = getelementptr inbounds nuw %struct.anon.0, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 8, !tbaa !30
  %22 = icmp ult i32 %17, %21
  br i1 %22, label %23, label %196

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.Grammar, ptr %24, i32 0, i32 1
  %26 = getelementptr inbounds nuw %struct.anon.0, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !12
  %28 = load i32, ptr %3, align 4, !tbaa !38
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !10
  %32 = getelementptr inbounds nuw %struct.Production, ptr %31, i32 0, i32 4
  %33 = load i8, ptr %32, align 4
  %34 = lshr i8 %33, 2
  %35 = and i8 %34, 7
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %192, label %38

38:                                               ; preds = %23
  %39 = load ptr, ptr %2, align 8, !tbaa !3
  %40 = getelementptr inbounds nuw %struct.Grammar, ptr %39, i32 0, i32 13
  %41 = load i32, ptr %40, align 4, !tbaa !84
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %2, align 8, !tbaa !3
  %45 = load i32, ptr %3, align 4, !tbaa !38
  %46 = call signext i32 @state_for_declaration(ptr noundef %44, i32 noundef signext %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %191

48:                                               ; preds = %43, %38
  store i32 0, ptr %4, align 4, !tbaa !38
  br label %49

49:                                               ; preds = %141, %48
  %50 = load i32, ptr %4, align 4, !tbaa !38
  %51 = load ptr, ptr %2, align 8, !tbaa !3
  %52 = getelementptr inbounds nuw %struct.Grammar, ptr %51, i32 0, i32 1
  %53 = getelementptr inbounds nuw %struct.anon.0, ptr %52, i32 0, i32 0
  %54 = load i32, ptr %53, align 8, !tbaa !30
  %55 = icmp ult i32 %50, %54
  br i1 %55, label %56, label %144

56:                                               ; preds = %49
  store i32 0, ptr %5, align 4, !tbaa !38
  br label %57

57:                                               ; preds = %137, %56
  %58 = load i32, ptr %5, align 4, !tbaa !38
  %59 = load ptr, ptr %2, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.Grammar, ptr %59, i32 0, i32 1
  %61 = getelementptr inbounds nuw %struct.anon.0, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !12
  %63 = load i32, ptr %4, align 4, !tbaa !38
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds ptr, ptr %62, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !10
  %67 = getelementptr inbounds nuw %struct.Production, ptr %66, i32 0, i32 2
  %68 = getelementptr inbounds nuw %struct.anon, ptr %67, i32 0, i32 0
  %69 = load i32, ptr %68, align 8, !tbaa !109
  %70 = icmp ult i32 %58, %69
  br i1 %70, label %71, label %140

71:                                               ; preds = %57
  %72 = load ptr, ptr %2, align 8, !tbaa !3
  %73 = getelementptr inbounds nuw %struct.Grammar, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds nuw %struct.anon.0, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !12
  %76 = load i32, ptr %4, align 4, !tbaa !38
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %75, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !10
  %80 = getelementptr inbounds nuw %struct.Production, ptr %79, i32 0, i32 2
  %81 = getelementptr inbounds nuw %struct.anon, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !108
  %83 = load i32, ptr %5, align 4, !tbaa !38
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %82, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !41
  store ptr %86, ptr %7, align 8, !tbaa !41
  store i32 0, ptr %6, align 4, !tbaa !38
  br label %87

87:                                               ; preds = %133, %71
  %88 = load i32, ptr %6, align 4, !tbaa !38
  %89 = load ptr, ptr %7, align 8, !tbaa !41
  %90 = getelementptr inbounds nuw %struct.Rule, ptr %89, i32 0, i32 6
  %91 = getelementptr inbounds nuw %struct.anon.5, ptr %90, i32 0, i32 0
  %92 = load i32, ptr %91, align 8, !tbaa !70
  %93 = icmp ult i32 %88, %92
  br i1 %93, label %94, label %136

94:                                               ; preds = %87
  %95 = load ptr, ptr %7, align 8, !tbaa !41
  %96 = getelementptr inbounds nuw %struct.Rule, ptr %95, i32 0, i32 6
  %97 = getelementptr inbounds nuw %struct.anon.5, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !69
  %99 = load i32, ptr %6, align 4, !tbaa !38
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %98, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !54
  %103 = getelementptr inbounds nuw %struct.Elem, ptr %102, i32 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !55
  %105 = load ptr, ptr %2, align 8, !tbaa !3
  %106 = getelementptr inbounds nuw %struct.Grammar, ptr %105, i32 0, i32 1
  %107 = getelementptr inbounds nuw %struct.anon.0, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !12
  %109 = load i32, ptr %3, align 4, !tbaa !38
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %108, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !10
  %113 = icmp eq ptr %104, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %94
  %115 = load ptr, ptr %7, align 8, !tbaa !41
  %116 = getelementptr inbounds nuw %struct.Rule, ptr %115, i32 0, i32 6
  %117 = getelementptr inbounds nuw %struct.anon.5, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !69
  %119 = load i32, ptr %6, align 4, !tbaa !38
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %118, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !54
  %123 = load ptr, ptr %2, align 8, !tbaa !3
  %124 = getelementptr inbounds nuw %struct.Grammar, ptr %123, i32 0, i32 1
  %125 = getelementptr inbounds nuw %struct.anon.0, ptr %124, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !12
  %127 = load i32, ptr %3, align 4, !tbaa !38
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds ptr, ptr %126, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !10
  %131 = getelementptr inbounds nuw %struct.Production, ptr %130, i32 0, i32 9
  store ptr %122, ptr %131, align 8, !tbaa !222
  br label %136

132:                                              ; preds = %94
  br label %133

133:                                              ; preds = %132
  %134 = load i32, ptr %6, align 4, !tbaa !38
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr %6, align 4, !tbaa !38
  br label %87, !llvm.loop !223

136:                                              ; preds = %114, %87
  br label %137

137:                                              ; preds = %136
  %138 = load i32, ptr %5, align 4, !tbaa !38
  %139 = add nsw i32 %138, 1
  store i32 %139, ptr %5, align 4, !tbaa !38
  br label %57, !llvm.loop !224

140:                                              ; preds = %57
  br label %141

141:                                              ; preds = %140
  %142 = load i32, ptr %4, align 4, !tbaa !38
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr %4, align 4, !tbaa !38
  br label %49, !llvm.loop !225

144:                                              ; preds = %49
  %145 = load i32, ptr %4, align 4, !tbaa !38
  %146 = load ptr, ptr %2, align 8, !tbaa !3
  %147 = getelementptr inbounds nuw %struct.Grammar, ptr %146, i32 0, i32 1
  %148 = getelementptr inbounds nuw %struct.anon.0, ptr %147, i32 0, i32 0
  %149 = load i32, ptr %148, align 8, !tbaa !30
  %150 = icmp uge i32 %145, %149
  br i1 %150, label %151, label %190

151:                                              ; preds = %144
  %152 = load ptr, ptr %2, align 8, !tbaa !3
  %153 = getelementptr inbounds nuw %struct.Grammar, ptr %152, i32 0, i32 1
  %154 = getelementptr inbounds nuw %struct.anon.0, ptr %153, i32 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !12
  %156 = load i32, ptr %3, align 4, !tbaa !38
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %155, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !10
  %160 = load ptr, ptr %2, align 8, !tbaa !3
  %161 = load ptr, ptr %8, align 8, !tbaa !10
  %162 = call ptr @new_rule(ptr noundef %160, ptr noundef %161)
  %163 = call ptr @new_elem_nterm(ptr noundef %159, ptr noundef %162)
  %164 = load ptr, ptr %2, align 8, !tbaa !3
  %165 = getelementptr inbounds nuw %struct.Grammar, ptr %164, i32 0, i32 1
  %166 = getelementptr inbounds nuw %struct.anon.0, ptr %165, i32 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !12
  %168 = load i32, ptr %3, align 4, !tbaa !38
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds ptr, ptr %167, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !10
  %172 = getelementptr inbounds nuw %struct.Production, ptr %171, i32 0, i32 9
  store ptr %163, ptr %172, align 8, !tbaa !222
  %173 = load ptr, ptr %2, align 8, !tbaa !3
  %174 = getelementptr inbounds nuw %struct.Grammar, ptr %173, i32 0, i32 29
  %175 = load i32, ptr %174, align 4, !tbaa !199
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr %174, align 4, !tbaa !199
  %177 = load ptr, ptr %2, align 8, !tbaa !3
  %178 = getelementptr inbounds nuw %struct.Grammar, ptr %177, i32 0, i32 1
  %179 = getelementptr inbounds nuw %struct.anon.0, ptr %178, i32 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !12
  %181 = load i32, ptr %3, align 4, !tbaa !38
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds ptr, ptr %180, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !10
  %185 = getelementptr inbounds nuw %struct.Production, ptr %184, i32 0, i32 9
  %186 = load ptr, ptr %185, align 8, !tbaa !222
  %187 = getelementptr inbounds nuw %struct.Elem, ptr %186, i32 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !51
  %189 = getelementptr inbounds nuw %struct.Rule, ptr %188, i32 0, i32 0
  store i32 %175, ptr %189, align 8, !tbaa !200
  br label %190

190:                                              ; preds = %151, %144
  br label %191

191:                                              ; preds = %190, %43
  br label %192

192:                                              ; preds = %191, %23
  br label %193

193:                                              ; preds = %192
  %194 = load i32, ptr %3, align 4, !tbaa !38
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr %3, align 4, !tbaa !38
  br label %16, !llvm.loop !226

196:                                              ; preds = %16
  %197 = load ptr, ptr %2, align 8, !tbaa !3
  %198 = getelementptr inbounds nuw %struct.Grammar, ptr %197, i32 0, i32 13
  %199 = load i32, ptr %198, align 4, !tbaa !84
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %228, label %201

201:                                              ; preds = %196
  %202 = load ptr, ptr %2, align 8, !tbaa !3
  %203 = getelementptr inbounds nuw %struct.Grammar, ptr %202, i32 0, i32 12
  %204 = load i32, ptr %203, align 8, !tbaa !227
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %228

206:                                              ; preds = %201
  %207 = load ptr, ptr %2, align 8, !tbaa !3
  %208 = call ptr @lookup_production(ptr noundef %207, ptr noundef @.str.75, i32 noundef signext 10)
  store ptr %208, ptr %9, align 8, !tbaa !10
  %209 = icmp ne ptr %208, null
  br i1 %209, label %210, label %228

210:                                              ; preds = %206
  %211 = load ptr, ptr %9, align 8, !tbaa !10
  %212 = load ptr, ptr %2, align 8, !tbaa !3
  %213 = load ptr, ptr %8, align 8, !tbaa !10
  %214 = call ptr @new_rule(ptr noundef %212, ptr noundef %213)
  %215 = call ptr @new_elem_nterm(ptr noundef %211, ptr noundef %214)
  %216 = load ptr, ptr %9, align 8, !tbaa !10
  %217 = getelementptr inbounds nuw %struct.Production, ptr %216, i32 0, i32 9
  store ptr %215, ptr %217, align 8, !tbaa !222
  %218 = load ptr, ptr %2, align 8, !tbaa !3
  %219 = getelementptr inbounds nuw %struct.Grammar, ptr %218, i32 0, i32 29
  %220 = load i32, ptr %219, align 4, !tbaa !199
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr %219, align 4, !tbaa !199
  %222 = load ptr, ptr %9, align 8, !tbaa !10
  %223 = getelementptr inbounds nuw %struct.Production, ptr %222, i32 0, i32 9
  %224 = load ptr, ptr %223, align 8, !tbaa !222
  %225 = getelementptr inbounds nuw %struct.Elem, ptr %224, i32 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !51
  %227 = getelementptr inbounds nuw %struct.Rule, ptr %226, i32 0, i32 0
  store i32 %220, ptr %227, align 8, !tbaa !200
  br label %228

228:                                              ; preds = %210, %206, %201, %196
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define internal void @check_default_actions(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  %4 = load ptr, ptr %2, align 8, !tbaa !3
  %5 = call ptr @lookup_production(ptr noundef %4, ptr noundef @.str.76, i32 noundef signext 1)
  store ptr %5, ptr %3, align 8, !tbaa !10
  %6 = load ptr, ptr %3, align 8, !tbaa !10
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !tbaa !10
  %10 = getelementptr inbounds nuw %struct.Production, ptr %9, i32 0, i32 2
  %11 = getelementptr inbounds nuw %struct.anon, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8, !tbaa !109
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  call void (ptr, ...) @d_fail(ptr noundef @.str.77)
  br label %15

15:                                               ; preds = %14, %8, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret void
}

declare void @build_LR_tables(ptr noundef) #5

; Function Attrs: nounwind
define internal void @map_declarations_to_states(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #9
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, ptr %3, align 4, !tbaa !38
  %7 = load ptr, ptr %2, align 8, !tbaa !3
  %8 = getelementptr inbounds nuw %struct.Grammar, ptr %7, i32 0, i32 3
  %9 = getelementptr inbounds nuw %struct.anon.2, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8, !tbaa !126
  %11 = icmp ult i32 %6, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %5
  %13 = load ptr, ptr %2, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.Grammar, ptr %13, i32 0, i32 3
  %15 = getelementptr inbounds nuw %struct.anon.2, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !127
  %17 = load i32, ptr %3, align 4, !tbaa !38
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !128
  store ptr %20, ptr %4, align 8, !tbaa !128
  %21 = load ptr, ptr %4, align 8, !tbaa !128
  %22 = getelementptr inbounds nuw %struct.State, ptr %21, i32 0, i32 10
  %23 = load i8, ptr %22, align 8
  %24 = and i8 %23, -25
  %25 = or i8 %24, 24
  store i8 %25, ptr %22, align 8
  br label %26

26:                                               ; preds = %12
  %27 = load i32, ptr %3, align 4, !tbaa !38
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %3, align 4, !tbaa !38
  br label %5, !llvm.loop !228

29:                                               ; preds = %5
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %30

30:                                               ; preds = %71, %29
  %31 = load i32, ptr %3, align 4, !tbaa !38
  %32 = load ptr, ptr %2, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.Grammar, ptr %32, i32 0, i32 7
  %34 = getelementptr inbounds nuw %struct.anon.3, ptr %33, i32 0, i32 0
  %35 = load i32, ptr %34, align 8, !tbaa !80
  %36 = icmp ult i32 %31, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %30
  %38 = load ptr, ptr %2, align 8, !tbaa !3
  %39 = getelementptr inbounds nuw %struct.Grammar, ptr %38, i32 0, i32 7
  %40 = getelementptr inbounds nuw %struct.anon.3, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !82
  %42 = load i32, ptr %3, align 4, !tbaa !38
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !75
  %46 = call signext i32 @scanner_declaration(ptr noundef %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %37
  %49 = load ptr, ptr %2, align 8, !tbaa !3
  %50 = load ptr, ptr %2, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.Grammar, ptr %50, i32 0, i32 7
  %52 = getelementptr inbounds nuw %struct.anon.3, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !82
  %54 = load i32, ptr %3, align 4, !tbaa !38
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !75
  %58 = getelementptr inbounds nuw %struct.Declaration, ptr %57, i32 0, i32 0
  %59 = load ptr, ptr %58, align 8, !tbaa !77
  %60 = getelementptr inbounds nuw %struct.Elem, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !55
  %62 = load ptr, ptr %2, align 8, !tbaa !3
  %63 = getelementptr inbounds nuw %struct.Grammar, ptr %62, i32 0, i32 7
  %64 = getelementptr inbounds nuw %struct.anon.3, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !82
  %66 = load i32, ptr %3, align 4, !tbaa !38
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %65, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !75
  call void @compute_declaration_states(ptr noundef %49, ptr noundef %61, ptr noundef %69)
  br label %70

70:                                               ; preds = %48, %37
  br label %71

71:                                               ; preds = %70
  %72 = load i32, ptr %3, align 4, !tbaa !38
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %3, align 4, !tbaa !38
  br label %30, !llvm.loop !229

74:                                               ; preds = %30
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %75

75:                                               ; preds = %105, %74
  %76 = load i32, ptr %3, align 4, !tbaa !38
  %77 = load ptr, ptr %2, align 8, !tbaa !3
  %78 = getelementptr inbounds nuw %struct.Grammar, ptr %77, i32 0, i32 3
  %79 = getelementptr inbounds nuw %struct.anon.2, ptr %78, i32 0, i32 0
  %80 = load i32, ptr %79, align 8, !tbaa !126
  %81 = icmp ult i32 %76, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %75
  %83 = load ptr, ptr %2, align 8, !tbaa !3
  %84 = getelementptr inbounds nuw %struct.Grammar, ptr %83, i32 0, i32 3
  %85 = getelementptr inbounds nuw %struct.anon.2, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !127
  %87 = load i32, ptr %3, align 4, !tbaa !38
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds ptr, ptr %86, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !128
  store ptr %90, ptr %4, align 8, !tbaa !128
  %91 = load ptr, ptr %4, align 8, !tbaa !128
  %92 = getelementptr inbounds nuw %struct.State, ptr %91, i32 0, i32 10
  %93 = load i8, ptr %92, align 8
  %94 = lshr i8 %93, 3
  %95 = and i8 %94, 3
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %104

98:                                               ; preds = %82
  %99 = load ptr, ptr %4, align 8, !tbaa !128
  %100 = getelementptr inbounds nuw %struct.State, ptr %99, i32 0, i32 10
  %101 = load i8, ptr %100, align 8
  %102 = and i8 %101, -25
  %103 = or i8 %102, 0
  store i8 %103, ptr %100, align 8
  br label %104

104:                                              ; preds = %98, %82
  br label %105

105:                                              ; preds = %104
  %106 = load i32, ptr %3, align 4, !tbaa !38
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %3, align 4, !tbaa !38
  br label %75, !llvm.loop !230

108:                                              ; preds = %75
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

declare void @build_scanners(ptr noundef) #5

; Function Attrs: nounwind
define internal ptr @new_elem() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #9
  %2 = call noalias ptr @malloc(i64 noundef 32) #11
  store ptr %2, ptr %1, align 8, !tbaa !54
  %3 = load ptr, ptr %1, align 8, !tbaa !54
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 32, i1 false)
  %4 = load ptr, ptr %1, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #9
  ret ptr %4
}

; Function Attrs: nounwind
define internal ptr @new_elem_term(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !59
  store ptr %1, ptr %4, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %6 = call ptr @new_elem()
  store ptr %6, ptr %5, align 8, !tbaa !54
  %7 = load ptr, ptr %5, align 8, !tbaa !54
  %8 = getelementptr inbounds nuw %struct.Elem, ptr %7, i32 0, i32 0
  store i32 1, ptr %8, align 8, !tbaa !49
  %9 = load ptr, ptr %3, align 8, !tbaa !59
  %10 = load ptr, ptr %5, align 8, !tbaa !54
  %11 = getelementptr inbounds nuw %struct.Elem, ptr %10, i32 0, i32 3
  store ptr %9, ptr %11, align 8, !tbaa !55
  %12 = load ptr, ptr %4, align 8, !tbaa !41
  %13 = load ptr, ptr %5, align 8, !tbaa !54
  %14 = getelementptr inbounds nuw %struct.Elem, ptr %13, i32 0, i32 2
  store ptr %12, ptr %14, align 8, !tbaa !51
  br label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %4, align 8, !tbaa !41
  %17 = getelementptr inbounds nuw %struct.Rule, ptr %16, i32 0, i32 6
  %18 = getelementptr inbounds nuw %struct.anon.5, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = icmp ne ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %5, align 8, !tbaa !54
  %23 = load ptr, ptr %4, align 8, !tbaa !41
  %24 = getelementptr inbounds nuw %struct.Rule, ptr %23, i32 0, i32 6
  %25 = getelementptr inbounds nuw %struct.anon.5, ptr %24, i32 0, i32 3
  %26 = getelementptr inbounds [3 x ptr], ptr %25, i64 0, i64 0
  %27 = load ptr, ptr %4, align 8, !tbaa !41
  %28 = getelementptr inbounds nuw %struct.Rule, ptr %27, i32 0, i32 6
  %29 = getelementptr inbounds nuw %struct.anon.5, ptr %28, i32 0, i32 2
  store ptr %26, ptr %29, align 8, !tbaa !69
  %30 = load ptr, ptr %4, align 8, !tbaa !41
  %31 = getelementptr inbounds nuw %struct.Rule, ptr %30, i32 0, i32 6
  %32 = getelementptr inbounds nuw %struct.anon.5, ptr %31, i32 0, i32 0
  %33 = load i32, ptr %32, align 8, !tbaa !70
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !70
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds nuw ptr, ptr %26, i64 %35
  store ptr %22, ptr %36, align 8, !tbaa !54
  br label %94

37:                                               ; preds = %15
  %38 = load ptr, ptr %4, align 8, !tbaa !41
  %39 = getelementptr inbounds nuw %struct.Rule, ptr %38, i32 0, i32 6
  %40 = getelementptr inbounds nuw %struct.anon.5, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !69
  %42 = load ptr, ptr %4, align 8, !tbaa !41
  %43 = getelementptr inbounds nuw %struct.Rule, ptr %42, i32 0, i32 6
  %44 = getelementptr inbounds nuw %struct.anon.5, ptr %43, i32 0, i32 3
  %45 = getelementptr inbounds [3 x ptr], ptr %44, i64 0, i64 0
  %46 = icmp eq ptr %41, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %37
  %48 = load ptr, ptr %4, align 8, !tbaa !41
  %49 = getelementptr inbounds nuw %struct.Rule, ptr %48, i32 0, i32 6
  %50 = getelementptr inbounds nuw %struct.anon.5, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8, !tbaa !70
  %52 = icmp ult i32 %51, 3
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load ptr, ptr %5, align 8, !tbaa !54
  %55 = load ptr, ptr %4, align 8, !tbaa !41
  %56 = getelementptr inbounds nuw %struct.Rule, ptr %55, i32 0, i32 6
  %57 = getelementptr inbounds nuw %struct.anon.5, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !69
  %59 = load ptr, ptr %4, align 8, !tbaa !41
  %60 = getelementptr inbounds nuw %struct.Rule, ptr %59, i32 0, i32 6
  %61 = getelementptr inbounds nuw %struct.anon.5, ptr %60, i32 0, i32 0
  %62 = load i32, ptr %61, align 8, !tbaa !70
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 8, !tbaa !70
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds nuw ptr, ptr %58, i64 %64
  store ptr %54, ptr %65, align 8, !tbaa !54
  br label %94

66:                                               ; preds = %47
  br label %88

67:                                               ; preds = %37
  %68 = load ptr, ptr %4, align 8, !tbaa !41
  %69 = getelementptr inbounds nuw %struct.Rule, ptr %68, i32 0, i32 6
  %70 = getelementptr inbounds nuw %struct.anon.5, ptr %69, i32 0, i32 0
  %71 = load i32, ptr %70, align 8, !tbaa !70
  %72 = and i32 %71, 7
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load ptr, ptr %5, align 8, !tbaa !54
  %76 = load ptr, ptr %4, align 8, !tbaa !41
  %77 = getelementptr inbounds nuw %struct.Rule, ptr %76, i32 0, i32 6
  %78 = getelementptr inbounds nuw %struct.anon.5, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !69
  %80 = load ptr, ptr %4, align 8, !tbaa !41
  %81 = getelementptr inbounds nuw %struct.Rule, ptr %80, i32 0, i32 6
  %82 = getelementptr inbounds nuw %struct.anon.5, ptr %81, i32 0, i32 0
  %83 = load i32, ptr %82, align 8, !tbaa !70
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 8, !tbaa !70
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds nuw ptr, ptr %79, i64 %85
  store ptr %75, ptr %86, align 8, !tbaa !54
  br label %94

87:                                               ; preds = %67
  br label %88

88:                                               ; preds = %87, %66
  br label %89

89:                                               ; preds = %88
  %90 = load ptr, ptr %4, align 8, !tbaa !41
  %91 = getelementptr inbounds nuw %struct.Rule, ptr %90, i32 0, i32 6
  %92 = load ptr, ptr %5, align 8, !tbaa !54
  call void @vec_add_internal(ptr noundef %91, ptr noundef %92)
  br label %93

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %74, %53, %21
  %95 = load ptr, ptr %5, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  ret ptr %95
}

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef signext) #0

; Function Attrs: nounwind
define internal ptr @new_term() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #9
  %2 = call noalias ptr @malloc(i64 noundef 48) #11
  store ptr %2, ptr %1, align 8, !tbaa !59
  %3 = load ptr, ptr %1, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 48, i1 false)
  %4 = load ptr, ptr %1, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #9
  ret ptr %4
}

; Function Attrs: nounwind
define internal void @print_item(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  store i32 1, ptr %4, align 4, !tbaa !38
  %6 = load ptr, ptr %2, align 8, !tbaa !54
  %7 = getelementptr inbounds nuw %struct.Elem, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds nuw %struct.Rule, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = getelementptr inbounds nuw %struct.Production, ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.58, ptr noundef %12)
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %14

14:                                               ; preds = %41, %1
  %15 = load i32, ptr %3, align 4, !tbaa !38
  %16 = load ptr, ptr %2, align 8, !tbaa !54
  %17 = getelementptr inbounds nuw %struct.Elem, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 6
  %20 = getelementptr inbounds nuw %struct.anon.5, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 8, !tbaa !70
  %22 = icmp ult i32 %15, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #9
  %24 = load ptr, ptr %2, align 8, !tbaa !54
  %25 = getelementptr inbounds nuw %struct.Elem, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = getelementptr inbounds nuw %struct.Rule, ptr %26, i32 0, i32 6
  %28 = getelementptr inbounds nuw %struct.anon.5, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  %30 = load i32, ptr %3, align 4, !tbaa !38
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  store ptr %33, ptr %5, align 8, !tbaa !54
  %34 = load ptr, ptr %2, align 8, !tbaa !54
  %35 = load ptr, ptr %5, align 8, !tbaa !54
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.59)
  store i32 0, ptr %4, align 4, !tbaa !38
  br label %39

39:                                               ; preds = %37, %23
  %40 = load ptr, ptr %5, align 8, !tbaa !54
  call void @print_elem(ptr noundef %40)
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #9
  br label %41

41:                                               ; preds = %39
  %42 = load i32, ptr %3, align 4, !tbaa !38
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %3, align 4, !tbaa !38
  br label %14, !llvm.loop !231

44:                                               ; preds = %14
  %45 = load i32, ptr %4, align 4, !tbaa !38
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.59)
  br label %49

49:                                               ; preds = %47, %44
  %50 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.32)
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define internal void @print_conflict(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !8
  store ptr %1, ptr %4, align 8, !tbaa !232
  %5 = load ptr, ptr %4, align 8, !tbaa !232
  %6 = load i32, ptr %5, align 4, !tbaa !38
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.63)
  %10 = load ptr, ptr %4, align 8, !tbaa !232
  store i32 1, ptr %10, align 4, !tbaa !38
  br label %11

11:                                               ; preds = %8, %2
  %12 = load ptr, ptr %3, align 8, !tbaa !8
  %13 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.64, ptr noundef %12)
  %14 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.32)
  ret void
}

; Function Attrs: nounwind
define internal ptr @lookup_token(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !8
  store i32 %2, ptr %7, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  store i32 0, ptr %8, align 4, !tbaa !38
  br label %11

11:                                               ; preds = %51, %3
  %12 = load i32, ptr %8, align 4, !tbaa !38
  %13 = load ptr, ptr %5, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.Grammar, ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds nuw %struct.anon.1, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8, !tbaa !63
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  %19 = load ptr, ptr %5, align 8, !tbaa !3
  %20 = getelementptr inbounds nuw %struct.Grammar, ptr %19, i32 0, i32 2
  %21 = getelementptr inbounds nuw %struct.anon.1, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = load i32, ptr %8, align 4, !tbaa !38
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  store ptr %26, ptr %9, align 8, !tbaa !59
  %27 = load ptr, ptr %9, align 8, !tbaa !59
  %28 = getelementptr inbounds nuw %struct.Term, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !57
  %30 = icmp ne i32 %29, 3
  br i1 %30, label %46, label %31

31:                                               ; preds = %18
  %32 = load ptr, ptr %9, align 8, !tbaa !59
  %33 = getelementptr inbounds nuw %struct.Term, ptr %32, i32 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !61
  %35 = load i32, ptr %7, align 4, !tbaa !38
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %9, align 8, !tbaa !59
  %39 = getelementptr inbounds nuw %struct.Term, ptr %38, i32 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !60
  %41 = load ptr, ptr %6, align 8, !tbaa !8
  %42 = load i32, ptr %7, align 4, !tbaa !38
  %43 = sext i32 %42 to i64
  %44 = call signext i32 @strncmp(ptr noundef %40, ptr noundef %41, i64 noundef %43) #10
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37, %31, %18
  store i32 4, ptr %10, align 4
  br label %49

47:                                               ; preds = %37
  %48 = load ptr, ptr %9, align 8, !tbaa !59
  store ptr %48, ptr %4, align 8
  store i32 1, ptr %10, align 4
  br label %49

49:                                               ; preds = %47, %46
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  %50 = load i32, ptr %10, align 4
  switch i32 %50, label %55 [
    i32 4, label %51
  ]

51:                                               ; preds = %49
  %52 = load i32, ptr %8, align 4, !tbaa !38
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %8, align 4, !tbaa !38
  br label %11, !llvm.loop !234

54:                                               ; preds = %11
  store ptr null, ptr %4, align 8
  store i32 1, ptr %10, align 4
  br label %55

55:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  %56 = load ptr, ptr %4, align 8
  ret ptr %56
}

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind
define internal void @compute_nullable(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  store i32 1, ptr %6, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %8

8:                                                ; preds = %80, %1
  %9 = load i32, ptr %3, align 4, !tbaa !38
  %10 = load ptr, ptr %2, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct.Grammar, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds nuw %struct.anon.0, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !30
  %14 = icmp ult i32 %9, %13
  br i1 %14, label %15, label %83

15:                                               ; preds = %8
  store i32 0, ptr %4, align 4, !tbaa !38
  br label %16

16:                                               ; preds = %76, %15
  %17 = load i32, ptr %4, align 4, !tbaa !38
  %18 = load ptr, ptr %2, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.Grammar, ptr %18, i32 0, i32 1
  %20 = getelementptr inbounds nuw %struct.anon.0, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  %22 = load i32, ptr %3, align 4, !tbaa !38
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !10
  %26 = getelementptr inbounds nuw %struct.Production, ptr %25, i32 0, i32 2
  %27 = getelementptr inbounds nuw %struct.anon, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8, !tbaa !109
  %29 = icmp ult i32 %17, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %16
  %31 = load ptr, ptr %2, align 8, !tbaa !3
  %32 = getelementptr inbounds nuw %struct.Grammar, ptr %31, i32 0, i32 1
  %33 = getelementptr inbounds nuw %struct.anon.0, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !12
  %35 = load i32, ptr %3, align 4, !tbaa !38
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !10
  %39 = getelementptr inbounds nuw %struct.Production, ptr %38, i32 0, i32 2
  %40 = getelementptr inbounds nuw %struct.anon, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !108
  %42 = load i32, ptr %4, align 4, !tbaa !38
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !41
  %46 = getelementptr inbounds nuw %struct.Rule, ptr %45, i32 0, i32 6
  %47 = getelementptr inbounds nuw %struct.anon.5, ptr %46, i32 0, i32 0
  %48 = load i32, ptr %47, align 8, !tbaa !70
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %30
  %51 = load ptr, ptr %2, align 8, !tbaa !3
  %52 = getelementptr inbounds nuw %struct.Grammar, ptr %51, i32 0, i32 1
  %53 = getelementptr inbounds nuw %struct.anon.0, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !12
  %55 = load i32, ptr %3, align 4, !tbaa !38
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %54, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !10
  %59 = getelementptr inbounds nuw %struct.Production, ptr %58, i32 0, i32 2
  %60 = getelementptr inbounds nuw %struct.anon, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !108
  %62 = load i32, ptr %4, align 4, !tbaa !38
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %61, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !41
  %66 = load ptr, ptr %2, align 8, !tbaa !3
  %67 = getelementptr inbounds nuw %struct.Grammar, ptr %66, i32 0, i32 1
  %68 = getelementptr inbounds nuw %struct.anon.0, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !12
  %70 = load i32, ptr %3, align 4, !tbaa !38
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %69, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !10
  %74 = getelementptr inbounds nuw %struct.Production, ptr %73, i32 0, i32 5
  store ptr %65, ptr %74, align 8, !tbaa !235
  br label %79

75:                                               ; preds = %30
  br label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %4, align 4, !tbaa !38
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %4, align 4, !tbaa !38
  br label %16, !llvm.loop !236

79:                                               ; preds = %50, %16
  br label %80

80:                                               ; preds = %79
  %81 = load i32, ptr %3, align 4, !tbaa !38
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %3, align 4, !tbaa !38
  br label %8, !llvm.loop !237

83:                                               ; preds = %8
  br label %84

84:                                               ; preds = %217, %83
  %85 = load i32, ptr %6, align 4, !tbaa !38
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %218

87:                                               ; preds = %84
  store i32 0, ptr %6, align 4, !tbaa !38
  store i32 0, ptr %3, align 4, !tbaa !38
  br label %88

88:                                               ; preds = %214, %87
  %89 = load i32, ptr %3, align 4, !tbaa !38
  %90 = load ptr, ptr %2, align 8, !tbaa !3
  %91 = getelementptr inbounds nuw %struct.Grammar, ptr %90, i32 0, i32 1
  %92 = getelementptr inbounds nuw %struct.anon.0, ptr %91, i32 0, i32 0
  %93 = load i32, ptr %92, align 8, !tbaa !30
  %94 = icmp ult i32 %89, %93
  br i1 %94, label %95, label %217

95:                                               ; preds = %88
  %96 = load ptr, ptr %2, align 8, !tbaa !3
  %97 = getelementptr inbounds nuw %struct.Grammar, ptr %96, i32 0, i32 1
  %98 = getelementptr inbounds nuw %struct.anon.0, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !12
  %100 = load i32, ptr %3, align 4, !tbaa !38
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %99, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !10
  %104 = getelementptr inbounds nuw %struct.Production, ptr %103, i32 0, i32 5
  %105 = load ptr, ptr %104, align 8, !tbaa !235
  %106 = icmp ne ptr %105, null
  br i1 %106, label %212, label %107

107:                                              ; preds = %95
  store i32 0, ptr %4, align 4, !tbaa !38
  br label %108

108:                                              ; preds = %208, %107
  %109 = load i32, ptr %4, align 4, !tbaa !38
  %110 = load ptr, ptr %2, align 8, !tbaa !3
  %111 = getelementptr inbounds nuw %struct.Grammar, ptr %110, i32 0, i32 1
  %112 = getelementptr inbounds nuw %struct.anon.0, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !12
  %114 = load i32, ptr %3, align 4, !tbaa !38
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds ptr, ptr %113, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !10
  %118 = getelementptr inbounds nuw %struct.Production, ptr %117, i32 0, i32 2
  %119 = getelementptr inbounds nuw %struct.anon, ptr %118, i32 0, i32 0
  %120 = load i32, ptr %119, align 8, !tbaa !109
  %121 = icmp ult i32 %109, %120
  br i1 %121, label %122, label %211

122:                                              ; preds = %108
  store i32 0, ptr %5, align 4, !tbaa !38
  br label %123

123:                                              ; preds = %180, %122
  %124 = load i32, ptr %5, align 4, !tbaa !38
  %125 = load ptr, ptr %2, align 8, !tbaa !3
  %126 = getelementptr inbounds nuw %struct.Grammar, ptr %125, i32 0, i32 1
  %127 = getelementptr inbounds nuw %struct.anon.0, ptr %126, i32 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !12
  %129 = load i32, ptr %3, align 4, !tbaa !38
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %128, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !10
  %133 = getelementptr inbounds nuw %struct.Production, ptr %132, i32 0, i32 2
  %134 = getelementptr inbounds nuw %struct.anon, ptr %133, i32 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !108
  %136 = load i32, ptr %4, align 4, !tbaa !38
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds ptr, ptr %135, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !41
  %140 = getelementptr inbounds nuw %struct.Rule, ptr %139, i32 0, i32 6
  %141 = getelementptr inbounds nuw %struct.anon.5, ptr %140, i32 0, i32 0
  %142 = load i32, ptr %141, align 8, !tbaa !70
  %143 = icmp ult i32 %124, %142
  br i1 %143, label %144, label %183

144:                                              ; preds = %123
  %145 = load ptr, ptr %2, align 8, !tbaa !3
  %146 = getelementptr inbounds nuw %struct.Grammar, ptr %145, i32 0, i32 1
  %147 = getelementptr inbounds nuw %struct.anon.0, ptr %146, i32 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !12
  %149 = load i32, ptr %3, align 4, !tbaa !38
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds ptr, ptr %148, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !10
  %153 = getelementptr inbounds nuw %struct.Production, ptr %152, i32 0, i32 2
  %154 = getelementptr inbounds nuw %struct.anon, ptr %153, i32 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !108
  %156 = load i32, ptr %4, align 4, !tbaa !38
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %155, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !41
  %160 = getelementptr inbounds nuw %struct.Rule, ptr %159, i32 0, i32 6
  %161 = getelementptr inbounds nuw %struct.anon.5, ptr %160, i32 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !69
  %163 = load i32, ptr %5, align 4, !tbaa !38
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds ptr, ptr %162, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !54
  store ptr %166, ptr %7, align 8, !tbaa !54
  %167 = load ptr, ptr %7, align 8, !tbaa !54
  %168 = getelementptr inbounds nuw %struct.Elem, ptr %167, i32 0, i32 0
  %169 = load i32, ptr %168, align 8, !tbaa !49
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %144
  %172 = load ptr, ptr %7, align 8, !tbaa !54
  %173 = getelementptr inbounds nuw %struct.Elem, ptr %172, i32 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !55
  %175 = getelementptr inbounds nuw %struct.Production, ptr %174, i32 0, i32 5
  %176 = load ptr, ptr %175, align 8, !tbaa !235
  %177 = icmp ne ptr %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %171, %144
  br label %213

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179
  %181 = load i32, ptr %5, align 4, !tbaa !38
  %182 = add nsw i32 %181, 1
  store i32 %182, ptr %5, align 4, !tbaa !38
  br label %123, !llvm.loop !238

183:                                              ; preds = %123
  store i32 1, ptr %6, align 4, !tbaa !38
  %184 = load ptr, ptr %2, align 8, !tbaa !3
  %185 = getelementptr inbounds nuw %struct.Grammar, ptr %184, i32 0, i32 1
  %186 = getelementptr inbounds nuw %struct.anon.0, ptr %185, i32 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !12
  %188 = load i32, ptr %3, align 4, !tbaa !38
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds ptr, ptr %187, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !10
  %192 = getelementptr inbounds nuw %struct.Production, ptr %191, i32 0, i32 2
  %193 = getelementptr inbounds nuw %struct.anon, ptr %192, i32 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !108
  %195 = load i32, ptr %4, align 4, !tbaa !38
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds ptr, ptr %194, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !41
  %199 = load ptr, ptr %2, align 8, !tbaa !3
  %200 = getelementptr inbounds nuw %struct.Grammar, ptr %199, i32 0, i32 1
  %201 = getelementptr inbounds nuw %struct.anon.0, ptr %200, i32 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !12
  %203 = load i32, ptr %3, align 4, !tbaa !38
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds ptr, ptr %202, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !10
  %207 = getelementptr inbounds nuw %struct.Production, ptr %206, i32 0, i32 5
  store ptr %198, ptr %207, align 8, !tbaa !235
  br label %211

208:                                              ; No predecessors!
  %209 = load i32, ptr %4, align 4, !tbaa !38
  %210 = add nsw i32 %209, 1
  store i32 %210, ptr %4, align 4, !tbaa !38
  br label %108, !llvm.loop !239

211:                                              ; preds = %183, %108
  br label %212

212:                                              ; preds = %211, %95
  br label %213

213:                                              ; preds = %212, %178
  br label %214

214:                                              ; preds = %213
  %215 = load i32, ptr %3, align 4, !tbaa !38
  %216 = add nsw i32 %215, 1
  store i32 %216, ptr %3, align 4, !tbaa !38
  br label %88, !llvm.loop !240

217:                                              ; preds = %88
  br label %84, !llvm.loop !241

218:                                              ; preds = %84
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define internal void @convert_regex_production_one(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #9
  store i32 0, ptr %13, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #9
  store ptr null, ptr %14, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #9
  store i32 0, ptr %17, align 4, !tbaa !38
  %19 = load ptr, ptr %4, align 8, !tbaa !10
  %20 = getelementptr inbounds nuw %struct.Production, ptr %19, i32 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !210
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, ptr %18, align 4
  br label %722

24:                                               ; preds = %2
  %25 = load ptr, ptr %4, align 8, !tbaa !10
  %26 = getelementptr inbounds nuw %struct.Production, ptr %25, i32 0, i32 4
  %27 = load i8, ptr %26, align 4
  %28 = lshr i8 %27, 1
  %29 = and i8 %28, 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load ptr, ptr %4, align 8, !tbaa !10
  %34 = getelementptr inbounds nuw %struct.Production, ptr %33, i32 0, i32 0
  %35 = load ptr, ptr %34, align 8, !tbaa !31
  call void (ptr, ...) @d_fail(ptr noundef @.str.67, ptr noundef %35)
  br label %36

36:                                               ; preds = %32, %24
  %37 = load ptr, ptr %4, align 8, !tbaa !10
  %38 = getelementptr inbounds nuw %struct.Production, ptr %37, i32 0, i32 4
  %39 = load i8, ptr %38, align 4
  %40 = and i8 %39, -3
  %41 = or i8 %40, 2
  store i8 %41, ptr %38, align 4
  store i32 0, ptr %5, align 4, !tbaa !38
  br label %42

42:                                               ; preds = %212, %36
  %43 = load i32, ptr %5, align 4, !tbaa !38
  %44 = load ptr, ptr %4, align 8, !tbaa !10
  %45 = getelementptr inbounds nuw %struct.Production, ptr %44, i32 0, i32 2
  %46 = getelementptr inbounds nuw %struct.anon, ptr %45, i32 0, i32 0
  %47 = load i32, ptr %46, align 8, !tbaa !109
  %48 = icmp ult i32 %43, %47
  br i1 %48, label %49, label %215

49:                                               ; preds = %42
  %50 = load ptr, ptr %4, align 8, !tbaa !10
  %51 = getelementptr inbounds nuw %struct.Production, ptr %50, i32 0, i32 2
  %52 = getelementptr inbounds nuw %struct.anon, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !108
  %54 = load i32, ptr %5, align 4, !tbaa !38
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !41
  store ptr %57, ptr %9, align 8, !tbaa !41
  %58 = load ptr, ptr %9, align 8, !tbaa !41
  %59 = getelementptr inbounds nuw %struct.Rule, ptr %58, i32 0, i32 9
  %60 = getelementptr inbounds nuw %struct.Code, ptr %59, i32 0, i32 0
  %61 = load ptr, ptr %60, align 8, !tbaa !113
  %62 = icmp ne ptr %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %49
  %64 = load ptr, ptr %9, align 8, !tbaa !41
  %65 = getelementptr inbounds nuw %struct.Rule, ptr %64, i32 0, i32 8
  %66 = getelementptr inbounds nuw %struct.Code, ptr %65, i32 0, i32 0
  %67 = load ptr, ptr %66, align 8, !tbaa !112
  %68 = icmp ne ptr %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load ptr, ptr %4, align 8, !tbaa !10
  %71 = getelementptr inbounds nuw %struct.Production, ptr %70, i32 0, i32 2
  %72 = getelementptr inbounds nuw %struct.anon, ptr %71, i32 0, i32 0
  %73 = load i32, ptr %72, align 8, !tbaa !109
  %74 = icmp ugt i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %69, %49
  %76 = load ptr, ptr %4, align 8, !tbaa !10
  %77 = getelementptr inbounds nuw %struct.Production, ptr %76, i32 0, i32 0
  %78 = load ptr, ptr %77, align 8, !tbaa !31
  call void (ptr, ...) @d_fail(ptr noundef @.str.68, ptr noundef %78)
  br label %79

79:                                               ; preds = %75, %69, %63
  store i32 0, ptr %6, align 4, !tbaa !38
  br label %80

80:                                               ; preds = %208, %79
  %81 = load i32, ptr %6, align 4, !tbaa !38
  %82 = load ptr, ptr %9, align 8, !tbaa !41
  %83 = getelementptr inbounds nuw %struct.Rule, ptr %82, i32 0, i32 6
  %84 = getelementptr inbounds nuw %struct.anon.5, ptr %83, i32 0, i32 0
  %85 = load i32, ptr %84, align 8, !tbaa !70
  %86 = icmp ult i32 %81, %85
  br i1 %86, label %87, label %211

87:                                               ; preds = %80
  %88 = load ptr, ptr %9, align 8, !tbaa !41
  %89 = getelementptr inbounds nuw %struct.Rule, ptr %88, i32 0, i32 6
  %90 = getelementptr inbounds nuw %struct.anon.5, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !69
  %92 = load i32, ptr %6, align 4, !tbaa !38
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !54
  store ptr %95, ptr %11, align 8, !tbaa !54
  %96 = load ptr, ptr %11, align 8, !tbaa !54
  %97 = getelementptr inbounds nuw %struct.Elem, ptr %96, i32 0, i32 0
  %98 = load i32, ptr %97, align 8, !tbaa !49
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %183

100:                                              ; preds = %87
  %101 = load ptr, ptr %11, align 8, !tbaa !54
  %102 = getelementptr inbounds nuw %struct.Elem, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !55
  %104 = getelementptr inbounds nuw %struct.Production, ptr %103, i32 0, i32 4
  %105 = load i8, ptr %104, align 4
  %106 = and i8 %105, 1
  %107 = zext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %100
  %110 = load ptr, ptr %4, align 8, !tbaa !10
  %111 = getelementptr inbounds nuw %struct.Production, ptr %110, i32 0, i32 0
  %112 = load ptr, ptr %111, align 8, !tbaa !31
  %113 = load ptr, ptr %11, align 8, !tbaa !54
  %114 = getelementptr inbounds nuw %struct.Elem, ptr %113, i32 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !55
  %116 = getelementptr inbounds nuw %struct.Production, ptr %115, i32 0, i32 0
  %117 = load ptr, ptr %116, align 8, !tbaa !31
  call void (ptr, ...) @d_fail(ptr noundef @.str.69, ptr noundef %112, ptr noundef %117)
  br label %118

118:                                              ; preds = %109, %100
  %119 = load ptr, ptr %11, align 8, !tbaa !54
  %120 = getelementptr inbounds nuw %struct.Elem, ptr %119, i32 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !55
  store ptr %121, ptr %8, align 8, !tbaa !10
  store i32 0, ptr %7, align 4, !tbaa !38
  br label %122

122:                                              ; preds = %161, %118
  %123 = load i32, ptr %7, align 4, !tbaa !38
  %124 = load ptr, ptr %8, align 8, !tbaa !10
  %125 = getelementptr inbounds nuw %struct.Production, ptr %124, i32 0, i32 2
  %126 = getelementptr inbounds nuw %struct.anon, ptr %125, i32 0, i32 0
  %127 = load i32, ptr %126, align 8, !tbaa !109
  %128 = icmp ult i32 %123, %127
  br i1 %128, label %129, label %164

129:                                              ; preds = %122
  %130 = load ptr, ptr %8, align 8, !tbaa !10
  %131 = getelementptr inbounds nuw %struct.Production, ptr %130, i32 0, i32 2
  %132 = getelementptr inbounds nuw %struct.anon, ptr %131, i32 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !108
  %134 = load i32, ptr %7, align 4, !tbaa !38
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds ptr, ptr %133, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !41
  %138 = getelementptr inbounds nuw %struct.Rule, ptr %137, i32 0, i32 8
  %139 = getelementptr inbounds nuw %struct.Code, ptr %138, i32 0, i32 0
  %140 = load ptr, ptr %139, align 8, !tbaa !112
  %141 = icmp ne ptr %140, null
  br i1 %141, label %155, label %142

142:                                              ; preds = %129
  %143 = load ptr, ptr %8, align 8, !tbaa !10
  %144 = getelementptr inbounds nuw %struct.Production, ptr %143, i32 0, i32 2
  %145 = getelementptr inbounds nuw %struct.anon, ptr %144, i32 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !108
  %147 = load i32, ptr %7, align 4, !tbaa !38
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds ptr, ptr %146, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !41
  %151 = getelementptr inbounds nuw %struct.Rule, ptr %150, i32 0, i32 9
  %152 = getelementptr inbounds nuw %struct.Code, ptr %151, i32 0, i32 0
  %153 = load ptr, ptr %152, align 8, !tbaa !113
  %154 = icmp ne ptr %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %142, %129
  %156 = load i32, ptr %7, align 4, !tbaa !38
  %157 = load ptr, ptr %4, align 8, !tbaa !10
  %158 = getelementptr inbounds nuw %struct.Production, ptr %157, i32 0, i32 0
  %159 = load ptr, ptr %158, align 8, !tbaa !31
  call void (ptr, ...) @d_fail(ptr noundef @.str.70, i32 noundef signext %156, ptr noundef %159)
  br label %160

160:                                              ; preds = %155, %142
  br label %161

161:                                              ; preds = %160
  %162 = load i32, ptr %7, align 4, !tbaa !38
  %163 = add nsw i32 %162, 1
  store i32 %163, ptr %7, align 4, !tbaa !38
  br label %122, !llvm.loop !242

164:                                              ; preds = %122
  %165 = load ptr, ptr %4, align 8, !tbaa !10
  %166 = load ptr, ptr %8, align 8, !tbaa !10
  %167 = icmp ne ptr %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %164
  %169 = load ptr, ptr %3, align 8, !tbaa !3
  %170 = load ptr, ptr %8, align 8, !tbaa !10
  call void @convert_regex_production_one(ptr noundef %169, ptr noundef %170)
  %171 = load ptr, ptr %8, align 8, !tbaa !10
  %172 = getelementptr inbounds nuw %struct.Production, ptr %171, i32 0, i32 10
  %173 = load ptr, ptr %172, align 8, !tbaa !210
  %174 = getelementptr inbounds nuw %struct.Term, ptr %173, i32 0, i32 6
  %175 = load i32, ptr %174, align 8, !tbaa !61
  %176 = add nsw i32 %175, 5
  %177 = load i32, ptr %17, align 4, !tbaa !38
  %178 = add nsw i32 %177, %176
  store i32 %178, ptr %17, align 4, !tbaa !38
  br label %182

179:                                              ; preds = %164
  store i32 1, ptr %13, align 4, !tbaa !38
  %180 = load i32, ptr %17, align 4, !tbaa !38
  %181 = add nsw i32 %180, 5
  store i32 %181, ptr %17, align 4, !tbaa !38
  br label %182

182:                                              ; preds = %179, %168
  br label %207

183:                                              ; preds = %87
  %184 = load ptr, ptr %11, align 8, !tbaa !54
  %185 = getelementptr inbounds nuw %struct.Elem, ptr %184, i32 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !55
  %187 = getelementptr inbounds nuw %struct.Term, ptr %186, i32 0, i32 0
  %188 = load i32, ptr %187, align 8, !tbaa !57
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %197, label %190

190:                                              ; preds = %183
  %191 = load ptr, ptr %11, align 8, !tbaa !54
  %192 = getelementptr inbounds nuw %struct.Elem, ptr %191, i32 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !55
  %194 = getelementptr inbounds nuw %struct.Term, ptr %193, i32 0, i32 0
  %195 = load i32, ptr %194, align 8, !tbaa !57
  %196 = icmp eq i32 %195, 3
  br i1 %196, label %197, label %198

197:                                              ; preds = %190, %183
  call void (ptr, ...) @d_fail(ptr noundef @.str.71)
  br label %198

198:                                              ; preds = %197, %190
  %199 = load ptr, ptr %11, align 8, !tbaa !54
  %200 = getelementptr inbounds nuw %struct.Elem, ptr %199, i32 0, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !55
  %202 = getelementptr inbounds nuw %struct.Term, ptr %201, i32 0, i32 6
  %203 = load i32, ptr %202, align 8, !tbaa !61
  %204 = add nsw i32 %203, 5
  %205 = load i32, ptr %17, align 4, !tbaa !38
  %206 = add nsw i32 %205, %204
  store i32 %206, ptr %17, align 4, !tbaa !38
  br label %207

207:                                              ; preds = %198, %182
  br label %208

208:                                              ; preds = %207
  %209 = load i32, ptr %6, align 4, !tbaa !38
  %210 = add nsw i32 %209, 1
  store i32 %210, ptr %6, align 4, !tbaa !38
  br label %80, !llvm.loop !243

211:                                              ; preds = %80
  br label %212

212:                                              ; preds = %211
  %213 = load i32, ptr %5, align 4, !tbaa !38
  %214 = add nsw i32 %213, 1
  store i32 %214, ptr %5, align 4, !tbaa !38
  br label %42, !llvm.loop !244

215:                                              ; preds = %42
  %216 = load i32, ptr %17, align 4, !tbaa !38
  %217 = add nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = call noalias ptr @malloc(i64 noundef %218) #11
  store ptr %219, ptr %14, align 8, !tbaa !8
  store ptr %219, ptr %15, align 8, !tbaa !8
  %220 = call ptr @new_term()
  store ptr %220, ptr %12, align 8, !tbaa !59
  %221 = load ptr, ptr %12, align 8, !tbaa !59
  %222 = getelementptr inbounds nuw %struct.Term, ptr %221, i32 0, i32 0
  store i32 1, ptr %222, align 8, !tbaa !57
  %223 = load ptr, ptr %14, align 8, !tbaa !8
  %224 = load ptr, ptr %12, align 8, !tbaa !59
  %225 = getelementptr inbounds nuw %struct.Term, ptr %224, i32 0, i32 5
  store ptr %223, ptr %225, align 8, !tbaa !60
  %226 = load ptr, ptr %3, align 8, !tbaa !3
  %227 = getelementptr inbounds nuw %struct.Grammar, ptr %226, i32 0, i32 2
  %228 = getelementptr inbounds nuw %struct.anon.1, ptr %227, i32 0, i32 0
  %229 = load i32, ptr %228, align 8, !tbaa !63
  %230 = load ptr, ptr %12, align 8, !tbaa !59
  %231 = getelementptr inbounds nuw %struct.Term, ptr %230, i32 0, i32 1
  store i32 %229, ptr %231, align 4, !tbaa !207
  %232 = load ptr, ptr %4, align 8, !tbaa !10
  %233 = load ptr, ptr %12, align 8, !tbaa !59
  %234 = getelementptr inbounds nuw %struct.Term, ptr %233, i32 0, i32 8
  store ptr %232, ptr %234, align 8, !tbaa !245
  br label %235

235:                                              ; preds = %215
  %236 = load ptr, ptr %3, align 8, !tbaa !3
  %237 = getelementptr inbounds nuw %struct.Grammar, ptr %236, i32 0, i32 2
  %238 = getelementptr inbounds nuw %struct.anon.1, ptr %237, i32 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !62
  %240 = icmp ne ptr %239, null
  br i1 %240, label %257, label %241

241:                                              ; preds = %235
  %242 = load ptr, ptr %12, align 8, !tbaa !59
  %243 = load ptr, ptr %3, align 8, !tbaa !3
  %244 = getelementptr inbounds nuw %struct.Grammar, ptr %243, i32 0, i32 2
  %245 = getelementptr inbounds nuw %struct.anon.1, ptr %244, i32 0, i32 3
  %246 = getelementptr inbounds [3 x ptr], ptr %245, i64 0, i64 0
  %247 = load ptr, ptr %3, align 8, !tbaa !3
  %248 = getelementptr inbounds nuw %struct.Grammar, ptr %247, i32 0, i32 2
  %249 = getelementptr inbounds nuw %struct.anon.1, ptr %248, i32 0, i32 2
  store ptr %246, ptr %249, align 8, !tbaa !62
  %250 = load ptr, ptr %3, align 8, !tbaa !3
  %251 = getelementptr inbounds nuw %struct.Grammar, ptr %250, i32 0, i32 2
  %252 = getelementptr inbounds nuw %struct.anon.1, ptr %251, i32 0, i32 0
  %253 = load i32, ptr %252, align 8, !tbaa !63
  %254 = add i32 %253, 1
  store i32 %254, ptr %252, align 8, !tbaa !63
  %255 = zext i32 %253 to i64
  %256 = getelementptr inbounds nuw ptr, ptr %246, i64 %255
  store ptr %242, ptr %256, align 8, !tbaa !59
  br label %314

257:                                              ; preds = %235
  %258 = load ptr, ptr %3, align 8, !tbaa !3
  %259 = getelementptr inbounds nuw %struct.Grammar, ptr %258, i32 0, i32 2
  %260 = getelementptr inbounds nuw %struct.anon.1, ptr %259, i32 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !62
  %262 = load ptr, ptr %3, align 8, !tbaa !3
  %263 = getelementptr inbounds nuw %struct.Grammar, ptr %262, i32 0, i32 2
  %264 = getelementptr inbounds nuw %struct.anon.1, ptr %263, i32 0, i32 3
  %265 = getelementptr inbounds [3 x ptr], ptr %264, i64 0, i64 0
  %266 = icmp eq ptr %261, %265
  br i1 %266, label %267, label %287

267:                                              ; preds = %257
  %268 = load ptr, ptr %3, align 8, !tbaa !3
  %269 = getelementptr inbounds nuw %struct.Grammar, ptr %268, i32 0, i32 2
  %270 = getelementptr inbounds nuw %struct.anon.1, ptr %269, i32 0, i32 0
  %271 = load i32, ptr %270, align 8, !tbaa !63
  %272 = icmp ult i32 %271, 3
  br i1 %272, label %273, label %286

273:                                              ; preds = %267
  %274 = load ptr, ptr %12, align 8, !tbaa !59
  %275 = load ptr, ptr %3, align 8, !tbaa !3
  %276 = getelementptr inbounds nuw %struct.Grammar, ptr %275, i32 0, i32 2
  %277 = getelementptr inbounds nuw %struct.anon.1, ptr %276, i32 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !62
  %279 = load ptr, ptr %3, align 8, !tbaa !3
  %280 = getelementptr inbounds nuw %struct.Grammar, ptr %279, i32 0, i32 2
  %281 = getelementptr inbounds nuw %struct.anon.1, ptr %280, i32 0, i32 0
  %282 = load i32, ptr %281, align 8, !tbaa !63
  %283 = add i32 %282, 1
  store i32 %283, ptr %281, align 8, !tbaa !63
  %284 = zext i32 %282 to i64
  %285 = getelementptr inbounds nuw ptr, ptr %278, i64 %284
  store ptr %274, ptr %285, align 8, !tbaa !59
  br label %314

286:                                              ; preds = %267
  br label %308

287:                                              ; preds = %257
  %288 = load ptr, ptr %3, align 8, !tbaa !3
  %289 = getelementptr inbounds nuw %struct.Grammar, ptr %288, i32 0, i32 2
  %290 = getelementptr inbounds nuw %struct.anon.1, ptr %289, i32 0, i32 0
  %291 = load i32, ptr %290, align 8, !tbaa !63
  %292 = and i32 %291, 7
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %307

294:                                              ; preds = %287
  %295 = load ptr, ptr %12, align 8, !tbaa !59
  %296 = load ptr, ptr %3, align 8, !tbaa !3
  %297 = getelementptr inbounds nuw %struct.Grammar, ptr %296, i32 0, i32 2
  %298 = getelementptr inbounds nuw %struct.anon.1, ptr %297, i32 0, i32 2
  %299 = load ptr, ptr %298, align 8, !tbaa !62
  %300 = load ptr, ptr %3, align 8, !tbaa !3
  %301 = getelementptr inbounds nuw %struct.Grammar, ptr %300, i32 0, i32 2
  %302 = getelementptr inbounds nuw %struct.anon.1, ptr %301, i32 0, i32 0
  %303 = load i32, ptr %302, align 8, !tbaa !63
  %304 = add i32 %303, 1
  store i32 %304, ptr %302, align 8, !tbaa !63
  %305 = zext i32 %303 to i64
  %306 = getelementptr inbounds nuw ptr, ptr %299, i64 %305
  store ptr %295, ptr %306, align 8, !tbaa !59
  br label %314

307:                                              ; preds = %287
  br label %308

308:                                              ; preds = %307, %286
  br label %309

309:                                              ; preds = %308
  %310 = load ptr, ptr %3, align 8, !tbaa !3
  %311 = getelementptr inbounds nuw %struct.Grammar, ptr %310, i32 0, i32 2
  %312 = load ptr, ptr %12, align 8, !tbaa !59
  call void @vec_add_internal(ptr noundef %311, ptr noundef %312)
  br label %313

313:                                              ; preds = %309
  br label %314

314:                                              ; preds = %313, %294, %273, %241
  %315 = load ptr, ptr %12, align 8, !tbaa !59
  %316 = load ptr, ptr %4, align 8, !tbaa !10
  %317 = getelementptr inbounds nuw %struct.Production, ptr %316, i32 0, i32 10
  store ptr %315, ptr %317, align 8, !tbaa !210
  %318 = load i32, ptr %13, align 4, !tbaa !38
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %571

320:                                              ; preds = %314
  %321 = load ptr, ptr %4, align 8, !tbaa !10
  %322 = getelementptr inbounds nuw %struct.Production, ptr %321, i32 0, i32 2
  %323 = getelementptr inbounds nuw %struct.anon, ptr %322, i32 0, i32 0
  %324 = load i32, ptr %323, align 8, !tbaa !109
  %325 = icmp ne i32 %324, 2
  br i1 %325, label %326, label %331

326:                                              ; preds = %320
  br label %327

327:                                              ; preds = %569, %497, %451, %378, %326
  %328 = load ptr, ptr %4, align 8, !tbaa !10
  %329 = getelementptr inbounds nuw %struct.Production, ptr %328, i32 0, i32 0
  %330 = load ptr, ptr %329, align 8, !tbaa !31
  call void (ptr, ...) @d_fail(ptr noundef @.str.72, ptr noundef %330)
  br label %331

331:                                              ; preds = %327, %320
  %332 = load ptr, ptr %4, align 8, !tbaa !10
  %333 = getelementptr inbounds nuw %struct.Production, ptr %332, i32 0, i32 2
  %334 = getelementptr inbounds nuw %struct.anon, ptr %333, i32 0, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !108
  %336 = getelementptr inbounds ptr, ptr %335, i64 0
  %337 = load ptr, ptr %336, align 8, !tbaa !41
  %338 = getelementptr inbounds nuw %struct.Rule, ptr %337, i32 0, i32 6
  %339 = getelementptr inbounds nuw %struct.anon.5, ptr %338, i32 0, i32 0
  %340 = load i32, ptr %339, align 8, !tbaa !70
  %341 = load ptr, ptr %4, align 8, !tbaa !10
  %342 = getelementptr inbounds nuw %struct.Production, ptr %341, i32 0, i32 2
  %343 = getelementptr inbounds nuw %struct.anon, ptr %342, i32 0, i32 2
  %344 = load ptr, ptr %343, align 8, !tbaa !108
  %345 = getelementptr inbounds ptr, ptr %344, i64 1
  %346 = load ptr, ptr %345, align 8, !tbaa !41
  %347 = getelementptr inbounds nuw %struct.Rule, ptr %346, i32 0, i32 6
  %348 = getelementptr inbounds nuw %struct.anon.5, ptr %347, i32 0, i32 0
  %349 = load i32, ptr %348, align 8, !tbaa !70
  %350 = add i32 %340, %349
  store i32 %350, ptr %7, align 4, !tbaa !38
  %351 = load i32, ptr %7, align 4, !tbaa !38
  %352 = icmp eq i32 %351, 2
  br i1 %352, label %356, label %353

353:                                              ; preds = %331
  %354 = load i32, ptr %7, align 4, !tbaa !38
  %355 = icmp eq i32 %354, 3
  br i1 %355, label %356, label %569

356:                                              ; preds = %353, %331
  %357 = load ptr, ptr %4, align 8, !tbaa !10
  %358 = getelementptr inbounds nuw %struct.Production, ptr %357, i32 0, i32 2
  %359 = getelementptr inbounds nuw %struct.anon, ptr %358, i32 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !108
  %361 = getelementptr inbounds ptr, ptr %360, i64 0
  %362 = load ptr, ptr %361, align 8, !tbaa !41
  %363 = getelementptr inbounds nuw %struct.Rule, ptr %362, i32 0, i32 6
  %364 = getelementptr inbounds nuw %struct.anon.5, ptr %363, i32 0, i32 0
  %365 = load i32, ptr %364, align 8, !tbaa !70
  %366 = icmp ne i32 %365, 2
  br i1 %366, label %367, label %379

367:                                              ; preds = %356
  %368 = load ptr, ptr %4, align 8, !tbaa !10
  %369 = getelementptr inbounds nuw %struct.Production, ptr %368, i32 0, i32 2
  %370 = getelementptr inbounds nuw %struct.anon, ptr %369, i32 0, i32 2
  %371 = load ptr, ptr %370, align 8, !tbaa !108
  %372 = getelementptr inbounds ptr, ptr %371, i64 1
  %373 = load ptr, ptr %372, align 8, !tbaa !41
  %374 = getelementptr inbounds nuw %struct.Rule, ptr %373, i32 0, i32 6
  %375 = getelementptr inbounds nuw %struct.anon.5, ptr %374, i32 0, i32 0
  %376 = load i32, ptr %375, align 8, !tbaa !70
  %377 = icmp ne i32 %376, 2
  br i1 %377, label %378, label %379

378:                                              ; preds = %367
  br label %327

379:                                              ; preds = %367, %356
  %380 = load ptr, ptr %4, align 8, !tbaa !10
  %381 = getelementptr inbounds nuw %struct.Production, ptr %380, i32 0, i32 2
  %382 = getelementptr inbounds nuw %struct.anon, ptr %381, i32 0, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !108
  %384 = getelementptr inbounds ptr, ptr %383, i64 0
  %385 = load ptr, ptr %384, align 8, !tbaa !41
  %386 = getelementptr inbounds nuw %struct.Rule, ptr %385, i32 0, i32 6
  %387 = getelementptr inbounds nuw %struct.anon.5, ptr %386, i32 0, i32 0
  %388 = load i32, ptr %387, align 8, !tbaa !70
  %389 = icmp eq i32 %388, 2
  br i1 %389, label %390, label %397

390:                                              ; preds = %379
  %391 = load ptr, ptr %4, align 8, !tbaa !10
  %392 = getelementptr inbounds nuw %struct.Production, ptr %391, i32 0, i32 2
  %393 = getelementptr inbounds nuw %struct.anon, ptr %392, i32 0, i32 2
  %394 = load ptr, ptr %393, align 8, !tbaa !108
  %395 = getelementptr inbounds ptr, ptr %394, i64 0
  %396 = load ptr, ptr %395, align 8, !tbaa !41
  br label %404

397:                                              ; preds = %379
  %398 = load ptr, ptr %4, align 8, !tbaa !10
  %399 = getelementptr inbounds nuw %struct.Production, ptr %398, i32 0, i32 2
  %400 = getelementptr inbounds nuw %struct.anon, ptr %399, i32 0, i32 2
  %401 = load ptr, ptr %400, align 8, !tbaa !108
  %402 = getelementptr inbounds ptr, ptr %401, i64 1
  %403 = load ptr, ptr %402, align 8, !tbaa !41
  br label %404

404:                                              ; preds = %397, %390
  %405 = phi ptr [ %396, %390 ], [ %403, %397 ]
  store ptr %405, ptr %9, align 8, !tbaa !41
  %406 = load ptr, ptr %4, align 8, !tbaa !10
  %407 = getelementptr inbounds nuw %struct.Production, ptr %406, i32 0, i32 2
  %408 = getelementptr inbounds nuw %struct.anon, ptr %407, i32 0, i32 2
  %409 = load ptr, ptr %408, align 8, !tbaa !108
  %410 = getelementptr inbounds ptr, ptr %409, i64 0
  %411 = load ptr, ptr %410, align 8, !tbaa !41
  %412 = load ptr, ptr %9, align 8, !tbaa !41
  %413 = icmp eq ptr %411, %412
  br i1 %413, label %414, label %421

414:                                              ; preds = %404
  %415 = load ptr, ptr %4, align 8, !tbaa !10
  %416 = getelementptr inbounds nuw %struct.Production, ptr %415, i32 0, i32 2
  %417 = getelementptr inbounds nuw %struct.anon, ptr %416, i32 0, i32 2
  %418 = load ptr, ptr %417, align 8, !tbaa !108
  %419 = getelementptr inbounds ptr, ptr %418, i64 1
  %420 = load ptr, ptr %419, align 8, !tbaa !41
  br label %428

421:                                              ; preds = %404
  %422 = load ptr, ptr %4, align 8, !tbaa !10
  %423 = getelementptr inbounds nuw %struct.Production, ptr %422, i32 0, i32 2
  %424 = getelementptr inbounds nuw %struct.anon, ptr %423, i32 0, i32 2
  %425 = load ptr, ptr %424, align 8, !tbaa !108
  %426 = getelementptr inbounds ptr, ptr %425, i64 0
  %427 = load ptr, ptr %426, align 8, !tbaa !41
  br label %428

428:                                              ; preds = %421, %414
  %429 = phi ptr [ %420, %414 ], [ %427, %421 ]
  store ptr %429, ptr %10, align 8, !tbaa !41
  %430 = load ptr, ptr %9, align 8, !tbaa !41
  %431 = getelementptr inbounds nuw %struct.Rule, ptr %430, i32 0, i32 6
  %432 = getelementptr inbounds nuw %struct.anon.5, ptr %431, i32 0, i32 2
  %433 = load ptr, ptr %432, align 8, !tbaa !69
  %434 = getelementptr inbounds ptr, ptr %433, i64 0
  %435 = load ptr, ptr %434, align 8, !tbaa !54
  %436 = getelementptr inbounds nuw %struct.Elem, ptr %435, i32 0, i32 3
  %437 = load ptr, ptr %436, align 8, !tbaa !55
  %438 = load ptr, ptr %4, align 8, !tbaa !10
  %439 = icmp ne ptr %437, %438
  br i1 %439, label %440, label %452

440:                                              ; preds = %428
  %441 = load ptr, ptr %9, align 8, !tbaa !41
  %442 = getelementptr inbounds nuw %struct.Rule, ptr %441, i32 0, i32 6
  %443 = getelementptr inbounds nuw %struct.anon.5, ptr %442, i32 0, i32 2
  %444 = load ptr, ptr %443, align 8, !tbaa !69
  %445 = getelementptr inbounds ptr, ptr %444, i64 1
  %446 = load ptr, ptr %445, align 8, !tbaa !54
  %447 = getelementptr inbounds nuw %struct.Elem, ptr %446, i32 0, i32 3
  %448 = load ptr, ptr %447, align 8, !tbaa !55
  %449 = load ptr, ptr %4, align 8, !tbaa !10
  %450 = icmp ne ptr %448, %449
  br i1 %450, label %451, label %452

451:                                              ; preds = %440
  br label %327

452:                                              ; preds = %440, %428
  %453 = load ptr, ptr %9, align 8, !tbaa !41
  %454 = getelementptr inbounds nuw %struct.Rule, ptr %453, i32 0, i32 6
  %455 = getelementptr inbounds nuw %struct.anon.5, ptr %454, i32 0, i32 2
  %456 = load ptr, ptr %455, align 8, !tbaa !69
  %457 = getelementptr inbounds ptr, ptr %456, i64 0
  %458 = load ptr, ptr %457, align 8, !tbaa !54
  %459 = getelementptr inbounds nuw %struct.Elem, ptr %458, i32 0, i32 3
  %460 = load ptr, ptr %459, align 8, !tbaa !55
  %461 = load ptr, ptr %4, align 8, !tbaa !10
  %462 = icmp eq ptr %460, %461
  br i1 %462, label %463, label %470

463:                                              ; preds = %452
  %464 = load ptr, ptr %9, align 8, !tbaa !41
  %465 = getelementptr inbounds nuw %struct.Rule, ptr %464, i32 0, i32 6
  %466 = getelementptr inbounds nuw %struct.anon.5, ptr %465, i32 0, i32 2
  %467 = load ptr, ptr %466, align 8, !tbaa !69
  %468 = getelementptr inbounds ptr, ptr %467, i64 1
  %469 = load ptr, ptr %468, align 8, !tbaa !54
  br label %477

470:                                              ; preds = %452
  %471 = load ptr, ptr %9, align 8, !tbaa !41
  %472 = getelementptr inbounds nuw %struct.Rule, ptr %471, i32 0, i32 6
  %473 = getelementptr inbounds nuw %struct.anon.5, ptr %472, i32 0, i32 2
  %474 = load ptr, ptr %473, align 8, !tbaa !69
  %475 = getelementptr inbounds ptr, ptr %474, i64 1
  %476 = load ptr, ptr %475, align 8, !tbaa !54
  br label %477

477:                                              ; preds = %470, %463
  %478 = phi ptr [ %469, %463 ], [ %476, %470 ]
  store ptr %478, ptr %11, align 8, !tbaa !54
  %479 = load ptr, ptr %10, align 8, !tbaa !41
  %480 = getelementptr inbounds nuw %struct.Rule, ptr %479, i32 0, i32 6
  %481 = getelementptr inbounds nuw %struct.anon.5, ptr %480, i32 0, i32 0
  %482 = load i32, ptr %481, align 8, !tbaa !70
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %498

484:                                              ; preds = %477
  %485 = load ptr, ptr %11, align 8, !tbaa !54
  %486 = getelementptr inbounds nuw %struct.Elem, ptr %485, i32 0, i32 3
  %487 = load ptr, ptr %486, align 8, !tbaa !55
  %488 = load ptr, ptr %10, align 8, !tbaa !41
  %489 = getelementptr inbounds nuw %struct.Rule, ptr %488, i32 0, i32 6
  %490 = getelementptr inbounds nuw %struct.anon.5, ptr %489, i32 0, i32 2
  %491 = load ptr, ptr %490, align 8, !tbaa !69
  %492 = getelementptr inbounds ptr, ptr %491, i64 0
  %493 = load ptr, ptr %492, align 8, !tbaa !54
  %494 = getelementptr inbounds nuw %struct.Elem, ptr %493, i32 0, i32 3
  %495 = load ptr, ptr %494, align 8, !tbaa !55
  %496 = icmp ne ptr %487, %495
  br i1 %496, label %497, label %498

497:                                              ; preds = %484
  br label %327

498:                                              ; preds = %484, %477
  %499 = load ptr, ptr %11, align 8, !tbaa !54
  %500 = getelementptr inbounds nuw %struct.Elem, ptr %499, i32 0, i32 0
  %501 = load i32, ptr %500, align 8, !tbaa !49
  %502 = icmp eq i32 %501, 1
  br i1 %502, label %503, label %507

503:                                              ; preds = %498
  %504 = load ptr, ptr %11, align 8, !tbaa !54
  %505 = getelementptr inbounds nuw %struct.Elem, ptr %504, i32 0, i32 3
  %506 = load ptr, ptr %505, align 8, !tbaa !55
  br label %513

507:                                              ; preds = %498
  %508 = load ptr, ptr %11, align 8, !tbaa !54
  %509 = getelementptr inbounds nuw %struct.Elem, ptr %508, i32 0, i32 3
  %510 = load ptr, ptr %509, align 8, !tbaa !55
  %511 = getelementptr inbounds nuw %struct.Production, ptr %510, i32 0, i32 10
  %512 = load ptr, ptr %511, align 8, !tbaa !210
  br label %513

513:                                              ; preds = %507, %503
  %514 = phi ptr [ %506, %503 ], [ %512, %507 ]
  store ptr %514, ptr %12, align 8, !tbaa !59
  %515 = load ptr, ptr %15, align 8, !tbaa !8
  %516 = getelementptr inbounds nuw i8, ptr %515, i32 1
  store ptr %516, ptr %15, align 8, !tbaa !8
  store i8 40, ptr %515, align 1, !tbaa !55
  %517 = load ptr, ptr %12, align 8, !tbaa !59
  %518 = getelementptr inbounds nuw %struct.Term, ptr %517, i32 0, i32 0
  %519 = load i32, ptr %518, align 8, !tbaa !57
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %526

521:                                              ; preds = %513
  %522 = load ptr, ptr %12, align 8, !tbaa !59
  %523 = getelementptr inbounds nuw %struct.Term, ptr %522, i32 0, i32 5
  %524 = load ptr, ptr %523, align 8, !tbaa !60
  %525 = call ptr @escape_string_for_regex(ptr noundef %524)
  store ptr %525, ptr %16, align 8, !tbaa !8
  br label %530

526:                                              ; preds = %513
  %527 = load ptr, ptr %12, align 8, !tbaa !59
  %528 = getelementptr inbounds nuw %struct.Term, ptr %527, i32 0, i32 5
  %529 = load ptr, ptr %528, align 8, !tbaa !60
  store ptr %529, ptr %16, align 8, !tbaa !8
  br label %530

530:                                              ; preds = %526, %521
  %531 = load ptr, ptr %15, align 8, !tbaa !8
  %532 = load ptr, ptr %16, align 8, !tbaa !8
  %533 = load ptr, ptr %16, align 8, !tbaa !8
  %534 = call i64 @strlen(ptr noundef %533) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %531, ptr align 1 %532, i64 %534, i1 false)
  %535 = load ptr, ptr %16, align 8, !tbaa !8
  %536 = call i64 @strlen(ptr noundef %535) #10
  %537 = load ptr, ptr %15, align 8, !tbaa !8
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 %536
  store ptr %538, ptr %15, align 8, !tbaa !8
  %539 = load ptr, ptr %12, align 8, !tbaa !59
  %540 = getelementptr inbounds nuw %struct.Term, ptr %539, i32 0, i32 0
  %541 = load i32, ptr %540, align 8, !tbaa !57
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %545

543:                                              ; preds = %530
  %544 = load ptr, ptr %16, align 8, !tbaa !8
  call void @free(ptr noundef %544) #9
  br label %545

545:                                              ; preds = %543, %530
  %546 = load ptr, ptr %15, align 8, !tbaa !8
  %547 = getelementptr inbounds nuw i8, ptr %546, i32 1
  store ptr %547, ptr %15, align 8, !tbaa !8
  store i8 41, ptr %546, align 1, !tbaa !55
  %548 = load i32, ptr %7, align 4, !tbaa !38
  %549 = icmp eq i32 %548, 2
  br i1 %549, label %550, label %553

550:                                              ; preds = %545
  %551 = load ptr, ptr %15, align 8, !tbaa !8
  %552 = getelementptr inbounds nuw i8, ptr %551, i32 1
  store ptr %552, ptr %15, align 8, !tbaa !8
  store i8 42, ptr %551, align 1, !tbaa !55
  br label %556

553:                                              ; preds = %545
  %554 = load ptr, ptr %15, align 8, !tbaa !8
  %555 = getelementptr inbounds nuw i8, ptr %554, i32 1
  store ptr %555, ptr %15, align 8, !tbaa !8
  store i8 43, ptr %554, align 1, !tbaa !55
  br label %556

556:                                              ; preds = %553, %550
  %557 = load ptr, ptr %15, align 8, !tbaa !8
  store i8 0, ptr %557, align 1, !tbaa !55
  %558 = load ptr, ptr %4, align 8, !tbaa !10
  %559 = getelementptr inbounds nuw %struct.Production, ptr %558, i32 0, i32 10
  %560 = load ptr, ptr %559, align 8, !tbaa !210
  %561 = getelementptr inbounds nuw %struct.Term, ptr %560, i32 0, i32 5
  %562 = load ptr, ptr %561, align 8, !tbaa !60
  %563 = call i64 @strlen(ptr noundef %562) #10
  %564 = trunc i64 %563 to i32
  %565 = load ptr, ptr %4, align 8, !tbaa !10
  %566 = getelementptr inbounds nuw %struct.Production, ptr %565, i32 0, i32 10
  %567 = load ptr, ptr %566, align 8, !tbaa !210
  %568 = getelementptr inbounds nuw %struct.Term, ptr %567, i32 0, i32 6
  store i32 %564, ptr %568, align 8, !tbaa !61
  br label %570

569:                                              ; preds = %353
  br label %327

570:                                              ; preds = %556
  br label %716

571:                                              ; preds = %314
  %572 = load ptr, ptr %4, align 8, !tbaa !10
  %573 = getelementptr inbounds nuw %struct.Production, ptr %572, i32 0, i32 2
  %574 = getelementptr inbounds nuw %struct.anon, ptr %573, i32 0, i32 0
  %575 = load i32, ptr %574, align 8, !tbaa !109
  %576 = icmp ugt i32 %575, 1
  br i1 %576, label %577, label %580

577:                                              ; preds = %571
  %578 = load ptr, ptr %15, align 8, !tbaa !8
  %579 = getelementptr inbounds nuw i8, ptr %578, i32 1
  store ptr %579, ptr %15, align 8, !tbaa !8
  store i8 40, ptr %578, align 1, !tbaa !55
  br label %580

580:                                              ; preds = %577, %571
  store i32 0, ptr %5, align 4, !tbaa !38
  br label %581

581:                                              ; preds = %691, %580
  %582 = load i32, ptr %5, align 4, !tbaa !38
  %583 = load ptr, ptr %4, align 8, !tbaa !10
  %584 = getelementptr inbounds nuw %struct.Production, ptr %583, i32 0, i32 2
  %585 = getelementptr inbounds nuw %struct.anon, ptr %584, i32 0, i32 0
  %586 = load i32, ptr %585, align 8, !tbaa !109
  %587 = icmp ult i32 %582, %586
  br i1 %587, label %588, label %694

588:                                              ; preds = %581
  %589 = load ptr, ptr %4, align 8, !tbaa !10
  %590 = getelementptr inbounds nuw %struct.Production, ptr %589, i32 0, i32 2
  %591 = getelementptr inbounds nuw %struct.anon, ptr %590, i32 0, i32 2
  %592 = load ptr, ptr %591, align 8, !tbaa !108
  %593 = load i32, ptr %5, align 4, !tbaa !38
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds ptr, ptr %592, i64 %594
  %596 = load ptr, ptr %595, align 8, !tbaa !41
  store ptr %596, ptr %9, align 8, !tbaa !41
  %597 = load ptr, ptr %9, align 8, !tbaa !41
  %598 = getelementptr inbounds nuw %struct.Rule, ptr %597, i32 0, i32 6
  %599 = getelementptr inbounds nuw %struct.anon.5, ptr %598, i32 0, i32 0
  %600 = load i32, ptr %599, align 8, !tbaa !70
  %601 = icmp ugt i32 %600, 1
  br i1 %601, label %602, label %605

602:                                              ; preds = %588
  %603 = load ptr, ptr %15, align 8, !tbaa !8
  %604 = getelementptr inbounds nuw i8, ptr %603, i32 1
  store ptr %604, ptr %15, align 8, !tbaa !8
  store i8 40, ptr %603, align 1, !tbaa !55
  br label %605

605:                                              ; preds = %602, %588
  store i32 0, ptr %6, align 4, !tbaa !38
  br label %606

606:                                              ; preds = %667, %605
  %607 = load i32, ptr %6, align 4, !tbaa !38
  %608 = load ptr, ptr %9, align 8, !tbaa !41
  %609 = getelementptr inbounds nuw %struct.Rule, ptr %608, i32 0, i32 6
  %610 = getelementptr inbounds nuw %struct.anon.5, ptr %609, i32 0, i32 0
  %611 = load i32, ptr %610, align 8, !tbaa !70
  %612 = icmp ult i32 %607, %611
  br i1 %612, label %613, label %670

613:                                              ; preds = %606
  %614 = load ptr, ptr %9, align 8, !tbaa !41
  %615 = getelementptr inbounds nuw %struct.Rule, ptr %614, i32 0, i32 6
  %616 = getelementptr inbounds nuw %struct.anon.5, ptr %615, i32 0, i32 2
  %617 = load ptr, ptr %616, align 8, !tbaa !69
  %618 = load i32, ptr %6, align 4, !tbaa !38
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds ptr, ptr %617, i64 %619
  %621 = load ptr, ptr %620, align 8, !tbaa !54
  store ptr %621, ptr %11, align 8, !tbaa !54
  %622 = load ptr, ptr %11, align 8, !tbaa !54
  %623 = getelementptr inbounds nuw %struct.Elem, ptr %622, i32 0, i32 0
  %624 = load i32, ptr %623, align 8, !tbaa !49
  %625 = icmp eq i32 %624, 1
  br i1 %625, label %626, label %630

626:                                              ; preds = %613
  %627 = load ptr, ptr %11, align 8, !tbaa !54
  %628 = getelementptr inbounds nuw %struct.Elem, ptr %627, i32 0, i32 3
  %629 = load ptr, ptr %628, align 8, !tbaa !55
  br label %636

630:                                              ; preds = %613
  %631 = load ptr, ptr %11, align 8, !tbaa !54
  %632 = getelementptr inbounds nuw %struct.Elem, ptr %631, i32 0, i32 3
  %633 = load ptr, ptr %632, align 8, !tbaa !55
  %634 = getelementptr inbounds nuw %struct.Production, ptr %633, i32 0, i32 10
  %635 = load ptr, ptr %634, align 8, !tbaa !210
  br label %636

636:                                              ; preds = %630, %626
  %637 = phi ptr [ %629, %626 ], [ %635, %630 ]
  store ptr %637, ptr %12, align 8, !tbaa !59
  %638 = load ptr, ptr %12, align 8, !tbaa !59
  %639 = getelementptr inbounds nuw %struct.Term, ptr %638, i32 0, i32 0
  %640 = load i32, ptr %639, align 8, !tbaa !57
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %642, label %647

642:                                              ; preds = %636
  %643 = load ptr, ptr %12, align 8, !tbaa !59
  %644 = getelementptr inbounds nuw %struct.Term, ptr %643, i32 0, i32 5
  %645 = load ptr, ptr %644, align 8, !tbaa !60
  %646 = call ptr @escape_string_for_regex(ptr noundef %645)
  store ptr %646, ptr %16, align 8, !tbaa !8
  br label %651

647:                                              ; preds = %636
  %648 = load ptr, ptr %12, align 8, !tbaa !59
  %649 = getelementptr inbounds nuw %struct.Term, ptr %648, i32 0, i32 5
  %650 = load ptr, ptr %649, align 8, !tbaa !60
  store ptr %650, ptr %16, align 8, !tbaa !8
  br label %651

651:                                              ; preds = %647, %642
  %652 = load ptr, ptr %15, align 8, !tbaa !8
  %653 = load ptr, ptr %16, align 8, !tbaa !8
  %654 = load ptr, ptr %16, align 8, !tbaa !8
  %655 = call i64 @strlen(ptr noundef %654) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %652, ptr align 1 %653, i64 %655, i1 false)
  %656 = load ptr, ptr %16, align 8, !tbaa !8
  %657 = call i64 @strlen(ptr noundef %656) #10
  %658 = load ptr, ptr %15, align 8, !tbaa !8
  %659 = getelementptr inbounds nuw i8, ptr %658, i64 %657
  store ptr %659, ptr %15, align 8, !tbaa !8
  %660 = load ptr, ptr %12, align 8, !tbaa !59
  %661 = getelementptr inbounds nuw %struct.Term, ptr %660, i32 0, i32 0
  %662 = load i32, ptr %661, align 8, !tbaa !57
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %664, label %666

664:                                              ; preds = %651
  %665 = load ptr, ptr %16, align 8, !tbaa !8
  call void @free(ptr noundef %665) #9
  br label %666

666:                                              ; preds = %664, %651
  br label %667

667:                                              ; preds = %666
  %668 = load i32, ptr %6, align 4, !tbaa !38
  %669 = add nsw i32 %668, 1
  store i32 %669, ptr %6, align 4, !tbaa !38
  br label %606, !llvm.loop !246

670:                                              ; preds = %606
  %671 = load ptr, ptr %9, align 8, !tbaa !41
  %672 = getelementptr inbounds nuw %struct.Rule, ptr %671, i32 0, i32 6
  %673 = getelementptr inbounds nuw %struct.anon.5, ptr %672, i32 0, i32 0
  %674 = load i32, ptr %673, align 8, !tbaa !70
  %675 = icmp ugt i32 %674, 1
  br i1 %675, label %676, label %679

676:                                              ; preds = %670
  %677 = load ptr, ptr %15, align 8, !tbaa !8
  %678 = getelementptr inbounds nuw i8, ptr %677, i32 1
  store ptr %678, ptr %15, align 8, !tbaa !8
  store i8 41, ptr %677, align 1, !tbaa !55
  br label %679

679:                                              ; preds = %676, %670
  %680 = load i32, ptr %5, align 4, !tbaa !38
  %681 = load ptr, ptr %4, align 8, !tbaa !10
  %682 = getelementptr inbounds nuw %struct.Production, ptr %681, i32 0, i32 2
  %683 = getelementptr inbounds nuw %struct.anon, ptr %682, i32 0, i32 0
  %684 = load i32, ptr %683, align 8, !tbaa !109
  %685 = sub i32 %684, 1
  %686 = icmp ne i32 %680, %685
  br i1 %686, label %687, label %690

687:                                              ; preds = %679
  %688 = load ptr, ptr %15, align 8, !tbaa !8
  %689 = getelementptr inbounds nuw i8, ptr %688, i32 1
  store ptr %689, ptr %15, align 8, !tbaa !8
  store i8 124, ptr %688, align 1, !tbaa !55
  br label %690

690:                                              ; preds = %687, %679
  br label %691

691:                                              ; preds = %690
  %692 = load i32, ptr %5, align 4, !tbaa !38
  %693 = add nsw i32 %692, 1
  store i32 %693, ptr %5, align 4, !tbaa !38
  br label %581, !llvm.loop !247

694:                                              ; preds = %581
  %695 = load ptr, ptr %4, align 8, !tbaa !10
  %696 = getelementptr inbounds nuw %struct.Production, ptr %695, i32 0, i32 2
  %697 = getelementptr inbounds nuw %struct.anon, ptr %696, i32 0, i32 0
  %698 = load i32, ptr %697, align 8, !tbaa !109
  %699 = icmp ugt i32 %698, 1
  br i1 %699, label %700, label %703

700:                                              ; preds = %694
  %701 = load ptr, ptr %15, align 8, !tbaa !8
  %702 = getelementptr inbounds nuw i8, ptr %701, i32 1
  store ptr %702, ptr %15, align 8, !tbaa !8
  store i8 41, ptr %701, align 1, !tbaa !55
  br label %703

703:                                              ; preds = %700, %694
  %704 = load ptr, ptr %15, align 8, !tbaa !8
  store i8 0, ptr %704, align 1, !tbaa !55
  %705 = load ptr, ptr %4, align 8, !tbaa !10
  %706 = getelementptr inbounds nuw %struct.Production, ptr %705, i32 0, i32 10
  %707 = load ptr, ptr %706, align 8, !tbaa !210
  %708 = getelementptr inbounds nuw %struct.Term, ptr %707, i32 0, i32 5
  %709 = load ptr, ptr %708, align 8, !tbaa !60
  %710 = call i64 @strlen(ptr noundef %709) #10
  %711 = trunc i64 %710 to i32
  %712 = load ptr, ptr %4, align 8, !tbaa !10
  %713 = getelementptr inbounds nuw %struct.Production, ptr %712, i32 0, i32 10
  %714 = load ptr, ptr %713, align 8, !tbaa !210
  %715 = getelementptr inbounds nuw %struct.Term, ptr %714, i32 0, i32 6
  store i32 %711, ptr %715, align 8, !tbaa !61
  br label %716

716:                                              ; preds = %703, %570
  %717 = load ptr, ptr %4, align 8, !tbaa !10
  %718 = getelementptr inbounds nuw %struct.Production, ptr %717, i32 0, i32 4
  %719 = load i8, ptr %718, align 4
  %720 = and i8 %719, -3
  %721 = or i8 %720, 0
  store i8 %721, ptr %718, align 4
  store i32 0, ptr %18, align 4
  br label %722

722:                                              ; preds = %716, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  %723 = load i32, ptr %18, align 4
  switch i32 %723, label %725 [
    i32 0, label %724
    i32 1, label %724
  ]

724:                                              ; preds = %722, %722
  ret void

725:                                              ; preds = %722
  unreachable
}

; Function Attrs: nounwind
define internal signext i32 @scanner_declaration(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !75
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds nuw %struct.Declaration, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !79
  switch i32 %6, label %8 [
    i32 0, label %7
    i32 1, label %7
    i32 2, label %7
  ]

7:                                                ; preds = %1, %1, %1
  store i32 1, ptr %2, align 4
  br label %9

8:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i32, ptr %2, align 4
  ret i32 %10
}

; Function Attrs: nounwind
define internal void @set_declaration_group(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !10
  store ptr %1, ptr %5, align 8, !tbaa !10
  store ptr %2, ptr %6, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  %10 = load ptr, ptr %4, align 8, !tbaa !10
  %11 = getelementptr inbounds nuw %struct.Production, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %6, align 8, !tbaa !75
  %13 = getelementptr inbounds nuw %struct.Declaration, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !79
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds nuw [8 x ptr], ptr %11, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = load ptr, ptr %5, align 8, !tbaa !10
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1, ptr %9, align 4
  br label %124

21:                                               ; preds = %3
  %22 = load ptr, ptr %6, align 8, !tbaa !75
  %23 = getelementptr inbounds nuw %struct.Declaration, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !79
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load ptr, ptr %4, align 8, !tbaa !10
  %28 = getelementptr inbounds nuw %struct.Production, ptr %27, i32 0, i32 6
  %29 = load ptr, ptr %6, align 8, !tbaa !75
  %30 = getelementptr inbounds nuw %struct.Declaration, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !79
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds nuw [8 x ptr], ptr %28, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !10
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  call void (ptr, ...) @d_fail(ptr noundef @.str.74)
  store i32 1, ptr %9, align 4
  br label %124

37:                                               ; preds = %26, %21
  %38 = load ptr, ptr %5, align 8, !tbaa !10
  %39 = load ptr, ptr %4, align 8, !tbaa !10
  %40 = getelementptr inbounds nuw %struct.Production, ptr %39, i32 0, i32 6
  %41 = load ptr, ptr %6, align 8, !tbaa !75
  %42 = getelementptr inbounds nuw %struct.Declaration, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !79
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds nuw [8 x ptr], ptr %40, i64 0, i64 %44
  store ptr %38, ptr %45, align 8, !tbaa !10
  %46 = load ptr, ptr %6, align 8, !tbaa !75
  %47 = load ptr, ptr %4, align 8, !tbaa !10
  %48 = getelementptr inbounds nuw %struct.Production, ptr %47, i32 0, i32 7
  %49 = load ptr, ptr %6, align 8, !tbaa !75
  %50 = getelementptr inbounds nuw %struct.Declaration, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !79
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds nuw [8 x ptr], ptr %48, i64 0, i64 %52
  store ptr %46, ptr %53, align 8, !tbaa !75
  store i32 0, ptr %7, align 4, !tbaa !38
  br label %54

54:                                               ; preds = %120, %37
  %55 = load i32, ptr %7, align 4, !tbaa !38
  %56 = load ptr, ptr %4, align 8, !tbaa !10
  %57 = getelementptr inbounds nuw %struct.Production, ptr %56, i32 0, i32 2
  %58 = getelementptr inbounds nuw %struct.anon, ptr %57, i32 0, i32 0
  %59 = load i32, ptr %58, align 8, !tbaa !109
  %60 = icmp ult i32 %55, %59
  br i1 %60, label %61, label %123

61:                                               ; preds = %54
  store i32 0, ptr %8, align 4, !tbaa !38
  br label %62

62:                                               ; preds = %116, %61
  %63 = load i32, ptr %8, align 4, !tbaa !38
  %64 = load ptr, ptr %4, align 8, !tbaa !10
  %65 = getelementptr inbounds nuw %struct.Production, ptr %64, i32 0, i32 2
  %66 = getelementptr inbounds nuw %struct.anon, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !108
  %68 = load i32, ptr %7, align 4, !tbaa !38
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !41
  %72 = getelementptr inbounds nuw %struct.Rule, ptr %71, i32 0, i32 6
  %73 = getelementptr inbounds nuw %struct.anon.5, ptr %72, i32 0, i32 0
  %74 = load i32, ptr %73, align 8, !tbaa !70
  %75 = icmp ult i32 %63, %74
  br i1 %75, label %76, label %119

76:                                               ; preds = %62
  %77 = load ptr, ptr %4, align 8, !tbaa !10
  %78 = getelementptr inbounds nuw %struct.Production, ptr %77, i32 0, i32 2
  %79 = getelementptr inbounds nuw %struct.anon, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !108
  %81 = load i32, ptr %7, align 4, !tbaa !38
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !41
  %85 = getelementptr inbounds nuw %struct.Rule, ptr %84, i32 0, i32 6
  %86 = getelementptr inbounds nuw %struct.anon.5, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !69
  %88 = load i32, ptr %8, align 4, !tbaa !38
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !54
  %92 = getelementptr inbounds nuw %struct.Elem, ptr %91, i32 0, i32 0
  %93 = load i32, ptr %92, align 8, !tbaa !49
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %76
  %96 = load ptr, ptr %4, align 8, !tbaa !10
  %97 = getelementptr inbounds nuw %struct.Production, ptr %96, i32 0, i32 2
  %98 = getelementptr inbounds nuw %struct.anon, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !108
  %100 = load i32, ptr %7, align 4, !tbaa !38
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %99, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !41
  %104 = getelementptr inbounds nuw %struct.Rule, ptr %103, i32 0, i32 6
  %105 = getelementptr inbounds nuw %struct.anon.5, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !69
  %107 = load i32, ptr %8, align 4, !tbaa !38
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !54
  %111 = getelementptr inbounds nuw %struct.Elem, ptr %110, i32 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !55
  %113 = load ptr, ptr %5, align 8, !tbaa !10
  %114 = load ptr, ptr %6, align 8, !tbaa !75
  call void @set_declaration_group(ptr noundef %112, ptr noundef %113, ptr noundef %114)
  br label %115

115:                                              ; preds = %95, %76
  br label %116

116:                                              ; preds = %115
  %117 = load i32, ptr %8, align 4, !tbaa !38
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr %8, align 4, !tbaa !38
  br label %62, !llvm.loop !248

119:                                              ; preds = %62
  br label %120

120:                                              ; preds = %119
  %121 = load i32, ptr %7, align 4, !tbaa !38
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %7, align 4, !tbaa !38
  br label %54, !llvm.loop !249

123:                                              ; preds = %54
  store i32 0, ptr %9, align 4
  br label %124

124:                                              ; preds = %123, %36, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #9
  %125 = load i32, ptr %9, align 4
  switch i32 %125, label %127 [
    i32 0, label %126
    i32 1, label %126
  ]

126:                                              ; preds = %124, %124
  ret void

127:                                              ; preds = %124
  unreachable
}

; Function Attrs: nounwind
define internal ptr @unique_term(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  store i32 0, ptr %6, align 4, !tbaa !38
  br label %8

8:                                                ; preds = %125, %2
  %9 = load i32, ptr %6, align 4, !tbaa !38
  %10 = load ptr, ptr %4, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct.Grammar, ptr %10, i32 0, i32 2
  %12 = getelementptr inbounds nuw %struct.anon.1, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !63
  %14 = icmp ult i32 %9, %13
  br i1 %14, label %15, label %128

15:                                               ; preds = %8
  %16 = load ptr, ptr %5, align 8, !tbaa !59
  %17 = getelementptr inbounds nuw %struct.Term, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8, !tbaa !57
  %19 = load ptr, ptr %4, align 8, !tbaa !3
  %20 = getelementptr inbounds nuw %struct.Grammar, ptr %19, i32 0, i32 2
  %21 = getelementptr inbounds nuw %struct.anon.1, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = load i32, ptr %6, align 4, !tbaa !38
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = getelementptr inbounds nuw %struct.Term, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8, !tbaa !57
  %29 = icmp eq i32 %18, %28
  br i1 %29, label %30, label %124

30:                                               ; preds = %15
  %31 = load ptr, ptr %5, align 8, !tbaa !59
  %32 = getelementptr inbounds nuw %struct.Term, ptr %31, i32 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !61
  %34 = load ptr, ptr %4, align 8, !tbaa !3
  %35 = getelementptr inbounds nuw %struct.Grammar, ptr %34, i32 0, i32 2
  %36 = getelementptr inbounds nuw %struct.anon.1, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !62
  %38 = load i32, ptr %6, align 4, !tbaa !38
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  %42 = getelementptr inbounds nuw %struct.Term, ptr %41, i32 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !61
  %44 = icmp eq i32 %33, %43
  br i1 %44, label %45, label %124

45:                                               ; preds = %30
  %46 = load ptr, ptr %5, align 8, !tbaa !59
  %47 = getelementptr inbounds nuw %struct.Term, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !250
  %49 = load ptr, ptr %4, align 8, !tbaa !3
  %50 = getelementptr inbounds nuw %struct.Grammar, ptr %49, i32 0, i32 2
  %51 = getelementptr inbounds nuw %struct.anon.1, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  %53 = load i32, ptr %6, align 4, !tbaa !38
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %52, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !59
  %57 = getelementptr inbounds nuw %struct.Term, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !250
  %59 = icmp eq i32 %48, %58
  br i1 %59, label %60, label %124

60:                                               ; preds = %45
  %61 = load ptr, ptr %4, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.Grammar, ptr %61, i32 0, i32 10
  %63 = load i32, ptr %62, align 8, !tbaa !83
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %60
  %66 = load ptr, ptr %5, align 8, !tbaa !59
  %67 = getelementptr inbounds nuw %struct.Term, ptr %66, i32 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !203
  %69 = load ptr, ptr %4, align 8, !tbaa !3
  %70 = getelementptr inbounds nuw %struct.Grammar, ptr %69, i32 0, i32 2
  %71 = getelementptr inbounds nuw %struct.anon.1, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !62
  %73 = load i32, ptr %6, align 4, !tbaa !38
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %72, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !59
  %77 = getelementptr inbounds nuw %struct.Term, ptr %76, i32 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !203
  %79 = icmp eq i32 %68, %78
  br i1 %79, label %80, label %124

80:                                               ; preds = %65
  %81 = load ptr, ptr %5, align 8, !tbaa !59
  %82 = getelementptr inbounds nuw %struct.Term, ptr %81, i32 0, i32 4
  %83 = load i32, ptr %82, align 8, !tbaa !204
  %84 = load ptr, ptr %4, align 8, !tbaa !3
  %85 = getelementptr inbounds nuw %struct.Grammar, ptr %84, i32 0, i32 2
  %86 = getelementptr inbounds nuw %struct.anon.1, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !62
  %88 = load i32, ptr %6, align 4, !tbaa !38
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !59
  %92 = getelementptr inbounds nuw %struct.Term, ptr %91, i32 0, i32 4
  %93 = load i32, ptr %92, align 8, !tbaa !204
  %94 = icmp eq i32 %83, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %80, %60
  %96 = load ptr, ptr %5, align 8, !tbaa !59
  %97 = getelementptr inbounds nuw %struct.Term, ptr %96, i32 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !60
  %99 = load ptr, ptr %4, align 8, !tbaa !3
  %100 = getelementptr inbounds nuw %struct.Grammar, ptr %99, i32 0, i32 2
  %101 = getelementptr inbounds nuw %struct.anon.1, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !62
  %103 = load i32, ptr %6, align 4, !tbaa !38
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %102, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !59
  %107 = getelementptr inbounds nuw %struct.Term, ptr %106, i32 0, i32 5
  %108 = load ptr, ptr %107, align 8, !tbaa !60
  %109 = load ptr, ptr %5, align 8, !tbaa !59
  %110 = getelementptr inbounds nuw %struct.Term, ptr %109, i32 0, i32 6
  %111 = load i32, ptr %110, align 8, !tbaa !61
  %112 = sext i32 %111 to i64
  %113 = call signext i32 @strncmp(ptr noundef %98, ptr noundef %108, i64 noundef %112) #10
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %95
  %116 = load ptr, ptr %4, align 8, !tbaa !3
  %117 = getelementptr inbounds nuw %struct.Grammar, ptr %116, i32 0, i32 2
  %118 = getelementptr inbounds nuw %struct.anon.1, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !62
  %120 = load i32, ptr %6, align 4, !tbaa !38
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %119, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !59
  store ptr %123, ptr %3, align 8
  store i32 1, ptr %7, align 4
  br label %130

124:                                              ; preds = %95, %80, %65, %45, %30, %15
  br label %125

125:                                              ; preds = %124
  %126 = load i32, ptr %6, align 4, !tbaa !38
  %127 = add nsw i32 %126, 1
  store i32 %127, ptr %6, align 4, !tbaa !38
  br label %8, !llvm.loop !251

128:                                              ; preds = %8
  %129 = load ptr, ptr %5, align 8, !tbaa !59
  store ptr %129, ptr %3, align 8
  store i32 1, ptr %7, align 4
  br label %130

130:                                              ; preds = %128, %115
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  %131 = load ptr, ptr %3, align 8
  ret ptr %131
}

; Function Attrs: nounwind
define internal void @compute_declaration_states(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !10
  store ptr %2, ptr %6, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  store ptr null, ptr %8, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #9
  %12 = load ptr, ptr %6, align 8, !tbaa !75
  %13 = call signext i32 @scanner_declaration(ptr noundef %12)
  store i32 %13, ptr %11, align 4, !tbaa !38
  store i32 0, ptr %9, align 4, !tbaa !38
  br label %14

14:                                               ; preds = %150, %3
  %15 = load i32, ptr %9, align 4, !tbaa !38
  %16 = load ptr, ptr %4, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 3
  %18 = getelementptr inbounds nuw %struct.anon.2, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8, !tbaa !126
  %20 = icmp ult i32 %15, %19
  br i1 %20, label %21, label %153

21:                                               ; preds = %14
  %22 = load ptr, ptr %4, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct.Grammar, ptr %22, i32 0, i32 3
  %24 = getelementptr inbounds nuw %struct.anon.2, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !127
  %26 = load i32, ptr %9, align 4, !tbaa !38
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !128
  store ptr %29, ptr %7, align 8, !tbaa !128
  %30 = load ptr, ptr %6, align 8, !tbaa !75
  %31 = getelementptr inbounds nuw %struct.Declaration, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !79
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %21
  %35 = load ptr, ptr %8, align 8, !tbaa !128
  %36 = icmp ne ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %7, align 8, !tbaa !128
  store ptr %38, ptr %8, align 8, !tbaa !128
  br label %45

39:                                               ; preds = %34
  %40 = load ptr, ptr %8, align 8, !tbaa !128
  %41 = load ptr, ptr %7, align 8, !tbaa !128
  %42 = getelementptr inbounds nuw %struct.State, ptr %41, i32 0, i32 13
  store ptr %40, ptr %42, align 8, !tbaa !173
  %43 = load ptr, ptr %8, align 8, !tbaa !128
  %44 = load ptr, ptr %7, align 8, !tbaa !128
  call void @merge_shift_actions(ptr noundef %43, ptr noundef %44)
  br label %45

45:                                               ; preds = %39, %37
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i32, ptr %11, align 4, !tbaa !38
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %149

49:                                               ; preds = %46
  store i32 0, ptr %10, align 4, !tbaa !38
  br label %50

50:                                               ; preds = %145, %49
  %51 = load i32, ptr %10, align 4, !tbaa !38
  %52 = load ptr, ptr %7, align 8, !tbaa !128
  %53 = getelementptr inbounds nuw %struct.State, ptr %52, i32 0, i32 2
  %54 = getelementptr inbounds nuw %struct.anon.7, ptr %53, i32 0, i32 0
  %55 = load i32, ptr %54, align 8, !tbaa !144
  %56 = icmp ult i32 %51, %55
  br i1 %56, label %57, label %148

57:                                               ; preds = %50
  %58 = load ptr, ptr %7, align 8, !tbaa !128
  %59 = getelementptr inbounds nuw %struct.State, ptr %58, i32 0, i32 2
  %60 = getelementptr inbounds nuw %struct.anon.7, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !145
  %62 = load i32, ptr %10, align 4, !tbaa !38
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %61, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !54
  %66 = getelementptr inbounds nuw %struct.Elem, ptr %65, i32 0, i32 0
  %67 = load i32, ptr %66, align 8, !tbaa !49
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %144

69:                                               ; preds = %57
  %70 = load ptr, ptr %7, align 8, !tbaa !128
  %71 = getelementptr inbounds nuw %struct.State, ptr %70, i32 0, i32 2
  %72 = getelementptr inbounds nuw %struct.anon.7, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !145
  %74 = load i32, ptr %10, align 4, !tbaa !38
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %73, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !54
  %78 = getelementptr inbounds nuw %struct.Elem, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !55
  %80 = getelementptr inbounds nuw %struct.Term, ptr %79, i32 0, i32 7
  %81 = load i8, ptr %80, align 4
  %82 = and i8 %81, 7
  %83 = zext i8 %82 to i32
  switch i32 %83, label %142 [
    i32 1, label %84
    i32 0, label %113
  ]

84:                                               ; preds = %69
  %85 = load ptr, ptr %7, align 8, !tbaa !128
  %86 = getelementptr inbounds nuw %struct.State, ptr %85, i32 0, i32 10
  %87 = load i8, ptr %86, align 8
  %88 = lshr i8 %87, 3
  %89 = and i8 %88, 3
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %100, label %92

92:                                               ; preds = %84
  %93 = load ptr, ptr %7, align 8, !tbaa !128
  %94 = getelementptr inbounds nuw %struct.State, ptr %93, i32 0, i32 10
  %95 = load i8, ptr %94, align 8
  %96 = lshr i8 %95, 3
  %97 = and i8 %96, 3
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %106

100:                                              ; preds = %92, %84
  %101 = load ptr, ptr %7, align 8, !tbaa !128
  %102 = getelementptr inbounds nuw %struct.State, ptr %101, i32 0, i32 10
  %103 = load i8, ptr %102, align 8
  %104 = and i8 %103, -25
  %105 = or i8 %104, 8
  store i8 %105, ptr %102, align 8
  br label %112

106:                                              ; preds = %92
  %107 = load ptr, ptr %7, align 8, !tbaa !128
  %108 = getelementptr inbounds nuw %struct.State, ptr %107, i32 0, i32 10
  %109 = load i8, ptr %108, align 8
  %110 = and i8 %109, -25
  %111 = or i8 %110, 16
  store i8 %111, ptr %108, align 8
  br label %112

112:                                              ; preds = %106, %100
  br label %143

113:                                              ; preds = %69
  %114 = load ptr, ptr %7, align 8, !tbaa !128
  %115 = getelementptr inbounds nuw %struct.State, ptr %114, i32 0, i32 10
  %116 = load i8, ptr %115, align 8
  %117 = lshr i8 %116, 3
  %118 = and i8 %117, 3
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 3
  br i1 %120, label %129, label %121

121:                                              ; preds = %113
  %122 = load ptr, ptr %7, align 8, !tbaa !128
  %123 = getelementptr inbounds nuw %struct.State, ptr %122, i32 0, i32 10
  %124 = load i8, ptr %123, align 8
  %125 = lshr i8 %124, 3
  %126 = and i8 %125, 3
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %121, %113
  %130 = load ptr, ptr %7, align 8, !tbaa !128
  %131 = getelementptr inbounds nuw %struct.State, ptr %130, i32 0, i32 10
  %132 = load i8, ptr %131, align 8
  %133 = and i8 %132, -25
  %134 = or i8 %133, 0
  store i8 %134, ptr %131, align 8
  br label %141

135:                                              ; preds = %121
  %136 = load ptr, ptr %7, align 8, !tbaa !128
  %137 = getelementptr inbounds nuw %struct.State, ptr %136, i32 0, i32 10
  %138 = load i8, ptr %137, align 8
  %139 = and i8 %138, -25
  %140 = or i8 %139, 16
  store i8 %140, ptr %137, align 8
  br label %141

141:                                              ; preds = %135, %129
  br label %143

142:                                              ; preds = %69
  br label %143

143:                                              ; preds = %142, %141, %112
  br label %144

144:                                              ; preds = %143, %57
  br label %145

145:                                              ; preds = %144
  %146 = load i32, ptr %10, align 4, !tbaa !38
  %147 = add nsw i32 %146, 1
  store i32 %147, ptr %10, align 4, !tbaa !38
  br label %50, !llvm.loop !252

148:                                              ; preds = %50
  br label %149

149:                                              ; preds = %148, %46
  br label %150

150:                                              ; preds = %149
  %151 = load i32, ptr %9, align 4, !tbaa !38
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %9, align 4, !tbaa !38
  br label %14, !llvm.loop !253

153:                                              ; preds = %14
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  ret void
}

; Function Attrs: nounwind
define internal void @merge_shift_actions(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !128
  store ptr %1, ptr %4, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  store i32 0, ptr %5, align 4, !tbaa !38
  br label %7

7:                                                ; preds = %159, %2
  %8 = load i32, ptr %5, align 4, !tbaa !38
  %9 = load ptr, ptr %4, align 8, !tbaa !128
  %10 = getelementptr inbounds nuw %struct.State, ptr %9, i32 0, i32 5
  %11 = getelementptr inbounds nuw %struct.VecAction, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8, !tbaa !163
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %162

14:                                               ; preds = %7
  store i32 0, ptr %6, align 4, !tbaa !38
  br label %15

15:                                               ; preds = %46, %14
  %16 = load i32, ptr %6, align 4, !tbaa !38
  %17 = load ptr, ptr %3, align 8, !tbaa !128
  %18 = getelementptr inbounds nuw %struct.State, ptr %17, i32 0, i32 5
  %19 = getelementptr inbounds nuw %struct.VecAction, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8, !tbaa !163
  %21 = icmp ult i32 %16, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %15
  %23 = load ptr, ptr %4, align 8, !tbaa !128
  %24 = getelementptr inbounds nuw %struct.State, ptr %23, i32 0, i32 5
  %25 = getelementptr inbounds nuw %struct.VecAction, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !164
  %27 = load i32, ptr %5, align 4, !tbaa !38
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !157
  %31 = getelementptr inbounds nuw %struct.Action, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !165
  %33 = load ptr, ptr %3, align 8, !tbaa !128
  %34 = getelementptr inbounds nuw %struct.State, ptr %33, i32 0, i32 5
  %35 = getelementptr inbounds nuw %struct.VecAction, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !164
  %37 = load i32, ptr %6, align 4, !tbaa !38
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !157
  %41 = getelementptr inbounds nuw %struct.Action, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !165
  %43 = icmp eq ptr %32, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %22
  br label %158

45:                                               ; preds = %22
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %6, align 4, !tbaa !38
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %6, align 4, !tbaa !38
  br label %15, !llvm.loop !254

49:                                               ; preds = %15
  br label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr %3, align 8, !tbaa !128
  %52 = getelementptr inbounds nuw %struct.State, ptr %51, i32 0, i32 5
  %53 = getelementptr inbounds nuw %struct.VecAction, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !164
  %55 = icmp ne ptr %54, null
  br i1 %55, label %79, label %56

56:                                               ; preds = %50
  %57 = load ptr, ptr %4, align 8, !tbaa !128
  %58 = getelementptr inbounds nuw %struct.State, ptr %57, i32 0, i32 5
  %59 = getelementptr inbounds nuw %struct.VecAction, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !164
  %61 = load i32, ptr %5, align 4, !tbaa !38
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !157
  %65 = load ptr, ptr %3, align 8, !tbaa !128
  %66 = getelementptr inbounds nuw %struct.State, ptr %65, i32 0, i32 5
  %67 = getelementptr inbounds nuw %struct.VecAction, ptr %66, i32 0, i32 3
  %68 = getelementptr inbounds [3 x ptr], ptr %67, i64 0, i64 0
  %69 = load ptr, ptr %3, align 8, !tbaa !128
  %70 = getelementptr inbounds nuw %struct.State, ptr %69, i32 0, i32 5
  %71 = getelementptr inbounds nuw %struct.VecAction, ptr %70, i32 0, i32 2
  store ptr %68, ptr %71, align 8, !tbaa !164
  %72 = load ptr, ptr %3, align 8, !tbaa !128
  %73 = getelementptr inbounds nuw %struct.State, ptr %72, i32 0, i32 5
  %74 = getelementptr inbounds nuw %struct.VecAction, ptr %73, i32 0, i32 0
  %75 = load i32, ptr %74, align 8, !tbaa !163
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 8, !tbaa !163
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds nuw ptr, ptr %68, i64 %77
  store ptr %64, ptr %78, align 8, !tbaa !157
  br label %157

79:                                               ; preds = %50
  %80 = load ptr, ptr %3, align 8, !tbaa !128
  %81 = getelementptr inbounds nuw %struct.State, ptr %80, i32 0, i32 5
  %82 = getelementptr inbounds nuw %struct.VecAction, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !164
  %84 = load ptr, ptr %3, align 8, !tbaa !128
  %85 = getelementptr inbounds nuw %struct.State, ptr %84, i32 0, i32 5
  %86 = getelementptr inbounds nuw %struct.VecAction, ptr %85, i32 0, i32 3
  %87 = getelementptr inbounds [3 x ptr], ptr %86, i64 0, i64 0
  %88 = icmp eq ptr %83, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %79
  %90 = load ptr, ptr %3, align 8, !tbaa !128
  %91 = getelementptr inbounds nuw %struct.State, ptr %90, i32 0, i32 5
  %92 = getelementptr inbounds nuw %struct.VecAction, ptr %91, i32 0, i32 0
  %93 = load i32, ptr %92, align 8, !tbaa !163
  %94 = icmp ult i32 %93, 3
  br i1 %94, label %95, label %115

95:                                               ; preds = %89
  %96 = load ptr, ptr %4, align 8, !tbaa !128
  %97 = getelementptr inbounds nuw %struct.State, ptr %96, i32 0, i32 5
  %98 = getelementptr inbounds nuw %struct.VecAction, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !164
  %100 = load i32, ptr %5, align 4, !tbaa !38
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %99, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !157
  %104 = load ptr, ptr %3, align 8, !tbaa !128
  %105 = getelementptr inbounds nuw %struct.State, ptr %104, i32 0, i32 5
  %106 = getelementptr inbounds nuw %struct.VecAction, ptr %105, i32 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !164
  %108 = load ptr, ptr %3, align 8, !tbaa !128
  %109 = getelementptr inbounds nuw %struct.State, ptr %108, i32 0, i32 5
  %110 = getelementptr inbounds nuw %struct.VecAction, ptr %109, i32 0, i32 0
  %111 = load i32, ptr %110, align 8, !tbaa !163
  %112 = add i32 %111, 1
  store i32 %112, ptr %110, align 8, !tbaa !163
  %113 = zext i32 %111 to i64
  %114 = getelementptr inbounds nuw ptr, ptr %107, i64 %113
  store ptr %103, ptr %114, align 8, !tbaa !157
  br label %157

115:                                              ; preds = %89
  br label %144

116:                                              ; preds = %79
  %117 = load ptr, ptr %3, align 8, !tbaa !128
  %118 = getelementptr inbounds nuw %struct.State, ptr %117, i32 0, i32 5
  %119 = getelementptr inbounds nuw %struct.VecAction, ptr %118, i32 0, i32 0
  %120 = load i32, ptr %119, align 8, !tbaa !163
  %121 = and i32 %120, 7
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %116
  %124 = load ptr, ptr %4, align 8, !tbaa !128
  %125 = getelementptr inbounds nuw %struct.State, ptr %124, i32 0, i32 5
  %126 = getelementptr inbounds nuw %struct.VecAction, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !164
  %128 = load i32, ptr %5, align 4, !tbaa !38
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %127, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !157
  %132 = load ptr, ptr %3, align 8, !tbaa !128
  %133 = getelementptr inbounds nuw %struct.State, ptr %132, i32 0, i32 5
  %134 = getelementptr inbounds nuw %struct.VecAction, ptr %133, i32 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !164
  %136 = load ptr, ptr %3, align 8, !tbaa !128
  %137 = getelementptr inbounds nuw %struct.State, ptr %136, i32 0, i32 5
  %138 = getelementptr inbounds nuw %struct.VecAction, ptr %137, i32 0, i32 0
  %139 = load i32, ptr %138, align 8, !tbaa !163
  %140 = add i32 %139, 1
  store i32 %140, ptr %138, align 8, !tbaa !163
  %141 = zext i32 %139 to i64
  %142 = getelementptr inbounds nuw ptr, ptr %135, i64 %141
  store ptr %131, ptr %142, align 8, !tbaa !157
  br label %157

143:                                              ; preds = %116
  br label %144

144:                                              ; preds = %143, %115
  br label %145

145:                                              ; preds = %144
  %146 = load ptr, ptr %3, align 8, !tbaa !128
  %147 = getelementptr inbounds nuw %struct.State, ptr %146, i32 0, i32 5
  %148 = load ptr, ptr %4, align 8, !tbaa !128
  %149 = getelementptr inbounds nuw %struct.State, ptr %148, i32 0, i32 5
  %150 = getelementptr inbounds nuw %struct.VecAction, ptr %149, i32 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !164
  %152 = load i32, ptr %5, align 4, !tbaa !38
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds ptr, ptr %151, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !157
  call void @vec_add_internal(ptr noundef %147, ptr noundef %155)
  br label %156

156:                                              ; preds = %145
  br label %157

157:                                              ; preds = %156, %123, %95, %56
  br label %158

158:                                              ; preds = %157, %44
  br label %159

159:                                              ; preds = %158
  %160 = load i32, ptr %5, align 4, !tbaa !38
  %161 = add nsw i32 %160, 1
  store i32 %161, ptr %5, align 4, !tbaa !38
  br label %7, !llvm.loop !255

162:                                              ; preds = %7
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #9
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #8 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind allocsize(1) }

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
!9 = !{!"p1 omnipotent char", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS10Production", !5, i64 0}
!12 = !{!13, !16, i64 16}
!13 = !{!"Grammar", !9, i64 0, !14, i64 8, !18, i64 48, !20, i64 88, !22, i64 128, !23, i64 144, !15, i64 152, !24, i64 160, !26, i64 200, !9, i64 240, !15, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !15, i64 272, !6, i64 276, !15, i64 532, !15, i64 536, !15, i64 540, !15, i64 544, !15, i64 548, !11, i64 552, !28, i64 560, !29, i64 568, !15, i64 576, !15, i64 580, !15, i64 584, !15, i64 588}
!14 = !{!"", !15, i64 0, !15, i64 4, !16, i64 8, !6, i64 16}
!15 = !{!"int", !6, i64 0}
!16 = !{!"p2 _ZTS10Production", !17, i64 0}
!17 = !{!"any p2 pointer", !5, i64 0}
!18 = !{!"", !15, i64 0, !15, i64 4, !19, i64 8, !6, i64 16}
!19 = !{!"p2 _ZTS4Term", !17, i64 0}
!20 = !{!"", !15, i64 0, !15, i64 4, !21, i64 8, !6, i64 16}
!21 = !{!"p2 _ZTS5State", !17, i64 0}
!22 = !{!"Code", !9, i64 0, !15, i64 8}
!23 = !{!"p1 _ZTS4Code", !5, i64 0}
!24 = !{!"", !15, i64 0, !15, i64 4, !25, i64 8, !6, i64 16}
!25 = !{!"p2 _ZTS11Declaration", !17, i64 0}
!26 = !{!"", !15, i64 0, !15, i64 4, !27, i64 8, !6, i64 16}
!27 = !{!"p2 _ZTS6D_Pass", !17, i64 0}
!28 = !{!"p1 _ZTS4Rule", !5, i64 0}
!29 = !{!"p1 _ZTS4Elem", !5, i64 0}
!30 = !{!13, !15, i64 8}
!31 = !{!32, !9, i64 0}
!32 = !{!"Production", !9, i64 0, !15, i64 8, !33, i64 16, !15, i64 56, !15, i64 60, !15, i64 60, !15, i64 60, !28, i64 64, !6, i64 72, !6, i64 136, !35, i64 200, !29, i64 208, !36, i64 216, !11, i64 224}
!33 = !{!"", !15, i64 0, !15, i64 4, !34, i64 8, !6, i64 16}
!34 = !{!"p2 _ZTS4Rule", !17, i64 0}
!35 = !{!"p1 _ZTS5State", !5, i64 0}
!36 = !{!"p1 _ZTS4Term", !5, i64 0}
!37 = !{!32, !15, i64 8}
!38 = !{!15, !15, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!28, !28, i64 0}
!42 = !{!43, !11, i64 8}
!43 = !{!"Rule", !15, i64 0, !11, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !44, i64 32, !29, i64 72, !22, i64 80, !22, i64 96, !46, i64 112, !15, i64 152, !28, i64 160}
!44 = !{!"", !15, i64 0, !15, i64 4, !45, i64 8, !6, i64 16}
!45 = !{!"p2 _ZTS4Elem", !17, i64 0}
!46 = !{!"", !15, i64 0, !15, i64 4, !47, i64 8, !6, i64 16}
!47 = !{!"p2 _ZTS4Code", !17, i64 0}
!48 = !{!43, !29, i64 72}
!49 = !{!50, !15, i64 0}
!50 = !{!"Elem", !15, i64 0, !15, i64 4, !28, i64 8, !6, i64 16}
!51 = !{!50, !28, i64 8}
!52 = !{!13, !15, i64 576}
!53 = !{!43, !15, i64 152}
!54 = !{!29, !29, i64 0}
!55 = !{!6, !6, i64 0}
!56 = distinct !{!56, !40}
!57 = !{!58, !15, i64 0}
!58 = !{!"Term", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !9, i64 24, !15, i64 32, !15, i64 36, !15, i64 36, !11, i64 40}
!59 = !{!36, !36, i64 0}
!60 = !{!58, !9, i64 24}
!61 = !{!58, !15, i64 32}
!62 = !{!13, !19, i64 56}
!63 = !{!13, !15, i64 48}
!64 = !{!65, !65, i64 0}
!65 = !{!"p1 short", !5, i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"short", !6, i64 0}
!68 = distinct !{!68, !40}
!69 = !{!43, !45, i64 40}
!70 = !{!43, !15, i64 32}
!71 = !{!13, !23, i64 144}
!72 = !{!13, !15, i64 152}
!73 = !{!22, !9, i64 0}
!74 = !{!22, !15, i64 8}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 _ZTS11Declaration", !5, i64 0}
!77 = !{!78, !29, i64 0}
!78 = !{!"Declaration", !29, i64 0, !15, i64 8, !15, i64 12}
!79 = !{!78, !15, i64 8}
!80 = !{!13, !15, i64 160}
!81 = !{!78, !15, i64 12}
!82 = !{!13, !25, i64 168}
!83 = !{!13, !15, i64 248}
!84 = !{!13, !15, i64 260}
!85 = !{!13, !15, i64 268}
!86 = !{!13, !15, i64 264}
!87 = !{!13, !15, i64 272}
!88 = !{!13, !9, i64 240}
!89 = distinct !{!89, !40}
!90 = !{!13, !15, i64 200}
!91 = !{!13, !27, i64 208}
!92 = !{!93, !93, i64 0}
!93 = !{!"p1 _ZTS6D_Pass", !5, i64 0}
!94 = !{!95, !15, i64 8}
!95 = !{!"D_Pass", !9, i64 0, !15, i64 8, !15, i64 12, !15, i64 16}
!96 = !{!95, !9, i64 0}
!97 = distinct !{!97, !40}
!98 = !{!95, !15, i64 12}
!99 = !{!13, !15, i64 584}
!100 = !{!95, !15, i64 16}
!101 = !{!43, !15, i64 112}
!102 = !{!43, !47, i64 120}
!103 = !{!23, !23, i64 0}
!104 = distinct !{!104, !40}
!105 = distinct !{!105, !40}
!106 = !{!13, !11, i64 552}
!107 = !{!13, !28, i64 560}
!108 = !{!32, !34, i64 24}
!109 = !{!32, !15, i64 16}
!110 = !{!13, !15, i64 252}
!111 = distinct !{!111, !40}
!112 = !{!43, !9, i64 80}
!113 = !{!43, !9, i64 96}
!114 = distinct !{!114, !40}
!115 = !{!43, !15, i64 16}
!116 = !{!43, !15, i64 20}
!117 = !{!43, !15, i64 24}
!118 = !{!43, !15, i64 28}
!119 = distinct !{!119, !40}
!120 = distinct !{!120, !40}
!121 = distinct !{!121, !40}
!122 = !{!123, !15, i64 0}
!123 = !{!"EnumStr", !15, i64 0, !9, i64 8}
!124 = !{!123, !9, i64 8}
!125 = distinct !{!125, !40}
!126 = !{!13, !15, i64 88}
!127 = !{!13, !21, i64 96}
!128 = !{!35, !35, i64 0}
!129 = distinct !{!129, !40}
!130 = !{!131, !15, i64 0}
!131 = !{!"State", !15, i64 0, !132, i64 8, !44, i64 16, !44, i64 56, !133, i64 96, !135, i64 136, !135, i64 176, !137, i64 216, !137, i64 256, !139, i64 296, !15, i64 376, !15, i64 376, !15, i64 376, !15, i64 376, !9, i64 384, !15, i64 392, !35, i64 400, !35, i64 408, !28, i64 416, !28, i64 424}
!132 = !{!"long long", !6, i64 0}
!133 = !{!"", !15, i64 0, !15, i64 4, !134, i64 8, !6, i64 16}
!134 = !{!"p2 _ZTS4Goto", !17, i64 0}
!135 = !{!"", !15, i64 0, !15, i64 4, !136, i64 8, !6, i64 16}
!136 = !{!"p2 _ZTS6Action", !17, i64 0}
!137 = !{!"", !15, i64 0, !15, i64 4, !138, i64 8, !6, i64 16}
!138 = !{!"p2 _ZTS4Hint", !17, i64 0}
!139 = !{!"Scanner", !140, i64 0, !142, i64 40}
!140 = !{!"", !15, i64 0, !15, i64 4, !141, i64 8, !6, i64 16}
!141 = !{!"p2 _ZTS9ScanState", !17, i64 0}
!142 = !{!"", !15, i64 0, !15, i64 4, !143, i64 8, !6, i64 16}
!143 = !{!"p2 _ZTS19ScanStateTransition", !17, i64 0}
!144 = !{!131, !15, i64 16}
!145 = !{!131, !45, i64 24}
!146 = distinct !{!146, !40}
!147 = !{!131, !15, i64 96}
!148 = !{!131, !134, i64 104}
!149 = !{!150, !150, i64 0}
!150 = !{!"p1 _ZTS4Goto", !5, i64 0}
!151 = !{!152, !29, i64 0}
!152 = !{!"Goto", !29, i64 0, !35, i64 8}
!153 = !{!152, !35, i64 8}
!154 = distinct !{!154, !40}
!155 = !{!131, !15, i64 176}
!156 = !{!131, !136, i64 184}
!157 = !{!158, !158, i64 0}
!158 = !{!"p1 _ZTS6Action", !5, i64 0}
!159 = !{!160, !15, i64 0}
!160 = !{!"Action", !15, i64 0, !36, i64 8, !28, i64 16, !35, i64 24, !15, i64 32, !9, i64 40}
!161 = !{!160, !28, i64 16}
!162 = distinct !{!162, !40}
!163 = !{!131, !15, i64 136}
!164 = !{!131, !136, i64 144}
!165 = !{!160, !36, i64 8}
!166 = !{!160, !35, i64 24}
!167 = distinct !{!167, !40}
!168 = !{!32, !15, i64 56}
!169 = distinct !{!169, !40}
!170 = !{!5, !5, i64 0}
!171 = !{!172, !35, i64 0}
!172 = !{!"", !35, i64 0, !28, i64 8, !35, i64 16}
!173 = !{!131, !35, i64 400}
!174 = !{!172, !35, i64 16}
!175 = distinct !{!175, !40}
!176 = !{!172, !28, i64 8}
!177 = distinct !{!177, !40}
!178 = distinct !{!178, !40}
!179 = distinct !{!179, !40}
!180 = distinct !{!180, !40}
!181 = distinct !{!181, !40}
!182 = !{!131, !35, i64 408}
!183 = !{!131, !28, i64 416}
!184 = !{!131, !28, i64 424}
!185 = distinct !{!185, !40}
!186 = distinct !{!186, !40}
!187 = !{!13, !9, i64 0}
!188 = !{!189, !189, i64 0}
!189 = !{!"p1 _ZTS14D_ParserTables", !5, i64 0}
!190 = !{!191, !191, i64 0}
!191 = !{!"p1 _ZTS8_IO_FILE", !5, i64 0}
!192 = !{!193, !193, i64 0}
!193 = !{!"p1 _ZTS8D_Parser", !5, i64 0}
!194 = !{!195, !5, i64 0}
!195 = !{!"D_Parser", !5, i64 0, !5, i64 8, !196, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !197, i64 48, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !15, i64 96, !15, i64 100, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !15, i64 120, !15, i64 124}
!196 = !{!"p1 _ZTS7D_Scope", !5, i64 0}
!197 = !{!"d_loc_t", !9, i64 0, !9, i64 8, !15, i64 16, !15, i64 20, !15, i64 24}
!198 = !{!195, !9, i64 56}
!199 = !{!13, !15, i64 588}
!200 = !{!43, !15, i64 0}
!201 = !{!50, !15, i64 4}
!202 = distinct !{!202, !40}
!203 = !{!58, !15, i64 12}
!204 = !{!58, !15, i64 16}
!205 = distinct !{!205, !40}
!206 = distinct !{!206, !40}
!207 = !{!58, !15, i64 4}
!208 = distinct !{!208, !40}
!209 = distinct !{!209, !40}
!210 = !{!32, !36, i64 216}
!211 = distinct !{!211, !40}
!212 = distinct !{!212, !40}
!213 = distinct !{!213, !40}
!214 = distinct !{!214, !40}
!215 = distinct !{!215, !40}
!216 = distinct !{!216, !40}
!217 = distinct !{!217, !40}
!218 = distinct !{!218, !40}
!219 = distinct !{!219, !40}
!220 = distinct !{!220, !40}
!221 = distinct !{!221, !40}
!222 = !{!32, !29, i64 208}
!223 = distinct !{!223, !40}
!224 = distinct !{!224, !40}
!225 = distinct !{!225, !40}
!226 = distinct !{!226, !40}
!227 = !{!13, !15, i64 256}
!228 = distinct !{!228, !40}
!229 = distinct !{!229, !40}
!230 = distinct !{!230, !40}
!231 = distinct !{!231, !40}
!232 = !{!233, !233, i64 0}
!233 = !{!"p1 int", !5, i64 0}
!234 = distinct !{!234, !40}
!235 = !{!32, !28, i64 64}
!236 = distinct !{!236, !40}
!237 = distinct !{!237, !40}
!238 = distinct !{!238, !40}
!239 = distinct !{!239, !40}
!240 = distinct !{!240, !40}
!241 = distinct !{!241, !40}
!242 = distinct !{!242, !40}
!243 = distinct !{!243, !40}
!244 = distinct !{!244, !40}
!245 = !{!58, !11, i64 40}
!246 = distinct !{!246, !40}
!247 = distinct !{!247, !40}
!248 = distinct !{!248, !40}
!249 = distinct !{!249, !40}
!250 = !{!58, !15, i64 8}
!251 = distinct !{!251, !40}
!252 = distinct !{!252, !40}
!253 = distinct !{!253, !40}
!254 = distinct !{!254, !40}
!255 = distinct !{!255, !40}
