; ModuleID = './MultiSource/Applications/sgefa/CMakeFiles/sgefa.dir/sgesl.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/sgefa/sgesl.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.FULL = type { i32, i32, [1000 x ptr] }

; Function Attrs: nounwind
define dso_local signext i32 @sgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !8
  store ptr %2, ptr %8, align 8, !tbaa !10
  store i32 %3, ptr %9, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #3
  %21 = load ptr, ptr %6, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.FULL, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 8, !tbaa !14
  store i32 %23, ptr %18, align 4, !tbaa !12
  %24 = load i32, ptr %18, align 4, !tbaa !12
  %25 = sub nsw i32 %24, 1
  store i32 %25, ptr %19, align 4, !tbaa !12
  %26 = load i32, ptr %9, align 4, !tbaa !12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %156

28:                                               ; preds = %4
  store i32 0, ptr %16, align 4, !tbaa !12
  br label %29

29:                                               ; preds = %93, %28
  %30 = load i32, ptr %16, align 4, !tbaa !12
  %31 = load i32, ptr %19, align 4, !tbaa !12
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %98

33:                                               ; preds = %29
  %34 = load ptr, ptr %6, align 8, !tbaa !3
  %35 = getelementptr inbounds nuw %struct.FULL, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %16, align 4, !tbaa !12
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [1000 x ptr], ptr %35, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !10
  %40 = load i32, ptr %16, align 4, !tbaa !12
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, ptr %39, i64 %41
  store ptr %42, ptr %11, align 8, !tbaa !10
  %43 = load ptr, ptr %7, align 8, !tbaa !8
  %44 = load i32, ptr %43, align 4, !tbaa !12
  store i32 %44, ptr %17, align 4, !tbaa !12
  %45 = load ptr, ptr %8, align 8, !tbaa !10
  %46 = load i32, ptr %17, align 4, !tbaa !12
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, ptr %45, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !16
  store float %49, ptr %10, align 4, !tbaa !16
  %50 = load i32, ptr %17, align 4, !tbaa !12
  %51 = load i32, ptr %16, align 4, !tbaa !12
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %33
  %54 = load ptr, ptr %8, align 8, !tbaa !10
  %55 = load i32, ptr %16, align 4, !tbaa !12
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, ptr %54, i64 %56
  %58 = load float, ptr %57, align 4, !tbaa !16
  %59 = load ptr, ptr %8, align 8, !tbaa !10
  %60 = load i32, ptr %17, align 4, !tbaa !12
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, ptr %59, i64 %61
  store float %58, ptr %62, align 4, !tbaa !16
  %63 = load float, ptr %10, align 4, !tbaa !16
  %64 = load ptr, ptr %8, align 8, !tbaa !10
  %65 = load i32, ptr %16, align 4, !tbaa !12
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, ptr %64, i64 %66
  store float %63, ptr %67, align 4, !tbaa !16
  br label %68

68:                                               ; preds = %53, %33
  %69 = load i32, ptr %16, align 4, !tbaa !12
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %15, align 4, !tbaa !12
  %71 = load ptr, ptr %11, align 8, !tbaa !10
  %72 = getelementptr inbounds float, ptr %71, i64 1
  store ptr %72, ptr %12, align 8, !tbaa !10
  br label %73

73:                                               ; preds = %87, %68
  %74 = load i32, ptr %15, align 4, !tbaa !12
  %75 = load i32, ptr %18, align 4, !tbaa !12
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load ptr, ptr %12, align 8, !tbaa !10
  %79 = load float, ptr %78, align 4, !tbaa !16
  %80 = load float, ptr %10, align 4, !tbaa !16
  %81 = load ptr, ptr %8, align 8, !tbaa !10
  %82 = load i32, ptr %15, align 4, !tbaa !12
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, ptr %81, i64 %83
  %85 = load float, ptr %84, align 4, !tbaa !16
  %86 = call float @llvm.fmuladd.f32(float %79, float %80, float %85)
  store float %86, ptr %84, align 4, !tbaa !16
  br label %87

87:                                               ; preds = %77
  %88 = load i32, ptr %15, align 4, !tbaa !12
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %15, align 4, !tbaa !12
  %90 = load ptr, ptr %12, align 8, !tbaa !10
  %91 = getelementptr inbounds nuw float, ptr %90, i32 1
  store ptr %91, ptr %12, align 8, !tbaa !10
  br label %73, !llvm.loop !18

92:                                               ; preds = %73
  br label %93

