; ModuleID = './MultiSource/Applications/viterbi/CMakeFiles/viterbi.dir/dec_viterbi_F.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/viterbi/dec_viterbi_F.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.bitvector = type { i64, ptr }
%struct.dvarray = type { i64, ptr }
%struct.dvector = type { i64, ptr }
%struct.param_viterbi_t = type { i64, i64, i64, [7 x i8], [7 x i8], i64, [128 x i8], [128 x i8], [128 x double], [128 x [143 x i8]] }

; Function Attrs: nounwind
define dso_local void @dec_viterbi_F(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca [128 x [143 x i8]], align 1
  %27 = alloca [128 x [144 x i8]], align 1
  store ptr %0, ptr %7, align 8, !tbaa !3
  store ptr %1, ptr %8, align 8, !tbaa !7
  store ptr %2, ptr %9, align 8, !tbaa !3
  store ptr %3, ptr %10, align 8, !tbaa !3
  store ptr %4, ptr %11, align 8, !tbaa !3
  store i64 %5, ptr %12, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #7
  store i64 0, ptr %13, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #7
  store i64 0, ptr %18, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %19) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %20) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %21) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr %22) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr %23) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr %24) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr %25) #7
  call void @llvm.lifetime.start.p0(i64 18304, ptr %26) #7
  call void @llvm.lifetime.start.p0(i64 18432, ptr %27) #7
  %28 = load ptr, ptr %9, align 8, !tbaa !3
  %29 = getelementptr inbounds nuw %struct.bitvector, ptr %28, i32 0, i32 0
  %30 = load i64, ptr %29, align 8, !tbaa !11
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load ptr, ptr %9, align 8, !tbaa !3
  call void @bitvector_clear(ptr noundef %33)
  br label %34

34:                                               ; preds = %32, %6
  %35 = load i64, ptr %12, align 8, !tbaa !9
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load ptr, ptr %10, align 8, !tbaa !3
  %39 = getelementptr inbounds nuw %struct.dvarray, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !13
  %41 = getelementptr inbounds %struct.dvector, ptr %40, i64 0
  %42 = getelementptr inbounds nuw %struct.dvector, ptr %41, i32 0, i32 0
  %43 = load i64, ptr %42, align 8, !tbaa !15
  store i64 %43, ptr %12, align 8, !tbaa !9
  br label %44

44:                                               ; preds = %37, %34
  %45 = load ptr, ptr %9, align 8, !tbaa !3
  %46 = load i64, ptr %12, align 8, !tbaa !9
  call void @bitvector_init(ptr noundef %45, i64 noundef %46)
  %47 = load ptr, ptr %7, align 8, !tbaa !3
  %48 = getelementptr inbounds nuw %struct.dvector, ptr %47, i32 0, i32 0
  %49 = load i64, ptr %48, align 8, !tbaa !15
  %50 = mul i64 %49, 8
  %51 = call noalias ptr @malloc(i64 noundef %50) #8
  store ptr %51, ptr %21, align 8, !tbaa !18
  %52 = load ptr, ptr %7, align 8, !tbaa !3
  %53 = getelementptr inbounds nuw %struct.dvector, ptr %52, i32 0, i32 0
  %54 = load i64, ptr %53, align 8, !tbaa !15
  %55 = mul i64 %54, 8
  %56 = call noalias ptr @malloc(i64 noundef %55) #8
  store ptr %56, ptr %19, align 8, !tbaa !18
  %57 = load ptr, ptr %7, align 8, !tbaa !3
  %58 = getelementptr inbounds nuw %struct.dvector, ptr %57, i32 0, i32 0
  %59 = load i64, ptr %58, align 8, !tbaa !15
  %60 = mul i64 %59, 8
  %61 = call noalias ptr @malloc(i64 noundef %60) #8
  store ptr %61, ptr %20, align 8, !tbaa !18
  %62 = load ptr, ptr %21, align 8, !tbaa !18
  %63 = load ptr, ptr %7, align 8, !tbaa !3
  %64 = getelementptr inbounds nuw %struct.dvector, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !19
  %66 = load ptr, ptr %7, align 8, !tbaa !3
  %67 = getelementptr inbounds nuw %struct.dvector, ptr %66, i32 0, i32 0
  %68 = load i64, ptr %67, align 8, !tbaa !15
  %69 = mul i64 %68, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %62, ptr align 8 %65, i64 %69, i1 false)
  %70 = getelementptr inbounds [128 x [143 x i8]], ptr %26, i64 0, i64 0
  %71 = load ptr, ptr %8, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %70, ptr align 1 %71, i64 18304, i1 false)
  store i64 0, ptr %14, align 8, !tbaa !9
  br label %72

72:                                               ; preds = %517, %44
  %73 = load i64, ptr %13, align 8, !tbaa !9
  %74 = load ptr, ptr %9, align 8, !tbaa !3
  %75 = getelementptr inbounds nuw %struct.bitvector, ptr %74, i32 0, i32 0
  %76 = load i64, ptr %75, align 8, !tbaa !11
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %518

