; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/line.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/line.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

@L_init_file.buf = internal global [1026 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@Z_err_buf = external global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot open file %s.\0A\00", align 1
@_L_brlm = dso_local global i32 0, align 4
@_L_arlm = dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"fatal error -- got 0 length line %d in file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"got fatally long line %d in file %s length is %d, must be a bug\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"line %d too long in file %s, newline added after %d characters\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"didn't find a newline at end of line %d in file %s, added one\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"warning -- ran out of space reading %s, truncated to %d lines\0A\00", align 1
@_L_bclm = dso_local global i32 0, align 4
@_L_aclm = dso_local global i32 0, align 4
@_L_btlm = dso_local global i32 0, align 4
@_L_atlm = dso_local global i32 0, align 4
@_L_al = dso_local global [10000 x ptr] zeroinitializer, align 8
@_L_bl = dso_local global [10000 x ptr] zeroinitializer, align 8
@_L_ai = dso_local global [10000 x i32] zeroinitializer, align 4
@_L_bi = dso_local global [10000 x i32] zeroinitializer, align 4
@_L_ac = dso_local global [10000 x i32] zeroinitializer, align 4
@_L_bc = dso_local global [10000 x i32] zeroinitializer, align 4
@_L_aclindex = dso_local global [10000 x i32] zeroinitializer, align 4
@_L_bclindex = dso_local global [10000 x i32] zeroinitializer, align 4
@_L_atlindex = dso_local global [10000 x i32] zeroinitializer, align 4
@_L_btlindex = dso_local global [10000 x i32] zeroinitializer, align 4

; Function Attrs: nounwind
define dso_local signext i32 @L_init_file(i32 noundef signext %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #4
  store i32 1, ptr %6, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #4
  %8 = load ptr, ptr %4, align 8, !tbaa !7
  %9 = call noalias ptr @fopen(ptr noundef %8, ptr noundef @.str)
  store ptr %9, ptr %5, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !tbaa !7
  %13 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.1, ptr noundef %12) #4
  call void @Z_fatal(ptr noundef @Z_err_buf)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, ptr %3, align 4, !tbaa !3
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, ptr @_L_brlm, align 4, !tbaa !3
  br label %19

18:                                               ; preds = %14
  store i32 0, ptr @_L_arlm, align 4, !tbaa !3
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi i32 [ 0, %17 ], [ 0, %18 ]
  br label %21

21:                                               ; preds = %135, %19
  %22 = load ptr, ptr %5, align 8, !tbaa !10
  %23 = call ptr @fgets(ptr noundef @L_init_file.buf, i32 noundef signext 1025, ptr noundef %22)
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %136

25:                                               ; preds = %21
  %26 = call i64 @strlen(ptr noundef @L_init_file.buf) #5
  %27 = trunc i64 %26 to i32
  store i32 %27, ptr %7, align 4, !tbaa !3
  %28 = load i32, ptr %7, align 4, !tbaa !3
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, ptr %3, align 4, !tbaa !3
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, ptr @_L_brlm, align 4, !tbaa !3
  br label %37

35:                                               ; preds = %30
  %36 = load i32, ptr @_L_arlm, align 4, !tbaa !3
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = add nsw i32 %38, 1
  %40 = load ptr, ptr %4, align 8, !tbaa !7
  %41 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.2, i32 noundef signext %39, ptr noundef %40) #4
  call void @Z_fatal(ptr noundef @Z_err_buf)
  br label %59

42:                                               ; preds = %25
  %43 = load i32, ptr %7, align 4, !tbaa !3
  %44 = icmp sgt i32 %43, 1024
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i32, ptr %3, align 4, !tbaa !3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, ptr @_L_brlm, align 4, !tbaa !3
  br label %52

50:                                               ; preds = %45
  %51 = load i32, ptr @_L_arlm, align 4, !tbaa !3
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = add nsw i32 %53, 1
  %55 = load ptr, ptr %4, align 8, !tbaa !7
  %56 = load i32, ptr %7, align 4, !tbaa !3
  %57 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.3, i32 noundef signext %54, ptr noundef %55, i32 noundef signext %56) #4
  call void @Z_fatal(ptr noundef @Z_err_buf)
  br label %58

58:                                               ; preds = %52, %42
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i32, ptr %7, align 4, !tbaa !3
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [1026 x i8], ptr @L_init_file.buf, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !12
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 10, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %59
  %68 = load i32, ptr %7, align 4, !tbaa !3
  %69 = icmp eq i32 %68, 1024
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32, ptr %3, align 4, !tbaa !3
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, ptr @_L_brlm, align 4, !tbaa !3
  br label %77

75:                                               ; preds = %70
  %76 = load i32, ptr @_L_arlm, align 4, !tbaa !3
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = add nsw i32 %78, 1
  %80 = load ptr, ptr %4, align 8, !tbaa !7
  %81 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.4, i32 noundef signext %79, ptr noundef %80, i32 noundef signext 1024) #4
  call void @Z_complain(ptr noundef @Z_err_buf)
  br label %94