93:                                               ; preds = %92
  %94 = load i32, ptr %16, align 4, !tbaa !12
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %16, align 4, !tbaa !12
  %96 = load ptr, ptr %7, align 8, !tbaa !8
  %97 = getelementptr inbounds nuw i32, ptr %96, i32 1
  store ptr %97, ptr %7, align 8, !tbaa !8
  br label %29, !llvm.loop !20

98:                                               ; preds = %29
  %99 = load i32, ptr %19, align 4, !tbaa !12
  store i32 %99, ptr %16, align 4, !tbaa !12
  br label %100

100:                                              ; preds = %152, %98
  %101 = load i32, ptr %16, align 4, !tbaa !12
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %155

103:                                              ; preds = %100
  %104 = load ptr, ptr %6, align 8, !tbaa !3
  %105 = getelementptr inbounds nuw %struct.FULL, ptr %104, i32 0, i32 2
  %106 = load i32, ptr %16, align 4, !tbaa !12
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [1000 x ptr], ptr %105, i64 0, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !10
  %110 = load i32, ptr %16, align 4, !tbaa !12
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, ptr %109, i64 %111
  store ptr %112, ptr %11, align 8, !tbaa !10
  %113 = load ptr, ptr %11, align 8, !tbaa !10
  %114 = load float, ptr %113, align 4, !tbaa !16
  %115 = load ptr, ptr %8, align 8, !tbaa !10
  %116 = load i32, ptr %16, align 4, !tbaa !12
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, ptr %115, i64 %117
  %119 = load float, ptr %118, align 4, !tbaa !16
  %120 = fdiv float %119, %114
  store float %120, ptr %118, align 4, !tbaa !16
  store i32 0, ptr %15, align 4, !tbaa !12
  %121 = load ptr, ptr %6, align 8, !tbaa !3
  %122 = getelementptr inbounds nuw %struct.FULL, ptr %121, i32 0, i32 2
  %123 = load i32, ptr %16, align 4, !tbaa !12
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [1000 x ptr], ptr %122, i64 0, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !10
  store ptr %126, ptr %13, align 8, !tbaa !10
  br label %127

127:                                              ; preds = %146, %103
  %128 = load i32, ptr %15, align 4, !tbaa !12
  %129 = load i32, ptr %16, align 4, !tbaa !12
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %151

131:                                              ; preds = %127
  %132 = load ptr, ptr %13, align 8, !tbaa !10
  %133 = load float, ptr %132, align 4, !tbaa !16
  %134 = load ptr, ptr %8, align 8, !tbaa !10
  %135 = load i32, ptr %16, align 4, !tbaa !12
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, ptr %134, i64 %136
  %138 = load float, ptr %137, align 4, !tbaa !16
  %139 = load ptr, ptr %8, align 8, !tbaa !10
  %140 = load i32, ptr %15, align 4, !tbaa !12
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, ptr %139, i64 %141
  %143 = load float, ptr %142, align 4, !tbaa !16
  %144 = fneg float %133
  %145 = call float @llvm.fmuladd.f32(float %144, float %138, float %143)
  store float %145, ptr %142, align 4, !tbaa !16
  br label %146

146:                                              ; preds = %131
  %147 = load i32, ptr %15, align 4, !tbaa !12
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %15, align 4, !tbaa !12
  %149 = load ptr, ptr %13, align 8, !tbaa !10
  %150 = getelementptr inbounds nuw float, ptr %149, i32 1
  store ptr %150, ptr %13, align 8, !tbaa !10
  br label %127, !llvm.loop !21

151:                                              ; preds = %127
  br label %152

152:                                              ; preds = %151
  %153 = load i32, ptr %16, align 4, !tbaa !12
  %154 = add nsw i32 %153, -1
  store i32 %154, ptr %16, align 4, !tbaa !12
  br label %100, !llvm.loop !22

155:                                              ; preds = %100
  store i32 0, ptr %5, align 4
  store i32 1, ptr %20, align 4
  br label %301

156:                                              ; preds = %4
  store i32 0, ptr %16, align 4, !tbaa !12
  br label %157

157:                                              ; preds = %211, %156
  %158 = load i32, ptr %16, align 4, !tbaa !12
  %159 = load i32, ptr %18, align 4, !tbaa !12
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %214