78:                                               ; preds = %72
  %79 = load ptr, ptr %19, align 8, !tbaa !18
  %80 = load ptr, ptr %21, align 8, !tbaa !18
  %81 = load ptr, ptr %7, align 8, !tbaa !3
  %82 = getelementptr inbounds nuw %struct.dvector, ptr %81, i32 0, i32 0
  %83 = load i64, ptr %82, align 8, !tbaa !15
  %84 = mul i64 %83, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %79, ptr align 8 %80, i64 %84, i1 false)
  %85 = load ptr, ptr %20, align 8, !tbaa !18
  %86 = load ptr, ptr %21, align 8, !tbaa !18
  %87 = load ptr, ptr %7, align 8, !tbaa !3
  %88 = getelementptr inbounds nuw %struct.dvector, ptr %87, i32 0, i32 0
  %89 = load i64, ptr %88, align 8, !tbaa !15
  %90 = mul i64 %89, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %85, ptr align 8 %86, i64 %90, i1 false)
  %91 = load ptr, ptr %11, align 8, !tbaa !3
  %92 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %91, i32 0, i32 3
  %93 = load i64, ptr %14, align 8, !tbaa !9
  %94 = getelementptr inbounds nuw [7 x i8], ptr %92, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !20
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %163

98:                                               ; preds = %78
  store i64 0, ptr %15, align 8, !tbaa !9
  br label %99

99:                                               ; preds = %157, %98
  %100 = load i64, ptr %15, align 8, !tbaa !9
  %101 = load ptr, ptr %11, align 8, !tbaa !3
  %102 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %101, i32 0, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !21
  %104 = icmp ult i64 %100, %103
  br i1 %104, label %105, label %160

105:                                              ; preds = %99
  %106 = load ptr, ptr %11, align 8, !tbaa !3
  %107 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %106, i32 0, i32 6
  %108 = load i64, ptr %15, align 8, !tbaa !9
  %109 = getelementptr inbounds nuw [128 x i8], ptr %107, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !20
  store i8 %110, ptr %22, align 1, !tbaa !20
  %111 = load ptr, ptr %11, align 8, !tbaa !3
  %112 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %111, i32 0, i32 6
  %113 = load i64, ptr %15, align 8, !tbaa !9
  %114 = getelementptr inbounds nuw [128 x i8], ptr %112, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !20
  %116 = zext i8 %115 to i32
  %117 = sub nsw i32 1, %116
  %118 = trunc i32 %117 to i8
  store i8 %118, ptr %23, align 1, !tbaa !20
  %119 = load ptr, ptr %19, align 8, !tbaa !18
  %120 = load i64, ptr %15, align 8, !tbaa !9
  %121 = getelementptr inbounds nuw double, ptr %119, i64 %120
  %122 = load double, ptr %121, align 8, !tbaa !23
  %123 = load ptr, ptr %10, align 8, !tbaa !3
  %124 = getelementptr inbounds nuw %struct.dvarray, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !13
  %126 = load i8, ptr %22, align 1, !tbaa !20
  %127 = sext i8 %126 to i64
  %128 = getelementptr inbounds %struct.dvector, ptr %125, i64 %127
  %129 = getelementptr inbounds nuw %struct.dvector, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !19
  %131 = load i64, ptr %13, align 8, !tbaa !9
  %132 = getelementptr inbounds nuw double, ptr %130, i64 %131
  %133 = load double, ptr %132, align 8, !tbaa !23
  %134 = fadd double %122, %133
  %135 = load ptr, ptr %19, align 8, !tbaa !18
  %136 = load i64, ptr %15, align 8, !tbaa !9
  %137 = getelementptr inbounds nuw double, ptr %135, i64 %136
  store double %134, ptr %137, align 8, !tbaa !23
  %138 = load ptr, ptr %20, align 8, !tbaa !18
  %139 = load i64, ptr %15, align 8, !tbaa !9
  %140 = getelementptr inbounds nuw double, ptr %138, i64 %139
  %141 = load double, ptr %140, align 8, !tbaa !23
  %142 = load ptr, ptr %10, align 8, !tbaa !3
  %143 = getelementptr inbounds nuw %struct.dvarray, ptr %142, i32 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !13
  %145 = load i8, ptr %23, align 1, !tbaa !20
  %146 = sext i8 %145 to i64
  %147 = getelementptr inbounds %struct.dvector, ptr %144, i64 %146
  %148 = getelementptr inbounds nuw %struct.dvector, ptr %147, i32 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !19
  %150 = load i64, ptr %13, align 8, !tbaa !9
  %151 = getelementptr inbounds nuw double, ptr %149, i64 %150
  %152 = load double, ptr %151, align 8, !tbaa !23
  %153 = fadd double %141, %152
  %154 = load ptr, ptr %20, align 8, !tbaa !18
  %155 = load i64, ptr %15, align 8, !tbaa !9
  %156 = getelementptr inbounds nuw double, ptr %154, i64 %155
  store double %153, ptr %156, align 8, !tbaa !23
  br label %157