82:                                               ; preds = %67
  %83 = load i32, ptr %3, align 4, !tbaa !3
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, ptr @_L_brlm, align 4, !tbaa !3
  br label %89

87:                                               ; preds = %82
  %88 = load i32, ptr @_L_arlm, align 4, !tbaa !3
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = add nsw i32 %90, 1
  %92 = load ptr, ptr %4, align 8, !tbaa !7
  %93 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.5, i32 noundef signext %91, ptr noundef %92) #4
  call void @Z_complain(ptr noundef @Z_err_buf)
  br label %94

94:                                               ; preds = %89, %77
  %95 = load i32, ptr %7, align 4, !tbaa !3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1026 x i8], ptr @L_init_file.buf, i64 0, i64 %96
  store i8 10, ptr %97, align 1, !tbaa !12
  %98 = load i32, ptr %7, align 4, !tbaa !3
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [1026 x i8], ptr @L_init_file.buf, i64 0, i64 %100
  store i8 0, ptr %101, align 1, !tbaa !12
  br label %102

102:                                              ; preds = %94, %59
  %103 = load i32, ptr %3, align 4, !tbaa !3
  %104 = load i32, ptr %3, align 4, !tbaa !3
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, ptr @_L_brlm, align 4, !tbaa !3
  br label %110

108:                                              ; preds = %102
  %109 = load i32, ptr @_L_arlm, align 4, !tbaa !3
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  call void @_L_setrline(i32 noundef signext %103, i32 noundef signext %111, ptr noundef @L_init_file.buf)
  %112 = load i32, ptr %3, align 4, !tbaa !3
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, ptr @_L_brlm, align 4, !tbaa !3
  br label %118

116:                                              ; preds = %110
  %117 = load i32, ptr @_L_arlm, align 4, !tbaa !3
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = icmp sge i32 %119, 9999
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load ptr, ptr %4, align 8, !tbaa !7
  %123 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str.6, ptr noundef %122, i32 noundef signext 10000) #4
  call void @Z_complain(ptr noundef @Z_err_buf)
  store i32 0, ptr %6, align 4, !tbaa !3
  br label %136

124:                                              ; preds = %118
  %125 = load i32, ptr %3, align 4, !tbaa !3
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, ptr @_L_brlm, align 4, !tbaa !3
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr @_L_brlm, align 4, !tbaa !3
  br label %133

130:                                              ; preds = %124
  %131 = load i32, ptr @_L_arlm, align 4, !tbaa !3
  %132 = add nsw i32 %131, 1
  store i32 %132, ptr @_L_arlm, align 4, !tbaa !3
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi i32 [ %128, %127 ], [ %131, %130 ]
  br label %135

135:                                              ; preds = %133
  br label %21, !llvm.loop !13

136:                                              ; preds = %121, %21
  %137 = load ptr, ptr %5, align 8, !tbaa !10
  %138 = call signext i32 @fclose(ptr noundef %137)
  %139 = load i32, ptr %3, align 4, !tbaa !3
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 0, ptr @_L_bclm, align 4, !tbaa !3
  br label %143

142:                                              ; preds = %136
  store i32 0, ptr @_L_aclm, align 4, !tbaa !3
  br label %143

143:                                              ; preds = %142, %141
  %144 = phi i32 [ 0, %141 ], [ 0, %142 ]
  %145 = load i32, ptr %3, align 4, !tbaa !3
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 0, ptr @_L_btlm, align 4, !tbaa !3
  br label %149

148:                                              ; preds = %143
  store i32 0, ptr @_L_atlm, align 4, !tbaa !3
  br label %149

149:                                              ; preds = %148, %147
  %150 = phi i32 [ 0, %147 ], [ 0, %148 ]
  %151 = load i32, ptr %6, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #4
  ret i32 %151
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare signext i32 @sprintf(ptr noundef, ptr noundef, ...) #0

declare void @Z_fatal(...) #2

declare ptr @fgets(ptr noundef, i32 noundef signext, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare void @Z_complain(...) #2

; Function Attrs: nounwind
define internal void @_L_setrline(i32 noundef signext %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store ptr %2, ptr %6, align 8, !tbaa !7
  %7 = load i32, ptr %4, align 4, !tbaa !3
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load i32, ptr %5, align 4, !tbaa !3
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [10000 x ptr], ptr @_L_bl, i64 0, i64 %11
  %13 = load ptr, ptr %6, align 8, !tbaa !7
  call void @S_savestr(ptr noundef %12, ptr noundef %13)
  br label %19

14:                                               ; preds = %3
  %15 = load i32, ptr %5, align 4, !tbaa !3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [10000 x ptr], ptr @_L_al, i64 0, i64 %16
  %18 = load ptr, ptr %6, align 8, !tbaa !7
  call void @S_savestr(ptr noundef %17, ptr noundef %18)
  br label %19

19:                                               ; preds = %14, %9
  ret void
}

declare signext i32 @fclose(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @S_savestr(...) #2

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!12 = !{!5, !5, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
