; ModuleID = './MultiSource/Applications/sgefa/CMakeFiles/sgefa.dir/sgefa.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/sgefa/sgefa.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.FULL = type { i32, i32, [1000 x ptr] }

; Function Attrs: nounwind
define dso_local signext i32 @sgefa(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #4
  %19 = load ptr, ptr %4, align 8, !tbaa !3
  %20 = getelementptr inbounds nuw %struct.FULL, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 8, !tbaa !10
  %22 = load ptr, ptr %4, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct.FULL, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !13
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %18, align 4
  br label %231

27:                                               ; preds = %2
  %28 = load ptr, ptr %4, align 8, !tbaa !3
  %29 = getelementptr inbounds nuw %struct.FULL, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8, !tbaa !10
  store i32 %30, ptr %12, align 4, !tbaa !14
  %31 = load i32, ptr %12, align 4, !tbaa !14
  %32 = sub nsw i32 %31, 1
  store i32 %32, ptr %10, align 4, !tbaa !14
  %33 = load ptr, ptr %4, align 8, !tbaa !3
  %34 = getelementptr inbounds nuw %struct.FULL, ptr %33, i32 0, i32 2
  %35 = getelementptr inbounds [1000 x ptr], ptr %34, i64 0, i64 0
  %36 = load ptr, ptr %35, align 8, !tbaa !15
  store ptr %36, ptr %14, align 8, !tbaa !15
  store i32 0, ptr %11, align 4, !tbaa !14
  %37 = load i32, ptr %12, align 4, !tbaa !14
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %220

40:                                               ; preds = %27
  store i32 0, ptr %8, align 4, !tbaa !14
  br label %41

41:                                               ; preds = %214, %40
  %42 = load i32, ptr %8, align 4, !tbaa !14
  %43 = load i32, ptr %10, align 4, !tbaa !14
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %219

45:                                               ; preds = %41
  %46 = load ptr, ptr %4, align 8, !tbaa !3
  %47 = getelementptr inbounds nuw %struct.FULL, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %8, align 4, !tbaa !14
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [1000 x ptr], ptr %47, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !15
  %52 = load i32, ptr %8, align 4, !tbaa !14
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, ptr %51, i64 %53
  store ptr %54, ptr %14, align 8, !tbaa !15
  %55 = load i32, ptr %12, align 4, !tbaa !14
  %56 = load i32, ptr %8, align 4, !tbaa !14
  %57 = sub nsw i32 %55, %56
  %58 = load ptr, ptr %14, align 8, !tbaa !15
  %59 = call signext i32 @isamax(i32 noundef signext %57, ptr noundef %58, i32 noundef signext 1)
  %60 = load i32, ptr %8, align 4, !tbaa !14
  %61 = add nsw i32 %59, %60
  store i32 %61, ptr %9, align 4, !tbaa !14
  %62 = load i32, ptr %9, align 4, !tbaa !14
  %63 = load ptr, ptr %5, align 8, !tbaa !8
  store i32 %62, ptr %63, align 4, !tbaa !14
  %64 = load ptr, ptr %4, align 8, !tbaa !3
  %65 = getelementptr inbounds nuw %struct.FULL, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %8, align 4, !tbaa !14
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1000 x ptr], ptr %65, i64 0, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !15
  %70 = load i32, ptr %9, align 4, !tbaa !14
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, ptr %69, i64 %71
  store ptr %72, ptr %15, align 8, !tbaa !15
  %73 = load ptr, ptr %15, align 8, !tbaa !15
  %74 = load float, ptr %73, align 4, !tbaa !17
  %75 = fpext float %74 to double
  %76 = fcmp oeq double %75, 0.000000e+00
  br i1 %76, label %77, label %79

77:                                               ; preds = %45
  %78 = load i32, ptr %8, align 4, !tbaa !14
  store i32 %78, ptr %11, align 4, !tbaa !14
  br label %214

79:                                               ; preds = %45
  %80 = load i32, ptr %9, align 4, !tbaa !14
  %81 = load i32, ptr %8, align 4, !tbaa !14
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load ptr, ptr %15, align 8, !tbaa !15
  %85 = load float, ptr %84, align 4, !tbaa !17
  store float %85, ptr %13, align 4, !tbaa !17
  %86 = load ptr, ptr %14, align 8, !tbaa !15
  %87 = load float, ptr %86, align 4, !tbaa !17
  %88 = load ptr, ptr %15, align 8, !tbaa !15
  store float %87, ptr %88, align 4, !tbaa !17
  %89 = load float, ptr %13, align 4, !tbaa !17
  %90 = load ptr, ptr %14, align 8, !tbaa !15
  store float %89, ptr %90, align 4, !tbaa !17
  br label %91