157:                                              ; preds = %105
  %158 = load i64, ptr %15, align 8, !tbaa !9
  %159 = add i64 %158, 1
  store i64 %159, ptr %15, align 8, !tbaa !9
  br label %99, !llvm.loop !25

160:                                              ; preds = %99
  %161 = load i64, ptr %13, align 8, !tbaa !9
  %162 = add i64 %161, 1
  store i64 %162, ptr %13, align 8, !tbaa !9
  br label %163

163:                                              ; preds = %160, %78
  %164 = load ptr, ptr %11, align 8, !tbaa !3
  %165 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %164, i32 0, i32 4
  %166 = load i64, ptr %14, align 8, !tbaa !9
  %167 = getelementptr inbounds nuw [7 x i8], ptr %165, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !20
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %243

171:                                              ; preds = %163
  %172 = load i64, ptr %13, align 8, !tbaa !9
  %173 = load ptr, ptr %9, align 8, !tbaa !3
  %174 = getelementptr inbounds nuw %struct.bitvector, ptr %173, i32 0, i32 0
  %175 = load i64, ptr %174, align 8, !tbaa !11
  %176 = icmp uge i64 %172, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %178

178:                                              ; preds = %177, %171
  store i64 0, ptr %15, align 8, !tbaa !9
  br label %179

179:                                              ; preds = %237, %178
  %180 = load i64, ptr %15, align 8, !tbaa !9
  %181 = load ptr, ptr %11, align 8, !tbaa !3
  %182 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %181, i32 0, i32 1
  %183 = load i64, ptr %182, align 8, !tbaa !21
  %184 = icmp ult i64 %180, %183
  br i1 %184, label %185, label %240

185:                                              ; preds = %179
  %186 = load ptr, ptr %11, align 8, !tbaa !3
  %187 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %186, i32 0, i32 7
  %188 = load i64, ptr %15, align 8, !tbaa !9
  %189 = getelementptr inbounds nuw [128 x i8], ptr %187, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !20
  store i8 %190, ptr %24, align 1, !tbaa !20
  %191 = load ptr, ptr %11, align 8, !tbaa !3
  %192 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %191, i32 0, i32 7
  %193 = load i64, ptr %15, align 8, !tbaa !9
  %194 = getelementptr inbounds nuw [128 x i8], ptr %192, i64 0, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !20
  %196 = zext i8 %195 to i32
  %197 = sub nsw i32 1, %196
  %198 = trunc i32 %197 to i8
  store i8 %198, ptr %25, align 1, !tbaa !20
  %199 = load ptr, ptr %19, align 8, !tbaa !18
  %200 = load i64, ptr %15, align 8, !tbaa !9
  %201 = getelementptr inbounds nuw double, ptr %199, i64 %200
  %202 = load double, ptr %201, align 8, !tbaa !23
  %203 = load ptr, ptr %10, align 8, !tbaa !3
  %204 = getelementptr inbounds nuw %struct.dvarray, ptr %203, i32 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !13
  %206 = load i8, ptr %24, align 1, !tbaa !20
  %207 = sext i8 %206 to i64
  %208 = getelementptr inbounds %struct.dvector, ptr %205, i64 %207
  %209 = getelementptr inbounds nuw %struct.dvector, ptr %208, i32 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !19
  %211 = load i64, ptr %13, align 8, !tbaa !9
  %212 = getelementptr inbounds nuw double, ptr %210, i64 %211
  %213 = load double, ptr %212, align 8, !tbaa !23
  %214 = fadd double %202, %213
  %215 = load ptr, ptr %19, align 8, !tbaa !18
  %216 = load i64, ptr %15, align 8, !tbaa !9
  %217 = getelementptr inbounds nuw double, ptr %215, i64 %216
  store double %214, ptr %217, align 8, !tbaa !23
  %218 = load ptr, ptr %20, align 8, !tbaa !18
  %219 = load i64, ptr %15, align 8, !tbaa !9
  %220 = getelementptr inbounds nuw double, ptr %218, i64 %219
  %221 = load double, ptr %220, align 8, !tbaa !23
  %222 = load ptr, ptr %10, align 8, !tbaa !3
  %223 = getelementptr inbounds nuw %struct.dvarray, ptr %222, i32 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !13
  %225 = load i8, ptr %25, align 1, !tbaa !20
  %226 = sext i8 %225 to i64
  %227 = getelementptr inbounds %struct.dvector, ptr %224, i64 %226
  %228 = getelementptr inbounds nuw %struct.dvector, ptr %227, i32 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !19
  %230 = load i64, ptr %13, align 8, !tbaa !9
  %231 = getelementptr inbounds nuw double, ptr %229, i64 %230
  %232 = load double, ptr %231, align 8, !tbaa !23
  %233 = fadd double %221, %232
  %234 = load ptr, ptr %20, align 8, !tbaa !18
  %235 = load i64, ptr %15, align 8, !tbaa !9
  %236 = getelementptr inbounds nuw double, ptr %234, i64 %235
  store double %233, ptr %236, align 8, !tbaa !23
  br label %237

