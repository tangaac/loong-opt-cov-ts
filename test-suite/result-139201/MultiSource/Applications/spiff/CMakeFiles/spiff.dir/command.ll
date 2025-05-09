; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/command.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/command.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

@_C_cmds = internal global [100 x ptr] zeroinitializer, align 8
@_C_nextcmd = internal global i32 0, align 4
@_C_cmdword = internal global [20 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"command word is too long\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tol\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nestcom\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"resetcomments\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"resetliterals\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"beginchar\00", align 1
@_W_bolchar = external global i8, align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"endchar\00", align 1
@_W_eolchar = external global i8, align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"addalpha\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"rem\00", align 1
@Z_err_buf = external global [0 x i8], align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"don't understand command %s\0A\00", align 1

; Function Attrs: nounwind
define dso_local void @C_addcmd(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load i32, ptr @_C_nextcmd, align 4, !tbaa !8
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr @_C_nextcmd, align 4, !tbaa !8
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [100 x ptr], ptr @_C_cmds, i64 0, i64 %5
  %7 = load ptr, ptr %2, align 8, !tbaa !3
  call void @S_savestr(ptr noundef %6, ptr noundef %7)
  ret void
}

declare void @S_savestr(...) #1

; Function Attrs: nounwind
define dso_local void @C_docmds() #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #4
  store i32 0, ptr %1, align 4, !tbaa !8
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, ptr %1, align 4, !tbaa !8
  %4 = load i32, ptr @_C_nextcmd, align 4, !tbaa !8
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 4, !tbaa !8
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [100 x ptr], ptr @_C_cmds, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !3
  call void @_C_do_a_cmd(ptr noundef %10)
  br label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %1, align 4, !tbaa !8
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %1, align 4, !tbaa !8
  br label %2, !llvm.loop !10

14:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind
define internal void @_C_do_a_cmd(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #4
  %4 = load ptr, ptr %2, align 8, !tbaa !3
  store ptr %4, ptr %3, align 8, !tbaa !3
  call void @S_skipspace(ptr noundef %2)
  %5 = load ptr, ptr %2, align 8, !tbaa !3
  %6 = call signext i32 @S_wordcmp(ptr noundef %5, ptr noundef @.str)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  call void @S_nextword(ptr noundef %2)
  %9 = load ptr, ptr %2, align 8, !tbaa !3
  %10 = call i64 @strlen(ptr noundef %9) #5
  %11 = icmp uge i64 %10, 20
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @Z_fatal(ptr noundef @.str.1)
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr %2, align 8, !tbaa !3
  call void @S_wordcpy(ptr noundef @_C_cmdword, ptr noundef %14)
  br label %111

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8, !tbaa !3
  %17 = call signext i32 @S_wordcmp(ptr noundef %16, ptr noundef @.str.2)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  call void @S_nextword(ptr noundef %2)
  %20 = load ptr, ptr %2, align 8, !tbaa !3
  call void @T_tolline(ptr noundef %20)
  br label %110

21:                                               ; preds = %15
  %22 = load ptr, ptr %2, align 8, !tbaa !3
  %23 = call signext i32 @S_wordcmp(ptr noundef %22, ptr noundef @.str.3)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  call void @S_nextword(ptr noundef %2)
  %26 = load ptr, ptr %2, align 8, !tbaa !3
  %27 = call i64 @strlen(ptr noundef %26) #5
  %28 = icmp uge i64 %27, 20
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @Z_fatal(ptr noundef @.str.1)
  br label %30

30:                                               ; preds = %29, %25
  %31 = load ptr, ptr %2, align 8, !tbaa !3
  call void @W_addcom(ptr noundef %31, i32 noundef signext 0)
  br label %109

32:                                               ; preds = %21
  %33 = load ptr, ptr %2, align 8, !tbaa !3
  %34 = call signext i32 @S_wordcmp(ptr noundef %33, ptr noundef @.str.4)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  call void @S_nextword(ptr noundef %2)
  %37 = load ptr, ptr %2, align 8, !tbaa !3
  %38 = call i64 @strlen(ptr noundef %37) #5
  %39 = icmp uge i64 %38, 20
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @Z_fatal(ptr noundef @.str.1)
  br label %41

41:                                               ; preds = %40, %36
  %42 = load ptr, ptr %2, align 8, !tbaa !3
  call void @W_addcom(ptr noundef %42, i32 noundef signext 1)
  br label %108

43:                                               ; preds = %32
  %44 = load ptr, ptr %2, align 8, !tbaa !3
  %45 = call signext i32 @S_wordcmp(ptr noundef %44, ptr noundef @.str.5)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  call void @S_nextword(ptr noundef %2)
  %48 = load ptr, ptr %2, align 8, !tbaa !3
  %49 = call i64 @strlen(ptr noundef %48) #5
  %50 = icmp uge i64 %49, 20
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call void @Z_fatal(ptr noundef @.str.1)
  br label %52

52:                                               ; preds = %51, %47
  %53 = load ptr, ptr %2, align 8, !tbaa !3
  call void @W_addlit(ptr noundef %53)
  br label %107

54:                                               ; preds = %43
  %55 = load ptr, ptr %2, align 8, !tbaa !3
  %56 = call signext i32 @S_wordcmp(ptr noundef %55, ptr noundef @.str.6)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  call void @W_clearcoms()
  br label %106

59:                                               ; preds = %54
  %60 = load ptr, ptr %2, align 8, !tbaa !3
  %61 = call signext i32 @S_wordcmp(ptr noundef %60, ptr noundef @.str.7)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  call void @W_clearlits()
  br label %105

64:                                               ; preds = %59
  %65 = load ptr, ptr %2, align 8, !tbaa !3
  %66 = call signext i32 @S_wordcmp(ptr noundef %65, ptr noundef @.str.8)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  call void @S_nextword(ptr noundef %2)
  %69 = load ptr, ptr %2, align 8, !tbaa !3
  %70 = load i8, ptr %69, align 1, !tbaa !12
  store i8 %70, ptr @_W_bolchar, align 1, !tbaa !12
  br label %104

71:                                               ; preds = %64
  %72 = load ptr, ptr %2, align 8, !tbaa !3
  %73 = call signext i32 @S_wordcmp(ptr noundef %72, ptr noundef @.str.9)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  call void @S_nextword(ptr noundef %2)
  %76 = load ptr, ptr %2, align 8, !tbaa !3
  %77 = load i8, ptr %76, align 1, !tbaa !12
  store i8 %77, ptr @_W_eolchar, align 1, !tbaa !12
  br label %103

78:                                               ; preds = %71
  %79 = load ptr, ptr %2, align 8, !tbaa !3
  %80 = call signext i32 @S_wordcmp(ptr noundef %79, ptr noundef @.str.10)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  call void @S_nextword(ptr noundef %2)
  %83 = load ptr, ptr %2, align 8, !tbaa !3
  call void @P_addalpha(ptr noundef %83)
  br label %102

84:                                               ; preds = %78
  %85 = load ptr, ptr %2, align 8, !tbaa !3
  %86 = call i64 @strlen(ptr noundef %85) #5
  %87 = icmp eq i64 0, %86
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %2, align 8, !tbaa !3
  %90 = call signext i32 @S_wordcmp(ptr noundef %89, ptr noundef @.str.11)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load ptr, ptr %2, align 8, !tbaa !3
  %94 = load i8, ptr %93, align 1, !tbaa !12
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 35, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %88, %84
  br label %101

98:                                               ; preds = %92
  %99 = load ptr, ptr %3, align 8, !tbaa !3
  %100 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.12, ptr noundef %99) #4
  call void @Z_fatal(ptr noundef @Z_err_buf)
  br label %101

101:                                              ; preds = %98, %97
  br label %102

102:                                              ; preds = %101, %82
  br label %103

103:                                              ; preds = %102, %75
  br label %104

104:                                              ; preds = %103, %68
  br label %105

105:                                              ; preds = %104, %63
  br label %106

106:                                              ; preds = %105, %58
  br label %107

107:                                              ; preds = %106, %52
  br label %108

108:                                              ; preds = %107, %41
  br label %109

109:                                              ; preds = %108, %30
  br label %110

110:                                              ; preds = %109, %19
  br label %111

111:                                              ; preds = %110, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind
define dso_local void @C_clear_cmd() #0 {
  store i8 0, ptr @_C_cmdword, align 1, !tbaa !12
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @C_is_cmd(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #4
  %6 = load i8, ptr @_C_cmdword, align 1, !tbaa !12
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 0, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !tbaa !3
  %11 = call signext i32 @S_wordcmp(ptr noundef %10, ptr noundef @_C_cmdword)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 8, !tbaa !3
  store ptr %14, ptr %4, align 8, !tbaa !3
  call void @S_nextword(ptr noundef %4)
  %15 = load ptr, ptr %4, align 8, !tbaa !3
  call void @_C_do_a_cmd(ptr noundef %15)
  store i32 1, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %17

16:                                               ; preds = %9, %1
  store i32 0, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %17

17:                                               ; preds = %16, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #4
  %18 = load i32, ptr %2, align 4
  ret i32 %18
}

declare signext i32 @S_wordcmp(...) #1

declare void @S_nextword(...) #1

declare void @S_skipspace(...) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare void @Z_fatal(...) #1

declare void @S_wordcpy(...) #1

declare void @T_tolline(...) #1

declare void @W_addcom(...) #1

declare void @W_addlit(...) #1

declare void @W_clearcoms(...) #1

declare void @W_clearlits(...) #1

declare void @P_addalpha(...) #1

; Function Attrs: nounwind
declare signext i32 @sprintf(ptr noundef, ptr noundef, ...) #0

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!6, !6, i64 0}
