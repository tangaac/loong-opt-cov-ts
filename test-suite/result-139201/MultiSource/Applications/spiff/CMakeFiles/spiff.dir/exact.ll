; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/exact.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/exact.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.edt = type { ptr, i32, i32, i32 }

@Z_err_buf = external global [0 x i8], align 1
@.str = private unnamed_addr constant [50 x i8] c"unequal number of tokens, %d and %d respectively\0A\00", align 1

; Function Attrs: nounwind
define dso_local ptr @Q_do_exact(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4, !tbaa !3
  store i32 %1, ptr %6, align 4, !tbaa !3
  store i32 %2, ptr %7, align 4, !tbaa !3
  store i32 %3, ptr %8, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #3
  store i32 0, ptr %9, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #3
  store i32 0, ptr %10, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #3
  %17 = load i32, ptr %5, align 4, !tbaa !3
  %18 = load i32, ptr %6, align 4, !tbaa !3
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, ptr %5, align 4, !tbaa !3
  br label %24

22:                                               ; preds = %4
  %23 = load i32, ptr %6, align 4, !tbaa !3
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, ptr %11, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #3
  store i32 0, ptr %12, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #3
  store ptr null, ptr %13, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #3
  %26 = load i32, ptr %7, align 4, !tbaa !3
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = call ptr @_Z_myalloc(i64 noundef %29)
  store ptr %30, ptr %16, align 8, !tbaa !10
  %31 = load i32, ptr %5, align 4, !tbaa !3
  %32 = load i32, ptr %6, align 4, !tbaa !3
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, ptr %5, align 4, !tbaa !3
  %36 = load i32, ptr %6, align 4, !tbaa !3
  %37 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str, i32 noundef signext %35, i32 noundef signext %36) #3
  call void @Z_complain(ptr noundef @Z_err_buf)
  br label %38

38:                                               ; preds = %34, %24
  br label %39

39:                                               ; preds = %181, %38
  br label %40