237:                                              ; preds = %185
  %238 = load i64, ptr %15, align 8, !tbaa !9
  %239 = add i64 %238, 1
  store i64 %239, ptr %15, align 8, !tbaa !9
  br label %179, !llvm.loop !27

240:                                              ; preds = %179
  %241 = load i64, ptr %13, align 8, !tbaa !9
  %242 = add i64 %241, 1
  store i64 %242, ptr %13, align 8, !tbaa !9
  br label %243

243:                                              ; preds = %240, %163
  store i64 0, ptr %15, align 8, !tbaa !9
  br label %244

244:                                              ; preds = %436, %243
  %245 = load i64, ptr %15, align 8, !tbaa !9
  %246 = load ptr, ptr %11, align 8, !tbaa !3
  %247 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %246, i32 0, i32 1
  %248 = load i64, ptr %247, align 8, !tbaa !21
  %249 = udiv i64 %248, 2
  %250 = icmp ult i64 %245, %249
  br i1 %250, label %251, label %439

251:                                              ; preds = %244
  %252 = load ptr, ptr %19, align 8, !tbaa !18
  %253 = load i64, ptr %15, align 8, !tbaa !9
  %254 = mul i64 2, %253
  %255 = getelementptr inbounds nuw double, ptr %252, i64 %254
  %256 = load double, ptr %255, align 8, !tbaa !23
  %257 = load ptr, ptr %19, align 8, !tbaa !18
  %258 = load i64, ptr %15, align 8, !tbaa !9
  %259 = mul i64 2, %258
  %260 = add i64 %259, 1
  %261 = getelementptr inbounds nuw double, ptr %257, i64 %260
  %262 = load double, ptr %261, align 8, !tbaa !23
  %263 = fcmp ole double %256, %262
  br i1 %263, label %264, label %295

264:                                              ; preds = %251
  %265 = load ptr, ptr %19, align 8, !tbaa !18
  %266 = load i64, ptr %15, align 8, !tbaa !9
  %267 = mul i64 2, %266
  %268 = getelementptr inbounds nuw double, ptr %265, i64 %267
  %269 = load double, ptr %268, align 8, !tbaa !23
  %270 = load ptr, ptr %21, align 8, !tbaa !18
  %271 = load i64, ptr %15, align 8, !tbaa !9
  %272 = getelementptr inbounds nuw double, ptr %270, i64 %271
  store double %269, ptr %272, align 8, !tbaa !23
  %273 = load i64, ptr %15, align 8, !tbaa !9
  %274 = getelementptr inbounds nuw [128 x [144 x i8]], ptr %27, i64 0, i64 %273
  %275 = getelementptr inbounds [144 x i8], ptr %274, i64 0, i64 0
  store i8 0, ptr %275, align 1, !tbaa !20
  store i64 0, ptr %16, align 8, !tbaa !9
  br label %276

276:                                              ; preds = %291, %264
  %277 = load i64, ptr %16, align 8, !tbaa !9
  %278 = icmp ult i64 %277, 143
  br i1 %278, label %279, label %294

279:                                              ; preds = %276
  %280 = load i64, ptr %15, align 8, !tbaa !9
  %281 = mul i64 2, %280
  %282 = getelementptr inbounds nuw [128 x [143 x i8]], ptr %26, i64 0, i64 %281
  %283 = load i64, ptr %16, align 8, !tbaa !9
  %284 = getelementptr inbounds nuw [143 x i8], ptr %282, i64 0, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !20
  %286 = load i64, ptr %15, align 8, !tbaa !9
  %287 = getelementptr inbounds nuw [128 x [144 x i8]], ptr %27, i64 0, i64 %286
  %288 = load i64, ptr %16, align 8, !tbaa !9
  %289 = add i64 %288, 1
  %290 = getelementptr inbounds nuw [144 x i8], ptr %287, i64 0, i64 %289
  store i8 %285, ptr %290, align 1, !tbaa !20
  br label %291

291:                                              ; preds = %279
  %292 = load i64, ptr %16, align 8, !tbaa !9
  %293 = add i64 %292, 1
  store i64 %293, ptr %16, align 8, !tbaa !9
  br label %276, !llvm.loop !28

294:                                              ; preds = %276
  br label %328

295:                                              ; preds = %251
  %296 = load ptr, ptr %19, align 8, !tbaa !18
  %297 = load i64, ptr %15, align 8, !tbaa !9
  %298 = mul i64 2, %297
  %299 = add i64 %298, 1
  %300 = getelementptr inbounds nuw double, ptr %296, i64 %299
  %301 = load double, ptr %300, align 8, !tbaa !23
  %302 = load ptr, ptr %21, align 8, !tbaa !18
  %303 = load i64, ptr %15, align 8, !tbaa !9
  %304 = getelementptr inbounds nuw double, ptr %302, i64 %303
  store double %301, ptr %304, align 8, !tbaa !23
  %305 = load i64, ptr %15, align 8, !tbaa !9
  %306 = getelementptr inbounds nuw [128 x [144 x i8]], ptr %27, i64 0, i64 %305
  %307 = getelementptr inbounds [144 x i8], ptr %306, i64 0, i64 0
  store i8 1, ptr %307, align 1, !tbaa !20
  store i64 0, ptr %16, align 8, !tbaa !9
  br label %308

