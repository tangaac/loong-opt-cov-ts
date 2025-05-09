; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/comment.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/comment.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct._W_bolstruct = type { [16 x i8], [16 x i8], [16 x i8] }
%struct._W_comstruct = type { [16 x i8], [16 x i8], [16 x i8], i32 }
%struct._W_litstruct = type { [16 x i8], [16 x i8], [16 x i8] }

@_W_bolchar = dso_local global i8 94, align 1
@_W_eolchar = dso_local global i8 36, align 1
@_W_nextbol = internal global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"too many beginning of line comment delimiter sets\00", align 1
@_W_bols = dso_local global [20 x %struct._W_bolstruct] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"begining of line comment won't nest\00", align 1
@_W_nextcom = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"too many comment delimiter sets\00", align 1
@_W_coms = dso_local global [20 x %struct._W_comstruct] zeroinitializer, align 4
@_W_nextlit = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"too many literal delimiter sets\00", align 1
@_W_lits = dso_local global [20 x %struct._W_litstruct] zeroinitializer, align 1
@bol_scratch = internal global %struct._W_bolstruct zeroinitializer, align 1
@lit_scratch = internal global %struct._W_litstruct zeroinitializer, align 1
@com_scratch = internal global %struct._W_comstruct zeroinitializer, align 4

; Function Attrs: nounwind
define dso_local void @W_addcom(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i32 %1, ptr %4, align 4, !tbaa !8
  %5 = load ptr, ptr %3, align 8, !tbaa !3
  %6 = load i8, ptr %5, align 1, !tbaa !10
  %7 = sext i8 %6 to i32
  %8 = load i8, ptr @_W_bolchar, align 1, !tbaa !10
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %57

11:                                               ; preds = %2
  %12 = load i32, ptr @_W_nextbol, align 4, !tbaa !8
  %13 = icmp sge i32 %12, 20
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @Z_fatal(ptr noundef @.str)
  br label %15

15:                                               ; preds = %14, %11
  %16 = load ptr, ptr %3, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %17, ptr %3, align 8, !tbaa !3
  %18 = load i32, ptr @_W_nextbol, align 4, !tbaa !8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %19
  %21 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds [16 x i8], ptr %21, i64 0, i64 0
  %23 = load ptr, ptr %3, align 8, !tbaa !3
  call void @S_wordcpy(ptr noundef %22, ptr noundef %23)
  call void @S_nextword(ptr noundef %3)
  %24 = load ptr, ptr %3, align 8, !tbaa !3
  %25 = load i8, ptr %24, align 1, !tbaa !10
  %26 = sext i8 %25 to i32
  %27 = load i8, ptr @_W_eolchar, align 1, !tbaa !10
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %15
  %31 = load i32, ptr @_W_nextbol, align 4, !tbaa !8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %32
  %34 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %33, i32 0, i32 1
  %35 = getelementptr inbounds [16 x i8], ptr %34, i64 0, i64 0
  %36 = call ptr @strcpy(ptr noundef %35, ptr noundef @.str.1) #3
  br label %44

37:                                               ; preds = %15
  %38 = load i32, ptr @_W_nextbol, align 4, !tbaa !8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %39
  %41 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %40, i32 0, i32 1
  %42 = getelementptr inbounds [16 x i8], ptr %41, i64 0, i64 0
  %43 = load ptr, ptr %3, align 8, !tbaa !3
  call void @S_wordcpy(ptr noundef %42, ptr noundef %43)
  br label %44

44:                                               ; preds = %37, %30
  call void @S_nextword(ptr noundef %3)
  %45 = load i32, ptr @_W_nextbol, align 4, !tbaa !8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %46
  %48 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %47, i32 0, i32 2
  %49 = getelementptr inbounds [16 x i8], ptr %48, i64 0, i64 0
  %50 = load ptr, ptr %3, align 8, !tbaa !3
  call void @S_wordcpy(ptr noundef %49, ptr noundef %50)
  %51 = load i32, ptr %4, align 4, !tbaa !8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  call void @Z_complain(ptr noundef @.str.2)
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, ptr @_W_nextbol, align 4, !tbaa !8
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr @_W_nextbol, align 4, !tbaa !8
  br label %102

57:                                               ; preds = %2
  %58 = load i32, ptr @_W_nextcom, align 4, !tbaa !8
  %59 = icmp sge i32 %58, 20
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void @Z_fatal(ptr noundef @.str.3)
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, ptr @_W_nextcom, align 4, !tbaa !8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %63
  %65 = getelementptr inbounds nuw %struct._W_comstruct, ptr %64, i32 0, i32 0
  %66 = getelementptr inbounds [16 x i8], ptr %65, i64 0, i64 0
  %67 = load ptr, ptr %3, align 8, !tbaa !3
  call void @S_wordcpy(ptr noundef %66, ptr noundef %67)
  call void @S_nextword(ptr noundef %3)
  %68 = load ptr, ptr %3, align 8, !tbaa !3
  %69 = load i8, ptr %68, align 1, !tbaa !10
  %70 = sext i8 %69 to i32
  %71 = load i8, ptr @_W_eolchar, align 1, !tbaa !10
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %61
  %75 = load i32, ptr @_W_nextbol, align 4, !tbaa !8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %76
  %78 = getelementptr inbounds nuw %struct._W_comstruct, ptr %77, i32 0, i32 1
  %79 = getelementptr inbounds [16 x i8], ptr %78, i64 0, i64 0
  %80 = call ptr @strcpy(ptr noundef %79, ptr noundef @.str.1) #3
  br label %88

81:                                               ; preds = %61
  %82 = load i32, ptr @_W_nextbol, align 4, !tbaa !8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %83
  %85 = getelementptr inbounds nuw %struct._W_comstruct, ptr %84, i32 0, i32 1
  %86 = getelementptr inbounds [16 x i8], ptr %85, i64 0, i64 0
  %87 = load ptr, ptr %3, align 8, !tbaa !3
  call void @S_wordcpy(ptr noundef %86, ptr noundef %87)
  br label %88

88:                                               ; preds = %81, %74
  call void @S_nextword(ptr noundef %3)
  %89 = load i32, ptr @_W_nextcom, align 4, !tbaa !8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %90
  %92 = getelementptr inbounds nuw %struct._W_comstruct, ptr %91, i32 0, i32 2
  %93 = getelementptr inbounds [16 x i8], ptr %92, i64 0, i64 0
  %94 = load ptr, ptr %3, align 8, !tbaa !3
  call void @S_wordcpy(ptr noundef %93, ptr noundef %94)
  %95 = load i32, ptr %4, align 4, !tbaa !8
  %96 = load i32, ptr @_W_nextcom, align 4, !tbaa !8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %97
  %99 = getelementptr inbounds nuw %struct._W_comstruct, ptr %98, i32 0, i32 3
  store i32 %95, ptr %99, align 4, !tbaa !11
  %100 = load i32, ptr @_W_nextcom, align 4, !tbaa !8
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr @_W_nextcom, align 4, !tbaa !8
  br label %102

102:                                              ; preds = %88, %54
  ret void
}