91:                                               ; preds = %83, %79
  %92 = load ptr, ptr %14, align 8, !tbaa !15
  %93 = load float, ptr %92, align 4, !tbaa !17
  %94 = fpext float %93 to double
  %95 = fdiv double -1.000000e+00, %94
  %96 = fptrunc double %95 to float
  store float %96, ptr %13, align 4, !tbaa !17
  %97 = load i32, ptr %8, align 4, !tbaa !14
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %6, align 4, !tbaa !14
  %99 = load ptr, ptr %14, align 8, !tbaa !15
  %100 = getelementptr inbounds float, ptr %99, i64 1
  store ptr %100, ptr %17, align 8, !tbaa !15
  br label %101

101:                                              ; preds = %110, %91
  %102 = load i32, ptr %6, align 4, !tbaa !14
  %103 = load i32, ptr %12, align 4, !tbaa !14
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = load float, ptr %13, align 4, !tbaa !17
  %107 = load ptr, ptr %17, align 8, !tbaa !15
  %108 = load float, ptr %107, align 4, !tbaa !17
  %109 = fmul float %108, %106
  store float %109, ptr %107, align 4, !tbaa !17
  br label %110

110:                                              ; preds = %105
  %111 = load i32, ptr %6, align 4, !tbaa !14
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %6, align 4, !tbaa !14
  %113 = load ptr, ptr %17, align 8, !tbaa !15
  %114 = getelementptr inbounds nuw float, ptr %113, i32 1
  store ptr %114, ptr %17, align 8, !tbaa !15
  br label %101, !llvm.loop !19

115:                                              ; preds = %101
  %116 = load i32, ptr %8, align 4, !tbaa !14
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %7, align 4, !tbaa !14
  br label %118

118:                                              ; preds = %210, %115
  %119 = load i32, ptr %7, align 4, !tbaa !14
  %120 = load i32, ptr %12, align 4, !tbaa !14
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %213

122:                                              ; preds = %118
  %123 = load ptr, ptr %4, align 8, !tbaa !3
  %124 = getelementptr inbounds nuw %struct.FULL, ptr %123, i32 0, i32 2
  %125 = load i32, ptr %7, align 4, !tbaa !14
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [1000 x ptr], ptr %124, i64 0, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !15
  %129 = load i32, ptr %8, align 4, !tbaa !14
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, ptr %128, i64 %130
  %132 = load float, ptr %131, align 4, !tbaa !17
  store float %132, ptr %13, align 4, !tbaa !17
  %133 = load i32, ptr %9, align 4, !tbaa !14
  %134 = load i32, ptr %8, align 4, !tbaa !14
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %176

136:                                              ; preds = %122
  %137 = load ptr, ptr %4, align 8, !tbaa !3
  %138 = getelementptr inbounds nuw %struct.FULL, ptr %137, i32 0, i32 2
  %139 = load i32, ptr %7, align 4, !tbaa !14
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [1000 x ptr], ptr %138, i64 0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !15
  %143 = load i32, ptr %9, align 4, !tbaa !14
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, ptr %142, i64 %144
  %146 = load float, ptr %145, align 4, !tbaa !17
  %147 = load ptr, ptr %4, align 8, !tbaa !3
  %148 = getelementptr inbounds nuw %struct.FULL, ptr %147, i32 0, i32 2
  %149 = load i32, ptr %7, align 4, !tbaa !14
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [1000 x ptr], ptr %148, i64 0, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !15
  %153 = load i32, ptr %8, align 4, !tbaa !14
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, ptr %152, i64 %154
  store float %146, ptr %155, align 4, !tbaa !17
  %156 = load float, ptr %13, align 4, !tbaa !17
  %157 = load ptr, ptr %4, align 8, !tbaa !3
  %158 = getelementptr inbounds nuw %struct.FULL, ptr %157, i32 0, i32 2
  %159 = load i32, ptr %7, align 4, !tbaa !14
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [1000 x ptr], ptr %158, i64 0, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !15
  %163 = load i32, ptr %9, align 4, !tbaa !14
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, ptr %162, i64 %164
  store float %156, ptr %165, align 4, !tbaa !17
  %166 = load ptr, ptr %4, align 8, !tbaa !3
  %167 = getelementptr inbounds nuw %struct.FULL, ptr %166, i32 0, i32 2
  %168 = load i32, ptr %7, align 4, !tbaa !14
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [1000 x ptr], ptr %167, i64 0, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !15
  %172 = load i32, ptr %8, align 4, !tbaa !14
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, ptr %171, i64 %173
  %175 = load float, ptr %174, align 4, !tbaa !17
  store float %175, ptr %13, align 4, !tbaa !17
  br label %176