308:                                              ; preds = %324, %295
  %309 = load i64, ptr %16, align 8, !tbaa !9
  %310 = icmp ult i64 %309, 143
  br i1 %310, label %311, label %327

311:                                              ; preds = %308
  %312 = load i64, ptr %15, align 8, !tbaa !9
  %313 = mul i64 2, %312
  %314 = add i64 %313, 1
  %315 = getelementptr inbounds nuw [128 x [143 x i8]], ptr %26, i64 0, i64 %314
  %316 = load i64, ptr %16, align 8, !tbaa !9
  %317 = getelementptr inbounds nuw [143 x i8], ptr %315, i64 0, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !20
  %319 = load i64, ptr %15, align 8, !tbaa !9
  %320 = getelementptr inbounds nuw [128 x [144 x i8]], ptr %27, i64 0, i64 %319
  %321 = load i64, ptr %16, align 8, !tbaa !9
  %322 = add i64 %321, 1
  %323 = getelementptr inbounds nuw [144 x i8], ptr %320, i64 0, i64 %322
  store i8 %318, ptr %323, align 1, !tbaa !20
  br label %324

324:                                              ; preds = %311
  %325 = load i64, ptr %16, align 8, !tbaa !9
  %326 = add i64 %325, 1
  store i64 %326, ptr %16, align 8, !tbaa !9
  br label %308, !llvm.loop !29

327:                                              ; preds = %308
  br label %328

328:                                              ; preds = %327, %294
  %329 = load ptr, ptr %20, align 8, !tbaa !18
  %330 = load i64, ptr %15, align 8, !tbaa !9
  %331 = mul i64 2, %330
  %332 = getelementptr inbounds nuw double, ptr %329, i64 %331
  %333 = load double, ptr %332, align 8, !tbaa !23
  %334 = load ptr, ptr %20, align 8, !tbaa !18
  %335 = load i64, ptr %15, align 8, !tbaa !9
  %336 = mul i64 2, %335
  %337 = add i64 %336, 1
  %338 = getelementptr inbounds nuw double, ptr %334, i64 %337
  %339 = load double, ptr %338, align 8, !tbaa !23
  %340 = fcmp ole double %333, %339
  br i1 %340, label %341, label %387

341:                                              ; preds = %328
  %342 = load ptr, ptr %20, align 8, !tbaa !18
  %343 = load i64, ptr %15, align 8, !tbaa !9
  %344 = mul i64 2, %343
  %345 = getelementptr inbounds nuw double, ptr %342, i64 %344
  %346 = load double, ptr %345, align 8, !tbaa !23
  %347 = load ptr, ptr %21, align 8, !tbaa !18
  %348 = load i64, ptr %15, align 8, !tbaa !9
  %349 = load ptr, ptr %11, align 8, !tbaa !3
  %350 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %349, i32 0, i32 1
  %351 = load i64, ptr %350, align 8, !tbaa !21
  %352 = udiv i64 %351, 2
  %353 = add i64 %348, %352
  %354 = getelementptr inbounds nuw double, ptr %347, i64 %353
  store double %346, ptr %354, align 8, !tbaa !23
  %355 = load i64, ptr %15, align 8, !tbaa !9
  %356 = load ptr, ptr %11, align 8, !tbaa !3
  %357 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %356, i32 0, i32 1
  %358 = load i64, ptr %357, align 8, !tbaa !21
  %359 = udiv i64 %358, 2
  %360 = add i64 %355, %359
  %361 = getelementptr inbounds nuw [128 x [144 x i8]], ptr %27, i64 0, i64 %360
  %362 = getelementptr inbounds [144 x i8], ptr %361, i64 0, i64 0
  store i8 0, ptr %362, align 1, !tbaa !20
  store i64 0, ptr %16, align 8, !tbaa !9
  br label %363

363:                                              ; preds = %383, %341
  %364 = load i64, ptr %16, align 8, !tbaa !9
  %365 = icmp ult i64 %364, 143
  br i1 %365, label %366, label %386

366:                                              ; preds = %363
  %367 = load i64, ptr %15, align 8, !tbaa !9
  %368 = mul i64 2, %367
  %369 = getelementptr inbounds nuw [128 x [143 x i8]], ptr %26, i64 0, i64 %368
  %370 = load i64, ptr %16, align 8, !tbaa !9
  %371 = getelementptr inbounds nuw [143 x i8], ptr %369, i64 0, i64 %370
  %372 = load i8, ptr %371, align 1, !tbaa !20
  %373 = load i64, ptr %15, align 8, !tbaa !9
  %374 = load ptr, ptr %11, align 8, !tbaa !3
  %375 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %374, i32 0, i32 1
  %376 = load i64, ptr %375, align 8, !tbaa !21
  %377 = udiv i64 %376, 2
  %378 = add i64 %373, %377
  %379 = getelementptr inbounds nuw [128 x [144 x i8]], ptr %27, i64 0, i64 %378
  %380 = load i64, ptr %16, align 8, !tbaa !9
  %381 = add i64 %380, 1
  %382 = getelementptr inbounds nuw [144 x i8], ptr %379, i64 0, i64 %381
  store i8 %372, ptr %382, align 1, !tbaa !20
  br label %383