40:                                               ; preds = %53, %39
  %41 = load i32, ptr %9, align 4, !tbaa !3
  %42 = load i32, ptr %11, align 4, !tbaa !3
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, ptr %9, align 4, !tbaa !3
  %46 = load i32, ptr %9, align 4, !tbaa !3
  %47 = load i32, ptr %8, align 4, !tbaa !3
  %48 = call signext i32 @X_com(i32 noundef signext %45, i32 noundef signext %46, i32 noundef signext %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %44, %40
  %52 = phi i1 [ false, %40 ], [ %50, %44 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i32, ptr %9, align 4, !tbaa !3
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %9, align 4, !tbaa !3
  br label %40, !llvm.loop !13

56:                                               ; preds = %51
  %57 = load i32, ptr %9, align 4, !tbaa !3
  store i32 %57, ptr %14, align 4, !tbaa !3
  br label %58

58:                                               ; preds = %78, %56
  %59 = load i32, ptr %9, align 4, !tbaa !3
  %60 = load i32, ptr %11, align 4, !tbaa !3
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, ptr %9, align 4, !tbaa !3
  %64 = load i32, ptr %9, align 4, !tbaa !3
  %65 = load i32, ptr %8, align 4, !tbaa !3
  %66 = call signext i32 @X_com(i32 noundef signext %63, i32 noundef signext %64, i32 noundef signext %65)
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %62, %58
  %69 = phi i1 [ false, %58 ], [ %67, %62 ]
  br i1 %69, label %70, label %81

70:                                               ; preds = %68
  %71 = load i32, ptr %10, align 4, !tbaa !3
  %72 = add nsw i32 %71, 2
  store i32 %72, ptr %10, align 4, !tbaa !3
  %73 = load i32, ptr %7, align 4, !tbaa !3
  %74 = add nsw i32 %73, 1
  %75 = icmp sge i32 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, ptr %7, align 4, !tbaa !3
  call void @Z_exceed(i32 noundef signext %77)
  br label %78

78:                                               ; preds = %76, %70
  %79 = load i32, ptr %9, align 4, !tbaa !3
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %9, align 4, !tbaa !3
  br label %58, !llvm.loop !15

81:                                               ; preds = %68
  %82 = load i32, ptr %14, align 4, !tbaa !3
  store i32 %82, ptr %15, align 4, !tbaa !3
  br label %83

83:                                               ; preds = %125, %81
  %84 = load i32, ptr %15, align 4, !tbaa !3
  %85 = load i32, ptr %9, align 4, !tbaa !3
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %130

87:                                               ; preds = %83
  %88 = call ptr @_Z_myalloc(i64 noundef 24)
  %89 = load ptr, ptr %16, align 8, !tbaa !10
  %90 = load i32, ptr %12, align 4, !tbaa !3
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %89, i64 %91
  store ptr %88, ptr %92, align 8, !tbaa !7
  %93 = load ptr, ptr %13, align 8, !tbaa !7
  %94 = load ptr, ptr %16, align 8, !tbaa !10
  %95 = load i32, ptr %12, align 4, !tbaa !3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %94, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !7
  %99 = getelementptr inbounds nuw %struct.edt, ptr %98, i32 0, i32 0
  store ptr %93, ptr %99, align 8, !tbaa !16
  %100 = load ptr, ptr %16, align 8, !tbaa !10
  %101 = load i32, ptr %12, align 4, !tbaa !3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds ptr, ptr %100, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !7
  store ptr %104, ptr %13, align 8, !tbaa !7
  %105 = load ptr, ptr %16, align 8, !tbaa !10
  %106 = load i32, ptr %12, align 4, !tbaa !3
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !7
  %110 = getelementptr inbounds nuw %struct.edt, ptr %109, i32 0, i32 1
  store i32 2, ptr %110, align 8, !tbaa !18
  %111 = load i32, ptr %15, align 4, !tbaa !3
  %112 = add nsw i32 %111, 1
  %113 = load ptr, ptr %16, align 8, !tbaa !10
  %114 = load i32, ptr %12, align 4, !tbaa !3
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds ptr, ptr %113, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !7
  %118 = getelementptr inbounds nuw %struct.edt, ptr %117, i32 0, i32 2
  store i32 %112, ptr %118, align 4, !tbaa !19
  %119 = load ptr, ptr %16, align 8, !tbaa !10
  %120 = load i32, ptr %12, align 4, !tbaa !3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %119, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !7
  %124 = getelementptr inbounds nuw %struct.edt, ptr %123, i32 0, i32 3
  store i32 0, ptr %124, align 8, !tbaa !20
  br label %125

125:                                              ; preds = %87
  %126 = load i32, ptr %15, align 4, !tbaa !3
  %127 = add nsw i32 %126, 1
  store i32 %127, ptr %15, align 4, !tbaa !3
  %128 = load i32, ptr %12, align 4, !tbaa !3
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %12, align 4, !tbaa !3
  br label %83, !llvm.loop !21

130:                                              ; preds = %83
  %131 = load i32, ptr %14, align 4, !tbaa !3
  store i32 %131, ptr %15, align 4, !tbaa !3
  br label %132

132:                                              ; preds = %175, %130
  %133 = load i32, ptr %15, align 4, !tbaa !3
  %134 = load i32, ptr %9, align 4, !tbaa !3
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %180

136:                                              ; preds = %132
  %137 = call ptr @_Z_myalloc(i64 noundef 24)
  %138 = load ptr, ptr %16, align 8, !tbaa !10
  %139 = load i32, ptr %12, align 4, !tbaa !3
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %138, i64 %140
  store ptr %137, ptr %141, align 8, !tbaa !7
  %142 = load ptr, ptr %13, align 8, !tbaa !7
  %143 = load ptr, ptr %16, align 8, !tbaa !10
  %144 = load i32, ptr %12, align 4, !tbaa !3
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %143, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !7
  %148 = getelementptr inbounds nuw %struct.edt, ptr %147, i32 0, i32 0
  store ptr %142, ptr %148, align 8, !tbaa !16
  %149 = load ptr, ptr %16, align 8, !tbaa !10
  %150 = load i32, ptr %12, align 4, !tbaa !3
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds ptr, ptr %149, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !7
  store ptr %153, ptr %13, align 8, !tbaa !7
  %154 = load ptr, ptr %16, align 8, !tbaa !10
  %155 = load i32, ptr %12, align 4, !tbaa !3
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds ptr, ptr %154, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !7
  %159 = getelementptr inbounds nuw %struct.edt, ptr %158, i32 0, i32 1
  store i32 1, ptr %159, align 8, !tbaa !18
  %160 = load i32, ptr %9, align 4, !tbaa !3
  %161 = load ptr, ptr %16, align 8, !tbaa !10
  %162 = load i32, ptr %12, align 4, !tbaa !3
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %161, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !7
  %166 = getelementptr inbounds nuw %struct.edt, ptr %165, i32 0, i32 2
  store i32 %160, ptr %166, align 4, !tbaa !19
  %167 = load i32, ptr %15, align 4, !tbaa !3
  %168 = add nsw i32 %167, 1
  %169 = load ptr, ptr %16, align 8, !tbaa !10
  %170 = load i32, ptr %12, align 4, !tbaa !3
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds ptr, ptr %169, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !7
  %174 = getelementptr inbounds nuw %struct.edt, ptr %173, i32 0, i32 3
  store i32 %168, ptr %174, align 8, !tbaa !20
  br label %175

175:                                              ; preds = %136
  %176 = load i32, ptr %15, align 4, !tbaa !3
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %15, align 4, !tbaa !3
  %178 = load i32, ptr %12, align 4, !tbaa !3
  %179 = add nsw i32 %178, 1
  store i32 %179, ptr %12, align 4, !tbaa !3
  br label %132, !llvm.loop !22

180:                                              ; preds = %132
  br label %181

181:                                              ; preds = %180
  %182 = load i32, ptr %9, align 4, !tbaa !3
  %183 = load i32, ptr %11, align 4, !tbaa !3
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %39, label %185, !llvm.loop !23

185:                                              ; preds = %181
  %186 = load ptr, ptr %13, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #3
  ret ptr %186
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare ptr @_Z_myalloc(...) #2

; Function Attrs: nounwind
declare signext i32 @sprintf(ptr noundef, ptr noundef, ...) #0

declare void @Z_complain(...) #2

declare signext i32 @X_com(...) #2

declare void @Z_exceed(...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTS3edt", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p2 _ZTS3edt", !12, i64 0}
!12 = !{!"any p2 pointer", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17, !8, i64 0}
!17 = !{!"edt", !8, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!18 = !{!17, !4, i64 8}
!19 = !{!17, !4, i64 12}
!20 = !{!17, !4, i64 16}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