161:                                              ; preds = %157
  %162 = load ptr, ptr %6, align 8, !tbaa !3
  %163 = getelementptr inbounds nuw %struct.FULL, ptr %162, i32 0, i32 2
  %164 = load i32, ptr %16, align 4, !tbaa !12
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [1000 x ptr], ptr %163, i64 0, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !10
  %168 = load i32, ptr %16, align 4, !tbaa !12
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, ptr %167, i64 %169
  store ptr %170, ptr %11, align 8, !tbaa !10
  store i32 0, ptr %15, align 4, !tbaa !12
  store float 0.000000e+00, ptr %10, align 4, !tbaa !16
  %171 = load ptr, ptr %6, align 8, !tbaa !3
  %172 = getelementptr inbounds nuw %struct.FULL, ptr %171, i32 0, i32 2
  %173 = load i32, ptr %16, align 4, !tbaa !12
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [1000 x ptr], ptr %172, i64 0, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !10
  store ptr %176, ptr %13, align 8, !tbaa !10
  %177 = load ptr, ptr %8, align 8, !tbaa !10
  store ptr %177, ptr %14, align 8, !tbaa !10
  br label %178

178:                                              ; preds = %189, %161
  %179 = load i32, ptr %15, align 4, !tbaa !12
  %180 = load i32, ptr %16, align 4, !tbaa !12
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %178
  %183 = load ptr, ptr %13, align 8, !tbaa !10
  %184 = load float, ptr %183, align 4, !tbaa !16
  %185 = load ptr, ptr %14, align 8, !tbaa !10
  %186 = load float, ptr %185, align 4, !tbaa !16
  %187 = load float, ptr %10, align 4, !tbaa !16
  %188 = call float @llvm.fmuladd.f32(float %184, float %186, float %187)
  store float %188, ptr %10, align 4, !tbaa !16
  br label %189

189:                                              ; preds = %182
  %190 = load i32, ptr %15, align 4, !tbaa !12
  %191 = add nsw i32 %190, 1
  store i32 %191, ptr %15, align 4, !tbaa !12
  %192 = load ptr, ptr %13, align 8, !tbaa !10
  %193 = getelementptr inbounds nuw float, ptr %192, i32 1
  store ptr %193, ptr %13, align 8, !tbaa !10
  %194 = load ptr, ptr %14, align 8, !tbaa !10
  %195 = getelementptr inbounds nuw float, ptr %194, i32 1
  store ptr %195, ptr %14, align 8, !tbaa !10
  br label %178, !llvm.loop !23

196:                                              ; preds = %178
  %197 = load ptr, ptr %8, align 8, !tbaa !10
  %198 = load i32, ptr %16, align 4, !tbaa !12
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, ptr %197, i64 %199
  %201 = load float, ptr %200, align 4, !tbaa !16
  %202 = load float, ptr %10, align 4, !tbaa !16
  %203 = fsub float %201, %202
  %204 = load ptr, ptr %11, align 8, !tbaa !10
  %205 = load float, ptr %204, align 4, !tbaa !16
  %206 = fdiv float %203, %205
  %207 = load ptr, ptr %8, align 8, !tbaa !10
  %208 = load i32, ptr %16, align 4, !tbaa !12
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, ptr %207, i64 %209
  store float %206, ptr %210, align 4, !tbaa !16
  br label %211

211:                                              ; preds = %196
  %212 = load i32, ptr %16, align 4, !tbaa !12
  %213 = add nsw i32 %212, 1
  store i32 %213, ptr %16, align 4, !tbaa !12
  br label %157, !llvm.loop !24

214:                                              ; preds = %157
  %215 = load i32, ptr %18, align 4, !tbaa !12
  %216 = sub nsw i32 %215, 2
  %217 = load ptr, ptr %7, align 8, !tbaa !8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, ptr %217, i64 %218
  store ptr %219, ptr %7, align 8, !tbaa !8
  %220 = load i32, ptr %18, align 4, !tbaa !12
  %221 = sub nsw i32 %220, 2
  store i32 %221, ptr %16, align 4, !tbaa !12
  br label %222

222:                                              ; preds = %295, %214
  %223 = load i32, ptr %16, align 4, !tbaa !12
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %300

225:                                              ; preds = %222
  %226 = load i32, ptr %16, align 4, !tbaa !12
  %227 = add nsw i32 %226, 1
  store i32 %227, ptr %15, align 4, !tbaa !12
  store float 0.000000e+00, ptr %10, align 4, !tbaa !16
  %228 = load ptr, ptr %6, align 8, !tbaa !3
  %229 = getelementptr inbounds nuw %struct.FULL, ptr %228, i32 0, i32 2
  %230 = load i32, ptr %16, align 4, !tbaa !12
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [1000 x ptr], ptr %229, i64 0, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !10
  %234 = load i32, ptr %16, align 4, !tbaa !12
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, ptr %233, i64 %235
  %237 = getelementptr inbounds float, ptr %236, i64 1
  store ptr %237, ptr %12, align 8, !tbaa !10
  %238 = load ptr, ptr %8, align 8, !tbaa !10
  %239 = load i32, ptr %16, align 4, !tbaa !12
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, ptr %238, i64 %240
  %242 = getelementptr inbounds float, ptr %241, i64 1
  store ptr %242, ptr %14, align 8, !tbaa !10
  br label %243