383:                                              ; preds = %366
  %384 = load i64, ptr %16, align 8, !tbaa !9
  %385 = add i64 %384, 1
  store i64 %385, ptr %16, align 8, !tbaa !9
  br label %363, !llvm.loop !30

386:                                              ; preds = %363
  br label %435

387:                                              ; preds = %328
  %388 = load ptr, ptr %20, align 8, !tbaa !18
  %389 = load i64, ptr %15, align 8, !tbaa !9
  %390 = mul i64 2, %389
  %391 = add i64 %390, 1
  %392 = getelementptr inbounds nuw double, ptr %388, i64 %391
  %393 = load double, ptr %392, align 8, !tbaa !23
  %394 = load ptr, ptr %21, align 8, !tbaa !18
  %395 = load i64, ptr %15, align 8, !tbaa !9
  %396 = load ptr, ptr %11, align 8, !tbaa !3
  %397 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %396, i32 0, i32 1
  %398 = load i64, ptr %397, align 8, !tbaa !21
  %399 = udiv i64 %398, 2
  %400 = add i64 %395, %399
  %401 = getelementptr inbounds nuw double, ptr %394, i64 %400
  store double %393, ptr %401, align 8, !tbaa !23
  %402 = load i64, ptr %15, align 8, !tbaa !9
  %403 = load ptr, ptr %11, align 8, !tbaa !3
  %404 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %403, i32 0, i32 1
  %405 = load i64, ptr %404, align 8, !tbaa !21
  %406 = udiv i64 %405, 2
  %407 = add i64 %402, %406
  %408 = getelementptr inbounds nuw [128 x [144 x i8]], ptr %27, i64 0, i64 %407
  %409 = getelementptr inbounds [144 x i8], ptr %408, i64 0, i64 0
  store i8 1, ptr %409, align 1, !tbaa !20
  store i64 0, ptr %16, align 8, !tbaa !9
  br label %410

410:                                              ; preds = %431, %387
  %411 = load i64, ptr %16, align 8, !tbaa !9
  %412 = icmp ult i64 %411, 143
  br i1 %412, label %413, label %434

413:                                              ; preds = %410
  %414 = load i64, ptr %15, align 8, !tbaa !9
  %415 = mul i64 2, %414
  %416 = add i64 %415, 1
  %417 = getelementptr inbounds nuw [128 x [143 x i8]], ptr %26, i64 0, i64 %416
  %418 = load i64, ptr %16, align 8, !tbaa !9
  %419 = getelementptr inbounds nuw [143 x i8], ptr %417, i64 0, i64 %418
  %420 = load i8, ptr %419, align 1, !tbaa !20
  %421 = load i64, ptr %15, align 8, !tbaa !9
  %422 = load ptr, ptr %11, align 8, !tbaa !3
  %423 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %422, i32 0, i32 1
  %424 = load i64, ptr %423, align 8, !tbaa !21
  %425 = udiv i64 %424, 2
  %426 = add i64 %421, %425
  %427 = getelementptr inbounds nuw [128 x [144 x i8]], ptr %27, i64 0, i64 %426
  %428 = load i64, ptr %16, align 8, !tbaa !9
  %429 = add i64 %428, 1
  %430 = getelementptr inbounds nuw [144 x i8], ptr %427, i64 0, i64 %429
  store i8 %420, ptr %430, align 1, !tbaa !20
  br label %431

431:                                              ; preds = %413
  %432 = load i64, ptr %16, align 8, !tbaa !9
  %433 = add i64 %432, 1
  store i64 %433, ptr %16, align 8, !tbaa !9
  br label %410, !llvm.loop !31

434:                                              ; preds = %410
  br label %435

435:                                              ; preds = %434, %386
  br label %436

436:                                              ; preds = %435
  %437 = load i64, ptr %15, align 8, !tbaa !9
  %438 = add i64 %437, 1
  store i64 %438, ptr %15, align 8, !tbaa !9
  br label %244, !llvm.loop !32

439:                                              ; preds = %244
  store i64 0, ptr %15, align 8, !tbaa !9
  store i64 0, ptr %17, align 8, !tbaa !9
  br label %440

440:                                              ; preds = %457, %439
  %441 = load i64, ptr %15, align 8, !tbaa !9
  %442 = load ptr, ptr %11, align 8, !tbaa !3
  %443 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %442, i32 0, i32 1
  %444 = load i64, ptr %443, align 8, !tbaa !21
  %445 = icmp ult i64 %441, %444
  br i1 %445, label %446, label %460