declare void @Z_fatal(...) #1

declare void @S_wordcpy(...) #1

declare void @S_nextword(...) #1

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #0

declare void @Z_complain(...) #1

; Function Attrs: nounwind
define dso_local void @W_clearcoms() #0 {
  store i32 0, ptr @_W_nextcom, align 4, !tbaa !8
  store i32 0, ptr @_W_nextbol, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind
define dso_local void @W_addlit(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load i32, ptr @_W_nextlit, align 4, !tbaa !8
  %4 = icmp sge i32 %3, 20
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @Z_fatal(ptr noundef @.str.4)
  br label %6

6:                                                ; preds = %5, %1
  %7 = load i32, ptr @_W_nextlit, align 4, !tbaa !8
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [20 x %struct._W_litstruct], ptr @_W_lits, i64 0, i64 %8
  %10 = getelementptr inbounds nuw %struct._W_litstruct, ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0
  %12 = load ptr, ptr %2, align 8, !tbaa !3
  call void @S_wordcpy(ptr noundef %11, ptr noundef %12)
  call void @S_nextword(ptr noundef %2)
  %13 = load i32, ptr @_W_nextlit, align 4, !tbaa !8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [20 x %struct._W_litstruct], ptr @_W_lits, i64 0, i64 %14
  %16 = getelementptr inbounds nuw %struct._W_litstruct, ptr %15, i32 0, i32 1
  %17 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 0
  %18 = load ptr, ptr %2, align 8, !tbaa !3
  call void @S_wordcpy(ptr noundef %17, ptr noundef %18)
  call void @S_nextword(ptr noundef %2)
  %19 = load i32, ptr @_W_nextlit, align 4, !tbaa !8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [20 x %struct._W_litstruct], ptr @_W_lits, i64 0, i64 %20
  %22 = getelementptr inbounds nuw %struct._W_litstruct, ptr %21, i32 0, i32 2
  %23 = getelementptr inbounds [16 x i8], ptr %22, i64 0, i64 0
  %24 = load ptr, ptr %2, align 8, !tbaa !3
  call void @S_wordcpy(ptr noundef %23, ptr noundef %24)
  %25 = load i32, ptr @_W_nextlit, align 4, !tbaa !8
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr @_W_nextlit, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind
define dso_local void @W_clearlits() #0 {
  store i32 0, ptr @_W_nextlit, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind
define dso_local ptr @W_isbol(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #3
  store i32 0, ptr %4, align 4, !tbaa !8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, ptr %4, align 4, !tbaa !8
  %8 = load i32, ptr @_W_nextbol, align 4, !tbaa !8
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8, !tbaa !3
  %12 = load i32, ptr %4, align 4, !tbaa !8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %13
  %15 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds [16 x i8], ptr %15, i64 0, i64 0
  %17 = call signext i32 @S_wordcmp(ptr noundef %11, ptr noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %10
  %20 = load i32, ptr %4, align 4, !tbaa !8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %21
  call void @_W_copybol(ptr noundef @bol_scratch, ptr noundef %22)
  store ptr @bol_scratch, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %28

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %4, align 4, !tbaa !8
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %4, align 4, !tbaa !8
  br label %6, !llvm.loop !13

27:                                               ; preds = %6
  store ptr null, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %28

28:                                               ; preds = %27, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #3
  %29 = load ptr, ptr %2, align 8
  ret ptr %29
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

declare signext i32 @S_wordcmp(...) #1

; Function Attrs: nounwind
define internal void @_W_copybol(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !15
  store ptr %1, ptr %4, align 8, !tbaa !15
  %5 = load ptr, ptr %3, align 8, !tbaa !15
  %6 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds [16 x i8], ptr %6, i64 0, i64 0
  %8 = load ptr, ptr %4, align 8, !tbaa !15
  %9 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 0
  %11 = call ptr @strcpy(ptr noundef %7, ptr noundef %10) #3
  %12 = load ptr, ptr %3, align 8, !tbaa !15
  %13 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %12, i32 0, i32 1
  %14 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0
  %15 = load ptr, ptr %4, align 8, !tbaa !15
  %16 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %15, i32 0, i32 1
  %17 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 0
  %18 = call ptr @strcpy(ptr noundef %14, ptr noundef %17) #3
  %19 = load ptr, ptr %3, align 8, !tbaa !15
  %20 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %19, i32 0, i32 2
  %21 = getelementptr inbounds [16 x i8], ptr %20, i64 0, i64 0
  %22 = load ptr, ptr %4, align 8, !tbaa !15
  %23 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %22, i32 0, i32 2
  %24 = getelementptr inbounds [16 x i8], ptr %23, i64 0, i64 0
  %25 = call ptr @strcpy(ptr noundef %21, ptr noundef %24) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind
define dso_local signext i32 @W_is_bol(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #3
  store i32 0, ptr %4, align 4, !tbaa !8
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i32, ptr %4, align 4, !tbaa !8
  %8 = load i32, ptr @_W_nextbol, align 4, !tbaa !8
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8, !tbaa !15
  %12 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 0
  %14 = load i32, ptr %4, align 4, !tbaa !8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %15
  %17 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds [16 x i8], ptr %17, i64 0, i64 0
  %19 = call signext i32 @S_wordcmp(ptr noundef %13, ptr noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %10
  %22 = load ptr, ptr %3, align 8, !tbaa !15
  %23 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds [16 x i8], ptr %23, i64 0, i64 0
  %25 = load i32, ptr %4, align 4, !tbaa !8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %26
  %28 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %27, i32 0, i32 1
  %29 = getelementptr inbounds [16 x i8], ptr %28, i64 0, i64 0
  %30 = call signext i32 @S_wordcmp(ptr noundef %24, ptr noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %21
  %33 = load ptr, ptr %3, align 8, !tbaa !15
  %34 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %33, i32 0, i32 2
  %35 = getelementptr inbounds [16 x i8], ptr %34, i64 0, i64 0
  %36 = load i32, ptr %4, align 4, !tbaa !8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %37
  %39 = getelementptr inbounds nuw %struct._W_bolstruct, ptr %38, i32 0, i32 2
  %40 = getelementptr inbounds [16 x i8], ptr %39, i64 0, i64 0
  %41 = call signext i32 @S_wordcmp(ptr noundef %35, ptr noundef %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  store i32 1, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %49

44:                                               ; preds = %32, %21, %10
  br label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %4, align 4, !tbaa !8
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %4, align 4, !tbaa !8
  br label %6, !llvm.loop !16

48:                                               ; preds = %6
  store i32 0, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %49

49:                                               ; preds = %48, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #3
  %50 = load i32, ptr %2, align 4
  ret i32 %50
}

; Function Attrs: nounwind
define dso_local ptr @W_islit(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #3
  store i32 0, ptr %4, align 4, !tbaa !8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, ptr %4, align 4, !tbaa !8
  %8 = load i32, ptr @_W_nextlit, align 4, !tbaa !8
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8, !tbaa !3
  %12 = load i32, ptr %4, align 4, !tbaa !8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [20 x %struct._W_litstruct], ptr @_W_lits, i64 0, i64 %13
  %15 = getelementptr inbounds nuw %struct._W_litstruct, ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds [16 x i8], ptr %15, i64 0, i64 0
  %17 = call signext i32 @S_wordcmp(ptr noundef %11, ptr noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %10
  %20 = load i32, ptr %4, align 4, !tbaa !8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [20 x %struct._W_litstruct], ptr @_W_lits, i64 0, i64 %21
  call void @_W_copylit(ptr noundef @lit_scratch, ptr noundef %22)
  store ptr @lit_scratch, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %28

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %4, align 4, !tbaa !8
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %4, align 4, !tbaa !8
  br label %6, !llvm.loop !17

27:                                               ; preds = %6
  store ptr null, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %28

28:                                               ; preds = %27, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #3
  %29 = load ptr, ptr %2, align 8
  ret ptr %29
}

; Function Attrs: nounwind
define internal void @_W_copylit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !15
  store ptr %1, ptr %4, align 8, !tbaa !15
  %5 = load ptr, ptr %3, align 8, !tbaa !15
  %6 = getelementptr inbounds nuw %struct._W_litstruct, ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds [16 x i8], ptr %6, i64 0, i64 0
  %8 = load ptr, ptr %4, align 8, !tbaa !15
  %9 = getelementptr inbounds nuw %struct._W_litstruct, ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 0
  %11 = call ptr @strcpy(ptr noundef %7, ptr noundef %10) #3
  %12 = load ptr, ptr %3, align 8, !tbaa !15
  %13 = getelementptr inbounds nuw %struct._W_litstruct, ptr %12, i32 0, i32 1
  %14 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0
  %15 = load ptr, ptr %4, align 8, !tbaa !15
  %16 = getelementptr inbounds nuw %struct._W_litstruct, ptr %15, i32 0, i32 1
  %17 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 0
  %18 = call ptr @strcpy(ptr noundef %14, ptr noundef %17) #3
  %19 = load ptr, ptr %3, align 8, !tbaa !15
  %20 = getelementptr inbounds nuw %struct._W_litstruct, ptr %19, i32 0, i32 2
  %21 = getelementptr inbounds [16 x i8], ptr %20, i64 0, i64 0
  %22 = load ptr, ptr %4, align 8, !tbaa !15
  %23 = getelementptr inbounds nuw %struct._W_litstruct, ptr %22, i32 0, i32 2
  %24 = getelementptr inbounds [16 x i8], ptr %23, i64 0, i64 0
  %25 = call ptr @strcpy(ptr noundef %21, ptr noundef %24) #3
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @W_is_lit(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #3
  store i32 0, ptr %4, align 4, !tbaa !8
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i32, ptr %4, align 4, !tbaa !8
  %8 = load i32, ptr @_W_nextlit, align 4, !tbaa !8
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8, !tbaa !15
  %12 = getelementptr inbounds nuw %struct._W_litstruct, ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 0
  %14 = load i32, ptr %4, align 4, !tbaa !8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [20 x %struct._W_litstruct], ptr @_W_lits, i64 0, i64 %15
  %17 = getelementptr inbounds nuw %struct._W_litstruct, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds [16 x i8], ptr %17, i64 0, i64 0
  %19 = call signext i32 @S_wordcmp(ptr noundef %13, ptr noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %10
  %22 = load ptr, ptr %3, align 8, !tbaa !15
  %23 = getelementptr inbounds nuw %struct._W_litstruct, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds [16 x i8], ptr %23, i64 0, i64 0
  %25 = load i32, ptr %4, align 4, !tbaa !8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [20 x %struct._W_litstruct], ptr @_W_lits, i64 0, i64 %26
  %28 = getelementptr inbounds nuw %struct._W_litstruct, ptr %27, i32 0, i32 1
  %29 = getelementptr inbounds [16 x i8], ptr %28, i64 0, i64 0
  %30 = call signext i32 @S_wordcmp(ptr noundef %24, ptr noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %21
  %33 = load ptr, ptr %3, align 8, !tbaa !15
  %34 = getelementptr inbounds nuw %struct._W_litstruct, ptr %33, i32 0, i32 2
  %35 = getelementptr inbounds [16 x i8], ptr %34, i64 0, i64 0
  %36 = load i32, ptr %4, align 4, !tbaa !8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [20 x %struct._W_litstruct], ptr @_W_lits, i64 0, i64 %37
  %39 = getelementptr inbounds nuw %struct._W_litstruct, ptr %38, i32 0, i32 2
  %40 = getelementptr inbounds [16 x i8], ptr %39, i64 0, i64 0
  %41 = call signext i32 @S_wordcmp(ptr noundef %35, ptr noundef %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  store i32 1, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %49

44:                                               ; preds = %32, %21, %10
  br label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %4, align 4, !tbaa !8
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %4, align 4, !tbaa !8
  br label %6, !llvm.loop !18

48:                                               ; preds = %6
  store i32 0, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %49

49:                                               ; preds = %48, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #3
  %50 = load i32, ptr %2, align 4
  ret i32 %50
}

; Function Attrs: nounwind
define dso_local ptr @W_iscom(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #3
  store i32 0, ptr %4, align 4, !tbaa !8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, ptr %4, align 4, !tbaa !8
  %8 = load i32, ptr @_W_nextcom, align 4, !tbaa !8
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8, !tbaa !3
  %12 = load i32, ptr %4, align 4, !tbaa !8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %13
  %15 = getelementptr inbounds nuw %struct._W_comstruct, ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds [16 x i8], ptr %15, i64 0, i64 0
  %17 = call signext i32 @S_wordcmp(ptr noundef %11, ptr noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %10
  %20 = load i32, ptr %4, align 4, !tbaa !8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %21
  call void @_W_copycom(ptr noundef @com_scratch, ptr noundef %22)
  store ptr @com_scratch, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %28

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %4, align 4, !tbaa !8
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %4, align 4, !tbaa !8
  br label %6, !llvm.loop !19

27:                                               ; preds = %6
  store ptr null, ptr %2, align 8
  store i32 1, ptr %5, align 4
  br label %28

28:                                               ; preds = %27, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #3
  %29 = load ptr, ptr %2, align 8
  ret ptr %29
}

; Function Attrs: nounwind
define internal void @_W_copycom(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !15
  store ptr %1, ptr %4, align 8, !tbaa !15
  %5 = load ptr, ptr %3, align 8, !tbaa !15
  %6 = getelementptr inbounds nuw %struct._W_comstruct, ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds [16 x i8], ptr %6, i64 0, i64 0
  %8 = load ptr, ptr %4, align 8, !tbaa !15
  %9 = getelementptr inbounds nuw %struct._W_comstruct, ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 0
  %11 = call ptr @strcpy(ptr noundef %7, ptr noundef %10) #3
  %12 = load ptr, ptr %3, align 8, !tbaa !15
  %13 = getelementptr inbounds nuw %struct._W_comstruct, ptr %12, i32 0, i32 1
  %14 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0
  %15 = load ptr, ptr %4, align 8, !tbaa !15
  %16 = getelementptr inbounds nuw %struct._W_comstruct, ptr %15, i32 0, i32 1
  %17 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 0
  %18 = call ptr @strcpy(ptr noundef %14, ptr noundef %17) #3
  %19 = load ptr, ptr %3, align 8, !tbaa !15
  %20 = getelementptr inbounds nuw %struct._W_comstruct, ptr %19, i32 0, i32 2
  %21 = getelementptr inbounds [16 x i8], ptr %20, i64 0, i64 0
  %22 = load ptr, ptr %4, align 8, !tbaa !15
  %23 = getelementptr inbounds nuw %struct._W_comstruct, ptr %22, i32 0, i32 2
  %24 = getelementptr inbounds [16 x i8], ptr %23, i64 0, i64 0
  %25 = call ptr @strcpy(ptr noundef %21, ptr noundef %24) #3
  %26 = load ptr, ptr %4, align 8, !tbaa !15
  %27 = getelementptr inbounds nuw %struct._W_comstruct, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !11
  %29 = load ptr, ptr %3, align 8, !tbaa !15
  %30 = getelementptr inbounds nuw %struct._W_comstruct, ptr %29, i32 0, i32 3
  store i32 %28, ptr %30, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @W_is_com(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #3
  store i32 0, ptr %4, align 4, !tbaa !8
  br label %6

6:                                                ; preds = %55, %1
  %7 = load i32, ptr %4, align 4, !tbaa !8
  %8 = load i32, ptr @_W_nextcom, align 4, !tbaa !8
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %58

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8, !tbaa !15
  %12 = getelementptr inbounds nuw %struct._W_comstruct, ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 0
  %14 = load i32, ptr %4, align 4, !tbaa !8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %15
  %17 = getelementptr inbounds nuw %struct._W_comstruct, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds [16 x i8], ptr %17, i64 0, i64 0
  %19 = call signext i32 @S_wordcmp(ptr noundef %13, ptr noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %10
  %22 = load ptr, ptr %3, align 8, !tbaa !15
  %23 = getelementptr inbounds nuw %struct._W_comstruct, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds [16 x i8], ptr %23, i64 0, i64 0
  %25 = load i32, ptr %4, align 4, !tbaa !8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %26
  %28 = getelementptr inbounds nuw %struct._W_comstruct, ptr %27, i32 0, i32 1
  %29 = getelementptr inbounds [16 x i8], ptr %28, i64 0, i64 0
  %30 = call signext i32 @S_wordcmp(ptr noundef %24, ptr noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %21
  %33 = load ptr, ptr %3, align 8, !tbaa !15
  %34 = getelementptr inbounds nuw %struct._W_comstruct, ptr %33, i32 0, i32 2
  %35 = getelementptr inbounds [16 x i8], ptr %34, i64 0, i64 0
  %36 = load i32, ptr %4, align 4, !tbaa !8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %37
  %39 = getelementptr inbounds nuw %struct._W_comstruct, ptr %38, i32 0, i32 2
  %40 = getelementptr inbounds [16 x i8], ptr %39, i64 0, i64 0
  %41 = call signext i32 @S_wordcmp(ptr noundef %35, ptr noundef %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %32
  %44 = load ptr, ptr %3, align 8, !tbaa !15
  %45 = getelementptr inbounds nuw %struct._W_comstruct, ptr %44, i32 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !11
  %47 = load i32, ptr %4, align 4, !tbaa !8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %48
  %50 = getelementptr inbounds nuw %struct._W_comstruct, ptr %49, i32 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !11
  %52 = icmp eq i32 %46, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 1, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %59

54:                                               ; preds = %43, %32, %21, %10
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %4, align 4, !tbaa !8
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %4, align 4, !tbaa !8
  br label %6, !llvm.loop !20

58:                                               ; preds = %6
  store i32 0, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %59

59:                                               ; preds = %58, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #3
  %60 = load i32, ptr %2, align 4
  ret i32 %60
}

; Function Attrs: nounwind
define dso_local signext i32 @W_is_nesting(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !15
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  %4 = getelementptr inbounds nuw %struct._W_comstruct, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !11
  ret i32 %5
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 omnipotent char", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !9, i64 48}
!12 = !{!"", !6, i64 0, !6, i64 16, !6, i64 32, !9, i64 48}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!5, !5, i64 0}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