243:                                              ; preds = %254, %225
  %244 = load i32, ptr %15, align 4, !tbaa !12
  %245 = load i32, ptr %18, align 4, !tbaa !12
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %261

247:                                              ; preds = %243
  %248 = load ptr, ptr %12, align 8, !tbaa !10
  %249 = load float, ptr %248, align 4, !tbaa !16
  %250 = load ptr, ptr %14, align 8, !tbaa !10
  %251 = load float, ptr %250, align 4, !tbaa !16
  %252 = load float, ptr %10, align 4, !tbaa !16
  %253 = call float @llvm.fmuladd.f32(float %249, float %251, float %252)
  store float %253, ptr %10, align 4, !tbaa !16
  br label %254

254:                                              ; preds = %247
  %255 = load i32, ptr %15, align 4, !tbaa !12
  %256 = add nsw i32 %255, 1
  store i32 %256, ptr %15, align 4, !tbaa !12
  %257 = load ptr, ptr %12, align 8, !tbaa !10
  %258 = getelementptr inbounds nuw float, ptr %257, i32 1
  store ptr %258, ptr %12, align 8, !tbaa !10
  %259 = load ptr, ptr %14, align 8, !tbaa !10
  %260 = getelementptr inbounds nuw float, ptr %259, i32 1
  store ptr %260, ptr %14, align 8, !tbaa !10
  br label %243, !llvm.loop !25

261:                                              ; preds = %243
  %262 = load float, ptr %10, align 4, !tbaa !16
  %263 = load ptr, ptr %8, align 8, !tbaa !10
  %264 = load i32, ptr %16, align 4, !tbaa !12
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds float, ptr %263, i64 %265
  %267 = load float, ptr %266, align 4, !tbaa !16
  %268 = fadd float %267, %262
  store float %268, ptr %266, align 4, !tbaa !16
  %269 = load ptr, ptr %7, align 8, !tbaa !8
  %270 = load i32, ptr %269, align 4, !tbaa !12
  store i32 %270, ptr %17, align 4, !tbaa !12
  %271 = load i32, ptr %17, align 4, !tbaa !12
  %272 = load i32, ptr %16, align 4, !tbaa !12
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %261
  br label %295

275:                                              ; preds = %261
  %276 = load ptr, ptr %8, align 8, !tbaa !10
  %277 = load i32, ptr %17, align 4, !tbaa !12
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, ptr %276, i64 %278
  %280 = load float, ptr %279, align 4, !tbaa !16
  store float %280, ptr %10, align 4, !tbaa !16
  %281 = load ptr, ptr %8, align 8, !tbaa !10
  %282 = load i32, ptr %16, align 4, !tbaa !12
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, ptr %281, i64 %283
  %285 = load float, ptr %284, align 4, !tbaa !16
  %286 = load ptr, ptr %8, align 8, !tbaa !10
  %287 = load i32, ptr %17, align 4, !tbaa !12
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, ptr %286, i64 %288
  store float %285, ptr %289, align 4, !tbaa !16
  %290 = load float, ptr %10, align 4, !tbaa !16
  %291 = load ptr, ptr %8, align 8, !tbaa !10
  %292 = load i32, ptr %16, align 4, !tbaa !12
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, ptr %291, i64 %293
  store float %290, ptr %294, align 4, !tbaa !16
  br label %295

295:                                              ; preds = %275, %274
  %296 = load i32, ptr %16, align 4, !tbaa !12
  %297 = add nsw i32 %296, -1
  store i32 %297, ptr %16, align 4, !tbaa !12
  %298 = load ptr, ptr %7, align 8, !tbaa !8
  %299 = getelementptr inbounds i32, ptr %298, i32 -1
  store ptr %299, ptr %7, align 8, !tbaa !8
  br label %222, !llvm.loop !26

300:                                              ; preds = %222
  store i32 0, ptr %5, align 4
  store i32 1, ptr %20, align 4
  br label %301

301:                                              ; preds = %300, %155
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #3
  %302 = load i32, ptr %5, align 4
  ret i32 %302
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 float", !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = !{!15, !13, i64 0}
!15 = !{!"FULL", !13, i64 0, !13, i64 4, !6, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