446:                                              ; preds = %440
  %447 = load i64, ptr %15, align 8, !tbaa !9
  %448 = getelementptr inbounds nuw [128 x [144 x i8]], ptr %27, i64 0, i64 %447
  %449 = getelementptr inbounds [144 x i8], ptr %448, i64 0, i64 143
  %450 = load i8, ptr %449, align 1, !tbaa !20
  %451 = zext i8 %450 to i32
  %452 = icmp eq i32 %451, 0
  %453 = zext i1 %452 to i32
  %454 = sext i32 %453 to i64
  %455 = load i64, ptr %17, align 8, !tbaa !9
  %456 = add i64 %455, %454
  store i64 %456, ptr %17, align 8, !tbaa !9
  br label %457

457:                                              ; preds = %446
  %458 = load i64, ptr %15, align 8, !tbaa !9
  %459 = add i64 %458, 1
  store i64 %459, ptr %15, align 8, !tbaa !9
  br label %440, !llvm.loop !33

460:                                              ; preds = %440
  %461 = load i64, ptr %17, align 8, !tbaa !9
  %462 = load ptr, ptr %11, align 8, !tbaa !3
  %463 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %462, i32 0, i32 1
  %464 = load i64, ptr %463, align 8, !tbaa !21
  %465 = udiv i64 %464, 2
  %466 = icmp uge i64 %461, %465
  br i1 %466, label %467, label %474

467:                                              ; preds = %460
  %468 = load ptr, ptr %9, align 8, !tbaa !3
  %469 = getelementptr inbounds nuw %struct.bitvector, ptr %468, i32 0, i32 1
  %470 = load ptr, ptr %469, align 8, !tbaa !34
  %471 = load i64, ptr %18, align 8, !tbaa !9
  %472 = add i64 %471, 1
  store i64 %472, ptr %18, align 8, !tbaa !9
  %473 = getelementptr inbounds nuw i8, ptr %470, i64 %471
  store i8 0, ptr %473, align 1, !tbaa !20
  br label %481

474:                                              ; preds = %460
  %475 = load ptr, ptr %9, align 8, !tbaa !3
  %476 = getelementptr inbounds nuw %struct.bitvector, ptr %475, i32 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !34
  %478 = load i64, ptr %18, align 8, !tbaa !9
  %479 = add i64 %478, 1
  store i64 %479, ptr %18, align 8, !tbaa !9
  %480 = getelementptr inbounds nuw i8, ptr %477, i64 %478
  store i8 1, ptr %480, align 1, !tbaa !20
  br label %481

481:                                              ; preds = %474, %467
  store i64 0, ptr %15, align 8, !tbaa !9
  br label %482

482:                                              ; preds = %506, %481
  %483 = load i64, ptr %15, align 8, !tbaa !9
  %484 = load ptr, ptr %11, align 8, !tbaa !3
  %485 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %484, i32 0, i32 1
  %486 = load i64, ptr %485, align 8, !tbaa !21
  %487 = icmp ult i64 %483, %486
  br i1 %487, label %488, label %509

488:                                              ; preds = %482
  store i64 0, ptr %16, align 8, !tbaa !9
  br label %489

489:                                              ; preds = %502, %488
  %490 = load i64, ptr %16, align 8, !tbaa !9
  %491 = icmp ult i64 %490, 143
  br i1 %491, label %492, label %505

492:                                              ; preds = %489
  %493 = load i64, ptr %15, align 8, !tbaa !9
  %494 = getelementptr inbounds nuw [128 x [144 x i8]], ptr %27, i64 0, i64 %493
  %495 = load i64, ptr %16, align 8, !tbaa !9
  %496 = getelementptr inbounds nuw [144 x i8], ptr %494, i64 0, i64 %495
  %497 = load i8, ptr %496, align 1, !tbaa !20
  %498 = load i64, ptr %15, align 8, !tbaa !9
  %499 = getelementptr inbounds nuw [128 x [143 x i8]], ptr %26, i64 0, i64 %498
  %500 = load i64, ptr %16, align 8, !tbaa !9
  %501 = getelementptr inbounds nuw [143 x i8], ptr %499, i64 0, i64 %500
  store i8 %497, ptr %501, align 1, !tbaa !20
  br label %502

502:                                              ; preds = %492
  %503 = load i64, ptr %16, align 8, !tbaa !9
  %504 = add i64 %503, 1
  store i64 %504, ptr %16, align 8, !tbaa !9
  br label %489, !llvm.loop !35

505:                                              ; preds = %489
  br label %506

506:                                              ; preds = %505
  %507 = load i64, ptr %15, align 8, !tbaa !9
  %508 = add i64 %507, 1
  store i64 %508, ptr %15, align 8, !tbaa !9
  br label %482, !llvm.loop !36

509:                                              ; preds = %482
  %510 = load i64, ptr %14, align 8, !tbaa !9
  %511 = add i64 %510, 1
  store i64 %511, ptr %14, align 8, !tbaa !9
  %512 = load ptr, ptr %11, align 8, !tbaa !3
  %513 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %512, i32 0, i32 5
  %514 = load i64, ptr %513, align 8, !tbaa !37
  %515 = icmp eq i64 %511, %514
  br i1 %515, label %516, label %517

516:                                              ; preds = %509
  store i64 0, ptr %14, align 8, !tbaa !9
  br label %517

517:                                              ; preds = %516, %509
  br label %72, !llvm.loop !38