176:                                              ; preds = %136, %122
  %177 = load i32, ptr %8, align 4, !tbaa !14
  %178 = add nsw i32 %177, 1
  store i32 %178, ptr %6, align 4, !tbaa !14
  %179 = load ptr, ptr %4, align 8, !tbaa !3
  %180 = getelementptr inbounds nuw %struct.FULL, ptr %179, i32 0, i32 2
  %181 = load i32, ptr %7, align 4, !tbaa !14
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [1000 x ptr], ptr %180, i64 0, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !15
  %185 = load i32, ptr %8, align 4, !tbaa !14
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, ptr %184, i64 %186
  %188 = getelementptr inbounds float, ptr %187, i64 1
  store ptr %188, ptr %16, align 8, !tbaa !15
  %189 = load ptr, ptr %14, align 8, !tbaa !15
  %190 = getelementptr inbounds float, ptr %189, i64 1
  store ptr %190, ptr %17, align 8, !tbaa !15
  br label %191

191:                                              ; preds = %202, %176
  %192 = load i32, ptr %6, align 4, !tbaa !14
  %193 = load i32, ptr %12, align 4, !tbaa !14
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %191
  %196 = load float, ptr %13, align 4, !tbaa !17
  %197 = load ptr, ptr %17, align 8, !tbaa !15
  %198 = load float, ptr %197, align 4, !tbaa !17
  %199 = load ptr, ptr %16, align 8, !tbaa !15
  %200 = load float, ptr %199, align 4, !tbaa !17
  %201 = call float @llvm.fmuladd.f32(float %196, float %198, float %200)
  store float %201, ptr %199, align 4, !tbaa !17
  br label %202

202:                                              ; preds = %195
  %203 = load i32, ptr %6, align 4, !tbaa !14
  %204 = add nsw i32 %203, 1
  store i32 %204, ptr %6, align 4, !tbaa !14
  %205 = load ptr, ptr %16, align 8, !tbaa !15
  %206 = getelementptr inbounds nuw float, ptr %205, i32 1
  store ptr %206, ptr %16, align 8, !tbaa !15
  %207 = load ptr, ptr %17, align 8, !tbaa !15
  %208 = getelementptr inbounds nuw float, ptr %207, i32 1
  store ptr %208, ptr %17, align 8, !tbaa !15
  br label %191, !llvm.loop !21

209:                                              ; preds = %191
  br label %210

210:                                              ; preds = %209
  %211 = load i32, ptr %7, align 4, !tbaa !14
  %212 = add nsw i32 %211, 1
  store i32 %212, ptr %7, align 4, !tbaa !14
  br label %118, !llvm.loop !22

213:                                              ; preds = %118
  br label %214

214:                                              ; preds = %213, %77
  %215 = load i32, ptr %8, align 4, !tbaa !14
  %216 = add nsw i32 %215, 1
  store i32 %216, ptr %8, align 4, !tbaa !14
  %217 = load ptr, ptr %5, align 8, !tbaa !8
  %218 = getelementptr inbounds nuw i32, ptr %217, i32 1
  store ptr %218, ptr %5, align 8, !tbaa !8
  br label %41, !llvm.loop !23

219:                                              ; preds = %41
  br label %220

220:                                              ; preds = %219, %39
  %221 = load i32, ptr %10, align 4, !tbaa !14
  %222 = load ptr, ptr %5, align 8, !tbaa !8
  store i32 %221, ptr %222, align 4, !tbaa !14
  %223 = load ptr, ptr %14, align 8, !tbaa !15
  %224 = load float, ptr %223, align 4, !tbaa !17
  %225 = fpext float %224 to double
  %226 = fcmp oeq double %225, 0.000000e+00
  br i1 %226, label %227, label %229

227:                                              ; preds = %220
  %228 = load i32, ptr %12, align 4, !tbaa !14
  store i32 %228, ptr %11, align 4, !tbaa !14
  br label %229

229:                                              ; preds = %227, %220
  %230 = load i32, ptr %11, align 4, !tbaa !14
  store i32 %230, ptr %3, align 4
  store i32 1, ptr %18, align 4
  br label %231

231:                                              ; preds = %229, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #4
  %232 = load i32, ptr %3, align 4
  ret i32 %232
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare signext i32 @isamax(...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 _ZTS4FULL", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 int", !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"FULL", !12, i64 0, !12, i64 4, !6, i64 8}
!12 = !{!"int", !6, i64 0}
!13 = !{!11, !12, i64 4}
!14 = !{!12, !12, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 float", !5, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !6, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