518:                                              ; preds = %72
  %519 = load ptr, ptr %9, align 8, !tbaa !3
  %520 = getelementptr inbounds nuw %struct.bitvector, ptr %519, i32 0, i32 1
  %521 = load ptr, ptr %520, align 8, !tbaa !34
  %522 = load i64, ptr %18, align 8, !tbaa !9
  %523 = mul i64 %522, 1
  %524 = call ptr @realloc(ptr noundef %521, i64 noundef %523) #9
  %525 = load ptr, ptr %9, align 8, !tbaa !3
  %526 = getelementptr inbounds nuw %struct.bitvector, ptr %525, i32 0, i32 1
  store ptr %524, ptr %526, align 8, !tbaa !34
  %527 = load i64, ptr %18, align 8, !tbaa !9
  %528 = load ptr, ptr %9, align 8, !tbaa !3
  %529 = getelementptr inbounds nuw %struct.bitvector, ptr %528, i32 0, i32 0
  store i64 %527, ptr %529, align 8, !tbaa !11
  %530 = load ptr, ptr %7, align 8, !tbaa !3
  %531 = getelementptr inbounds nuw %struct.dvector, ptr %530, i32 0, i32 1
  %532 = load ptr, ptr %531, align 8, !tbaa !19
  %533 = load ptr, ptr %21, align 8, !tbaa !18
  %534 = load ptr, ptr %7, align 8, !tbaa !3
  %535 = getelementptr inbounds nuw %struct.dvector, ptr %534, i32 0, i32 0
  %536 = load i64, ptr %535, align 8, !tbaa !15
  %537 = mul i64 %536, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %532, ptr align 8 %533, i64 %537, i1 false)
  %538 = load ptr, ptr %8, align 8, !tbaa !7
  %539 = getelementptr inbounds [128 x [143 x i8]], ptr %26, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %538, ptr align 1 %539, i64 18304, i1 false)
  %540 = load ptr, ptr %21, align 8, !tbaa !18
  call void @free(ptr noundef %540) #7
  %541 = load ptr, ptr %19, align 8, !tbaa !18
  call void @free(ptr noundef %541) #7
  %542 = load ptr, ptr %20, align 8, !tbaa !18
  call void @free(ptr noundef %542) #7
  call void @llvm.lifetime.end.p0(i64 18432, ptr %27) #7
  call void @llvm.lifetime.end.p0(i64 18304, ptr %26) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %25) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %24) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %23) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %22) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %21) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %20) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %19) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint nounwind
define internal void @bitvector_clear(ptr noundef %0) #2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8, !tbaa !3
  %4 = getelementptr inbounds nuw %struct.bitvector, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @free(ptr noundef %5) #7
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.bitvector, ptr %6, i32 0, i32 0
  store i64 0, ptr %7, align 8, !tbaa !11
  %8 = load ptr, ptr %2, align 8, !tbaa !3
  %9 = getelementptr inbounds nuw %struct.bitvector, ptr %8, i32 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !34
  ret void
}

; Function Attrs: inlinehint nounwind
define internal void @bitvector_init(ptr noundef %0, i64 noundef %1) #2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i64 %1, ptr %4, align 8, !tbaa !9
  %5 = load i64, ptr %4, align 8, !tbaa !9
  %6 = load ptr, ptr %3, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.bitvector, ptr %6, i32 0, i32 0
  store i64 %5, ptr %7, align 8, !tbaa !11
  %8 = load i64, ptr %4, align 8, !tbaa !9
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i64, ptr %4, align 8, !tbaa !9
  %12 = mul i64 %11, 1
  %13 = call noalias ptr @malloc(i64 noundef %12) #8
  %14 = load ptr, ptr %3, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.bitvector, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !34
  %16 = load ptr, ptr %3, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.bitvector, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = load i64, ptr %4, align 8, !tbaa !9
  %20 = mul i64 %19, 1
  call void @llvm.memset.p0.i64(ptr align 1 %18, i8 0, i64 %20, i1 false)
  br label %24

21:                                               ; preds = %2
  %22 = load ptr, ptr %3, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct.bitvector, ptr %22, i32 0, i32 1
  store ptr null, ptr %23, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %21, %10
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #5

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(1) }

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
!10 = !{!"long", !5, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"", !10, i64 0, !8, i64 8}
!13 = !{!14, !4, i64 8}
!14 = !{!"", !10, i64 0, !4, i64 8}
!15 = !{!16, !10, i64 0}
!16 = !{!"", !10, i64 0, !17, i64 8}
!17 = !{!"p1 double", !4, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!16, !17, i64 8}
!20 = !{!5, !5, i64 0}
!21 = !{!22, !10, i64 8}
!22 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !5, i64 31, !10, i64 40, !5, i64 48, !5, i64 176, !5, i64 304, !5, i64 1328}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !5, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
!31 = distinct !{!31, !26}
!32 = distinct !{!32, !26}
!33 = distinct !{!33, !26}
!34 = !{!12, !8, i64 8}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !26}
!37 = !{!22, !10, i64 40}
!38 = distinct !{!38, !26}
