; ModuleID = './MultiSource/Applications/SIBsim4/CMakeFiles/SIBsim4.dir/sim4b1.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/SIBsim4/sim4b1.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct._options_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._collec_t = type { %union._collec_elt_t, i32, i32 }
%union._collec_elt_t = type { ptr }
%struct._hash_env_t = type { ptr, ptr, i32, ptr, i32, i32 }
%struct._seq_t = type { ptr, ptr, ptr, %struct._read_buf_t, i32, i32, i32, i32 }
%struct._read_buf_t = type { ptr, i32, i32, i32, [4096 x i8] }
%struct._result_t = type { ptr, %struct._collec_t, i32, i32, i32, %struct._sim4_stats }
%struct._sim4_stats = type { i32, i32, i32 }
%struct._exon_t = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.anon = type { i32, i32, i32 }
%struct._splice_score_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct._edit_script_list = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct._edit_script = type { ptr, i32, i8 }
%struct._hash_node_t = type { i32, i32 }
%struct._junction_t = type { [4 x i8], [4 x i8] }
%struct.anon.0 = type { i32, i32 }

@options = external global %struct._options_t, align 8
@encoding = dso_local global [128 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"%u-%u  (%u-%u)   %u%% ==\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%u-%u  (%u-%u)   %u%% %s (%.2s/%.2s) %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%u-%u  (%u-%u)   %u%%\0A\00", align 1

; Function Attrs: nounwind
define dso_local void @SIM4(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct._collec_t, align 8
  %8 = alloca %struct._collec_t, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct._hash_env_t, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct._hash_env_t, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct._hash_env_t, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca ptr, align 8
  %40 = alloca i32, align 4
  %41 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !8
  store ptr %2, ptr %6, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  %42 = load ptr, ptr %4, align 8, !tbaa !3
  %43 = getelementptr inbounds nuw %struct._hash_env_t, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %3
  %47 = load ptr, ptr %5, align 8, !tbaa !8
  %48 = getelementptr inbounds nuw %struct._seq_t, ptr %47, i32 0, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !18
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %3
  store i32 1, ptr %11, align 4
  br label %1146

52:                                               ; preds = %46
  call void @init_col(ptr noundef %7, i32 noundef signext 5)
  %53 = load ptr, ptr %4, align 8, !tbaa !3
  %54 = load ptr, ptr %5, align 8, !tbaa !8
  %55 = getelementptr inbounds nuw %struct._seq_t, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !21
  %57 = load ptr, ptr %5, align 8, !tbaa !8
  %58 = getelementptr inbounds nuw %struct._seq_t, ptr %57, i32 0, i32 5
  %59 = load i32, ptr %58, align 4, !tbaa !18
  %60 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 8), align 8, !tbaa !22
  %61 = load ptr, ptr %6, align 8, !tbaa !10
  call void @exon_cores(ptr noundef %53, ptr noundef %56, i32 noundef signext %59, i32 noundef signext 1, i32 noundef signext 1, i32 noundef signext %60, ptr noundef %7, ptr noundef %61, ptr noundef null)
  call void @init_col(ptr noundef %8, i32 noundef signext 0)
  store i32 0, ptr %10, align 4, !tbaa !25
  br label %62

62:                                               ; preds = %1138, %52
  %63 = load i32, ptr %10, align 4, !tbaa !25
  %64 = load ptr, ptr %6, align 8, !tbaa !10
  %65 = getelementptr inbounds nuw %struct._collec_t, ptr %64, i32 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !26
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %1141

68:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #8
  %69 = load ptr, ptr %6, align 8, !tbaa !10
  %70 = getelementptr inbounds nuw %struct._collec_t, ptr %69, i32 0, i32 0
  %71 = load ptr, ptr %70, align 8, !tbaa !28
  %72 = load i32, ptr %10, align 4, !tbaa !25
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds nuw ptr, ptr %71, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !29
  store ptr %75, ptr %12, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #8
  %76 = load ptr, ptr %12, align 8, !tbaa !29
  %77 = getelementptr inbounds nuw %struct._result_t, ptr %76, i32 0, i32 1
  store ptr %77, ptr %13, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #8
  %78 = load ptr, ptr %12, align 8, !tbaa !29
  %79 = getelementptr inbounds nuw %struct._result_t, ptr %78, i32 0, i32 5
  store ptr %79, ptr %14, align 8, !tbaa !31
  %80 = load ptr, ptr %14, align 8, !tbaa !31
  %81 = getelementptr inbounds nuw %struct._sim4_stats, ptr %80, i32 0, i32 1
  store i32 0, ptr %81, align 4, !tbaa !33
  %82 = load ptr, ptr %14, align 8, !tbaa !31
  %83 = getelementptr inbounds nuw %struct._sim4_stats, ptr %82, i32 0, i32 2
  store i32 0, ptr %83, align 4, !tbaa !35
  %84 = load ptr, ptr %12, align 8, !tbaa !29
  %85 = load ptr, ptr %4, align 8, !tbaa !3
  %86 = getelementptr inbounds nuw %struct._hash_env_t, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !36
  %88 = load ptr, ptr %5, align 8, !tbaa !8
  %89 = getelementptr inbounds nuw %struct._seq_t, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !21
  call void @kill_polyA(ptr noundef %84, ptr noundef %87, ptr noundef %90)
  %91 = load ptr, ptr %13, align 8, !tbaa !10
  %92 = getelementptr inbounds nuw %struct._collec_t, ptr %91, i32 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !26
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %68
  store i32 4, ptr %11, align 4
  br label %1135

96:                                               ; preds = %68
  %97 = load ptr, ptr %14, align 8, !tbaa !31
  %98 = getelementptr inbounds nuw %struct._sim4_stats, ptr %97, i32 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !35
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %393, label %101

101:                                              ; preds = %96
  %102 = load ptr, ptr %13, align 8, !tbaa !10
  %103 = getelementptr inbounds nuw %struct._collec_t, ptr %102, i32 0, i32 0
  %104 = load ptr, ptr %103, align 8, !tbaa !28
  %105 = getelementptr inbounds ptr, ptr %104, i64 0
  %106 = load ptr, ptr %105, align 8, !tbaa !37
  %107 = getelementptr inbounds nuw %struct._exon_t, ptr %106, i32 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !39
  %109 = icmp ugt i32 %108, 1
  br i1 %109, label %110, label %393

110:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #8
  %111 = load ptr, ptr %13, align 8, !tbaa !10
  %112 = getelementptr inbounds nuw %struct._collec_t, ptr %111, i32 0, i32 0
  %113 = load ptr, ptr %112, align 8, !tbaa !28
  %114 = getelementptr inbounds ptr, ptr %113, i64 0
  %115 = load ptr, ptr %114, align 8, !tbaa !37
  store ptr %115, ptr %15, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  store i32 0, ptr %16, align 4, !tbaa !25
  %116 = load ptr, ptr %15, align 8, !tbaa !37
  %117 = getelementptr inbounds nuw %struct._exon_t, ptr %116, i32 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !39
  %119 = sub i32 %118, 1
  %120 = icmp ugt i32 %119, 60
  br i1 %120, label %121, label %205

121:                                              ; preds = %110
  %122 = load ptr, ptr %15, align 8, !tbaa !37
  %123 = getelementptr inbounds nuw %struct._exon_t, ptr %122, i32 0, i32 0
  %124 = load i32, ptr %123, align 4, !tbaa !41
  %125 = sub i32 %124, 1
  %126 = load ptr, ptr %12, align 8, !tbaa !29
  %127 = getelementptr inbounds nuw %struct._result_t, ptr %126, i32 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !42
  %129 = icmp ugt i32 %125, %128
  br i1 %129, label %130, label %205

130:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 40, ptr %17) #8
  %131 = load ptr, ptr %4, align 8, !tbaa !3
  %132 = getelementptr inbounds nuw %struct._hash_env_t, ptr %131, i32 0, i32 5
  %133 = load i32, ptr %132, align 4, !tbaa !45
  %134 = icmp ugt i32 10, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load ptr, ptr %4, align 8, !tbaa !3
  %137 = getelementptr inbounds nuw %struct._hash_env_t, ptr %136, i32 0, i32 5
  %138 = load i32, ptr %137, align 4, !tbaa !45
  br label %140

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139, %135
  %141 = phi i32 [ %138, %135 ], [ 10, %139 ]
  %142 = load ptr, ptr %5, align 8, !tbaa !8
  %143 = getelementptr inbounds nuw %struct._seq_t, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !21
  %145 = load ptr, ptr %15, align 8, !tbaa !37
  %146 = getelementptr inbounds nuw %struct._exon_t, ptr %145, i32 0, i32 1
  %147 = load i32, ptr %146, align 4, !tbaa !39
  %148 = sub i32 %147, 1
  call void @init_hash_env(ptr noundef %17, i32 noundef signext %141, ptr noundef %144, i32 noundef signext %148)
  call void @bld_table(ptr noundef %17)
  %149 = load ptr, ptr %4, align 8, !tbaa !3
  %150 = getelementptr inbounds nuw %struct._hash_env_t, ptr %149, i32 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !36
  %152 = load ptr, ptr %12, align 8, !tbaa !29
  %153 = getelementptr inbounds nuw %struct._result_t, ptr %152, i32 0, i32 2
  %154 = load i32, ptr %153, align 8, !tbaa !42
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds nuw i8, ptr %151, i64 %155
  %157 = load ptr, ptr %15, align 8, !tbaa !37
  %158 = getelementptr inbounds nuw %struct._exon_t, ptr %157, i32 0, i32 0
  %159 = load i32, ptr %158, align 4, !tbaa !41
  %160 = load ptr, ptr %12, align 8, !tbaa !29
  %161 = getelementptr inbounds nuw %struct._result_t, ptr %160, i32 0, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !42
  %163 = sub i32 %159, %162
  %164 = sub i32 %163, 1
  %165 = load ptr, ptr %12, align 8, !tbaa !29
  %166 = getelementptr inbounds nuw %struct._result_t, ptr %165, i32 0, i32 2
  %167 = load i32, ptr %166, align 8, !tbaa !42
  %168 = add i32 %167, 1
  %169 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 4), align 8, !tbaa !46
  call void @exon_cores(ptr noundef %17, ptr noundef %156, i32 noundef signext %164, i32 noundef signext 1, i32 noundef signext %168, i32 noundef signext %169, ptr noundef %7, ptr noundef null, ptr noundef %8)
  call void @free_hash_env(ptr noundef %17)
  %170 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  %171 = load i32, ptr %170, align 8, !tbaa !26
  %172 = icmp ugt i32 %171, 0
  br i1 %172, label %173, label %204

173:                                              ; preds = %140
  call void @swap_seqs(ptr noundef %8)
  %174 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 0
  %175 = load ptr, ptr %174, align 8, !tbaa !28
  %176 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !26
  %178 = sub i32 %177, 1
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds nuw ptr, ptr %175, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !37
  %182 = load ptr, ptr %4, align 8, !tbaa !3
  %183 = getelementptr inbounds nuw %struct._hash_env_t, ptr %182, i32 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !36
  %185 = load ptr, ptr %4, align 8, !tbaa !3
  %186 = getelementptr inbounds nuw %struct._hash_env_t, ptr %185, i32 0, i32 2
  %187 = load i32, ptr %186, align 8, !tbaa !12
  %188 = load ptr, ptr %5, align 8, !tbaa !8
  %189 = getelementptr inbounds nuw %struct._seq_t, ptr %188, i32 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !21
  %191 = load ptr, ptr %5, align 8, !tbaa !8
  %192 = getelementptr inbounds nuw %struct._seq_t, ptr %191, i32 0, i32 5
  %193 = load i32, ptr %192, align 4, !tbaa !18
  call void @grow_exon_right(ptr noundef %181, ptr noundef %184, i32 noundef signext %187, ptr noundef %190, i32 noundef signext %193)
  %194 = load ptr, ptr %13, align 8, !tbaa !10
  %195 = load ptr, ptr %4, align 8, !tbaa !3
  %196 = getelementptr inbounds nuw %struct._hash_env_t, ptr %195, i32 0, i32 5
  %197 = load i32, ptr %196, align 4, !tbaa !45
  call void @merge(ptr noundef %194, ptr noundef %8, i32 noundef signext 0, i32 noundef signext %197)
  %198 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  store i32 0, ptr %198, align 8, !tbaa !26
  %199 = load ptr, ptr %13, align 8, !tbaa !10
  %200 = getelementptr inbounds nuw %struct._collec_t, ptr %199, i32 0, i32 0
  %201 = load ptr, ptr %200, align 8, !tbaa !28
  %202 = getelementptr inbounds ptr, ptr %201, i64 0
  %203 = load ptr, ptr %202, align 8, !tbaa !37
  store ptr %203, ptr %15, align 8, !tbaa !37
  br label %204

204:                                              ; preds = %173, %140
  call void @llvm.lifetime.end.p0(i64 40, ptr %17) #8
  br label %205

205:                                              ; preds = %204, %121, %110
  br label %206

206:                                              ; preds = %227, %205
  %207 = load i32, ptr %16, align 4, !tbaa !25
  %208 = load ptr, ptr %13, align 8, !tbaa !10
  %209 = getelementptr inbounds nuw %struct._collec_t, ptr %208, i32 0, i32 1
  %210 = load i32, ptr %209, align 8, !tbaa !26
  %211 = icmp ult i32 %207, %210
  br i1 %211, label %212, label %225

212:                                              ; preds = %206
  %213 = load ptr, ptr %13, align 8, !tbaa !10
  %214 = getelementptr inbounds nuw %struct._collec_t, ptr %213, i32 0, i32 0
  %215 = load ptr, ptr %214, align 8, !tbaa !28
  %216 = load i32, ptr %16, align 4, !tbaa !25
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds nuw ptr, ptr %215, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !37
  %220 = load ptr, ptr %5, align 8, !tbaa !8
  %221 = getelementptr inbounds nuw %struct._seq_t, ptr %220, i32 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !21
  %223 = call signext i32 @is_polyAT_exon_p(ptr noundef %219, ptr noundef %222)
  %224 = icmp ne i32 %223, 0
  br label %225

225:                                              ; preds = %212, %206
  %226 = phi i1 [ false, %206 ], [ %224, %212 ]
  br i1 %226, label %227, label %230

227:                                              ; preds = %225
  %228 = load i32, ptr %16, align 4, !tbaa !25
  %229 = add i32 %228, 1
  store i32 %229, ptr %16, align 4, !tbaa !25
  br label %206, !llvm.loop !47

230:                                              ; preds = %225
  %231 = load i32, ptr %16, align 4, !tbaa !25
  %232 = icmp ugt i32 %231, 0
  br i1 %232, label %233, label %285

233:                                              ; preds = %230
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  store i32 0, ptr %18, align 4, !tbaa !25
  br label %234

234:                                              ; preds = %246, %233
  %235 = load i32, ptr %18, align 4, !tbaa !25
  %236 = load i32, ptr %16, align 4, !tbaa !25
  %237 = icmp ult i32 %235, %236
  br i1 %237, label %238, label %249

238:                                              ; preds = %234
  %239 = load ptr, ptr %13, align 8, !tbaa !10
  %240 = getelementptr inbounds nuw %struct._collec_t, ptr %239, i32 0, i32 0
  %241 = load ptr, ptr %240, align 8, !tbaa !28
  %242 = load i32, ptr %18, align 4, !tbaa !25
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds nuw ptr, ptr %241, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !37
  call void @free(ptr noundef %245) #8
  br label %246

246:                                              ; preds = %238
  %247 = load i32, ptr %18, align 4, !tbaa !25
  %248 = add i32 %247, 1
  store i32 %248, ptr %18, align 4, !tbaa !25
  br label %234, !llvm.loop !49

249:                                              ; preds = %234
  %250 = load ptr, ptr %13, align 8, !tbaa !10
  %251 = getelementptr inbounds nuw %struct._collec_t, ptr %250, i32 0, i32 0
  %252 = load ptr, ptr %251, align 8, !tbaa !28
  %253 = load ptr, ptr %13, align 8, !tbaa !10
  %254 = getelementptr inbounds nuw %struct._collec_t, ptr %253, i32 0, i32 0
  %255 = load ptr, ptr %254, align 8, !tbaa !28
  %256 = load i32, ptr %16, align 4, !tbaa !25
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds nuw ptr, ptr %255, i64 %257
  %259 = load ptr, ptr %13, align 8, !tbaa !10
  %260 = getelementptr inbounds nuw %struct._collec_t, ptr %259, i32 0, i32 1
  %261 = load i32, ptr %260, align 8, !tbaa !26
  %262 = load i32, ptr %16, align 4, !tbaa !25
  %263 = sub i32 %261, %262
  %264 = zext i32 %263 to i64
  %265 = mul i64 %264, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %252, ptr align 8 %258, i64 %265, i1 false)
  %266 = load i32, ptr %16, align 4, !tbaa !25
  %267 = load ptr, ptr %13, align 8, !tbaa !10
  %268 = getelementptr inbounds nuw %struct._collec_t, ptr %267, i32 0, i32 1
  %269 = load i32, ptr %268, align 8, !tbaa !26
  %270 = sub i32 %269, %266
  store i32 %270, ptr %268, align 8, !tbaa !26
  %271 = load ptr, ptr %13, align 8, !tbaa !10
  %272 = getelementptr inbounds nuw %struct._collec_t, ptr %271, i32 0, i32 1
  %273 = load i32, ptr %272, align 8, !tbaa !26
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %249
  store i32 4, ptr %11, align 4
  br label %282

276:                                              ; preds = %249
  %277 = load ptr, ptr %13, align 8, !tbaa !10
  %278 = getelementptr inbounds nuw %struct._collec_t, ptr %277, i32 0, i32 0
  %279 = load ptr, ptr %278, align 8, !tbaa !28
  %280 = getelementptr inbounds ptr, ptr %279, i64 0
  %281 = load ptr, ptr %280, align 8, !tbaa !37
  store ptr %281, ptr %15, align 8, !tbaa !37
  store i32 0, ptr %11, align 4
  br label %282

282:                                              ; preds = %276, %275
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  %283 = load i32, ptr %11, align 4
  switch i32 %283, label %390 [
    i32 0, label %284
  ]

284:                                              ; preds = %282
  br label %285

285:                                              ; preds = %284, %230
  %286 = load ptr, ptr %15, align 8, !tbaa !37
  %287 = getelementptr inbounds nuw %struct._exon_t, ptr %286, i32 0, i32 1
  %288 = load i32, ptr %287, align 4, !tbaa !39
  %289 = sub i32 %288, 1
  %290 = icmp ugt i32 %289, 0
  br i1 %290, label %291, label %389

291:                                              ; preds = %285
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  %292 = load ptr, ptr %15, align 8, !tbaa !37
  %293 = getelementptr inbounds nuw %struct._exon_t, ptr %292, i32 0, i32 1
  %294 = load i32, ptr %293, align 4, !tbaa !39
  %295 = sub i32 %294, 1
  %296 = icmp ugt i32 %295, 250
  br i1 %296, label %297, label %298

297:                                              ; preds = %291
  br label %303

298:                                              ; preds = %291
  %299 = load ptr, ptr %15, align 8, !tbaa !37
  %300 = getelementptr inbounds nuw %struct._exon_t, ptr %299, i32 0, i32 1
  %301 = load i32, ptr %300, align 4, !tbaa !39
  %302 = sub i32 %301, 1
  br label %303

303:                                              ; preds = %298, %297
  %304 = phi i32 [ 250, %297 ], [ %302, %298 ]
  store i32 %304, ptr %19, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8
  %305 = load i32, ptr %19, align 4, !tbaa !25
  %306 = mul nsw i32 4, %305
  %307 = load ptr, ptr %15, align 8, !tbaa !37
  %308 = getelementptr inbounds nuw %struct._exon_t, ptr %307, i32 0, i32 0
  %309 = load i32, ptr %308, align 4, !tbaa !41
  %310 = sub nsw i32 %309, 1
  %311 = icmp sgt i32 %306, %310
  br i1 %311, label %312, label %317

312:                                              ; preds = %303
  %313 = load ptr, ptr %15, align 8, !tbaa !37
  %314 = getelementptr inbounds nuw %struct._exon_t, ptr %313, i32 0, i32 0
  %315 = load i32, ptr %314, align 4, !tbaa !41
  %316 = sub nsw i32 %315, 1
  br label %320

317:                                              ; preds = %303
  %318 = load i32, ptr %19, align 4, !tbaa !25
  %319 = mul nsw i32 4, %318
  br label %320

320:                                              ; preds = %317, %312
  %321 = phi i32 [ %316, %312 ], [ %319, %317 ]
  store i32 %321, ptr %20, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #8
  %322 = load ptr, ptr %5, align 8, !tbaa !8
  %323 = getelementptr inbounds nuw %struct._seq_t, ptr %322, i32 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !21
  %325 = load ptr, ptr %15, align 8, !tbaa !37
  %326 = getelementptr inbounds nuw %struct._exon_t, ptr %325, i32 0, i32 1
  %327 = load i32, ptr %326, align 4, !tbaa !39
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds nuw i8, ptr %324, i64 %328
  %330 = getelementptr inbounds i8, ptr %329, i64 -1
  %331 = load i32, ptr %19, align 4, !tbaa !25
  %332 = sext i32 %331 to i64
  %333 = sub i64 0, %332
  %334 = getelementptr inbounds i8, ptr %330, i64 %333
  %335 = load ptr, ptr %4, align 8, !tbaa !3
  %336 = getelementptr inbounds nuw %struct._hash_env_t, ptr %335, i32 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !36
  %338 = load ptr, ptr %15, align 8, !tbaa !37
  %339 = getelementptr inbounds nuw %struct._exon_t, ptr %338, i32 0, i32 0
  %340 = load i32, ptr %339, align 4, !tbaa !41
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds nuw i8, ptr %337, i64 %341
  %343 = getelementptr inbounds i8, ptr %342, i64 -1
  %344 = load i32, ptr %20, align 4, !tbaa !25
  %345 = sext i32 %344 to i64
  %346 = sub i64 0, %345
  %347 = getelementptr inbounds i8, ptr %343, i64 %346
  %348 = load i32, ptr %19, align 4, !tbaa !25
  %349 = load i32, ptr %20, align 4, !tbaa !25
  %350 = load ptr, ptr %15, align 8, !tbaa !37
  %351 = getelementptr inbounds nuw %struct._exon_t, ptr %350, i32 0, i32 1
  %352 = load i32, ptr %351, align 4, !tbaa !39
  %353 = sub i32 %352, 1
  %354 = load i32, ptr %19, align 4, !tbaa !25
  %355 = sub i32 %353, %354
  %356 = load ptr, ptr %15, align 8, !tbaa !37
  %357 = getelementptr inbounds nuw %struct._exon_t, ptr %356, i32 0, i32 0
  %358 = load i32, ptr %357, align 4, !tbaa !41
  %359 = sub i32 %358, 1
  %360 = load i32, ptr %20, align 4, !tbaa !25
  %361 = sub i32 %359, %360
  %362 = load ptr, ptr %4, align 8, !tbaa !3
  %363 = getelementptr inbounds nuw %struct._hash_env_t, ptr %362, i32 0, i32 5
  %364 = load i32, ptr %363, align 4, !tbaa !45
  %365 = call signext i32 @extend_bw(ptr noundef %334, ptr noundef %347, i32 noundef signext %348, i32 noundef signext %349, i32 noundef signext %355, i32 noundef signext %361, ptr noundef %21, ptr noundef %22, i32 noundef signext %364)
  store i32 %365, ptr %23, align 4, !tbaa !25
  %366 = load ptr, ptr %15, align 8, !tbaa !37
  %367 = getelementptr inbounds nuw %struct._exon_t, ptr %366, i32 0, i32 1
  %368 = load i32, ptr %367, align 4, !tbaa !39
  %369 = sub nsw i32 %368, 1
  %370 = load i32, ptr %21, align 4, !tbaa !25
  %371 = sub nsw i32 %369, %370
  %372 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 12), align 8, !tbaa !50
  %373 = mul nsw i32 %371, %372
  %374 = load i32, ptr %23, align 4, !tbaa !25
  %375 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 10), align 8, !tbaa !51
  %376 = mul nsw i32 %374, %375
  %377 = add nsw i32 %373, %376
  %378 = icmp sge i32 %377, 0
  br i1 %378, label %379, label %388

379:                                              ; preds = %320
  %380 = load i32, ptr %21, align 4, !tbaa !25
  %381 = add nsw i32 %380, 1
  %382 = load ptr, ptr %15, align 8, !tbaa !37
  %383 = getelementptr inbounds nuw %struct._exon_t, ptr %382, i32 0, i32 1
  store i32 %381, ptr %383, align 4, !tbaa !39
  %384 = load i32, ptr %22, align 4, !tbaa !25
  %385 = add nsw i32 %384, 1
  %386 = load ptr, ptr %15, align 8, !tbaa !37
  %387 = getelementptr inbounds nuw %struct._exon_t, ptr %386, i32 0, i32 0
  store i32 %385, ptr %387, align 4, !tbaa !41
  br label %388

388:                                              ; preds = %379, %320
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  br label %389

389:                                              ; preds = %388, %285
  store i32 0, ptr %11, align 4
  br label %390

390:                                              ; preds = %389, %282
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #8
  %391 = load i32, ptr %11, align 4
  switch i32 %391, label %1135 [
    i32 0, label %392
  ]

392:                                              ; preds = %390
  br label %393

393:                                              ; preds = %392, %101, %96
  %394 = load ptr, ptr %14, align 8, !tbaa !31
  %395 = getelementptr inbounds nuw %struct._sim4_stats, ptr %394, i32 0, i32 1
  %396 = load i32, ptr %395, align 4, !tbaa !33
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %718, label %398

398:                                              ; preds = %393
  %399 = load ptr, ptr %13, align 8, !tbaa !10
  %400 = getelementptr inbounds nuw %struct._collec_t, ptr %399, i32 0, i32 0
  %401 = load ptr, ptr %400, align 8, !tbaa !28
  %402 = load ptr, ptr %13, align 8, !tbaa !10
  %403 = getelementptr inbounds nuw %struct._collec_t, ptr %402, i32 0, i32 1
  %404 = load i32, ptr %403, align 8, !tbaa !26
  %405 = sub i32 %404, 1
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds nuw ptr, ptr %401, i64 %406
  %408 = load ptr, ptr %407, align 8, !tbaa !37
  %409 = getelementptr inbounds nuw %struct._exon_t, ptr %408, i32 0, i32 3
  %410 = load i32, ptr %409, align 4, !tbaa !52
  %411 = load ptr, ptr %5, align 8, !tbaa !8
  %412 = getelementptr inbounds nuw %struct._seq_t, ptr %411, i32 0, i32 5
  %413 = load i32, ptr %412, align 4, !tbaa !18
  %414 = icmp ult i32 %410, %413
  br i1 %414, label %415, label %718

415:                                              ; preds = %398
  call void @llvm.lifetime.start.p0(i64 8, ptr %24) #8
  %416 = load ptr, ptr %13, align 8, !tbaa !10
  %417 = getelementptr inbounds nuw %struct._collec_t, ptr %416, i32 0, i32 0
  %418 = load ptr, ptr %417, align 8, !tbaa !28
  %419 = load ptr, ptr %13, align 8, !tbaa !10
  %420 = getelementptr inbounds nuw %struct._collec_t, ptr %419, i32 0, i32 1
  %421 = load i32, ptr %420, align 8, !tbaa !26
  %422 = sub i32 %421, 1
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds nuw ptr, ptr %418, i64 %423
  %425 = load ptr, ptr %424, align 8, !tbaa !37
  store ptr %425, ptr %24, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8
  store i32 0, ptr %25, align 4, !tbaa !25
  %426 = load ptr, ptr %5, align 8, !tbaa !8
  %427 = getelementptr inbounds nuw %struct._seq_t, ptr %426, i32 0, i32 5
  %428 = load i32, ptr %427, align 4, !tbaa !18
  %429 = load ptr, ptr %24, align 8, !tbaa !37
  %430 = getelementptr inbounds nuw %struct._exon_t, ptr %429, i32 0, i32 3
  %431 = load i32, ptr %430, align 4, !tbaa !52
  %432 = sub i32 %428, %431
  %433 = icmp ugt i32 %432, 60
  br i1 %433, label %434, label %534

434:                                              ; preds = %415
  %435 = load ptr, ptr %24, align 8, !tbaa !37
  %436 = getelementptr inbounds nuw %struct._exon_t, ptr %435, i32 0, i32 2
  %437 = load i32, ptr %436, align 4, !tbaa !53
  %438 = load ptr, ptr %12, align 8, !tbaa !29
  %439 = getelementptr inbounds nuw %struct._result_t, ptr %438, i32 0, i32 2
  %440 = load i32, ptr %439, align 8, !tbaa !42
  %441 = load ptr, ptr %12, align 8, !tbaa !29
  %442 = getelementptr inbounds nuw %struct._result_t, ptr %441, i32 0, i32 3
  %443 = load i32, ptr %442, align 4, !tbaa !54
  %444 = add i32 %440, %443
  %445 = icmp ult i32 %437, %444
  br i1 %445, label %446, label %534

446:                                              ; preds = %434
  call void @llvm.lifetime.start.p0(i64 40, ptr %26) #8
  %447 = load ptr, ptr %4, align 8, !tbaa !3
  %448 = getelementptr inbounds nuw %struct._hash_env_t, ptr %447, i32 0, i32 5
  %449 = load i32, ptr %448, align 4, !tbaa !45
  %450 = icmp ugt i32 10, %449
  br i1 %450, label %451, label %455

451:                                              ; preds = %446
  %452 = load ptr, ptr %4, align 8, !tbaa !3
  %453 = getelementptr inbounds nuw %struct._hash_env_t, ptr %452, i32 0, i32 5
  %454 = load i32, ptr %453, align 4, !tbaa !45
  br label %456

455:                                              ; preds = %446
  br label %456

456:                                              ; preds = %455, %451
  %457 = phi i32 [ %454, %451 ], [ 10, %455 ]
  %458 = load ptr, ptr %5, align 8, !tbaa !8
  %459 = getelementptr inbounds nuw %struct._seq_t, ptr %458, i32 0, i32 2
  %460 = load ptr, ptr %459, align 8, !tbaa !21
  %461 = load ptr, ptr %24, align 8, !tbaa !37
  %462 = getelementptr inbounds nuw %struct._exon_t, ptr %461, i32 0, i32 3
  %463 = load i32, ptr %462, align 4, !tbaa !52
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds nuw i8, ptr %460, i64 %464
  %466 = load ptr, ptr %5, align 8, !tbaa !8
  %467 = getelementptr inbounds nuw %struct._seq_t, ptr %466, i32 0, i32 5
  %468 = load i32, ptr %467, align 4, !tbaa !18
  %469 = load ptr, ptr %24, align 8, !tbaa !37
  %470 = getelementptr inbounds nuw %struct._exon_t, ptr %469, i32 0, i32 3
  %471 = load i32, ptr %470, align 4, !tbaa !52
  %472 = sub i32 %468, %471
  call void @init_hash_env(ptr noundef %26, i32 noundef signext %457, ptr noundef %465, i32 noundef signext %472)
  call void @bld_table(ptr noundef %26)
  %473 = load ptr, ptr %4, align 8, !tbaa !3
  %474 = getelementptr inbounds nuw %struct._hash_env_t, ptr %473, i32 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !36
  %476 = load ptr, ptr %24, align 8, !tbaa !37
  %477 = getelementptr inbounds nuw %struct._exon_t, ptr %476, i32 0, i32 2
  %478 = load i32, ptr %477, align 4, !tbaa !53
  %479 = zext i32 %478 to i64
  %480 = getelementptr inbounds nuw i8, ptr %475, i64 %479
  %481 = load ptr, ptr %12, align 8, !tbaa !29
  %482 = getelementptr inbounds nuw %struct._result_t, ptr %481, i32 0, i32 2
  %483 = load i32, ptr %482, align 8, !tbaa !42
  %484 = load ptr, ptr %12, align 8, !tbaa !29
  %485 = getelementptr inbounds nuw %struct._result_t, ptr %484, i32 0, i32 3
  %486 = load i32, ptr %485, align 4, !tbaa !54
  %487 = add i32 %483, %486
  %488 = load ptr, ptr %24, align 8, !tbaa !37
  %489 = getelementptr inbounds nuw %struct._exon_t, ptr %488, i32 0, i32 2
  %490 = load i32, ptr %489, align 4, !tbaa !53
  %491 = sub i32 %487, %490
  %492 = load ptr, ptr %24, align 8, !tbaa !37
  %493 = getelementptr inbounds nuw %struct._exon_t, ptr %492, i32 0, i32 3
  %494 = load i32, ptr %493, align 4, !tbaa !52
  %495 = add i32 %494, 1
  %496 = load ptr, ptr %24, align 8, !tbaa !37
  %497 = getelementptr inbounds nuw %struct._exon_t, ptr %496, i32 0, i32 2
  %498 = load i32, ptr %497, align 4, !tbaa !53
  %499 = add i32 %498, 1
  %500 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 4), align 8, !tbaa !46
  call void @exon_cores(ptr noundef %26, ptr noundef %480, i32 noundef signext %491, i32 noundef signext %495, i32 noundef signext %499, i32 noundef signext %500, ptr noundef %7, ptr noundef null, ptr noundef %8)
  call void @free_hash_env(ptr noundef %26)
  %501 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  %502 = load i32, ptr %501, align 8, !tbaa !26
  %503 = icmp ugt i32 %502, 0
  br i1 %503, label %504, label %533

504:                                              ; preds = %456
  call void @swap_seqs(ptr noundef %8)
  %505 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 0
  %506 = load ptr, ptr %505, align 8, !tbaa !28
  %507 = getelementptr inbounds ptr, ptr %506, i64 0
  %508 = load ptr, ptr %507, align 8, !tbaa !37
  %509 = load ptr, ptr %4, align 8, !tbaa !3
  %510 = getelementptr inbounds nuw %struct._hash_env_t, ptr %509, i32 0, i32 1
  %511 = load ptr, ptr %510, align 8, !tbaa !36
  %512 = load ptr, ptr %5, align 8, !tbaa !8
  %513 = getelementptr inbounds nuw %struct._seq_t, ptr %512, i32 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !21
  call void @grow_exon_left(ptr noundef %508, ptr noundef %511, ptr noundef %514)
  %515 = load ptr, ptr %13, align 8, !tbaa !10
  %516 = load ptr, ptr %13, align 8, !tbaa !10
  %517 = getelementptr inbounds nuw %struct._collec_t, ptr %516, i32 0, i32 1
  %518 = load i32, ptr %517, align 8, !tbaa !26
  %519 = load ptr, ptr %4, align 8, !tbaa !3
  %520 = getelementptr inbounds nuw %struct._hash_env_t, ptr %519, i32 0, i32 5
  %521 = load i32, ptr %520, align 4, !tbaa !45
  call void @merge(ptr noundef %515, ptr noundef %8, i32 noundef signext %518, i32 noundef signext %521)
  %522 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  store i32 0, ptr %522, align 8, !tbaa !26
  %523 = load ptr, ptr %13, align 8, !tbaa !10
  %524 = getelementptr inbounds nuw %struct._collec_t, ptr %523, i32 0, i32 0
  %525 = load ptr, ptr %524, align 8, !tbaa !28
  %526 = load ptr, ptr %13, align 8, !tbaa !10
  %527 = getelementptr inbounds nuw %struct._collec_t, ptr %526, i32 0, i32 1
  %528 = load i32, ptr %527, align 8, !tbaa !26
  %529 = sub i32 %528, 1
  %530 = zext i32 %529 to i64
  %531 = getelementptr inbounds nuw ptr, ptr %525, i64 %530
  %532 = load ptr, ptr %531, align 8, !tbaa !37
  store ptr %532, ptr %24, align 8, !tbaa !37
  br label %533

533:                                              ; preds = %504, %456
  call void @llvm.lifetime.end.p0(i64 40, ptr %26) #8
  br label %534

534:                                              ; preds = %533, %434, %415
  br label %535

535:                                              ; preds = %561, %534
  %536 = load i32, ptr %25, align 4, !tbaa !25
  %537 = load ptr, ptr %13, align 8, !tbaa !10
  %538 = getelementptr inbounds nuw %struct._collec_t, ptr %537, i32 0, i32 1
  %539 = load i32, ptr %538, align 8, !tbaa !26
  %540 = icmp ult i32 %536, %539
  br i1 %540, label %541, label %559

541:                                              ; preds = %535
  %542 = load ptr, ptr %13, align 8, !tbaa !10
  %543 = getelementptr inbounds nuw %struct._collec_t, ptr %542, i32 0, i32 0
  %544 = load ptr, ptr %543, align 8, !tbaa !28
  %545 = load ptr, ptr %13, align 8, !tbaa !10
  %546 = getelementptr inbounds nuw %struct._collec_t, ptr %545, i32 0, i32 1
  %547 = load i32, ptr %546, align 8, !tbaa !26
  %548 = load i32, ptr %25, align 4, !tbaa !25
  %549 = sub i32 %547, %548
  %550 = sub i32 %549, 1
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds nuw ptr, ptr %544, i64 %551
  %553 = load ptr, ptr %552, align 8, !tbaa !37
  %554 = load ptr, ptr %5, align 8, !tbaa !8
  %555 = getelementptr inbounds nuw %struct._seq_t, ptr %554, i32 0, i32 2
  %556 = load ptr, ptr %555, align 8, !tbaa !21
  %557 = call signext i32 @is_polyAT_exon_p(ptr noundef %553, ptr noundef %556)
  %558 = icmp ne i32 %557, 0
  br label %559

559:                                              ; preds = %541, %535
  %560 = phi i1 [ false, %535 ], [ %558, %541 ]
  br i1 %560, label %561, label %564

561:                                              ; preds = %559
  %562 = load i32, ptr %25, align 4, !tbaa !25
  %563 = add i32 %562, 1
  store i32 %563, ptr %25, align 4, !tbaa !25
  br label %535, !llvm.loop !55

564:                                              ; preds = %559
  %565 = load i32, ptr %25, align 4, !tbaa !25
  %566 = icmp ugt i32 %565, 0
  br i1 %566, label %567, label %615

567:                                              ; preds = %564
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #8
  %568 = load ptr, ptr %13, align 8, !tbaa !10
  %569 = getelementptr inbounds nuw %struct._collec_t, ptr %568, i32 0, i32 1
  %570 = load i32, ptr %569, align 8, !tbaa !26
  %571 = load i32, ptr %25, align 4, !tbaa !25
  %572 = sub i32 %570, %571
  store i32 %572, ptr %27, align 4, !tbaa !25
  br label %573

573:                                              ; preds = %587, %567
  %574 = load i32, ptr %27, align 4, !tbaa !25
  %575 = load ptr, ptr %13, align 8, !tbaa !10
  %576 = getelementptr inbounds nuw %struct._collec_t, ptr %575, i32 0, i32 1
  %577 = load i32, ptr %576, align 8, !tbaa !26
  %578 = icmp ult i32 %574, %577
  br i1 %578, label %579, label %590

579:                                              ; preds = %573
  %580 = load ptr, ptr %13, align 8, !tbaa !10
  %581 = getelementptr inbounds nuw %struct._collec_t, ptr %580, i32 0, i32 0
  %582 = load ptr, ptr %581, align 8, !tbaa !28
  %583 = load i32, ptr %27, align 4, !tbaa !25
  %584 = zext i32 %583 to i64
  %585 = getelementptr inbounds nuw ptr, ptr %582, i64 %584
  %586 = load ptr, ptr %585, align 8, !tbaa !37
  call void @free(ptr noundef %586) #8
  br label %587

587:                                              ; preds = %579
  %588 = load i32, ptr %27, align 4, !tbaa !25
  %589 = add i32 %588, 1
  store i32 %589, ptr %27, align 4, !tbaa !25
  br label %573, !llvm.loop !56

590:                                              ; preds = %573
  %591 = load i32, ptr %25, align 4, !tbaa !25
  %592 = load ptr, ptr %13, align 8, !tbaa !10
  %593 = getelementptr inbounds nuw %struct._collec_t, ptr %592, i32 0, i32 1
  %594 = load i32, ptr %593, align 8, !tbaa !26
  %595 = sub i32 %594, %591
  store i32 %595, ptr %593, align 8, !tbaa !26
  %596 = load ptr, ptr %13, align 8, !tbaa !10
  %597 = getelementptr inbounds nuw %struct._collec_t, ptr %596, i32 0, i32 1
  %598 = load i32, ptr %597, align 8, !tbaa !26
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %601

600:                                              ; preds = %590
  store i32 4, ptr %11, align 4
  br label %612

601:                                              ; preds = %590
  %602 = load ptr, ptr %13, align 8, !tbaa !10
  %603 = getelementptr inbounds nuw %struct._collec_t, ptr %602, i32 0, i32 0
  %604 = load ptr, ptr %603, align 8, !tbaa !28
  %605 = load ptr, ptr %13, align 8, !tbaa !10
  %606 = getelementptr inbounds nuw %struct._collec_t, ptr %605, i32 0, i32 1
  %607 = load i32, ptr %606, align 8, !tbaa !26
  %608 = sub i32 %607, 1
  %609 = zext i32 %608 to i64
  %610 = getelementptr inbounds nuw ptr, ptr %604, i64 %609
  %611 = load ptr, ptr %610, align 8, !tbaa !37
  store ptr %611, ptr %24, align 8, !tbaa !37
  store i32 0, ptr %11, align 4
  br label %612

612:                                              ; preds = %601, %600
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #8
  %613 = load i32, ptr %11, align 4
  switch i32 %613, label %715 [
    i32 0, label %614
  ]

614:                                              ; preds = %612
  br label %615

615:                                              ; preds = %614, %564
  %616 = load ptr, ptr %5, align 8, !tbaa !8
  %617 = getelementptr inbounds nuw %struct._seq_t, ptr %616, i32 0, i32 5
  %618 = load i32, ptr %617, align 4, !tbaa !18
  %619 = load ptr, ptr %24, align 8, !tbaa !37
  %620 = getelementptr inbounds nuw %struct._exon_t, ptr %619, i32 0, i32 3
  %621 = load i32, ptr %620, align 4, !tbaa !52
  %622 = sub i32 %618, %621
  %623 = icmp ugt i32 %622, 0
  br i1 %623, label %624, label %714

624:                                              ; preds = %615
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #8
  %625 = load ptr, ptr %5, align 8, !tbaa !8
  %626 = getelementptr inbounds nuw %struct._seq_t, ptr %625, i32 0, i32 5
  %627 = load i32, ptr %626, align 4, !tbaa !18
  %628 = load ptr, ptr %24, align 8, !tbaa !37
  %629 = getelementptr inbounds nuw %struct._exon_t, ptr %628, i32 0, i32 3
  %630 = load i32, ptr %629, align 4, !tbaa !52
  %631 = sub i32 %627, %630
  %632 = icmp ugt i32 %631, 250
  br i1 %632, label %633, label %634

633:                                              ; preds = %624
  br label %642

634:                                              ; preds = %624
  %635 = load ptr, ptr %5, align 8, !tbaa !8
  %636 = getelementptr inbounds nuw %struct._seq_t, ptr %635, i32 0, i32 5
  %637 = load i32, ptr %636, align 4, !tbaa !18
  %638 = load ptr, ptr %24, align 8, !tbaa !37
  %639 = getelementptr inbounds nuw %struct._exon_t, ptr %638, i32 0, i32 3
  %640 = load i32, ptr %639, align 4, !tbaa !52
  %641 = sub i32 %637, %640
  br label %642

642:                                              ; preds = %634, %633
  %643 = phi i32 [ 250, %633 ], [ %641, %634 ]
  store i32 %643, ptr %28, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %29) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %30) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %31) #8
  %644 = load ptr, ptr %5, align 8, !tbaa !8
  %645 = getelementptr inbounds nuw %struct._seq_t, ptr %644, i32 0, i32 2
  %646 = load ptr, ptr %645, align 8, !tbaa !21
  %647 = load ptr, ptr %24, align 8, !tbaa !37
  %648 = getelementptr inbounds nuw %struct._exon_t, ptr %647, i32 0, i32 3
  %649 = load i32, ptr %648, align 4, !tbaa !52
  %650 = zext i32 %649 to i64
  %651 = getelementptr inbounds nuw i8, ptr %646, i64 %650
  %652 = load ptr, ptr %4, align 8, !tbaa !3
  %653 = getelementptr inbounds nuw %struct._hash_env_t, ptr %652, i32 0, i32 1
  %654 = load ptr, ptr %653, align 8, !tbaa !36
  %655 = load ptr, ptr %24, align 8, !tbaa !37
  %656 = getelementptr inbounds nuw %struct._exon_t, ptr %655, i32 0, i32 2
  %657 = load i32, ptr %656, align 4, !tbaa !53
  %658 = zext i32 %657 to i64
  %659 = getelementptr inbounds nuw i8, ptr %654, i64 %658
  %660 = load i32, ptr %28, align 4, !tbaa !25
  %661 = load i32, ptr %28, align 4, !tbaa !25
  %662 = mul nsw i32 4, %661
  %663 = load ptr, ptr %4, align 8, !tbaa !3
  %664 = getelementptr inbounds nuw %struct._hash_env_t, ptr %663, i32 0, i32 2
  %665 = load i32, ptr %664, align 8, !tbaa !12
  %666 = load ptr, ptr %24, align 8, !tbaa !37
  %667 = getelementptr inbounds nuw %struct._exon_t, ptr %666, i32 0, i32 2
  %668 = load i32, ptr %667, align 4, !tbaa !53
  %669 = sub i32 %665, %668
  %670 = icmp sgt i32 %662, %669
  br i1 %670, label %671, label %679

671:                                              ; preds = %642
  %672 = load ptr, ptr %4, align 8, !tbaa !3
  %673 = getelementptr inbounds nuw %struct._hash_env_t, ptr %672, i32 0, i32 2
  %674 = load i32, ptr %673, align 8, !tbaa !12
  %675 = load ptr, ptr %24, align 8, !tbaa !37
  %676 = getelementptr inbounds nuw %struct._exon_t, ptr %675, i32 0, i32 2
  %677 = load i32, ptr %676, align 4, !tbaa !53
  %678 = sub i32 %674, %677
  br label %682

679:                                              ; preds = %642
  %680 = load i32, ptr %28, align 4, !tbaa !25
  %681 = mul nsw i32 4, %680
  br label %682

682:                                              ; preds = %679, %671
  %683 = phi i32 [ %678, %671 ], [ %681, %679 ]
  %684 = load ptr, ptr %24, align 8, !tbaa !37
  %685 = getelementptr inbounds nuw %struct._exon_t, ptr %684, i32 0, i32 3
  %686 = load i32, ptr %685, align 4, !tbaa !52
  %687 = load ptr, ptr %24, align 8, !tbaa !37
  %688 = getelementptr inbounds nuw %struct._exon_t, ptr %687, i32 0, i32 2
  %689 = load i32, ptr %688, align 4, !tbaa !53
  %690 = load ptr, ptr %4, align 8, !tbaa !3
  %691 = getelementptr inbounds nuw %struct._hash_env_t, ptr %690, i32 0, i32 5
  %692 = load i32, ptr %691, align 4, !tbaa !45
  %693 = call signext i32 @extend_fw(ptr noundef %651, ptr noundef %659, i32 noundef signext %660, i32 noundef signext %683, i32 noundef signext %686, i32 noundef signext %689, ptr noundef %30, ptr noundef %31, i32 noundef signext %692)
  store i32 %693, ptr %29, align 4, !tbaa !25
  %694 = load i32, ptr %30, align 4, !tbaa !25
  %695 = load ptr, ptr %24, align 8, !tbaa !37
  %696 = getelementptr inbounds nuw %struct._exon_t, ptr %695, i32 0, i32 3
  %697 = load i32, ptr %696, align 4, !tbaa !52
  %698 = sub nsw i32 %694, %697
  %699 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 12), align 8, !tbaa !50
  %700 = mul nsw i32 %698, %699
  %701 = load i32, ptr %29, align 4, !tbaa !25
  %702 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 10), align 8, !tbaa !51
  %703 = mul nsw i32 %701, %702
  %704 = add nsw i32 %700, %703
  %705 = icmp sge i32 %704, 0
  br i1 %705, label %706, label %713

706:                                              ; preds = %682
  %707 = load i32, ptr %30, align 4, !tbaa !25
  %708 = load ptr, ptr %24, align 8, !tbaa !37
  %709 = getelementptr inbounds nuw %struct._exon_t, ptr %708, i32 0, i32 3
  store i32 %707, ptr %709, align 4, !tbaa !52
  %710 = load i32, ptr %31, align 4, !tbaa !25
  %711 = load ptr, ptr %24, align 8, !tbaa !37
  %712 = getelementptr inbounds nuw %struct._exon_t, ptr %711, i32 0, i32 2
  store i32 %710, ptr %712, align 4, !tbaa !53
  br label %713

713:                                              ; preds = %706, %682
  call void @llvm.lifetime.end.p0(i64 4, ptr %31) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %30) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %29) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #8
  br label %714

714:                                              ; preds = %713, %615
  store i32 0, ptr %11, align 4
  br label %715

715:                                              ; preds = %714, %612
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %24) #8
  %716 = load i32, ptr %11, align 4
  switch i32 %716, label %1135 [
    i32 0, label %717
  ]

717:                                              ; preds = %715
  br label %718

718:                                              ; preds = %717, %398, %393
  %719 = load ptr, ptr %13, align 8, !tbaa !10
  %720 = getelementptr inbounds nuw %struct._collec_t, ptr %719, i32 0, i32 1
  %721 = load i32, ptr %720, align 8, !tbaa !26
  %722 = icmp ugt i32 %721, 1
  br i1 %722, label %723, label %974

723:                                              ; preds = %718
  call void @llvm.lifetime.start.p0(i64 4, ptr %32) #8
  store i32 1, ptr %32, align 4, !tbaa !25
  br label %724

724:                                              ; preds = %970, %723
  %725 = load i32, ptr %32, align 4, !tbaa !25
  %726 = load ptr, ptr %13, align 8, !tbaa !10
  %727 = getelementptr inbounds nuw %struct._collec_t, ptr %726, i32 0, i32 1
  %728 = load i32, ptr %727, align 8, !tbaa !26
  %729 = icmp ult i32 %725, %728
  br i1 %729, label %730, label %973

730:                                              ; preds = %724
  call void @llvm.lifetime.start.p0(i64 8, ptr %33) #8
  %731 = load ptr, ptr %13, align 8, !tbaa !10
  %732 = getelementptr inbounds nuw %struct._collec_t, ptr %731, i32 0, i32 0
  %733 = load ptr, ptr %732, align 8, !tbaa !28
  %734 = load i32, ptr %32, align 4, !tbaa !25
  %735 = sub i32 %734, 1
  %736 = zext i32 %735 to i64
  %737 = getelementptr inbounds nuw ptr, ptr %733, i64 %736
  %738 = load ptr, ptr %737, align 8, !tbaa !37
  store ptr %738, ptr %33, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %34) #8
  %739 = load ptr, ptr %13, align 8, !tbaa !10
  %740 = getelementptr inbounds nuw %struct._collec_t, ptr %739, i32 0, i32 0
  %741 = load ptr, ptr %740, align 8, !tbaa !28
  %742 = load i32, ptr %32, align 4, !tbaa !25
  %743 = zext i32 %742 to i64
  %744 = getelementptr inbounds nuw ptr, ptr %741, i64 %743
  %745 = load ptr, ptr %744, align 8, !tbaa !37
  store ptr %745, ptr %34, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %35) #8
  %746 = load ptr, ptr %34, align 8, !tbaa !37
  %747 = getelementptr inbounds nuw %struct._exon_t, ptr %746, i32 0, i32 1
  %748 = load i32, ptr %747, align 4, !tbaa !39
  %749 = load ptr, ptr %33, align 8, !tbaa !37
  %750 = getelementptr inbounds nuw %struct._exon_t, ptr %749, i32 0, i32 3
  %751 = load i32, ptr %750, align 4, !tbaa !52
  %752 = sub i32 %748, %751
  %753 = sub i32 %752, 1
  store i32 %753, ptr %35, align 4, !tbaa !25
  %754 = load i32, ptr %35, align 4, !tbaa !25
  %755 = icmp sgt i32 %754, 0
  br i1 %755, label %756, label %966

756:                                              ; preds = %730
  %757 = load ptr, ptr %34, align 8, !tbaa !37
  %758 = getelementptr inbounds nuw %struct._exon_t, ptr %757, i32 0, i32 0
  %759 = load i32, ptr %758, align 4, !tbaa !41
  %760 = sub i32 %759, 1
  %761 = load ptr, ptr %33, align 8, !tbaa !37
  %762 = getelementptr inbounds nuw %struct._exon_t, ptr %761, i32 0, i32 2
  %763 = load i32, ptr %762, align 4, !tbaa !53
  %764 = icmp ugt i32 %760, %763
  br i1 %764, label %765, label %965

765:                                              ; preds = %756
  call void @llvm.lifetime.start.p0(i64 40, ptr %36) #8
  %766 = load i32, ptr %35, align 4, !tbaa !25
  %767 = icmp sle i32 %766, 500
  br i1 %767, label %768, label %873

768:                                              ; preds = %765
  call void @llvm.lifetime.start.p0(i64 4, ptr %37) #8
  %769 = load ptr, ptr %5, align 8, !tbaa !8
  %770 = getelementptr inbounds nuw %struct._seq_t, ptr %769, i32 0, i32 2
  %771 = load ptr, ptr %770, align 8, !tbaa !21
  %772 = load ptr, ptr %33, align 8, !tbaa !37
  %773 = getelementptr inbounds nuw %struct._exon_t, ptr %772, i32 0, i32 3
  %774 = load i32, ptr %773, align 4, !tbaa !52
  %775 = zext i32 %774 to i64
  %776 = getelementptr inbounds nuw i8, ptr %771, i64 %775
  %777 = load ptr, ptr %4, align 8, !tbaa !3
  %778 = getelementptr inbounds nuw %struct._hash_env_t, ptr %777, i32 0, i32 1
  %779 = load ptr, ptr %778, align 8, !tbaa !36
  %780 = load ptr, ptr %33, align 8, !tbaa !37
  %781 = getelementptr inbounds nuw %struct._exon_t, ptr %780, i32 0, i32 2
  %782 = load i32, ptr %781, align 4, !tbaa !53
  %783 = zext i32 %782 to i64
  %784 = getelementptr inbounds nuw i8, ptr %779, i64 %783
  %785 = load i32, ptr %35, align 4, !tbaa !25
  %786 = load ptr, ptr %34, align 8, !tbaa !37
  %787 = getelementptr inbounds nuw %struct._exon_t, ptr %786, i32 0, i32 0
  %788 = load i32, ptr %787, align 4, !tbaa !41
  %789 = load ptr, ptr %33, align 8, !tbaa !37
  %790 = getelementptr inbounds nuw %struct._exon_t, ptr %789, i32 0, i32 2
  %791 = load i32, ptr %790, align 4, !tbaa !53
  %792 = sub i32 %788, %791
  %793 = sub i32 %792, 1
  %794 = load ptr, ptr %33, align 8, !tbaa !37
  %795 = getelementptr inbounds nuw %struct._exon_t, ptr %794, i32 0, i32 3
  %796 = load i32, ptr %795, align 4, !tbaa !52
  %797 = load ptr, ptr %33, align 8, !tbaa !37
  %798 = getelementptr inbounds nuw %struct._exon_t, ptr %797, i32 0, i32 2
  %799 = load i32, ptr %798, align 4, !tbaa !53
  %800 = load ptr, ptr %4, align 8, !tbaa !3
  %801 = getelementptr inbounds nuw %struct._hash_env_t, ptr %800, i32 0, i32 5
  %802 = load i32, ptr %801, align 4, !tbaa !45
  %803 = call signext i32 @greedy(ptr noundef %776, ptr noundef %784, i32 noundef signext %785, i32 noundef signext %793, i32 noundef signext %796, i32 noundef signext %799, i32 noundef signext %802, ptr noundef %8)
  store i32 %803, ptr %37, align 4, !tbaa !25
  %804 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  %805 = load i32, ptr %804, align 8, !tbaa !26
  %806 = icmp ugt i32 %805, 0
  br i1 %806, label %807, label %869

807:                                              ; preds = %768
  %808 = load i32, ptr %37, align 4, !tbaa !25
  %809 = sitofp i32 %808 to double
  %810 = load ptr, ptr %4, align 8, !tbaa !3
  %811 = getelementptr inbounds nuw %struct._hash_env_t, ptr %810, i32 0, i32 5
  %812 = load i32, ptr %811, align 4, !tbaa !45
  %813 = uitofp i32 %812 to double
  %814 = load i32, ptr %35, align 4, !tbaa !25
  %815 = sitofp i32 %814 to double
  %816 = call double @llvm.fmuladd.f64(double 2.000000e-01, double %815, double 1.000000e+00)
  %817 = fcmp olt double %813, %816
  br i1 %817, label %818, label %822

818:                                              ; preds = %807
  %819 = load i32, ptr %35, align 4, !tbaa !25
  %820 = sitofp i32 %819 to double
  %821 = call double @llvm.fmuladd.f64(double 2.000000e-01, double %820, double 1.000000e+00)
  br label %827

822:                                              ; preds = %807
  %823 = load ptr, ptr %4, align 8, !tbaa !3
  %824 = getelementptr inbounds nuw %struct._hash_env_t, ptr %823, i32 0, i32 5
  %825 = load i32, ptr %824, align 4, !tbaa !45
  %826 = uitofp i32 %825 to double
  br label %827

827:                                              ; preds = %822, %818
  %828 = phi double [ %821, %818 ], [ %826, %822 ]
  %829 = fcmp ole double %809, %828
  br i1 %829, label %830, label %869

830:                                              ; preds = %827
  %831 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 0
  %832 = load ptr, ptr %831, align 8, !tbaa !28
  %833 = getelementptr inbounds ptr, ptr %832, i64 0
  %834 = load ptr, ptr %833, align 8, !tbaa !37
  %835 = load ptr, ptr %4, align 8, !tbaa !3
  %836 = getelementptr inbounds nuw %struct._hash_env_t, ptr %835, i32 0, i32 1
  %837 = load ptr, ptr %836, align 8, !tbaa !36
  %838 = load ptr, ptr %5, align 8, !tbaa !8
  %839 = getelementptr inbounds nuw %struct._seq_t, ptr %838, i32 0, i32 2
  %840 = load ptr, ptr %839, align 8, !tbaa !21
  call void @grow_exon_left(ptr noundef %834, ptr noundef %837, ptr noundef %840)
  %841 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 0
  %842 = load ptr, ptr %841, align 8, !tbaa !28
  %843 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  %844 = load i32, ptr %843, align 8, !tbaa !26
  %845 = sub i32 %844, 1
  %846 = zext i32 %845 to i64
  %847 = getelementptr inbounds nuw ptr, ptr %842, i64 %846
  %848 = load ptr, ptr %847, align 8, !tbaa !37
  %849 = load ptr, ptr %4, align 8, !tbaa !3
  %850 = getelementptr inbounds nuw %struct._hash_env_t, ptr %849, i32 0, i32 1
  %851 = load ptr, ptr %850, align 8, !tbaa !36
  %852 = load ptr, ptr %4, align 8, !tbaa !3
  %853 = getelementptr inbounds nuw %struct._hash_env_t, ptr %852, i32 0, i32 2
  %854 = load i32, ptr %853, align 8, !tbaa !12
  %855 = load ptr, ptr %5, align 8, !tbaa !8
  %856 = getelementptr inbounds nuw %struct._seq_t, ptr %855, i32 0, i32 2
  %857 = load ptr, ptr %856, align 8, !tbaa !21
  %858 = load ptr, ptr %5, align 8, !tbaa !8
  %859 = getelementptr inbounds nuw %struct._seq_t, ptr %858, i32 0, i32 5
  %860 = load i32, ptr %859, align 4, !tbaa !18
  call void @grow_exon_right(ptr noundef %848, ptr noundef %851, i32 noundef signext %854, ptr noundef %857, i32 noundef signext %860)
  %861 = load ptr, ptr %13, align 8, !tbaa !10
  %862 = load i32, ptr %32, align 4, !tbaa !25
  %863 = load ptr, ptr %4, align 8, !tbaa !3
  %864 = getelementptr inbounds nuw %struct._hash_env_t, ptr %863, i32 0, i32 5
  %865 = load i32, ptr %864, align 4, !tbaa !45
  call void @merge(ptr noundef %861, ptr noundef %8, i32 noundef signext %862, i32 noundef signext %865)
  %866 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  store i32 0, ptr %866, align 8, !tbaa !26
  %867 = load i32, ptr %32, align 4, !tbaa !25
  %868 = sub i32 %867, 1
  store i32 %868, ptr %32, align 4, !tbaa !25
  store i32 17, ptr %11, align 4
  br label %870

869:                                              ; preds = %827, %768
  store i32 0, ptr %11, align 4
  br label %870

870:                                              ; preds = %869, %830
  call void @llvm.lifetime.end.p0(i64 4, ptr %37) #8
  %871 = load i32, ptr %11, align 4
  switch i32 %871, label %962 [
    i32 0, label %872
  ]

872:                                              ; preds = %870
  br label %873

873:                                              ; preds = %872, %765
  %874 = load ptr, ptr %4, align 8, !tbaa !3
  %875 = getelementptr inbounds nuw %struct._hash_env_t, ptr %874, i32 0, i32 5
  %876 = load i32, ptr %875, align 4, !tbaa !45
  %877 = icmp ugt i32 8, %876
  br i1 %877, label %878, label %882

878:                                              ; preds = %873
  %879 = load ptr, ptr %4, align 8, !tbaa !3
  %880 = getelementptr inbounds nuw %struct._hash_env_t, ptr %879, i32 0, i32 5
  %881 = load i32, ptr %880, align 4, !tbaa !45
  br label %883

882:                                              ; preds = %873
  br label %883

883:                                              ; preds = %882, %878
  %884 = phi i32 [ %881, %878 ], [ 8, %882 ]
  %885 = load ptr, ptr %4, align 8, !tbaa !3
  %886 = getelementptr inbounds nuw %struct._hash_env_t, ptr %885, i32 0, i32 1
  %887 = load ptr, ptr %886, align 8, !tbaa !36
  %888 = load ptr, ptr %33, align 8, !tbaa !37
  %889 = getelementptr inbounds nuw %struct._exon_t, ptr %888, i32 0, i32 2
  %890 = load i32, ptr %889, align 4, !tbaa !53
  %891 = zext i32 %890 to i64
  %892 = getelementptr inbounds nuw i8, ptr %887, i64 %891
  %893 = load ptr, ptr %34, align 8, !tbaa !37
  %894 = getelementptr inbounds nuw %struct._exon_t, ptr %893, i32 0, i32 0
  %895 = load i32, ptr %894, align 4, !tbaa !41
  %896 = load ptr, ptr %33, align 8, !tbaa !37
  %897 = getelementptr inbounds nuw %struct._exon_t, ptr %896, i32 0, i32 2
  %898 = load i32, ptr %897, align 4, !tbaa !53
  %899 = sub i32 %895, %898
  %900 = sub i32 %899, 1
  call void @init_hash_env(ptr noundef %36, i32 noundef signext %884, ptr noundef %892, i32 noundef signext %900)
  call void @bld_table(ptr noundef %36)
  %901 = load ptr, ptr %5, align 8, !tbaa !8
  %902 = getelementptr inbounds nuw %struct._seq_t, ptr %901, i32 0, i32 2
  %903 = load ptr, ptr %902, align 8, !tbaa !21
  %904 = load ptr, ptr %33, align 8, !tbaa !37
  %905 = getelementptr inbounds nuw %struct._exon_t, ptr %904, i32 0, i32 3
  %906 = load i32, ptr %905, align 4, !tbaa !52
  %907 = zext i32 %906 to i64
  %908 = getelementptr inbounds nuw i8, ptr %903, i64 %907
  %909 = load i32, ptr %35, align 4, !tbaa !25
  %910 = load ptr, ptr %33, align 8, !tbaa !37
  %911 = getelementptr inbounds nuw %struct._exon_t, ptr %910, i32 0, i32 2
  %912 = load i32, ptr %911, align 4, !tbaa !53
  %913 = add i32 %912, 1
  %914 = load ptr, ptr %33, align 8, !tbaa !37
  %915 = getelementptr inbounds nuw %struct._exon_t, ptr %914, i32 0, i32 3
  %916 = load i32, ptr %915, align 4, !tbaa !52
  %917 = add i32 %916, 1
  %918 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 4), align 8, !tbaa !46
  call void @exon_cores(ptr noundef %36, ptr noundef %908, i32 noundef signext %909, i32 noundef signext %913, i32 noundef signext %917, i32 noundef signext %918, ptr noundef %7, ptr noundef null, ptr noundef %8)
  call void @free_hash_env(ptr noundef %36)
  %919 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  %920 = load i32, ptr %919, align 8, !tbaa !26
  %921 = icmp ugt i32 %920, 0
  br i1 %921, label %922, label %961

922:                                              ; preds = %883
  %923 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 0
  %924 = load ptr, ptr %923, align 8, !tbaa !28
  %925 = getelementptr inbounds ptr, ptr %924, i64 0
  %926 = load ptr, ptr %925, align 8, !tbaa !37
  %927 = load ptr, ptr %4, align 8, !tbaa !3
  %928 = getelementptr inbounds nuw %struct._hash_env_t, ptr %927, i32 0, i32 1
  %929 = load ptr, ptr %928, align 8, !tbaa !36
  %930 = load ptr, ptr %5, align 8, !tbaa !8
  %931 = getelementptr inbounds nuw %struct._seq_t, ptr %930, i32 0, i32 2
  %932 = load ptr, ptr %931, align 8, !tbaa !21
  call void @grow_exon_left(ptr noundef %926, ptr noundef %929, ptr noundef %932)
  %933 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 0
  %934 = load ptr, ptr %933, align 8, !tbaa !28
  %935 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  %936 = load i32, ptr %935, align 8, !tbaa !26
  %937 = sub i32 %936, 1
  %938 = zext i32 %937 to i64
  %939 = getelementptr inbounds nuw ptr, ptr %934, i64 %938
  %940 = load ptr, ptr %939, align 8, !tbaa !37
  %941 = load ptr, ptr %4, align 8, !tbaa !3
  %942 = getelementptr inbounds nuw %struct._hash_env_t, ptr %941, i32 0, i32 1
  %943 = load ptr, ptr %942, align 8, !tbaa !36
  %944 = load ptr, ptr %4, align 8, !tbaa !3
  %945 = getelementptr inbounds nuw %struct._hash_env_t, ptr %944, i32 0, i32 2
  %946 = load i32, ptr %945, align 8, !tbaa !12
  %947 = load ptr, ptr %5, align 8, !tbaa !8
  %948 = getelementptr inbounds nuw %struct._seq_t, ptr %947, i32 0, i32 2
  %949 = load ptr, ptr %948, align 8, !tbaa !21
  %950 = load ptr, ptr %5, align 8, !tbaa !8
  %951 = getelementptr inbounds nuw %struct._seq_t, ptr %950, i32 0, i32 5
  %952 = load i32, ptr %951, align 4, !tbaa !18
  call void @grow_exon_right(ptr noundef %940, ptr noundef %943, i32 noundef signext %946, ptr noundef %949, i32 noundef signext %952)
  %953 = load ptr, ptr %13, align 8, !tbaa !10
  %954 = load i32, ptr %32, align 4, !tbaa !25
  %955 = load ptr, ptr %4, align 8, !tbaa !3
  %956 = getelementptr inbounds nuw %struct._hash_env_t, ptr %955, i32 0, i32 5
  %957 = load i32, ptr %956, align 4, !tbaa !45
  call void @merge(ptr noundef %953, ptr noundef %8, i32 noundef signext %954, i32 noundef signext %957)
  %958 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  store i32 0, ptr %958, align 8, !tbaa !26
  %959 = load i32, ptr %32, align 4, !tbaa !25
  %960 = sub i32 %959, 1
  store i32 %960, ptr %32, align 4, !tbaa !25
  br label %961

961:                                              ; preds = %922, %883
  store i32 0, ptr %11, align 4
  br label %962

962:                                              ; preds = %961, %870
  call void @llvm.lifetime.end.p0(i64 40, ptr %36) #8
  %963 = load i32, ptr %11, align 4
  switch i32 %963, label %967 [
    i32 0, label %964
  ]

964:                                              ; preds = %962
  br label %965

965:                                              ; preds = %964, %756
  br label %966

966:                                              ; preds = %965, %730
  store i32 0, ptr %11, align 4
  br label %967

967:                                              ; preds = %966, %962
  call void @llvm.lifetime.end.p0(i64 4, ptr %35) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %34) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %33) #8
  %968 = load i32, ptr %11, align 4
  switch i32 %968, label %1149 [
    i32 0, label %969
    i32 17, label %970
  ]

969:                                              ; preds = %967
  br label %970

970:                                              ; preds = %969, %967
  %971 = load i32, ptr %32, align 4, !tbaa !25
  %972 = add i32 %971, 1
  store i32 %972, ptr %32, align 4, !tbaa !25
  br label %724, !llvm.loop !57

973:                                              ; preds = %724
  call void @llvm.lifetime.end.p0(i64 4, ptr %32) #8
  br label %974

974:                                              ; preds = %973, %718
  %975 = load ptr, ptr %12, align 8, !tbaa !29
  %976 = load ptr, ptr %4, align 8, !tbaa !3
  %977 = getelementptr inbounds nuw %struct._hash_env_t, ptr %976, i32 0, i32 1
  %978 = load ptr, ptr %977, align 8, !tbaa !36
  %979 = load ptr, ptr %5, align 8, !tbaa !8
  %980 = getelementptr inbounds nuw %struct._seq_t, ptr %979, i32 0, i32 2
  %981 = load ptr, ptr %980, align 8, !tbaa !21
  call void @kill_polyA(ptr noundef %975, ptr noundef %978, ptr noundef %981)
  %982 = load ptr, ptr %13, align 8, !tbaa !10
  %983 = load ptr, ptr %4, align 8, !tbaa !3
  %984 = getelementptr inbounds nuw %struct._hash_env_t, ptr %983, i32 0, i32 5
  %985 = load i32, ptr %984, align 4, !tbaa !45
  call void @compact_exons(ptr noundef %982, i32 noundef signext %985)
  %986 = load ptr, ptr %13, align 8, !tbaa !10
  %987 = getelementptr inbounds nuw %struct._collec_t, ptr %986, i32 0, i32 1
  %988 = load i32, ptr %987, align 8, !tbaa !26
  %989 = icmp ugt i32 %988, 0
  br i1 %989, label %990, label %1051

990:                                              ; preds = %974
  call void @llvm.lifetime.start.p0(i64 4, ptr %38) #8
  store i32 0, ptr %38, align 4, !tbaa !25
  br label %991

991:                                              ; preds = %1024, %990
  %992 = load i32, ptr %38, align 4, !tbaa !25
  %993 = load ptr, ptr %13, align 8, !tbaa !10
  %994 = getelementptr inbounds nuw %struct._collec_t, ptr %993, i32 0, i32 1
  %995 = load i32, ptr %994, align 8, !tbaa !26
  %996 = icmp ult i32 %992, %995
  br i1 %996, label %997, label %1025

997:                                              ; preds = %991
  call void @llvm.lifetime.start.p0(i64 8, ptr %39) #8
  %998 = load ptr, ptr %13, align 8, !tbaa !10
  %999 = getelementptr inbounds nuw %struct._collec_t, ptr %998, i32 0, i32 0
  %1000 = load ptr, ptr %999, align 8, !tbaa !28
  %1001 = load i32, ptr %38, align 4, !tbaa !25
  %1002 = zext i32 %1001 to i64
  %1003 = getelementptr inbounds nuw ptr, ptr %1000, i64 %1002
  %1004 = load ptr, ptr %1003, align 8, !tbaa !37
  store ptr %1004, ptr %39, align 8, !tbaa !37
  %1005 = load ptr, ptr %39, align 8, !tbaa !37
  %1006 = getelementptr inbounds nuw %struct._exon_t, ptr %1005, i32 0, i32 3
  %1007 = load i32, ptr %1006, align 4, !tbaa !52
  %1008 = load ptr, ptr %39, align 8, !tbaa !37
  %1009 = getelementptr inbounds nuw %struct._exon_t, ptr %1008, i32 0, i32 1
  %1010 = load i32, ptr %1009, align 4, !tbaa !39
  %1011 = sub i32 %1007, %1010
  %1012 = add i32 %1011, 1
  %1013 = load ptr, ptr %4, align 8, !tbaa !3
  %1014 = getelementptr inbounds nuw %struct._hash_env_t, ptr %1013, i32 0, i32 5
  %1015 = load i32, ptr %1014, align 4, !tbaa !45
  %1016 = icmp uge i32 %1012, %1015
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %997
  store i32 19, ptr %11, align 4
  br label %1022

1018:                                             ; preds = %997
  %1019 = load ptr, ptr %39, align 8, !tbaa !37
  call void @free(ptr noundef %1019) #8
  %1020 = load i32, ptr %38, align 4, !tbaa !25
  %1021 = add i32 %1020, 1
  store i32 %1021, ptr %38, align 4, !tbaa !25
  store i32 0, ptr %11, align 4
  br label %1022

1022:                                             ; preds = %1018, %1017
  call void @llvm.lifetime.end.p0(i64 8, ptr %39) #8
  %1023 = load i32, ptr %11, align 4
  switch i32 %1023, label %1149 [
    i32 0, label %1024
    i32 19, label %1025
  ]

1024:                                             ; preds = %1022
  br label %991, !llvm.loop !58

1025:                                             ; preds = %1022, %991
  %1026 = load i32, ptr %38, align 4, !tbaa !25
  %1027 = icmp ugt i32 %1026, 0
  br i1 %1027, label %1028, label %1050

1028:                                             ; preds = %1025
  %1029 = load ptr, ptr %13, align 8, !tbaa !10
  %1030 = getelementptr inbounds nuw %struct._collec_t, ptr %1029, i32 0, i32 0
  %1031 = load ptr, ptr %1030, align 8, !tbaa !28
  %1032 = load ptr, ptr %13, align 8, !tbaa !10
  %1033 = getelementptr inbounds nuw %struct._collec_t, ptr %1032, i32 0, i32 0
  %1034 = load ptr, ptr %1033, align 8, !tbaa !28
  %1035 = load i32, ptr %38, align 4, !tbaa !25
  %1036 = zext i32 %1035 to i64
  %1037 = getelementptr inbounds nuw ptr, ptr %1034, i64 %1036
  %1038 = load ptr, ptr %13, align 8, !tbaa !10
  %1039 = getelementptr inbounds nuw %struct._collec_t, ptr %1038, i32 0, i32 1
  %1040 = load i32, ptr %1039, align 8, !tbaa !26
  %1041 = load i32, ptr %38, align 4, !tbaa !25
  %1042 = sub i32 %1040, %1041
  %1043 = zext i32 %1042 to i64
  %1044 = mul i64 %1043, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %1031, ptr align 8 %1037, i64 %1044, i1 false)
  %1045 = load i32, ptr %38, align 4, !tbaa !25
  %1046 = load ptr, ptr %13, align 8, !tbaa !10
  %1047 = getelementptr inbounds nuw %struct._collec_t, ptr %1046, i32 0, i32 1
  %1048 = load i32, ptr %1047, align 8, !tbaa !26
  %1049 = sub i32 %1048, %1045
  store i32 %1049, ptr %1047, align 8, !tbaa !26
  br label %1050

1050:                                             ; preds = %1028, %1025
  call void @llvm.lifetime.end.p0(i64 4, ptr %38) #8
  br label %1051

1051:                                             ; preds = %1050, %974
  %1052 = load ptr, ptr %13, align 8, !tbaa !10
  %1053 = getelementptr inbounds nuw %struct._collec_t, ptr %1052, i32 0, i32 1
  %1054 = load i32, ptr %1053, align 8, !tbaa !26
  %1055 = icmp ugt i32 %1054, 0
  br i1 %1055, label %1056, label %1097

1056:                                             ; preds = %1051
  call void @llvm.lifetime.start.p0(i64 4, ptr %40) #8
  %1057 = load ptr, ptr %13, align 8, !tbaa !10
  %1058 = getelementptr inbounds nuw %struct._collec_t, ptr %1057, i32 0, i32 1
  %1059 = load i32, ptr %1058, align 8, !tbaa !26
  %1060 = sub i32 %1059, 1
  store i32 %1060, ptr %40, align 4, !tbaa !25
  br label %1061

1061:                                             ; preds = %1095, %1056
  %1062 = load i32, ptr %40, align 4, !tbaa !25
  %1063 = icmp sge i32 %1062, 0
  br i1 %1063, label %1064, label %1096

1064:                                             ; preds = %1061
  call void @llvm.lifetime.start.p0(i64 8, ptr %41) #8
  %1065 = load ptr, ptr %13, align 8, !tbaa !10
  %1066 = getelementptr inbounds nuw %struct._collec_t, ptr %1065, i32 0, i32 0
  %1067 = load ptr, ptr %1066, align 8, !tbaa !28
  %1068 = load i32, ptr %40, align 4, !tbaa !25
  %1069 = sext i32 %1068 to i64
  %1070 = getelementptr inbounds ptr, ptr %1067, i64 %1069
  %1071 = load ptr, ptr %1070, align 8, !tbaa !37
  store ptr %1071, ptr %41, align 8, !tbaa !37
  %1072 = load ptr, ptr %41, align 8, !tbaa !37
  %1073 = getelementptr inbounds nuw %struct._exon_t, ptr %1072, i32 0, i32 3
  %1074 = load i32, ptr %1073, align 4, !tbaa !52
  %1075 = load ptr, ptr %41, align 8, !tbaa !37
  %1076 = getelementptr inbounds nuw %struct._exon_t, ptr %1075, i32 0, i32 1
  %1077 = load i32, ptr %1076, align 4, !tbaa !39
  %1078 = sub i32 %1074, %1077
  %1079 = add i32 %1078, 1
  %1080 = load ptr, ptr %4, align 8, !tbaa !3
  %1081 = getelementptr inbounds nuw %struct._hash_env_t, ptr %1080, i32 0, i32 5
  %1082 = load i32, ptr %1081, align 4, !tbaa !45
  %1083 = icmp uge i32 %1079, %1082
  br i1 %1083, label %1084, label %1085

1084:                                             ; preds = %1064
  store i32 21, ptr %11, align 4
  br label %1093

1085:                                             ; preds = %1064
  %1086 = load ptr, ptr %41, align 8, !tbaa !37
  call void @free(ptr noundef %1086) #8
  %1087 = load i32, ptr %40, align 4, !tbaa !25
  %1088 = sub nsw i32 %1087, 1
  store i32 %1088, ptr %40, align 4, !tbaa !25
  %1089 = load ptr, ptr %13, align 8, !tbaa !10
  %1090 = getelementptr inbounds nuw %struct._collec_t, ptr %1089, i32 0, i32 1
  %1091 = load i32, ptr %1090, align 8, !tbaa !26
  %1092 = sub i32 %1091, 1
  store i32 %1092, ptr %1090, align 8, !tbaa !26
  store i32 0, ptr %11, align 4
  br label %1093

1093:                                             ; preds = %1085, %1084
  call void @llvm.lifetime.end.p0(i64 8, ptr %41) #8
  %1094 = load i32, ptr %11, align 4
  switch i32 %1094, label %1149 [
    i32 0, label %1095
    i32 21, label %1096
  ]

1095:                                             ; preds = %1093
  br label %1061, !llvm.loop !59

1096:                                             ; preds = %1093, %1061
  call void @llvm.lifetime.end.p0(i64 4, ptr %40) #8
  br label %1097

1097:                                             ; preds = %1096, %1051
  %1098 = load ptr, ptr %12, align 8, !tbaa !29
  %1099 = load ptr, ptr %4, align 8, !tbaa !3
  %1100 = getelementptr inbounds nuw %struct._hash_env_t, ptr %1099, i32 0, i32 1
  %1101 = load ptr, ptr %1100, align 8, !tbaa !36
  %1102 = load ptr, ptr %5, align 8, !tbaa !8
  %1103 = getelementptr inbounds nuw %struct._seq_t, ptr %1102, i32 0, i32 2
  %1104 = load ptr, ptr %1103, align 8, !tbaa !21
  call void @slide_intron(ptr noundef %1098, ptr noundef %1101, ptr noundef %1104)
  %1105 = load ptr, ptr %4, align 8, !tbaa !3
  %1106 = getelementptr inbounds nuw %struct._hash_env_t, ptr %1105, i32 0, i32 1
  %1107 = load ptr, ptr %1106, align 8, !tbaa !36
  %1108 = load ptr, ptr %5, align 8, !tbaa !8
  %1109 = getelementptr inbounds nuw %struct._seq_t, ptr %1108, i32 0, i32 2
  %1110 = load ptr, ptr %1109, align 8, !tbaa !21
  %1111 = load ptr, ptr %14, align 8, !tbaa !31
  %1112 = getelementptr inbounds nuw %struct._sim4_stats, ptr %1111, i32 0, i32 0
  %1113 = load ptr, ptr %13, align 8, !tbaa !10
  %1114 = load ptr, ptr %12, align 8, !tbaa !29
  %1115 = getelementptr inbounds nuw %struct._result_t, ptr %1114, i32 0, i32 0
  %1116 = load ptr, ptr %4, align 8, !tbaa !3
  %1117 = getelementptr inbounds nuw %struct._hash_env_t, ptr %1116, i32 0, i32 2
  %1118 = load i32, ptr %1117, align 8, !tbaa !12
  %1119 = load ptr, ptr %5, align 8, !tbaa !8
  %1120 = getelementptr inbounds nuw %struct._seq_t, ptr %1119, i32 0, i32 5
  %1121 = load i32, ptr %1120, align 4, !tbaa !18
  %1122 = call signext i32 @pluri_align(ptr noundef %1107, ptr noundef %1110, ptr noundef %1112, ptr noundef %1113, ptr noundef %1115, i32 noundef signext %1118, i32 noundef signext %1121)
  store i32 %1122, ptr %9, align 4, !tbaa !25
  %1123 = load i32, ptr %9, align 4, !tbaa !25
  %1124 = icmp ne i32 %1123, 0
  br i1 %1124, label %1128, label %1125

1125:                                             ; preds = %1097
  %1126 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 3), align 4, !tbaa !60
  %1127 = icmp ne i32 %1126, 0
  br i1 %1127, label %1134, label %1128

1128:                                             ; preds = %1125, %1097
  %1129 = load ptr, ptr %12, align 8, !tbaa !29
  %1130 = getelementptr inbounds nuw %struct._result_t, ptr %1129, i32 0, i32 0
  %1131 = load ptr, ptr %1130, align 8, !tbaa !61
  call void @free_align(ptr noundef %1131)
  %1132 = load ptr, ptr %12, align 8, !tbaa !29
  %1133 = getelementptr inbounds nuw %struct._result_t, ptr %1132, i32 0, i32 0
  store ptr null, ptr %1133, align 8, !tbaa !61
  br label %1134

1134:                                             ; preds = %1128, %1125
  store i32 0, ptr %11, align 4
  br label %1135

1135:                                             ; preds = %1134, %715, %390, %95
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #8
  %1136 = load i32, ptr %11, align 4
  switch i32 %1136, label %1149 [
    i32 0, label %1137
    i32 4, label %1138
  ]

1137:                                             ; preds = %1135
  br label %1138

1138:                                             ; preds = %1137, %1135
  %1139 = load i32, ptr %10, align 4, !tbaa !25
  %1140 = add i32 %1139, 1
  store i32 %1140, ptr %10, align 4, !tbaa !25
  br label %62, !llvm.loop !62

1141:                                             ; preds = %62
  %1142 = getelementptr inbounds nuw %struct._collec_t, ptr %7, i32 0, i32 0
  %1143 = load ptr, ptr %1142, align 8, !tbaa !28
  call void @free(ptr noundef %1143) #8
  %1144 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 0
  %1145 = load ptr, ptr %1144, align 8, !tbaa !28
  call void @free(ptr noundef %1145) #8
  store i32 0, ptr %11, align 4
  br label %1146

1146:                                             ; preds = %1141, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %7) #8
  %1147 = load i32, ptr %11, align 4
  switch i32 %1147, label %1149 [
    i32 0, label %1148
    i32 1, label %1148
  ]

1148:                                             ; preds = %1146, %1146
  ret void

1149:                                             ; preds = %1146, %1135, %1093, %1022, %967
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local void @init_col(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !10
  store i32 %1, ptr %4, align 4, !tbaa !25
  %5 = load i32, ptr %4, align 4, !tbaa !25
  %6 = load ptr, ptr %3, align 8, !tbaa !10
  %7 = getelementptr inbounds nuw %struct._collec_t, ptr %6, i32 0, i32 2
  store i32 %5, ptr %7, align 4, !tbaa !63
  %8 = load ptr, ptr %3, align 8, !tbaa !10
  %9 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !26
  %10 = load i32, ptr %4, align 4, !tbaa !25
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4, !tbaa !25
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = call ptr @xmalloc(i64 noundef %15)
  %17 = load ptr, ptr %3, align 8, !tbaa !10
  %18 = getelementptr inbounds nuw %struct._collec_t, ptr %17, i32 0, i32 0
  store ptr %16, ptr %18, align 8, !tbaa !28
  br label %22

19:                                               ; preds = %2
  %20 = load ptr, ptr %3, align 8, !tbaa !10
  %21 = getelementptr inbounds nuw %struct._collec_t, ptr %20, i32 0, i32 0
  store ptr null, ptr %21, align 8, !tbaa !28
  br label %22

22:                                               ; preds = %19, %12
  ret void
}

; Function Attrs: nounwind
define internal void @exon_cores(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #0 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca ptr, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca i32, align 4
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  store ptr %0, ptr %10, align 8, !tbaa !3
  store ptr %1, ptr %11, align 8, !tbaa !64
  store i32 %2, ptr %12, align 4, !tbaa !25
  store i32 %3, ptr %13, align 4, !tbaa !25
  store i32 %4, ptr %14, align 4, !tbaa !25
  store i32 %5, ptr %15, align 4, !tbaa !25
  store ptr %6, ptr %16, align 8, !tbaa !10
  store ptr %7, ptr %17, align 8, !tbaa !10
  store ptr %8, ptr %18, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  %39 = load ptr, ptr %18, align 8, !tbaa !10
  %40 = icmp ne ptr %39, null
  %41 = zext i1 %40 to i32
  store i32 %41, ptr %21, align 4, !tbaa !25
  %42 = load ptr, ptr %10, align 8, !tbaa !3
  %43 = load ptr, ptr %11, align 8, !tbaa !64
  %44 = load i32, ptr %12, align 4, !tbaa !25
  %45 = load i32, ptr %15, align 4, !tbaa !25
  %46 = load ptr, ptr %16, align 8, !tbaa !10
  call void @search(ptr noundef %42, ptr noundef %43, i32 noundef signext %44, i32 noundef signext %45, ptr noundef %46)
  %47 = load ptr, ptr %16, align 8, !tbaa !10
  %48 = getelementptr inbounds nuw %struct._collec_t, ptr %47, i32 0, i32 0
  %49 = load ptr, ptr %48, align 8, !tbaa !28
  %50 = load ptr, ptr %16, align 8, !tbaa !10
  %51 = getelementptr inbounds nuw %struct._collec_t, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !26
  %53 = zext i32 %52 to i64
  call void @qsort(ptr noundef %49, i64 noundef %53, i64 noundef 8, ptr noundef @msp_rna_compare)
  %54 = load ptr, ptr %16, align 8, !tbaa !10
  call void @trim_small_repeated_msps(ptr noundef %54)
  %55 = load ptr, ptr %16, align 8, !tbaa !10
  %56 = getelementptr inbounds nuw %struct._collec_t, ptr %55, i32 0, i32 0
  %57 = load ptr, ptr %56, align 8, !tbaa !28
  %58 = load ptr, ptr %16, align 8, !tbaa !10
  %59 = getelementptr inbounds nuw %struct._collec_t, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !26
  %61 = zext i32 %60 to i64
  call void @qsort(ptr noundef %57, i64 noundef %61, i64 noundef 8, ptr noundef @msp_compare)
  %62 = load ptr, ptr %16, align 8, !tbaa !10
  call void @combine_msps(ptr noundef %62)
  %63 = load ptr, ptr %18, align 8, !tbaa !10
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %441

65:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr %22) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #8
  %66 = load i32, ptr %12, align 4, !tbaa !25
  store i32 %66, ptr %23, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8
  store i32 0, ptr %24, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #8
  store i32 0, ptr %27, align 4, !tbaa !25
  store i32 0, ptr %19, align 4, !tbaa !25
  br label %67

67:                                               ; preds = %101, %65
  %68 = load i32, ptr %19, align 4, !tbaa !25
  %69 = load ptr, ptr %16, align 8, !tbaa !10
  %70 = getelementptr inbounds nuw %struct._collec_t, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !26
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 8, ptr %28) #8
  %74 = load ptr, ptr %16, align 8, !tbaa !10
  %75 = getelementptr inbounds nuw %struct._collec_t, ptr %74, i32 0, i32 0
  %76 = load ptr, ptr %75, align 8, !tbaa !28
  %77 = load i32, ptr %19, align 4, !tbaa !25
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw ptr, ptr %76, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !37
  store ptr %80, ptr %28, align 8, !tbaa !37
  %81 = load ptr, ptr %28, align 8, !tbaa !37
  %82 = getelementptr inbounds nuw %struct._exon_t, ptr %81, i32 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !39
  %84 = load i32, ptr %23, align 4, !tbaa !25
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %73
  %87 = load ptr, ptr %28, align 8, !tbaa !37
  %88 = getelementptr inbounds nuw %struct._exon_t, ptr %87, i32 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !39
  store i32 %89, ptr %23, align 4, !tbaa !25
  br label %90

90:                                               ; preds = %86, %73
  %91 = load ptr, ptr %28, align 8, !tbaa !37
  %92 = getelementptr inbounds nuw %struct._exon_t, ptr %91, i32 0, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !52
  %94 = load i32, ptr %24, align 4, !tbaa !25
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load ptr, ptr %28, align 8, !tbaa !37
  %98 = getelementptr inbounds nuw %struct._exon_t, ptr %97, i32 0, i32 3
  %99 = load i32, ptr %98, align 4, !tbaa !52
  store i32 %99, ptr %24, align 4, !tbaa !25
  br label %100

100:                                              ; preds = %96, %90
  call void @llvm.lifetime.end.p0(i64 8, ptr %28) #8
  br label %101

101:                                              ; preds = %100
  %102 = load i32, ptr %19, align 4, !tbaa !25
  %103 = add i32 %102, 1
  store i32 %103, ptr %19, align 4, !tbaa !25
  br label %67, !llvm.loop !65

104:                                              ; preds = %67
  %105 = load i32, ptr %24, align 4, !tbaa !25
  %106 = load i32, ptr %23, align 4, !tbaa !25
  %107 = sub i32 %105, %106
  %108 = add i32 %107, 1
  store i32 %108, ptr %25, align 4, !tbaa !25
  %109 = load i32, ptr %25, align 4, !tbaa !25
  %110 = udiv i32 %109, 4
  store i32 %110, ptr %25, align 4, !tbaa !25
  %111 = load i32, ptr %25, align 4, !tbaa !25
  %112 = load i32, ptr %23, align 4, !tbaa !25
  %113 = add i32 %112, %111
  store i32 %113, ptr %23, align 4, !tbaa !25
  %114 = load i32, ptr %24, align 4, !tbaa !25
  %115 = load i32, ptr %25, align 4, !tbaa !25
  %116 = icmp ugt i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %104
  %118 = load i32, ptr %25, align 4, !tbaa !25
  %119 = load i32, ptr %24, align 4, !tbaa !25
  %120 = sub i32 %119, %118
  store i32 %120, ptr %24, align 4, !tbaa !25
  br label %121

121:                                              ; preds = %117, %104
  store i32 0, ptr %19, align 4, !tbaa !25
  br label %122

122:                                              ; preds = %165, %121
  %123 = load i32, ptr %19, align 4, !tbaa !25
  %124 = load ptr, ptr %16, align 8, !tbaa !10
  %125 = getelementptr inbounds nuw %struct._collec_t, ptr %124, i32 0, i32 1
  %126 = load i32, ptr %125, align 8, !tbaa !26
  %127 = icmp ult i32 %123, %126
  br i1 %127, label %128, label %168

128:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 8, ptr %29) #8
  %129 = load ptr, ptr %16, align 8, !tbaa !10
  %130 = getelementptr inbounds nuw %struct._collec_t, ptr %129, i32 0, i32 0
  %131 = load ptr, ptr %130, align 8, !tbaa !28
  %132 = load i32, ptr %19, align 4, !tbaa !25
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds nuw ptr, ptr %131, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !37
  store ptr %135, ptr %29, align 8, !tbaa !37
  %136 = load ptr, ptr %29, align 8, !tbaa !37
  %137 = getelementptr inbounds nuw %struct._exon_t, ptr %136, i32 0, i32 1
  %138 = load i32, ptr %137, align 4, !tbaa !39
  %139 = load i32, ptr %23, align 4, !tbaa !25
  %140 = icmp ult i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load ptr, ptr %29, align 8, !tbaa !37
  %143 = getelementptr inbounds nuw %struct._exon_t, ptr %142, i32 0, i32 6
  %144 = zext i32 %141 to i64
  %145 = load i64, ptr %143, align 4
  %146 = and i64 %144, 1
  %147 = shl i64 %146, 1
  %148 = and i64 %145, -3
  %149 = or i64 %148, %147
  store i64 %149, ptr %143, align 4
  %150 = trunc i64 %146 to i32
  %151 = load ptr, ptr %29, align 8, !tbaa !37
  %152 = getelementptr inbounds nuw %struct._exon_t, ptr %151, i32 0, i32 3
  %153 = load i32, ptr %152, align 4, !tbaa !52
  %154 = load i32, ptr %24, align 4, !tbaa !25
  %155 = icmp ugt i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = load ptr, ptr %29, align 8, !tbaa !37
  %158 = getelementptr inbounds nuw %struct._exon_t, ptr %157, i32 0, i32 6
  %159 = zext i32 %156 to i64
  %160 = load i64, ptr %158, align 4
  %161 = and i64 %159, 1
  %162 = and i64 %160, -2
  %163 = or i64 %162, %161
  store i64 %163, ptr %158, align 4
  %164 = trunc i64 %161 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr %29) #8
  br label %165

165:                                              ; preds = %128
  %166 = load i32, ptr %19, align 4, !tbaa !25
  %167 = add i32 %166, 1
  store i32 %167, ptr %19, align 4, !tbaa !25
  br label %122, !llvm.loop !66

168:                                              ; preds = %122
  %169 = load ptr, ptr %16, align 8, !tbaa !10
  %170 = load ptr, ptr %16, align 8, !tbaa !10
  %171 = getelementptr inbounds nuw %struct._collec_t, ptr %170, i32 0, i32 1
  %172 = load i32, ptr %171, align 8, !tbaa !26
  %173 = call signext i32 @link_msps(ptr noundef %169, i32 noundef signext 0, i32 noundef signext %172)
  store i32 %173, ptr %20, align 4, !tbaa !25
  %174 = load i32, ptr %20, align 4, !tbaa !25
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  store i32 1, ptr %30, align 4
  br label %438

177:                                              ; preds = %168
  %178 = load ptr, ptr %16, align 8, !tbaa !10
  %179 = getelementptr inbounds nuw %struct._collec_t, ptr %178, i32 0, i32 0
  %180 = load ptr, ptr %179, align 8, !tbaa !28
  %181 = load i32, ptr %20, align 4, !tbaa !25
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds ptr, ptr %180, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !37
  %185 = getelementptr inbounds nuw %struct._exon_t, ptr %184, i32 0, i32 5
  %186 = load i32, ptr %185, align 4, !tbaa !67
  store i32 %186, ptr %26, align 4, !tbaa !25
  %187 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 16), align 8, !tbaa !68
  %188 = icmp uge i32 %187, 50
  br i1 %188, label %189, label %194

189:                                              ; preds = %177
  %190 = load i32, ptr %26, align 4, !tbaa !25
  %191 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 16), align 8, !tbaa !68
  %192 = mul i32 %190, %191
  %193 = udiv i32 %192, 100
  store i32 %193, ptr %26, align 4, !tbaa !25
  br label %199

194:                                              ; preds = %177
  %195 = load i32, ptr %26, align 4, !tbaa !25
  %196 = udiv i32 %195, 4
  %197 = load i32, ptr %26, align 4, !tbaa !25
  %198 = sub i32 %197, %196
  store i32 %198, ptr %26, align 4, !tbaa !25
  br label %199

199:                                              ; preds = %194, %189
  store i32 0, ptr %23, align 4, !tbaa !25
  store i32 0, ptr %24, align 4, !tbaa !25
  store i32 1, ptr %19, align 4, !tbaa !25
  br label %200

200:                                              ; preds = %400, %199
  %201 = load i32, ptr %19, align 4, !tbaa !25
  %202 = load ptr, ptr %16, align 8, !tbaa !10
  %203 = getelementptr inbounds nuw %struct._collec_t, ptr %202, i32 0, i32 1
  %204 = load i32, ptr %203, align 8, !tbaa !26
  %205 = icmp ult i32 %201, %204
  br i1 %205, label %206, label %403

206:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 8, ptr %31) #8
  %207 = load ptr, ptr %16, align 8, !tbaa !10
  %208 = getelementptr inbounds nuw %struct._collec_t, ptr %207, i32 0, i32 0
  %209 = load ptr, ptr %208, align 8, !tbaa !28
  %210 = load i32, ptr %19, align 4, !tbaa !25
  %211 = sub i32 %210, 1
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds nuw ptr, ptr %209, i64 %212
  %214 = load ptr, ptr %213, align 8, !tbaa !37
  store ptr %214, ptr %31, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %32) #8
  %215 = load ptr, ptr %16, align 8, !tbaa !10
  %216 = getelementptr inbounds nuw %struct._collec_t, ptr %215, i32 0, i32 0
  %217 = load ptr, ptr %216, align 8, !tbaa !28
  %218 = load i32, ptr %19, align 4, !tbaa !25
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds nuw ptr, ptr %217, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !37
  store ptr %221, ptr %32, align 8, !tbaa !37
  %222 = load ptr, ptr %31, align 8, !tbaa !37
  %223 = getelementptr inbounds nuw %struct._exon_t, ptr %222, i32 0, i32 6
  %224 = load i64, ptr %223, align 4
  %225 = and i64 %224, 1
  %226 = trunc i64 %225 to i32
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %206
  %229 = load ptr, ptr %32, align 8, !tbaa !37
  %230 = getelementptr inbounds nuw %struct._exon_t, ptr %229, i32 0, i32 6
  %231 = load i64, ptr %230, align 4
  %232 = and i64 %231, 1
  %233 = trunc i64 %232 to i32
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %266

235:                                              ; preds = %228, %206
  %236 = load ptr, ptr %31, align 8, !tbaa !37
  %237 = getelementptr inbounds nuw %struct._exon_t, ptr %236, i32 0, i32 6
  %238 = load i64, ptr %237, align 4
  %239 = lshr i64 %238, 1
  %240 = and i64 %239, 1
  %241 = trunc i64 %240 to i32
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %235
  %244 = load ptr, ptr %32, align 8, !tbaa !37
  %245 = getelementptr inbounds nuw %struct._exon_t, ptr %244, i32 0, i32 6
  %246 = load i64, ptr %245, align 4
  %247 = lshr i64 %246, 1
  %248 = and i64 %247, 1
  %249 = trunc i64 %248 to i32
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %266, label %251

251:                                              ; preds = %243, %235
  %252 = load ptr, ptr %31, align 8, !tbaa !37
  %253 = getelementptr inbounds nuw %struct._exon_t, ptr %252, i32 0, i32 6
  %254 = load i64, ptr %253, align 4
  %255 = and i64 %254, 1
  %256 = trunc i64 %255 to i32
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %399

258:                                              ; preds = %251
  %259 = load ptr, ptr %32, align 8, !tbaa !37
  %260 = getelementptr inbounds nuw %struct._exon_t, ptr %259, i32 0, i32 6
  %261 = load i64, ptr %260, align 4
  %262 = lshr i64 %261, 1
  %263 = and i64 %262, 1
  %264 = trunc i64 %263 to i32
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %399

266:                                              ; preds = %258, %243, %228
  call void @llvm.lifetime.start.p0(i64 4, ptr %33) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %34) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %35) #8
  store i32 1, ptr %27, align 4, !tbaa !25
  %267 = load ptr, ptr %16, align 8, !tbaa !10
  %268 = load i32, ptr %23, align 4, !tbaa !25
  %269 = load i32, ptr %19, align 4, !tbaa !25
  %270 = call signext i32 @link_msps(ptr noundef %267, i32 noundef signext %268, i32 noundef signext %269)
  store i32 %270, ptr %33, align 4, !tbaa !25
  %271 = load ptr, ptr %16, align 8, !tbaa !10
  %272 = getelementptr inbounds nuw %struct._collec_t, ptr %271, i32 0, i32 0
  %273 = load ptr, ptr %272, align 8, !tbaa !28
  %274 = load i32, ptr %33, align 4, !tbaa !25
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds ptr, ptr %273, i64 %275
  %277 = load ptr, ptr %276, align 8, !tbaa !37
  %278 = getelementptr inbounds nuw %struct._exon_t, ptr %277, i32 0, i32 5
  %279 = load i32, ptr %278, align 4, !tbaa !67
  store i32 %279, ptr %34, align 4, !tbaa !25
  %280 = load ptr, ptr %16, align 8, !tbaa !10
  %281 = load i32, ptr %19, align 4, !tbaa !25
  %282 = load ptr, ptr %16, align 8, !tbaa !10
  %283 = getelementptr inbounds nuw %struct._collec_t, ptr %282, i32 0, i32 1
  %284 = load i32, ptr %283, align 8, !tbaa !26
  %285 = call signext i32 @link_msps(ptr noundef %280, i32 noundef signext %281, i32 noundef signext %284)
  store i32 %285, ptr %20, align 4, !tbaa !25
  %286 = load ptr, ptr %16, align 8, !tbaa !10
  %287 = getelementptr inbounds nuw %struct._collec_t, ptr %286, i32 0, i32 0
  %288 = load ptr, ptr %287, align 8, !tbaa !28
  %289 = load i32, ptr %20, align 4, !tbaa !25
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds ptr, ptr %288, i64 %290
  %292 = load ptr, ptr %291, align 8, !tbaa !37
  %293 = getelementptr inbounds nuw %struct._exon_t, ptr %292, i32 0, i32 5
  %294 = load i32, ptr %293, align 4, !tbaa !67
  store i32 %294, ptr %35, align 4, !tbaa !25
  %295 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 16), align 8, !tbaa !68
  %296 = icmp uge i32 %295, 50
  br i1 %296, label %297, label %305

297:                                              ; preds = %266
  %298 = load i32, ptr %34, align 4, !tbaa !25
  %299 = load i32, ptr %26, align 4, !tbaa !25
  %300 = icmp uge i32 %298, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %297
  %302 = load i32, ptr %35, align 4, !tbaa !25
  %303 = load i32, ptr %26, align 4, !tbaa !25
  %304 = icmp uge i32 %302, %303
  br i1 %304, label %316, label %305

305:                                              ; preds = %301, %297, %266
  %306 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 16), align 8, !tbaa !68
  %307 = icmp ult i32 %306, 50
  br i1 %307, label %308, label %398

308:                                              ; preds = %305
  %309 = load i32, ptr %34, align 4, !tbaa !25
  %310 = load i32, ptr %26, align 4, !tbaa !25
  %311 = icmp uge i32 %309, %310
  br i1 %311, label %316, label %312

312:                                              ; preds = %308
  %313 = load i32, ptr %35, align 4, !tbaa !25
  %314 = load i32, ptr %26, align 4, !tbaa !25
  %315 = icmp uge i32 %313, %314
  br i1 %315, label %316, label %398

316:                                              ; preds = %312, %308, %301
  call void @llvm.lifetime.start.p0(i64 4, ptr %36) #8
  %317 = load ptr, ptr %17, align 8, !tbaa !10
  %318 = call ptr @xcalloc(i64 noundef 1, i64 noundef 48)
  call void @add_col_elt(ptr noundef %317, ptr noundef %318)
  %319 = load ptr, ptr %17, align 8, !tbaa !10
  %320 = getelementptr inbounds nuw %struct._collec_t, ptr %319, i32 0, i32 0
  %321 = load ptr, ptr %320, align 8, !tbaa !28
  %322 = load ptr, ptr %17, align 8, !tbaa !10
  %323 = getelementptr inbounds nuw %struct._collec_t, ptr %322, i32 0, i32 1
  %324 = load i32, ptr %323, align 8, !tbaa !26
  %325 = sub i32 %324, 1
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds nuw ptr, ptr %321, i64 %326
  %328 = load ptr, ptr %327, align 8, !tbaa !29
  store ptr %328, ptr %22, align 8, !tbaa !29
  %329 = load i32, ptr %24, align 4, !tbaa !25
  %330 = load ptr, ptr %22, align 8, !tbaa !29
  %331 = getelementptr inbounds nuw %struct._result_t, ptr %330, i32 0, i32 2
  store i32 %329, ptr %331, align 8, !tbaa !42
  %332 = load ptr, ptr %32, align 8, !tbaa !37
  %333 = getelementptr inbounds nuw %struct._exon_t, ptr %332, i32 0, i32 0
  %334 = load i32, ptr %333, align 4, !tbaa !41
  %335 = load i32, ptr %24, align 4, !tbaa !25
  %336 = sub i32 %334, %335
  %337 = load ptr, ptr %22, align 8, !tbaa !29
  %338 = getelementptr inbounds nuw %struct._result_t, ptr %337, i32 0, i32 3
  store i32 %336, ptr %338, align 4, !tbaa !54
  %339 = load ptr, ptr %22, align 8, !tbaa !29
  %340 = getelementptr inbounds nuw %struct._result_t, ptr %339, i32 0, i32 1
  store ptr %340, ptr %18, align 8, !tbaa !10
  %341 = load ptr, ptr %18, align 8, !tbaa !10
  %342 = load i32, ptr %19, align 4, !tbaa !25
  %343 = load i32, ptr %23, align 4, !tbaa !25
  %344 = sub i32 %342, %343
  call void @init_col(ptr noundef %341, i32 noundef signext %344)
  %345 = load ptr, ptr %16, align 8, !tbaa !10
  %346 = getelementptr inbounds nuw %struct._collec_t, ptr %345, i32 0, i32 0
  %347 = load ptr, ptr %346, align 8, !tbaa !28
  %348 = load i32, ptr %33, align 4, !tbaa !25
  %349 = load ptr, ptr %18, align 8, !tbaa !10
  call void @msp2exons(ptr noundef %347, i32 noundef signext %348, ptr noundef %349, i32 noundef signext 0)
  store i32 0, ptr %36, align 4, !tbaa !25
  br label %350

350:                                              ; preds = %384, %316
  %351 = load i32, ptr %36, align 4, !tbaa !25
  %352 = load ptr, ptr %18, align 8, !tbaa !10
  %353 = getelementptr inbounds nuw %struct._collec_t, ptr %352, i32 0, i32 1
  %354 = load i32, ptr %353, align 8, !tbaa !26
  %355 = icmp ult i32 %351, %354
  br i1 %355, label %356, label %387

356:                                              ; preds = %350
  call void @llvm.lifetime.start.p0(i64 8, ptr %37) #8
  %357 = load ptr, ptr %18, align 8, !tbaa !10
  %358 = getelementptr inbounds nuw %struct._collec_t, ptr %357, i32 0, i32 0
  %359 = load ptr, ptr %358, align 8, !tbaa !28
  %360 = load i32, ptr %36, align 4, !tbaa !25
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds nuw ptr, ptr %359, i64 %361
  %363 = load ptr, ptr %362, align 8, !tbaa !37
  store ptr %363, ptr %37, align 8, !tbaa !37
  %364 = load i32, ptr %13, align 4, !tbaa !25
  %365 = load ptr, ptr %37, align 8, !tbaa !37
  %366 = getelementptr inbounds nuw %struct._exon_t, ptr %365, i32 0, i32 2
  %367 = load i32, ptr %366, align 4, !tbaa !53
  %368 = add i32 %367, %364
  store i32 %368, ptr %366, align 4, !tbaa !53
  %369 = load i32, ptr %13, align 4, !tbaa !25
  %370 = load ptr, ptr %37, align 8, !tbaa !37
  %371 = getelementptr inbounds nuw %struct._exon_t, ptr %370, i32 0, i32 0
  %372 = load i32, ptr %371, align 4, !tbaa !41
  %373 = add i32 %372, %369
  store i32 %373, ptr %371, align 4, !tbaa !41
  %374 = load i32, ptr %14, align 4, !tbaa !25
  %375 = load ptr, ptr %37, align 8, !tbaa !37
  %376 = getelementptr inbounds nuw %struct._exon_t, ptr %375, i32 0, i32 3
  %377 = load i32, ptr %376, align 4, !tbaa !52
  %378 = add i32 %377, %374
  store i32 %378, ptr %376, align 4, !tbaa !52
  %379 = load i32, ptr %14, align 4, !tbaa !25
  %380 = load ptr, ptr %37, align 8, !tbaa !37
  %381 = getelementptr inbounds nuw %struct._exon_t, ptr %380, i32 0, i32 1
  %382 = load i32, ptr %381, align 4, !tbaa !39
  %383 = add i32 %382, %379
  store i32 %383, ptr %381, align 4, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 8, ptr %37) #8
  br label %384

384:                                              ; preds = %356
  %385 = load i32, ptr %36, align 4, !tbaa !25
  %386 = add i32 %385, 1
  store i32 %386, ptr %36, align 4, !tbaa !25
  br label %350, !llvm.loop !69

387:                                              ; preds = %350
  %388 = load i32, ptr %19, align 4, !tbaa !25
  store i32 %388, ptr %23, align 4, !tbaa !25
  %389 = load ptr, ptr %16, align 8, !tbaa !10
  %390 = getelementptr inbounds nuw %struct._collec_t, ptr %389, i32 0, i32 0
  %391 = load ptr, ptr %390, align 8, !tbaa !28
  %392 = load i32, ptr %33, align 4, !tbaa !25
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds ptr, ptr %391, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !37
  %396 = getelementptr inbounds nuw %struct._exon_t, ptr %395, i32 0, i32 2
  %397 = load i32, ptr %396, align 4, !tbaa !53
  store i32 %397, ptr %24, align 4, !tbaa !25
  store i32 0, ptr %27, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 4, ptr %36) #8
  br label %398

398:                                              ; preds = %387, %312, %305
  call void @llvm.lifetime.end.p0(i64 4, ptr %35) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %34) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %33) #8
  br label %399

399:                                              ; preds = %398, %258, %251
  call void @llvm.lifetime.end.p0(i64 8, ptr %32) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %31) #8
  br label %400

400:                                              ; preds = %399
  %401 = load i32, ptr %19, align 4, !tbaa !25
  %402 = add i32 %401, 1
  store i32 %402, ptr %19, align 4, !tbaa !25
  br label %200, !llvm.loop !70

403:                                              ; preds = %200
  %404 = load i32, ptr %27, align 4, !tbaa !25
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %403
  %407 = load ptr, ptr %16, align 8, !tbaa !10
  %408 = load i32, ptr %23, align 4, !tbaa !25
  %409 = load ptr, ptr %16, align 8, !tbaa !10
  %410 = getelementptr inbounds nuw %struct._collec_t, ptr %409, i32 0, i32 1
  %411 = load i32, ptr %410, align 8, !tbaa !26
  %412 = call signext i32 @link_msps(ptr noundef %407, i32 noundef signext %408, i32 noundef signext %411)
  store i32 %412, ptr %20, align 4, !tbaa !25
  br label %413

413:                                              ; preds = %406, %403
  %414 = load ptr, ptr %17, align 8, !tbaa !10
  %415 = call ptr @xcalloc(i64 noundef 1, i64 noundef 48)
  call void @add_col_elt(ptr noundef %414, ptr noundef %415)
  %416 = load ptr, ptr %17, align 8, !tbaa !10
  %417 = getelementptr inbounds nuw %struct._collec_t, ptr %416, i32 0, i32 0
  %418 = load ptr, ptr %417, align 8, !tbaa !28
  %419 = load ptr, ptr %17, align 8, !tbaa !10
  %420 = getelementptr inbounds nuw %struct._collec_t, ptr %419, i32 0, i32 1
  %421 = load i32, ptr %420, align 8, !tbaa !26
  %422 = sub i32 %421, 1
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds nuw ptr, ptr %418, i64 %423
  %425 = load ptr, ptr %424, align 8, !tbaa !29
  store ptr %425, ptr %22, align 8, !tbaa !29
  %426 = load i32, ptr %24, align 4, !tbaa !25
  %427 = load ptr, ptr %22, align 8, !tbaa !29
  %428 = getelementptr inbounds nuw %struct._result_t, ptr %427, i32 0, i32 2
  store i32 %426, ptr %428, align 8, !tbaa !42
  %429 = load ptr, ptr %10, align 8, !tbaa !3
  %430 = getelementptr inbounds nuw %struct._hash_env_t, ptr %429, i32 0, i32 2
  %431 = load i32, ptr %430, align 8, !tbaa !12
  %432 = load i32, ptr %24, align 4, !tbaa !25
  %433 = sub i32 %431, %432
  %434 = load ptr, ptr %22, align 8, !tbaa !29
  %435 = getelementptr inbounds nuw %struct._result_t, ptr %434, i32 0, i32 3
  store i32 %433, ptr %435, align 4, !tbaa !54
  %436 = load ptr, ptr %22, align 8, !tbaa !29
  %437 = getelementptr inbounds nuw %struct._result_t, ptr %436, i32 0, i32 1
  store ptr %437, ptr %18, align 8, !tbaa !10
  store i32 0, ptr %30, align 4
  br label %438

438:                                              ; preds = %413, %176
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %22) #8
  %439 = load i32, ptr %30, align 4
  switch i32 %439, label %504 [
    i32 0, label %440
  ]

440:                                              ; preds = %438
  br label %447

441:                                              ; preds = %9
  %442 = load ptr, ptr %16, align 8, !tbaa !10
  %443 = load ptr, ptr %16, align 8, !tbaa !10
  %444 = getelementptr inbounds nuw %struct._collec_t, ptr %443, i32 0, i32 1
  %445 = load i32, ptr %444, align 8, !tbaa !26
  %446 = call signext i32 @link_msps(ptr noundef %442, i32 noundef signext 0, i32 noundef signext %445)
  store i32 %446, ptr %20, align 4, !tbaa !25
  br label %447

447:                                              ; preds = %441, %440
  %448 = load ptr, ptr %18, align 8, !tbaa !10
  %449 = getelementptr inbounds nuw %struct._collec_t, ptr %448, i32 0, i32 2
  %450 = load i32, ptr %449, align 4, !tbaa !63
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %457

452:                                              ; preds = %447
  %453 = load ptr, ptr %18, align 8, !tbaa !10
  %454 = load ptr, ptr %16, align 8, !tbaa !10
  %455 = getelementptr inbounds nuw %struct._collec_t, ptr %454, i32 0, i32 1
  %456 = load i32, ptr %455, align 8, !tbaa !26
  call void @init_col(ptr noundef %453, i32 noundef signext %456)
  br label %457

457:                                              ; preds = %452, %447
  %458 = load ptr, ptr %16, align 8, !tbaa !10
  %459 = getelementptr inbounds nuw %struct._collec_t, ptr %458, i32 0, i32 0
  %460 = load ptr, ptr %459, align 8, !tbaa !28
  %461 = load i32, ptr %20, align 4, !tbaa !25
  %462 = load ptr, ptr %18, align 8, !tbaa !10
  %463 = load i32, ptr %21, align 4, !tbaa !25
  call void @msp2exons(ptr noundef %460, i32 noundef signext %461, ptr noundef %462, i32 noundef signext %463)
  store i32 0, ptr %19, align 4, !tbaa !25
  br label %464

464:                                              ; preds = %498, %457
  %465 = load i32, ptr %19, align 4, !tbaa !25
  %466 = load ptr, ptr %18, align 8, !tbaa !10
  %467 = getelementptr inbounds nuw %struct._collec_t, ptr %466, i32 0, i32 1
  %468 = load i32, ptr %467, align 8, !tbaa !26
  %469 = icmp ult i32 %465, %468
  br i1 %469, label %470, label %501

470:                                              ; preds = %464
  call void @llvm.lifetime.start.p0(i64 8, ptr %38) #8
  %471 = load ptr, ptr %18, align 8, !tbaa !10
  %472 = getelementptr inbounds nuw %struct._collec_t, ptr %471, i32 0, i32 0
  %473 = load ptr, ptr %472, align 8, !tbaa !28
  %474 = load i32, ptr %19, align 4, !tbaa !25
  %475 = zext i32 %474 to i64
  %476 = getelementptr inbounds nuw ptr, ptr %473, i64 %475
  %477 = load ptr, ptr %476, align 8, !tbaa !37
  store ptr %477, ptr %38, align 8, !tbaa !37
  %478 = load i32, ptr %13, align 4, !tbaa !25
  %479 = load ptr, ptr %38, align 8, !tbaa !37
  %480 = getelementptr inbounds nuw %struct._exon_t, ptr %479, i32 0, i32 2
  %481 = load i32, ptr %480, align 4, !tbaa !53
  %482 = add i32 %481, %478
  store i32 %482, ptr %480, align 4, !tbaa !53
  %483 = load i32, ptr %13, align 4, !tbaa !25
  %484 = load ptr, ptr %38, align 8, !tbaa !37
  %485 = getelementptr inbounds nuw %struct._exon_t, ptr %484, i32 0, i32 0
  %486 = load i32, ptr %485, align 4, !tbaa !41
  %487 = add i32 %486, %483
  store i32 %487, ptr %485, align 4, !tbaa !41
  %488 = load i32, ptr %14, align 4, !tbaa !25
  %489 = load ptr, ptr %38, align 8, !tbaa !37
  %490 = getelementptr inbounds nuw %struct._exon_t, ptr %489, i32 0, i32 3
  %491 = load i32, ptr %490, align 4, !tbaa !52
  %492 = add i32 %491, %488
  store i32 %492, ptr %490, align 4, !tbaa !52
  %493 = load i32, ptr %14, align 4, !tbaa !25
  %494 = load ptr, ptr %38, align 8, !tbaa !37
  %495 = getelementptr inbounds nuw %struct._exon_t, ptr %494, i32 0, i32 1
  %496 = load i32, ptr %495, align 4, !tbaa !39
  %497 = add i32 %496, %493
  store i32 %497, ptr %495, align 4, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 8, ptr %38) #8
  br label %498

498:                                              ; preds = %470
  %499 = load i32, ptr %19, align 4, !tbaa !25
  %500 = add i32 %499, 1
  store i32 %500, ptr %19, align 4, !tbaa !25
  br label %464, !llvm.loop !71

501:                                              ; preds = %464
  %502 = load ptr, ptr %16, align 8, !tbaa !10
  %503 = getelementptr inbounds nuw %struct._collec_t, ptr %502, i32 0, i32 1
  store i32 0, ptr %503, align 8, !tbaa !26
  store i32 0, ptr %30, align 4
  br label %504

504:                                              ; preds = %501, %438
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  %505 = load i32, ptr %30, align 4
  switch i32 %505, label %507 [
    i32 0, label %506
    i32 1, label %506
  ]

506:                                              ; preds = %504, %504
  ret void

507:                                              ; preds = %504
  unreachable
}

; Function Attrs: nounwind
define internal void @kill_polyA(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca %struct.anon, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !29
  store ptr %1, ptr %5, align 8, !tbaa !64
  store ptr %2, ptr %6, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  %24 = load ptr, ptr %4, align 8, !tbaa !29
  %25 = getelementptr inbounds nuw %struct._result_t, ptr %24, i32 0, i32 1
  store ptr %25, ptr %8, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 12, ptr %9) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %9, i64 12, i1 false), !tbaa.struct !72
  store i32 0, ptr %7, align 4, !tbaa !25
  br label %26

26:                                               ; preds = %45, %3
  %27 = load i32, ptr %7, align 4, !tbaa !25
  %28 = load ptr, ptr %8, align 8, !tbaa !10
  %29 = getelementptr inbounds nuw %struct._collec_t, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !26
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load ptr, ptr %8, align 8, !tbaa !10
  %34 = getelementptr inbounds nuw %struct._collec_t, ptr %33, i32 0, i32 0
  %35 = load ptr, ptr %34, align 8, !tbaa !28
  %36 = load i32, ptr %7, align 4, !tbaa !25
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds nuw ptr, ptr %35, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !37
  %40 = load ptr, ptr %6, align 8, !tbaa !64
  %41 = call signext i32 @is_polyAT_exon_p(ptr noundef %39, ptr noundef %40)
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %32, %26
  %44 = phi i1 [ false, %26 ], [ %42, %32 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i32, ptr %7, align 4, !tbaa !25
  %47 = add i32 %46, 1
  store i32 %47, ptr %7, align 4, !tbaa !25
  br label %26, !llvm.loop !73

48:                                               ; preds = %43
  %49 = load i32, ptr %7, align 4, !tbaa !25
  %50 = icmp ugt i32 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  store i32 0, ptr %10, align 4, !tbaa !25
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i32, ptr %10, align 4, !tbaa !25
  %54 = load i32, ptr %7, align 4, !tbaa !25
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load ptr, ptr %8, align 8, !tbaa !10
  %58 = getelementptr inbounds nuw %struct._collec_t, ptr %57, i32 0, i32 0
  %59 = load ptr, ptr %58, align 8, !tbaa !28
  %60 = load i32, ptr %10, align 4, !tbaa !25
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw ptr, ptr %59, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !37
  call void @free(ptr noundef %63) #8
  br label %64

64:                                               ; preds = %56
  %65 = load i32, ptr %10, align 4, !tbaa !25
  %66 = add i32 %65, 1
  store i32 %66, ptr %10, align 4, !tbaa !25
  br label %52, !llvm.loop !74

67:                                               ; preds = %52
  %68 = load ptr, ptr %8, align 8, !tbaa !10
  %69 = getelementptr inbounds nuw %struct._collec_t, ptr %68, i32 0, i32 0
  %70 = load ptr, ptr %69, align 8, !tbaa !28
  %71 = load ptr, ptr %8, align 8, !tbaa !10
  %72 = getelementptr inbounds nuw %struct._collec_t, ptr %71, i32 0, i32 0
  %73 = load ptr, ptr %72, align 8, !tbaa !28
  %74 = load i32, ptr %7, align 4, !tbaa !25
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds nuw ptr, ptr %73, i64 %75
  %77 = load ptr, ptr %8, align 8, !tbaa !10
  %78 = getelementptr inbounds nuw %struct._collec_t, ptr %77, i32 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !26
  %80 = load i32, ptr %7, align 4, !tbaa !25
  %81 = sub i32 %79, %80
  %82 = zext i32 %81 to i64
  %83 = mul i64 %82, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %70, ptr align 8 %76, i64 %83, i1 false)
  %84 = load i32, ptr %7, align 4, !tbaa !25
  %85 = load ptr, ptr %8, align 8, !tbaa !10
  %86 = getelementptr inbounds nuw %struct._collec_t, ptr %85, i32 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !26
  %88 = sub i32 %87, %84
  store i32 %88, ptr %86, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  br label %89

89:                                               ; preds = %67, %48
  store i32 0, ptr %7, align 4, !tbaa !25
  br label %90

90:                                               ; preds = %114, %89
  %91 = load i32, ptr %7, align 4, !tbaa !25
  %92 = load ptr, ptr %8, align 8, !tbaa !10
  %93 = getelementptr inbounds nuw %struct._collec_t, ptr %92, i32 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !26
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %90
  %97 = load ptr, ptr %8, align 8, !tbaa !10
  %98 = getelementptr inbounds nuw %struct._collec_t, ptr %97, i32 0, i32 0
  %99 = load ptr, ptr %98, align 8, !tbaa !28
  %100 = load ptr, ptr %8, align 8, !tbaa !10
  %101 = getelementptr inbounds nuw %struct._collec_t, ptr %100, i32 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !26
  %103 = load i32, ptr %7, align 4, !tbaa !25
  %104 = sub i32 %102, %103
  %105 = sub i32 %104, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds nuw ptr, ptr %99, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !37
  %109 = load ptr, ptr %6, align 8, !tbaa !64
  %110 = call signext i32 @is_polyAT_exon_p(ptr noundef %108, ptr noundef %109)
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %96, %90
  %113 = phi i1 [ false, %90 ], [ %111, %96 ]
  br i1 %113, label %114, label %117

114:                                              ; preds = %112
  %115 = load i32, ptr %7, align 4, !tbaa !25
  %116 = add i32 %115, 1
  store i32 %116, ptr %7, align 4, !tbaa !25
  br label %90, !llvm.loop !75

117:                                              ; preds = %112
  %118 = load i32, ptr %7, align 4, !tbaa !25
  %119 = icmp ugt i32 %118, 0
  br i1 %119, label %120, label %149

120:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  %121 = load ptr, ptr %8, align 8, !tbaa !10
  %122 = getelementptr inbounds nuw %struct._collec_t, ptr %121, i32 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !26
  %124 = load i32, ptr %7, align 4, !tbaa !25
  %125 = sub i32 %123, %124
  store i32 %125, ptr %11, align 4, !tbaa !25
  br label %126

126:                                              ; preds = %140, %120
  %127 = load i32, ptr %11, align 4, !tbaa !25
  %128 = load ptr, ptr %8, align 8, !tbaa !10
  %129 = getelementptr inbounds nuw %struct._collec_t, ptr %128, i32 0, i32 1
  %130 = load i32, ptr %129, align 8, !tbaa !26
  %131 = icmp ult i32 %127, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %126
  %133 = load ptr, ptr %8, align 8, !tbaa !10
  %134 = getelementptr inbounds nuw %struct._collec_t, ptr %133, i32 0, i32 0
  %135 = load ptr, ptr %134, align 8, !tbaa !28
  %136 = load i32, ptr %11, align 4, !tbaa !25
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds nuw ptr, ptr %135, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !37
  call void @free(ptr noundef %139) #8
  br label %140

140:                                              ; preds = %132
  %141 = load i32, ptr %11, align 4, !tbaa !25
  %142 = add i32 %141, 1
  store i32 %142, ptr %11, align 4, !tbaa !25
  br label %126, !llvm.loop !76

143:                                              ; preds = %126
  %144 = load i32, ptr %7, align 4, !tbaa !25
  %145 = load ptr, ptr %8, align 8, !tbaa !10
  %146 = getelementptr inbounds nuw %struct._collec_t, ptr %145, i32 0, i32 1
  %147 = load i32, ptr %146, align 8, !tbaa !26
  %148 = sub i32 %147, %144
  store i32 %148, ptr %146, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  br label %149

149:                                              ; preds = %143, %117
  %150 = load ptr, ptr %8, align 8, !tbaa !10
  %151 = getelementptr inbounds nuw %struct._collec_t, ptr %150, i32 0, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !26
  %153 = icmp ugt i32 %152, 0
  br i1 %153, label %154, label %277

154:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #8
  %155 = load ptr, ptr %8, align 8, !tbaa !10
  %156 = getelementptr inbounds nuw %struct._collec_t, ptr %155, i32 0, i32 0
  %157 = load ptr, ptr %156, align 8, !tbaa !28
  %158 = load ptr, ptr %8, align 8, !tbaa !10
  %159 = getelementptr inbounds nuw %struct._collec_t, ptr %158, i32 0, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !26
  %161 = sub i32 %160, 1
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds nuw ptr, ptr %157, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !37
  store ptr %164, ptr %12, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8
  store i32 0, ptr %13, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8
  store i32 0, ptr %14, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  store i32 0, ptr %15, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  store i32 0, ptr %16, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #8
  %165 = load ptr, ptr %6, align 8, !tbaa !64
  %166 = load ptr, ptr %12, align 8, !tbaa !37
  %167 = getelementptr inbounds nuw %struct._exon_t, ptr %166, i32 0, i32 3
  %168 = load i32, ptr %167, align 4, !tbaa !52
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds nuw i8, ptr %165, i64 %169
  store ptr %170, ptr %17, align 8, !tbaa !64
  %171 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 0
  store i32 0, ptr %171, align 4, !tbaa !77
  br label %172

172:                                              ; preds = %211, %154
  %173 = load ptr, ptr %17, align 8, !tbaa !64
  %174 = load i8, ptr %173, align 1, !tbaa !28
  %175 = zext i8 %174 to i32
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 0
  %179 = load i32, ptr %178, align 4, !tbaa !77
  %180 = load i32, ptr %16, align 4, !tbaa !25
  %181 = sub nsw i32 %179, %180
  %182 = icmp slt i32 %181, 10
  br label %183

183:                                              ; preds = %177, %172
  %184 = phi i1 [ false, %172 ], [ %182, %177 ]
  br i1 %184, label %185, label %214

185:                                              ; preds = %183
  %186 = load i32, ptr %15, align 4, !tbaa !25
  %187 = add i32 %186, 1
  store i32 %187, ptr %15, align 4, !tbaa !25
  %188 = load ptr, ptr %17, align 8, !tbaa !64
  %189 = load i8, ptr %188, align 1, !tbaa !28
  %190 = zext i8 %189 to i32
  switch i32 %190, label %208 [
    i32 65, label %191
    i32 78, label %211
  ]

191:                                              ; preds = %185
  %192 = load i32, ptr %14, align 4, !tbaa !25
  %193 = add i32 %192, 1
  store i32 %193, ptr %14, align 4, !tbaa !25
  %194 = load i32, ptr %16, align 4, !tbaa !25
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr %16, align 4, !tbaa !25
  %196 = load i32, ptr %16, align 4, !tbaa !25
  %197 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 0
  %198 = load i32, ptr %197, align 4, !tbaa !77
  %199 = icmp sgt i32 %196, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %191
  %201 = load i32, ptr %16, align 4, !tbaa !25
  %202 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 0
  store i32 %201, ptr %202, align 4, !tbaa !77
  %203 = load i32, ptr %14, align 4, !tbaa !25
  %204 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 1
  store i32 %203, ptr %204, align 4, !tbaa !79
  %205 = load i32, ptr %15, align 4, !tbaa !25
  %206 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 2
  store i32 %205, ptr %206, align 4, !tbaa !80
  br label %207

207:                                              ; preds = %200, %191
  br label %211

208:                                              ; preds = %185
  %209 = load i32, ptr %16, align 4, !tbaa !25
  %210 = sub nsw i32 %209, 2
  store i32 %210, ptr %16, align 4, !tbaa !25
  br label %211

211:                                              ; preds = %208, %185, %207
  %212 = load ptr, ptr %17, align 8, !tbaa !64
  %213 = getelementptr inbounds i8, ptr %212, i64 1
  store ptr %213, ptr %17, align 8, !tbaa !64
  br label %172, !llvm.loop !81

214:                                              ; preds = %183
  %215 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 0
  %216 = load i32, ptr %215, align 4, !tbaa !77
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %276

218:                                              ; preds = %214
  %219 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 1
  %220 = load i32, ptr %219, align 4, !tbaa !79
  %221 = icmp uge i32 %220, 8
  br i1 %221, label %222, label %276

222:                                              ; preds = %218
  %223 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 1
  %224 = load i32, ptr %223, align 4, !tbaa !79
  %225 = mul i32 %224, 10
  %226 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 2
  %227 = load i32, ptr %226, align 4, !tbaa !80
  %228 = udiv i32 %225, %227
  %229 = icmp uge i32 %228, 8
  br i1 %229, label %230, label %276

230:                                              ; preds = %222
  %231 = load ptr, ptr %5, align 8, !tbaa !64
  %232 = load ptr, ptr %12, align 8, !tbaa !37
  %233 = getelementptr inbounds nuw %struct._exon_t, ptr %232, i32 0, i32 2
  %234 = load i32, ptr %233, align 4, !tbaa !53
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds nuw i8, ptr %231, i64 %235
  store ptr %236, ptr %17, align 8, !tbaa !64
  store i32 0, ptr %15, align 4, !tbaa !25
  br label %237

237:                                              ; preds = %259, %230
  %238 = load ptr, ptr %17, align 8, !tbaa !64
  %239 = load i8, ptr %238, align 1, !tbaa !28
  %240 = zext i8 %239 to i32
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load i32, ptr %15, align 4, !tbaa !25
  %244 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 2
  %245 = load i32, ptr %244, align 4, !tbaa !80
  %246 = icmp ult i32 %243, %245
  br label %247

247:                                              ; preds = %242, %237
  %248 = phi i1 [ false, %237 ], [ %246, %242 ]
  br i1 %248, label %249, label %262

249:                                              ; preds = %247
  %250 = load i32, ptr %15, align 4, !tbaa !25
  %251 = add i32 %250, 1
  store i32 %251, ptr %15, align 4, !tbaa !25
  %252 = load ptr, ptr %17, align 8, !tbaa !64
  %253 = load i8, ptr %252, align 1, !tbaa !28
  %254 = zext i8 %253 to i32
  %255 = icmp eq i32 %254, 65
  br i1 %255, label %256, label %259

256:                                              ; preds = %249
  %257 = load i32, ptr %13, align 4, !tbaa !25
  %258 = add i32 %257, 1
  store i32 %258, ptr %13, align 4, !tbaa !25
  br label %259

259:                                              ; preds = %256, %249
  %260 = load ptr, ptr %17, align 8, !tbaa !64
  %261 = getelementptr inbounds i8, ptr %260, i64 1
  store ptr %261, ptr %17, align 8, !tbaa !64
  br label %237, !llvm.loop !82

262:                                              ; preds = %247
  %263 = load i32, ptr %15, align 4, !tbaa !25
  %264 = icmp ugt i32 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %262
  %266 = load i32, ptr %13, align 4, !tbaa !25
  %267 = mul i32 %266, 10
  %268 = load i32, ptr %15, align 4, !tbaa !25
  %269 = udiv i32 %267, %268
  %270 = icmp ult i32 %269, 8
  br i1 %270, label %271, label %275

271:                                              ; preds = %265
  %272 = load ptr, ptr %4, align 8, !tbaa !29
  %273 = getelementptr inbounds nuw %struct._result_t, ptr %272, i32 0, i32 5
  %274 = getelementptr inbounds nuw %struct._sim4_stats, ptr %273, i32 0, i32 1
  store i32 1, ptr %274, align 4, !tbaa !83
  br label %275

275:                                              ; preds = %271, %265, %262
  br label %276

276:                                              ; preds = %275, %222, %218, %214
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #8
  br label %277

277:                                              ; preds = %276, %149
  %278 = load ptr, ptr %8, align 8, !tbaa !10
  %279 = getelementptr inbounds nuw %struct._collec_t, ptr %278, i32 0, i32 1
  %280 = load i32, ptr %279, align 8, !tbaa !26
  %281 = icmp ugt i32 %280, 0
  br i1 %281, label %282, label %400

282:                                              ; preds = %277
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #8
  %283 = load ptr, ptr %8, align 8, !tbaa !10
  %284 = getelementptr inbounds nuw %struct._collec_t, ptr %283, i32 0, i32 0
  %285 = load ptr, ptr %284, align 8, !tbaa !28
  %286 = getelementptr inbounds ptr, ptr %285, i64 0
  %287 = load ptr, ptr %286, align 8, !tbaa !37
  store ptr %287, ptr %18, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  store i32 0, ptr %19, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8
  store i32 0, ptr %20, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  store i32 0, ptr %21, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8
  store i32 0, ptr %22, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %23) #8
  %288 = load ptr, ptr %6, align 8, !tbaa !64
  %289 = load ptr, ptr %18, align 8, !tbaa !37
  %290 = getelementptr inbounds nuw %struct._exon_t, ptr %289, i32 0, i32 1
  %291 = load i32, ptr %290, align 4, !tbaa !39
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds nuw i8, ptr %288, i64 %292
  %294 = getelementptr inbounds i8, ptr %293, i64 -2
  store ptr %294, ptr %23, align 8, !tbaa !64
  %295 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 0
  store i32 0, ptr %295, align 4, !tbaa !77
  br label %296

296:                                              ; preds = %334, %282
  %297 = load ptr, ptr %23, align 8, !tbaa !64
  %298 = load ptr, ptr %6, align 8, !tbaa !64
  %299 = icmp uge ptr %297, %298
  br i1 %299, label %300, label %306

300:                                              ; preds = %296
  %301 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 0
  %302 = load i32, ptr %301, align 4, !tbaa !77
  %303 = load i32, ptr %22, align 4, !tbaa !25
  %304 = sub nsw i32 %302, %303
  %305 = icmp slt i32 %304, 10
  br label %306

306:                                              ; preds = %300, %296
  %307 = phi i1 [ false, %296 ], [ %305, %300 ]
  br i1 %307, label %308, label %337

308:                                              ; preds = %306
  %309 = load i32, ptr %21, align 4, !tbaa !25
  %310 = add i32 %309, 1
  store i32 %310, ptr %21, align 4, !tbaa !25
  %311 = load ptr, ptr %23, align 8, !tbaa !64
  %312 = load i8, ptr %311, align 1, !tbaa !28
  %313 = zext i8 %312 to i32
  switch i32 %313, label %331 [
    i32 84, label %314
    i32 78, label %334
  ]

314:                                              ; preds = %308
  %315 = load i32, ptr %20, align 4, !tbaa !25
  %316 = add i32 %315, 1
  store i32 %316, ptr %20, align 4, !tbaa !25
  %317 = load i32, ptr %22, align 4, !tbaa !25
  %318 = add nsw i32 %317, 1
  store i32 %318, ptr %22, align 4, !tbaa !25
  %319 = load i32, ptr %22, align 4, !tbaa !25
  %320 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 0
  %321 = load i32, ptr %320, align 4, !tbaa !77
  %322 = icmp sgt i32 %319, %321
  br i1 %322, label %323, label %330

323:                                              ; preds = %314
  %324 = load i32, ptr %22, align 4, !tbaa !25
  %325 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 0
  store i32 %324, ptr %325, align 4, !tbaa !77
  %326 = load i32, ptr %20, align 4, !tbaa !25
  %327 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 1
  store i32 %326, ptr %327, align 4, !tbaa !79
  %328 = load i32, ptr %21, align 4, !tbaa !25
  %329 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 2
  store i32 %328, ptr %329, align 4, !tbaa !80
  br label %330

330:                                              ; preds = %323, %314
  br label %334

331:                                              ; preds = %308
  %332 = load i32, ptr %22, align 4, !tbaa !25
  %333 = sub nsw i32 %332, 2
  store i32 %333, ptr %22, align 4, !tbaa !25
  br label %334

334:                                              ; preds = %331, %308, %330
  %335 = load ptr, ptr %23, align 8, !tbaa !64
  %336 = getelementptr inbounds i8, ptr %335, i64 -1
  store ptr %336, ptr %23, align 8, !tbaa !64
  br label %296, !llvm.loop !84

337:                                              ; preds = %306
  %338 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 0
  %339 = load i32, ptr %338, align 4, !tbaa !77
  %340 = icmp sgt i32 %339, 0
  br i1 %340, label %341, label %399

341:                                              ; preds = %337
  %342 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 1
  %343 = load i32, ptr %342, align 4, !tbaa !79
  %344 = icmp uge i32 %343, 8
  br i1 %344, label %345, label %399

345:                                              ; preds = %341
  %346 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 1
  %347 = load i32, ptr %346, align 4, !tbaa !79
  %348 = mul i32 %347, 10
  %349 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 2
  %350 = load i32, ptr %349, align 4, !tbaa !80
  %351 = udiv i32 %348, %350
  %352 = icmp uge i32 %351, 8
  br i1 %352, label %353, label %399

353:                                              ; preds = %345
  %354 = load ptr, ptr %5, align 8, !tbaa !64
  %355 = load ptr, ptr %18, align 8, !tbaa !37
  %356 = getelementptr inbounds nuw %struct._exon_t, ptr %355, i32 0, i32 0
  %357 = load i32, ptr %356, align 4, !tbaa !41
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds nuw i8, ptr %354, i64 %358
  %360 = getelementptr inbounds i8, ptr %359, i64 -2
  store ptr %360, ptr %23, align 8, !tbaa !64
  store i32 0, ptr %21, align 4, !tbaa !25
  br label %361

361:                                              ; preds = %382, %353
  %362 = load ptr, ptr %23, align 8, !tbaa !64
  %363 = load ptr, ptr %5, align 8, !tbaa !64
  %364 = icmp uge ptr %362, %363
  br i1 %364, label %365, label %370

365:                                              ; preds = %361
  %366 = load i32, ptr %21, align 4, !tbaa !25
  %367 = getelementptr inbounds nuw %struct.anon, ptr %9, i32 0, i32 2
  %368 = load i32, ptr %367, align 4, !tbaa !80
  %369 = icmp ult i32 %366, %368
  br label %370

370:                                              ; preds = %365, %361
  %371 = phi i1 [ false, %361 ], [ %369, %365 ]
  br i1 %371, label %372, label %385

372:                                              ; preds = %370
  %373 = load i32, ptr %21, align 4, !tbaa !25
  %374 = add i32 %373, 1
  store i32 %374, ptr %21, align 4, !tbaa !25
  %375 = load ptr, ptr %23, align 8, !tbaa !64
  %376 = load i8, ptr %375, align 1, !tbaa !28
  %377 = zext i8 %376 to i32
  %378 = icmp eq i32 %377, 84
  br i1 %378, label %379, label %382

379:                                              ; preds = %372
  %380 = load i32, ptr %19, align 4, !tbaa !25
  %381 = add i32 %380, 1
  store i32 %381, ptr %19, align 4, !tbaa !25
  br label %382

382:                                              ; preds = %379, %372
  %383 = load ptr, ptr %23, align 8, !tbaa !64
  %384 = getelementptr inbounds i8, ptr %383, i64 -1
  store ptr %384, ptr %23, align 8, !tbaa !64
  br label %361, !llvm.loop !85

385:                                              ; preds = %370
  %386 = load i32, ptr %21, align 4, !tbaa !25
  %387 = icmp ugt i32 %386, 0
  br i1 %387, label %388, label %398

388:                                              ; preds = %385
  %389 = load i32, ptr %19, align 4, !tbaa !25
  %390 = mul i32 %389, 10
  %391 = load i32, ptr %21, align 4, !tbaa !25
  %392 = udiv i32 %390, %391
  %393 = icmp ult i32 %392, 8
  br i1 %393, label %394, label %398

394:                                              ; preds = %388
  %395 = load ptr, ptr %4, align 8, !tbaa !29
  %396 = getelementptr inbounds nuw %struct._result_t, ptr %395, i32 0, i32 5
  %397 = getelementptr inbounds nuw %struct._sim4_stats, ptr %396, i32 0, i32 2
  store i32 1, ptr %397, align 4, !tbaa !86
  br label %398

398:                                              ; preds = %394, %388, %385
  br label %399

399:                                              ; preds = %398, %345, %341, %337
  call void @llvm.lifetime.end.p0(i64 8, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #8
  br label %400

400:                                              ; preds = %399, %277
  call void @llvm.lifetime.end.p0(i64 12, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  ret void
}

; Function Attrs: nounwind
define dso_local void @init_hash_env(ptr noundef %0, i32 noundef signext %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !3
  store i32 %1, ptr %6, align 4, !tbaa !25
  store ptr %2, ptr %7, align 8, !tbaa !64
  store i32 %3, ptr %8, align 4, !tbaa !25
  %9 = load i32, ptr %6, align 4, !tbaa !25
  %10 = load ptr, ptr %5, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct._hash_env_t, ptr %10, i32 0, i32 5
  store i32 %9, ptr %11, align 4, !tbaa !45
  %12 = load ptr, ptr %7, align 8, !tbaa !64
  %13 = load ptr, ptr %5, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct._hash_env_t, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !36
  %15 = load i32, ptr %8, align 4, !tbaa !25
  %16 = load ptr, ptr %5, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct._hash_env_t, ptr %16, i32 0, i32 2
  store i32 %15, ptr %17, align 8, !tbaa !12
  %18 = load i32, ptr %6, align 4, !tbaa !25
  %19 = load i32, ptr %6, align 4, !tbaa !25
  %20 = add i32 %18, %19
  %21 = sub i32 %20, 2
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  %24 = load ptr, ptr %5, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct._hash_env_t, ptr %24, i32 0, i32 4
  store i32 %23, ptr %25, align 8, !tbaa !87
  %26 = load i32, ptr %8, align 4, !tbaa !25
  %27 = add i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = call ptr @xmalloc(i64 noundef %29)
  %31 = load ptr, ptr %5, align 8, !tbaa !3
  %32 = getelementptr inbounds nuw %struct._hash_env_t, ptr %31, i32 0, i32 3
  store ptr %30, ptr %32, align 8, !tbaa !88
  %33 = call ptr @xcalloc(i64 noundef 524288, i64 noundef 8)
  %34 = load ptr, ptr %5, align 8, !tbaa !3
  %35 = getelementptr inbounds nuw %struct._hash_env_t, ptr %34, i32 0, i32 0
  store ptr %33, ptr %35, align 8, !tbaa !89
  ret void
}

; Function Attrs: nounwind
define dso_local void @bld_table(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8
  store i32 0, ptr %4, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #8
  %10 = load ptr, ptr %2, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct._hash_env_t, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  store ptr %12, ptr %5, align 8, !tbaa !64
  br label %13

13:                                               ; preds = %92, %1
  %14 = load i32, ptr %4, align 4, !tbaa !25
  %15 = load ptr, ptr %2, align 8, !tbaa !3
  %16 = getelementptr inbounds nuw %struct._hash_env_t, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !12
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %93

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  br label %20

20:                                               ; preds = %89, %52, %19
  store i32 0, ptr %3, align 4, !tbaa !25
  store i32 1, ptr %6, align 4, !tbaa !25
  br label %21

21:                                               ; preds = %55, %20
  %22 = load i32, ptr %6, align 4, !tbaa !25
  %23 = load ptr, ptr %2, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct._hash_env_t, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !45
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, ptr %4, align 4, !tbaa !25
  %29 = load ptr, ptr %2, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct._hash_env_t, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !12
  %32 = icmp ult i32 %28, %31
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i1 [ false, %21 ], [ %32, %27 ]
  br i1 %34, label %35, label %58

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  %36 = load ptr, ptr %5, align 8, !tbaa !64
  %37 = getelementptr inbounds nuw i8, ptr %36, i32 1
  store ptr %37, ptr %5, align 8, !tbaa !64
  %38 = load i8, ptr %36, align 1, !tbaa !28
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds nuw [128 x i32], ptr @encoding, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !25
  store i32 %41, ptr %7, align 4, !tbaa !25
  %42 = load i32, ptr %4, align 4, !tbaa !25
  %43 = add i32 %42, 1
  store i32 %43, ptr %4, align 4, !tbaa !25
  %44 = load i32, ptr %7, align 4, !tbaa !25
  %45 = icmp ugt i32 %44, 3
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 4, ptr %8, align 4
  br label %52

47:                                               ; preds = %35
  %48 = load i32, ptr %3, align 4, !tbaa !25
  %49 = shl i32 %48, 2
  %50 = load i32, ptr %7, align 4, !tbaa !25
  %51 = add i32 %49, %50
  store i32 %51, ptr %3, align 4, !tbaa !25
  store i32 0, ptr %8, align 4
  br label %52

52:                                               ; preds = %47, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  %53 = load i32, ptr %8, align 4
  switch i32 %53, label %94 [
    i32 0, label %54
    i32 4, label %20
  ]

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %6, align 4, !tbaa !25
  %57 = add i32 %56, 1
  store i32 %57, ptr %6, align 4, !tbaa !25
  br label %21, !llvm.loop !90

58:                                               ; preds = %33
  br label %59

59:                                               ; preds = %91, %58
  %60 = load i32, ptr %4, align 4, !tbaa !25
  %61 = load ptr, ptr %2, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct._hash_env_t, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !12
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  %66 = load ptr, ptr %5, align 8, !tbaa !64
  %67 = getelementptr inbounds nuw i8, ptr %66, i32 1
  store ptr %67, ptr %5, align 8, !tbaa !64
  %68 = load i8, ptr %66, align 1, !tbaa !28
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds nuw [128 x i32], ptr @encoding, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !25
  store i32 %71, ptr %9, align 4, !tbaa !25
  %72 = load i32, ptr %4, align 4, !tbaa !25
  %73 = add i32 %72, 1
  store i32 %73, ptr %4, align 4, !tbaa !25
  %74 = load i32, ptr %9, align 4, !tbaa !25
  %75 = icmp ugt i32 %74, 3
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i32 4, ptr %8, align 4
  br label %89

77:                                               ; preds = %65
  %78 = load i32, ptr %3, align 4, !tbaa !25
  %79 = load ptr, ptr %2, align 8, !tbaa !3
  %80 = getelementptr inbounds nuw %struct._hash_env_t, ptr %79, i32 0, i32 4
  %81 = load i32, ptr %80, align 8, !tbaa !87
  %82 = and i32 %78, %81
  %83 = shl i32 %82, 2
  %84 = load i32, ptr %9, align 4, !tbaa !25
  %85 = add i32 %83, %84
  store i32 %85, ptr %3, align 4, !tbaa !25
  %86 = load ptr, ptr %2, align 8, !tbaa !3
  %87 = load i32, ptr %3, align 4, !tbaa !25
  %88 = load i32, ptr %4, align 4, !tbaa !25
  call void @add_word(ptr noundef %86, i32 noundef signext %87, i32 noundef signext %88)
  store i32 0, ptr %8, align 4
  br label %89

89:                                               ; preds = %77, %76
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  %90 = load i32, ptr %8, align 4
  switch i32 %90, label %94 [
    i32 0, label %91
    i32 4, label %20
  ]

91:                                               ; preds = %89
  br label %59, !llvm.loop !91

92:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  br label %13, !llvm.loop !92

93:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8
  ret void

94:                                               ; preds = %89, %52
  unreachable
}

; Function Attrs: nounwind
define dso_local void @free_hash_env(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8
  %4 = load ptr, ptr %2, align 8, !tbaa !3
  %5 = getelementptr inbounds nuw %struct._hash_env_t, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  call void @free(ptr noundef %6) #8
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i32, ptr %3, align 4, !tbaa !25
  %9 = icmp ult i32 %8, 524288
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load ptr, ptr %2, align 8, !tbaa !3
  %12 = getelementptr inbounds nuw %struct._hash_env_t, ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  %14 = load i32, ptr %3, align 4, !tbaa !25
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds nuw ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  call void @tdestroy(ptr noundef %17, ptr noundef @free)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %3, align 4, !tbaa !25
  %20 = add i32 %19, 1
  store i32 %20, ptr %3, align 4, !tbaa !25
  br label %7, !llvm.loop !94

21:                                               ; preds = %7
  %22 = load ptr, ptr %2, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct._hash_env_t, ptr %22, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  call void @free(ptr noundef %24) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8
  ret void
}

; Function Attrs: nounwind
define internal void @swap_seqs(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i32, ptr %3, align 4, !tbaa !25
  %8 = load ptr, ptr %2, align 8, !tbaa !10
  %9 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !26
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #8
  %13 = load ptr, ptr %2, align 8, !tbaa !10
  %14 = getelementptr inbounds nuw %struct._collec_t, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = load i32, ptr %3, align 4, !tbaa !25
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds nuw ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !37
  store ptr %19, ptr %4, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  %20 = load ptr, ptr %4, align 8, !tbaa !37
  %21 = getelementptr inbounds nuw %struct._exon_t, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 4, !tbaa !41
  store i32 %22, ptr %5, align 4, !tbaa !25
  %23 = load ptr, ptr %4, align 8, !tbaa !37
  %24 = getelementptr inbounds nuw %struct._exon_t, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !39
  %26 = load ptr, ptr %4, align 8, !tbaa !37
  %27 = getelementptr inbounds nuw %struct._exon_t, ptr %26, i32 0, i32 0
  store i32 %25, ptr %27, align 4, !tbaa !41
  %28 = load i32, ptr %5, align 4, !tbaa !25
  %29 = load ptr, ptr %4, align 8, !tbaa !37
  %30 = getelementptr inbounds nuw %struct._exon_t, ptr %29, i32 0, i32 1
  store i32 %28, ptr %30, align 4, !tbaa !39
  %31 = load ptr, ptr %4, align 8, !tbaa !37
  %32 = getelementptr inbounds nuw %struct._exon_t, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !53
  store i32 %33, ptr %5, align 4, !tbaa !25
  %34 = load ptr, ptr %4, align 8, !tbaa !37
  %35 = getelementptr inbounds nuw %struct._exon_t, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !52
  %37 = load ptr, ptr %4, align 8, !tbaa !37
  %38 = getelementptr inbounds nuw %struct._exon_t, ptr %37, i32 0, i32 2
  store i32 %36, ptr %38, align 4, !tbaa !53
  %39 = load i32, ptr %5, align 4, !tbaa !25
  %40 = load ptr, ptr %4, align 8, !tbaa !37
  %41 = getelementptr inbounds nuw %struct._exon_t, ptr %40, i32 0, i32 3
  store i32 %39, ptr %41, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #8
  br label %42

42:                                               ; preds = %12
  %43 = load i32, ptr %3, align 4, !tbaa !25
  %44 = add i32 %43, 1
  store i32 %44, ptr %3, align 4, !tbaa !25
  br label %6, !llvm.loop !95

45:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8
  ret void
}

; Function Attrs: nounwind
define internal void @grow_exon_right(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, ptr noundef %3, i32 noundef signext %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 8, !tbaa !37
  store ptr %1, ptr %7, align 8, !tbaa !64
  store i32 %2, ptr %8, align 4, !tbaa !25
  store ptr %3, ptr %9, align 8, !tbaa !64
  store i32 %4, ptr %10, align 4, !tbaa !25
  br label %11

11:                                               ; preds = %43, %5
  %12 = load ptr, ptr %6, align 8, !tbaa !37
  %13 = getelementptr inbounds nuw %struct._exon_t, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !53
  %15 = load i32, ptr %8, align 4, !tbaa !25
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load ptr, ptr %6, align 8, !tbaa !37
  %19 = getelementptr inbounds nuw %struct._exon_t, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !52
  %21 = load i32, ptr %10, align 4, !tbaa !25
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load ptr, ptr %7, align 8, !tbaa !64
  %25 = load ptr, ptr %6, align 8, !tbaa !37
  %26 = getelementptr inbounds nuw %struct._exon_t, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !53
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds nuw i8, ptr %24, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !28
  %31 = zext i8 %30 to i32
  %32 = load ptr, ptr %9, align 8, !tbaa !64
  %33 = load ptr, ptr %6, align 8, !tbaa !37
  %34 = getelementptr inbounds nuw %struct._exon_t, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !52
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw i8, ptr %32, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !28
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %31, %39
  br label %41

41:                                               ; preds = %23, %17, %11
  %42 = phi i1 [ false, %17 ], [ false, %11 ], [ %40, %23 ]
  br i1 %42, label %43, label %52

43:                                               ; preds = %41
  %44 = load ptr, ptr %6, align 8, !tbaa !37
  %45 = getelementptr inbounds nuw %struct._exon_t, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !53
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4, !tbaa !53
  %48 = load ptr, ptr %6, align 8, !tbaa !37
  %49 = getelementptr inbounds nuw %struct._exon_t, ptr %48, i32 0, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !52
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4, !tbaa !52
  br label %11, !llvm.loop !96

52:                                               ; preds = %41
  ret void
}

; Function Attrs: nounwind
define internal void @merge(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !10
  store ptr %1, ptr %6, align 8, !tbaa !10
  store i32 %2, ptr %7, align 4, !tbaa !25
  store i32 %3, ptr %8, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  %14 = load i32, ptr %7, align 4, !tbaa !25
  %15 = load ptr, ptr %6, align 8, !tbaa !10
  %16 = getelementptr inbounds nuw %struct._collec_t, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !26
  %18 = add i32 %14, %17
  store i32 %18, ptr %9, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  %19 = load ptr, ptr %6, align 8, !tbaa !10
  %20 = getelementptr inbounds nuw %struct._collec_t, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !26
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 1, ptr %11, align 4
  br label %344

24:                                               ; preds = %4
  %25 = load ptr, ptr %5, align 8, !tbaa !10
  %26 = getelementptr inbounds nuw %struct._collec_t, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !26
  %28 = load ptr, ptr %6, align 8, !tbaa !10
  %29 = getelementptr inbounds nuw %struct._collec_t, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !26
  %31 = add i32 %27, %30
  %32 = load ptr, ptr %5, align 8, !tbaa !10
  %33 = getelementptr inbounds nuw %struct._collec_t, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !63
  %35 = icmp ugt i32 %31, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %24
  %37 = load ptr, ptr %5, align 8, !tbaa !10
  %38 = getelementptr inbounds nuw %struct._collec_t, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !26
  %40 = load ptr, ptr %6, align 8, !tbaa !10
  %41 = getelementptr inbounds nuw %struct._collec_t, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !26
  %43 = add i32 %39, %42
  %44 = load ptr, ptr %5, align 8, !tbaa !10
  %45 = getelementptr inbounds nuw %struct._collec_t, ptr %44, i32 0, i32 2
  store i32 %43, ptr %45, align 4, !tbaa !63
  %46 = load ptr, ptr %5, align 8, !tbaa !10
  %47 = getelementptr inbounds nuw %struct._collec_t, ptr %46, i32 0, i32 0
  %48 = load ptr, ptr %47, align 8, !tbaa !28
  %49 = load ptr, ptr %5, align 8, !tbaa !10
  %50 = getelementptr inbounds nuw %struct._collec_t, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !63
  %52 = zext i32 %51 to i64
  %53 = mul i64 %52, 8
  %54 = call ptr @xrealloc(ptr noundef %48, i64 noundef %53)
  %55 = load ptr, ptr %5, align 8, !tbaa !10
  %56 = getelementptr inbounds nuw %struct._collec_t, ptr %55, i32 0, i32 0
  store ptr %54, ptr %56, align 8, !tbaa !28
  br label %57

57:                                               ; preds = %36, %24
  %58 = load ptr, ptr %5, align 8, !tbaa !10
  %59 = getelementptr inbounds nuw %struct._collec_t, ptr %58, i32 0, i32 0
  %60 = load ptr, ptr %59, align 8, !tbaa !28
  %61 = load i32, ptr %9, align 4, !tbaa !25
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds nuw ptr, ptr %60, i64 %62
  %64 = load ptr, ptr %5, align 8, !tbaa !10
  %65 = getelementptr inbounds nuw %struct._collec_t, ptr %64, i32 0, i32 0
  %66 = load ptr, ptr %65, align 8, !tbaa !28
  %67 = load i32, ptr %7, align 4, !tbaa !25
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds nuw ptr, ptr %66, i64 %68
  %70 = load ptr, ptr %5, align 8, !tbaa !10
  %71 = getelementptr inbounds nuw %struct._collec_t, ptr %70, i32 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !26
  %73 = load i32, ptr %7, align 4, !tbaa !25
  %74 = sub i32 %72, %73
  %75 = zext i32 %74 to i64
  %76 = mul i64 %75, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %63, ptr align 8 %69, i64 %76, i1 false)
  %77 = load ptr, ptr %5, align 8, !tbaa !10
  %78 = getelementptr inbounds nuw %struct._collec_t, ptr %77, i32 0, i32 0
  %79 = load ptr, ptr %78, align 8, !tbaa !28
  %80 = load i32, ptr %7, align 4, !tbaa !25
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds nuw ptr, ptr %79, i64 %81
  %83 = load ptr, ptr %6, align 8, !tbaa !10
  %84 = getelementptr inbounds nuw %struct._collec_t, ptr %83, i32 0, i32 0
  %85 = load ptr, ptr %84, align 8, !tbaa !28
  %86 = load ptr, ptr %6, align 8, !tbaa !10
  %87 = getelementptr inbounds nuw %struct._collec_t, ptr %86, i32 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !26
  %89 = zext i32 %88 to i64
  %90 = mul i64 %89, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %82, ptr align 8 %85, i64 %90, i1 false)
  %91 = load ptr, ptr %6, align 8, !tbaa !10
  %92 = getelementptr inbounds nuw %struct._collec_t, ptr %91, i32 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !26
  %94 = load ptr, ptr %5, align 8, !tbaa !10
  %95 = getelementptr inbounds nuw %struct._collec_t, ptr %94, i32 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !26
  %97 = add i32 %96, %93
  store i32 %97, ptr %95, align 8, !tbaa !26
  %98 = load i32, ptr %9, align 4, !tbaa !25
  %99 = load ptr, ptr %5, align 8, !tbaa !10
  %100 = getelementptr inbounds nuw %struct._collec_t, ptr %99, i32 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !26
  %102 = icmp ult i32 %98, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %57
  %104 = load i32, ptr %9, align 4, !tbaa !25
  %105 = add i32 %104, 1
  store i32 %105, ptr %9, align 4, !tbaa !25
  br label %106

106:                                              ; preds = %103, %57
  %107 = load i32, ptr %7, align 4, !tbaa !25
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, ptr %7, align 4, !tbaa !25
  %111 = add i32 %110, 1
  store i32 %111, ptr %7, align 4, !tbaa !25
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, ptr %7, align 4, !tbaa !25
  store i32 %113, ptr %10, align 4, !tbaa !25
  br label %114

114:                                              ; preds = %340, %112
  %115 = load i32, ptr %10, align 4, !tbaa !25
  %116 = load i32, ptr %9, align 4, !tbaa !25
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %343

118:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #8
  %119 = load ptr, ptr %5, align 8, !tbaa !10
  %120 = getelementptr inbounds nuw %struct._collec_t, ptr %119, i32 0, i32 0
  %121 = load ptr, ptr %120, align 8, !tbaa !28
  %122 = load i32, ptr %10, align 4, !tbaa !25
  %123 = sub i32 %122, 1
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds nuw ptr, ptr %121, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !37
  store ptr %126, ptr %12, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #8
  %127 = load ptr, ptr %5, align 8, !tbaa !10
  %128 = getelementptr inbounds nuw %struct._collec_t, ptr %127, i32 0, i32 0
  %129 = load ptr, ptr %128, align 8, !tbaa !28
  %130 = load i32, ptr %10, align 4, !tbaa !25
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds nuw ptr, ptr %129, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !37
  store ptr %133, ptr %13, align 8, !tbaa !37
  %134 = load ptr, ptr %13, align 8, !tbaa !37
  %135 = getelementptr inbounds nuw %struct._exon_t, ptr %134, i32 0, i32 1
  %136 = load i32, ptr %135, align 4, !tbaa !39
  %137 = load ptr, ptr %12, align 8, !tbaa !37
  %138 = getelementptr inbounds nuw %struct._exon_t, ptr %137, i32 0, i32 1
  %139 = load i32, ptr %138, align 4, !tbaa !39
  %140 = icmp ule i32 %136, %139
  br i1 %140, label %141, label %171

141:                                              ; preds = %118
  %142 = load ptr, ptr %12, align 8, !tbaa !37
  call void @free(ptr noundef %142) #8
  %143 = load ptr, ptr %5, align 8, !tbaa !10
  %144 = getelementptr inbounds nuw %struct._collec_t, ptr %143, i32 0, i32 0
  %145 = load ptr, ptr %144, align 8, !tbaa !28
  %146 = load i32, ptr %10, align 4, !tbaa !25
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds nuw ptr, ptr %145, i64 %147
  %149 = getelementptr inbounds ptr, ptr %148, i64 -1
  %150 = load ptr, ptr %5, align 8, !tbaa !10
  %151 = getelementptr inbounds nuw %struct._collec_t, ptr %150, i32 0, i32 0
  %152 = load ptr, ptr %151, align 8, !tbaa !28
  %153 = load i32, ptr %10, align 4, !tbaa !25
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds nuw ptr, ptr %152, i64 %154
  %156 = load ptr, ptr %5, align 8, !tbaa !10
  %157 = getelementptr inbounds nuw %struct._collec_t, ptr %156, i32 0, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !26
  %159 = load i32, ptr %10, align 4, !tbaa !25
  %160 = sub i32 %158, %159
  %161 = zext i32 %160 to i64
  %162 = mul i64 %161, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %149, ptr align 8 %155, i64 %162, i1 false)
  %163 = load ptr, ptr %5, align 8, !tbaa !10
  %164 = getelementptr inbounds nuw %struct._collec_t, ptr %163, i32 0, i32 1
  %165 = load i32, ptr %164, align 8, !tbaa !26
  %166 = sub i32 %165, 1
  store i32 %166, ptr %164, align 8, !tbaa !26
  %167 = load i32, ptr %9, align 4, !tbaa !25
  %168 = sub i32 %167, 1
  store i32 %168, ptr %9, align 4, !tbaa !25
  %169 = load i32, ptr %10, align 4, !tbaa !25
  %170 = sub i32 %169, 1
  store i32 %170, ptr %10, align 4, !tbaa !25
  store i32 4, ptr %11, align 4
  br label %337

171:                                              ; preds = %118
  %172 = load ptr, ptr %12, align 8, !tbaa !37
  %173 = getelementptr inbounds nuw %struct._exon_t, ptr %172, i32 0, i32 3
  %174 = load i32, ptr %173, align 4, !tbaa !52
  %175 = load ptr, ptr %13, align 8, !tbaa !37
  %176 = getelementptr inbounds nuw %struct._exon_t, ptr %175, i32 0, i32 3
  %177 = load i32, ptr %176, align 4, !tbaa !52
  %178 = icmp uge i32 %174, %177
  br i1 %178, label %179, label %209

179:                                              ; preds = %171
  %180 = load ptr, ptr %13, align 8, !tbaa !37
  call void @free(ptr noundef %180) #8
  %181 = load ptr, ptr %5, align 8, !tbaa !10
  %182 = getelementptr inbounds nuw %struct._collec_t, ptr %181, i32 0, i32 1
  %183 = load i32, ptr %182, align 8, !tbaa !26
  %184 = sub i32 %183, 1
  store i32 %184, ptr %182, align 8, !tbaa !26
  %185 = load ptr, ptr %5, align 8, !tbaa !10
  %186 = getelementptr inbounds nuw %struct._collec_t, ptr %185, i32 0, i32 0
  %187 = load ptr, ptr %186, align 8, !tbaa !28
  %188 = load i32, ptr %10, align 4, !tbaa !25
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds nuw ptr, ptr %187, i64 %189
  %191 = load ptr, ptr %5, align 8, !tbaa !10
  %192 = getelementptr inbounds nuw %struct._collec_t, ptr %191, i32 0, i32 0
  %193 = load ptr, ptr %192, align 8, !tbaa !28
  %194 = load i32, ptr %10, align 4, !tbaa !25
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds nuw ptr, ptr %193, i64 %195
  %197 = getelementptr inbounds ptr, ptr %196, i64 1
  %198 = load ptr, ptr %5, align 8, !tbaa !10
  %199 = getelementptr inbounds nuw %struct._collec_t, ptr %198, i32 0, i32 1
  %200 = load i32, ptr %199, align 8, !tbaa !26
  %201 = load i32, ptr %10, align 4, !tbaa !25
  %202 = sub i32 %200, %201
  %203 = zext i32 %202 to i64
  %204 = mul i64 %203, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %190, ptr align 8 %197, i64 %204, i1 false)
  %205 = load i32, ptr %9, align 4, !tbaa !25
  %206 = sub i32 %205, 1
  store i32 %206, ptr %9, align 4, !tbaa !25
  %207 = load i32, ptr %10, align 4, !tbaa !25
  %208 = sub i32 %207, 1
  store i32 %208, ptr %10, align 4, !tbaa !25
  store i32 4, ptr %11, align 4
  br label %337

209:                                              ; preds = %171
  %210 = load ptr, ptr %13, align 8, !tbaa !37
  %211 = getelementptr inbounds nuw %struct._exon_t, ptr %210, i32 0, i32 0
  %212 = load i32, ptr %211, align 4, !tbaa !41
  %213 = load ptr, ptr %12, align 8, !tbaa !37
  %214 = getelementptr inbounds nuw %struct._exon_t, ptr %213, i32 0, i32 2
  %215 = load i32, ptr %214, align 4, !tbaa !53
  %216 = add i32 %215, 1
  %217 = add i32 %216, 30
  %218 = icmp ult i32 %212, %217
  br i1 %218, label %219, label %336

219:                                              ; preds = %209
  %220 = load ptr, ptr %13, align 8, !tbaa !37
  %221 = getelementptr inbounds nuw %struct._exon_t, ptr %220, i32 0, i32 1
  %222 = load i32, ptr %221, align 4, !tbaa !39
  %223 = load ptr, ptr %12, align 8, !tbaa !37
  %224 = getelementptr inbounds nuw %struct._exon_t, ptr %223, i32 0, i32 3
  %225 = load i32, ptr %224, align 4, !tbaa !52
  %226 = add i32 %225, 1
  %227 = load i32, ptr %8, align 4, !tbaa !25
  %228 = add i32 %226, %227
  %229 = icmp ule i32 %222, %228
  br i1 %229, label %230, label %336

230:                                              ; preds = %219
  %231 = load ptr, ptr %12, align 8, !tbaa !37
  %232 = getelementptr inbounds nuw %struct._exon_t, ptr %231, i32 0, i32 0
  %233 = load i32, ptr %232, align 4, !tbaa !41
  %234 = load ptr, ptr %13, align 8, !tbaa !37
  %235 = getelementptr inbounds nuw %struct._exon_t, ptr %234, i32 0, i32 0
  %236 = load i32, ptr %235, align 4, !tbaa !41
  %237 = icmp ugt i32 %233, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %230
  %239 = load ptr, ptr %13, align 8, !tbaa !37
  %240 = getelementptr inbounds nuw %struct._exon_t, ptr %239, i32 0, i32 0
  %241 = load i32, ptr %240, align 4, !tbaa !41
  br label %246

242:                                              ; preds = %230
  %243 = load ptr, ptr %12, align 8, !tbaa !37
  %244 = getelementptr inbounds nuw %struct._exon_t, ptr %243, i32 0, i32 0
  %245 = load i32, ptr %244, align 4, !tbaa !41
  br label %246

246:                                              ; preds = %242, %238
  %247 = phi i32 [ %241, %238 ], [ %245, %242 ]
  %248 = load ptr, ptr %12, align 8, !tbaa !37
  %249 = getelementptr inbounds nuw %struct._exon_t, ptr %248, i32 0, i32 0
  store i32 %247, ptr %249, align 4, !tbaa !41
  %250 = load ptr, ptr %12, align 8, !tbaa !37
  %251 = getelementptr inbounds nuw %struct._exon_t, ptr %250, i32 0, i32 1
  %252 = load i32, ptr %251, align 4, !tbaa !39
  %253 = load ptr, ptr %13, align 8, !tbaa !37
  %254 = getelementptr inbounds nuw %struct._exon_t, ptr %253, i32 0, i32 1
  %255 = load i32, ptr %254, align 4, !tbaa !39
  %256 = icmp ugt i32 %252, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %246
  %258 = load ptr, ptr %13, align 8, !tbaa !37
  %259 = getelementptr inbounds nuw %struct._exon_t, ptr %258, i32 0, i32 1
  %260 = load i32, ptr %259, align 4, !tbaa !39
  br label %265

261:                                              ; preds = %246
  %262 = load ptr, ptr %12, align 8, !tbaa !37
  %263 = getelementptr inbounds nuw %struct._exon_t, ptr %262, i32 0, i32 1
  %264 = load i32, ptr %263, align 4, !tbaa !39
  br label %265

265:                                              ; preds = %261, %257
  %266 = phi i32 [ %260, %257 ], [ %264, %261 ]
  %267 = load ptr, ptr %12, align 8, !tbaa !37
  %268 = getelementptr inbounds nuw %struct._exon_t, ptr %267, i32 0, i32 1
  store i32 %266, ptr %268, align 4, !tbaa !39
  %269 = load ptr, ptr %13, align 8, !tbaa !37
  %270 = getelementptr inbounds nuw %struct._exon_t, ptr %269, i32 0, i32 2
  %271 = load i32, ptr %270, align 4, !tbaa !53
  %272 = load ptr, ptr %12, align 8, !tbaa !37
  %273 = getelementptr inbounds nuw %struct._exon_t, ptr %272, i32 0, i32 2
  %274 = load i32, ptr %273, align 4, !tbaa !53
  %275 = icmp ult i32 %271, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %265
  %277 = load ptr, ptr %12, align 8, !tbaa !37
  %278 = getelementptr inbounds nuw %struct._exon_t, ptr %277, i32 0, i32 2
  %279 = load i32, ptr %278, align 4, !tbaa !53
  br label %284

280:                                              ; preds = %265
  %281 = load ptr, ptr %13, align 8, !tbaa !37
  %282 = getelementptr inbounds nuw %struct._exon_t, ptr %281, i32 0, i32 2
  %283 = load i32, ptr %282, align 4, !tbaa !53
  br label %284

284:                                              ; preds = %280, %276
  %285 = phi i32 [ %279, %276 ], [ %283, %280 ]
  %286 = load ptr, ptr %12, align 8, !tbaa !37
  %287 = getelementptr inbounds nuw %struct._exon_t, ptr %286, i32 0, i32 2
  store i32 %285, ptr %287, align 4, !tbaa !53
  %288 = load ptr, ptr %13, align 8, !tbaa !37
  %289 = getelementptr inbounds nuw %struct._exon_t, ptr %288, i32 0, i32 3
  %290 = load i32, ptr %289, align 4, !tbaa !52
  %291 = load ptr, ptr %12, align 8, !tbaa !37
  %292 = getelementptr inbounds nuw %struct._exon_t, ptr %291, i32 0, i32 3
  %293 = load i32, ptr %292, align 4, !tbaa !52
  %294 = icmp ult i32 %290, %293
  br i1 %294, label %295, label %299

295:                                              ; preds = %284
  %296 = load ptr, ptr %12, align 8, !tbaa !37
  %297 = getelementptr inbounds nuw %struct._exon_t, ptr %296, i32 0, i32 3
  %298 = load i32, ptr %297, align 4, !tbaa !52
  br label %303

299:                                              ; preds = %284
  %300 = load ptr, ptr %13, align 8, !tbaa !37
  %301 = getelementptr inbounds nuw %struct._exon_t, ptr %300, i32 0, i32 3
  %302 = load i32, ptr %301, align 4, !tbaa !52
  br label %303

303:                                              ; preds = %299, %295
  %304 = phi i32 [ %298, %295 ], [ %302, %299 ]
  %305 = load ptr, ptr %12, align 8, !tbaa !37
  %306 = getelementptr inbounds nuw %struct._exon_t, ptr %305, i32 0, i32 3
  store i32 %304, ptr %306, align 4, !tbaa !52
  %307 = load ptr, ptr %13, align 8, !tbaa !37
  call void @free(ptr noundef %307) #8
  %308 = load ptr, ptr %5, align 8, !tbaa !10
  %309 = getelementptr inbounds nuw %struct._collec_t, ptr %308, i32 0, i32 1
  %310 = load i32, ptr %309, align 8, !tbaa !26
  %311 = sub i32 %310, 1
  store i32 %311, ptr %309, align 8, !tbaa !26
  %312 = load ptr, ptr %5, align 8, !tbaa !10
  %313 = getelementptr inbounds nuw %struct._collec_t, ptr %312, i32 0, i32 0
  %314 = load ptr, ptr %313, align 8, !tbaa !28
  %315 = load i32, ptr %10, align 4, !tbaa !25
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds nuw ptr, ptr %314, i64 %316
  %318 = load ptr, ptr %5, align 8, !tbaa !10
  %319 = getelementptr inbounds nuw %struct._collec_t, ptr %318, i32 0, i32 0
  %320 = load ptr, ptr %319, align 8, !tbaa !28
  %321 = load i32, ptr %10, align 4, !tbaa !25
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds nuw ptr, ptr %320, i64 %322
  %324 = getelementptr inbounds ptr, ptr %323, i64 1
  %325 = load ptr, ptr %5, align 8, !tbaa !10
  %326 = getelementptr inbounds nuw %struct._collec_t, ptr %325, i32 0, i32 1
  %327 = load i32, ptr %326, align 8, !tbaa !26
  %328 = load i32, ptr %10, align 4, !tbaa !25
  %329 = sub i32 %327, %328
  %330 = zext i32 %329 to i64
  %331 = mul i64 %330, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %317, ptr align 8 %324, i64 %331, i1 false)
  %332 = load i32, ptr %9, align 4, !tbaa !25
  %333 = sub i32 %332, 1
  store i32 %333, ptr %9, align 4, !tbaa !25
  %334 = load i32, ptr %10, align 4, !tbaa !25
  %335 = sub i32 %334, 1
  store i32 %335, ptr %10, align 4, !tbaa !25
  br label %336

336:                                              ; preds = %303, %219, %209
  store i32 0, ptr %11, align 4
  br label %337

337:                                              ; preds = %336, %179, %141
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #8
  %338 = load i32, ptr %11, align 4
  switch i32 %338, label %347 [
    i32 0, label %339
    i32 4, label %340
  ]

339:                                              ; preds = %337
  br label %340

340:                                              ; preds = %339, %337
  %341 = load i32, ptr %10, align 4, !tbaa !25
  %342 = add i32 %341, 1
  store i32 %342, ptr %10, align 4, !tbaa !25
  br label %114, !llvm.loop !97

343:                                              ; preds = %114
  store i32 0, ptr %11, align 4
  br label %344

344:                                              ; preds = %343, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  %345 = load i32, ptr %11, align 4
  switch i32 %345, label %347 [
    i32 0, label %346
    i32 1, label %346
  ]

346:                                              ; preds = %344, %344
  ret void

347:                                              ; preds = %344, %337
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define internal signext i32 @is_polyAT_exon_p(ptr noundef %0, ptr noundef %1) #0 {
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
  %13 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !37
  store ptr %1, ptr %5, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  store i32 0, ptr %6, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  store i32 0, ptr %7, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  store i32 0, ptr %8, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  store i32 0, ptr %9, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  store i32 0, ptr %10, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  %14 = load ptr, ptr %4, align 8, !tbaa !37
  %15 = getelementptr inbounds nuw %struct._exon_t, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !52
  %17 = load ptr, ptr %4, align 8, !tbaa !37
  %18 = getelementptr inbounds nuw %struct._exon_t, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !39
  %20 = sub i32 %16, %19
  %21 = add i32 %20, 1
  store i32 %21, ptr %12, align 4, !tbaa !25
  %22 = load ptr, ptr %4, align 8, !tbaa !37
  %23 = getelementptr inbounds nuw %struct._exon_t, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !39
  %25 = sub i32 %24, 1
  store i32 %25, ptr %11, align 4, !tbaa !25
  br label %26

26:                                               ; preds = %55, %2
  %27 = load i32, ptr %11, align 4, !tbaa !25
  %28 = load ptr, ptr %4, align 8, !tbaa !37
  %29 = getelementptr inbounds nuw %struct._exon_t, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !52
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 8, !tbaa !64
  %34 = load i32, ptr %11, align 4, !tbaa !25
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !28
  %38 = zext i8 %37 to i32
  switch i32 %38, label %51 [
    i32 65, label %39
    i32 67, label %42
    i32 71, label %45
    i32 84, label %48
  ]

39:                                               ; preds = %32
  %40 = load i32, ptr %6, align 4, !tbaa !25
  %41 = add i32 %40, 1
  store i32 %41, ptr %6, align 4, !tbaa !25
  br label %54

42:                                               ; preds = %32
  %43 = load i32, ptr %7, align 4, !tbaa !25
  %44 = add i32 %43, 1
  store i32 %44, ptr %7, align 4, !tbaa !25
  br label %54

45:                                               ; preds = %32
  %46 = load i32, ptr %8, align 4, !tbaa !25
  %47 = add i32 %46, 1
  store i32 %47, ptr %8, align 4, !tbaa !25
  br label %54

48:                                               ; preds = %32
  %49 = load i32, ptr %9, align 4, !tbaa !25
  %50 = add i32 %49, 1
  store i32 %50, ptr %9, align 4, !tbaa !25
  br label %54

51:                                               ; preds = %32
  %52 = load i32, ptr %10, align 4, !tbaa !25
  %53 = add i32 %52, 1
  store i32 %53, ptr %10, align 4, !tbaa !25
  br label %54

54:                                               ; preds = %51, %48, %45, %42, %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %11, align 4, !tbaa !25
  %57 = add i32 %56, 1
  store i32 %57, ptr %11, align 4, !tbaa !25
  br label %26, !llvm.loop !98

58:                                               ; preds = %26
  %59 = load i32, ptr %10, align 4, !tbaa !25
  %60 = load i32, ptr %12, align 4, !tbaa !25
  %61 = sub i32 %60, %59
  store i32 %61, ptr %12, align 4, !tbaa !25
  %62 = load i32, ptr %12, align 4, !tbaa !25
  %63 = icmp ult i32 %62, 30
  br i1 %63, label %64, label %94

64:                                               ; preds = %58
  %65 = load i32, ptr %6, align 4, !tbaa !25
  %66 = mul i32 %65, 10
  %67 = load i32, ptr %12, align 4, !tbaa !25
  %68 = udiv i32 %66, %67
  %69 = icmp uge i32 %68, 7
  br i1 %69, label %92, label %70

70:                                               ; preds = %64
  %71 = load i32, ptr %6, align 4, !tbaa !25
  %72 = load i32, ptr %8, align 4, !tbaa !25
  %73 = add i32 %71, %72
  %74 = mul i32 %73, 10
  %75 = load i32, ptr %12, align 4, !tbaa !25
  %76 = udiv i32 %74, %75
  %77 = icmp uge i32 %76, 8
  br i1 %77, label %92, label %78

78:                                               ; preds = %70
  %79 = load i32, ptr %9, align 4, !tbaa !25
  %80 = mul i32 %79, 10
  %81 = load i32, ptr %12, align 4, !tbaa !25
  %82 = udiv i32 %80, %81
  %83 = icmp uge i32 %82, 7
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load i32, ptr %9, align 4, !tbaa !25
  %86 = load i32, ptr %7, align 4, !tbaa !25
  %87 = add i32 %85, %86
  %88 = mul i32 %87, 10
  %89 = load i32, ptr %12, align 4, !tbaa !25
  %90 = udiv i32 %88, %89
  %91 = icmp uge i32 %90, 8
  br i1 %91, label %92, label %93

92:                                               ; preds = %84, %78, %70, %64
  store i32 1, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %125

93:                                               ; preds = %84
  br label %124

94:                                               ; preds = %58
  %95 = load i32, ptr %6, align 4, !tbaa !25
  %96 = mul i32 %95, 10
  %97 = load i32, ptr %12, align 4, !tbaa !25
  %98 = udiv i32 %96, %97
  %99 = icmp uge i32 %98, 8
  br i1 %99, label %122, label %100

100:                                              ; preds = %94
  %101 = load i32, ptr %6, align 4, !tbaa !25
  %102 = load i32, ptr %8, align 4, !tbaa !25
  %103 = add i32 %101, %102
  %104 = mul i32 %103, 100
  %105 = load i32, ptr %12, align 4, !tbaa !25
  %106 = udiv i32 %104, %105
  %107 = icmp uge i32 %106, 95
  br i1 %107, label %122, label %108

108:                                              ; preds = %100
  %109 = load i32, ptr %9, align 4, !tbaa !25
  %110 = mul i32 %109, 10
  %111 = load i32, ptr %12, align 4, !tbaa !25
  %112 = udiv i32 %110, %111
  %113 = icmp uge i32 %112, 8
  br i1 %113, label %122, label %114

114:                                              ; preds = %108
  %115 = load i32, ptr %9, align 4, !tbaa !25
  %116 = load i32, ptr %7, align 4, !tbaa !25
  %117 = add i32 %115, %116
  %118 = mul i32 %117, 100
  %119 = load i32, ptr %12, align 4, !tbaa !25
  %120 = udiv i32 %118, %119
  %121 = icmp uge i32 %120, 95
  br i1 %121, label %122, label %123

122:                                              ; preds = %114, %108, %100, %94
  store i32 1, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %125

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %93
  store i32 0, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %125

125:                                              ; preds = %124, %122, %92
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  %126 = load i32, ptr %3, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind
define internal signext i32 @extend_bw(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, ptr noundef %6, ptr noundef %7, i32 noundef signext %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca i32, align 4
  store ptr %0, ptr %11, align 8, !tbaa !64
  store ptr %1, ptr %12, align 8, !tbaa !64
  store i32 %2, ptr %13, align 4, !tbaa !25
  store i32 %3, ptr %14, align 4, !tbaa !25
  store i32 %4, ptr %15, align 4, !tbaa !25
  store i32 %5, ptr %16, align 4, !tbaa !25
  store ptr %6, ptr %17, align 8, !tbaa !99
  store ptr %7, ptr %18, align 8, !tbaa !99
  store i32 %8, ptr %19, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %29) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %30) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %31) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %32) #8
  %34 = load i32, ptr %14, align 4, !tbaa !25
  %35 = load i32, ptr %13, align 4, !tbaa !25
  %36 = sub nsw i32 %34, %35
  store i32 %36, ptr %25, align 4, !tbaa !25
  %37 = load i32, ptr %13, align 4, !tbaa !25
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %22, align 4, !tbaa !25
  %39 = load i32, ptr %13, align 4, !tbaa !25
  store i32 %39, ptr %26, align 4, !tbaa !25
  %40 = load i32, ptr %13, align 4, !tbaa !25
  store i32 %40, ptr %21, align 4, !tbaa !25
  %41 = load i32, ptr %14, align 4, !tbaa !25
  store i32 %41, ptr %20, align 4, !tbaa !25
  br label %42

42:                                               ; preds = %67, %9
  %43 = load i32, ptr %21, align 4, !tbaa !25
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load i32, ptr %20, align 4, !tbaa !25
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load ptr, ptr %11, align 8, !tbaa !64
  %50 = load i32, ptr %21, align 4, !tbaa !25
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %49, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !28
  %55 = zext i8 %54 to i32
  %56 = load ptr, ptr %12, align 8, !tbaa !64
  %57 = load i32, ptr %20, align 4, !tbaa !25
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %56, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !28
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %55, %62
  br label %64

64:                                               ; preds = %48, %45, %42
  %65 = phi i1 [ false, %45 ], [ false, %42 ], [ %63, %48 ]
  br i1 %65, label %66, label %72

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66
  %68 = load i32, ptr %21, align 4, !tbaa !25
  %69 = add nsw i32 %68, -1
  store i32 %69, ptr %21, align 4, !tbaa !25
  %70 = load i32, ptr %20, align 4, !tbaa !25
  %71 = add nsw i32 %70, -1
  store i32 %71, ptr %20, align 4, !tbaa !25
  br label %42, !llvm.loop !100

72:                                               ; preds = %64
  %73 = load i32, ptr %21, align 4, !tbaa !25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %20, align 4, !tbaa !25
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75, %72
  %79 = load i32, ptr %21, align 4, !tbaa !25
  %80 = load i32, ptr %15, align 4, !tbaa !25
  %81 = add nsw i32 %79, %80
  %82 = load ptr, ptr %17, align 8, !tbaa !99
  store i32 %81, ptr %82, align 4, !tbaa !25
  %83 = load i32, ptr %20, align 4, !tbaa !25
  %84 = load i32, ptr %16, align 4, !tbaa !25
  %85 = add nsw i32 %83, %84
  %86 = load ptr, ptr %18, align 8, !tbaa !99
  store i32 %85, ptr %86, align 4, !tbaa !25
  store i32 0, ptr %10, align 4
  store i32 1, ptr %33, align 4
  br label %567

87:                                               ; preds = %75
  %88 = load i32, ptr %13, align 4, !tbaa !25
  %89 = load i32, ptr %14, align 4, !tbaa !25
  %90 = add nsw i32 %88, %89
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = call ptr @xmalloc(i64 noundef %93)
  store ptr %94, ptr %29, align 8, !tbaa !99
  %95 = load i32, ptr %13, align 4, !tbaa !25
  %96 = load i32, ptr %14, align 4, !tbaa !25
  %97 = add nsw i32 %95, %96
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = call ptr @xmalloc(i64 noundef %100)
  store ptr %101, ptr %30, align 8, !tbaa !99
  store i32 0, ptr %24, align 4, !tbaa !25
  br label %102

102:                                              ; preds = %115, %87
  %103 = load i32, ptr %24, align 4, !tbaa !25
  %104 = load i32, ptr %13, align 4, !tbaa !25
  %105 = load i32, ptr %14, align 4, !tbaa !25
  %106 = add nsw i32 %104, %105
  %107 = icmp sle i32 %103, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %102
  %109 = load i32, ptr %13, align 4, !tbaa !25
  %110 = add nsw i32 %109, 1
  %111 = load ptr, ptr %29, align 8, !tbaa !99
  %112 = load i32, ptr %24, align 4, !tbaa !25
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, ptr %111, i64 %113
  store i32 %110, ptr %114, align 4, !tbaa !25
  br label %115

115:                                              ; preds = %108
  %116 = load i32, ptr %24, align 4, !tbaa !25
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %24, align 4, !tbaa !25
  br label %102, !llvm.loop !101

118:                                              ; preds = %102
  %119 = load i32, ptr %21, align 4, !tbaa !25
  %120 = load ptr, ptr %29, align 8, !tbaa !99
  %121 = load i32, ptr %26, align 4, !tbaa !25
  %122 = load i32, ptr %25, align 4, !tbaa !25
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %120, i64 %124
  store i32 %119, ptr %125, align 4, !tbaa !25
  %126 = load i32, ptr %26, align 4, !tbaa !25
  %127 = load i32, ptr %25, align 4, !tbaa !25
  %128 = add nsw i32 %126, %127
  %129 = sub nsw i32 %128, 1
  store i32 %129, ptr %27, align 4, !tbaa !25
  %130 = load i32, ptr %26, align 4, !tbaa !25
  %131 = load i32, ptr %25, align 4, !tbaa !25
  %132 = add nsw i32 %130, %131
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr %28, align 4, !tbaa !25
  %134 = load i32, ptr %13, align 4, !tbaa !25
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 4
  %138 = call ptr @xmalloc(i64 noundef %137)
  store ptr %138, ptr %31, align 8, !tbaa !99
  %139 = load i32, ptr %13, align 4, !tbaa !25
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 4
  %143 = call ptr @xmalloc(i64 noundef %142)
  store ptr %143, ptr %32, align 8, !tbaa !99
  store i32 1, ptr %23, align 4, !tbaa !25
  br label %144

144:                                              ; preds = %155, %118
  %145 = load i32, ptr %23, align 4, !tbaa !25
  %146 = load i32, ptr %13, align 4, !tbaa !25
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = load i32, ptr %13, align 4, !tbaa !25
  %150 = add nsw i32 %149, 1
  %151 = load ptr, ptr %31, align 8, !tbaa !99
  %152 = load i32, ptr %23, align 4, !tbaa !25
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, ptr %151, i64 %153
  store i32 %150, ptr %154, align 4, !tbaa !25
  br label %155

155:                                              ; preds = %148
  %156 = load i32, ptr %23, align 4, !tbaa !25
  %157 = add nsw i32 %156, 1
  store i32 %157, ptr %23, align 4, !tbaa !25
  br label %144, !llvm.loop !102

158:                                              ; preds = %144
  %159 = load ptr, ptr %29, align 8, !tbaa !99
  %160 = load i32, ptr %26, align 4, !tbaa !25
  %161 = load i32, ptr %25, align 4, !tbaa !25
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, ptr %159, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !25
  %166 = load ptr, ptr %31, align 8, !tbaa !99
  %167 = getelementptr inbounds i32, ptr %166, i64 0
  store i32 %165, ptr %167, align 4, !tbaa !25
  %168 = load i32, ptr %26, align 4, !tbaa !25
  %169 = load i32, ptr %25, align 4, !tbaa !25
  %170 = add nsw i32 %168, %169
  %171 = load ptr, ptr %32, align 8, !tbaa !99
  %172 = getelementptr inbounds i32, ptr %171, i64 0
  store i32 %170, ptr %172, align 4, !tbaa !25
  store i32 0, ptr %23, align 4, !tbaa !25
  br label %173

173:                                              ; preds = %509, %158
  %174 = load i32, ptr %23, align 4, !tbaa !25
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr %23, align 4, !tbaa !25
  %176 = load i32, ptr %22, align 4, !tbaa !25
  %177 = icmp sle i32 %175, %176
  br i1 %177, label %178, label %213

178:                                              ; preds = %173
  %179 = load i32, ptr %23, align 4, !tbaa !25
  %180 = sub nsw i32 %179, 1
  %181 = load i32, ptr %13, align 4, !tbaa !25
  %182 = load ptr, ptr %31, align 8, !tbaa !99
  %183 = load i32, ptr %23, align 4, !tbaa !25
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, ptr %182, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !25
  %188 = sub nsw i32 %181, %187
  %189 = load i32, ptr %19, align 4, !tbaa !25
  %190 = call signext i32 @good_ratio(i32 noundef signext %188, i32 noundef signext %189)
  %191 = icmp sle i32 %180, %190
  br i1 %191, label %211, label %192

192:                                              ; preds = %178
  %193 = load i32, ptr %23, align 4, !tbaa !25
  %194 = icmp sge i32 %193, 2
  br i1 %194, label %195, label %209

195:                                              ; preds = %192
  %196 = load i32, ptr %23, align 4, !tbaa !25
  %197 = sub nsw i32 %196, 2
  %198 = load i32, ptr %13, align 4, !tbaa !25
  %199 = load ptr, ptr %31, align 8, !tbaa !99
  %200 = load i32, ptr %23, align 4, !tbaa !25
  %201 = sub nsw i32 %200, 2
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, ptr %199, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !25
  %205 = sub nsw i32 %198, %204
  %206 = load i32, ptr %19, align 4, !tbaa !25
  %207 = call signext i32 @good_ratio(i32 noundef signext %205, i32 noundef signext %206)
  %208 = icmp sle i32 %197, %207
  br label %209

209:                                              ; preds = %195, %192
  %210 = phi i1 [ false, %192 ], [ %208, %195 ]
  br label %211

211:                                              ; preds = %209, %178
  %212 = phi i1 [ true, %178 ], [ %210, %209 ]
  br label %213

213:                                              ; preds = %211, %173
  %214 = phi i1 [ false, %173 ], [ %212, %211 ]
  br i1 %214, label %215, label %514

215:                                              ; preds = %213
  %216 = load i32, ptr %27, align 4, !tbaa !25
  store i32 %216, ptr %24, align 4, !tbaa !25
  br label %217

217:                                              ; preds = %432, %215
  %218 = load i32, ptr %24, align 4, !tbaa !25
  %219 = load i32, ptr %28, align 4, !tbaa !25
  %220 = icmp sle i32 %218, %219
  br i1 %220, label %221, label %435

221:                                              ; preds = %217
  %222 = load i32, ptr %24, align 4, !tbaa !25
  %223 = load i32, ptr %23, align 4, !tbaa !25
  %224 = sub nsw i32 0, %223
  %225 = load i32, ptr %25, align 4, !tbaa !25
  %226 = add nsw i32 %224, %225
  %227 = load i32, ptr %26, align 4, !tbaa !25
  %228 = add nsw i32 %226, %227
  %229 = icmp eq i32 %222, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %221
  %231 = load ptr, ptr %29, align 8, !tbaa !99
  %232 = load i32, ptr %24, align 4, !tbaa !25
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, ptr %231, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !25
  store i32 %236, ptr %21, align 4, !tbaa !25
  br label %337

237:                                              ; preds = %221
  %238 = load i32, ptr %24, align 4, !tbaa !25
  %239 = load i32, ptr %23, align 4, !tbaa !25
  %240 = load i32, ptr %25, align 4, !tbaa !25
  %241 = add nsw i32 %239, %240
  %242 = load i32, ptr %26, align 4, !tbaa !25
  %243 = add nsw i32 %241, %242
  %244 = icmp eq i32 %238, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %237
  %246 = load ptr, ptr %29, align 8, !tbaa !99
  %247 = load i32, ptr %24, align 4, !tbaa !25
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, ptr %246, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !25
  %252 = sub nsw i32 %251, 1
  store i32 %252, ptr %21, align 4, !tbaa !25
  br label %336

253:                                              ; preds = %237
  %254 = load ptr, ptr %29, align 8, !tbaa !99
  %255 = load i32, ptr %24, align 4, !tbaa !25
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, ptr %254, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !25
  %259 = sub nsw i32 %258, 1
  %260 = load ptr, ptr %29, align 8, !tbaa !99
  %261 = load i32, ptr %24, align 4, !tbaa !25
  %262 = add nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, ptr %260, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !25
  %266 = icmp sle i32 %259, %265
  br i1 %266, label %267, label %289

267:                                              ; preds = %253
  %268 = load ptr, ptr %29, align 8, !tbaa !99
  %269 = load i32, ptr %24, align 4, !tbaa !25
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, ptr %268, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !25
  %273 = sub nsw i32 %272, 1
  %274 = load ptr, ptr %29, align 8, !tbaa !99
  %275 = load i32, ptr %24, align 4, !tbaa !25
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, ptr %274, i64 %277
  %279 = load i32, ptr %278, align 4, !tbaa !25
  %280 = sub nsw i32 %279, 1
  %281 = icmp sle i32 %273, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %267
  %283 = load ptr, ptr %29, align 8, !tbaa !99
  %284 = load i32, ptr %24, align 4, !tbaa !25
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, ptr %283, i64 %285
  %287 = load i32, ptr %286, align 4, !tbaa !25
  %288 = sub nsw i32 %287, 1
  store i32 %288, ptr %21, align 4, !tbaa !25
  br label %335

289:                                              ; preds = %267, %253
  %290 = load ptr, ptr %29, align 8, !tbaa !99
  %291 = load i32, ptr %24, align 4, !tbaa !25
  %292 = sub nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, ptr %290, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !25
  %296 = sub nsw i32 %295, 1
  %297 = load ptr, ptr %29, align 8, !tbaa !99
  %298 = load i32, ptr %24, align 4, !tbaa !25
  %299 = add nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, ptr %297, i64 %300
  %302 = load i32, ptr %301, align 4, !tbaa !25
  %303 = icmp sle i32 %296, %302
  br i1 %303, label %304, label %327

304:                                              ; preds = %289
  %305 = load ptr, ptr %29, align 8, !tbaa !99
  %306 = load i32, ptr %24, align 4, !tbaa !25
  %307 = sub nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, ptr %305, i64 %308
  %310 = load i32, ptr %309, align 4, !tbaa !25
  %311 = sub nsw i32 %310, 1
  %312 = load ptr, ptr %29, align 8, !tbaa !99
  %313 = load i32, ptr %24, align 4, !tbaa !25
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, ptr %312, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !25
  %317 = sub nsw i32 %316, 1
  %318 = icmp sle i32 %311, %317
  br i1 %318, label %319, label %327

319:                                              ; preds = %304
  %320 = load ptr, ptr %29, align 8, !tbaa !99
  %321 = load i32, ptr %24, align 4, !tbaa !25
  %322 = sub nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, ptr %320, i64 %323
  %325 = load i32, ptr %324, align 4, !tbaa !25
  %326 = sub nsw i32 %325, 1
  store i32 %326, ptr %21, align 4, !tbaa !25
  br label %334

327:                                              ; preds = %304, %289
  %328 = load ptr, ptr %29, align 8, !tbaa !99
  %329 = load i32, ptr %24, align 4, !tbaa !25
  %330 = add nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, ptr %328, i64 %331
  %333 = load i32, ptr %332, align 4, !tbaa !25
  store i32 %333, ptr %21, align 4, !tbaa !25
  br label %334

334:                                              ; preds = %327, %319
  br label %335

335:                                              ; preds = %334, %282
  br label %336

336:                                              ; preds = %335, %245
  br label %337

337:                                              ; preds = %336, %230
  %338 = load i32, ptr %21, align 4, !tbaa !25
  %339 = load i32, ptr %24, align 4, !tbaa !25
  %340 = add nsw i32 %338, %339
  %341 = load i32, ptr %26, align 4, !tbaa !25
  %342 = sub nsw i32 %340, %341
  store i32 %342, ptr %20, align 4, !tbaa !25
  br label %343

343:                                              ; preds = %367, %337
  %344 = load i32, ptr %21, align 4, !tbaa !25
  %345 = icmp sgt i32 %344, 0
  br i1 %345, label %346, label %365

346:                                              ; preds = %343
  %347 = load i32, ptr %20, align 4, !tbaa !25
  %348 = icmp sgt i32 %347, 0
  br i1 %348, label %349, label %365

349:                                              ; preds = %346
  %350 = load ptr, ptr %11, align 8, !tbaa !64
  %351 = load i32, ptr %21, align 4, !tbaa !25
  %352 = sub nsw i32 %351, 1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, ptr %350, i64 %353
  %355 = load i8, ptr %354, align 1, !tbaa !28
  %356 = zext i8 %355 to i32
  %357 = load ptr, ptr %12, align 8, !tbaa !64
  %358 = load i32, ptr %20, align 4, !tbaa !25
  %359 = sub nsw i32 %358, 1
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, ptr %357, i64 %360
  %362 = load i8, ptr %361, align 1, !tbaa !28
  %363 = zext i8 %362 to i32
  %364 = icmp eq i32 %356, %363
  br label %365

365:                                              ; preds = %349, %346, %343
  %366 = phi i1 [ false, %346 ], [ false, %343 ], [ %364, %349 ]
  br i1 %366, label %367, label %372

367:                                              ; preds = %365
  %368 = load i32, ptr %21, align 4, !tbaa !25
  %369 = add nsw i32 %368, -1
  store i32 %369, ptr %21, align 4, !tbaa !25
  %370 = load i32, ptr %20, align 4, !tbaa !25
  %371 = add nsw i32 %370, -1
  store i32 %371, ptr %20, align 4, !tbaa !25
  br label %343, !llvm.loop !103

372:                                              ; preds = %365
  %373 = load i32, ptr %21, align 4, !tbaa !25
  %374 = load ptr, ptr %30, align 8, !tbaa !99
  %375 = load i32, ptr %24, align 4, !tbaa !25
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, ptr %374, i64 %376
  store i32 %373, ptr %377, align 4, !tbaa !25
  %378 = load i32, ptr %21, align 4, !tbaa !25
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %397

380:                                              ; preds = %372
  %381 = load i32, ptr %20, align 4, !tbaa !25
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %397

383:                                              ; preds = %380
  %384 = load ptr, ptr %29, align 8, !tbaa !99
  call void @free(ptr noundef %384) #8
  %385 = load ptr, ptr %30, align 8, !tbaa !99
  call void @free(ptr noundef %385) #8
  %386 = load ptr, ptr %31, align 8, !tbaa !99
  call void @free(ptr noundef %386) #8
  %387 = load ptr, ptr %32, align 8, !tbaa !99
  call void @free(ptr noundef %387) #8
  %388 = load i32, ptr %21, align 4, !tbaa !25
  %389 = load i32, ptr %15, align 4, !tbaa !25
  %390 = add nsw i32 %388, %389
  %391 = load ptr, ptr %17, align 8, !tbaa !99
  store i32 %390, ptr %391, align 4, !tbaa !25
  %392 = load i32, ptr %20, align 4, !tbaa !25
  %393 = load i32, ptr %16, align 4, !tbaa !25
  %394 = add nsw i32 %392, %393
  %395 = load ptr, ptr %18, align 8, !tbaa !99
  store i32 %394, ptr %395, align 4, !tbaa !25
  %396 = load i32, ptr %23, align 4, !tbaa !25
  store i32 %396, ptr %10, align 4
  store i32 1, ptr %33, align 4
  br label %567

397:                                              ; preds = %380, %372
  %398 = load i32, ptr %21, align 4, !tbaa !25
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %414

400:                                              ; preds = %397
  %401 = load ptr, ptr %29, align 8, !tbaa !99
  call void @free(ptr noundef %401) #8
  %402 = load ptr, ptr %30, align 8, !tbaa !99
  call void @free(ptr noundef %402) #8
  %403 = load ptr, ptr %31, align 8, !tbaa !99
  call void @free(ptr noundef %403) #8
  %404 = load ptr, ptr %32, align 8, !tbaa !99
  call void @free(ptr noundef %404) #8
  %405 = load i32, ptr %21, align 4, !tbaa !25
  %406 = load i32, ptr %15, align 4, !tbaa !25
  %407 = add nsw i32 %405, %406
  %408 = load ptr, ptr %17, align 8, !tbaa !99
  store i32 %407, ptr %408, align 4, !tbaa !25
  %409 = load i32, ptr %20, align 4, !tbaa !25
  %410 = load i32, ptr %16, align 4, !tbaa !25
  %411 = add nsw i32 %409, %410
  %412 = load ptr, ptr %18, align 8, !tbaa !99
  store i32 %411, ptr %412, align 4, !tbaa !25
  %413 = load i32, ptr %23, align 4, !tbaa !25
  store i32 %413, ptr %10, align 4
  store i32 1, ptr %33, align 4
  br label %567

414:                                              ; preds = %397
  %415 = load i32, ptr %20, align 4, !tbaa !25
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %431

417:                                              ; preds = %414
  %418 = load ptr, ptr %29, align 8, !tbaa !99
  call void @free(ptr noundef %418) #8
  %419 = load ptr, ptr %30, align 8, !tbaa !99
  call void @free(ptr noundef %419) #8
  %420 = load ptr, ptr %31, align 8, !tbaa !99
  call void @free(ptr noundef %420) #8
  %421 = load ptr, ptr %32, align 8, !tbaa !99
  call void @free(ptr noundef %421) #8
  %422 = load i32, ptr %21, align 4, !tbaa !25
  %423 = load i32, ptr %15, align 4, !tbaa !25
  %424 = add nsw i32 %422, %423
  %425 = load ptr, ptr %17, align 8, !tbaa !99
  store i32 %424, ptr %425, align 4, !tbaa !25
  %426 = load i32, ptr %20, align 4, !tbaa !25
  %427 = load i32, ptr %16, align 4, !tbaa !25
  %428 = add nsw i32 %426, %427
  %429 = load ptr, ptr %18, align 8, !tbaa !99
  store i32 %428, ptr %429, align 4, !tbaa !25
  %430 = load i32, ptr %23, align 4, !tbaa !25
  store i32 %430, ptr %10, align 4
  store i32 1, ptr %33, align 4
  br label %567

431:                                              ; preds = %414
  br label %432

432:                                              ; preds = %431
  %433 = load i32, ptr %24, align 4, !tbaa !25
  %434 = add nsw i32 %433, 1
  store i32 %434, ptr %24, align 4, !tbaa !25
  br label %217, !llvm.loop !104

435:                                              ; preds = %217
  %436 = load ptr, ptr %29, align 8, !tbaa !99
  %437 = load i32, ptr %26, align 4, !tbaa !25
  %438 = load i32, ptr %25, align 4, !tbaa !25
  %439 = add nsw i32 %437, %438
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, ptr %436, i64 %440
  %442 = load i32, ptr %441, align 4, !tbaa !25
  %443 = load ptr, ptr %31, align 8, !tbaa !99
  %444 = load i32, ptr %23, align 4, !tbaa !25
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, ptr %443, i64 %445
  store i32 %442, ptr %446, align 4, !tbaa !25
  %447 = load i32, ptr %26, align 4, !tbaa !25
  %448 = load i32, ptr %25, align 4, !tbaa !25
  %449 = add nsw i32 %447, %448
  %450 = load ptr, ptr %32, align 8, !tbaa !99
  %451 = load i32, ptr %23, align 4, !tbaa !25
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, ptr %450, i64 %452
  store i32 %449, ptr %453, align 4, !tbaa !25
  %454 = load i32, ptr %27, align 4, !tbaa !25
  store i32 %454, ptr %24, align 4, !tbaa !25
  br label %455

455:                                              ; preds = %487, %435
  %456 = load i32, ptr %24, align 4, !tbaa !25
  %457 = load i32, ptr %28, align 4, !tbaa !25
  %458 = icmp sle i32 %456, %457
  br i1 %458, label %459, label %490

459:                                              ; preds = %455
  %460 = load ptr, ptr %30, align 8, !tbaa !99
  %461 = load i32, ptr %24, align 4, !tbaa !25
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, ptr %460, i64 %462
  %464 = load i32, ptr %463, align 4, !tbaa !25
  %465 = load ptr, ptr %31, align 8, !tbaa !99
  %466 = load i32, ptr %23, align 4, !tbaa !25
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, ptr %465, i64 %467
  %469 = load i32, ptr %468, align 4, !tbaa !25
  %470 = icmp slt i32 %464, %469
  br i1 %470, label %471, label %486

471:                                              ; preds = %459
  %472 = load ptr, ptr %30, align 8, !tbaa !99
  %473 = load i32, ptr %24, align 4, !tbaa !25
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, ptr %472, i64 %474
  %476 = load i32, ptr %475, align 4, !tbaa !25
  %477 = load ptr, ptr %31, align 8, !tbaa !99
  %478 = load i32, ptr %23, align 4, !tbaa !25
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, ptr %477, i64 %479
  store i32 %476, ptr %480, align 4, !tbaa !25
  %481 = load i32, ptr %24, align 4, !tbaa !25
  %482 = load ptr, ptr %32, align 8, !tbaa !99
  %483 = load i32, ptr %23, align 4, !tbaa !25
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, ptr %482, i64 %484
  store i32 %481, ptr %485, align 4, !tbaa !25
  br label %486

486:                                              ; preds = %471, %459
  br label %487

487:                                              ; preds = %486
  %488 = load i32, ptr %24, align 4, !tbaa !25
  %489 = add nsw i32 %488, 1
  store i32 %489, ptr %24, align 4, !tbaa !25
  br label %455, !llvm.loop !105

490:                                              ; preds = %455
  %491 = load i32, ptr %27, align 4, !tbaa !25
  store i32 %491, ptr %24, align 4, !tbaa !25
  br label %492

492:                                              ; preds = %506, %490
  %493 = load i32, ptr %24, align 4, !tbaa !25
  %494 = load i32, ptr %28, align 4, !tbaa !25
  %495 = icmp sle i32 %493, %494
  br i1 %495, label %496, label %509

496:                                              ; preds = %492
  %497 = load ptr, ptr %30, align 8, !tbaa !99
  %498 = load i32, ptr %24, align 4, !tbaa !25
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, ptr %497, i64 %499
  %501 = load i32, ptr %500, align 4, !tbaa !25
  %502 = load ptr, ptr %29, align 8, !tbaa !99
  %503 = load i32, ptr %24, align 4, !tbaa !25
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, ptr %502, i64 %504
  store i32 %501, ptr %505, align 4, !tbaa !25
  br label %506

506:                                              ; preds = %496
  %507 = load i32, ptr %24, align 4, !tbaa !25
  %508 = add nsw i32 %507, 1
  store i32 %508, ptr %24, align 4, !tbaa !25
  br label %492, !llvm.loop !106

509:                                              ; preds = %492
  %510 = load i32, ptr %27, align 4, !tbaa !25
  %511 = add nsw i32 %510, -1
  store i32 %511, ptr %27, align 4, !tbaa !25
  %512 = load i32, ptr %28, align 4, !tbaa !25
  %513 = add nsw i32 %512, 1
  store i32 %513, ptr %28, align 4, !tbaa !25
  br label %173, !llvm.loop !107

514:                                              ; preds = %213
  br label %515

515:                                              ; preds = %534, %514
  %516 = load i32, ptr %23, align 4, !tbaa !25
  %517 = icmp sgt i32 %516, 0
  br i1 %517, label %518, label %532

518:                                              ; preds = %515
  %519 = load ptr, ptr %31, align 8, !tbaa !99
  %520 = load i32, ptr %23, align 4, !tbaa !25
  %521 = sub nsw i32 %520, 1
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32, ptr %519, i64 %522
  %524 = load i32, ptr %523, align 4, !tbaa !25
  %525 = load ptr, ptr %31, align 8, !tbaa !99
  %526 = load i32, ptr %23, align 4, !tbaa !25
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, ptr %525, i64 %527
  %529 = load i32, ptr %528, align 4, !tbaa !25
  %530 = sub nsw i32 %524, %529
  %531 = icmp slt i32 %530, 3
  br label %532

532:                                              ; preds = %518, %515
  %533 = phi i1 [ false, %515 ], [ %531, %518 ]
  br i1 %533, label %534, label %537

534:                                              ; preds = %532
  %535 = load i32, ptr %23, align 4, !tbaa !25
  %536 = add nsw i32 %535, -1
  store i32 %536, ptr %23, align 4, !tbaa !25
  br label %515, !llvm.loop !108

537:                                              ; preds = %532
  %538 = load ptr, ptr %31, align 8, !tbaa !99
  %539 = load i32, ptr %23, align 4, !tbaa !25
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i32, ptr %538, i64 %540
  %542 = load i32, ptr %541, align 4, !tbaa !25
  %543 = load i32, ptr %15, align 4, !tbaa !25
  %544 = add nsw i32 %542, %543
  %545 = load ptr, ptr %17, align 8, !tbaa !99
  store i32 %544, ptr %545, align 4, !tbaa !25
  %546 = load ptr, ptr %31, align 8, !tbaa !99
  %547 = load i32, ptr %23, align 4, !tbaa !25
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i32, ptr %546, i64 %548
  %550 = load i32, ptr %549, align 4, !tbaa !25
  %551 = load ptr, ptr %32, align 8, !tbaa !99
  %552 = load i32, ptr %23, align 4, !tbaa !25
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i32, ptr %551, i64 %553
  %555 = load i32, ptr %554, align 4, !tbaa !25
  %556 = add nsw i32 %550, %555
  %557 = load i32, ptr %26, align 4, !tbaa !25
  %558 = sub nsw i32 %556, %557
  %559 = load i32, ptr %16, align 4, !tbaa !25
  %560 = add nsw i32 %558, %559
  %561 = load ptr, ptr %18, align 8, !tbaa !99
  store i32 %560, ptr %561, align 4, !tbaa !25
  %562 = load ptr, ptr %31, align 8, !tbaa !99
  call void @free(ptr noundef %562) #8
  %563 = load ptr, ptr %32, align 8, !tbaa !99
  call void @free(ptr noundef %563) #8
  %564 = load ptr, ptr %29, align 8, !tbaa !99
  call void @free(ptr noundef %564) #8
  %565 = load ptr, ptr %30, align 8, !tbaa !99
  call void @free(ptr noundef %565) #8
  %566 = load i32, ptr %23, align 4, !tbaa !25
  store i32 %566, ptr %10, align 4
  store i32 1, ptr %33, align 4
  br label %567

567:                                              ; preds = %537, %417, %400, %383, %78
  call void @llvm.lifetime.end.p0(i64 8, ptr %32) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %31) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %30) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %29) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8
  %568 = load i32, ptr %10, align 4
  ret i32 %568
}

; Function Attrs: nounwind
define internal void @grow_exon_left(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !37
  store ptr %1, ptr %5, align 8, !tbaa !64
  store ptr %2, ptr %6, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #8
  %9 = load ptr, ptr %5, align 8, !tbaa !64
  %10 = load ptr, ptr %4, align 8, !tbaa !37
  %11 = getelementptr inbounds nuw %struct._exon_t, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 4, !tbaa !41
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 %13
  %15 = getelementptr inbounds i8, ptr %14, i64 -2
  store ptr %15, ptr %7, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  %16 = load ptr, ptr %6, align 8, !tbaa !64
  %17 = load ptr, ptr %4, align 8, !tbaa !37
  %18 = getelementptr inbounds nuw %struct._exon_t, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !39
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 %20
  %22 = getelementptr inbounds i8, ptr %21, i64 -2
  store ptr %22, ptr %8, align 8, !tbaa !64
  br label %23

23:                                               ; preds = %41, %3
  %24 = load ptr, ptr %7, align 8, !tbaa !64
  %25 = load ptr, ptr %5, align 8, !tbaa !64
  %26 = icmp uge ptr %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load ptr, ptr %8, align 8, !tbaa !64
  %29 = load ptr, ptr %6, align 8, !tbaa !64
  %30 = icmp uge ptr %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 8, !tbaa !64
  %33 = load i8, ptr %32, align 1, !tbaa !28
  %34 = zext i8 %33 to i32
  %35 = load ptr, ptr %8, align 8, !tbaa !64
  %36 = load i8, ptr %35, align 1, !tbaa !28
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %34, %37
  br label %39

39:                                               ; preds = %31, %27, %23
  %40 = phi i1 [ false, %27 ], [ false, %23 ], [ %38, %31 ]
  br i1 %40, label %41, label %54

41:                                               ; preds = %39
  %42 = load ptr, ptr %7, align 8, !tbaa !64
  %43 = getelementptr inbounds i8, ptr %42, i64 -1
  store ptr %43, ptr %7, align 8, !tbaa !64
  %44 = load ptr, ptr %8, align 8, !tbaa !64
  %45 = getelementptr inbounds i8, ptr %44, i64 -1
  store ptr %45, ptr %8, align 8, !tbaa !64
  %46 = load ptr, ptr %4, align 8, !tbaa !37
  %47 = getelementptr inbounds nuw %struct._exon_t, ptr %46, i32 0, i32 0
  %48 = load i32, ptr %47, align 4, !tbaa !41
  %49 = sub i32 %48, 1
  store i32 %49, ptr %47, align 4, !tbaa !41
  %50 = load ptr, ptr %4, align 8, !tbaa !37
  %51 = getelementptr inbounds nuw %struct._exon_t, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !39
  %53 = sub i32 %52, 1
  store i32 %53, ptr %51, align 4, !tbaa !39
  br label %23, !llvm.loop !109

54:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #8
  ret void
}

; Function Attrs: nounwind
define internal signext i32 @extend_fw(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, ptr noundef %6, ptr noundef %7, i32 noundef signext %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca i32, align 4
  store ptr %0, ptr %11, align 8, !tbaa !64
  store ptr %1, ptr %12, align 8, !tbaa !64
  store i32 %2, ptr %13, align 4, !tbaa !25
  store i32 %3, ptr %14, align 4, !tbaa !25
  store i32 %4, ptr %15, align 4, !tbaa !25
  store i32 %5, ptr %16, align 4, !tbaa !25
  store ptr %6, ptr %17, align 8, !tbaa !99
  store ptr %7, ptr %18, align 8, !tbaa !99
  store i32 %8, ptr %19, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %28) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %29) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %30) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %31) #8
  %33 = load i32, ptr %13, align 4, !tbaa !25
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %22, align 4, !tbaa !25
  %35 = load i32, ptr %13, align 4, !tbaa !25
  store i32 %35, ptr %25, align 4, !tbaa !25
  store i32 0, ptr %21, align 4, !tbaa !25
  store i32 0, ptr %20, align 4, !tbaa !25
  br label %36

36:                                               ; preds = %61, %9
  %37 = load i32, ptr %20, align 4, !tbaa !25
  %38 = load i32, ptr %14, align 4, !tbaa !25
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load i32, ptr %21, align 4, !tbaa !25
  %42 = load i32, ptr %13, align 4, !tbaa !25
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load ptr, ptr %11, align 8, !tbaa !64
  %46 = load i32, ptr %21, align 4, !tbaa !25
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !28
  %50 = zext i8 %49 to i32
  %51 = load ptr, ptr %12, align 8, !tbaa !64
  %52 = load i32, ptr %20, align 4, !tbaa !25
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %51, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !28
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %50, %56
  br label %58

58:                                               ; preds = %44, %40, %36
  %59 = phi i1 [ false, %40 ], [ false, %36 ], [ %57, %44 ]
  br i1 %59, label %60, label %66

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %21, align 4, !tbaa !25
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %21, align 4, !tbaa !25
  %64 = load i32, ptr %20, align 4, !tbaa !25
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %20, align 4, !tbaa !25
  br label %36, !llvm.loop !110

66:                                               ; preds = %58
  %67 = load i32, ptr %21, align 4, !tbaa !25
  %68 = load i32, ptr %13, align 4, !tbaa !25
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i32, ptr %21, align 4, !tbaa !25
  %72 = load i32, ptr %15, align 4, !tbaa !25
  %73 = add nsw i32 %71, %72
  %74 = load ptr, ptr %17, align 8, !tbaa !99
  store i32 %73, ptr %74, align 4, !tbaa !25
  %75 = load i32, ptr %20, align 4, !tbaa !25
  %76 = load i32, ptr %16, align 4, !tbaa !25
  %77 = add nsw i32 %75, %76
  %78 = load ptr, ptr %18, align 8, !tbaa !99
  store i32 %77, ptr %78, align 4, !tbaa !25
  store i32 0, ptr %10, align 4
  store i32 1, ptr %32, align 4
  br label %550

79:                                               ; preds = %66
  %80 = load i32, ptr %20, align 4, !tbaa !25
  %81 = load i32, ptr %14, align 4, !tbaa !25
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i32, ptr %21, align 4, !tbaa !25
  %85 = load i32, ptr %15, align 4, !tbaa !25
  %86 = add nsw i32 %84, %85
  %87 = load ptr, ptr %17, align 8, !tbaa !99
  store i32 %86, ptr %87, align 4, !tbaa !25
  %88 = load i32, ptr %20, align 4, !tbaa !25
  %89 = load i32, ptr %16, align 4, !tbaa !25
  %90 = add nsw i32 %88, %89
  %91 = load ptr, ptr %18, align 8, !tbaa !99
  store i32 %90, ptr %91, align 4, !tbaa !25
  store i32 0, ptr %10, align 4
  store i32 1, ptr %32, align 4
  br label %550

92:                                               ; preds = %79
  %93 = load i32, ptr %13, align 4, !tbaa !25
  %94 = load i32, ptr %14, align 4, !tbaa !25
  %95 = add nsw i32 %93, %94
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = call ptr @xmalloc(i64 noundef %98)
  store ptr %99, ptr %28, align 8, !tbaa !99
  %100 = load i32, ptr %13, align 4, !tbaa !25
  %101 = load i32, ptr %14, align 4, !tbaa !25
  %102 = add nsw i32 %100, %101
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = call ptr @xmalloc(i64 noundef %105)
  store ptr %106, ptr %29, align 8, !tbaa !99
  store i32 0, ptr %24, align 4, !tbaa !25
  br label %107

107:                                              ; preds = %118, %92
  %108 = load i32, ptr %24, align 4, !tbaa !25
  %109 = load i32, ptr %13, align 4, !tbaa !25
  %110 = load i32, ptr %14, align 4, !tbaa !25
  %111 = add nsw i32 %109, %110
  %112 = icmp sle i32 %108, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load ptr, ptr %28, align 8, !tbaa !99
  %115 = load i32, ptr %24, align 4, !tbaa !25
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %114, i64 %116
  store i32 -1, ptr %117, align 4, !tbaa !25
  br label %118

118:                                              ; preds = %113
  %119 = load i32, ptr %24, align 4, !tbaa !25
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr %24, align 4, !tbaa !25
  br label %107, !llvm.loop !111

121:                                              ; preds = %107
  %122 = load i32, ptr %21, align 4, !tbaa !25
  %123 = load ptr, ptr %28, align 8, !tbaa !99
  %124 = load i32, ptr %25, align 4, !tbaa !25
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %123, i64 %125
  store i32 %122, ptr %126, align 4, !tbaa !25
  %127 = load i32, ptr %25, align 4, !tbaa !25
  %128 = sub nsw i32 %127, 1
  store i32 %128, ptr %26, align 4, !tbaa !25
  %129 = load i32, ptr %25, align 4, !tbaa !25
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr %27, align 4, !tbaa !25
  %131 = load i32, ptr %13, align 4, !tbaa !25
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = call ptr @xmalloc(i64 noundef %134)
  store ptr %135, ptr %30, align 8, !tbaa !99
  %136 = load i32, ptr %13, align 4, !tbaa !25
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 4
  %140 = call ptr @xmalloc(i64 noundef %139)
  store ptr %140, ptr %31, align 8, !tbaa !99
  store i32 1, ptr %23, align 4, !tbaa !25
  br label %141

141:                                              ; preds = %150, %121
  %142 = load i32, ptr %23, align 4, !tbaa !25
  %143 = load i32, ptr %13, align 4, !tbaa !25
  %144 = icmp sle i32 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load ptr, ptr %30, align 8, !tbaa !99
  %147 = load i32, ptr %23, align 4, !tbaa !25
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, ptr %146, i64 %148
  store i32 -1, ptr %149, align 4, !tbaa !25
  br label %150

150:                                              ; preds = %145
  %151 = load i32, ptr %23, align 4, !tbaa !25
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %23, align 4, !tbaa !25
  br label %141, !llvm.loop !112

153:                                              ; preds = %141
  %154 = load ptr, ptr %28, align 8, !tbaa !99
  %155 = load i32, ptr %25, align 4, !tbaa !25
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, ptr %154, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !25
  %159 = load ptr, ptr %30, align 8, !tbaa !99
  %160 = getelementptr inbounds i32, ptr %159, i64 0
  store i32 %158, ptr %160, align 4, !tbaa !25
  %161 = load i32, ptr %25, align 4, !tbaa !25
  %162 = load ptr, ptr %31, align 8, !tbaa !99
  %163 = getelementptr inbounds i32, ptr %162, i64 0
  store i32 %161, ptr %163, align 4, !tbaa !25
  store i32 0, ptr %23, align 4, !tbaa !25
  br label %164

164:                                              ; preds = %492, %153
  %165 = load i32, ptr %23, align 4, !tbaa !25
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr %23, align 4, !tbaa !25
  %167 = load i32, ptr %22, align 4, !tbaa !25
  %168 = icmp sle i32 %166, %167
  br i1 %168, label %169, label %200

169:                                              ; preds = %164
  %170 = load i32, ptr %23, align 4, !tbaa !25
  %171 = sub nsw i32 %170, 1
  %172 = load ptr, ptr %30, align 8, !tbaa !99
  %173 = load i32, ptr %23, align 4, !tbaa !25
  %174 = sub nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, ptr %172, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !25
  %178 = load i32, ptr %19, align 4, !tbaa !25
  %179 = call signext i32 @good_ratio(i32 noundef signext %177, i32 noundef signext %178)
  %180 = icmp sle i32 %171, %179
  br i1 %180, label %198, label %181

181:                                              ; preds = %169
  %182 = load i32, ptr %23, align 4, !tbaa !25
  %183 = icmp sge i32 %182, 2
  br i1 %183, label %184, label %196

184:                                              ; preds = %181
  %185 = load i32, ptr %23, align 4, !tbaa !25
  %186 = sub nsw i32 %185, 2
  %187 = load ptr, ptr %30, align 8, !tbaa !99
  %188 = load i32, ptr %23, align 4, !tbaa !25
  %189 = sub nsw i32 %188, 2
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, ptr %187, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !25
  %193 = load i32, ptr %19, align 4, !tbaa !25
  %194 = call signext i32 @good_ratio(i32 noundef signext %192, i32 noundef signext %193)
  %195 = icmp sle i32 %186, %194
  br label %196

196:                                              ; preds = %184, %181
  %197 = phi i1 [ false, %181 ], [ %195, %184 ]
  br label %198

198:                                              ; preds = %196, %169
  %199 = phi i1 [ true, %169 ], [ %197, %196 ]
  br label %200

200:                                              ; preds = %198, %164
  %201 = phi i1 [ false, %164 ], [ %199, %198 ]
  br i1 %201, label %202, label %497

202:                                              ; preds = %200
  %203 = load i32, ptr %26, align 4, !tbaa !25
  store i32 %203, ptr %24, align 4, !tbaa !25
  br label %204

204:                                              ; preds = %419, %202
  %205 = load i32, ptr %24, align 4, !tbaa !25
  %206 = load i32, ptr %27, align 4, !tbaa !25
  %207 = icmp sle i32 %205, %206
  br i1 %207, label %208, label %422

208:                                              ; preds = %204
  %209 = load i32, ptr %24, align 4, !tbaa !25
  %210 = load i32, ptr %23, align 4, !tbaa !25
  %211 = sub nsw i32 0, %210
  %212 = load i32, ptr %25, align 4, !tbaa !25
  %213 = add nsw i32 %211, %212
  %214 = icmp eq i32 %209, %213
  br i1 %214, label %215, label %223

215:                                              ; preds = %208
  %216 = load ptr, ptr %28, align 8, !tbaa !99
  %217 = load i32, ptr %24, align 4, !tbaa !25
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, ptr %216, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !25
  %222 = add nsw i32 %221, 1
  store i32 %222, ptr %21, align 4, !tbaa !25
  br label %316

223:                                              ; preds = %208
  %224 = load i32, ptr %24, align 4, !tbaa !25
  %225 = load i32, ptr %23, align 4, !tbaa !25
  %226 = load i32, ptr %25, align 4, !tbaa !25
  %227 = add nsw i32 %225, %226
  %228 = icmp eq i32 %224, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %223
  %230 = load ptr, ptr %28, align 8, !tbaa !99
  %231 = load i32, ptr %24, align 4, !tbaa !25
  %232 = sub nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, ptr %230, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !25
  store i32 %235, ptr %21, align 4, !tbaa !25
  br label %315

236:                                              ; preds = %223
  %237 = load ptr, ptr %28, align 8, !tbaa !99
  %238 = load i32, ptr %24, align 4, !tbaa !25
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, ptr %237, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !25
  %242 = load ptr, ptr %28, align 8, !tbaa !99
  %243 = load i32, ptr %24, align 4, !tbaa !25
  %244 = add nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, ptr %242, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !25
  %248 = icmp sge i32 %241, %247
  br i1 %248, label %249, label %270

249:                                              ; preds = %236
  %250 = load ptr, ptr %28, align 8, !tbaa !99
  %251 = load i32, ptr %24, align 4, !tbaa !25
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, ptr %250, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !25
  %255 = add nsw i32 %254, 1
  %256 = load ptr, ptr %28, align 8, !tbaa !99
  %257 = load i32, ptr %24, align 4, !tbaa !25
  %258 = sub nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, ptr %256, i64 %259
  %261 = load i32, ptr %260, align 4, !tbaa !25
  %262 = icmp sge i32 %255, %261
  br i1 %262, label %263, label %270

263:                                              ; preds = %249
  %264 = load ptr, ptr %28, align 8, !tbaa !99
  %265 = load i32, ptr %24, align 4, !tbaa !25
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, ptr %264, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !25
  %269 = add nsw i32 %268, 1
  store i32 %269, ptr %21, align 4, !tbaa !25
  br label %314

270:                                              ; preds = %249, %236
  %271 = load ptr, ptr %28, align 8, !tbaa !99
  %272 = load i32, ptr %24, align 4, !tbaa !25
  %273 = add nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, ptr %271, i64 %274
  %276 = load i32, ptr %275, align 4, !tbaa !25
  %277 = add nsw i32 %276, 1
  %278 = load ptr, ptr %28, align 8, !tbaa !99
  %279 = load i32, ptr %24, align 4, !tbaa !25
  %280 = sub nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, ptr %278, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !25
  %284 = icmp sge i32 %277, %283
  br i1 %284, label %285, label %306

285:                                              ; preds = %270
  %286 = load ptr, ptr %28, align 8, !tbaa !99
  %287 = load i32, ptr %24, align 4, !tbaa !25
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, ptr %286, i64 %289
  %291 = load i32, ptr %290, align 4, !tbaa !25
  %292 = load ptr, ptr %28, align 8, !tbaa !99
  %293 = load i32, ptr %24, align 4, !tbaa !25
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, ptr %292, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !25
  %297 = icmp sge i32 %291, %296
  br i1 %297, label %298, label %306

298:                                              ; preds = %285
  %299 = load ptr, ptr %28, align 8, !tbaa !99
  %300 = load i32, ptr %24, align 4, !tbaa !25
  %301 = add nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, ptr %299, i64 %302
  %304 = load i32, ptr %303, align 4, !tbaa !25
  %305 = add nsw i32 %304, 1
  store i32 %305, ptr %21, align 4, !tbaa !25
  br label %313

306:                                              ; preds = %285, %270
  %307 = load ptr, ptr %28, align 8, !tbaa !99
  %308 = load i32, ptr %24, align 4, !tbaa !25
  %309 = sub nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, ptr %307, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !25
  store i32 %312, ptr %21, align 4, !tbaa !25
  br label %313

313:                                              ; preds = %306, %298
  br label %314

314:                                              ; preds = %313, %263
  br label %315

315:                                              ; preds = %314, %229
  br label %316

316:                                              ; preds = %315, %215
  %317 = load i32, ptr %21, align 4, !tbaa !25
  %318 = load i32, ptr %24, align 4, !tbaa !25
  %319 = add nsw i32 %317, %318
  %320 = load i32, ptr %25, align 4, !tbaa !25
  %321 = sub nsw i32 %319, %320
  store i32 %321, ptr %20, align 4, !tbaa !25
  %322 = load i32, ptr %21, align 4, !tbaa !25
  %323 = icmp sge i32 %322, 0
  br i1 %323, label %324, label %355

324:                                              ; preds = %316
  br label %325

325:                                              ; preds = %349, %324
  %326 = load i32, ptr %21, align 4, !tbaa !25
  %327 = load i32, ptr %13, align 4, !tbaa !25
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %347

329:                                              ; preds = %325
  %330 = load i32, ptr %20, align 4, !tbaa !25
  %331 = load i32, ptr %14, align 4, !tbaa !25
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %347

333:                                              ; preds = %329
  %334 = load ptr, ptr %11, align 8, !tbaa !64
  %335 = load i32, ptr %21, align 4, !tbaa !25
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, ptr %334, i64 %336
  %338 = load i8, ptr %337, align 1, !tbaa !28
  %339 = zext i8 %338 to i32
  %340 = load ptr, ptr %12, align 8, !tbaa !64
  %341 = load i32, ptr %20, align 4, !tbaa !25
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, ptr %340, i64 %342
  %344 = load i8, ptr %343, align 1, !tbaa !28
  %345 = zext i8 %344 to i32
  %346 = icmp eq i32 %339, %345
  br label %347

347:                                              ; preds = %333, %329, %325
  %348 = phi i1 [ false, %329 ], [ false, %325 ], [ %346, %333 ]
  br i1 %348, label %349, label %354

349:                                              ; preds = %347
  %350 = load i32, ptr %21, align 4, !tbaa !25
  %351 = add nsw i32 %350, 1
  store i32 %351, ptr %21, align 4, !tbaa !25
  %352 = load i32, ptr %20, align 4, !tbaa !25
  %353 = add nsw i32 %352, 1
  store i32 %353, ptr %20, align 4, !tbaa !25
  br label %325, !llvm.loop !113

354:                                              ; preds = %347
  br label %355

355:                                              ; preds = %354, %316
  %356 = load i32, ptr %21, align 4, !tbaa !25
  %357 = load ptr, ptr %29, align 8, !tbaa !99
  %358 = load i32, ptr %24, align 4, !tbaa !25
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, ptr %357, i64 %359
  store i32 %356, ptr %360, align 4, !tbaa !25
  %361 = load i32, ptr %21, align 4, !tbaa !25
  %362 = load i32, ptr %13, align 4, !tbaa !25
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %382

364:                                              ; preds = %355
  %365 = load i32, ptr %20, align 4, !tbaa !25
  %366 = load i32, ptr %14, align 4, !tbaa !25
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %368, label %382

368:                                              ; preds = %364
  %369 = load ptr, ptr %28, align 8, !tbaa !99
  call void @free(ptr noundef %369) #8
  %370 = load ptr, ptr %29, align 8, !tbaa !99
  call void @free(ptr noundef %370) #8
  %371 = load ptr, ptr %30, align 8, !tbaa !99
  call void @free(ptr noundef %371) #8
  %372 = load ptr, ptr %31, align 8, !tbaa !99
  call void @free(ptr noundef %372) #8
  %373 = load i32, ptr %21, align 4, !tbaa !25
  %374 = load i32, ptr %15, align 4, !tbaa !25
  %375 = add nsw i32 %373, %374
  %376 = load ptr, ptr %17, align 8, !tbaa !99
  store i32 %375, ptr %376, align 4, !tbaa !25
  %377 = load i32, ptr %20, align 4, !tbaa !25
  %378 = load i32, ptr %16, align 4, !tbaa !25
  %379 = add nsw i32 %377, %378
  %380 = load ptr, ptr %18, align 8, !tbaa !99
  store i32 %379, ptr %380, align 4, !tbaa !25
  %381 = load i32, ptr %23, align 4, !tbaa !25
  store i32 %381, ptr %10, align 4
  store i32 1, ptr %32, align 4
  br label %550

382:                                              ; preds = %364, %355
  %383 = load i32, ptr %21, align 4, !tbaa !25
  %384 = load i32, ptr %13, align 4, !tbaa !25
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %400

386:                                              ; preds = %382
  %387 = load ptr, ptr %29, align 8, !tbaa !99
  call void @free(ptr noundef %387) #8
  %388 = load ptr, ptr %28, align 8, !tbaa !99
  call void @free(ptr noundef %388) #8
  %389 = load ptr, ptr %30, align 8, !tbaa !99
  call void @free(ptr noundef %389) #8
  %390 = load ptr, ptr %31, align 8, !tbaa !99
  call void @free(ptr noundef %390) #8
  %391 = load i32, ptr %21, align 4, !tbaa !25
  %392 = load i32, ptr %15, align 4, !tbaa !25
  %393 = add nsw i32 %391, %392
  %394 = load ptr, ptr %17, align 8, !tbaa !99
  store i32 %393, ptr %394, align 4, !tbaa !25
  %395 = load i32, ptr %20, align 4, !tbaa !25
  %396 = load i32, ptr %16, align 4, !tbaa !25
  %397 = add nsw i32 %395, %396
  %398 = load ptr, ptr %18, align 8, !tbaa !99
  store i32 %397, ptr %398, align 4, !tbaa !25
  %399 = load i32, ptr %23, align 4, !tbaa !25
  store i32 %399, ptr %10, align 4
  store i32 1, ptr %32, align 4
  br label %550

400:                                              ; preds = %382
  %401 = load i32, ptr %20, align 4, !tbaa !25
  %402 = load i32, ptr %14, align 4, !tbaa !25
  %403 = icmp eq i32 %401, %402
  br i1 %403, label %404, label %418

404:                                              ; preds = %400
  %405 = load ptr, ptr %29, align 8, !tbaa !99
  call void @free(ptr noundef %405) #8
  %406 = load ptr, ptr %28, align 8, !tbaa !99
  call void @free(ptr noundef %406) #8
  %407 = load ptr, ptr %30, align 8, !tbaa !99
  call void @free(ptr noundef %407) #8
  %408 = load ptr, ptr %31, align 8, !tbaa !99
  call void @free(ptr noundef %408) #8
  %409 = load i32, ptr %21, align 4, !tbaa !25
  %410 = load i32, ptr %15, align 4, !tbaa !25
  %411 = add nsw i32 %409, %410
  %412 = load ptr, ptr %17, align 8, !tbaa !99
  store i32 %411, ptr %412, align 4, !tbaa !25
  %413 = load i32, ptr %20, align 4, !tbaa !25
  %414 = load i32, ptr %16, align 4, !tbaa !25
  %415 = add nsw i32 %413, %414
  %416 = load ptr, ptr %18, align 8, !tbaa !99
  store i32 %415, ptr %416, align 4, !tbaa !25
  %417 = load i32, ptr %23, align 4, !tbaa !25
  store i32 %417, ptr %10, align 4
  store i32 1, ptr %32, align 4
  br label %550

418:                                              ; preds = %400
  br label %419

419:                                              ; preds = %418
  %420 = load i32, ptr %24, align 4, !tbaa !25
  %421 = add nsw i32 %420, 1
  store i32 %421, ptr %24, align 4, !tbaa !25
  br label %204, !llvm.loop !114

422:                                              ; preds = %204
  %423 = load ptr, ptr %28, align 8, !tbaa !99
  %424 = load i32, ptr %25, align 4, !tbaa !25
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, ptr %423, i64 %425
  %427 = load i32, ptr %426, align 4, !tbaa !25
  %428 = load ptr, ptr %30, align 8, !tbaa !99
  %429 = load i32, ptr %23, align 4, !tbaa !25
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, ptr %428, i64 %430
  store i32 %427, ptr %431, align 4, !tbaa !25
  %432 = load i32, ptr %25, align 4, !tbaa !25
  %433 = load ptr, ptr %31, align 8, !tbaa !99
  %434 = load i32, ptr %23, align 4, !tbaa !25
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, ptr %433, i64 %435
  store i32 %432, ptr %436, align 4, !tbaa !25
  %437 = load i32, ptr %26, align 4, !tbaa !25
  store i32 %437, ptr %24, align 4, !tbaa !25
  br label %438

438:                                              ; preds = %470, %422
  %439 = load i32, ptr %24, align 4, !tbaa !25
  %440 = load i32, ptr %27, align 4, !tbaa !25
  %441 = icmp sle i32 %439, %440
  br i1 %441, label %442, label %473

442:                                              ; preds = %438
  %443 = load ptr, ptr %29, align 8, !tbaa !99
  %444 = load i32, ptr %24, align 4, !tbaa !25
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, ptr %443, i64 %445
  %447 = load i32, ptr %446, align 4, !tbaa !25
  %448 = load ptr, ptr %30, align 8, !tbaa !99
  %449 = load i32, ptr %23, align 4, !tbaa !25
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, ptr %448, i64 %450
  %452 = load i32, ptr %451, align 4, !tbaa !25
  %453 = icmp sgt i32 %447, %452
  br i1 %453, label %454, label %469

454:                                              ; preds = %442
  %455 = load ptr, ptr %29, align 8, !tbaa !99
  %456 = load i32, ptr %24, align 4, !tbaa !25
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, ptr %455, i64 %457
  %459 = load i32, ptr %458, align 4, !tbaa !25
  %460 = load ptr, ptr %30, align 8, !tbaa !99
  %461 = load i32, ptr %23, align 4, !tbaa !25
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, ptr %460, i64 %462
  store i32 %459, ptr %463, align 4, !tbaa !25
  %464 = load i32, ptr %24, align 4, !tbaa !25
  %465 = load ptr, ptr %31, align 8, !tbaa !99
  %466 = load i32, ptr %23, align 4, !tbaa !25
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, ptr %465, i64 %467
  store i32 %464, ptr %468, align 4, !tbaa !25
  br label %469

469:                                              ; preds = %454, %442
  br label %470

470:                                              ; preds = %469
  %471 = load i32, ptr %24, align 4, !tbaa !25
  %472 = add nsw i32 %471, 1
  store i32 %472, ptr %24, align 4, !tbaa !25
  br label %438, !llvm.loop !115

473:                                              ; preds = %438
  %474 = load i32, ptr %26, align 4, !tbaa !25
  store i32 %474, ptr %24, align 4, !tbaa !25
  br label %475

475:                                              ; preds = %489, %473
  %476 = load i32, ptr %24, align 4, !tbaa !25
  %477 = load i32, ptr %27, align 4, !tbaa !25
  %478 = icmp sle i32 %476, %477
  br i1 %478, label %479, label %492

479:                                              ; preds = %475
  %480 = load ptr, ptr %29, align 8, !tbaa !99
  %481 = load i32, ptr %24, align 4, !tbaa !25
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, ptr %480, i64 %482
  %484 = load i32, ptr %483, align 4, !tbaa !25
  %485 = load ptr, ptr %28, align 8, !tbaa !99
  %486 = load i32, ptr %24, align 4, !tbaa !25
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, ptr %485, i64 %487
  store i32 %484, ptr %488, align 4, !tbaa !25
  br label %489

489:                                              ; preds = %479
  %490 = load i32, ptr %24, align 4, !tbaa !25
  %491 = add nsw i32 %490, 1
  store i32 %491, ptr %24, align 4, !tbaa !25
  br label %475, !llvm.loop !116

492:                                              ; preds = %475
  %493 = load i32, ptr %26, align 4, !tbaa !25
  %494 = add nsw i32 %493, -1
  store i32 %494, ptr %26, align 4, !tbaa !25
  %495 = load i32, ptr %27, align 4, !tbaa !25
  %496 = add nsw i32 %495, 1
  store i32 %496, ptr %27, align 4, !tbaa !25
  br label %164, !llvm.loop !117

497:                                              ; preds = %200
  br label %498

498:                                              ; preds = %517, %497
  %499 = load i32, ptr %23, align 4, !tbaa !25
  %500 = icmp sgt i32 %499, 0
  br i1 %500, label %501, label %515

501:                                              ; preds = %498
  %502 = load ptr, ptr %30, align 8, !tbaa !99
  %503 = load i32, ptr %23, align 4, !tbaa !25
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, ptr %502, i64 %504
  %506 = load i32, ptr %505, align 4, !tbaa !25
  %507 = load ptr, ptr %30, align 8, !tbaa !99
  %508 = load i32, ptr %23, align 4, !tbaa !25
  %509 = sub nsw i32 %508, 1
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, ptr %507, i64 %510
  %512 = load i32, ptr %511, align 4, !tbaa !25
  %513 = sub nsw i32 %506, %512
  %514 = icmp slt i32 %513, 3
  br label %515

515:                                              ; preds = %501, %498
  %516 = phi i1 [ false, %498 ], [ %514, %501 ]
  br i1 %516, label %517, label %520

517:                                              ; preds = %515
  %518 = load i32, ptr %23, align 4, !tbaa !25
  %519 = add nsw i32 %518, -1
  store i32 %519, ptr %23, align 4, !tbaa !25
  br label %498, !llvm.loop !118

520:                                              ; preds = %515
  %521 = load ptr, ptr %30, align 8, !tbaa !99
  %522 = load i32, ptr %23, align 4, !tbaa !25
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i32, ptr %521, i64 %523
  %525 = load i32, ptr %524, align 4, !tbaa !25
  %526 = load i32, ptr %15, align 4, !tbaa !25
  %527 = add nsw i32 %525, %526
  %528 = load ptr, ptr %17, align 8, !tbaa !99
  store i32 %527, ptr %528, align 4, !tbaa !25
  %529 = load ptr, ptr %30, align 8, !tbaa !99
  %530 = load i32, ptr %23, align 4, !tbaa !25
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i32, ptr %529, i64 %531
  %533 = load i32, ptr %532, align 4, !tbaa !25
  %534 = load ptr, ptr %31, align 8, !tbaa !99
  %535 = load i32, ptr %23, align 4, !tbaa !25
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i32, ptr %534, i64 %536
  %538 = load i32, ptr %537, align 4, !tbaa !25
  %539 = add nsw i32 %533, %538
  %540 = load i32, ptr %25, align 4, !tbaa !25
  %541 = sub nsw i32 %539, %540
  %542 = load i32, ptr %16, align 4, !tbaa !25
  %543 = add nsw i32 %541, %542
  %544 = load ptr, ptr %18, align 8, !tbaa !99
  store i32 %543, ptr %544, align 4, !tbaa !25
  %545 = load ptr, ptr %30, align 8, !tbaa !99
  call void @free(ptr noundef %545) #8
  %546 = load ptr, ptr %31, align 8, !tbaa !99
  call void @free(ptr noundef %546) #8
  %547 = load ptr, ptr %28, align 8, !tbaa !99
  call void @free(ptr noundef %547) #8
  %548 = load ptr, ptr %29, align 8, !tbaa !99
  call void @free(ptr noundef %548) #8
  %549 = load i32, ptr %23, align 4, !tbaa !25
  store i32 %549, ptr %10, align 4
  store i32 1, ptr %32, align 4
  br label %550

550:                                              ; preds = %520, %404, %386, %368, %83, %70
  call void @llvm.lifetime.end.p0(i64 8, ptr %31) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %30) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %29) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %28) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8
  %551 = load i32, ptr %10, align 4
  ret i32 %551
}

; Function Attrs: nounwind
define internal signext i32 @greedy(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, ptr noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca ptr, align 8
  %42 = alloca ptr, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  store ptr %0, ptr %10, align 8, !tbaa !64
  store ptr %1, ptr %11, align 8, !tbaa !64
  store i32 %2, ptr %12, align 4, !tbaa !25
  store i32 %3, ptr %13, align 4, !tbaa !25
  store i32 %4, ptr %14, align 4, !tbaa !25
  store i32 %5, ptr %15, align 4, !tbaa !25
  store i32 %6, ptr %16, align 4, !tbaa !25
  store ptr %7, ptr %17, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %29) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %30) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %31) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %32) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %33) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %34) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %35) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %36) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %37) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %38) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %39) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %40) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %41) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %42) #8
  %48 = load i32, ptr %13, align 4, !tbaa !25
  %49 = icmp uge i32 %48, 1000000
  br i1 %49, label %50, label %51

50:                                               ; preds = %8
  store i32 0, ptr %9, align 4
  store i32 1, ptr %43, align 4
  br label %1101

51:                                               ; preds = %8
  %52 = load i32, ptr %13, align 4, !tbaa !25
  %53 = load i32, ptr %12, align 4, !tbaa !25
  %54 = sub i32 %52, %53
  store i32 %54, ptr %25, align 4, !tbaa !25
  %55 = load i32, ptr %16, align 4, !tbaa !25
  %56 = load i32, ptr %12, align 4, !tbaa !25
  %57 = uitofp i32 %56 to double
  %58 = call double @llvm.fmuladd.f64(double 2.000000e-01, double %57, double 1.000000e+00)
  %59 = fptoui double %58 to i32
  %60 = icmp ult i32 %55, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load i32, ptr %12, align 4, !tbaa !25
  %63 = uitofp i32 %62 to double
  %64 = call double @llvm.fmuladd.f64(double 2.000000e-01, double %63, double 1.000000e+00)
  %65 = fptoui double %64 to i32
  br label %68

66:                                               ; preds = %51
  %67 = load i32, ptr %16, align 4, !tbaa !25
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i32 [ %65, %61 ], [ %67, %66 ]
  store i32 %69, ptr %31, align 4, !tbaa !25
  store i32 %69, ptr %29, align 4, !tbaa !25
  %70 = load i32, ptr %25, align 4, !tbaa !25
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %129

72:                                               ; preds = %68
  %73 = load i32, ptr %12, align 4, !tbaa !25
  %74 = uitofp i32 %73 to double
  %75 = load i32, ptr %16, align 4, !tbaa !25
  %76 = uitofp i32 %75 to double
  %77 = load i32, ptr %13, align 4, !tbaa !25
  %78 = uitofp i32 %77 to double
  %79 = fmul double 1.200000e+00, %78
  %80 = fcmp ogt double %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load i32, ptr %13, align 4, !tbaa !25
  %83 = uitofp i32 %82 to double
  %84 = fmul double 1.200000e+00, %83
  br label %88

85:                                               ; preds = %72
  %86 = load i32, ptr %16, align 4, !tbaa !25
  %87 = uitofp i32 %86 to double
  br label %88

88:                                               ; preds = %85, %81
  %89 = phi double [ %84, %81 ], [ %87, %85 ]
  %90 = fcmp ole double %74, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %88
  %92 = load ptr, ptr %17, align 8, !tbaa !10
  %93 = load i32, ptr %15, align 4, !tbaa !25
  %94 = add i32 %93, 1
  %95 = load i32, ptr %14, align 4, !tbaa !25
  %96 = add i32 %95, 1
  %97 = load i32, ptr %15, align 4, !tbaa !25
  %98 = load i32, ptr %13, align 4, !tbaa !25
  %99 = add i32 %97, %98
  %100 = load i32, ptr %14, align 4, !tbaa !25
  %101 = load i32, ptr %12, align 4, !tbaa !25
  %102 = add i32 %100, %101
  %103 = call ptr @new_exon(i32 noundef signext %94, i32 noundef signext %96, i32 noundef signext %99, i32 noundef signext %102)
  call void @add_col_elt(ptr noundef %92, ptr noundef %103)
  %104 = load i32, ptr %12, align 4, !tbaa !25
  %105 = load i32, ptr %13, align 4, !tbaa !25
  %106 = sub i32 %104, %105
  %107 = load i32, ptr %13, align 4, !tbaa !25
  %108 = uitofp i32 %107 to double
  %109 = call double @llvm.fmuladd.f64(double 2.000000e-01, double %108, double 1.000000e+00)
  %110 = fptoui double %109 to i32
  %111 = add i32 %106, %110
  store i32 %111, ptr %9, align 4
  store i32 1, ptr %43, align 4
  br label %1101

112:                                              ; preds = %88
  %113 = load i32, ptr %16, align 4, !tbaa !25
  %114 = load i32, ptr %12, align 4, !tbaa !25
  %115 = uitofp i32 %114 to double
  %116 = call double @llvm.fmuladd.f64(double 2.000000e-01, double %115, double 1.000000e+00)
  %117 = fptoui double %116 to i32
  %118 = icmp ult i32 %113, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load i32, ptr %12, align 4, !tbaa !25
  %121 = uitofp i32 %120 to double
  %122 = call double @llvm.fmuladd.f64(double 2.000000e-01, double %121, double 1.000000e+00)
  %123 = fptoui double %122 to i32
  br label %126

124:                                              ; preds = %112
  %125 = load i32, ptr %16, align 4, !tbaa !25
  br label %126

126:                                              ; preds = %124, %119
  %127 = phi i32 [ %123, %119 ], [ %125, %124 ]
  %128 = add i32 %127, 1
  store i32 %128, ptr %9, align 4
  store i32 1, ptr %43, align 4
  br label %1101

129:                                              ; preds = %68
  %130 = load i32, ptr %31, align 4, !tbaa !25
  store i32 %130, ptr %27, align 4, !tbaa !25
  %131 = load i32, ptr %31, align 4, !tbaa !25
  %132 = load i32, ptr %25, align 4, !tbaa !25
  %133 = sub i32 %131, %132
  store i32 %133, ptr %26, align 4, !tbaa !25
  %134 = load i32, ptr %12, align 4, !tbaa !25
  store i32 %134, ptr %24, align 4, !tbaa !25
  %135 = load i32, ptr %13, align 4, !tbaa !25
  store i32 %135, ptr %18, align 4, !tbaa !25
  br label %136

136:                                              ; preds = %161, %129
  %137 = load i32, ptr %24, align 4, !tbaa !25
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %136
  %140 = load i32, ptr %18, align 4, !tbaa !25
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %139
  %143 = load ptr, ptr %10, align 8, !tbaa !64
  %144 = load i32, ptr %24, align 4, !tbaa !25
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, ptr %143, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !28
  %149 = zext i8 %148 to i32
  %150 = load ptr, ptr %11, align 8, !tbaa !64
  %151 = load i32, ptr %18, align 4, !tbaa !25
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %150, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !28
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %149, %156
  br label %158

158:                                              ; preds = %142, %139, %136
  %159 = phi i1 [ false, %139 ], [ false, %136 ], [ %157, %142 ]
  br i1 %159, label %160, label %166

160:                                              ; preds = %158
  br label %161

161:                                              ; preds = %160
  %162 = load i32, ptr %24, align 4, !tbaa !25
  %163 = add nsw i32 %162, -1
  store i32 %163, ptr %24, align 4, !tbaa !25
  %164 = load i32, ptr %18, align 4, !tbaa !25
  %165 = add nsw i32 %164, -1
  store i32 %165, ptr %18, align 4, !tbaa !25
  br label %136, !llvm.loop !119

166:                                              ; preds = %158
  %167 = load i32, ptr %24, align 4, !tbaa !25
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %166
  %170 = load ptr, ptr %17, align 8, !tbaa !10
  %171 = load i32, ptr %15, align 4, !tbaa !25
  %172 = load i32, ptr %12, align 4, !tbaa !25
  %173 = sub i32 %171, %172
  %174 = load i32, ptr %13, align 4, !tbaa !25
  %175 = add i32 %173, %174
  %176 = add i32 %175, 1
  %177 = load i32, ptr %14, align 4, !tbaa !25
  %178 = add i32 %177, 1
  %179 = load i32, ptr %15, align 4, !tbaa !25
  %180 = load i32, ptr %13, align 4, !tbaa !25
  %181 = add i32 %179, %180
  %182 = load i32, ptr %14, align 4, !tbaa !25
  %183 = load i32, ptr %12, align 4, !tbaa !25
  %184 = add i32 %182, %183
  %185 = call ptr @new_exon(i32 noundef signext %176, i32 noundef signext %178, i32 noundef signext %181, i32 noundef signext %184)
  call void @add_col_elt(ptr noundef %170, ptr noundef %185)
  store i32 0, ptr %9, align 4
  store i32 1, ptr %43, align 4
  br label %1101

186:                                              ; preds = %166
  %187 = load i32, ptr %31, align 4, !tbaa !25
  %188 = load i32, ptr %13, align 4, !tbaa !25
  %189 = add i32 %187, %188
  %190 = add i32 %189, 1
  %191 = zext i32 %190 to i64
  %192 = mul i64 %191, 4
  %193 = call ptr @xmalloc(i64 noundef %192)
  store ptr %193, ptr %35, align 8, !tbaa !99
  %194 = load i32, ptr %31, align 4, !tbaa !25
  %195 = load i32, ptr %13, align 4, !tbaa !25
  %196 = add i32 %194, %195
  %197 = add i32 %196, 1
  %198 = zext i32 %197 to i64
  %199 = mul i64 %198, 4
  %200 = call ptr @xmalloc(i64 noundef %199)
  store ptr %200, ptr %37, align 8, !tbaa !99
  store i32 0, ptr %32, align 4, !tbaa !25
  br label %201

201:                                              ; preds = %220, %186
  %202 = load i32, ptr %32, align 4, !tbaa !25
  %203 = load i32, ptr %31, align 4, !tbaa !25
  %204 = load i32, ptr %13, align 4, !tbaa !25
  %205 = add i32 %203, %204
  %206 = icmp ule i32 %202, %205
  br i1 %206, label %207, label %223

207:                                              ; preds = %201
  %208 = load i32, ptr %12, align 4, !tbaa !25
  %209 = add i32 %208, 1
  %210 = load ptr, ptr %35, align 8, !tbaa !99
  %211 = load i32, ptr %32, align 4, !tbaa !25
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds nuw i32, ptr %210, i64 %212
  store i32 %209, ptr %213, align 4, !tbaa !25
  %214 = load i32, ptr %12, align 4, !tbaa !25
  %215 = add i32 %214, 1
  %216 = load ptr, ptr %37, align 8, !tbaa !99
  %217 = load i32, ptr %32, align 4, !tbaa !25
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds nuw i32, ptr %216, i64 %218
  store i32 %215, ptr %219, align 4, !tbaa !25
  br label %220

220:                                              ; preds = %207
  %221 = load i32, ptr %32, align 4, !tbaa !25
  %222 = add i32 %221, 1
  store i32 %222, ptr %32, align 4, !tbaa !25
  br label %201, !llvm.loop !120

223:                                              ; preds = %201
  %224 = load i32, ptr %24, align 4, !tbaa !25
  %225 = load ptr, ptr %35, align 8, !tbaa !99
  %226 = load i32, ptr %26, align 4, !tbaa !25
  %227 = load i32, ptr %25, align 4, !tbaa !25
  %228 = add nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, ptr %225, i64 %229
  store i32 %224, ptr %230, align 4, !tbaa !25
  %231 = load i32, ptr %26, align 4, !tbaa !25
  %232 = load i32, ptr %25, align 4, !tbaa !25
  %233 = add nsw i32 %231, %232
  %234 = sub nsw i32 %233, 1
  store i32 %234, ptr %20, align 4, !tbaa !25
  %235 = load i32, ptr %26, align 4, !tbaa !25
  %236 = load i32, ptr %25, align 4, !tbaa !25
  %237 = add nsw i32 %235, %236
  %238 = add nsw i32 %237, 1
  store i32 %238, ptr %22, align 4, !tbaa !25
  store i32 0, ptr %24, align 4, !tbaa !25
  br label %239

239:                                              ; preds = %264, %223
  %240 = load i32, ptr %24, align 4, !tbaa !25
  %241 = load i32, ptr %13, align 4, !tbaa !25
  %242 = icmp ult i32 %240, %241
  br i1 %242, label %243, label %261

243:                                              ; preds = %239
  %244 = load i32, ptr %24, align 4, !tbaa !25
  %245 = load i32, ptr %12, align 4, !tbaa !25
  %246 = icmp ult i32 %244, %245
  br i1 %246, label %247, label %261

247:                                              ; preds = %243
  %248 = load ptr, ptr %10, align 8, !tbaa !64
  %249 = load i32, ptr %24, align 4, !tbaa !25
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, ptr %248, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !28
  %253 = zext i8 %252 to i32
  %254 = load ptr, ptr %11, align 8, !tbaa !64
  %255 = load i32, ptr %24, align 4, !tbaa !25
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, ptr %254, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !28
  %259 = zext i8 %258 to i32
  %260 = icmp eq i32 %253, %259
  br label %261

261:                                              ; preds = %247, %243, %239
  %262 = phi i1 [ false, %243 ], [ false, %239 ], [ %260, %247 ]
  br i1 %262, label %263, label %267

263:                                              ; preds = %261
  br label %264

264:                                              ; preds = %263
  %265 = load i32, ptr %24, align 4, !tbaa !25
  %266 = add nsw i32 %265, 1
  store i32 %266, ptr %24, align 4, !tbaa !25
  br label %239, !llvm.loop !121

267:                                              ; preds = %261
  %268 = load i32, ptr %24, align 4, !tbaa !25
  %269 = load i32, ptr %12, align 4, !tbaa !25
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %286

271:                                              ; preds = %267
  %272 = load ptr, ptr %17, align 8, !tbaa !10
  %273 = load i32, ptr %15, align 4, !tbaa !25
  %274 = add i32 %273, 1
  %275 = load i32, ptr %14, align 4, !tbaa !25
  %276 = add i32 %275, 1
  %277 = load i32, ptr %15, align 4, !tbaa !25
  %278 = load i32, ptr %12, align 4, !tbaa !25
  %279 = add i32 %277, %278
  %280 = load i32, ptr %14, align 4, !tbaa !25
  %281 = load i32, ptr %12, align 4, !tbaa !25
  %282 = add i32 %280, %281
  %283 = call ptr @new_exon(i32 noundef signext %274, i32 noundef signext %276, i32 noundef signext %279, i32 noundef signext %282)
  call void @add_col_elt(ptr noundef %272, ptr noundef %283)
  %284 = load ptr, ptr %35, align 8, !tbaa !99
  call void @free(ptr noundef %284) #8
  %285 = load ptr, ptr %37, align 8, !tbaa !99
  call void @free(ptr noundef %285) #8
  store i32 0, ptr %9, align 4
  store i32 1, ptr %43, align 4
  br label %1101

286:                                              ; preds = %267
  %287 = load i32, ptr %31, align 4, !tbaa !25
  %288 = load i32, ptr %13, align 4, !tbaa !25
  %289 = add i32 %287, %288
  %290 = add i32 %289, 1
  %291 = zext i32 %290 to i64
  %292 = mul i64 %291, 4
  %293 = call ptr @xmalloc(i64 noundef %292)
  store ptr %293, ptr %36, align 8, !tbaa !99
  %294 = load i32, ptr %31, align 4, !tbaa !25
  %295 = load i32, ptr %13, align 4, !tbaa !25
  %296 = add i32 %294, %295
  %297 = add i32 %296, 1
  %298 = zext i32 %297 to i64
  %299 = mul i64 %298, 4
  %300 = call ptr @xmalloc(i64 noundef %299)
  store ptr %300, ptr %38, align 8, !tbaa !99
  store i32 0, ptr %32, align 4, !tbaa !25
  br label %301

301:                                              ; preds = %316, %286
  %302 = load i32, ptr %32, align 4, !tbaa !25
  %303 = load i32, ptr %31, align 4, !tbaa !25
  %304 = load i32, ptr %13, align 4, !tbaa !25
  %305 = add i32 %303, %304
  %306 = icmp ule i32 %302, %305
  br i1 %306, label %307, label %319

307:                                              ; preds = %301
  %308 = load ptr, ptr %36, align 8, !tbaa !99
  %309 = load i32, ptr %32, align 4, !tbaa !25
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds nuw i32, ptr %308, i64 %310
  store i32 -1, ptr %311, align 4, !tbaa !25
  %312 = load ptr, ptr %38, align 8, !tbaa !99
  %313 = load i32, ptr %32, align 4, !tbaa !25
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds nuw i32, ptr %312, i64 %314
  store i32 -1, ptr %315, align 4, !tbaa !25
  br label %316

316:                                              ; preds = %307
  %317 = load i32, ptr %32, align 4, !tbaa !25
  %318 = add i32 %317, 1
  store i32 %318, ptr %32, align 4, !tbaa !25
  br label %301, !llvm.loop !122

319:                                              ; preds = %301
  %320 = load i32, ptr %24, align 4, !tbaa !25
  %321 = load ptr, ptr %36, align 8, !tbaa !99
  %322 = load i32, ptr %27, align 4, !tbaa !25
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, ptr %321, i64 %323
  store i32 %320, ptr %324, align 4, !tbaa !25
  %325 = load i32, ptr %27, align 4, !tbaa !25
  %326 = sub nsw i32 %325, 1
  store i32 %326, ptr %21, align 4, !tbaa !25
  %327 = load i32, ptr %27, align 4, !tbaa !25
  %328 = add nsw i32 %327, 1
  store i32 %328, ptr %23, align 4, !tbaa !25
  %329 = load i32, ptr %31, align 4, !tbaa !25
  %330 = add i32 %329, 1
  %331 = zext i32 %330 to i64
  %332 = mul i64 %331, 4
  %333 = call ptr @xmalloc(i64 noundef %332)
  store ptr %333, ptr %41, align 8, !tbaa !99
  %334 = load i32, ptr %31, align 4, !tbaa !25
  %335 = add i32 %334, 1
  %336 = zext i32 %335 to i64
  %337 = mul i64 %336, 4
  %338 = call ptr @xmalloc(i64 noundef %337)
  store ptr %338, ptr %39, align 8, !tbaa !99
  %339 = load i32, ptr %31, align 4, !tbaa !25
  %340 = add i32 %339, 1
  %341 = zext i32 %340 to i64
  %342 = mul i64 %341, 4
  %343 = call ptr @xmalloc(i64 noundef %342)
  store ptr %343, ptr %42, align 8, !tbaa !99
  %344 = load i32, ptr %31, align 4, !tbaa !25
  %345 = add i32 %344, 1
  %346 = zext i32 %345 to i64
  %347 = mul i64 %346, 4
  %348 = call ptr @xmalloc(i64 noundef %347)
  store ptr %348, ptr %40, align 8, !tbaa !99
  store i32 1, ptr %28, align 4, !tbaa !25
  br label %349

349:                                              ; preds = %364, %319
  %350 = load i32, ptr %28, align 4, !tbaa !25
  %351 = load i32, ptr %31, align 4, !tbaa !25
  %352 = icmp ule i32 %350, %351
  br i1 %352, label %353, label %367

353:                                              ; preds = %349
  %354 = load i32, ptr %12, align 4, !tbaa !25
  %355 = add i32 %354, 1
  %356 = load ptr, ptr %39, align 8, !tbaa !99
  %357 = load i32, ptr %28, align 4, !tbaa !25
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds nuw i32, ptr %356, i64 %358
  store i32 %355, ptr %359, align 4, !tbaa !25
  %360 = load ptr, ptr %41, align 8, !tbaa !99
  %361 = load i32, ptr %28, align 4, !tbaa !25
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds nuw i32, ptr %360, i64 %362
  store i32 -1, ptr %363, align 4, !tbaa !25
  br label %364

364:                                              ; preds = %353
  %365 = load i32, ptr %28, align 4, !tbaa !25
  %366 = add i32 %365, 1
  store i32 %366, ptr %28, align 4, !tbaa !25
  br label %349, !llvm.loop !123

367:                                              ; preds = %349
  %368 = load ptr, ptr %35, align 8, !tbaa !99
  %369 = load i32, ptr %26, align 4, !tbaa !25
  %370 = load i32, ptr %25, align 4, !tbaa !25
  %371 = add nsw i32 %369, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, ptr %368, i64 %372
  %374 = load i32, ptr %373, align 4, !tbaa !25
  %375 = load ptr, ptr %39, align 8, !tbaa !99
  %376 = getelementptr inbounds i32, ptr %375, i64 0
  store i32 %374, ptr %376, align 4, !tbaa !25
  %377 = load i32, ptr %26, align 4, !tbaa !25
  %378 = load i32, ptr %25, align 4, !tbaa !25
  %379 = add nsw i32 %377, %378
  %380 = load ptr, ptr %40, align 8, !tbaa !99
  %381 = getelementptr inbounds i32, ptr %380, i64 0
  store i32 %379, ptr %381, align 4, !tbaa !25
  %382 = load ptr, ptr %36, align 8, !tbaa !99
  %383 = load i32, ptr %27, align 4, !tbaa !25
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, ptr %382, i64 %384
  %386 = load i32, ptr %385, align 4, !tbaa !25
  %387 = load ptr, ptr %41, align 8, !tbaa !99
  %388 = getelementptr inbounds i32, ptr %387, i64 0
  store i32 %386, ptr %388, align 4, !tbaa !25
  %389 = load i32, ptr %27, align 4, !tbaa !25
  %390 = load ptr, ptr %42, align 8, !tbaa !99
  %391 = getelementptr inbounds i32, ptr %390, i64 0
  store i32 %389, ptr %391, align 4, !tbaa !25
  store i32 -1, ptr %34, align 4, !tbaa !25
  store i32 -1, ptr %33, align 4, !tbaa !25
  store i32 1, ptr %28, align 4, !tbaa !25
  br label %392

392:                                              ; preds = %943, %367
  %393 = load i32, ptr %28, align 4, !tbaa !25
  %394 = load i32, ptr %29, align 4, !tbaa !25
  %395 = icmp ule i32 %393, %394
  br i1 %395, label %396, label %950

396:                                              ; preds = %392
  %397 = load i32, ptr %20, align 4, !tbaa !25
  store i32 %397, ptr %19, align 4, !tbaa !25
  br label %398

398:                                              ; preds = %556, %396
  %399 = load i32, ptr %19, align 4, !tbaa !25
  %400 = load i32, ptr %22, align 4, !tbaa !25
  %401 = icmp sle i32 %399, %400
  br i1 %401, label %402, label %559

402:                                              ; preds = %398
  %403 = load i32, ptr %19, align 4, !tbaa !25
  %404 = load i32, ptr %28, align 4, !tbaa !25
  %405 = sub nsw i32 0, %404
  %406 = load i32, ptr %25, align 4, !tbaa !25
  %407 = add nsw i32 %405, %406
  %408 = load i32, ptr %26, align 4, !tbaa !25
  %409 = add nsw i32 %407, %408
  %410 = icmp eq i32 %403, %409
  br i1 %410, label %411, label %418

411:                                              ; preds = %402
  %412 = load ptr, ptr %35, align 8, !tbaa !99
  %413 = load i32, ptr %19, align 4, !tbaa !25
  %414 = add nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, ptr %412, i64 %415
  %417 = load i32, ptr %416, align 4, !tbaa !25
  store i32 %417, ptr %24, align 4, !tbaa !25
  br label %515

418:                                              ; preds = %402
  %419 = load i32, ptr %19, align 4, !tbaa !25
  %420 = load i32, ptr %28, align 4, !tbaa !25
  %421 = load i32, ptr %25, align 4, !tbaa !25
  %422 = add nsw i32 %420, %421
  %423 = load i32, ptr %26, align 4, !tbaa !25
  %424 = add nsw i32 %422, %423
  %425 = icmp eq i32 %419, %424
  br i1 %425, label %426, label %434

426:                                              ; preds = %418
  %427 = load ptr, ptr %35, align 8, !tbaa !99
  %428 = load i32, ptr %19, align 4, !tbaa !25
  %429 = sub nsw i32 %428, 1
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, ptr %427, i64 %430
  %432 = load i32, ptr %431, align 4, !tbaa !25
  %433 = sub nsw i32 %432, 1
  store i32 %433, ptr %24, align 4, !tbaa !25
  br label %514

434:                                              ; preds = %418
  %435 = load ptr, ptr %35, align 8, !tbaa !99
  %436 = load i32, ptr %19, align 4, !tbaa !25
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, ptr %435, i64 %437
  %439 = load i32, ptr %438, align 4, !tbaa !25
  %440 = load ptr, ptr %35, align 8, !tbaa !99
  %441 = load i32, ptr %19, align 4, !tbaa !25
  %442 = add nsw i32 %441, 1
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, ptr %440, i64 %443
  %445 = load i32, ptr %444, align 4, !tbaa !25
  %446 = icmp sle i32 %439, %445
  br i1 %446, label %447, label %468

447:                                              ; preds = %434
  %448 = load ptr, ptr %35, align 8, !tbaa !99
  %449 = load i32, ptr %19, align 4, !tbaa !25
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, ptr %448, i64 %450
  %452 = load i32, ptr %451, align 4, !tbaa !25
  %453 = sub nsw i32 %452, 1
  %454 = load ptr, ptr %35, align 8, !tbaa !99
  %455 = load i32, ptr %19, align 4, !tbaa !25
  %456 = sub nsw i32 %455, 1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, ptr %454, i64 %457
  %459 = load i32, ptr %458, align 4, !tbaa !25
  %460 = icmp sle i32 %453, %459
  br i1 %460, label %461, label %468

461:                                              ; preds = %447
  %462 = load ptr, ptr %35, align 8, !tbaa !99
  %463 = load i32, ptr %19, align 4, !tbaa !25
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, ptr %462, i64 %464
  %466 = load i32, ptr %465, align 4, !tbaa !25
  %467 = sub nsw i32 %466, 1
  store i32 %467, ptr %24, align 4, !tbaa !25
  br label %513

468:                                              ; preds = %447, %434
  %469 = load ptr, ptr %35, align 8, !tbaa !99
  %470 = load i32, ptr %19, align 4, !tbaa !25
  %471 = sub nsw i32 %470, 1
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, ptr %469, i64 %472
  %474 = load i32, ptr %473, align 4, !tbaa !25
  %475 = load ptr, ptr %35, align 8, !tbaa !99
  %476 = load i32, ptr %19, align 4, !tbaa !25
  %477 = add nsw i32 %476, 1
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, ptr %475, i64 %478
  %480 = load i32, ptr %479, align 4, !tbaa !25
  %481 = sub nsw i32 %480, 1
  %482 = icmp sle i32 %474, %481
  br i1 %482, label %483, label %505

483:                                              ; preds = %468
  %484 = load ptr, ptr %35, align 8, !tbaa !99
  %485 = load i32, ptr %19, align 4, !tbaa !25
  %486 = sub nsw i32 %485, 1
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, ptr %484, i64 %487
  %489 = load i32, ptr %488, align 4, !tbaa !25
  %490 = load ptr, ptr %35, align 8, !tbaa !99
  %491 = load i32, ptr %19, align 4, !tbaa !25
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, ptr %490, i64 %492
  %494 = load i32, ptr %493, align 4, !tbaa !25
  %495 = sub nsw i32 %494, 1
  %496 = icmp sle i32 %489, %495
  br i1 %496, label %497, label %505

497:                                              ; preds = %483
  %498 = load ptr, ptr %35, align 8, !tbaa !99
  %499 = load i32, ptr %19, align 4, !tbaa !25
  %500 = sub nsw i32 %499, 1
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, ptr %498, i64 %501
  %503 = load i32, ptr %502, align 4, !tbaa !25
  %504 = sub nsw i32 %503, 1
  store i32 %504, ptr %24, align 4, !tbaa !25
  br label %512

505:                                              ; preds = %483, %468
  %506 = load ptr, ptr %35, align 8, !tbaa !99
  %507 = load i32, ptr %19, align 4, !tbaa !25
  %508 = add nsw i32 %507, 1
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, ptr %506, i64 %509
  %511 = load i32, ptr %510, align 4, !tbaa !25
  store i32 %511, ptr %24, align 4, !tbaa !25
  br label %512

512:                                              ; preds = %505, %497
  br label %513

513:                                              ; preds = %512, %461
  br label %514

514:                                              ; preds = %513, %426
  br label %515

515:                                              ; preds = %514, %411
  %516 = load i32, ptr %24, align 4, !tbaa !25
  %517 = load i32, ptr %19, align 4, !tbaa !25
  %518 = add nsw i32 %516, %517
  %519 = load i32, ptr %26, align 4, !tbaa !25
  %520 = sub nsw i32 %518, %519
  store i32 %520, ptr %18, align 4, !tbaa !25
  br label %521

521:                                              ; preds = %545, %515
  %522 = load i32, ptr %24, align 4, !tbaa !25
  %523 = icmp sgt i32 %522, 0
  br i1 %523, label %524, label %543

524:                                              ; preds = %521
  %525 = load i32, ptr %18, align 4, !tbaa !25
  %526 = icmp sgt i32 %525, 0
  br i1 %526, label %527, label %543

527:                                              ; preds = %524
  %528 = load ptr, ptr %10, align 8, !tbaa !64
  %529 = load i32, ptr %24, align 4, !tbaa !25
  %530 = sub nsw i32 %529, 1
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i8, ptr %528, i64 %531
  %533 = load i8, ptr %532, align 1, !tbaa !28
  %534 = zext i8 %533 to i32
  %535 = load ptr, ptr %11, align 8, !tbaa !64
  %536 = load i32, ptr %18, align 4, !tbaa !25
  %537 = sub nsw i32 %536, 1
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i8, ptr %535, i64 %538
  %540 = load i8, ptr %539, align 1, !tbaa !28
  %541 = zext i8 %540 to i32
  %542 = icmp eq i32 %534, %541
  br label %543

543:                                              ; preds = %527, %524, %521
  %544 = phi i1 [ false, %524 ], [ false, %521 ], [ %542, %527 ]
  br i1 %544, label %545, label %550

545:                                              ; preds = %543
  %546 = load i32, ptr %24, align 4, !tbaa !25
  %547 = add nsw i32 %546, -1
  store i32 %547, ptr %24, align 4, !tbaa !25
  %548 = load i32, ptr %18, align 4, !tbaa !25
  %549 = add nsw i32 %548, -1
  store i32 %549, ptr %18, align 4, !tbaa !25
  br label %521, !llvm.loop !124

550:                                              ; preds = %543
  %551 = load i32, ptr %24, align 4, !tbaa !25
  %552 = load ptr, ptr %37, align 8, !tbaa !99
  %553 = load i32, ptr %19, align 4, !tbaa !25
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i32, ptr %552, i64 %554
  store i32 %551, ptr %555, align 4, !tbaa !25
  br label %556

556:                                              ; preds = %550
  %557 = load i32, ptr %19, align 4, !tbaa !25
  %558 = add nsw i32 %557, 1
  store i32 %558, ptr %19, align 4, !tbaa !25
  br label %398, !llvm.loop !125

559:                                              ; preds = %398
  %560 = load ptr, ptr %37, align 8, !tbaa !99
  %561 = load i32, ptr %25, align 4, !tbaa !25
  %562 = load i32, ptr %26, align 4, !tbaa !25
  %563 = add nsw i32 %561, %562
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i32, ptr %560, i64 %564
  %566 = load i32, ptr %565, align 4, !tbaa !25
  %567 = load ptr, ptr %39, align 8, !tbaa !99
  %568 = load i32, ptr %28, align 4, !tbaa !25
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds nuw i32, ptr %567, i64 %569
  store i32 %566, ptr %570, align 4, !tbaa !25
  %571 = load i32, ptr %25, align 4, !tbaa !25
  %572 = load i32, ptr %26, align 4, !tbaa !25
  %573 = add nsw i32 %571, %572
  %574 = load ptr, ptr %40, align 8, !tbaa !99
  %575 = load i32, ptr %28, align 4, !tbaa !25
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds nuw i32, ptr %574, i64 %576
  store i32 %573, ptr %577, align 4, !tbaa !25
  %578 = load i32, ptr %20, align 4, !tbaa !25
  store i32 %578, ptr %19, align 4, !tbaa !25
  br label %579

579:                                              ; preds = %626, %559
  %580 = load i32, ptr %19, align 4, !tbaa !25
  %581 = load i32, ptr %22, align 4, !tbaa !25
  %582 = icmp sle i32 %580, %581
  br i1 %582, label %583, label %629

583:                                              ; preds = %579
  %584 = load ptr, ptr %37, align 8, !tbaa !99
  %585 = load i32, ptr %19, align 4, !tbaa !25
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32, ptr %584, i64 %586
  %588 = load i32, ptr %587, align 4, !tbaa !25
  %589 = load ptr, ptr %35, align 8, !tbaa !99
  %590 = load i32, ptr %19, align 4, !tbaa !25
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i32, ptr %589, i64 %591
  store i32 %588, ptr %592, align 4, !tbaa !25
  %593 = load i32, ptr %12, align 4, !tbaa !25
  %594 = add i32 %593, 1
  %595 = load ptr, ptr %37, align 8, !tbaa !99
  %596 = load i32, ptr %19, align 4, !tbaa !25
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i32, ptr %595, i64 %597
  store i32 %594, ptr %598, align 4, !tbaa !25
  %599 = load ptr, ptr %35, align 8, !tbaa !99
  %600 = load i32, ptr %19, align 4, !tbaa !25
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32, ptr %599, i64 %601
  %603 = load i32, ptr %602, align 4, !tbaa !25
  %604 = load ptr, ptr %39, align 8, !tbaa !99
  %605 = load i32, ptr %28, align 4, !tbaa !25
  %606 = zext i32 %605 to i64
  %607 = getelementptr inbounds nuw i32, ptr %604, i64 %606
  %608 = load i32, ptr %607, align 4, !tbaa !25
  %609 = icmp slt i32 %603, %608
  br i1 %609, label %610, label %625

610:                                              ; preds = %583
  %611 = load ptr, ptr %35, align 8, !tbaa !99
  %612 = load i32, ptr %19, align 4, !tbaa !25
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i32, ptr %611, i64 %613
  %615 = load i32, ptr %614, align 4, !tbaa !25
  %616 = load ptr, ptr %39, align 8, !tbaa !99
  %617 = load i32, ptr %28, align 4, !tbaa !25
  %618 = zext i32 %617 to i64
  %619 = getelementptr inbounds nuw i32, ptr %616, i64 %618
  store i32 %615, ptr %619, align 4, !tbaa !25
  %620 = load i32, ptr %19, align 4, !tbaa !25
  %621 = load ptr, ptr %40, align 8, !tbaa !99
  %622 = load i32, ptr %28, align 4, !tbaa !25
  %623 = zext i32 %622 to i64
  %624 = getelementptr inbounds nuw i32, ptr %621, i64 %623
  store i32 %620, ptr %624, align 4, !tbaa !25
  br label %625

625:                                              ; preds = %610, %583
  br label %626

626:                                              ; preds = %625
  %627 = load i32, ptr %19, align 4, !tbaa !25
  %628 = add nsw i32 %627, 1
  store i32 %628, ptr %19, align 4, !tbaa !25
  br label %579, !llvm.loop !126

629:                                              ; preds = %579
  store i32 0, ptr %30, align 4, !tbaa !25
  br label %630

630:                                              ; preds = %668, %629
  %631 = load i32, ptr %30, align 4, !tbaa !25
  %632 = load i32, ptr %28, align 4, !tbaa !25
  %633 = icmp ult i32 %631, %632
  br i1 %633, label %634, label %671

634:                                              ; preds = %630
  %635 = load ptr, ptr %39, align 8, !tbaa !99
  %636 = load i32, ptr %28, align 4, !tbaa !25
  %637 = zext i32 %636 to i64
  %638 = getelementptr inbounds nuw i32, ptr %635, i64 %637
  %639 = load i32, ptr %638, align 4, !tbaa !25
  %640 = load ptr, ptr %41, align 8, !tbaa !99
  %641 = load i32, ptr %30, align 4, !tbaa !25
  %642 = zext i32 %641 to i64
  %643 = getelementptr inbounds nuw i32, ptr %640, i64 %642
  %644 = load i32, ptr %643, align 4, !tbaa !25
  %645 = icmp sle i32 %639, %644
  br i1 %645, label %646, label %667

646:                                              ; preds = %634
  %647 = load i32, ptr %29, align 4, !tbaa !25
  %648 = load i32, ptr %28, align 4, !tbaa !25
  %649 = load i32, ptr %30, align 4, !tbaa !25
  %650 = add i32 %648, %649
  %651 = icmp ugt i32 %647, %650
  br i1 %651, label %661, label %652

652:                                              ; preds = %646
  %653 = load i32, ptr %29, align 4, !tbaa !25
  %654 = load i32, ptr %28, align 4, !tbaa !25
  %655 = load i32, ptr %30, align 4, !tbaa !25
  %656 = add i32 %654, %655
  %657 = icmp eq i32 %653, %656
  br i1 %657, label %658, label %667

658:                                              ; preds = %652
  %659 = load i32, ptr %34, align 4, !tbaa !25
  %660 = icmp slt i32 %659, 0
  br i1 %660, label %661, label %667

661:                                              ; preds = %658, %646
  %662 = load i32, ptr %28, align 4, !tbaa !25
  %663 = load i32, ptr %30, align 4, !tbaa !25
  %664 = add i32 %662, %663
  store i32 %664, ptr %29, align 4, !tbaa !25
  %665 = load i32, ptr %28, align 4, !tbaa !25
  store i32 %665, ptr %33, align 4, !tbaa !25
  %666 = load i32, ptr %30, align 4, !tbaa !25
  store i32 %666, ptr %34, align 4, !tbaa !25
  br label %671

667:                                              ; preds = %658, %652, %634
  br label %668

668:                                              ; preds = %667
  %669 = load i32, ptr %30, align 4, !tbaa !25
  %670 = add i32 %669, 1
  store i32 %670, ptr %30, align 4, !tbaa !25
  br label %630, !llvm.loop !127

671:                                              ; preds = %661, %630
  %672 = load i32, ptr %20, align 4, !tbaa !25
  %673 = add nsw i32 %672, -1
  store i32 %673, ptr %20, align 4, !tbaa !25
  %674 = load i32, ptr %22, align 4, !tbaa !25
  %675 = add nsw i32 %674, 1
  store i32 %675, ptr %22, align 4, !tbaa !25
  %676 = load i32, ptr %21, align 4, !tbaa !25
  store i32 %676, ptr %19, align 4, !tbaa !25
  br label %677

677:                                              ; preds = %834, %671
  %678 = load i32, ptr %19, align 4, !tbaa !25
  %679 = load i32, ptr %23, align 4, !tbaa !25
  %680 = icmp sle i32 %678, %679
  br i1 %680, label %681, label %837

681:                                              ; preds = %677
  %682 = load i32, ptr %19, align 4, !tbaa !25
  %683 = load i32, ptr %28, align 4, !tbaa !25
  %684 = sub nsw i32 0, %683
  %685 = load i32, ptr %27, align 4, !tbaa !25
  %686 = add nsw i32 %684, %685
  %687 = icmp eq i32 %682, %686
  br i1 %687, label %688, label %696

688:                                              ; preds = %681
  %689 = load ptr, ptr %36, align 8, !tbaa !99
  %690 = load i32, ptr %19, align 4, !tbaa !25
  %691 = add nsw i32 %690, 1
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i32, ptr %689, i64 %692
  %694 = load i32, ptr %693, align 4, !tbaa !25
  %695 = add nsw i32 %694, 1
  store i32 %695, ptr %24, align 4, !tbaa !25
  br label %789

696:                                              ; preds = %681
  %697 = load i32, ptr %19, align 4, !tbaa !25
  %698 = load i32, ptr %28, align 4, !tbaa !25
  %699 = load i32, ptr %27, align 4, !tbaa !25
  %700 = add nsw i32 %698, %699
  %701 = icmp eq i32 %697, %700
  br i1 %701, label %702, label %709

702:                                              ; preds = %696
  %703 = load ptr, ptr %36, align 8, !tbaa !99
  %704 = load i32, ptr %19, align 4, !tbaa !25
  %705 = sub nsw i32 %704, 1
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i32, ptr %703, i64 %706
  %708 = load i32, ptr %707, align 4, !tbaa !25
  store i32 %708, ptr %24, align 4, !tbaa !25
  br label %788

709:                                              ; preds = %696
  %710 = load ptr, ptr %36, align 8, !tbaa !99
  %711 = load i32, ptr %19, align 4, !tbaa !25
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds i32, ptr %710, i64 %712
  %714 = load i32, ptr %713, align 4, !tbaa !25
  %715 = load ptr, ptr %36, align 8, !tbaa !99
  %716 = load i32, ptr %19, align 4, !tbaa !25
  %717 = add nsw i32 %716, 1
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds i32, ptr %715, i64 %718
  %720 = load i32, ptr %719, align 4, !tbaa !25
  %721 = icmp sge i32 %714, %720
  br i1 %721, label %722, label %743

722:                                              ; preds = %709
  %723 = load ptr, ptr %36, align 8, !tbaa !99
  %724 = load i32, ptr %19, align 4, !tbaa !25
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds i32, ptr %723, i64 %725
  %727 = load i32, ptr %726, align 4, !tbaa !25
  %728 = add nsw i32 %727, 1
  %729 = load ptr, ptr %36, align 8, !tbaa !99
  %730 = load i32, ptr %19, align 4, !tbaa !25
  %731 = sub nsw i32 %730, 1
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds i32, ptr %729, i64 %732
  %734 = load i32, ptr %733, align 4, !tbaa !25
  %735 = icmp sge i32 %728, %734
  br i1 %735, label %736, label %743

736:                                              ; preds = %722
  %737 = load ptr, ptr %36, align 8, !tbaa !99
  %738 = load i32, ptr %19, align 4, !tbaa !25
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds i32, ptr %737, i64 %739
  %741 = load i32, ptr %740, align 4, !tbaa !25
  %742 = add nsw i32 %741, 1
  store i32 %742, ptr %24, align 4, !tbaa !25
  br label %787

743:                                              ; preds = %722, %709
  %744 = load ptr, ptr %36, align 8, !tbaa !99
  %745 = load i32, ptr %19, align 4, !tbaa !25
  %746 = add nsw i32 %745, 1
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds i32, ptr %744, i64 %747
  %749 = load i32, ptr %748, align 4, !tbaa !25
  %750 = add nsw i32 %749, 1
  %751 = load ptr, ptr %36, align 8, !tbaa !99
  %752 = load i32, ptr %19, align 4, !tbaa !25
  %753 = sub nsw i32 %752, 1
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds i32, ptr %751, i64 %754
  %756 = load i32, ptr %755, align 4, !tbaa !25
  %757 = icmp sge i32 %750, %756
  br i1 %757, label %758, label %779

758:                                              ; preds = %743
  %759 = load ptr, ptr %36, align 8, !tbaa !99
  %760 = load i32, ptr %19, align 4, !tbaa !25
  %761 = add nsw i32 %760, 1
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds i32, ptr %759, i64 %762
  %764 = load i32, ptr %763, align 4, !tbaa !25
  %765 = load ptr, ptr %36, align 8, !tbaa !99
  %766 = load i32, ptr %19, align 4, !tbaa !25
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds i32, ptr %765, i64 %767
  %769 = load i32, ptr %768, align 4, !tbaa !25
  %770 = icmp sge i32 %764, %769
  br i1 %770, label %771, label %779

771:                                              ; preds = %758
  %772 = load ptr, ptr %36, align 8, !tbaa !99
  %773 = load i32, ptr %19, align 4, !tbaa !25
  %774 = add nsw i32 %773, 1
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds i32, ptr %772, i64 %775
  %777 = load i32, ptr %776, align 4, !tbaa !25
  %778 = add nsw i32 %777, 1
  store i32 %778, ptr %24, align 4, !tbaa !25
  br label %786

779:                                              ; preds = %758, %743
  %780 = load ptr, ptr %36, align 8, !tbaa !99
  %781 = load i32, ptr %19, align 4, !tbaa !25
  %782 = sub nsw i32 %781, 1
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds i32, ptr %780, i64 %783
  %785 = load i32, ptr %784, align 4, !tbaa !25
  store i32 %785, ptr %24, align 4, !tbaa !25
  br label %786

786:                                              ; preds = %779, %771
  br label %787

787:                                              ; preds = %786, %736
  br label %788

788:                                              ; preds = %787, %702
  br label %789

789:                                              ; preds = %788, %688
  %790 = load i32, ptr %24, align 4, !tbaa !25
  %791 = load i32, ptr %19, align 4, !tbaa !25
  %792 = add nsw i32 %790, %791
  %793 = load i32, ptr %27, align 4, !tbaa !25
  %794 = sub nsw i32 %792, %793
  store i32 %794, ptr %18, align 4, !tbaa !25
  %795 = load i32, ptr %24, align 4, !tbaa !25
  %796 = icmp sge i32 %795, 0
  br i1 %796, label %797, label %828

797:                                              ; preds = %789
  br label %798

798:                                              ; preds = %822, %797
  %799 = load i32, ptr %24, align 4, !tbaa !25
  %800 = load i32, ptr %12, align 4, !tbaa !25
  %801 = icmp ult i32 %799, %800
  br i1 %801, label %802, label %820

802:                                              ; preds = %798
  %803 = load i32, ptr %18, align 4, !tbaa !25
  %804 = load i32, ptr %13, align 4, !tbaa !25
  %805 = icmp ult i32 %803, %804
  br i1 %805, label %806, label %820

806:                                              ; preds = %802
  %807 = load ptr, ptr %10, align 8, !tbaa !64
  %808 = load i32, ptr %24, align 4, !tbaa !25
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds i8, ptr %807, i64 %809
  %811 = load i8, ptr %810, align 1, !tbaa !28
  %812 = zext i8 %811 to i32
  %813 = load ptr, ptr %11, align 8, !tbaa !64
  %814 = load i32, ptr %18, align 4, !tbaa !25
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds i8, ptr %813, i64 %815
  %817 = load i8, ptr %816, align 1, !tbaa !28
  %818 = zext i8 %817 to i32
  %819 = icmp eq i32 %812, %818
  br label %820

820:                                              ; preds = %806, %802, %798
  %821 = phi i1 [ false, %802 ], [ false, %798 ], [ %819, %806 ]
  br i1 %821, label %822, label %827

822:                                              ; preds = %820
  %823 = load i32, ptr %24, align 4, !tbaa !25
  %824 = add nsw i32 %823, 1
  store i32 %824, ptr %24, align 4, !tbaa !25
  %825 = load i32, ptr %18, align 4, !tbaa !25
  %826 = add nsw i32 %825, 1
  store i32 %826, ptr %18, align 4, !tbaa !25
  br label %798, !llvm.loop !128

827:                                              ; preds = %820
  br label %828

828:                                              ; preds = %827, %789
  %829 = load i32, ptr %24, align 4, !tbaa !25
  %830 = load ptr, ptr %38, align 8, !tbaa !99
  %831 = load i32, ptr %19, align 4, !tbaa !25
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds i32, ptr %830, i64 %832
  store i32 %829, ptr %833, align 4, !tbaa !25
  br label %834

834:                                              ; preds = %828
  %835 = load i32, ptr %19, align 4, !tbaa !25
  %836 = add nsw i32 %835, 1
  store i32 %836, ptr %19, align 4, !tbaa !25
  br label %677, !llvm.loop !129

837:                                              ; preds = %677
  %838 = load ptr, ptr %38, align 8, !tbaa !99
  %839 = load i32, ptr %27, align 4, !tbaa !25
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds i32, ptr %838, i64 %840
  %842 = load i32, ptr %841, align 4, !tbaa !25
  %843 = load ptr, ptr %41, align 8, !tbaa !99
  %844 = load i32, ptr %28, align 4, !tbaa !25
  %845 = zext i32 %844 to i64
  %846 = getelementptr inbounds nuw i32, ptr %843, i64 %845
  store i32 %842, ptr %846, align 4, !tbaa !25
  %847 = load i32, ptr %27, align 4, !tbaa !25
  %848 = load ptr, ptr %42, align 8, !tbaa !99
  %849 = load i32, ptr %28, align 4, !tbaa !25
  %850 = zext i32 %849 to i64
  %851 = getelementptr inbounds nuw i32, ptr %848, i64 %850
  store i32 %847, ptr %851, align 4, !tbaa !25
  %852 = load i32, ptr %21, align 4, !tbaa !25
  store i32 %852, ptr %19, align 4, !tbaa !25
  br label %853

853:                                              ; preds = %898, %837
  %854 = load i32, ptr %19, align 4, !tbaa !25
  %855 = load i32, ptr %23, align 4, !tbaa !25
  %856 = icmp sle i32 %854, %855
  br i1 %856, label %857, label %901

857:                                              ; preds = %853
  %858 = load ptr, ptr %38, align 8, !tbaa !99
  %859 = load i32, ptr %19, align 4, !tbaa !25
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds i32, ptr %858, i64 %860
  %862 = load i32, ptr %861, align 4, !tbaa !25
  %863 = load ptr, ptr %36, align 8, !tbaa !99
  %864 = load i32, ptr %19, align 4, !tbaa !25
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds i32, ptr %863, i64 %865
  store i32 %862, ptr %866, align 4, !tbaa !25
  %867 = load ptr, ptr %38, align 8, !tbaa !99
  %868 = load i32, ptr %19, align 4, !tbaa !25
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds i32, ptr %867, i64 %869
  store i32 -1, ptr %870, align 4, !tbaa !25
  %871 = load ptr, ptr %36, align 8, !tbaa !99
  %872 = load i32, ptr %19, align 4, !tbaa !25
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds i32, ptr %871, i64 %873
  %875 = load i32, ptr %874, align 4, !tbaa !25
  %876 = load ptr, ptr %41, align 8, !tbaa !99
  %877 = load i32, ptr %28, align 4, !tbaa !25
  %878 = zext i32 %877 to i64
  %879 = getelementptr inbounds nuw i32, ptr %876, i64 %878
  %880 = load i32, ptr %879, align 4, !tbaa !25
  %881 = icmp sgt i32 %875, %880
  br i1 %881, label %882, label %897

882:                                              ; preds = %857
  %883 = load ptr, ptr %36, align 8, !tbaa !99
  %884 = load i32, ptr %19, align 4, !tbaa !25
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds i32, ptr %883, i64 %885
  %887 = load i32, ptr %886, align 4, !tbaa !25
  %888 = load ptr, ptr %41, align 8, !tbaa !99
  %889 = load i32, ptr %28, align 4, !tbaa !25
  %890 = zext i32 %889 to i64
  %891 = getelementptr inbounds nuw i32, ptr %888, i64 %890
  store i32 %887, ptr %891, align 4, !tbaa !25
  %892 = load i32, ptr %19, align 4, !tbaa !25
  %893 = load ptr, ptr %42, align 8, !tbaa !99
  %894 = load i32, ptr %28, align 4, !tbaa !25
  %895 = zext i32 %894 to i64
  %896 = getelementptr inbounds nuw i32, ptr %893, i64 %895
  store i32 %892, ptr %896, align 4, !tbaa !25
  br label %897

897:                                              ; preds = %882, %857
  br label %898

898:                                              ; preds = %897
  %899 = load i32, ptr %19, align 4, !tbaa !25
  %900 = add nsw i32 %899, 1
  store i32 %900, ptr %19, align 4, !tbaa !25
  br label %853, !llvm.loop !130

901:                                              ; preds = %853
  store i32 0, ptr %30, align 4, !tbaa !25
  br label %902

902:                                              ; preds = %940, %901
  %903 = load i32, ptr %30, align 4, !tbaa !25
  %904 = load i32, ptr %28, align 4, !tbaa !25
  %905 = icmp ule i32 %903, %904
  br i1 %905, label %906, label %943

906:                                              ; preds = %902
  %907 = load ptr, ptr %39, align 8, !tbaa !99
  %908 = load i32, ptr %30, align 4, !tbaa !25
  %909 = zext i32 %908 to i64
  %910 = getelementptr inbounds nuw i32, ptr %907, i64 %909
  %911 = load i32, ptr %910, align 4, !tbaa !25
  %912 = load ptr, ptr %41, align 8, !tbaa !99
  %913 = load i32, ptr %28, align 4, !tbaa !25
  %914 = zext i32 %913 to i64
  %915 = getelementptr inbounds nuw i32, ptr %912, i64 %914
  %916 = load i32, ptr %915, align 4, !tbaa !25
  %917 = icmp sle i32 %911, %916
  br i1 %917, label %918, label %939

918:                                              ; preds = %906
  %919 = load i32, ptr %29, align 4, !tbaa !25
  %920 = load i32, ptr %28, align 4, !tbaa !25
  %921 = load i32, ptr %30, align 4, !tbaa !25
  %922 = add i32 %920, %921
  %923 = icmp ugt i32 %919, %922
  br i1 %923, label %933, label %924

924:                                              ; preds = %918
  %925 = load i32, ptr %29, align 4, !tbaa !25
  %926 = load i32, ptr %28, align 4, !tbaa !25
  %927 = load i32, ptr %30, align 4, !tbaa !25
  %928 = add i32 %926, %927
  %929 = icmp eq i32 %925, %928
  br i1 %929, label %930, label %939

930:                                              ; preds = %924
  %931 = load i32, ptr %34, align 4, !tbaa !25
  %932 = icmp slt i32 %931, 0
  br i1 %932, label %933, label %939

933:                                              ; preds = %930, %918
  %934 = load i32, ptr %28, align 4, !tbaa !25
  %935 = load i32, ptr %30, align 4, !tbaa !25
  %936 = add i32 %934, %935
  store i32 %936, ptr %29, align 4, !tbaa !25
  %937 = load i32, ptr %30, align 4, !tbaa !25
  store i32 %937, ptr %33, align 4, !tbaa !25
  %938 = load i32, ptr %28, align 4, !tbaa !25
  store i32 %938, ptr %34, align 4, !tbaa !25
  br label %943

939:                                              ; preds = %930, %924, %906
  br label %940

940:                                              ; preds = %939
  %941 = load i32, ptr %30, align 4, !tbaa !25
  %942 = add i32 %941, 1
  store i32 %942, ptr %30, align 4, !tbaa !25
  br label %902, !llvm.loop !131

943:                                              ; preds = %933, %902
  %944 = load i32, ptr %21, align 4, !tbaa !25
  %945 = add nsw i32 %944, -1
  store i32 %945, ptr %21, align 4, !tbaa !25
  %946 = load i32, ptr %23, align 4, !tbaa !25
  %947 = add nsw i32 %946, 1
  store i32 %947, ptr %23, align 4, !tbaa !25
  %948 = load i32, ptr %28, align 4, !tbaa !25
  %949 = add i32 %948, 1
  store i32 %949, ptr %28, align 4, !tbaa !25
  br label %392, !llvm.loop !132

950:                                              ; preds = %392
  %951 = load i32, ptr %28, align 4, !tbaa !25
  %952 = load i32, ptr %31, align 4, !tbaa !25
  %953 = icmp ugt i32 %951, %952
  br i1 %953, label %954, label %964

954:                                              ; preds = %950
  %955 = load ptr, ptr %35, align 8, !tbaa !99
  call void @free(ptr noundef %955) #8
  %956 = load ptr, ptr %37, align 8, !tbaa !99
  call void @free(ptr noundef %956) #8
  %957 = load ptr, ptr %36, align 8, !tbaa !99
  call void @free(ptr noundef %957) #8
  %958 = load ptr, ptr %38, align 8, !tbaa !99
  call void @free(ptr noundef %958) #8
  %959 = load ptr, ptr %39, align 8, !tbaa !99
  call void @free(ptr noundef %959) #8
  %960 = load ptr, ptr %40, align 8, !tbaa !99
  call void @free(ptr noundef %960) #8
  %961 = load ptr, ptr %41, align 8, !tbaa !99
  call void @free(ptr noundef %961) #8
  %962 = load ptr, ptr %42, align 8, !tbaa !99
  call void @free(ptr noundef %962) #8
  %963 = load i32, ptr %28, align 4, !tbaa !25
  store i32 %963, ptr %9, align 4
  store i32 1, ptr %43, align 4
  br label %1101

964:                                              ; preds = %950
  call void @llvm.lifetime.start.p0(i64 4, ptr %44) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %45) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %46) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %47) #8
  %965 = load i32, ptr %12, align 4, !tbaa !25
  %966 = load ptr, ptr %39, align 8, !tbaa !99
  %967 = load i32, ptr %33, align 4, !tbaa !25
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds i32, ptr %966, i64 %968
  %970 = load i32, ptr %969, align 4, !tbaa !25
  %971 = sub nsw i32 %965, %970
  %972 = load ptr, ptr %41, align 8, !tbaa !99
  %973 = load i32, ptr %34, align 4, !tbaa !25
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds i32, ptr %972, i64 %974
  %976 = load i32, ptr %975, align 4, !tbaa !25
  %977 = icmp sge i32 %971, %976
  br i1 %977, label %978, label %1015

978:                                              ; preds = %964
  %979 = load ptr, ptr %39, align 8, !tbaa !99
  %980 = load i32, ptr %33, align 4, !tbaa !25
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds i32, ptr %979, i64 %981
  %983 = load i32, ptr %982, align 4, !tbaa !25
  store i32 %983, ptr %44, align 4, !tbaa !25
  %984 = load ptr, ptr %39, align 8, !tbaa !99
  %985 = load i32, ptr %33, align 4, !tbaa !25
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds i32, ptr %984, i64 %986
  %988 = load i32, ptr %987, align 4, !tbaa !25
  %989 = load ptr, ptr %42, align 8, !tbaa !99
  %990 = load i32, ptr %34, align 4, !tbaa !25
  %991 = sext i32 %990 to i64
  %992 = getelementptr inbounds i32, ptr %989, i64 %991
  %993 = load i32, ptr %992, align 4, !tbaa !25
  %994 = add nsw i32 %988, %993
  %995 = load i32, ptr %27, align 4, !tbaa !25
  %996 = sub nsw i32 %994, %995
  store i32 %996, ptr %45, align 4, !tbaa !25
  %997 = load ptr, ptr %39, align 8, !tbaa !99
  %998 = load i32, ptr %33, align 4, !tbaa !25
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds i32, ptr %997, i64 %999
  %1001 = load i32, ptr %1000, align 4, !tbaa !25
  store i32 %1001, ptr %46, align 4, !tbaa !25
  %1002 = load ptr, ptr %39, align 8, !tbaa !99
  %1003 = load i32, ptr %33, align 4, !tbaa !25
  %1004 = sext i32 %1003 to i64
  %1005 = getelementptr inbounds i32, ptr %1002, i64 %1004
  %1006 = load i32, ptr %1005, align 4, !tbaa !25
  %1007 = load ptr, ptr %40, align 8, !tbaa !99
  %1008 = load i32, ptr %33, align 4, !tbaa !25
  %1009 = sext i32 %1008 to i64
  %1010 = getelementptr inbounds i32, ptr %1007, i64 %1009
  %1011 = load i32, ptr %1010, align 4, !tbaa !25
  %1012 = add nsw i32 %1006, %1011
  %1013 = load i32, ptr %26, align 4, !tbaa !25
  %1014 = sub nsw i32 %1012, %1013
  store i32 %1014, ptr %47, align 4, !tbaa !25
  br label %1052

1015:                                             ; preds = %964
  %1016 = load ptr, ptr %41, align 8, !tbaa !99
  %1017 = load i32, ptr %34, align 4, !tbaa !25
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds i32, ptr %1016, i64 %1018
  %1020 = load i32, ptr %1019, align 4, !tbaa !25
  store i32 %1020, ptr %44, align 4, !tbaa !25
  %1021 = load ptr, ptr %41, align 8, !tbaa !99
  %1022 = load i32, ptr %34, align 4, !tbaa !25
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds i32, ptr %1021, i64 %1023
  %1025 = load i32, ptr %1024, align 4, !tbaa !25
  %1026 = load ptr, ptr %42, align 8, !tbaa !99
  %1027 = load i32, ptr %34, align 4, !tbaa !25
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds i32, ptr %1026, i64 %1028
  %1030 = load i32, ptr %1029, align 4, !tbaa !25
  %1031 = add nsw i32 %1025, %1030
  %1032 = load i32, ptr %27, align 4, !tbaa !25
  %1033 = sub nsw i32 %1031, %1032
  store i32 %1033, ptr %45, align 4, !tbaa !25
  %1034 = load ptr, ptr %41, align 8, !tbaa !99
  %1035 = load i32, ptr %34, align 4, !tbaa !25
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds i32, ptr %1034, i64 %1036
  %1038 = load i32, ptr %1037, align 4, !tbaa !25
  store i32 %1038, ptr %46, align 4, !tbaa !25
  %1039 = load ptr, ptr %41, align 8, !tbaa !99
  %1040 = load i32, ptr %34, align 4, !tbaa !25
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds i32, ptr %1039, i64 %1041
  %1043 = load i32, ptr %1042, align 4, !tbaa !25
  %1044 = load ptr, ptr %40, align 8, !tbaa !99
  %1045 = load i32, ptr %33, align 4, !tbaa !25
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds i32, ptr %1044, i64 %1046
  %1048 = load i32, ptr %1047, align 4, !tbaa !25
  %1049 = add nsw i32 %1043, %1048
  %1050 = load i32, ptr %26, align 4, !tbaa !25
  %1051 = sub nsw i32 %1049, %1050
  store i32 %1051, ptr %47, align 4, !tbaa !25
  br label %1052

1052:                                             ; preds = %1015, %978
  %1053 = load i32, ptr %46, align 4, !tbaa !25
  %1054 = icmp ugt i32 %1053, 0
  br i1 %1054, label %1055, label %1068

1055:                                             ; preds = %1052
  %1056 = load ptr, ptr %17, align 8, !tbaa !10
  %1057 = load i32, ptr %15, align 4, !tbaa !25
  %1058 = add i32 %1057, 1
  %1059 = load i32, ptr %14, align 4, !tbaa !25
  %1060 = add i32 %1059, 1
  %1061 = load i32, ptr %15, align 4, !tbaa !25
  %1062 = load i32, ptr %45, align 4, !tbaa !25
  %1063 = add i32 %1061, %1062
  %1064 = load i32, ptr %14, align 4, !tbaa !25
  %1065 = load i32, ptr %44, align 4, !tbaa !25
  %1066 = add i32 %1064, %1065
  %1067 = call ptr @new_exon(i32 noundef signext %1058, i32 noundef signext %1060, i32 noundef signext %1063, i32 noundef signext %1066)
  call void @add_col_elt(ptr noundef %1056, ptr noundef %1067)
  br label %1068

1068:                                             ; preds = %1055, %1052
  %1069 = load i32, ptr %44, align 4, !tbaa !25
  %1070 = load i32, ptr %12, align 4, !tbaa !25
  %1071 = icmp ult i32 %1069, %1070
  br i1 %1071, label %1072, label %1089

1072:                                             ; preds = %1068
  %1073 = load ptr, ptr %17, align 8, !tbaa !10
  %1074 = load i32, ptr %15, align 4, !tbaa !25
  %1075 = load i32, ptr %47, align 4, !tbaa !25
  %1076 = add i32 %1074, %1075
  %1077 = add i32 %1076, 1
  %1078 = load i32, ptr %14, align 4, !tbaa !25
  %1079 = load i32, ptr %46, align 4, !tbaa !25
  %1080 = add i32 %1078, %1079
  %1081 = add i32 %1080, 1
  %1082 = load i32, ptr %15, align 4, !tbaa !25
  %1083 = load i32, ptr %13, align 4, !tbaa !25
  %1084 = add i32 %1082, %1083
  %1085 = load i32, ptr %14, align 4, !tbaa !25
  %1086 = load i32, ptr %12, align 4, !tbaa !25
  %1087 = add i32 %1085, %1086
  %1088 = call ptr @new_exon(i32 noundef signext %1077, i32 noundef signext %1081, i32 noundef signext %1084, i32 noundef signext %1087)
  call void @add_col_elt(ptr noundef %1073, ptr noundef %1088)
  br label %1089

1089:                                             ; preds = %1072, %1068
  call void @llvm.lifetime.end.p0(i64 4, ptr %47) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %46) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %45) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %44) #8
  %1090 = load ptr, ptr %35, align 8, !tbaa !99
  call void @free(ptr noundef %1090) #8
  %1091 = load ptr, ptr %37, align 8, !tbaa !99
  call void @free(ptr noundef %1091) #8
  %1092 = load ptr, ptr %36, align 8, !tbaa !99
  call void @free(ptr noundef %1092) #8
  %1093 = load ptr, ptr %38, align 8, !tbaa !99
  call void @free(ptr noundef %1093) #8
  %1094 = load ptr, ptr %39, align 8, !tbaa !99
  call void @free(ptr noundef %1094) #8
  %1095 = load ptr, ptr %40, align 8, !tbaa !99
  call void @free(ptr noundef %1095) #8
  %1096 = load ptr, ptr %41, align 8, !tbaa !99
  call void @free(ptr noundef %1096) #8
  %1097 = load ptr, ptr %42, align 8, !tbaa !99
  call void @free(ptr noundef %1097) #8
  %1098 = load i32, ptr %33, align 4, !tbaa !25
  %1099 = load i32, ptr %34, align 4, !tbaa !25
  %1100 = add nsw i32 %1098, %1099
  store i32 %1100, ptr %9, align 4
  store i32 1, ptr %43, align 4
  br label %1101

1101:                                             ; preds = %1089, %954, %271, %169, %126, %91, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr %42) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %41) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %40) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %39) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %38) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %37) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %36) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %35) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %34) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %33) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %32) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %31) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %30) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %29) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  %1102 = load i32, ptr %9, align 4
  ret i32 %1102
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
define internal void @compact_exons(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !10
  store i32 %1, ptr %4, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  store i32 1, ptr %5, align 4, !tbaa !25
  br label %11

11:                                               ; preds = %170, %2
  %12 = load i32, ptr %5, align 4, !tbaa !25
  %13 = load ptr, ptr %3, align 8, !tbaa !10
  %14 = getelementptr inbounds nuw %struct._collec_t, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !26
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %171

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #8
  %18 = load ptr, ptr %3, align 8, !tbaa !10
  %19 = getelementptr inbounds nuw %struct._collec_t, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8, !tbaa !28
  %21 = load i32, ptr %5, align 4, !tbaa !25
  %22 = sub i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds nuw ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  store ptr %25, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #8
  %26 = load ptr, ptr %3, align 8, !tbaa !10
  %27 = getelementptr inbounds nuw %struct._collec_t, ptr %26, i32 0, i32 0
  %28 = load ptr, ptr %27, align 8, !tbaa !28
  %29 = load i32, ptr %5, align 4, !tbaa !25
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !37
  store ptr %32, ptr %7, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  %33 = load ptr, ptr %7, align 8, !tbaa !37
  %34 = getelementptr inbounds nuw %struct._exon_t, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !39
  %36 = load ptr, ptr %6, align 8, !tbaa !37
  %37 = getelementptr inbounds nuw %struct._exon_t, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !39
  %39 = sub i32 %35, %38
  store i32 %39, ptr %8, align 4, !tbaa !25
  %40 = load i32, ptr %8, align 4, !tbaa !25
  %41 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 7), align 4, !tbaa !133
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %167

43:                                               ; preds = %17
  %44 = load ptr, ptr %3, align 8, !tbaa !10
  %45 = getelementptr inbounds nuw %struct._collec_t, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !26
  %47 = sub i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !26
  %48 = load ptr, ptr %6, align 8, !tbaa !37
  %49 = getelementptr inbounds nuw %struct._exon_t, ptr %48, i32 0, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !52
  %51 = load ptr, ptr %7, align 8, !tbaa !37
  %52 = getelementptr inbounds nuw %struct._exon_t, ptr %51, i32 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !52
  %54 = icmp ugt i32 %50, %53
  br i1 %54, label %55, label %111

55:                                               ; preds = %43
  %56 = load ptr, ptr %7, align 8, !tbaa !37
  call void @free(ptr noundef %56) #8
  %57 = load ptr, ptr %3, align 8, !tbaa !10
  %58 = getelementptr inbounds nuw %struct._collec_t, ptr %57, i32 0, i32 0
  %59 = load ptr, ptr %58, align 8, !tbaa !28
  %60 = load i32, ptr %5, align 4, !tbaa !25
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw ptr, ptr %59, i64 %61
  %63 = load ptr, ptr %3, align 8, !tbaa !10
  %64 = getelementptr inbounds nuw %struct._collec_t, ptr %63, i32 0, i32 0
  %65 = load ptr, ptr %64, align 8, !tbaa !28
  %66 = load i32, ptr %5, align 4, !tbaa !25
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds nuw ptr, ptr %65, i64 %67
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %3, align 8, !tbaa !10
  %71 = getelementptr inbounds nuw %struct._collec_t, ptr %70, i32 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !26
  %73 = load i32, ptr %5, align 4, !tbaa !25
  %74 = sub i32 %72, %73
  %75 = zext i32 %74 to i64
  %76 = mul i64 %75, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %62, ptr align 8 %69, i64 %76, i1 false)
  %77 = load i32, ptr %5, align 4, !tbaa !25
  %78 = load ptr, ptr %3, align 8, !tbaa !10
  %79 = getelementptr inbounds nuw %struct._collec_t, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !26
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %55
  %83 = load ptr, ptr %3, align 8, !tbaa !10
  %84 = getelementptr inbounds nuw %struct._collec_t, ptr %83, i32 0, i32 0
  %85 = load ptr, ptr %84, align 8, !tbaa !28
  %86 = load i32, ptr %5, align 4, !tbaa !25
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds nuw ptr, ptr %85, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !37
  store ptr %89, ptr %7, align 8, !tbaa !37
  %90 = load i32, ptr %8, align 4, !tbaa !25
  %91 = load ptr, ptr %6, align 8, !tbaa !37
  %92 = getelementptr inbounds nuw %struct._exon_t, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !53
  %94 = add i32 %93, %90
  store i32 %94, ptr %92, align 4, !tbaa !53
  %95 = load i32, ptr %8, align 4, !tbaa !25
  %96 = load ptr, ptr %6, align 8, !tbaa !37
  %97 = getelementptr inbounds nuw %struct._exon_t, ptr %96, i32 0, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !52
  %99 = add i32 %98, %95
  store i32 %99, ptr %97, align 4, !tbaa !52
  %100 = load i32, ptr %8, align 4, !tbaa !25
  %101 = load ptr, ptr %7, align 8, !tbaa !37
  %102 = getelementptr inbounds nuw %struct._exon_t, ptr %101, i32 0, i32 0
  %103 = load i32, ptr %102, align 4, !tbaa !41
  %104 = sub i32 %103, %100
  store i32 %104, ptr %102, align 4, !tbaa !41
  %105 = load i32, ptr %8, align 4, !tbaa !25
  %106 = load ptr, ptr %7, align 8, !tbaa !37
  %107 = getelementptr inbounds nuw %struct._exon_t, ptr %106, i32 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !39
  %109 = sub i32 %108, %105
  store i32 %109, ptr %107, align 4, !tbaa !39
  br label %110

110:                                              ; preds = %82, %55
  br label %166

111:                                              ; preds = %43
  %112 = load ptr, ptr %6, align 8, !tbaa !37
  call void @free(ptr noundef %112) #8
  %113 = load ptr, ptr %3, align 8, !tbaa !10
  %114 = getelementptr inbounds nuw %struct._collec_t, ptr %113, i32 0, i32 0
  %115 = load ptr, ptr %114, align 8, !tbaa !28
  %116 = load i32, ptr %5, align 4, !tbaa !25
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds nuw ptr, ptr %115, i64 %117
  %119 = getelementptr inbounds ptr, ptr %118, i64 -1
  %120 = load ptr, ptr %3, align 8, !tbaa !10
  %121 = getelementptr inbounds nuw %struct._collec_t, ptr %120, i32 0, i32 0
  %122 = load ptr, ptr %121, align 8, !tbaa !28
  %123 = load i32, ptr %5, align 4, !tbaa !25
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds nuw ptr, ptr %122, i64 %124
  %126 = load ptr, ptr %3, align 8, !tbaa !10
  %127 = getelementptr inbounds nuw %struct._collec_t, ptr %126, i32 0, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !26
  %129 = load i32, ptr %5, align 4, !tbaa !25
  %130 = sub i32 %128, %129
  %131 = add i32 %130, 1
  %132 = zext i32 %131 to i64
  %133 = mul i64 %132, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %119, ptr align 8 %125, i64 %133, i1 false)
  %134 = load i32, ptr %5, align 4, !tbaa !25
  %135 = icmp ugt i32 %134, 1
  br i1 %135, label %136, label %165

136:                                              ; preds = %111
  %137 = load ptr, ptr %3, align 8, !tbaa !10
  %138 = getelementptr inbounds nuw %struct._collec_t, ptr %137, i32 0, i32 0
  %139 = load ptr, ptr %138, align 8, !tbaa !28
  %140 = load i32, ptr %5, align 4, !tbaa !25
  %141 = sub i32 %140, 2
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds nuw ptr, ptr %139, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !37
  store ptr %144, ptr %6, align 8, !tbaa !37
  %145 = load i32, ptr %8, align 4, !tbaa !25
  %146 = load ptr, ptr %6, align 8, !tbaa !37
  %147 = getelementptr inbounds nuw %struct._exon_t, ptr %146, i32 0, i32 2
  %148 = load i32, ptr %147, align 4, !tbaa !53
  %149 = add i32 %148, %145
  store i32 %149, ptr %147, align 4, !tbaa !53
  %150 = load i32, ptr %8, align 4, !tbaa !25
  %151 = load ptr, ptr %6, align 8, !tbaa !37
  %152 = getelementptr inbounds nuw %struct._exon_t, ptr %151, i32 0, i32 3
  %153 = load i32, ptr %152, align 4, !tbaa !52
  %154 = add i32 %153, %150
  store i32 %154, ptr %152, align 4, !tbaa !52
  %155 = load i32, ptr %8, align 4, !tbaa !25
  %156 = load ptr, ptr %7, align 8, !tbaa !37
  %157 = getelementptr inbounds nuw %struct._exon_t, ptr %156, i32 0, i32 0
  %158 = load i32, ptr %157, align 4, !tbaa !41
  %159 = sub i32 %158, %155
  store i32 %159, ptr %157, align 4, !tbaa !41
  %160 = load i32, ptr %8, align 4, !tbaa !25
  %161 = load ptr, ptr %7, align 8, !tbaa !37
  %162 = getelementptr inbounds nuw %struct._exon_t, ptr %161, i32 0, i32 1
  %163 = load i32, ptr %162, align 4, !tbaa !39
  %164 = sub i32 %163, %160
  store i32 %164, ptr %162, align 4, !tbaa !39
  br label %165

165:                                              ; preds = %136, %111
  br label %166

166:                                              ; preds = %165, %110
  br label %170

167:                                              ; preds = %17
  %168 = load i32, ptr %5, align 4, !tbaa !25
  %169 = add i32 %168, 1
  store i32 %169, ptr %5, align 4, !tbaa !25
  br label %170

170:                                              ; preds = %167, %166
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #8
  br label %11, !llvm.loop !134

171:                                              ; preds = %11
  store i32 1, ptr %5, align 4, !tbaa !25
  br label %172

172:                                              ; preds = %268, %171
  %173 = load i32, ptr %5, align 4, !tbaa !25
  %174 = load ptr, ptr %3, align 8, !tbaa !10
  %175 = getelementptr inbounds nuw %struct._collec_t, ptr %174, i32 0, i32 1
  %176 = load i32, ptr %175, align 8, !tbaa !26
  %177 = icmp ult i32 %173, %176
  br i1 %177, label %178, label %271

178:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #8
  %179 = load ptr, ptr %3, align 8, !tbaa !10
  %180 = getelementptr inbounds nuw %struct._collec_t, ptr %179, i32 0, i32 0
  %181 = load ptr, ptr %180, align 8, !tbaa !28
  %182 = load i32, ptr %5, align 4, !tbaa !25
  %183 = sub i32 %182, 1
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds nuw ptr, ptr %181, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !37
  store ptr %186, ptr %9, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #8
  %187 = load ptr, ptr %3, align 8, !tbaa !10
  %188 = getelementptr inbounds nuw %struct._collec_t, ptr %187, i32 0, i32 0
  %189 = load ptr, ptr %188, align 8, !tbaa !28
  %190 = load i32, ptr %5, align 4, !tbaa !25
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds nuw ptr, ptr %189, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !37
  store ptr %193, ptr %10, align 8, !tbaa !37
  %194 = load ptr, ptr %10, align 8, !tbaa !37
  %195 = getelementptr inbounds nuw %struct._exon_t, ptr %194, i32 0, i32 0
  %196 = load i32, ptr %195, align 4, !tbaa !41
  %197 = load ptr, ptr %9, align 8, !tbaa !37
  %198 = getelementptr inbounds nuw %struct._exon_t, ptr %197, i32 0, i32 2
  %199 = load i32, ptr %198, align 4, !tbaa !53
  %200 = add i32 %199, 1
  %201 = add i32 %200, 30
  %202 = icmp ult i32 %196, %201
  br i1 %202, label %203, label %214

203:                                              ; preds = %178
  %204 = load ptr, ptr %10, align 8, !tbaa !37
  %205 = getelementptr inbounds nuw %struct._exon_t, ptr %204, i32 0, i32 1
  %206 = load i32, ptr %205, align 4, !tbaa !39
  %207 = load ptr, ptr %9, align 8, !tbaa !37
  %208 = getelementptr inbounds nuw %struct._exon_t, ptr %207, i32 0, i32 3
  %209 = load i32, ptr %208, align 4, !tbaa !52
  %210 = add i32 %209, 1
  %211 = load i32, ptr %4, align 4, !tbaa !25
  %212 = add i32 %210, %211
  %213 = icmp ule i32 %206, %212
  br i1 %213, label %229, label %214

214:                                              ; preds = %203, %178
  %215 = load ptr, ptr %9, align 8, !tbaa !37
  %216 = getelementptr inbounds nuw %struct._exon_t, ptr %215, i32 0, i32 2
  %217 = load i32, ptr %216, align 4, !tbaa !53
  %218 = load ptr, ptr %10, align 8, !tbaa !37
  %219 = getelementptr inbounds nuw %struct._exon_t, ptr %218, i32 0, i32 0
  %220 = load i32, ptr %219, align 4, !tbaa !41
  %221 = load ptr, ptr %9, align 8, !tbaa !37
  %222 = getelementptr inbounds nuw %struct._exon_t, ptr %221, i32 0, i32 3
  %223 = load i32, ptr %222, align 4, !tbaa !52
  %224 = load ptr, ptr %10, align 8, !tbaa !37
  %225 = getelementptr inbounds nuw %struct._exon_t, ptr %224, i32 0, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !39
  %227 = call signext i32 @about_same_gap_p(i32 noundef signext %217, i32 noundef signext %220, i32 noundef signext %223, i32 noundef signext %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %267

229:                                              ; preds = %214, %203
  %230 = load ptr, ptr %10, align 8, !tbaa !37
  %231 = getelementptr inbounds nuw %struct._exon_t, ptr %230, i32 0, i32 2
  %232 = load i32, ptr %231, align 4, !tbaa !53
  %233 = load ptr, ptr %9, align 8, !tbaa !37
  %234 = getelementptr inbounds nuw %struct._exon_t, ptr %233, i32 0, i32 2
  store i32 %232, ptr %234, align 4, !tbaa !53
  %235 = load ptr, ptr %10, align 8, !tbaa !37
  %236 = getelementptr inbounds nuw %struct._exon_t, ptr %235, i32 0, i32 3
  %237 = load i32, ptr %236, align 4, !tbaa !52
  %238 = load ptr, ptr %9, align 8, !tbaa !37
  %239 = getelementptr inbounds nuw %struct._exon_t, ptr %238, i32 0, i32 3
  store i32 %237, ptr %239, align 4, !tbaa !52
  %240 = load ptr, ptr %10, align 8, !tbaa !37
  call void @free(ptr noundef %240) #8
  %241 = load ptr, ptr %3, align 8, !tbaa !10
  %242 = getelementptr inbounds nuw %struct._collec_t, ptr %241, i32 0, i32 1
  %243 = load i32, ptr %242, align 8, !tbaa !26
  %244 = sub i32 %243, 1
  store i32 %244, ptr %242, align 8, !tbaa !26
  %245 = load ptr, ptr %3, align 8, !tbaa !10
  %246 = getelementptr inbounds nuw %struct._collec_t, ptr %245, i32 0, i32 0
  %247 = load ptr, ptr %246, align 8, !tbaa !28
  %248 = load i32, ptr %5, align 4, !tbaa !25
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds nuw ptr, ptr %247, i64 %249
  %251 = load ptr, ptr %3, align 8, !tbaa !10
  %252 = getelementptr inbounds nuw %struct._collec_t, ptr %251, i32 0, i32 0
  %253 = load ptr, ptr %252, align 8, !tbaa !28
  %254 = load i32, ptr %5, align 4, !tbaa !25
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds nuw ptr, ptr %253, i64 %255
  %257 = getelementptr inbounds ptr, ptr %256, i64 1
  %258 = load ptr, ptr %3, align 8, !tbaa !10
  %259 = getelementptr inbounds nuw %struct._collec_t, ptr %258, i32 0, i32 1
  %260 = load i32, ptr %259, align 8, !tbaa !26
  %261 = load i32, ptr %5, align 4, !tbaa !25
  %262 = sub i32 %260, %261
  %263 = zext i32 %262 to i64
  %264 = mul i64 %263, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %250, ptr align 8 %257, i64 %264, i1 false)
  %265 = load i32, ptr %5, align 4, !tbaa !25
  %266 = sub i32 %265, 1
  store i32 %266, ptr %5, align 4, !tbaa !25
  br label %267

267:                                              ; preds = %229, %214
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #8
  br label %268

268:                                              ; preds = %267
  %269 = load i32, ptr %5, align 4, !tbaa !25
  %270 = add i32 %269, 1
  store i32 %270, ptr %5, align 4, !tbaa !25
  br label %172, !llvm.loop !135

271:                                              ; preds = %172
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  ret void
}

; Function Attrs: nounwind
define internal void @slide_intron(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct._splice_score_t, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca %struct._splice_score_t, align 4
  %23 = alloca %struct._splice_score_t, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca %struct._splice_score_t, align 4
  %29 = alloca %struct._splice_score_t, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !29
  store ptr %1, ptr %5, align 8, !tbaa !64
  store ptr %2, ptr %6, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  store i32 1, ptr %7, align 4, !tbaa !25
  br label %32

32:                                               ; preds = %147, %3
  %33 = load i32, ptr %7, align 4, !tbaa !25
  %34 = load ptr, ptr %4, align 8, !tbaa !29
  %35 = getelementptr inbounds nuw %struct._result_t, ptr %34, i32 0, i32 1
  %36 = getelementptr inbounds nuw %struct._collec_t, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !136
  %38 = icmp ult i32 %33, %37
  br i1 %38, label %39, label %150

39:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  %40 = load ptr, ptr %4, align 8, !tbaa !29
  %41 = getelementptr inbounds nuw %struct._result_t, ptr %40, i32 0, i32 1
  %42 = getelementptr inbounds nuw %struct._collec_t, ptr %41, i32 0, i32 0
  %43 = load ptr, ptr %42, align 8, !tbaa !28
  %44 = load i32, ptr %7, align 4, !tbaa !25
  %45 = sub i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds nuw ptr, ptr %43, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !37
  store ptr %48, ptr %8, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #8
  %49 = load ptr, ptr %4, align 8, !tbaa !29
  %50 = getelementptr inbounds nuw %struct._result_t, ptr %49, i32 0, i32 1
  %51 = getelementptr inbounds nuw %struct._collec_t, ptr %50, i32 0, i32 0
  %52 = load ptr, ptr %51, align 8, !tbaa !28
  %53 = load i32, ptr %7, align 4, !tbaa !25
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds nuw ptr, ptr %52, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !37
  store ptr %56, ptr %9, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 28, ptr %10) #8
  %57 = load ptr, ptr %8, align 8, !tbaa !37
  %58 = getelementptr inbounds nuw %struct._exon_t, ptr %57, i32 0, i32 6
  %59 = load i64, ptr %58, align 4
  %60 = and i64 %59, 72057594037927935
  %61 = or i64 %60, -72057594037927936
  store i64 %61, ptr %58, align 4
  %62 = load ptr, ptr %8, align 8, !tbaa !37
  %63 = getelementptr inbounds nuw %struct._exon_t, ptr %62, i32 0, i32 6
  %64 = load i64, ptr %63, align 4
  %65 = and i64 %64, -12884901889
  %66 = or i64 %65, 0
  store i64 %66, ptr %63, align 4
  %67 = load ptr, ptr %8, align 8, !tbaa !37
  %68 = getelementptr inbounds nuw %struct._exon_t, ptr %67, i32 0, i32 6
  %69 = load i64, ptr %68, align 4
  %70 = and i64 %69, -72057576858058753
  %71 = or i64 %70, 0
  store i64 %71, ptr %68, align 4
  %72 = load ptr, ptr %9, align 8, !tbaa !37
  %73 = getelementptr inbounds nuw %struct._exon_t, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !39
  %75 = load ptr, ptr %8, align 8, !tbaa !37
  %76 = getelementptr inbounds nuw %struct._exon_t, ptr %75, i32 0, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !52
  %78 = sub i32 %74, %77
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %39
  store i32 4, ptr %11, align 4
  br label %144

81:                                               ; preds = %39
  %82 = load ptr, ptr %8, align 8, !tbaa !37
  %83 = getelementptr inbounds nuw %struct._exon_t, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !53
  %85 = getelementptr inbounds nuw %struct._splice_score_t, ptr %10, i32 0, i32 0
  store i32 %84, ptr %85, align 4, !tbaa !137
  %86 = load ptr, ptr %8, align 8, !tbaa !37
  %87 = getelementptr inbounds nuw %struct._exon_t, ptr %86, i32 0, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !52
  %89 = getelementptr inbounds nuw %struct._splice_score_t, ptr %10, i32 0, i32 1
  store i32 %88, ptr %89, align 4, !tbaa !139
  %90 = load ptr, ptr %9, align 8, !tbaa !37
  %91 = getelementptr inbounds nuw %struct._exon_t, ptr %90, i32 0, i32 0
  %92 = load i32, ptr %91, align 4, !tbaa !41
  %93 = getelementptr inbounds nuw %struct._splice_score_t, ptr %10, i32 0, i32 2
  store i32 %92, ptr %93, align 4, !tbaa !140
  %94 = load ptr, ptr %5, align 8, !tbaa !64
  %95 = load ptr, ptr %6, align 8, !tbaa !64
  %96 = call signext i32 @perfect_spl_p(ptr noundef %94, ptr noundef %95, ptr noundef %10)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %143

98:                                               ; preds = %81
  %99 = getelementptr inbounds nuw %struct._splice_score_t, ptr %10, i32 0, i32 6
  %100 = load i32, ptr %99, align 4, !tbaa !141
  %101 = load ptr, ptr %4, align 8, !tbaa !29
  %102 = getelementptr inbounds nuw %struct._result_t, ptr %101, i32 0, i32 4
  %103 = load i32, ptr %102, align 8, !tbaa !142
  %104 = add nsw i32 %103, %100
  store i32 %104, ptr %102, align 8, !tbaa !142
  %105 = getelementptr inbounds nuw %struct._splice_score_t, ptr %10, i32 0, i32 6
  %106 = load i32, ptr %105, align 4, !tbaa !141
  %107 = load ptr, ptr %8, align 8, !tbaa !37
  %108 = getelementptr inbounds nuw %struct._exon_t, ptr %107, i32 0, i32 6
  %109 = zext i32 %106 to i64
  %110 = load i64, ptr %108, align 4
  %111 = and i64 %109, 3
  %112 = shl i64 %111, 32
  %113 = and i64 %110, -12884901889
  %114 = or i64 %113, %112
  store i64 %114, ptr %108, align 4
  %115 = shl i64 %111, 62
  %116 = ashr i64 %115, 62
  %117 = trunc i64 %116 to i32
  %118 = getelementptr inbounds nuw %struct._splice_score_t, ptr %10, i32 0, i32 3
  %119 = load i32, ptr %118, align 4, !tbaa !143
  %120 = load ptr, ptr %8, align 8, !tbaa !37
  %121 = getelementptr inbounds nuw %struct._exon_t, ptr %120, i32 0, i32 6
  %122 = zext i32 %119 to i64
  %123 = load i64, ptr %121, align 4
  %124 = and i64 %122, 255
  %125 = shl i64 %124, 56
  %126 = and i64 %123, 72057594037927935
  %127 = or i64 %126, %125
  store i64 %127, ptr %121, align 4
  %128 = shl i64 %124, 56
  %129 = ashr i64 %128, 56
  %130 = trunc i64 %129 to i32
  %131 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %132 = mul i32 %131, 2
  %133 = add i32 4, %132
  %134 = load ptr, ptr %8, align 8, !tbaa !37
  %135 = getelementptr inbounds nuw %struct._exon_t, ptr %134, i32 0, i32 6
  %136 = zext i32 %133 to i64
  %137 = load i64, ptr %135, align 4
  %138 = and i64 %136, 4194303
  %139 = shl i64 %138, 34
  %140 = and i64 %137, -72057576858058753
  %141 = or i64 %140, %139
  store i64 %141, ptr %135, align 4
  %142 = trunc i64 %138 to i32
  br label %143

143:                                              ; preds = %98, %81
  store i32 0, ptr %11, align 4
  br label %144

144:                                              ; preds = %143, %80
  call void @llvm.lifetime.end.p0(i64 28, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  %145 = load i32, ptr %11, align 4
  switch i32 %145, label %705 [
    i32 0, label %146
    i32 4, label %147
  ]

146:                                              ; preds = %144
  br label %147

147:                                              ; preds = %146, %144
  %148 = load i32, ptr %7, align 4, !tbaa !25
  %149 = add i32 %148, 1
  store i32 %149, ptr %7, align 4, !tbaa !25
  br label %32, !llvm.loop !145

150:                                              ; preds = %32
  store i32 1, ptr %7, align 4, !tbaa !25
  br label %151

151:                                              ; preds = %372, %150
  %152 = load i32, ptr %7, align 4, !tbaa !25
  %153 = load ptr, ptr %4, align 8, !tbaa !29
  %154 = getelementptr inbounds nuw %struct._result_t, ptr %153, i32 0, i32 1
  %155 = getelementptr inbounds nuw %struct._collec_t, ptr %154, i32 0, i32 1
  %156 = load i32, ptr %155, align 8, !tbaa !136
  %157 = icmp ult i32 %152, %156
  br i1 %157, label %158, label %375

158:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #8
  %159 = load ptr, ptr %4, align 8, !tbaa !29
  %160 = getelementptr inbounds nuw %struct._result_t, ptr %159, i32 0, i32 1
  %161 = getelementptr inbounds nuw %struct._collec_t, ptr %160, i32 0, i32 0
  %162 = load ptr, ptr %161, align 8, !tbaa !28
  %163 = load i32, ptr %7, align 4, !tbaa !25
  %164 = sub i32 %163, 1
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds nuw ptr, ptr %162, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !37
  store ptr %167, ptr %12, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #8
  %168 = load ptr, ptr %4, align 8, !tbaa !29
  %169 = getelementptr inbounds nuw %struct._result_t, ptr %168, i32 0, i32 1
  %170 = getelementptr inbounds nuw %struct._collec_t, ptr %169, i32 0, i32 0
  %171 = load ptr, ptr %170, align 8, !tbaa !28
  %172 = load i32, ptr %7, align 4, !tbaa !25
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds nuw ptr, ptr %171, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !37
  store ptr %175, ptr %13, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8
  store i32 0, ptr %17, align 4, !tbaa !25
  %176 = load ptr, ptr %13, align 8, !tbaa !37
  %177 = getelementptr inbounds nuw %struct._exon_t, ptr %176, i32 0, i32 1
  %178 = load i32, ptr %177, align 4, !tbaa !39
  %179 = load ptr, ptr %12, align 8, !tbaa !37
  %180 = getelementptr inbounds nuw %struct._exon_t, ptr %179, i32 0, i32 3
  %181 = load i32, ptr %180, align 4, !tbaa !52
  %182 = icmp ugt i32 %178, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %158
  store i32 7, ptr %11, align 4
  br label %369

184:                                              ; preds = %158
  %185 = load ptr, ptr %12, align 8, !tbaa !37
  %186 = getelementptr inbounds nuw %struct._exon_t, ptr %185, i32 0, i32 3
  %187 = load i32, ptr %186, align 4, !tbaa !52
  %188 = load ptr, ptr %13, align 8, !tbaa !37
  %189 = getelementptr inbounds nuw %struct._exon_t, ptr %188, i32 0, i32 1
  %190 = load i32, ptr %189, align 4, !tbaa !39
  %191 = sub i32 %187, %190
  %192 = add i32 %191, 2
  store i32 %192, ptr %15, align 4, !tbaa !25
  %193 = load i32, ptr %15, align 4, !tbaa !25
  %194 = zext i32 %193 to i64
  %195 = mul i64 %194, 28
  %196 = call ptr @xmalloc(i64 noundef %195)
  store ptr %196, ptr %14, align 8, !tbaa !146
  store i32 0, ptr %16, align 4, !tbaa !25
  br label %197

197:                                              ; preds = %256, %184
  %198 = load i32, ptr %16, align 4, !tbaa !25
  %199 = load i32, ptr %15, align 4, !tbaa !25
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %201, label %259

201:                                              ; preds = %197
  %202 = load ptr, ptr %12, align 8, !tbaa !37
  %203 = getelementptr inbounds nuw %struct._exon_t, ptr %202, i32 0, i32 2
  %204 = load i32, ptr %203, align 4, !tbaa !53
  %205 = load i32, ptr %15, align 4, !tbaa !25
  %206 = sub i32 %204, %205
  %207 = load i32, ptr %16, align 4, !tbaa !25
  %208 = add i32 %206, %207
  %209 = add i32 %208, 1
  %210 = load ptr, ptr %14, align 8, !tbaa !146
  %211 = load i32, ptr %16, align 4, !tbaa !25
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds nuw %struct._splice_score_t, ptr %210, i64 %212
  %214 = getelementptr inbounds nuw %struct._splice_score_t, ptr %213, i32 0, i32 0
  store i32 %209, ptr %214, align 4, !tbaa !137
  %215 = load ptr, ptr %12, align 8, !tbaa !37
  %216 = getelementptr inbounds nuw %struct._exon_t, ptr %215, i32 0, i32 3
  %217 = load i32, ptr %216, align 4, !tbaa !52
  %218 = load i32, ptr %15, align 4, !tbaa !25
  %219 = sub i32 %217, %218
  %220 = load i32, ptr %16, align 4, !tbaa !25
  %221 = add i32 %219, %220
  %222 = add i32 %221, 1
  %223 = load ptr, ptr %14, align 8, !tbaa !146
  %224 = load i32, ptr %16, align 4, !tbaa !25
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds nuw %struct._splice_score_t, ptr %223, i64 %225
  %227 = getelementptr inbounds nuw %struct._splice_score_t, ptr %226, i32 0, i32 1
  store i32 %222, ptr %227, align 4, !tbaa !139
  %228 = load ptr, ptr %13, align 8, !tbaa !37
  %229 = getelementptr inbounds nuw %struct._exon_t, ptr %228, i32 0, i32 0
  %230 = load i32, ptr %229, align 4, !tbaa !41
  %231 = load i32, ptr %16, align 4, !tbaa !25
  %232 = add i32 %230, %231
  %233 = load ptr, ptr %14, align 8, !tbaa !146
  %234 = load i32, ptr %16, align 4, !tbaa !25
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds nuw %struct._splice_score_t, ptr %233, i64 %235
  %237 = getelementptr inbounds nuw %struct._splice_score_t, ptr %236, i32 0, i32 2
  store i32 %232, ptr %237, align 4, !tbaa !140
  %238 = load ptr, ptr %5, align 8, !tbaa !64
  %239 = load ptr, ptr %6, align 8, !tbaa !64
  %240 = load ptr, ptr %14, align 8, !tbaa !146
  %241 = load i32, ptr %16, align 4, !tbaa !25
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds nuw %struct._splice_score_t, ptr %240, i64 %242
  %244 = call signext i32 @perfect_spl_p(ptr noundef %238, ptr noundef %239, ptr noundef %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %201
  %247 = load i32, ptr %17, align 4, !tbaa !25
  %248 = add i32 %247, 1
  store i32 %248, ptr %17, align 4, !tbaa !25
  br label %255

249:                                              ; preds = %201
  %250 = load ptr, ptr %14, align 8, !tbaa !146
  %251 = load i32, ptr %16, align 4, !tbaa !25
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds nuw %struct._splice_score_t, ptr %250, i64 %252
  %254 = getelementptr inbounds nuw %struct._splice_score_t, ptr %253, i32 0, i32 6
  store i32 0, ptr %254, align 4, !tbaa !141
  br label %255

255:                                              ; preds = %249, %246
  br label %256

256:                                              ; preds = %255
  %257 = load i32, ptr %16, align 4, !tbaa !25
  %258 = add i32 %257, 1
  store i32 %258, ptr %16, align 4, !tbaa !25
  br label %197, !llvm.loop !148

259:                                              ; preds = %197
  %260 = load i32, ptr %17, align 4, !tbaa !25
  %261 = icmp eq i32 %260, 1
  br i1 %261, label %262, label %367

262:                                              ; preds = %259
  store i32 0, ptr %16, align 4, !tbaa !25
  br label %263

263:                                              ; preds = %363, %262
  %264 = load i32, ptr %16, align 4, !tbaa !25
  %265 = load i32, ptr %15, align 4, !tbaa !25
  %266 = icmp ult i32 %264, %265
  br i1 %266, label %267, label %366

267:                                              ; preds = %263
  %268 = load ptr, ptr %14, align 8, !tbaa !146
  %269 = load i32, ptr %16, align 4, !tbaa !25
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds nuw %struct._splice_score_t, ptr %268, i64 %270
  %272 = getelementptr inbounds nuw %struct._splice_score_t, ptr %271, i32 0, i32 6
  %273 = load i32, ptr %272, align 4, !tbaa !141
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %362

275:                                              ; preds = %267
  %276 = load ptr, ptr %14, align 8, !tbaa !146
  %277 = load i32, ptr %16, align 4, !tbaa !25
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds nuw %struct._splice_score_t, ptr %276, i64 %278
  %280 = getelementptr inbounds nuw %struct._splice_score_t, ptr %279, i32 0, i32 6
  %281 = load i32, ptr %280, align 4, !tbaa !141
  %282 = load ptr, ptr %4, align 8, !tbaa !29
  %283 = getelementptr inbounds nuw %struct._result_t, ptr %282, i32 0, i32 4
  %284 = load i32, ptr %283, align 8, !tbaa !142
  %285 = add nsw i32 %284, %281
  store i32 %285, ptr %283, align 8, !tbaa !142
  %286 = load ptr, ptr %14, align 8, !tbaa !146
  %287 = load i32, ptr %16, align 4, !tbaa !25
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds nuw %struct._splice_score_t, ptr %286, i64 %288
  %290 = getelementptr inbounds nuw %struct._splice_score_t, ptr %289, i32 0, i32 6
  %291 = load i32, ptr %290, align 4, !tbaa !141
  %292 = load ptr, ptr %12, align 8, !tbaa !37
  %293 = getelementptr inbounds nuw %struct._exon_t, ptr %292, i32 0, i32 6
  %294 = zext i32 %291 to i64
  %295 = load i64, ptr %293, align 4
  %296 = and i64 %294, 3
  %297 = shl i64 %296, 32
  %298 = and i64 %295, -12884901889
  %299 = or i64 %298, %297
  store i64 %299, ptr %293, align 4
  %300 = shl i64 %296, 62
  %301 = ashr i64 %300, 62
  %302 = trunc i64 %301 to i32
  %303 = load ptr, ptr %14, align 8, !tbaa !146
  %304 = load i32, ptr %16, align 4, !tbaa !25
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds nuw %struct._splice_score_t, ptr %303, i64 %305
  %307 = getelementptr inbounds nuw %struct._splice_score_t, ptr %306, i32 0, i32 3
  %308 = load i32, ptr %307, align 4, !tbaa !143
  %309 = load ptr, ptr %12, align 8, !tbaa !37
  %310 = getelementptr inbounds nuw %struct._exon_t, ptr %309, i32 0, i32 6
  %311 = zext i32 %308 to i64
  %312 = load i64, ptr %310, align 4
  %313 = and i64 %311, 255
  %314 = shl i64 %313, 56
  %315 = and i64 %312, 72057594037927935
  %316 = or i64 %315, %314
  store i64 %316, ptr %310, align 4
  %317 = shl i64 %313, 56
  %318 = ashr i64 %317, 56
  %319 = trunc i64 %318 to i32
  %320 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %321 = mul i32 %320, 2
  %322 = add i32 4, %321
  %323 = load ptr, ptr %12, align 8, !tbaa !37
  %324 = getelementptr inbounds nuw %struct._exon_t, ptr %323, i32 0, i32 6
  %325 = zext i32 %322 to i64
  %326 = load i64, ptr %324, align 4
  %327 = and i64 %325, 4194303
  %328 = shl i64 %327, 34
  %329 = and i64 %326, -72057576858058753
  %330 = or i64 %329, %328
  store i64 %330, ptr %324, align 4
  %331 = trunc i64 %327 to i32
  %332 = load ptr, ptr %14, align 8, !tbaa !146
  %333 = load i32, ptr %16, align 4, !tbaa !25
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds nuw %struct._splice_score_t, ptr %332, i64 %334
  %336 = getelementptr inbounds nuw %struct._splice_score_t, ptr %335, i32 0, i32 0
  %337 = load i32, ptr %336, align 4, !tbaa !137
  %338 = load ptr, ptr %12, align 8, !tbaa !37
  %339 = getelementptr inbounds nuw %struct._exon_t, ptr %338, i32 0, i32 2
  store i32 %337, ptr %339, align 4, !tbaa !53
  %340 = load ptr, ptr %14, align 8, !tbaa !146
  %341 = load i32, ptr %16, align 4, !tbaa !25
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds nuw %struct._splice_score_t, ptr %340, i64 %342
  %344 = getelementptr inbounds nuw %struct._splice_score_t, ptr %343, i32 0, i32 1
  %345 = load i32, ptr %344, align 4, !tbaa !139
  %346 = load ptr, ptr %12, align 8, !tbaa !37
  %347 = getelementptr inbounds nuw %struct._exon_t, ptr %346, i32 0, i32 3
  store i32 %345, ptr %347, align 4, !tbaa !52
  %348 = load ptr, ptr %12, align 8, !tbaa !37
  %349 = getelementptr inbounds nuw %struct._exon_t, ptr %348, i32 0, i32 3
  %350 = load i32, ptr %349, align 4, !tbaa !52
  %351 = add i32 %350, 1
  %352 = load ptr, ptr %13, align 8, !tbaa !37
  %353 = getelementptr inbounds nuw %struct._exon_t, ptr %352, i32 0, i32 1
  store i32 %351, ptr %353, align 4, !tbaa !39
  %354 = load ptr, ptr %14, align 8, !tbaa !146
  %355 = load i32, ptr %16, align 4, !tbaa !25
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds nuw %struct._splice_score_t, ptr %354, i64 %356
  %358 = getelementptr inbounds nuw %struct._splice_score_t, ptr %357, i32 0, i32 2
  %359 = load i32, ptr %358, align 4, !tbaa !140
  %360 = load ptr, ptr %13, align 8, !tbaa !37
  %361 = getelementptr inbounds nuw %struct._exon_t, ptr %360, i32 0, i32 0
  store i32 %359, ptr %361, align 4, !tbaa !41
  br label %362

362:                                              ; preds = %275, %267
  br label %363

363:                                              ; preds = %362
  %364 = load i32, ptr %16, align 4, !tbaa !25
  %365 = add i32 %364, 1
  store i32 %365, ptr %16, align 4, !tbaa !25
  br label %263, !llvm.loop !149

366:                                              ; preds = %263
  br label %367

367:                                              ; preds = %366, %259
  %368 = load ptr, ptr %14, align 8, !tbaa !146
  call void @free(ptr noundef %368) #8
  store i32 0, ptr %11, align 4
  br label %369

369:                                              ; preds = %367, %183
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #8
  %370 = load i32, ptr %11, align 4
  switch i32 %370, label %705 [
    i32 0, label %371
    i32 7, label %372
  ]

371:                                              ; preds = %369
  br label %372

372:                                              ; preds = %371, %369
  %373 = load i32, ptr %7, align 4, !tbaa !25
  %374 = add i32 %373, 1
  store i32 %374, ptr %7, align 4, !tbaa !25
  br label %151, !llvm.loop !150

375:                                              ; preds = %151
  %376 = load ptr, ptr %4, align 8, !tbaa !29
  %377 = getelementptr inbounds nuw %struct._result_t, ptr %376, i32 0, i32 4
  %378 = load i32, ptr %377, align 8, !tbaa !142
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %535

380:                                              ; preds = %375
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  store i32 0, ptr %18, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  store i32 0, ptr %19, align 4, !tbaa !25
  store i32 1, ptr %7, align 4, !tbaa !25
  br label %381

381:                                              ; preds = %521, %380
  %382 = load i32, ptr %7, align 4, !tbaa !25
  %383 = load ptr, ptr %4, align 8, !tbaa !29
  %384 = getelementptr inbounds nuw %struct._result_t, ptr %383, i32 0, i32 1
  %385 = getelementptr inbounds nuw %struct._collec_t, ptr %384, i32 0, i32 1
  %386 = load i32, ptr %385, align 8, !tbaa !136
  %387 = icmp ult i32 %382, %386
  br i1 %387, label %388, label %524

388:                                              ; preds = %381
  call void @llvm.lifetime.start.p0(i64 8, ptr %20) #8
  %389 = load ptr, ptr %4, align 8, !tbaa !29
  %390 = getelementptr inbounds nuw %struct._result_t, ptr %389, i32 0, i32 1
  %391 = getelementptr inbounds nuw %struct._collec_t, ptr %390, i32 0, i32 0
  %392 = load ptr, ptr %391, align 8, !tbaa !28
  %393 = load i32, ptr %7, align 4, !tbaa !25
  %394 = sub i32 %393, 1
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds nuw ptr, ptr %392, i64 %395
  %397 = load ptr, ptr %396, align 8, !tbaa !37
  store ptr %397, ptr %20, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %21) #8
  %398 = load ptr, ptr %4, align 8, !tbaa !29
  %399 = getelementptr inbounds nuw %struct._result_t, ptr %398, i32 0, i32 1
  %400 = getelementptr inbounds nuw %struct._collec_t, ptr %399, i32 0, i32 0
  %401 = load ptr, ptr %400, align 8, !tbaa !28
  %402 = load i32, ptr %7, align 4, !tbaa !25
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds nuw ptr, ptr %401, i64 %403
  %405 = load ptr, ptr %404, align 8, !tbaa !37
  store ptr %405, ptr %21, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 28, ptr %22) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr %23) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8
  %406 = load ptr, ptr %20, align 8, !tbaa !37
  %407 = getelementptr inbounds nuw %struct._exon_t, ptr %406, i32 0, i32 3
  %408 = load i32, ptr %407, align 4, !tbaa !52
  %409 = add i32 %408, 1
  %410 = load ptr, ptr %21, align 8, !tbaa !37
  %411 = getelementptr inbounds nuw %struct._exon_t, ptr %410, i32 0, i32 1
  %412 = load i32, ptr %411, align 4, !tbaa !39
  %413 = icmp ult i32 %409, %412
  br i1 %413, label %414, label %415

414:                                              ; preds = %388
  store i32 16, ptr %11, align 4
  br label %518

415:                                              ; preds = %388
  %416 = load ptr, ptr %20, align 8, !tbaa !37
  %417 = getelementptr inbounds nuw %struct._exon_t, ptr %416, i32 0, i32 6
  %418 = load i64, ptr %417, align 4
  %419 = shl i64 %418, 30
  %420 = ashr i64 %419, 62
  %421 = trunc i64 %420 to i32
  %422 = icmp sgt i32 %421, 0
  br i1 %422, label %423, label %432

423:                                              ; preds = %415
  %424 = load ptr, ptr %20, align 8, !tbaa !37
  %425 = getelementptr inbounds nuw %struct._exon_t, ptr %424, i32 0, i32 6
  %426 = load i64, ptr %425, align 4
  %427 = lshr i64 %426, 34
  %428 = and i64 %427, 4194303
  %429 = trunc i64 %428 to i32
  %430 = load i32, ptr %18, align 4, !tbaa !25
  %431 = add i32 %430, %429
  store i32 %431, ptr %18, align 4, !tbaa !25
  store i32 16, ptr %11, align 4
  br label %518

432:                                              ; preds = %415
  %433 = load ptr, ptr %20, align 8, !tbaa !37
  %434 = getelementptr inbounds nuw %struct._exon_t, ptr %433, i32 0, i32 6
  %435 = load i64, ptr %434, align 4
  %436 = shl i64 %435, 30
  %437 = ashr i64 %436, 62
  %438 = trunc i64 %437 to i32
  %439 = icmp slt i32 %438, 0
  br i1 %439, label %440, label %449

440:                                              ; preds = %432
  %441 = load ptr, ptr %20, align 8, !tbaa !37
  %442 = getelementptr inbounds nuw %struct._exon_t, ptr %441, i32 0, i32 6
  %443 = load i64, ptr %442, align 4
  %444 = lshr i64 %443, 34
  %445 = and i64 %444, 4194303
  %446 = trunc i64 %445 to i32
  %447 = load i32, ptr %19, align 4, !tbaa !25
  %448 = add i32 %447, %446
  store i32 %448, ptr %19, align 4, !tbaa !25
  store i32 16, ptr %11, align 4
  br label %518

449:                                              ; preds = %432
  %450 = load ptr, ptr %20, align 8, !tbaa !37
  %451 = getelementptr inbounds nuw %struct._exon_t, ptr %450, i32 0, i32 3
  %452 = load i32, ptr %451, align 4, !tbaa !52
  %453 = load ptr, ptr %21, align 8, !tbaa !37
  %454 = getelementptr inbounds nuw %struct._exon_t, ptr %453, i32 0, i32 1
  %455 = load i32, ptr %454, align 4, !tbaa !39
  %456 = sub i32 %452, %455
  %457 = add i32 %456, 2
  store i32 %457, ptr %24, align 4, !tbaa !25
  %458 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 3
  store i32 -1, ptr %458, align 4, !tbaa !143
  %459 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 4
  store i32 0, ptr %459, align 4, !tbaa !151
  %460 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 5
  store i32 0, ptr %460, align 4, !tbaa !152
  store i32 0, ptr %25, align 4, !tbaa !25
  br label %461

461:                                              ; preds = %496, %449
  %462 = load i32, ptr %25, align 4, !tbaa !25
  %463 = load i32, ptr %24, align 4, !tbaa !25
  %464 = icmp ult i32 %462, %463
  br i1 %464, label %465, label %499

465:                                              ; preds = %461
  %466 = load ptr, ptr %20, align 8, !tbaa !37
  %467 = getelementptr inbounds nuw %struct._exon_t, ptr %466, i32 0, i32 2
  %468 = load i32, ptr %467, align 4, !tbaa !53
  %469 = load i32, ptr %24, align 4, !tbaa !25
  %470 = sub i32 %468, %469
  %471 = load i32, ptr %25, align 4, !tbaa !25
  %472 = add i32 %470, %471
  %473 = add i32 %472, 1
  %474 = getelementptr inbounds nuw %struct._splice_score_t, ptr %23, i32 0, i32 0
  store i32 %473, ptr %474, align 4, !tbaa !137
  %475 = load ptr, ptr %20, align 8, !tbaa !37
  %476 = getelementptr inbounds nuw %struct._exon_t, ptr %475, i32 0, i32 3
  %477 = load i32, ptr %476, align 4, !tbaa !52
  %478 = load i32, ptr %24, align 4, !tbaa !25
  %479 = sub i32 %477, %478
  %480 = load i32, ptr %25, align 4, !tbaa !25
  %481 = add i32 %479, %480
  %482 = add i32 %481, 1
  %483 = getelementptr inbounds nuw %struct._splice_score_t, ptr %23, i32 0, i32 1
  store i32 %482, ptr %483, align 4, !tbaa !139
  %484 = load ptr, ptr %21, align 8, !tbaa !37
  %485 = getelementptr inbounds nuw %struct._exon_t, ptr %484, i32 0, i32 0
  %486 = load i32, ptr %485, align 4, !tbaa !41
  %487 = load i32, ptr %25, align 4, !tbaa !25
  %488 = add i32 %486, %487
  %489 = getelementptr inbounds nuw %struct._splice_score_t, ptr %23, i32 0, i32 2
  store i32 %488, ptr %489, align 4, !tbaa !140
  %490 = load ptr, ptr %5, align 8, !tbaa !64
  %491 = load ptr, ptr %6, align 8, !tbaa !64
  call void @compute_max_score(ptr noundef %490, ptr noundef %491, ptr noundef %23, i32 noundef signext 0)
  %492 = call signext i32 @splice_score_compare(ptr noundef %23, ptr noundef %22)
  %493 = icmp sgt i32 %492, 0
  br i1 %493, label %494, label %495

494:                                              ; preds = %465
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %22, ptr align 4 %23, i64 28, i1 false), !tbaa.struct !153
  br label %495

495:                                              ; preds = %494, %465
  br label %496

496:                                              ; preds = %495
  %497 = load i32, ptr %25, align 4, !tbaa !25
  %498 = add i32 %497, 1
  store i32 %498, ptr %25, align 4, !tbaa !25
  br label %461, !llvm.loop !154

499:                                              ; preds = %461
  %500 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 6
  %501 = load i32, ptr %500, align 4, !tbaa !141
  %502 = icmp sgt i32 %501, 0
  br i1 %502, label %503, label %508

503:                                              ; preds = %499
  %504 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 4
  %505 = load i32, ptr %504, align 4, !tbaa !151
  %506 = load i32, ptr %18, align 4, !tbaa !25
  %507 = add i32 %506, %505
  store i32 %507, ptr %18, align 4, !tbaa !25
  br label %508

508:                                              ; preds = %503, %499
  %509 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 6
  %510 = load i32, ptr %509, align 4, !tbaa !141
  %511 = icmp slt i32 %510, 0
  br i1 %511, label %512, label %517

512:                                              ; preds = %508
  %513 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 4
  %514 = load i32, ptr %513, align 4, !tbaa !151
  %515 = load i32, ptr %19, align 4, !tbaa !25
  %516 = add i32 %515, %514
  store i32 %516, ptr %19, align 4, !tbaa !25
  br label %517

517:                                              ; preds = %512, %508
  store i32 0, ptr %11, align 4
  br label %518

518:                                              ; preds = %517, %440, %423, %414
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %20) #8
  %519 = load i32, ptr %11, align 4
  switch i32 %519, label %705 [
    i32 0, label %520
    i32 16, label %521
  ]

520:                                              ; preds = %518
  br label %521

521:                                              ; preds = %520, %518
  %522 = load i32, ptr %7, align 4, !tbaa !25
  %523 = add i32 %522, 1
  store i32 %523, ptr %7, align 4, !tbaa !25
  br label %381, !llvm.loop !155

524:                                              ; preds = %381
  %525 = load i32, ptr %18, align 4, !tbaa !25
  %526 = load i32, ptr %19, align 4, !tbaa !25
  %527 = icmp uge i32 %525, %526
  br i1 %527, label %528, label %531

528:                                              ; preds = %524
  %529 = load ptr, ptr %4, align 8, !tbaa !29
  %530 = getelementptr inbounds nuw %struct._result_t, ptr %529, i32 0, i32 4
  store i32 1, ptr %530, align 8, !tbaa !142
  br label %534

531:                                              ; preds = %524
  %532 = load ptr, ptr %4, align 8, !tbaa !29
  %533 = getelementptr inbounds nuw %struct._result_t, ptr %532, i32 0, i32 4
  store i32 -1, ptr %533, align 8, !tbaa !142
  br label %534

534:                                              ; preds = %531, %528
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  br label %535

535:                                              ; preds = %534, %375
  store i32 1, ptr %7, align 4, !tbaa !25
  br label %536

536:                                              ; preds = %701, %535
  %537 = load i32, ptr %7, align 4, !tbaa !25
  %538 = load ptr, ptr %4, align 8, !tbaa !29
  %539 = getelementptr inbounds nuw %struct._result_t, ptr %538, i32 0, i32 1
  %540 = getelementptr inbounds nuw %struct._collec_t, ptr %539, i32 0, i32 1
  %541 = load i32, ptr %540, align 8, !tbaa !136
  %542 = icmp ult i32 %537, %541
  br i1 %542, label %543, label %704

543:                                              ; preds = %536
  call void @llvm.lifetime.start.p0(i64 8, ptr %26) #8
  %544 = load ptr, ptr %4, align 8, !tbaa !29
  %545 = getelementptr inbounds nuw %struct._result_t, ptr %544, i32 0, i32 1
  %546 = getelementptr inbounds nuw %struct._collec_t, ptr %545, i32 0, i32 0
  %547 = load ptr, ptr %546, align 8, !tbaa !28
  %548 = load i32, ptr %7, align 4, !tbaa !25
  %549 = sub i32 %548, 1
  %550 = zext i32 %549 to i64
  %551 = getelementptr inbounds nuw ptr, ptr %547, i64 %550
  %552 = load ptr, ptr %551, align 8, !tbaa !37
  store ptr %552, ptr %26, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %27) #8
  %553 = load ptr, ptr %4, align 8, !tbaa !29
  %554 = getelementptr inbounds nuw %struct._result_t, ptr %553, i32 0, i32 1
  %555 = getelementptr inbounds nuw %struct._collec_t, ptr %554, i32 0, i32 0
  %556 = load ptr, ptr %555, align 8, !tbaa !28
  %557 = load i32, ptr %7, align 4, !tbaa !25
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds nuw ptr, ptr %556, i64 %558
  %560 = load ptr, ptr %559, align 8, !tbaa !37
  store ptr %560, ptr %27, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 28, ptr %28) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr %29) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %30) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %31) #8
  %561 = load ptr, ptr %26, align 8, !tbaa !37
  %562 = getelementptr inbounds nuw %struct._exon_t, ptr %561, i32 0, i32 6
  %563 = load i64, ptr %562, align 4
  %564 = ashr i64 %563, 56
  %565 = trunc i64 %564 to i32
  %566 = icmp sge i32 %565, 0
  br i1 %566, label %567, label %579

567:                                              ; preds = %543
  %568 = load ptr, ptr %26, align 8, !tbaa !37
  %569 = getelementptr inbounds nuw %struct._exon_t, ptr %568, i32 0, i32 6
  %570 = load i64, ptr %569, align 4
  %571 = shl i64 %570, 30
  %572 = ashr i64 %571, 62
  %573 = trunc i64 %572 to i32
  %574 = load ptr, ptr %4, align 8, !tbaa !29
  %575 = getelementptr inbounds nuw %struct._result_t, ptr %574, i32 0, i32 4
  %576 = load i32, ptr %575, align 8, !tbaa !142
  %577 = mul nsw i32 %573, %576
  %578 = icmp sgt i32 %577, 0
  br i1 %578, label %588, label %579

579:                                              ; preds = %567, %543
  %580 = load ptr, ptr %26, align 8, !tbaa !37
  %581 = getelementptr inbounds nuw %struct._exon_t, ptr %580, i32 0, i32 3
  %582 = load i32, ptr %581, align 4, !tbaa !52
  %583 = add i32 %582, 1
  %584 = load ptr, ptr %27, align 8, !tbaa !37
  %585 = getelementptr inbounds nuw %struct._exon_t, ptr %584, i32 0, i32 1
  %586 = load i32, ptr %585, align 4, !tbaa !39
  %587 = icmp ult i32 %583, %586
  br i1 %587, label %588, label %589

588:                                              ; preds = %579, %567
  store i32 22, ptr %11, align 4
  br label %698

589:                                              ; preds = %579
  %590 = load ptr, ptr %26, align 8, !tbaa !37
  %591 = getelementptr inbounds nuw %struct._exon_t, ptr %590, i32 0, i32 3
  %592 = load i32, ptr %591, align 4, !tbaa !52
  %593 = load ptr, ptr %27, align 8, !tbaa !37
  %594 = getelementptr inbounds nuw %struct._exon_t, ptr %593, i32 0, i32 1
  %595 = load i32, ptr %594, align 4, !tbaa !39
  %596 = sub i32 %592, %595
  %597 = add i32 %596, 2
  store i32 %597, ptr %30, align 4, !tbaa !25
  %598 = getelementptr inbounds nuw %struct._splice_score_t, ptr %28, i32 0, i32 3
  store i32 -1, ptr %598, align 4, !tbaa !143
  %599 = getelementptr inbounds nuw %struct._splice_score_t, ptr %28, i32 0, i32 4
  store i32 0, ptr %599, align 4, !tbaa !151
  %600 = getelementptr inbounds nuw %struct._splice_score_t, ptr %28, i32 0, i32 5
  store i32 0, ptr %600, align 4, !tbaa !152
  store i32 0, ptr %31, align 4, !tbaa !25
  br label %601

601:                                              ; preds = %639, %589
  %602 = load i32, ptr %31, align 4, !tbaa !25
  %603 = load i32, ptr %30, align 4, !tbaa !25
  %604 = icmp ult i32 %602, %603
  br i1 %604, label %605, label %642

605:                                              ; preds = %601
  %606 = load ptr, ptr %26, align 8, !tbaa !37
  %607 = getelementptr inbounds nuw %struct._exon_t, ptr %606, i32 0, i32 2
  %608 = load i32, ptr %607, align 4, !tbaa !53
  %609 = load i32, ptr %30, align 4, !tbaa !25
  %610 = sub i32 %608, %609
  %611 = load i32, ptr %31, align 4, !tbaa !25
  %612 = add i32 %610, %611
  %613 = add i32 %612, 1
  %614 = getelementptr inbounds nuw %struct._splice_score_t, ptr %29, i32 0, i32 0
  store i32 %613, ptr %614, align 4, !tbaa !137
  %615 = load ptr, ptr %26, align 8, !tbaa !37
  %616 = getelementptr inbounds nuw %struct._exon_t, ptr %615, i32 0, i32 3
  %617 = load i32, ptr %616, align 4, !tbaa !52
  %618 = load i32, ptr %30, align 4, !tbaa !25
  %619 = sub i32 %617, %618
  %620 = load i32, ptr %31, align 4, !tbaa !25
  %621 = add i32 %619, %620
  %622 = add i32 %621, 1
  %623 = getelementptr inbounds nuw %struct._splice_score_t, ptr %29, i32 0, i32 1
  store i32 %622, ptr %623, align 4, !tbaa !139
  %624 = load ptr, ptr %27, align 8, !tbaa !37
  %625 = getelementptr inbounds nuw %struct._exon_t, ptr %624, i32 0, i32 0
  %626 = load i32, ptr %625, align 4, !tbaa !41
  %627 = load i32, ptr %31, align 4, !tbaa !25
  %628 = add i32 %626, %627
  %629 = getelementptr inbounds nuw %struct._splice_score_t, ptr %29, i32 0, i32 2
  store i32 %628, ptr %629, align 4, !tbaa !140
  %630 = load ptr, ptr %5, align 8, !tbaa !64
  %631 = load ptr, ptr %6, align 8, !tbaa !64
  %632 = load ptr, ptr %4, align 8, !tbaa !29
  %633 = getelementptr inbounds nuw %struct._result_t, ptr %632, i32 0, i32 4
  %634 = load i32, ptr %633, align 8, !tbaa !142
  call void @compute_max_score(ptr noundef %630, ptr noundef %631, ptr noundef %29, i32 noundef signext %634)
  %635 = call signext i32 @splice_score_compare(ptr noundef %29, ptr noundef %28)
  %636 = icmp sgt i32 %635, 0
  br i1 %636, label %637, label %638

637:                                              ; preds = %605
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %28, ptr align 4 %29, i64 28, i1 false), !tbaa.struct !153
  br label %638

638:                                              ; preds = %637, %605
  br label %639

639:                                              ; preds = %638
  %640 = load i32, ptr %31, align 4, !tbaa !25
  %641 = add i32 %640, 1
  store i32 %641, ptr %31, align 4, !tbaa !25
  br label %601, !llvm.loop !156

642:                                              ; preds = %601
  %643 = getelementptr inbounds nuw %struct._splice_score_t, ptr %28, i32 0, i32 6
  %644 = load i32, ptr %643, align 4, !tbaa !141
  %645 = load ptr, ptr %26, align 8, !tbaa !37
  %646 = getelementptr inbounds nuw %struct._exon_t, ptr %645, i32 0, i32 6
  %647 = zext i32 %644 to i64
  %648 = load i64, ptr %646, align 4
  %649 = and i64 %647, 3
  %650 = shl i64 %649, 32
  %651 = and i64 %648, -12884901889
  %652 = or i64 %651, %650
  store i64 %652, ptr %646, align 4
  %653 = shl i64 %649, 62
  %654 = ashr i64 %653, 62
  %655 = trunc i64 %654 to i32
  %656 = getelementptr inbounds nuw %struct._splice_score_t, ptr %28, i32 0, i32 3
  %657 = load i32, ptr %656, align 4, !tbaa !143
  %658 = load ptr, ptr %26, align 8, !tbaa !37
  %659 = getelementptr inbounds nuw %struct._exon_t, ptr %658, i32 0, i32 6
  %660 = zext i32 %657 to i64
  %661 = load i64, ptr %659, align 4
  %662 = and i64 %660, 255
  %663 = shl i64 %662, 56
  %664 = and i64 %661, 72057594037927935
  %665 = or i64 %664, %663
  store i64 %665, ptr %659, align 4
  %666 = shl i64 %662, 56
  %667 = ashr i64 %666, 56
  %668 = trunc i64 %667 to i32
  %669 = getelementptr inbounds nuw %struct._splice_score_t, ptr %28, i32 0, i32 4
  %670 = load i32, ptr %669, align 4, !tbaa !151
  %671 = load ptr, ptr %26, align 8, !tbaa !37
  %672 = getelementptr inbounds nuw %struct._exon_t, ptr %671, i32 0, i32 6
  %673 = zext i32 %670 to i64
  %674 = load i64, ptr %672, align 4
  %675 = and i64 %673, 4194303
  %676 = shl i64 %675, 34
  %677 = and i64 %674, -72057576858058753
  %678 = or i64 %677, %676
  store i64 %678, ptr %672, align 4
  %679 = trunc i64 %675 to i32
  %680 = getelementptr inbounds nuw %struct._splice_score_t, ptr %28, i32 0, i32 0
  %681 = load i32, ptr %680, align 4, !tbaa !137
  %682 = load ptr, ptr %26, align 8, !tbaa !37
  %683 = getelementptr inbounds nuw %struct._exon_t, ptr %682, i32 0, i32 2
  store i32 %681, ptr %683, align 4, !tbaa !53
  %684 = getelementptr inbounds nuw %struct._splice_score_t, ptr %28, i32 0, i32 1
  %685 = load i32, ptr %684, align 4, !tbaa !139
  %686 = load ptr, ptr %26, align 8, !tbaa !37
  %687 = getelementptr inbounds nuw %struct._exon_t, ptr %686, i32 0, i32 3
  store i32 %685, ptr %687, align 4, !tbaa !52
  %688 = load ptr, ptr %26, align 8, !tbaa !37
  %689 = getelementptr inbounds nuw %struct._exon_t, ptr %688, i32 0, i32 3
  %690 = load i32, ptr %689, align 4, !tbaa !52
  %691 = add i32 %690, 1
  %692 = load ptr, ptr %27, align 8, !tbaa !37
  %693 = getelementptr inbounds nuw %struct._exon_t, ptr %692, i32 0, i32 1
  store i32 %691, ptr %693, align 4, !tbaa !39
  %694 = getelementptr inbounds nuw %struct._splice_score_t, ptr %28, i32 0, i32 2
  %695 = load i32, ptr %694, align 4, !tbaa !140
  %696 = load ptr, ptr %27, align 8, !tbaa !37
  %697 = getelementptr inbounds nuw %struct._exon_t, ptr %696, i32 0, i32 0
  store i32 %695, ptr %697, align 4, !tbaa !41
  store i32 0, ptr %11, align 4
  br label %698

698:                                              ; preds = %642, %588
  call void @llvm.lifetime.end.p0(i64 4, ptr %31) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %30) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr %29) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr %28) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %27) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %26) #8
  %699 = load i32, ptr %11, align 4
  switch i32 %699, label %705 [
    i32 0, label %700
    i32 22, label %701
  ]

700:                                              ; preds = %698
  br label %701

701:                                              ; preds = %700, %698
  %702 = load i32, ptr %7, align 4, !tbaa !25
  %703 = add i32 %702, 1
  store i32 %703, ptr %7, align 4, !tbaa !25
  br label %536, !llvm.loop !157

704:                                              ; preds = %536
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  ret void

705:                                              ; preds = %698, %518, %369, %144
  unreachable
}

; Function Attrs: nounwind
define internal signext i32 @pluri_align(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef signext %5, i32 noundef signext %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct._exon_t, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  store ptr %0, ptr %9, align 8, !tbaa !64
  store ptr %1, ptr %10, align 8, !tbaa !64
  store ptr %2, ptr %11, align 8, !tbaa !99
  store ptr %3, ptr %12, align 8, !tbaa !10
  store ptr %4, ptr %13, align 8, !tbaa !158
  store i32 %5, ptr %14, align 4, !tbaa !25
  store i32 %6, ptr %15, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 32, ptr %16) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #8
  store ptr %16, ptr %17, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8
  store i32 0, ptr %22, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %23) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8
  store ptr null, ptr %23, align 8, !tbaa !160
  %41 = load ptr, ptr %13, align 8, !tbaa !158
  store ptr null, ptr %41, align 8, !tbaa !162
  store i32 0, ptr %21, align 4, !tbaa !25
  %42 = load i32, ptr %14, align 4, !tbaa !25
  store i32 %42, ptr %19, align 4, !tbaa !25
  %43 = load i32, ptr %15, align 4, !tbaa !25
  store i32 %43, ptr %20, align 4, !tbaa !25
  %44 = load i32, ptr %14, align 4, !tbaa !25
  %45 = add nsw i32 %44, 1
  %46 = getelementptr inbounds nuw %struct._exon_t, ptr %16, i32 0, i32 0
  store i32 %45, ptr %46, align 4, !tbaa !41
  %47 = load i32, ptr %15, align 4, !tbaa !25
  %48 = add nsw i32 %47, 1
  %49 = getelementptr inbounds nuw %struct._exon_t, ptr %16, i32 0, i32 1
  store i32 %48, ptr %49, align 4, !tbaa !39
  %50 = getelementptr inbounds nuw %struct._exon_t, ptr %16, i32 0, i32 2
  store i32 0, ptr %50, align 4, !tbaa !53
  %51 = getelementptr inbounds nuw %struct._exon_t, ptr %16, i32 0, i32 3
  store i32 0, ptr %51, align 4, !tbaa !52
  %52 = load ptr, ptr %12, align 8, !tbaa !10
  %53 = getelementptr inbounds nuw %struct._collec_t, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !26
  %55 = sub i32 %54, 1
  store i32 %55, ptr %24, align 4, !tbaa !25
  br label %56

56:                                               ; preds = %455, %7
  %57 = load i32, ptr %24, align 4, !tbaa !25
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %458

59:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 8, ptr %25) #8
  %60 = load ptr, ptr %12, align 8, !tbaa !10
  %61 = getelementptr inbounds nuw %struct._collec_t, ptr %60, i32 0, i32 0
  %62 = load ptr, ptr %61, align 8, !tbaa !28
  %63 = load i32, ptr %24, align 4, !tbaa !25
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds ptr, ptr %62, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !37
  store ptr %66, ptr %25, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %26) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %27) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %28) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %29) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %30) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %31) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %32) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %33) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %34) #8
  %67 = load ptr, ptr %17, align 8, !tbaa !37
  %68 = getelementptr inbounds nuw %struct._exon_t, ptr %67, i32 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !39
  %70 = load ptr, ptr %25, align 8, !tbaa !37
  %71 = getelementptr inbounds nuw %struct._exon_t, ptr %70, i32 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !52
  %73 = sub i32 %69, %72
  %74 = sub i32 %73, 1
  store i32 %74, ptr %18, align 4, !tbaa !25
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %128

76:                                               ; preds = %59
  %77 = load ptr, ptr %17, align 8, !tbaa !37
  %78 = getelementptr inbounds nuw %struct._exon_t, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !53
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %121

81:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr %35) #8
  %82 = call ptr @xmalloc(i64 noundef 40)
  store ptr %82, ptr %35, align 8, !tbaa !162
  %83 = load ptr, ptr %13, align 8, !tbaa !158
  %84 = load ptr, ptr %83, align 8, !tbaa !162
  %85 = load ptr, ptr %35, align 8, !tbaa !162
  %86 = getelementptr inbounds nuw %struct._edit_script_list, ptr %85, i32 0, i32 0
  store ptr %84, ptr %86, align 8, !tbaa !163
  %87 = load ptr, ptr %35, align 8, !tbaa !162
  %88 = load ptr, ptr %13, align 8, !tbaa !158
  store ptr %87, ptr %88, align 8, !tbaa !162
  %89 = load ptr, ptr %23, align 8, !tbaa !160
  %90 = load ptr, ptr %35, align 8, !tbaa !162
  %91 = getelementptr inbounds nuw %struct._edit_script_list, ptr %90, i32 0, i32 1
  store ptr %89, ptr %91, align 8, !tbaa !165
  %92 = load ptr, ptr %17, align 8, !tbaa !37
  %93 = getelementptr inbounds nuw %struct._exon_t, ptr %92, i32 0, i32 0
  %94 = load i32, ptr %93, align 4, !tbaa !41
  %95 = load ptr, ptr %35, align 8, !tbaa !162
  %96 = getelementptr inbounds nuw %struct._edit_script_list, ptr %95, i32 0, i32 2
  store i32 %94, ptr %96, align 8, !tbaa !166
  %97 = load ptr, ptr %17, align 8, !tbaa !37
  %98 = getelementptr inbounds nuw %struct._exon_t, ptr %97, i32 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !39
  %100 = load ptr, ptr %35, align 8, !tbaa !162
  %101 = getelementptr inbounds nuw %struct._edit_script_list, ptr %100, i32 0, i32 3
  store i32 %99, ptr %101, align 4, !tbaa !167
  %102 = load i32, ptr %19, align 4, !tbaa !25
  %103 = load ptr, ptr %35, align 8, !tbaa !162
  %104 = getelementptr inbounds nuw %struct._edit_script_list, ptr %103, i32 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !166
  %106 = sub i32 %102, %105
  %107 = add i32 %106, 1
  %108 = load ptr, ptr %35, align 8, !tbaa !162
  %109 = getelementptr inbounds nuw %struct._edit_script_list, ptr %108, i32 0, i32 4
  store i32 %107, ptr %109, align 8, !tbaa !168
  %110 = load i32, ptr %20, align 4, !tbaa !25
  %111 = load ptr, ptr %35, align 8, !tbaa !162
  %112 = getelementptr inbounds nuw %struct._edit_script_list, ptr %111, i32 0, i32 3
  %113 = load i32, ptr %112, align 4, !tbaa !167
  %114 = sub i32 %110, %113
  %115 = add i32 %114, 1
  %116 = load ptr, ptr %35, align 8, !tbaa !162
  %117 = getelementptr inbounds nuw %struct._edit_script_list, ptr %116, i32 0, i32 5
  store i32 %115, ptr %117, align 4, !tbaa !169
  %118 = load i32, ptr %21, align 4, !tbaa !25
  %119 = load ptr, ptr %35, align 8, !tbaa !162
  %120 = getelementptr inbounds nuw %struct._edit_script_list, ptr %119, i32 0, i32 6
  store i32 %118, ptr %120, align 8, !tbaa !170
  store i32 0, ptr %21, align 4, !tbaa !25
  store ptr null, ptr %23, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 8, ptr %35) #8
  br label %121

121:                                              ; preds = %81, %76
  %122 = load ptr, ptr %25, align 8, !tbaa !37
  %123 = getelementptr inbounds nuw %struct._exon_t, ptr %122, i32 0, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !53
  store i32 %124, ptr %19, align 4, !tbaa !25
  %125 = load ptr, ptr %25, align 8, !tbaa !37
  %126 = getelementptr inbounds nuw %struct._exon_t, ptr %125, i32 0, i32 3
  %127 = load i32, ptr %126, align 4, !tbaa !52
  store i32 %127, ptr %20, align 4, !tbaa !25
  br label %163

128:                                              ; preds = %59
  %129 = load ptr, ptr %17, align 8, !tbaa !37
  %130 = getelementptr inbounds nuw %struct._exon_t, ptr %129, i32 0, i32 0
  %131 = load i32, ptr %130, align 4, !tbaa !41
  %132 = load ptr, ptr %25, align 8, !tbaa !37
  %133 = getelementptr inbounds nuw %struct._exon_t, ptr %132, i32 0, i32 2
  %134 = load i32, ptr %133, align 4, !tbaa !53
  %135 = sub i32 %131, %134
  %136 = sub i32 %135, 1
  store i32 %136, ptr %18, align 4, !tbaa !25
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %128
  %139 = load ptr, ptr %17, align 8, !tbaa !37
  %140 = getelementptr inbounds nuw %struct._exon_t, ptr %139, i32 0, i32 2
  %141 = load i32, ptr %140, align 4, !tbaa !53
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 8, ptr %36) #8
  %144 = call ptr @xmalloc(i64 noundef 16)
  store ptr %144, ptr %36, align 8, !tbaa !160
  %145 = load ptr, ptr %36, align 8, !tbaa !160
  %146 = getelementptr inbounds nuw %struct._edit_script, ptr %145, i32 0, i32 2
  store i8 1, ptr %146, align 4, !tbaa !171
  %147 = load i32, ptr %18, align 4, !tbaa !25
  %148 = load ptr, ptr %36, align 8, !tbaa !160
  %149 = getelementptr inbounds nuw %struct._edit_script, ptr %148, i32 0, i32 1
  store i32 %147, ptr %149, align 8, !tbaa !173
  %150 = load ptr, ptr %23, align 8, !tbaa !160
  %151 = load ptr, ptr %36, align 8, !tbaa !160
  %152 = getelementptr inbounds nuw %struct._edit_script, ptr %151, i32 0, i32 0
  store ptr %150, ptr %152, align 8, !tbaa !174
  %153 = load ptr, ptr %36, align 8, !tbaa !160
  store ptr %153, ptr %23, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 8, ptr %36) #8
  br label %162

154:                                              ; preds = %138, %128
  %155 = load i32, ptr %18, align 4, !tbaa !25
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load ptr, ptr %25, align 8, !tbaa !37
  %159 = getelementptr inbounds nuw %struct._exon_t, ptr %158, i32 0, i32 2
  %160 = load i32, ptr %159, align 4, !tbaa !53
  store i32 %160, ptr %19, align 4, !tbaa !25
  br label %161

161:                                              ; preds = %157, %154
  br label %162

162:                                              ; preds = %161, %143
  br label %163

163:                                              ; preds = %162, %121
  %164 = load ptr, ptr %9, align 8, !tbaa !64
  %165 = load ptr, ptr %10, align 8, !tbaa !64
  %166 = load ptr, ptr %25, align 8, !tbaa !37
  %167 = getelementptr inbounds nuw %struct._exon_t, ptr %166, i32 0, i32 0
  %168 = load i32, ptr %167, align 4, !tbaa !41
  %169 = sub i32 %168, 1
  %170 = load ptr, ptr %25, align 8, !tbaa !37
  %171 = getelementptr inbounds nuw %struct._exon_t, ptr %170, i32 0, i32 1
  %172 = load i32, ptr %171, align 4, !tbaa !39
  %173 = sub i32 %172, 1
  %174 = load ptr, ptr %25, align 8, !tbaa !37
  %175 = getelementptr inbounds nuw %struct._exon_t, ptr %174, i32 0, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !53
  %177 = load ptr, ptr %25, align 8, !tbaa !37
  %178 = getelementptr inbounds nuw %struct._exon_t, ptr %177, i32 0, i32 3
  %179 = load i32, ptr %178, align 4, !tbaa !52
  %180 = load ptr, ptr %25, align 8, !tbaa !37
  %181 = getelementptr inbounds nuw %struct._exon_t, ptr %180, i32 0, i32 3
  %182 = load i32, ptr %181, align 4, !tbaa !52
  %183 = load ptr, ptr %25, align 8, !tbaa !37
  %184 = getelementptr inbounds nuw %struct._exon_t, ptr %183, i32 0, i32 1
  %185 = load i32, ptr %184, align 4, !tbaa !39
  %186 = sub i32 %182, %185
  %187 = add i32 %186, 1
  %188 = uitofp i32 %187 to double
  %189 = fmul double 2.000000e-01, %188
  %190 = fcmp olt double 1.000000e+03, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %163
  %192 = load ptr, ptr %25, align 8, !tbaa !37
  %193 = getelementptr inbounds nuw %struct._exon_t, ptr %192, i32 0, i32 3
  %194 = load i32, ptr %193, align 4, !tbaa !52
  %195 = load ptr, ptr %25, align 8, !tbaa !37
  %196 = getelementptr inbounds nuw %struct._exon_t, ptr %195, i32 0, i32 1
  %197 = load i32, ptr %196, align 4, !tbaa !39
  %198 = sub i32 %194, %197
  %199 = add i32 %198, 1
  %200 = uitofp i32 %199 to double
  %201 = fmul double 2.000000e-01, %200
  br label %203

202:                                              ; preds = %163
  br label %203

203:                                              ; preds = %202, %191
  %204 = phi double [ %201, %191 ], [ 1.000000e+03, %202 ]
  %205 = fptosi double %204 to i32
  %206 = call signext i32 @align_get_dist(ptr noundef %164, ptr noundef %165, i32 noundef signext %169, i32 noundef signext %173, i32 noundef signext %176, i32 noundef signext %179, i32 noundef signext %205)
  store i32 %206, ptr %18, align 4, !tbaa !25
  %207 = load i32, ptr %18, align 4, !tbaa !25
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  store i32 -1, ptr %8, align 4
  store i32 1, ptr %37, align 4
  br label %452

210:                                              ; preds = %203
  %211 = load ptr, ptr %9, align 8, !tbaa !64
  %212 = load ptr, ptr %10, align 8, !tbaa !64
  %213 = load ptr, ptr %25, align 8, !tbaa !37
  %214 = getelementptr inbounds nuw %struct._exon_t, ptr %213, i32 0, i32 0
  %215 = load i32, ptr %214, align 4, !tbaa !41
  %216 = sub i32 %215, 1
  %217 = load ptr, ptr %25, align 8, !tbaa !37
  %218 = getelementptr inbounds nuw %struct._exon_t, ptr %217, i32 0, i32 1
  %219 = load i32, ptr %218, align 4, !tbaa !39
  %220 = sub i32 %219, 1
  %221 = load ptr, ptr %25, align 8, !tbaa !37
  %222 = getelementptr inbounds nuw %struct._exon_t, ptr %221, i32 0, i32 2
  %223 = load i32, ptr %222, align 4, !tbaa !53
  %224 = load ptr, ptr %25, align 8, !tbaa !37
  %225 = getelementptr inbounds nuw %struct._exon_t, ptr %224, i32 0, i32 3
  %226 = load i32, ptr %225, align 4, !tbaa !52
  %227 = load i32, ptr %18, align 4, !tbaa !25
  %228 = load i32, ptr %14, align 4, !tbaa !25
  %229 = load i32, ptr %15, align 4, !tbaa !25
  call void @align_path(ptr noundef %211, ptr noundef %212, i32 noundef signext %216, i32 noundef signext %220, i32 noundef signext %223, i32 noundef signext %226, i32 noundef signext %227, ptr noundef %26, ptr noundef %27, i32 noundef signext %228, i32 noundef signext %229)
  %230 = load ptr, ptr %27, align 8, !tbaa !160
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %233

232:                                              ; preds = %210
  store i32 -1, ptr %8, align 4
  store i32 1, ptr %37, align 4
  br label %452

233:                                              ; preds = %210
  call void @Condense_both_Ends(ptr noundef %26, ptr noundef %27, ptr noundef %28)
  %234 = load ptr, ptr %17, align 8, !tbaa !37
  %235 = getelementptr inbounds nuw %struct._exon_t, ptr %234, i32 0, i32 2
  %236 = load i32, ptr %235, align 4, !tbaa !53
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %284, label %238

238:                                              ; preds = %233
  %239 = load ptr, ptr %27, align 8, !tbaa !160
  %240 = getelementptr inbounds nuw %struct._edit_script, ptr %239, i32 0, i32 2
  %241 = load i8, ptr %240, align 4, !tbaa !171
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %284

244:                                              ; preds = %238
  %245 = load ptr, ptr %27, align 8, !tbaa !160
  %246 = getelementptr inbounds nuw %struct._edit_script, ptr %245, i32 0, i32 1
  %247 = load i32, ptr %246, align 8, !tbaa !173
  %248 = add nsw i32 0, %247
  %249 = load i32, ptr %18, align 4, !tbaa !25
  %250 = sub nsw i32 %249, %248
  store i32 %250, ptr %18, align 4, !tbaa !25
  %251 = load ptr, ptr %27, align 8, !tbaa !160
  %252 = getelementptr inbounds nuw %struct._edit_script, ptr %251, i32 0, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !173
  %254 = load ptr, ptr %25, align 8, !tbaa !37
  %255 = getelementptr inbounds nuw %struct._exon_t, ptr %254, i32 0, i32 2
  %256 = load i32, ptr %255, align 4, !tbaa !53
  %257 = sub i32 %256, %253
  store i32 %257, ptr %255, align 4, !tbaa !53
  %258 = load ptr, ptr %27, align 8, !tbaa !160
  %259 = getelementptr inbounds nuw %struct._edit_script, ptr %258, i32 0, i32 1
  %260 = load i32, ptr %259, align 8, !tbaa !173
  %261 = load i32, ptr %19, align 4, !tbaa !25
  %262 = sub nsw i32 %261, %260
  store i32 %262, ptr %19, align 4, !tbaa !25
  %263 = load ptr, ptr %23, align 8, !tbaa !160
  %264 = icmp ne ptr %263, null
  br i1 %264, label %265, label %279

265:                                              ; preds = %244
  %266 = load ptr, ptr %23, align 8, !tbaa !160
  %267 = getelementptr inbounds nuw %struct._edit_script, ptr %266, i32 0, i32 2
  %268 = load i8, ptr %267, align 4, !tbaa !171
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %269, 1
  br i1 %270, label %271, label %279

271:                                              ; preds = %265
  %272 = load ptr, ptr %27, align 8, !tbaa !160
  %273 = getelementptr inbounds nuw %struct._edit_script, ptr %272, i32 0, i32 1
  %274 = load i32, ptr %273, align 8, !tbaa !173
  %275 = load ptr, ptr %23, align 8, !tbaa !160
  %276 = getelementptr inbounds nuw %struct._edit_script, ptr %275, i32 0, i32 1
  %277 = load i32, ptr %276, align 8, !tbaa !173
  %278 = add nsw i32 %277, %274
  store i32 %278, ptr %276, align 8, !tbaa !173
  br label %279

279:                                              ; preds = %271, %265, %244
  %280 = load ptr, ptr %27, align 8, !tbaa !160
  call void @free(ptr noundef %280) #8
  %281 = load ptr, ptr %28, align 8, !tbaa !160
  %282 = getelementptr inbounds nuw %struct._edit_script, ptr %281, i32 0, i32 0
  store ptr null, ptr %282, align 8, !tbaa !174
  %283 = load ptr, ptr %28, align 8, !tbaa !160
  store ptr %283, ptr %27, align 8, !tbaa !160
  br label %284

284:                                              ; preds = %279, %238, %233
  %285 = load i32, ptr %24, align 4, !tbaa !25
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %321

287:                                              ; preds = %284
  %288 = load ptr, ptr %26, align 8, !tbaa !160
  %289 = icmp ne ptr %288, null
  br i1 %289, label %290, label %321

290:                                              ; preds = %287
  %291 = load ptr, ptr %26, align 8, !tbaa !160
  %292 = getelementptr inbounds nuw %struct._edit_script, ptr %291, i32 0, i32 2
  %293 = load i8, ptr %292, align 4, !tbaa !171
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 1
  br i1 %295, label %296, label %321

296:                                              ; preds = %290
  %297 = load ptr, ptr %26, align 8, !tbaa !160
  %298 = getelementptr inbounds nuw %struct._edit_script, ptr %297, i32 0, i32 1
  %299 = load i32, ptr %298, align 8, !tbaa !173
  %300 = add nsw i32 0, %299
  %301 = load i32, ptr %18, align 4, !tbaa !25
  %302 = sub nsw i32 %301, %300
  store i32 %302, ptr %18, align 4, !tbaa !25
  %303 = load ptr, ptr %26, align 8, !tbaa !160
  %304 = getelementptr inbounds nuw %struct._edit_script, ptr %303, i32 0, i32 1
  %305 = load i32, ptr %304, align 8, !tbaa !173
  %306 = load ptr, ptr %25, align 8, !tbaa !37
  %307 = getelementptr inbounds nuw %struct._exon_t, ptr %306, i32 0, i32 0
  %308 = load i32, ptr %307, align 4, !tbaa !41
  %309 = add i32 %308, %305
  store i32 %309, ptr %307, align 4, !tbaa !41
  %310 = load ptr, ptr %26, align 8, !tbaa !160
  %311 = getelementptr inbounds nuw %struct._edit_script, ptr %310, i32 0, i32 0
  %312 = load ptr, ptr %311, align 8, !tbaa !174
  store ptr %312, ptr %29, align 8, !tbaa !160
  %313 = load ptr, ptr %27, align 8, !tbaa !160
  %314 = load ptr, ptr %26, align 8, !tbaa !160
  %315 = icmp eq ptr %313, %314
  br i1 %315, label %316, label %318

316:                                              ; preds = %296
  %317 = load ptr, ptr %29, align 8, !tbaa !160
  store ptr %317, ptr %27, align 8, !tbaa !160
  br label %318

318:                                              ; preds = %316, %296
  %319 = load ptr, ptr %26, align 8, !tbaa !160
  call void @free(ptr noundef %319) #8
  %320 = load ptr, ptr %29, align 8, !tbaa !160
  store ptr %320, ptr %26, align 8, !tbaa !160
  br label %321

321:                                              ; preds = %318, %290, %287, %284
  %322 = load i32, ptr %18, align 4, !tbaa !25
  %323 = load i32, ptr %21, align 4, !tbaa !25
  %324 = add nsw i32 %323, %322
  store i32 %324, ptr %21, align 4, !tbaa !25
  %325 = load ptr, ptr %9, align 8, !tbaa !64
  %326 = load ptr, ptr %25, align 8, !tbaa !37
  %327 = getelementptr inbounds nuw %struct._exon_t, ptr %326, i32 0, i32 0
  %328 = load i32, ptr %327, align 4, !tbaa !41
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds nuw i8, ptr %325, i64 %329
  %331 = getelementptr inbounds i8, ptr %330, i64 -1
  store ptr %331, ptr %30, align 8, !tbaa !64
  %332 = load ptr, ptr %10, align 8, !tbaa !64
  %333 = load ptr, ptr %25, align 8, !tbaa !37
  %334 = getelementptr inbounds nuw %struct._exon_t, ptr %333, i32 0, i32 1
  %335 = load i32, ptr %334, align 4, !tbaa !39
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds nuw i8, ptr %332, i64 %336
  %338 = getelementptr inbounds i8, ptr %337, i64 -1
  store ptr %338, ptr %31, align 8, !tbaa !64
  store i32 0, ptr %33, align 4, !tbaa !25
  store i32 0, ptr %32, align 4, !tbaa !25
  %339 = load ptr, ptr %26, align 8, !tbaa !160
  store ptr %339, ptr %29, align 8, !tbaa !160
  br label %340

340:                                              ; preds = %412, %321
  %341 = load ptr, ptr %29, align 8, !tbaa !160
  %342 = icmp ne ptr %341, null
  br i1 %342, label %343, label %416

343:                                              ; preds = %340
  %344 = load ptr, ptr %29, align 8, !tbaa !160
  %345 = getelementptr inbounds nuw %struct._edit_script, ptr %344, i32 0, i32 2
  %346 = load i8, ptr %345, align 4, !tbaa !171
  %347 = sext i8 %346 to i32
  switch i32 %347, label %412 [
    i32 1, label %348
    i32 2, label %365
    i32 3, label %382
  ]

348:                                              ; preds = %343
  %349 = load ptr, ptr %29, align 8, !tbaa !160
  %350 = getelementptr inbounds nuw %struct._edit_script, ptr %349, i32 0, i32 1
  %351 = load i32, ptr %350, align 8, !tbaa !173
  %352 = load i32, ptr %33, align 4, !tbaa !25
  %353 = add nsw i32 %352, %351
  store i32 %353, ptr %33, align 4, !tbaa !25
  %354 = load ptr, ptr %29, align 8, !tbaa !160
  %355 = getelementptr inbounds nuw %struct._edit_script, ptr %354, i32 0, i32 1
  %356 = load i32, ptr %355, align 8, !tbaa !173
  %357 = load i32, ptr %32, align 4, !tbaa !25
  %358 = add nsw i32 %357, %356
  store i32 %358, ptr %32, align 4, !tbaa !25
  %359 = load ptr, ptr %29, align 8, !tbaa !160
  %360 = getelementptr inbounds nuw %struct._edit_script, ptr %359, i32 0, i32 1
  %361 = load i32, ptr %360, align 8, !tbaa !173
  %362 = load ptr, ptr %30, align 8, !tbaa !64
  %363 = sext i32 %361 to i64
  %364 = getelementptr inbounds i8, ptr %362, i64 %363
  store ptr %364, ptr %30, align 8, !tbaa !64
  br label %412

365:                                              ; preds = %343
  %366 = load ptr, ptr %29, align 8, !tbaa !160
  %367 = getelementptr inbounds nuw %struct._edit_script, ptr %366, i32 0, i32 1
  %368 = load i32, ptr %367, align 8, !tbaa !173
  %369 = load i32, ptr %33, align 4, !tbaa !25
  %370 = add nsw i32 %369, %368
  store i32 %370, ptr %33, align 4, !tbaa !25
  %371 = load ptr, ptr %29, align 8, !tbaa !160
  %372 = getelementptr inbounds nuw %struct._edit_script, ptr %371, i32 0, i32 1
  %373 = load i32, ptr %372, align 8, !tbaa !173
  %374 = load i32, ptr %32, align 4, !tbaa !25
  %375 = add nsw i32 %374, %373
  store i32 %375, ptr %32, align 4, !tbaa !25
  %376 = load ptr, ptr %29, align 8, !tbaa !160
  %377 = getelementptr inbounds nuw %struct._edit_script, ptr %376, i32 0, i32 1
  %378 = load i32, ptr %377, align 8, !tbaa !173
  %379 = load ptr, ptr %31, align 8, !tbaa !64
  %380 = sext i32 %378 to i64
  %381 = getelementptr inbounds i8, ptr %379, i64 %380
  store ptr %381, ptr %31, align 8, !tbaa !64
  br label %412

382:                                              ; preds = %343
  call void @llvm.lifetime.start.p0(i64 4, ptr %38) #8
  store i32 0, ptr %38, align 4, !tbaa !25
  br label %383

383:                                              ; preds = %404, %382
  %384 = load i32, ptr %38, align 4, !tbaa !25
  %385 = load ptr, ptr %29, align 8, !tbaa !160
  %386 = getelementptr inbounds nuw %struct._edit_script, ptr %385, i32 0, i32 1
  %387 = load i32, ptr %386, align 8, !tbaa !173
  %388 = icmp slt i32 %384, %387
  br i1 %388, label %389, label %411

389:                                              ; preds = %383
  %390 = load ptr, ptr %30, align 8, !tbaa !64
  %391 = load i8, ptr %390, align 1, !tbaa !28
  %392 = zext i8 %391 to i32
  %393 = load ptr, ptr %31, align 8, !tbaa !64
  %394 = load i8, ptr %393, align 1, !tbaa !28
  %395 = zext i8 %394 to i32
  %396 = icmp ne i32 %392, %395
  br i1 %396, label %397, label %400

397:                                              ; preds = %389
  %398 = load i32, ptr %32, align 4, !tbaa !25
  %399 = add nsw i32 %398, 1
  store i32 %399, ptr %32, align 4, !tbaa !25
  br label %403

400:                                              ; preds = %389
  %401 = load i32, ptr %22, align 4, !tbaa !25
  %402 = add i32 %401, 1
  store i32 %402, ptr %22, align 4, !tbaa !25
  br label %403

403:                                              ; preds = %400, %397
  br label %404

404:                                              ; preds = %403
  %405 = load i32, ptr %38, align 4, !tbaa !25
  %406 = add nsw i32 %405, 1
  store i32 %406, ptr %38, align 4, !tbaa !25
  %407 = load ptr, ptr %30, align 8, !tbaa !64
  %408 = getelementptr inbounds nuw i8, ptr %407, i32 1
  store ptr %408, ptr %30, align 8, !tbaa !64
  %409 = load ptr, ptr %31, align 8, !tbaa !64
  %410 = getelementptr inbounds nuw i8, ptr %409, i32 1
  store ptr %410, ptr %31, align 8, !tbaa !64
  br label %383, !llvm.loop !175

411:                                              ; preds = %383
  store i32 7, ptr %37, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %38) #8
  br label %412

412:                                              ; preds = %343, %411, %365, %348
  %413 = load ptr, ptr %29, align 8, !tbaa !160
  %414 = getelementptr inbounds nuw %struct._edit_script, ptr %413, i32 0, i32 0
  %415 = load ptr, ptr %414, align 8, !tbaa !174
  store ptr %415, ptr %29, align 8, !tbaa !160
  br label %340, !llvm.loop !176

416:                                              ; preds = %340
  %417 = load ptr, ptr %25, align 8, !tbaa !37
  %418 = getelementptr inbounds nuw %struct._exon_t, ptr %417, i32 0, i32 2
  %419 = load i32, ptr %418, align 4, !tbaa !53
  %420 = load ptr, ptr %25, align 8, !tbaa !37
  %421 = getelementptr inbounds nuw %struct._exon_t, ptr %420, i32 0, i32 0
  %422 = load i32, ptr %421, align 4, !tbaa !41
  %423 = sub i32 %419, %422
  %424 = add i32 %423, 1
  %425 = load ptr, ptr %25, align 8, !tbaa !37
  %426 = getelementptr inbounds nuw %struct._exon_t, ptr %425, i32 0, i32 3
  %427 = load i32, ptr %426, align 4, !tbaa !52
  %428 = add i32 %424, %427
  %429 = load ptr, ptr %25, align 8, !tbaa !37
  %430 = getelementptr inbounds nuw %struct._exon_t, ptr %429, i32 0, i32 1
  %431 = load i32, ptr %430, align 4, !tbaa !39
  %432 = sub i32 %428, %431
  %433 = add i32 %432, 1
  %434 = load i32, ptr %33, align 4, !tbaa !25
  %435 = add i32 %433, %434
  %436 = uitofp i32 %435 to double
  %437 = fdiv double %436, 2.000000e+00
  %438 = fptosi double %437 to i32
  store i32 %438, ptr %34, align 4, !tbaa !25
  %439 = load i32, ptr %34, align 4, !tbaa !25
  %440 = load i32, ptr %32, align 4, !tbaa !25
  %441 = sub nsw i32 %439, %440
  %442 = mul nsw i32 %441, 100
  %443 = load i32, ptr %34, align 4, !tbaa !25
  %444 = sdiv i32 %442, %443
  %445 = load ptr, ptr %25, align 8, !tbaa !37
  %446 = getelementptr inbounds nuw %struct._exon_t, ptr %445, i32 0, i32 4
  store i32 %444, ptr %446, align 4, !tbaa !177
  %447 = load ptr, ptr %23, align 8, !tbaa !160
  %448 = load ptr, ptr %27, align 8, !tbaa !160
  %449 = getelementptr inbounds nuw %struct._edit_script, ptr %448, i32 0, i32 0
  store ptr %447, ptr %449, align 8, !tbaa !174
  %450 = load ptr, ptr %26, align 8, !tbaa !160
  store ptr %450, ptr %23, align 8, !tbaa !160
  %451 = load ptr, ptr %25, align 8, !tbaa !37
  store ptr %451, ptr %17, align 8, !tbaa !37
  store i32 0, ptr %37, align 4
  br label %452

452:                                              ; preds = %416, %232, %209
  call void @llvm.lifetime.end.p0(i64 4, ptr %34) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %33) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %32) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %31) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %30) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %29) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %28) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %27) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %26) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %25) #8
  %453 = load i32, ptr %37, align 4
  switch i32 %453, label %553 [
    i32 0, label %454
  ]

454:                                              ; preds = %452
  br label %455

455:                                              ; preds = %454
  %456 = load i32, ptr %24, align 4, !tbaa !25
  %457 = add nsw i32 %456, -1
  store i32 %457, ptr %24, align 4, !tbaa !25
  br label %56, !llvm.loop !178

458:                                              ; preds = %56
  %459 = load ptr, ptr %17, align 8, !tbaa !37
  %460 = getelementptr inbounds nuw %struct._exon_t, ptr %459, i32 0, i32 1
  %461 = load i32, ptr %460, align 4, !tbaa !39
  %462 = sub i32 %461, 1
  store i32 %462, ptr %18, align 4, !tbaa !25
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %508

464:                                              ; preds = %458
  %465 = load i32, ptr %18, align 4, !tbaa !25
  %466 = load i32, ptr %15, align 4, !tbaa !25
  %467 = icmp ne i32 %465, %466
  br i1 %467, label %468, label %508

468:                                              ; preds = %464
  call void @llvm.lifetime.start.p0(i64 8, ptr %39) #8
  %469 = call ptr @xmalloc(i64 noundef 40)
  store ptr %469, ptr %39, align 8, !tbaa !162
  %470 = load ptr, ptr %13, align 8, !tbaa !158
  %471 = load ptr, ptr %470, align 8, !tbaa !162
  %472 = load ptr, ptr %39, align 8, !tbaa !162
  %473 = getelementptr inbounds nuw %struct._edit_script_list, ptr %472, i32 0, i32 0
  store ptr %471, ptr %473, align 8, !tbaa !163
  %474 = load ptr, ptr %39, align 8, !tbaa !162
  %475 = load ptr, ptr %13, align 8, !tbaa !158
  store ptr %474, ptr %475, align 8, !tbaa !162
  %476 = load ptr, ptr %17, align 8, !tbaa !37
  %477 = getelementptr inbounds nuw %struct._exon_t, ptr %476, i32 0, i32 0
  %478 = load i32, ptr %477, align 4, !tbaa !41
  %479 = load ptr, ptr %39, align 8, !tbaa !162
  %480 = getelementptr inbounds nuw %struct._edit_script_list, ptr %479, i32 0, i32 2
  store i32 %478, ptr %480, align 8, !tbaa !166
  %481 = load ptr, ptr %17, align 8, !tbaa !37
  %482 = getelementptr inbounds nuw %struct._exon_t, ptr %481, i32 0, i32 1
  %483 = load i32, ptr %482, align 4, !tbaa !39
  %484 = load ptr, ptr %39, align 8, !tbaa !162
  %485 = getelementptr inbounds nuw %struct._edit_script_list, ptr %484, i32 0, i32 3
  store i32 %483, ptr %485, align 4, !tbaa !167
  %486 = load i32, ptr %19, align 4, !tbaa !25
  %487 = load ptr, ptr %39, align 8, !tbaa !162
  %488 = getelementptr inbounds nuw %struct._edit_script_list, ptr %487, i32 0, i32 2
  %489 = load i32, ptr %488, align 8, !tbaa !166
  %490 = sub i32 %486, %489
  %491 = add i32 %490, 1
  %492 = load ptr, ptr %39, align 8, !tbaa !162
  %493 = getelementptr inbounds nuw %struct._edit_script_list, ptr %492, i32 0, i32 4
  store i32 %491, ptr %493, align 8, !tbaa !168
  %494 = load i32, ptr %20, align 4, !tbaa !25
  %495 = load ptr, ptr %39, align 8, !tbaa !162
  %496 = getelementptr inbounds nuw %struct._edit_script_list, ptr %495, i32 0, i32 3
  %497 = load i32, ptr %496, align 4, !tbaa !167
  %498 = sub i32 %494, %497
  %499 = add i32 %498, 1
  %500 = load ptr, ptr %39, align 8, !tbaa !162
  %501 = getelementptr inbounds nuw %struct._edit_script_list, ptr %500, i32 0, i32 5
  store i32 %499, ptr %501, align 4, !tbaa !169
  %502 = load ptr, ptr %23, align 8, !tbaa !160
  %503 = load ptr, ptr %39, align 8, !tbaa !162
  %504 = getelementptr inbounds nuw %struct._edit_script_list, ptr %503, i32 0, i32 1
  store ptr %502, ptr %504, align 8, !tbaa !165
  %505 = load i32, ptr %21, align 4, !tbaa !25
  %506 = load ptr, ptr %39, align 8, !tbaa !162
  %507 = getelementptr inbounds nuw %struct._edit_script_list, ptr %506, i32 0, i32 6
  store i32 %505, ptr %507, align 8, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 8, ptr %39) #8
  br label %550

508:                                              ; preds = %464, %458
  %509 = load i32, ptr %18, align 4, !tbaa !25
  %510 = load i32, ptr %15, align 4, !tbaa !25
  %511 = icmp ne i32 %509, %510
  br i1 %511, label %512, label %549

512:                                              ; preds = %508
  call void @llvm.lifetime.start.p0(i64 8, ptr %40) #8
  %513 = call ptr @xmalloc(i64 noundef 40)
  store ptr %513, ptr %40, align 8, !tbaa !162
  %514 = load ptr, ptr %13, align 8, !tbaa !158
  %515 = load ptr, ptr %514, align 8, !tbaa !162
  %516 = load ptr, ptr %40, align 8, !tbaa !162
  %517 = getelementptr inbounds nuw %struct._edit_script_list, ptr %516, i32 0, i32 0
  store ptr %515, ptr %517, align 8, !tbaa !163
  %518 = load ptr, ptr %40, align 8, !tbaa !162
  %519 = load ptr, ptr %13, align 8, !tbaa !158
  store ptr %518, ptr %519, align 8, !tbaa !162
  %520 = load ptr, ptr %17, align 8, !tbaa !37
  %521 = getelementptr inbounds nuw %struct._exon_t, ptr %520, i32 0, i32 0
  %522 = load i32, ptr %521, align 4, !tbaa !41
  %523 = load ptr, ptr %40, align 8, !tbaa !162
  %524 = getelementptr inbounds nuw %struct._edit_script_list, ptr %523, i32 0, i32 2
  store i32 %522, ptr %524, align 8, !tbaa !166
  %525 = load ptr, ptr %40, align 8, !tbaa !162
  %526 = getelementptr inbounds nuw %struct._edit_script_list, ptr %525, i32 0, i32 3
  store i32 1, ptr %526, align 4, !tbaa !167
  %527 = load i32, ptr %19, align 4, !tbaa !25
  %528 = load ptr, ptr %40, align 8, !tbaa !162
  %529 = getelementptr inbounds nuw %struct._edit_script_list, ptr %528, i32 0, i32 2
  %530 = load i32, ptr %529, align 8, !tbaa !166
  %531 = sub i32 %527, %530
  %532 = add i32 %531, 1
  %533 = load ptr, ptr %40, align 8, !tbaa !162
  %534 = getelementptr inbounds nuw %struct._edit_script_list, ptr %533, i32 0, i32 4
  store i32 %532, ptr %534, align 8, !tbaa !168
  %535 = load i32, ptr %20, align 4, !tbaa !25
  %536 = load ptr, ptr %40, align 8, !tbaa !162
  %537 = getelementptr inbounds nuw %struct._edit_script_list, ptr %536, i32 0, i32 3
  %538 = load i32, ptr %537, align 4, !tbaa !167
  %539 = sub i32 %535, %538
  %540 = add i32 %539, 1
  %541 = load ptr, ptr %40, align 8, !tbaa !162
  %542 = getelementptr inbounds nuw %struct._edit_script_list, ptr %541, i32 0, i32 5
  store i32 %540, ptr %542, align 4, !tbaa !169
  %543 = load ptr, ptr %23, align 8, !tbaa !160
  %544 = load ptr, ptr %40, align 8, !tbaa !162
  %545 = getelementptr inbounds nuw %struct._edit_script_list, ptr %544, i32 0, i32 1
  store ptr %543, ptr %545, align 8, !tbaa !165
  %546 = load i32, ptr %21, align 4, !tbaa !25
  %547 = load ptr, ptr %40, align 8, !tbaa !162
  %548 = getelementptr inbounds nuw %struct._edit_script_list, ptr %547, i32 0, i32 6
  store i32 %546, ptr %548, align 8, !tbaa !170
  call void @llvm.lifetime.end.p0(i64 8, ptr %40) #8
  br label %549

549:                                              ; preds = %512, %508
  br label %550

550:                                              ; preds = %549, %468
  %551 = load i32, ptr %22, align 4, !tbaa !25
  %552 = load ptr, ptr %11, align 8, !tbaa !99
  store i32 %551, ptr %552, align 4, !tbaa !25
  store i32 0, ptr %8, align 4
  store i32 1, ptr %37, align 4
  br label %553

553:                                              ; preds = %550, %452
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %16) #8
  %554 = load i32, ptr %8, align 4
  ret i32 %554
}

; Function Attrs: nounwind
define dso_local void @free_align(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #8
  %4 = load ptr, ptr %2, align 8, !tbaa !162
  store ptr %4, ptr %3, align 8, !tbaa !162
  br label %5

5:                                                ; preds = %8, %1
  %6 = load ptr, ptr %2, align 8, !tbaa !162
  store ptr %6, ptr %3, align 8, !tbaa !162
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load ptr, ptr %2, align 8, !tbaa !162
  %10 = getelementptr inbounds nuw %struct._edit_script_list, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8, !tbaa !163
  store ptr %11, ptr %2, align 8, !tbaa !162
  %12 = load ptr, ptr %3, align 8, !tbaa !162
  %13 = getelementptr inbounds nuw %struct._edit_script_list, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !165
  call void @Free_script(ptr noundef %14)
  %15 = load ptr, ptr %3, align 8, !tbaa !162
  call void @free(ptr noundef %15) #8
  br label %5, !llvm.loop !179

16:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #8
  ret void
}

declare ptr @xmalloc(i64 noundef) #4

; Function Attrs: nounwind
define dso_local void @init_encoding() #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #8
  store i32 0, ptr %1, align 4, !tbaa !25
  br label %2

2:                                                ; preds = %9, %0
  %3 = load i32, ptr %1, align 4, !tbaa !25
  %4 = icmp ult i32 %3, 128
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4, !tbaa !25
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds nuw [128 x i32], ptr @encoding, i64 0, i64 %7
  store i32 4, ptr %8, align 4, !tbaa !25
  br label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %1, align 4, !tbaa !25
  %11 = add i32 %10, 1
  store i32 %11, ptr %1, align 4, !tbaa !25
  br label %2, !llvm.loop !180

12:                                               ; preds = %2
  store i32 0, ptr getelementptr inbounds ([128 x i32], ptr @encoding, i64 0, i64 65), align 4, !tbaa !25
  store i32 1, ptr getelementptr inbounds ([128 x i32], ptr @encoding, i64 0, i64 67), align 4, !tbaa !25
  store i32 2, ptr getelementptr inbounds ([128 x i32], ptr @encoding, i64 0, i64 71), align 4, !tbaa !25
  store i32 3, ptr getelementptr inbounds ([128 x i32], ptr @encoding, i64 0, i64 84), align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #8
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) #4

declare void @tdestroy(ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind
define internal void @add_word(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #5 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !25
  store i32 %2, ptr %6, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #8
  %9 = call ptr @xmalloc(i64 noundef 8)
  store ptr %9, ptr %7, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  %10 = load i32, ptr %5, align 4, !tbaa !25
  %11 = load ptr, ptr %7, align 8, !tbaa !181
  %12 = getelementptr inbounds nuw %struct._hash_node_t, ptr %11, i32 0, i32 0
  store i32 %10, ptr %12, align 4, !tbaa !183
  %13 = load ptr, ptr %7, align 8, !tbaa !181
  %14 = load ptr, ptr %4, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct._hash_env_t, ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = load i32, ptr %5, align 4, !tbaa !25
  %18 = and i32 %17, 524287
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds nuw ptr, ptr %16, i64 %19
  %21 = call ptr @tsearch(ptr noundef %13, ptr noundef %20, ptr noundef @hash_node_compare)
  store ptr %21, ptr %8, align 8, !tbaa !185
  %22 = load ptr, ptr %8, align 8, !tbaa !185
  %23 = load ptr, ptr %22, align 8, !tbaa !181
  %24 = load ptr, ptr %7, align 8, !tbaa !181
  %25 = icmp ne ptr %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %3
  %27 = load ptr, ptr %7, align 8, !tbaa !181
  call void @free(ptr noundef %27) #8
  %28 = load ptr, ptr %8, align 8, !tbaa !185
  %29 = load ptr, ptr %28, align 8, !tbaa !181
  %30 = getelementptr inbounds nuw %struct._hash_node_t, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !187
  %32 = load ptr, ptr %4, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct._hash_env_t, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = load i32, ptr %6, align 4, !tbaa !25
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw i32, ptr %34, i64 %36
  store i32 %31, ptr %37, align 4, !tbaa !25
  br label %45

38:                                               ; preds = %3
  %39 = load ptr, ptr %4, align 8, !tbaa !3
  %40 = getelementptr inbounds nuw %struct._hash_env_t, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !88
  %42 = load i32, ptr %6, align 4, !tbaa !25
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw i32, ptr %41, i64 %43
  store i32 -1, ptr %44, align 4, !tbaa !25
  br label %45

45:                                               ; preds = %38, %26
  %46 = load i32, ptr %6, align 4, !tbaa !25
  %47 = load ptr, ptr %8, align 8, !tbaa !185
  %48 = load ptr, ptr %47, align 8, !tbaa !181
  %49 = getelementptr inbounds nuw %struct._hash_node_t, ptr %48, i32 0, i32 1
  store i32 %46, ptr %49, align 4, !tbaa !187
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #8
  ret void
}

; Function Attrs: nounwind
define dso_local void @print_exons(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !10
  store i32 %1, ptr %4, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  %8 = load ptr, ptr %3, align 8, !tbaa !10
  %9 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !26
  %11 = sub i32 %10, 1
  store i32 %11, ptr %6, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #8
  store i32 0, ptr %5, align 4, !tbaa !25
  br label %12

12:                                               ; preds = %107, %2
  %13 = load i32, ptr %5, align 4, !tbaa !25
  %14 = load i32, ptr %6, align 4, !tbaa !25
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %110

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8, !tbaa !10
  %18 = getelementptr inbounds nuw %struct._collec_t, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8, !tbaa !28
  %20 = load i32, ptr %5, align 4, !tbaa !25
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds nuw ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  store ptr %23, ptr %7, align 8, !tbaa !37
  %24 = load i32, ptr %4, align 4, !tbaa !25
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %16
  %27 = load ptr, ptr %7, align 8, !tbaa !37
  %28 = getelementptr inbounds nuw %struct._exon_t, ptr %27, i32 0, i32 6
  %29 = load i64, ptr %28, align 4
  %30 = ashr i64 %29, 56
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %26, %16
  %34 = load ptr, ptr %7, align 8, !tbaa !37
  %35 = getelementptr inbounds nuw %struct._exon_t, ptr %34, i32 0, i32 0
  %36 = load i32, ptr %35, align 4, !tbaa !41
  %37 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !188
  %38 = add i32 %36, %37
  %39 = load ptr, ptr %7, align 8, !tbaa !37
  %40 = getelementptr inbounds nuw %struct._exon_t, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !53
  %42 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !188
  %43 = add i32 %41, %42
  %44 = load ptr, ptr %7, align 8, !tbaa !37
  %45 = getelementptr inbounds nuw %struct._exon_t, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !39
  %47 = load ptr, ptr %7, align 8, !tbaa !37
  %48 = getelementptr inbounds nuw %struct._exon_t, ptr %47, i32 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !52
  %50 = load ptr, ptr %7, align 8, !tbaa !37
  %51 = getelementptr inbounds nuw %struct._exon_t, ptr %50, i32 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !177
  %53 = call signext i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef signext %38, i32 noundef signext %43, i32 noundef signext %46, i32 noundef signext %49, i32 noundef signext %52)
  br label %106

54:                                               ; preds = %26
  %55 = load ptr, ptr %7, align 8, !tbaa !37
  %56 = getelementptr inbounds nuw %struct._exon_t, ptr %55, i32 0, i32 0
  %57 = load i32, ptr %56, align 4, !tbaa !41
  %58 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !188
  %59 = add i32 %57, %58
  %60 = load ptr, ptr %7, align 8, !tbaa !37
  %61 = getelementptr inbounds nuw %struct._exon_t, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !53
  %63 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !188
  %64 = add i32 %62, %63
  %65 = load ptr, ptr %7, align 8, !tbaa !37
  %66 = getelementptr inbounds nuw %struct._exon_t, ptr %65, i32 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !39
  %68 = load ptr, ptr %7, align 8, !tbaa !37
  %69 = getelementptr inbounds nuw %struct._exon_t, ptr %68, i32 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !52
  %71 = load ptr, ptr %7, align 8, !tbaa !37
  %72 = getelementptr inbounds nuw %struct._exon_t, ptr %71, i32 0, i32 4
  %73 = load i32, ptr %72, align 4, !tbaa !177
  %74 = load i32, ptr %4, align 4, !tbaa !25
  %75 = icmp sgt i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, ptr @.str.2, ptr @.str.3
  %78 = load ptr, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 1), align 8, !tbaa !189
  %79 = load ptr, ptr %7, align 8, !tbaa !37
  %80 = getelementptr inbounds nuw %struct._exon_t, ptr %79, i32 0, i32 6
  %81 = load i64, ptr %80, align 4
  %82 = ashr i64 %81, 56
  %83 = trunc i64 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct._junction_t, ptr %78, i64 %84
  %86 = getelementptr inbounds nuw %struct._junction_t, ptr %85, i32 0, i32 0
  %87 = getelementptr inbounds [4 x i8], ptr %86, i64 0, i64 0
  %88 = load ptr, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 1), align 8, !tbaa !189
  %89 = load ptr, ptr %7, align 8, !tbaa !37
  %90 = getelementptr inbounds nuw %struct._exon_t, ptr %89, i32 0, i32 6
  %91 = load i64, ptr %90, align 4
  %92 = ashr i64 %91, 56
  %93 = trunc i64 %92 to i32
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct._junction_t, ptr %88, i64 %94
  %96 = getelementptr inbounds nuw %struct._junction_t, ptr %95, i32 0, i32 0
  %97 = getelementptr inbounds [4 x i8], ptr %96, i64 0, i64 0
  %98 = getelementptr inbounds i8, ptr %97, i64 2
  %99 = load ptr, ptr %7, align 8, !tbaa !37
  %100 = getelementptr inbounds nuw %struct._exon_t, ptr %99, i32 0, i32 6
  %101 = load i64, ptr %100, align 4
  %102 = lshr i64 %101, 34
  %103 = and i64 %102, 4194303
  %104 = trunc i64 %103 to i32
  %105 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef signext %59, i32 noundef signext %64, i32 noundef signext %67, i32 noundef signext %70, i32 noundef signext %73, ptr noundef %77, ptr noundef %87, ptr noundef %98, i32 noundef signext %104)
  br label %106

106:                                              ; preds = %54, %33
  br label %107

107:                                              ; preds = %106
  %108 = load i32, ptr %5, align 4, !tbaa !25
  %109 = add i32 %108, 1
  store i32 %109, ptr %5, align 4, !tbaa !25
  br label %12, !llvm.loop !190

110:                                              ; preds = %12
  %111 = load ptr, ptr %3, align 8, !tbaa !10
  %112 = getelementptr inbounds nuw %struct._collec_t, ptr %111, i32 0, i32 0
  %113 = load ptr, ptr %112, align 8, !tbaa !28
  %114 = load i32, ptr %6, align 4, !tbaa !25
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds nuw ptr, ptr %113, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !37
  store ptr %117, ptr %7, align 8, !tbaa !37
  %118 = load ptr, ptr %7, align 8, !tbaa !37
  %119 = getelementptr inbounds nuw %struct._exon_t, ptr %118, i32 0, i32 0
  %120 = load i32, ptr %119, align 4, !tbaa !41
  %121 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !188
  %122 = add i32 %120, %121
  %123 = load ptr, ptr %7, align 8, !tbaa !37
  %124 = getelementptr inbounds nuw %struct._exon_t, ptr %123, i32 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !53
  %126 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !188
  %127 = add i32 %125, %126
  %128 = load ptr, ptr %7, align 8, !tbaa !37
  %129 = getelementptr inbounds nuw %struct._exon_t, ptr %128, i32 0, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !39
  %131 = load ptr, ptr %7, align 8, !tbaa !37
  %132 = getelementptr inbounds nuw %struct._exon_t, ptr %131, i32 0, i32 3
  %133 = load i32, ptr %132, align 4, !tbaa !52
  %134 = load ptr, ptr %7, align 8, !tbaa !37
  %135 = getelementptr inbounds nuw %struct._exon_t, ptr %134, i32 0, i32 4
  %136 = load i32, ptr %135, align 4, !tbaa !177
  %137 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef signext %122, i32 noundef signext %127, i32 noundef signext %130, i32 noundef signext %133, i32 noundef signext %136)
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  ret void
}

declare signext i32 @printf(ptr noundef, ...) #4

declare void @Free_script(ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind
define internal void @search(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._hash_node_t, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !64
  store i32 %2, ptr %8, align 4, !tbaa !25
  store i32 %3, ptr %9, align 4, !tbaa !25
  store ptr %4, ptr %10, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  store i32 0, ptr %12, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #8
  %22 = load ptr, ptr %6, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct._hash_env_t, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !12
  %25 = load i32, ptr %8, align 4, !tbaa !25
  %26 = add i32 %24, %25
  %27 = add i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call ptr @xcalloc(i64 noundef %28, i64 noundef 4)
  store ptr %29, ptr %13, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #8
  %30 = load ptr, ptr %13, align 8, !tbaa !99
  %31 = load ptr, ptr %6, align 8, !tbaa !3
  %32 = getelementptr inbounds nuw %struct._hash_env_t, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !12
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds nuw i32, ptr %30, i64 %34
  store ptr %35, ptr %14, align 8, !tbaa !99
  %36 = load ptr, ptr %7, align 8, !tbaa !64
  store ptr %36, ptr %11, align 8, !tbaa !64
  br label %37

37:                                               ; preds = %150, %5
  %38 = load i32, ptr %12, align 4, !tbaa !25
  %39 = load i32, ptr %8, align 4, !tbaa !25
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %151

41:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #8
  br label %42

42:                                               ; preds = %147, %75, %41
  %43 = getelementptr inbounds nuw %struct._hash_node_t, ptr %16, i32 0, i32 0
  store i32 0, ptr %43, align 4, !tbaa !183
  store i32 1, ptr %15, align 4, !tbaa !25
  br label %44

44:                                               ; preds = %78, %42
  %45 = load i32, ptr %15, align 4, !tbaa !25
  %46 = load ptr, ptr %6, align 8, !tbaa !3
  %47 = getelementptr inbounds nuw %struct._hash_env_t, ptr %46, i32 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !45
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, ptr %12, align 4, !tbaa !25
  %52 = load i32, ptr %8, align 4, !tbaa !25
  %53 = icmp ult i32 %51, %52
  br label %54

54:                                               ; preds = %50, %44
  %55 = phi i1 [ false, %44 ], [ %53, %50 ]
  br i1 %55, label %56, label %81

56:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8
  %57 = load ptr, ptr %11, align 8, !tbaa !64
  %58 = getelementptr inbounds nuw i8, ptr %57, i32 1
  store ptr %58, ptr %11, align 8, !tbaa !64
  %59 = load i8, ptr %57, align 1, !tbaa !28
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds nuw [128 x i32], ptr @encoding, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !25
  store i32 %62, ptr %17, align 4, !tbaa !25
  %63 = load i32, ptr %12, align 4, !tbaa !25
  %64 = add i32 %63, 1
  store i32 %64, ptr %12, align 4, !tbaa !25
  %65 = load i32, ptr %17, align 4, !tbaa !25
  %66 = icmp ugt i32 %65, 3
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store i32 4, ptr %18, align 4
  br label %75

68:                                               ; preds = %56
  %69 = getelementptr inbounds nuw %struct._hash_node_t, ptr %16, i32 0, i32 0
  %70 = load i32, ptr %69, align 4, !tbaa !183
  %71 = shl i32 %70, 2
  %72 = load i32, ptr %17, align 4, !tbaa !25
  %73 = add i32 %71, %72
  %74 = getelementptr inbounds nuw %struct._hash_node_t, ptr %16, i32 0, i32 0
  store i32 %73, ptr %74, align 4, !tbaa !183
  store i32 0, ptr %18, align 4
  br label %75

75:                                               ; preds = %68, %67
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8
  %76 = load i32, ptr %18, align 4
  switch i32 %76, label %153 [
    i32 0, label %77
    i32 4, label %42
  ]

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %15, align 4, !tbaa !25
  %80 = add i32 %79, 1
  store i32 %80, ptr %15, align 4, !tbaa !25
  br label %44, !llvm.loop !191

81:                                               ; preds = %54
  br label %82

82:                                               ; preds = %149, %81
  %83 = load i32, ptr %12, align 4, !tbaa !25
  %84 = load i32, ptr %8, align 4, !tbaa !25
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %150

86:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  %87 = load ptr, ptr %11, align 8, !tbaa !64
  %88 = getelementptr inbounds nuw i8, ptr %87, i32 1
  store ptr %88, ptr %11, align 8, !tbaa !64
  %89 = load i8, ptr %87, align 1, !tbaa !28
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds nuw [128 x i32], ptr @encoding, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !25
  store i32 %92, ptr %19, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %20) #8
  %93 = load i32, ptr %12, align 4, !tbaa !25
  %94 = add i32 %93, 1
  store i32 %94, ptr %12, align 4, !tbaa !25
  %95 = load i32, ptr %19, align 4, !tbaa !25
  %96 = icmp ugt i32 %95, 3
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  store i32 4, ptr %18, align 4
  br label %147

98:                                               ; preds = %86
  %99 = getelementptr inbounds nuw %struct._hash_node_t, ptr %16, i32 0, i32 0
  %100 = load i32, ptr %99, align 4, !tbaa !183
  %101 = load ptr, ptr %6, align 8, !tbaa !3
  %102 = getelementptr inbounds nuw %struct._hash_env_t, ptr %101, i32 0, i32 4
  %103 = load i32, ptr %102, align 8, !tbaa !87
  %104 = and i32 %100, %103
  %105 = shl i32 %104, 2
  %106 = load i32, ptr %19, align 4, !tbaa !25
  %107 = add i32 %105, %106
  %108 = getelementptr inbounds nuw %struct._hash_node_t, ptr %16, i32 0, i32 0
  store i32 %107, ptr %108, align 4, !tbaa !183
  %109 = load ptr, ptr %6, align 8, !tbaa !3
  %110 = getelementptr inbounds nuw %struct._hash_env_t, ptr %109, i32 0, i32 0
  %111 = load ptr, ptr %110, align 8, !tbaa !89
  %112 = getelementptr inbounds nuw %struct._hash_node_t, ptr %16, i32 0, i32 0
  %113 = load i32, ptr %112, align 4, !tbaa !183
  %114 = and i32 %113, 524287
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds nuw ptr, ptr %111, i64 %115
  %117 = call ptr @tfind(ptr noundef %16, ptr noundef %116, ptr noundef @hash_node_compare)
  store ptr %117, ptr %20, align 8, !tbaa !185
  %118 = load ptr, ptr %20, align 8, !tbaa !185
  %119 = icmp ne ptr %118, null
  br i1 %119, label %120, label %146

120:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  %121 = load ptr, ptr %20, align 8, !tbaa !185
  %122 = load ptr, ptr %121, align 8, !tbaa !181
  %123 = getelementptr inbounds nuw %struct._hash_node_t, ptr %122, i32 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !187
  store i32 %124, ptr %21, align 4, !tbaa !25
  br label %125

125:                                              ; preds = %137, %120
  %126 = load i32, ptr %21, align 4, !tbaa !25
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %125
  %129 = load i32, ptr %21, align 4, !tbaa !25
  %130 = load i32, ptr %12, align 4, !tbaa !25
  %131 = load ptr, ptr %6, align 8, !tbaa !3
  %132 = load ptr, ptr %7, align 8, !tbaa !64
  %133 = load i32, ptr %8, align 4, !tbaa !25
  %134 = load i32, ptr %9, align 4, !tbaa !25
  %135 = load ptr, ptr %10, align 8, !tbaa !10
  %136 = load ptr, ptr %14, align 8, !tbaa !99
  call void @extend_hit(i32 noundef signext %129, i32 noundef signext %130, ptr noundef %131, ptr noundef %132, i32 noundef signext %133, i32 noundef signext %134, ptr noundef %135, ptr noundef %136)
  br label %137

137:                                              ; preds = %128
  %138 = load ptr, ptr %6, align 8, !tbaa !3
  %139 = getelementptr inbounds nuw %struct._hash_env_t, ptr %138, i32 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !88
  %141 = load i32, ptr %21, align 4, !tbaa !25
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, ptr %140, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !25
  store i32 %144, ptr %21, align 4, !tbaa !25
  br label %125, !llvm.loop !192

145:                                              ; preds = %125
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  br label %146

146:                                              ; preds = %145, %98
  store i32 0, ptr %18, align 4
  br label %147

147:                                              ; preds = %146, %97
  call void @llvm.lifetime.end.p0(i64 8, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  %148 = load i32, ptr %18, align 4
  switch i32 %148, label %153 [
    i32 0, label %149
    i32 4, label %42
  ]

149:                                              ; preds = %147
  br label %82, !llvm.loop !193

150:                                              ; preds = %82
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  br label %37, !llvm.loop !194

151:                                              ; preds = %37
  %152 = load ptr, ptr %13, align 8, !tbaa !99
  call void @free(ptr noundef %152) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #8
  ret void

153:                                              ; preds = %147, %75
  unreachable
}

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: nounwind
define internal signext i32 @msp_rna_compare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !93
  store ptr %1, ptr %5, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #8
  %9 = load ptr, ptr %4, align 8, !tbaa !93
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  store ptr %10, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #8
  %11 = load ptr, ptr %5, align 8, !tbaa !93
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  store ptr %12, ptr %7, align 8, !tbaa !37
  %13 = load ptr, ptr %6, align 8, !tbaa !37
  %14 = getelementptr inbounds nuw %struct._exon_t, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !39
  %16 = load ptr, ptr %7, align 8, !tbaa !37
  %17 = getelementptr inbounds nuw %struct._exon_t, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !39
  %19 = icmp ugt i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load ptr, ptr %6, align 8, !tbaa !37
  %23 = getelementptr inbounds nuw %struct._exon_t, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !39
  %25 = load ptr, ptr %7, align 8, !tbaa !37
  %26 = getelementptr inbounds nuw %struct._exon_t, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !39
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %49

30:                                               ; preds = %21
  %31 = load ptr, ptr %6, align 8, !tbaa !37
  %32 = getelementptr inbounds nuw %struct._exon_t, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !52
  %34 = load ptr, ptr %7, align 8, !tbaa !37
  %35 = getelementptr inbounds nuw %struct._exon_t, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !52
  %37 = icmp ugt i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %49

39:                                               ; preds = %30
  %40 = load ptr, ptr %6, align 8, !tbaa !37
  %41 = getelementptr inbounds nuw %struct._exon_t, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !52
  %43 = load ptr, ptr %7, align 8, !tbaa !37
  %44 = getelementptr inbounds nuw %struct._exon_t, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !52
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %49

48:                                               ; preds = %39
  store i32 0, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %49

49:                                               ; preds = %48, %47, %38, %29, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #8
  %50 = load i32, ptr %3, align 4
  ret i32 %50
}

; Function Attrs: nounwind
define internal void @trim_small_repeated_msps(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %9

9:                                                ; preds = %118, %116, %1
  %10 = load i32, ptr %3, align 4, !tbaa !25
  %11 = load ptr, ptr %2, align 8, !tbaa !10
  %12 = getelementptr inbounds nuw %struct._collec_t, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !26
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %119

15:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #8
  %16 = load ptr, ptr %2, align 8, !tbaa !10
  %17 = getelementptr inbounds nuw %struct._collec_t, ptr %16, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = load i32, ptr %3, align 4, !tbaa !25
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds nuw ptr, ptr %18, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  store ptr %22, ptr %4, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  %23 = load ptr, ptr %4, align 8, !tbaa !37
  %24 = getelementptr inbounds nuw %struct._exon_t, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !52
  %26 = load ptr, ptr %4, align 8, !tbaa !37
  %27 = getelementptr inbounds nuw %struct._exon_t, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !39
  %29 = sub i32 %25, %28
  %30 = icmp uge i32 %29, 50
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load i32, ptr %3, align 4, !tbaa !25
  %33 = add i32 %32, 1
  store i32 %33, ptr %3, align 4, !tbaa !25
  store i32 2, ptr %8, align 4
  br label %116, !llvm.loop !195

34:                                               ; preds = %15
  %35 = load ptr, ptr %4, align 8, !tbaa !37
  %36 = getelementptr inbounds nuw %struct._exon_t, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !52
  %38 = add i32 %37, 5
  store i32 %38, ptr %7, align 4, !tbaa !25
  %39 = load i32, ptr %3, align 4, !tbaa !25
  %40 = add i32 %39, 1
  store i32 %40, ptr %5, align 4, !tbaa !25
  br label %41

41:                                               ; preds = %61, %34
  %42 = load i32, ptr %5, align 4, !tbaa !25
  %43 = load ptr, ptr %2, align 8, !tbaa !10
  %44 = getelementptr inbounds nuw %struct._collec_t, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !26
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load ptr, ptr %2, align 8, !tbaa !10
  %49 = getelementptr inbounds nuw %struct._collec_t, ptr %48, i32 0, i32 0
  %50 = load ptr, ptr %49, align 8, !tbaa !28
  %51 = load i32, ptr %5, align 4, !tbaa !25
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds nuw ptr, ptr %50, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !37
  %55 = getelementptr inbounds nuw %struct._exon_t, ptr %54, i32 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !52
  %57 = load i32, ptr %7, align 4, !tbaa !25
  %58 = icmp ule i32 %56, %57
  br label %59

59:                                               ; preds = %47, %41
  %60 = phi i1 [ false, %41 ], [ %58, %47 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i32, ptr %5, align 4, !tbaa !25
  %63 = add i32 %62, 1
  store i32 %63, ptr %5, align 4, !tbaa !25
  br label %41, !llvm.loop !196

64:                                               ; preds = %59
  %65 = load i32, ptr %5, align 4, !tbaa !25
  %66 = load i32, ptr %3, align 4, !tbaa !25
  %67 = sub i32 %65, %66
  %68 = icmp ult i32 %67, 20
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, ptr %3, align 4, !tbaa !25
  %71 = add i32 %70, 1
  store i32 %71, ptr %3, align 4, !tbaa !25
  store i32 2, ptr %8, align 4
  br label %116, !llvm.loop !195

72:                                               ; preds = %64
  %73 = load i32, ptr %3, align 4, !tbaa !25
  store i32 %73, ptr %6, align 4, !tbaa !25
  br label %74

74:                                               ; preds = %86, %72
  %75 = load i32, ptr %6, align 4, !tbaa !25
  %76 = load i32, ptr %5, align 4, !tbaa !25
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load ptr, ptr %2, align 8, !tbaa !10
  %80 = getelementptr inbounds nuw %struct._collec_t, ptr %79, i32 0, i32 0
  %81 = load ptr, ptr %80, align 8, !tbaa !28
  %82 = load i32, ptr %6, align 4, !tbaa !25
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds nuw ptr, ptr %81, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !37
  call void @free(ptr noundef %85) #8
  br label %86

86:                                               ; preds = %78
  %87 = load i32, ptr %6, align 4, !tbaa !25
  %88 = add i32 %87, 1
  store i32 %88, ptr %6, align 4, !tbaa !25
  br label %74, !llvm.loop !197

89:                                               ; preds = %74
  %90 = load ptr, ptr %2, align 8, !tbaa !10
  %91 = getelementptr inbounds nuw %struct._collec_t, ptr %90, i32 0, i32 0
  %92 = load ptr, ptr %91, align 8, !tbaa !28
  %93 = load i32, ptr %3, align 4, !tbaa !25
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds nuw ptr, ptr %92, i64 %94
  %96 = load ptr, ptr %2, align 8, !tbaa !10
  %97 = getelementptr inbounds nuw %struct._collec_t, ptr %96, i32 0, i32 0
  %98 = load ptr, ptr %97, align 8, !tbaa !28
  %99 = load i32, ptr %5, align 4, !tbaa !25
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds nuw ptr, ptr %98, i64 %100
  %102 = load ptr, ptr %2, align 8, !tbaa !10
  %103 = getelementptr inbounds nuw %struct._collec_t, ptr %102, i32 0, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !26
  %105 = load i32, ptr %5, align 4, !tbaa !25
  %106 = sub i32 %104, %105
  %107 = zext i32 %106 to i64
  %108 = mul i64 %107, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %95, ptr align 8 %101, i64 %108, i1 false)
  %109 = load i32, ptr %5, align 4, !tbaa !25
  %110 = load i32, ptr %3, align 4, !tbaa !25
  %111 = sub i32 %109, %110
  %112 = load ptr, ptr %2, align 8, !tbaa !10
  %113 = getelementptr inbounds nuw %struct._collec_t, ptr %112, i32 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !26
  %115 = sub i32 %114, %111
  store i32 %115, ptr %113, align 8, !tbaa !26
  store i32 0, ptr %8, align 4
  br label %116

116:                                              ; preds = %89, %69, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #8
  %117 = load i32, ptr %8, align 4
  switch i32 %117, label %120 [
    i32 0, label %118
    i32 2, label %9
  ]

118:                                              ; preds = %116
  br label %9, !llvm.loop !195

119:                                              ; preds = %9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8
  ret void

120:                                              ; preds = %116
  unreachable
}

; Function Attrs: nounwind
define internal signext i32 @msp_compare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !93
  store ptr %1, ptr %5, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #8
  %9 = load ptr, ptr %4, align 8, !tbaa !93
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  store ptr %10, ptr %6, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #8
  %11 = load ptr, ptr %5, align 8, !tbaa !93
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  store ptr %12, ptr %7, align 8, !tbaa !37
  %13 = load ptr, ptr %6, align 8, !tbaa !37
  %14 = getelementptr inbounds nuw %struct._exon_t, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 4, !tbaa !41
  %16 = load ptr, ptr %7, align 8, !tbaa !37
  %17 = getelementptr inbounds nuw %struct._exon_t, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 4, !tbaa !41
  %19 = icmp ugt i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load ptr, ptr %6, align 8, !tbaa !37
  %23 = getelementptr inbounds nuw %struct._exon_t, ptr %22, i32 0, i32 0
  %24 = load i32, ptr %23, align 4, !tbaa !41
  %25 = load ptr, ptr %7, align 8, !tbaa !37
  %26 = getelementptr inbounds nuw %struct._exon_t, ptr %25, i32 0, i32 0
  %27 = load i32, ptr %26, align 4, !tbaa !41
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %49

30:                                               ; preds = %21
  %31 = load ptr, ptr %6, align 8, !tbaa !37
  %32 = getelementptr inbounds nuw %struct._exon_t, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !39
  %34 = load ptr, ptr %7, align 8, !tbaa !37
  %35 = getelementptr inbounds nuw %struct._exon_t, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !39
  %37 = icmp ugt i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %49

39:                                               ; preds = %30
  %40 = load ptr, ptr %6, align 8, !tbaa !37
  %41 = getelementptr inbounds nuw %struct._exon_t, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !39
  %43 = load ptr, ptr %7, align 8, !tbaa !37
  %44 = getelementptr inbounds nuw %struct._exon_t, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !39
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %49

48:                                               ; preds = %39
  store i32 0, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %49

49:                                               ; preds = %48, %47, %38, %29, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #8
  %50 = load i32, ptr %3, align 4
  ret i32 %50
}

; Function Attrs: nounwind
define internal void @combine_msps(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %12

12:                                               ; preds = %250, %1
  %13 = load i32, ptr %3, align 4, !tbaa !25
  %14 = load ptr, ptr %2, align 8, !tbaa !10
  %15 = getelementptr inbounds nuw %struct._collec_t, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !26
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %251

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #8
  %19 = load ptr, ptr %2, align 8, !tbaa !10
  %20 = getelementptr inbounds nuw %struct._collec_t, ptr %19, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8, !tbaa !28
  %22 = load i32, ptr %3, align 4, !tbaa !25
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds nuw ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  store ptr %25, ptr %4, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  store i32 0, ptr %5, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  %26 = load i32, ptr %3, align 4, !tbaa !25
  %27 = add i32 %26, 1
  store i32 %27, ptr %6, align 4, !tbaa !25
  br label %28

28:                                               ; preds = %104, %18
  %29 = load i32, ptr %6, align 4, !tbaa !25
  %30 = load ptr, ptr %2, align 8, !tbaa !10
  %31 = getelementptr inbounds nuw %struct._collec_t, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !26
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %107

34:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #8
  %35 = load ptr, ptr %2, align 8, !tbaa !10
  %36 = getelementptr inbounds nuw %struct._collec_t, ptr %35, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8, !tbaa !28
  %38 = load i32, ptr %6, align 4, !tbaa !25
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !37
  store ptr %41, ptr %7, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  store i32 0, ptr %8, align 4, !tbaa !25
  %42 = load ptr, ptr %7, align 8, !tbaa !37
  %43 = getelementptr inbounds nuw %struct._exon_t, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !39
  %45 = load ptr, ptr %4, align 8, !tbaa !37
  %46 = getelementptr inbounds nuw %struct._exon_t, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !52
  %48 = add i32 %47, 1
  %49 = icmp ule i32 %44, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %34
  %51 = load ptr, ptr %4, align 8, !tbaa !37
  %52 = getelementptr inbounds nuw %struct._exon_t, ptr %51, i32 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !52
  %54 = load ptr, ptr %7, align 8, !tbaa !37
  %55 = getelementptr inbounds nuw %struct._exon_t, ptr %54, i32 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !39
  %57 = sub i32 %53, %56
  %58 = add i32 %57, 2
  store i32 %58, ptr %5, align 4, !tbaa !25
  br label %59

59:                                               ; preds = %50, %34
  %60 = load ptr, ptr %7, align 8, !tbaa !37
  %61 = getelementptr inbounds nuw %struct._exon_t, ptr %60, i32 0, i32 0
  %62 = load i32, ptr %61, align 4, !tbaa !41
  %63 = load ptr, ptr %4, align 8, !tbaa !37
  %64 = getelementptr inbounds nuw %struct._exon_t, ptr %63, i32 0, i32 0
  %65 = load i32, ptr %64, align 4, !tbaa !41
  %66 = icmp ugt i32 %62, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %59
  %68 = load ptr, ptr %7, align 8, !tbaa !37
  %69 = getelementptr inbounds nuw %struct._exon_t, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 4, !tbaa !41
  %71 = load ptr, ptr %4, align 8, !tbaa !37
  %72 = getelementptr inbounds nuw %struct._exon_t, ptr %71, i32 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !53
  %74 = add i32 %73, 1
  %75 = icmp ule i32 %70, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %67
  %77 = load ptr, ptr %4, align 8, !tbaa !37
  %78 = getelementptr inbounds nuw %struct._exon_t, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !53
  %80 = load ptr, ptr %7, align 8, !tbaa !37
  %81 = getelementptr inbounds nuw %struct._exon_t, ptr %80, i32 0, i32 0
  %82 = load i32, ptr %81, align 4, !tbaa !41
  %83 = sub i32 %79, %82
  %84 = add i32 %83, 2
  store i32 %84, ptr %8, align 4, !tbaa !25
  br label %85

85:                                               ; preds = %76, %67, %59
  %86 = load i32, ptr %5, align 4, !tbaa !25
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = load i32, ptr %8, align 4, !tbaa !25
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = load i32, ptr %5, align 4, !tbaa !25
  %95 = load i32, ptr %8, align 4, !tbaa !25
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @llvm.abs.i32(i32 %96, i1 true)
  %98 = icmp sle i32 %97, 10
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 4, ptr %9, align 4
  br label %101

100:                                              ; preds = %93, %85
  store i32 0, ptr %5, align 4, !tbaa !25
  store i32 0, ptr %9, align 4
  br label %101

101:                                              ; preds = %100, %99
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #8
  %102 = load i32, ptr %9, align 4
  switch i32 %102, label %252 [
    i32 0, label %103
    i32 4, label %107
  ]

103:                                              ; preds = %101
  br label %104

104:                                              ; preds = %103
  %105 = load i32, ptr %6, align 4, !tbaa !25
  %106 = add i32 %105, 1
  store i32 %106, ptr %6, align 4, !tbaa !25
  br label %28, !llvm.loop !198

107:                                              ; preds = %101, %28
  %108 = load i32, ptr %5, align 4, !tbaa !25
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %247

110:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #8
  %111 = load ptr, ptr %2, align 8, !tbaa !10
  %112 = getelementptr inbounds nuw %struct._collec_t, ptr %111, i32 0, i32 0
  %113 = load ptr, ptr %112, align 8, !tbaa !28
  %114 = load i32, ptr %6, align 4, !tbaa !25
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds nuw ptr, ptr %113, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !37
  store ptr %117, ptr %10, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  %118 = load ptr, ptr %4, align 8, !tbaa !37
  %119 = getelementptr inbounds nuw %struct._exon_t, ptr %118, i32 0, i32 4
  %120 = load i32, ptr %119, align 4, !tbaa !177
  %121 = load ptr, ptr %10, align 8, !tbaa !37
  %122 = getelementptr inbounds nuw %struct._exon_t, ptr %121, i32 0, i32 4
  %123 = load i32, ptr %122, align 4, !tbaa !177
  %124 = add i32 %120, %123
  store i32 %124, ptr %11, align 4, !tbaa !25
  %125 = load i32, ptr %11, align 4, !tbaa !25
  %126 = load i32, ptr %5, align 4, !tbaa !25
  %127 = add i32 %126, 1
  %128 = icmp uge i32 %125, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %110
  %130 = load i32, ptr %5, align 4, !tbaa !25
  %131 = add i32 %130, 1
  %132 = load i32, ptr %11, align 4, !tbaa !25
  %133 = sub i32 %132, %131
  store i32 %133, ptr %11, align 4, !tbaa !25
  br label %135

134:                                              ; preds = %110
  store i32 0, ptr %11, align 4, !tbaa !25
  br label %135

135:                                              ; preds = %134, %129
  %136 = load ptr, ptr %4, align 8, !tbaa !37
  %137 = getelementptr inbounds nuw %struct._exon_t, ptr %136, i32 0, i32 0
  %138 = load i32, ptr %137, align 4, !tbaa !41
  %139 = load ptr, ptr %10, align 8, !tbaa !37
  %140 = getelementptr inbounds nuw %struct._exon_t, ptr %139, i32 0, i32 0
  %141 = load i32, ptr %140, align 4, !tbaa !41
  %142 = icmp ugt i32 %138, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = load ptr, ptr %10, align 8, !tbaa !37
  %145 = getelementptr inbounds nuw %struct._exon_t, ptr %144, i32 0, i32 0
  %146 = load i32, ptr %145, align 4, !tbaa !41
  br label %151

147:                                              ; preds = %135
  %148 = load ptr, ptr %4, align 8, !tbaa !37
  %149 = getelementptr inbounds nuw %struct._exon_t, ptr %148, i32 0, i32 0
  %150 = load i32, ptr %149, align 4, !tbaa !41
  br label %151

151:                                              ; preds = %147, %143
  %152 = phi i32 [ %146, %143 ], [ %150, %147 ]
  %153 = load ptr, ptr %4, align 8, !tbaa !37
  %154 = getelementptr inbounds nuw %struct._exon_t, ptr %153, i32 0, i32 0
  store i32 %152, ptr %154, align 4, !tbaa !41
  %155 = load ptr, ptr %4, align 8, !tbaa !37
  %156 = getelementptr inbounds nuw %struct._exon_t, ptr %155, i32 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !39
  %158 = load ptr, ptr %10, align 8, !tbaa !37
  %159 = getelementptr inbounds nuw %struct._exon_t, ptr %158, i32 0, i32 1
  %160 = load i32, ptr %159, align 4, !tbaa !39
  %161 = icmp ugt i32 %157, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %151
  %163 = load ptr, ptr %10, align 8, !tbaa !37
  %164 = getelementptr inbounds nuw %struct._exon_t, ptr %163, i32 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !39
  br label %170

166:                                              ; preds = %151
  %167 = load ptr, ptr %4, align 8, !tbaa !37
  %168 = getelementptr inbounds nuw %struct._exon_t, ptr %167, i32 0, i32 1
  %169 = load i32, ptr %168, align 4, !tbaa !39
  br label %170

170:                                              ; preds = %166, %162
  %171 = phi i32 [ %165, %162 ], [ %169, %166 ]
  %172 = load ptr, ptr %4, align 8, !tbaa !37
  %173 = getelementptr inbounds nuw %struct._exon_t, ptr %172, i32 0, i32 1
  store i32 %171, ptr %173, align 4, !tbaa !39
  %174 = load ptr, ptr %4, align 8, !tbaa !37
  %175 = getelementptr inbounds nuw %struct._exon_t, ptr %174, i32 0, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !53
  %177 = load ptr, ptr %10, align 8, !tbaa !37
  %178 = getelementptr inbounds nuw %struct._exon_t, ptr %177, i32 0, i32 2
  %179 = load i32, ptr %178, align 4, !tbaa !53
  %180 = icmp ult i32 %176, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %170
  %182 = load ptr, ptr %10, align 8, !tbaa !37
  %183 = getelementptr inbounds nuw %struct._exon_t, ptr %182, i32 0, i32 2
  %184 = load i32, ptr %183, align 4, !tbaa !53
  br label %189

185:                                              ; preds = %170
  %186 = load ptr, ptr %4, align 8, !tbaa !37
  %187 = getelementptr inbounds nuw %struct._exon_t, ptr %186, i32 0, i32 2
  %188 = load i32, ptr %187, align 4, !tbaa !53
  br label %189

189:                                              ; preds = %185, %181
  %190 = phi i32 [ %184, %181 ], [ %188, %185 ]
  %191 = load ptr, ptr %4, align 8, !tbaa !37
  %192 = getelementptr inbounds nuw %struct._exon_t, ptr %191, i32 0, i32 2
  store i32 %190, ptr %192, align 4, !tbaa !53
  %193 = load ptr, ptr %4, align 8, !tbaa !37
  %194 = getelementptr inbounds nuw %struct._exon_t, ptr %193, i32 0, i32 3
  %195 = load i32, ptr %194, align 4, !tbaa !52
  %196 = load ptr, ptr %10, align 8, !tbaa !37
  %197 = getelementptr inbounds nuw %struct._exon_t, ptr %196, i32 0, i32 3
  %198 = load i32, ptr %197, align 4, !tbaa !52
  %199 = icmp ult i32 %195, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %189
  %201 = load ptr, ptr %10, align 8, !tbaa !37
  %202 = getelementptr inbounds nuw %struct._exon_t, ptr %201, i32 0, i32 3
  %203 = load i32, ptr %202, align 4, !tbaa !52
  br label %208

204:                                              ; preds = %189
  %205 = load ptr, ptr %4, align 8, !tbaa !37
  %206 = getelementptr inbounds nuw %struct._exon_t, ptr %205, i32 0, i32 3
  %207 = load i32, ptr %206, align 4, !tbaa !52
  br label %208

208:                                              ; preds = %204, %200
  %209 = phi i32 [ %203, %200 ], [ %207, %204 ]
  %210 = load ptr, ptr %4, align 8, !tbaa !37
  %211 = getelementptr inbounds nuw %struct._exon_t, ptr %210, i32 0, i32 3
  store i32 %209, ptr %211, align 4, !tbaa !52
  %212 = load i32, ptr %11, align 4, !tbaa !25
  %213 = load ptr, ptr %4, align 8, !tbaa !37
  %214 = getelementptr inbounds nuw %struct._exon_t, ptr %213, i32 0, i32 4
  %215 = load i32, ptr %214, align 4, !tbaa !177
  %216 = icmp ugt i32 %212, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %208
  %218 = load i32, ptr %11, align 4, !tbaa !25
  %219 = load ptr, ptr %4, align 8, !tbaa !37
  %220 = getelementptr inbounds nuw %struct._exon_t, ptr %219, i32 0, i32 4
  store i32 %218, ptr %220, align 4, !tbaa !177
  br label %221

221:                                              ; preds = %217, %208
  %222 = load ptr, ptr %2, align 8, !tbaa !10
  %223 = getelementptr inbounds nuw %struct._collec_t, ptr %222, i32 0, i32 1
  %224 = load i32, ptr %223, align 8, !tbaa !26
  %225 = sub i32 %224, 1
  store i32 %225, ptr %223, align 8, !tbaa !26
  %226 = load ptr, ptr %10, align 8, !tbaa !37
  call void @free(ptr noundef %226) #8
  %227 = load ptr, ptr %2, align 8, !tbaa !10
  %228 = getelementptr inbounds nuw %struct._collec_t, ptr %227, i32 0, i32 0
  %229 = load ptr, ptr %228, align 8, !tbaa !28
  %230 = load i32, ptr %6, align 4, !tbaa !25
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds nuw ptr, ptr %229, i64 %231
  %233 = load ptr, ptr %2, align 8, !tbaa !10
  %234 = getelementptr inbounds nuw %struct._collec_t, ptr %233, i32 0, i32 0
  %235 = load ptr, ptr %234, align 8, !tbaa !28
  %236 = load i32, ptr %6, align 4, !tbaa !25
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds nuw ptr, ptr %235, i64 %237
  %239 = getelementptr inbounds ptr, ptr %238, i64 1
  %240 = load ptr, ptr %2, align 8, !tbaa !10
  %241 = getelementptr inbounds nuw %struct._collec_t, ptr %240, i32 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !26
  %243 = load i32, ptr %6, align 4, !tbaa !25
  %244 = sub i32 %242, %243
  %245 = zext i32 %244 to i64
  %246 = mul i64 %245, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %232, ptr align 8 %239, i64 %246, i1 false)
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #8
  br label %250

247:                                              ; preds = %107
  %248 = load i32, ptr %3, align 4, !tbaa !25
  %249 = add i32 %248, 1
  store i32 %249, ptr %3, align 4, !tbaa !25
  br label %250

250:                                              ; preds = %247, %221
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #8
  br label %12, !llvm.loop !199

251:                                              ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8
  ret void

252:                                              ; preds = %101
  unreachable
}

; Function Attrs: nounwind
define internal signext i32 @link_msps(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.anon.0, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !10
  store i32 %1, ptr %6, align 4, !tbaa !25
  store i32 %2, ptr %7, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  %16 = load i32, ptr %6, align 4, !tbaa !25
  %17 = load i32, ptr %7, align 4, !tbaa !25
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, ptr %4, align 4
  store i32 1, ptr %10, align 4
  br label %163

20:                                               ; preds = %3
  call void @llvm.memset.p0.i64(ptr align 4 %8, i8 0, i64 8, i1 false)
  %21 = load i32, ptr %6, align 4, !tbaa !25
  store i32 %21, ptr %9, align 4, !tbaa !25
  br label %22

22:                                               ; preds = %41, %20
  %23 = load i32, ptr %9, align 4, !tbaa !25
  %24 = load i32, ptr %7, align 4, !tbaa !25
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #8
  %27 = load ptr, ptr %5, align 8, !tbaa !10
  %28 = getelementptr inbounds nuw %struct._collec_t, ptr %27, i32 0, i32 0
  %29 = load ptr, ptr %28, align 8, !tbaa !28
  %30 = load i32, ptr %9, align 4, !tbaa !25
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds nuw ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !37
  store ptr %33, ptr %11, align 8, !tbaa !37
  %34 = load ptr, ptr %11, align 8, !tbaa !37
  %35 = getelementptr inbounds nuw %struct._exon_t, ptr %34, i32 0, i32 5
  store i32 0, ptr %35, align 4, !tbaa !67
  %36 = load ptr, ptr %11, align 8, !tbaa !37
  %37 = getelementptr inbounds nuw %struct._exon_t, ptr %36, i32 0, i32 6
  %38 = load i64, ptr %37, align 4
  %39 = and i64 %38, -4294967293
  %40 = or i64 %39, 4294967292
  store i64 %40, ptr %37, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #8
  br label %41

41:                                               ; preds = %26
  %42 = load i32, ptr %9, align 4, !tbaa !25
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 4, !tbaa !25
  br label %22, !llvm.loop !200

44:                                               ; preds = %22
  %45 = load i32, ptr %6, align 4, !tbaa !25
  store i32 %45, ptr %9, align 4, !tbaa !25
  br label %46

46:                                               ; preds = %157, %44
  %47 = load i32, ptr %9, align 4, !tbaa !25
  %48 = load i32, ptr %7, align 4, !tbaa !25
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %160

50:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #8
  %51 = load ptr, ptr %5, align 8, !tbaa !10
  %52 = getelementptr inbounds nuw %struct._collec_t, ptr %51, i32 0, i32 0
  %53 = load ptr, ptr %52, align 8, !tbaa !28
  %54 = load i32, ptr %9, align 4, !tbaa !25
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds nuw ptr, ptr %53, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !37
  store ptr %57, ptr %12, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8
  %58 = load ptr, ptr %12, align 8, !tbaa !37
  %59 = getelementptr inbounds nuw %struct._exon_t, ptr %58, i32 0, i32 4
  %60 = load i32, ptr %59, align 4, !tbaa !177
  %61 = load ptr, ptr %12, align 8, !tbaa !37
  %62 = getelementptr inbounds nuw %struct._exon_t, ptr %61, i32 0, i32 5
  %63 = load i32, ptr %62, align 4, !tbaa !67
  %64 = add i32 %63, %60
  store i32 %64, ptr %62, align 4, !tbaa !67
  %65 = load ptr, ptr %12, align 8, !tbaa !37
  %66 = getelementptr inbounds nuw %struct._exon_t, ptr %65, i32 0, i32 5
  %67 = load i32, ptr %66, align 4, !tbaa !67
  %68 = getelementptr inbounds nuw %struct.anon.0, ptr %8, i32 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !201
  %70 = icmp ugt i32 %67, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %50
  %72 = load ptr, ptr %12, align 8, !tbaa !37
  %73 = getelementptr inbounds nuw %struct._exon_t, ptr %72, i32 0, i32 5
  %74 = load i32, ptr %73, align 4, !tbaa !67
  %75 = getelementptr inbounds nuw %struct.anon.0, ptr %8, i32 0, i32 1
  store i32 %74, ptr %75, align 4, !tbaa !201
  %76 = load i32, ptr %9, align 4, !tbaa !25
  %77 = getelementptr inbounds nuw %struct.anon.0, ptr %8, i32 0, i32 0
  store i32 %76, ptr %77, align 4, !tbaa !203
  br label %78

78:                                               ; preds = %71, %50
  %79 = load i32, ptr %9, align 4, !tbaa !25
  %80 = add i32 %79, 1
  store i32 %80, ptr %13, align 4, !tbaa !25
  br label %81

81:                                               ; preds = %153, %78
  %82 = load i32, ptr %13, align 4, !tbaa !25
  %83 = load i32, ptr %7, align 4, !tbaa !25
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %156

85:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #8
  %86 = load ptr, ptr %5, align 8, !tbaa !10
  %87 = getelementptr inbounds nuw %struct._collec_t, ptr %86, i32 0, i32 0
  %88 = load ptr, ptr %87, align 8, !tbaa !28
  %89 = load i32, ptr %13, align 4, !tbaa !25
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds nuw ptr, ptr %88, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !37
  store ptr %92, ptr %14, align 8, !tbaa !37
  %93 = load ptr, ptr %12, align 8, !tbaa !37
  %94 = load ptr, ptr %14, align 8, !tbaa !37
  %95 = call signext i32 @lies_after_p(ptr noundef %93, ptr noundef %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %152

97:                                               ; preds = %85
  %98 = load ptr, ptr %12, align 8, !tbaa !37
  %99 = getelementptr inbounds nuw %struct._exon_t, ptr %98, i32 0, i32 5
  %100 = load i32, ptr %99, align 4, !tbaa !67
  %101 = load ptr, ptr %14, align 8, !tbaa !37
  %102 = getelementptr inbounds nuw %struct._exon_t, ptr %101, i32 0, i32 5
  %103 = load i32, ptr %102, align 4, !tbaa !67
  %104 = icmp uge i32 %100, %103
  br i1 %104, label %105, label %152

105:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  %106 = load ptr, ptr %14, align 8, !tbaa !37
  %107 = getelementptr inbounds nuw %struct._exon_t, ptr %106, i32 0, i32 0
  %108 = load i32, ptr %107, align 4, !tbaa !41
  %109 = load ptr, ptr %12, align 8, !tbaa !37
  %110 = getelementptr inbounds nuw %struct._exon_t, ptr %109, i32 0, i32 0
  %111 = load i32, ptr %110, align 4, !tbaa !41
  %112 = sub i32 %108, %111
  %113 = call i32 @llvm.abs.i32(i32 %112, i1 true)
  %114 = ashr i32 %113, 15
  store i32 %114, ptr %15, align 4, !tbaa !25
  %115 = load ptr, ptr %14, align 8, !tbaa !37
  %116 = getelementptr inbounds nuw %struct._exon_t, ptr %115, i32 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !39
  %118 = load ptr, ptr %12, align 8, !tbaa !37
  %119 = getelementptr inbounds nuw %struct._exon_t, ptr %118, i32 0, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !39
  %121 = sub i32 %117, %120
  %122 = call i32 @llvm.abs.i32(i32 %121, i1 true)
  %123 = ashr i32 %122, 15
  %124 = load i32, ptr %15, align 4, !tbaa !25
  %125 = add i32 %124, %123
  store i32 %125, ptr %15, align 4, !tbaa !25
  %126 = load i32, ptr %15, align 4, !tbaa !25
  %127 = load ptr, ptr %12, align 8, !tbaa !37
  %128 = getelementptr inbounds nuw %struct._exon_t, ptr %127, i32 0, i32 5
  %129 = load i32, ptr %128, align 4, !tbaa !67
  %130 = icmp ult i32 %126, %129
  br i1 %130, label %131, label %151

131:                                              ; preds = %105
  %132 = load ptr, ptr %12, align 8, !tbaa !37
  %133 = getelementptr inbounds nuw %struct._exon_t, ptr %132, i32 0, i32 5
  %134 = load i32, ptr %133, align 4, !tbaa !67
  %135 = load i32, ptr %15, align 4, !tbaa !25
  %136 = sub i32 %134, %135
  %137 = load ptr, ptr %14, align 8, !tbaa !37
  %138 = getelementptr inbounds nuw %struct._exon_t, ptr %137, i32 0, i32 5
  store i32 %136, ptr %138, align 4, !tbaa !67
  %139 = load i32, ptr %9, align 4, !tbaa !25
  %140 = load ptr, ptr %14, align 8, !tbaa !37
  %141 = getelementptr inbounds nuw %struct._exon_t, ptr %140, i32 0, i32 6
  %142 = zext i32 %139 to i64
  %143 = load i64, ptr %141, align 4
  %144 = and i64 %142, 1073741823
  %145 = shl i64 %144, 2
  %146 = and i64 %143, -4294967293
  %147 = or i64 %146, %145
  store i64 %147, ptr %141, align 4
  %148 = shl i64 %144, 34
  %149 = ashr i64 %148, 34
  %150 = trunc i64 %149 to i32
  br label %151

151:                                              ; preds = %131, %105
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  br label %152

152:                                              ; preds = %151, %97, %85
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #8
  br label %153

153:                                              ; preds = %152
  %154 = load i32, ptr %13, align 4, !tbaa !25
  %155 = add i32 %154, 1
  store i32 %155, ptr %13, align 4, !tbaa !25
  br label %81, !llvm.loop !204

156:                                              ; preds = %81
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #8
  br label %157

157:                                              ; preds = %156
  %158 = load i32, ptr %9, align 4, !tbaa !25
  %159 = add i32 %158, 1
  store i32 %159, ptr %9, align 4, !tbaa !25
  br label %46, !llvm.loop !205

160:                                              ; preds = %46
  %161 = getelementptr inbounds nuw %struct.anon.0, ptr %8, i32 0, i32 0
  %162 = load i32, ptr %161, align 4, !tbaa !203
  store i32 %162, ptr %4, align 4
  store i32 1, ptr %10, align 4
  br label %163

163:                                              ; preds = %160, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  %164 = load i32, ptr %4, align 4
  ret i32 %164
}

; Function Attrs: nounwind
define internal void @add_col_elt(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !10
  store ptr %1, ptr %4, align 8, !tbaa !93
  %5 = load ptr, ptr %3, align 8, !tbaa !10
  %6 = getelementptr inbounds nuw %struct._collec_t, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !63
  %8 = load ptr, ptr %3, align 8, !tbaa !10
  %9 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !26
  %11 = icmp ule i32 %7, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !tbaa !10
  %14 = getelementptr inbounds nuw %struct._collec_t, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !63
  %16 = add i32 %15, 5
  store i32 %16, ptr %14, align 4, !tbaa !63
  %17 = load ptr, ptr %3, align 8, !tbaa !10
  %18 = getelementptr inbounds nuw %struct._collec_t, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8, !tbaa !28
  %20 = load ptr, ptr %3, align 8, !tbaa !10
  %21 = getelementptr inbounds nuw %struct._collec_t, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !63
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = call ptr @xrealloc(ptr noundef %19, i64 noundef %24)
  %26 = load ptr, ptr %3, align 8, !tbaa !10
  %27 = getelementptr inbounds nuw %struct._collec_t, ptr %26, i32 0, i32 0
  store ptr %25, ptr %27, align 8, !tbaa !28
  br label %28

28:                                               ; preds = %12, %2
  %29 = load ptr, ptr %4, align 8, !tbaa !93
  %30 = load ptr, ptr %3, align 8, !tbaa !10
  %31 = getelementptr inbounds nuw %struct._collec_t, ptr %30, i32 0, i32 0
  %32 = load ptr, ptr %31, align 8, !tbaa !28
  %33 = load ptr, ptr %3, align 8, !tbaa !10
  %34 = getelementptr inbounds nuw %struct._collec_t, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !26
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 8, !tbaa !26
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds nuw ptr, ptr %32, i64 %37
  store ptr %29, ptr %38, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind
define internal void @msp2exons(ptr noundef %0, i32 noundef signext %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !206
  store i32 %1, ptr %6, align 4, !tbaa !25
  store ptr %2, ptr %7, align 8, !tbaa !10
  store i32 %3, ptr %8, align 4, !tbaa !25
  br label %15

15:                                               ; preds = %158, %156, %4
  %16 = load i32, ptr %6, align 4, !tbaa !25
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %159

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #8
  %19 = load ptr, ptr %5, align 8, !tbaa !206
  %20 = load i32, ptr %6, align 4, !tbaa !25
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  store ptr %23, ptr %9, align 8, !tbaa !37
  %24 = load ptr, ptr %7, align 8, !tbaa !10
  %25 = getelementptr inbounds nuw %struct._collec_t, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !26
  %27 = icmp ugt i32 %26, 0
  br i1 %27, label %28, label %147

28:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #8
  %29 = load ptr, ptr %7, align 8, !tbaa !10
  %30 = getelementptr inbounds nuw %struct._collec_t, ptr %29, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  %32 = load ptr, ptr %7, align 8, !tbaa !10
  %33 = getelementptr inbounds nuw %struct._collec_t, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !26
  %35 = sub i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw ptr, ptr %31, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !37
  store ptr %38, ptr %10, align 8, !tbaa !37
  %39 = load i32, ptr %8, align 4, !tbaa !25
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %143, label %41

41:                                               ; preds = %28
  %42 = load ptr, ptr %10, align 8, !tbaa !37
  %43 = getelementptr inbounds nuw %struct._exon_t, ptr %42, i32 0, i32 0
  %44 = load i32, ptr %43, align 4, !tbaa !41
  %45 = load ptr, ptr %9, align 8, !tbaa !37
  %46 = getelementptr inbounds nuw %struct._exon_t, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !53
  %48 = add i32 %47, 30
  %49 = icmp ult i32 %44, %48
  br i1 %49, label %50, label %143

50:                                               ; preds = %41
  %51 = load ptr, ptr %10, align 8, !tbaa !37
  %52 = getelementptr inbounds nuw %struct._exon_t, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !39
  %54 = load ptr, ptr %9, align 8, !tbaa !37
  %55 = getelementptr inbounds nuw %struct._exon_t, ptr %54, i32 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !52
  %57 = sub i32 %56, 1
  %58 = icmp ugt i32 %53, %57
  br i1 %58, label %59, label %143

59:                                               ; preds = %50
  %60 = load ptr, ptr %10, align 8, !tbaa !37
  %61 = getelementptr inbounds nuw %struct._exon_t, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !53
  %63 = load ptr, ptr %9, align 8, !tbaa !37
  %64 = getelementptr inbounds nuw %struct._exon_t, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !53
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load ptr, ptr %9, align 8, !tbaa !37
  %69 = getelementptr inbounds nuw %struct._exon_t, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !53
  br label %75

71:                                               ; preds = %59
  %72 = load ptr, ptr %10, align 8, !tbaa !37
  %73 = getelementptr inbounds nuw %struct._exon_t, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !53
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i32 [ %70, %67 ], [ %74, %71 ]
  %77 = load ptr, ptr %10, align 8, !tbaa !37
  %78 = getelementptr inbounds nuw %struct._exon_t, ptr %77, i32 0, i32 2
  store i32 %76, ptr %78, align 4, !tbaa !53
  %79 = load ptr, ptr %10, align 8, !tbaa !37
  %80 = getelementptr inbounds nuw %struct._exon_t, ptr %79, i32 0, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !52
  %82 = load ptr, ptr %9, align 8, !tbaa !37
  %83 = getelementptr inbounds nuw %struct._exon_t, ptr %82, i32 0, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !52
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load ptr, ptr %9, align 8, !tbaa !37
  %88 = getelementptr inbounds nuw %struct._exon_t, ptr %87, i32 0, i32 3
  %89 = load i32, ptr %88, align 4, !tbaa !52
  br label %94

90:                                               ; preds = %75
  %91 = load ptr, ptr %10, align 8, !tbaa !37
  %92 = getelementptr inbounds nuw %struct._exon_t, ptr %91, i32 0, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !52
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i32 [ %89, %86 ], [ %93, %90 ]
  %96 = load ptr, ptr %10, align 8, !tbaa !37
  %97 = getelementptr inbounds nuw %struct._exon_t, ptr %96, i32 0, i32 3
  store i32 %95, ptr %97, align 4, !tbaa !52
  %98 = load ptr, ptr %10, align 8, !tbaa !37
  %99 = getelementptr inbounds nuw %struct._exon_t, ptr %98, i32 0, i32 0
  %100 = load i32, ptr %99, align 4, !tbaa !41
  %101 = load ptr, ptr %9, align 8, !tbaa !37
  %102 = getelementptr inbounds nuw %struct._exon_t, ptr %101, i32 0, i32 0
  %103 = load i32, ptr %102, align 4, !tbaa !41
  %104 = icmp ugt i32 %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %94
  %106 = load ptr, ptr %9, align 8, !tbaa !37
  %107 = getelementptr inbounds nuw %struct._exon_t, ptr %106, i32 0, i32 0
  %108 = load i32, ptr %107, align 4, !tbaa !41
  br label %113

109:                                              ; preds = %94
  %110 = load ptr, ptr %10, align 8, !tbaa !37
  %111 = getelementptr inbounds nuw %struct._exon_t, ptr %110, i32 0, i32 0
  %112 = load i32, ptr %111, align 4, !tbaa !41
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi i32 [ %108, %105 ], [ %112, %109 ]
  %115 = load ptr, ptr %10, align 8, !tbaa !37
  %116 = getelementptr inbounds nuw %struct._exon_t, ptr %115, i32 0, i32 0
  store i32 %114, ptr %116, align 4, !tbaa !41
  %117 = load ptr, ptr %10, align 8, !tbaa !37
  %118 = getelementptr inbounds nuw %struct._exon_t, ptr %117, i32 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !39
  %120 = load ptr, ptr %9, align 8, !tbaa !37
  %121 = getelementptr inbounds nuw %struct._exon_t, ptr %120, i32 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !39
  %123 = icmp ugt i32 %119, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %113
  %125 = load ptr, ptr %9, align 8, !tbaa !37
  %126 = getelementptr inbounds nuw %struct._exon_t, ptr %125, i32 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !39
  br label %132

128:                                              ; preds = %113
  %129 = load ptr, ptr %10, align 8, !tbaa !37
  %130 = getelementptr inbounds nuw %struct._exon_t, ptr %129, i32 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !39
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi i32 [ %127, %124 ], [ %131, %128 ]
  %134 = load ptr, ptr %10, align 8, !tbaa !37
  %135 = getelementptr inbounds nuw %struct._exon_t, ptr %134, i32 0, i32 1
  store i32 %133, ptr %135, align 4, !tbaa !39
  %136 = load ptr, ptr %9, align 8, !tbaa !37
  %137 = getelementptr inbounds nuw %struct._exon_t, ptr %136, i32 0, i32 6
  %138 = load i64, ptr %137, align 4
  %139 = shl i64 %138, 32
  %140 = ashr i64 %139, 34
  %141 = trunc i64 %140 to i32
  store i32 %141, ptr %6, align 4, !tbaa !25
  %142 = load ptr, ptr %9, align 8, !tbaa !37
  call void @free(ptr noundef %142) #8
  store i32 2, ptr %11, align 4
  br label %144, !llvm.loop !208

143:                                              ; preds = %50, %41, %28
  store i32 0, ptr %11, align 4
  br label %144

144:                                              ; preds = %143, %132
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #8
  %145 = load i32, ptr %11, align 4
  switch i32 %145, label %156 [
    i32 0, label %146
  ]

146:                                              ; preds = %144
  br label %147

147:                                              ; preds = %146, %18
  %148 = load ptr, ptr %7, align 8, !tbaa !10
  %149 = load ptr, ptr %9, align 8, !tbaa !37
  call void @add_col_elt(ptr noundef %148, ptr noundef %149)
  %150 = load ptr, ptr %9, align 8, !tbaa !37
  %151 = getelementptr inbounds nuw %struct._exon_t, ptr %150, i32 0, i32 6
  %152 = load i64, ptr %151, align 4
  %153 = shl i64 %152, 32
  %154 = ashr i64 %153, 34
  %155 = trunc i64 %154 to i32
  store i32 %155, ptr %6, align 4, !tbaa !25
  store i32 0, ptr %11, align 4
  br label %156

156:                                              ; preds = %147, %144
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #8
  %157 = load i32, ptr %11, align 4
  switch i32 %157, label %208 [
    i32 0, label %158
    i32 2, label %15
  ]

158:                                              ; preds = %156
  br label %15, !llvm.loop !208

159:                                              ; preds = %15
  %160 = load ptr, ptr %7, align 8, !tbaa !10
  %161 = getelementptr inbounds nuw %struct._collec_t, ptr %160, i32 0, i32 1
  %162 = load i32, ptr %161, align 8, !tbaa !26
  %163 = icmp ugt i32 %162, 1
  br i1 %163, label %164, label %207

164:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8
  store i32 0, ptr %12, align 4, !tbaa !25
  %165 = load ptr, ptr %7, align 8, !tbaa !10
  %166 = getelementptr inbounds nuw %struct._collec_t, ptr %165, i32 0, i32 1
  %167 = load i32, ptr %166, align 8, !tbaa !26
  %168 = sub i32 %167, 1
  store i32 %168, ptr %13, align 4, !tbaa !25
  br label %169

169:                                              ; preds = %201, %164
  %170 = load i32, ptr %13, align 4, !tbaa !25
  %171 = load i32, ptr %12, align 4, !tbaa !25
  %172 = icmp ugt i32 %170, %171
  br i1 %172, label %173, label %206

173:                                              ; preds = %169
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #8
  %174 = load ptr, ptr %7, align 8, !tbaa !10
  %175 = getelementptr inbounds nuw %struct._collec_t, ptr %174, i32 0, i32 0
  %176 = load ptr, ptr %175, align 8, !tbaa !28
  %177 = load i32, ptr %12, align 4, !tbaa !25
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds nuw ptr, ptr %176, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !37
  store ptr %180, ptr %14, align 8, !tbaa !37
  %181 = load ptr, ptr %7, align 8, !tbaa !10
  %182 = getelementptr inbounds nuw %struct._collec_t, ptr %181, i32 0, i32 0
  %183 = load ptr, ptr %182, align 8, !tbaa !28
  %184 = load i32, ptr %13, align 4, !tbaa !25
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds nuw ptr, ptr %183, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !37
  %188 = load ptr, ptr %7, align 8, !tbaa !10
  %189 = getelementptr inbounds nuw %struct._collec_t, ptr %188, i32 0, i32 0
  %190 = load ptr, ptr %189, align 8, !tbaa !28
  %191 = load i32, ptr %12, align 4, !tbaa !25
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds nuw ptr, ptr %190, i64 %192
  store ptr %187, ptr %193, align 8, !tbaa !37
  %194 = load ptr, ptr %14, align 8, !tbaa !37
  %195 = load ptr, ptr %7, align 8, !tbaa !10
  %196 = getelementptr inbounds nuw %struct._collec_t, ptr %195, i32 0, i32 0
  %197 = load ptr, ptr %196, align 8, !tbaa !28
  %198 = load i32, ptr %13, align 4, !tbaa !25
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds nuw ptr, ptr %197, i64 %199
  store ptr %194, ptr %200, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #8
  br label %201

201:                                              ; preds = %173
  %202 = load i32, ptr %12, align 4, !tbaa !25
  %203 = add i32 %202, 1
  store i32 %203, ptr %12, align 4, !tbaa !25
  %204 = load i32, ptr %13, align 4, !tbaa !25
  %205 = add i32 %204, -1
  store i32 %205, ptr %13, align 4, !tbaa !25
  br label %169, !llvm.loop !209

206:                                              ; preds = %169
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  br label %207

207:                                              ; preds = %206, %159
  ret void

208:                                              ; preds = %156
  unreachable
}

declare ptr @tfind(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
define internal signext i32 @hash_node_compare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !93
  store ptr %1, ptr %5, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #8
  %9 = load ptr, ptr %4, align 8, !tbaa !93
  store ptr %9, ptr %6, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #8
  %10 = load ptr, ptr %5, align 8, !tbaa !93
  store ptr %10, ptr %7, align 8, !tbaa !181
  %11 = load ptr, ptr %6, align 8, !tbaa !181
  %12 = getelementptr inbounds nuw %struct._hash_node_t, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 4, !tbaa !183
  %14 = load ptr, ptr %7, align 8, !tbaa !181
  %15 = getelementptr inbounds nuw %struct._hash_node_t, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 4, !tbaa !183
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %29

19:                                               ; preds = %2
  %20 = load ptr, ptr %6, align 8, !tbaa !181
  %21 = getelementptr inbounds nuw %struct._hash_node_t, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 4, !tbaa !183
  %23 = load ptr, ptr %7, align 8, !tbaa !181
  %24 = getelementptr inbounds nuw %struct._hash_node_t, ptr %23, i32 0, i32 0
  %25 = load i32, ptr %24, align 4, !tbaa !183
  %26 = icmp ugt i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %29

28:                                               ; preds = %19
  store i32 0, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %29

29:                                               ; preds = %28, %27, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #8
  %30 = load i32, ptr %3, align 4
  ret i32 %30
}

; Function Attrs: nounwind
define internal void @extend_hit(i32 noundef signext %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3, i32 noundef signext %4, i32 noundef signext %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, ptr %9, align 4, !tbaa !25
  store i32 %1, ptr %10, align 4, !tbaa !25
  store ptr %2, ptr %11, align 8, !tbaa !3
  store ptr %3, ptr %12, align 8, !tbaa !64
  store i32 %4, ptr %13, align 4, !tbaa !25
  store i32 %5, ptr %14, align 4, !tbaa !25
  store ptr %6, ptr %15, align 8, !tbaa !10
  store ptr %7, ptr %16, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %19) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %21) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #8
  %28 = load i32, ptr %10, align 4, !tbaa !25
  %29 = load i32, ptr %9, align 4, !tbaa !25
  %30 = sub nsw i32 %28, %29
  store i32 %30, ptr %25, align 4, !tbaa !25
  %31 = load ptr, ptr %16, align 8, !tbaa !99
  %32 = load i32, ptr %25, align 4, !tbaa !25
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !25
  %36 = load i32, ptr %9, align 4, !tbaa !25
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %8
  store i32 1, ptr %27, align 4
  br label %249

39:                                               ; preds = %8
  store i32 0, ptr %24, align 4, !tbaa !25
  store i32 0, ptr %23, align 4, !tbaa !25
  %40 = load ptr, ptr %11, align 8, !tbaa !3
  %41 = getelementptr inbounds nuw %struct._hash_env_t, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !36
  %43 = load i32, ptr %9, align 4, !tbaa !25
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %42, i64 %44
  store ptr %45, ptr %20, align 8, !tbaa !64
  %46 = load ptr, ptr %12, align 8, !tbaa !64
  %47 = load i32, ptr %10, align 4, !tbaa !25
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %46, i64 %48
  store ptr %49, ptr %21, align 8, !tbaa !64
  %50 = load ptr, ptr %20, align 8, !tbaa !64
  store ptr %50, ptr %19, align 8, !tbaa !64
  br label %51

51:                                               ; preds = %101, %39
  %52 = load ptr, ptr %21, align 8, !tbaa !64
  %53 = load ptr, ptr %12, align 8, !tbaa !64
  %54 = load i32, ptr %13, align 4, !tbaa !25
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds nuw i8, ptr %53, i64 %55
  %57 = icmp ult ptr %52, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %51
  %59 = load ptr, ptr %20, align 8, !tbaa !64
  %60 = load ptr, ptr %11, align 8, !tbaa !3
  %61 = getelementptr inbounds nuw %struct._hash_env_t, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !36
  %63 = load ptr, ptr %11, align 8, !tbaa !3
  %64 = getelementptr inbounds nuw %struct._hash_env_t, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !12
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr %62, i64 %66
  %68 = icmp ult ptr %59, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load i32, ptr %24, align 4, !tbaa !25
  %71 = load i32, ptr %23, align 4, !tbaa !25
  %72 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 14), align 8, !tbaa !210
  %73 = sub nsw i32 %71, %72
  %74 = icmp sge i32 %70, %73
  br label %75

75:                                               ; preds = %69, %58, %51
  %76 = phi i1 [ false, %58 ], [ false, %51 ], [ %74, %69 ]
  br i1 %76, label %77, label %102

77:                                               ; preds = %75
  %78 = load ptr, ptr %21, align 8, !tbaa !64
  %79 = getelementptr inbounds nuw i8, ptr %78, i32 1
  store ptr %79, ptr %21, align 8, !tbaa !64
  %80 = load i8, ptr %78, align 1, !tbaa !28
  %81 = zext i8 %80 to i32
  %82 = load ptr, ptr %20, align 8, !tbaa !64
  %83 = getelementptr inbounds nuw i8, ptr %82, i32 1
  store ptr %83, ptr %20, align 8, !tbaa !64
  %84 = load i8, ptr %82, align 1, !tbaa !28
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %81, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 12), align 8, !tbaa !50
  br label %91

89:                                               ; preds = %77
  %90 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 10), align 8, !tbaa !51
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = load i32, ptr %24, align 4, !tbaa !25
  %94 = add nsw i32 %93, %92
  store i32 %94, ptr %24, align 4, !tbaa !25
  %95 = load i32, ptr %24, align 4, !tbaa !25
  %96 = load i32, ptr %23, align 4, !tbaa !25
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, ptr %24, align 4, !tbaa !25
  store i32 %99, ptr %23, align 4, !tbaa !25
  %100 = load ptr, ptr %20, align 8, !tbaa !64
  store ptr %100, ptr %19, align 8, !tbaa !64
  br label %101

101:                                              ; preds = %98, %91
  br label %51, !llvm.loop !211

102:                                              ; preds = %75
  store i32 0, ptr %24, align 4, !tbaa !25
  store i32 0, ptr %22, align 4, !tbaa !25
  %103 = load ptr, ptr %11, align 8, !tbaa !3
  %104 = getelementptr inbounds nuw %struct._hash_env_t, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !36
  %106 = load i32, ptr %9, align 4, !tbaa !25
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, ptr %105, i64 %107
  %109 = load ptr, ptr %11, align 8, !tbaa !3
  %110 = getelementptr inbounds nuw %struct._hash_env_t, ptr %109, i32 0, i32 5
  %111 = load i32, ptr %110, align 4, !tbaa !45
  %112 = zext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i8, ptr %108, i64 %113
  store ptr %114, ptr %20, align 8, !tbaa !64
  store ptr %114, ptr %18, align 8, !tbaa !64
  %115 = load ptr, ptr %12, align 8, !tbaa !64
  %116 = load i32, ptr %10, align 4, !tbaa !25
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %115, i64 %117
  %119 = load ptr, ptr %11, align 8, !tbaa !3
  %120 = getelementptr inbounds nuw %struct._hash_env_t, ptr %119, i32 0, i32 5
  %121 = load i32, ptr %120, align 4, !tbaa !45
  %122 = zext i32 %121 to i64
  %123 = sub i64 0, %122
  %124 = getelementptr inbounds i8, ptr %118, i64 %123
  store ptr %124, ptr %21, align 8, !tbaa !64
  store ptr %124, ptr %17, align 8, !tbaa !64
  br label %125

125:                                              ; preds = %168, %102
  %126 = load ptr, ptr %21, align 8, !tbaa !64
  %127 = load ptr, ptr %12, align 8, !tbaa !64
  %128 = icmp ugt ptr %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %125
  %130 = load ptr, ptr %20, align 8, !tbaa !64
  %131 = load ptr, ptr %11, align 8, !tbaa !3
  %132 = getelementptr inbounds nuw %struct._hash_env_t, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !36
  %134 = icmp ugt ptr %130, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load i32, ptr %24, align 4, !tbaa !25
  %137 = load i32, ptr %22, align 4, !tbaa !25
  %138 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 14), align 8, !tbaa !210
  %139 = sub nsw i32 %137, %138
  %140 = icmp sge i32 %136, %139
  br label %141

141:                                              ; preds = %135, %129, %125
  %142 = phi i1 [ false, %129 ], [ false, %125 ], [ %140, %135 ]
  br i1 %142, label %143, label %169

143:                                              ; preds = %141
  %144 = load ptr, ptr %21, align 8, !tbaa !64
  %145 = getelementptr inbounds i8, ptr %144, i32 -1
  store ptr %145, ptr %21, align 8, !tbaa !64
  %146 = load i8, ptr %145, align 1, !tbaa !28
  %147 = zext i8 %146 to i32
  %148 = load ptr, ptr %20, align 8, !tbaa !64
  %149 = getelementptr inbounds i8, ptr %148, i32 -1
  store ptr %149, ptr %20, align 8, !tbaa !64
  %150 = load i8, ptr %149, align 1, !tbaa !28
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %147, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %143
  %154 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 12), align 8, !tbaa !50
  br label %157

155:                                              ; preds = %143
  %156 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 10), align 8, !tbaa !51
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = load i32, ptr %24, align 4, !tbaa !25
  %160 = add nsw i32 %159, %158
  store i32 %160, ptr %24, align 4, !tbaa !25
  %161 = load i32, ptr %24, align 4, !tbaa !25
  %162 = load i32, ptr %22, align 4, !tbaa !25
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load i32, ptr %24, align 4, !tbaa !25
  store i32 %165, ptr %22, align 4, !tbaa !25
  %166 = load ptr, ptr %21, align 8, !tbaa !64
  store ptr %166, ptr %17, align 8, !tbaa !64
  %167 = load ptr, ptr %20, align 8, !tbaa !64
  store ptr %167, ptr %18, align 8, !tbaa !64
  br label %168

168:                                              ; preds = %164, %157
  br label %125, !llvm.loop !212

169:                                              ; preds = %141
  %170 = load ptr, ptr %11, align 8, !tbaa !3
  %171 = getelementptr inbounds nuw %struct._hash_env_t, ptr %170, i32 0, i32 5
  %172 = load i32, ptr %171, align 4, !tbaa !45
  %173 = load i32, ptr %23, align 4, !tbaa !25
  %174 = add i32 %172, %173
  %175 = load i32, ptr %22, align 4, !tbaa !25
  %176 = add i32 %174, %175
  store i32 %176, ptr %26, align 4, !tbaa !25
  %177 = load i32, ptr %26, align 4, !tbaa !25
  %178 = load i32, ptr %14, align 4, !tbaa !25
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %231

180:                                              ; preds = %169
  %181 = load ptr, ptr %15, align 8, !tbaa !10
  %182 = load ptr, ptr %18, align 8, !tbaa !64
  %183 = load ptr, ptr %11, align 8, !tbaa !3
  %184 = getelementptr inbounds nuw %struct._hash_env_t, ptr %183, i32 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !36
  %186 = ptrtoint ptr %182 to i64
  %187 = ptrtoint ptr %185 to i64
  %188 = sub i64 %186, %187
  %189 = trunc i64 %188 to i32
  %190 = load ptr, ptr %17, align 8, !tbaa !64
  %191 = load ptr, ptr %12, align 8, !tbaa !64
  %192 = ptrtoint ptr %190 to i64
  %193 = ptrtoint ptr %191 to i64
  %194 = sub i64 %192, %193
  %195 = trunc i64 %194 to i32
  %196 = load ptr, ptr %19, align 8, !tbaa !64
  %197 = load ptr, ptr %11, align 8, !tbaa !3
  %198 = getelementptr inbounds nuw %struct._hash_env_t, ptr %197, i32 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !36
  %200 = ptrtoint ptr %196 to i64
  %201 = ptrtoint ptr %199 to i64
  %202 = sub i64 %200, %201
  %203 = sub nsw i64 %202, 1
  %204 = trunc i64 %203 to i32
  %205 = load ptr, ptr %17, align 8, !tbaa !64
  %206 = load ptr, ptr %12, align 8, !tbaa !64
  %207 = ptrtoint ptr %205 to i64
  %208 = ptrtoint ptr %206 to i64
  %209 = sub i64 %207, %208
  %210 = load ptr, ptr %19, align 8, !tbaa !64
  %211 = getelementptr inbounds i8, ptr %210, i64 %209
  %212 = load ptr, ptr %18, align 8, !tbaa !64
  %213 = ptrtoint ptr %211 to i64
  %214 = ptrtoint ptr %212 to i64
  %215 = sub i64 %213, %214
  %216 = sub nsw i64 %215, 1
  %217 = trunc i64 %216 to i32
  %218 = call ptr @new_exon(i32 noundef signext %189, i32 noundef signext %195, i32 noundef signext %204, i32 noundef signext %217)
  call void @add_col_elt(ptr noundef %181, ptr noundef %218)
  %219 = load i32, ptr %26, align 4, !tbaa !25
  %220 = load ptr, ptr %15, align 8, !tbaa !10
  %221 = getelementptr inbounds nuw %struct._collec_t, ptr %220, i32 0, i32 0
  %222 = load ptr, ptr %221, align 8, !tbaa !28
  %223 = load ptr, ptr %15, align 8, !tbaa !10
  %224 = getelementptr inbounds nuw %struct._collec_t, ptr %223, i32 0, i32 1
  %225 = load i32, ptr %224, align 8, !tbaa !26
  %226 = sub i32 %225, 1
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds nuw ptr, ptr %222, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !37
  %230 = getelementptr inbounds nuw %struct._exon_t, ptr %229, i32 0, i32 4
  store i32 %219, ptr %230, align 4, !tbaa !177
  br label %231

231:                                              ; preds = %180, %169
  %232 = load ptr, ptr %19, align 8, !tbaa !64
  %233 = load ptr, ptr %11, align 8, !tbaa !3
  %234 = getelementptr inbounds nuw %struct._hash_env_t, ptr %233, i32 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !36
  %236 = ptrtoint ptr %232 to i64
  %237 = ptrtoint ptr %235 to i64
  %238 = sub i64 %236, %237
  %239 = load ptr, ptr %11, align 8, !tbaa !3
  %240 = getelementptr inbounds nuw %struct._hash_env_t, ptr %239, i32 0, i32 5
  %241 = load i32, ptr %240, align 4, !tbaa !45
  %242 = zext i32 %241 to i64
  %243 = add nsw i64 %238, %242
  %244 = trunc i64 %243 to i32
  %245 = load ptr, ptr %16, align 8, !tbaa !99
  %246 = load i32, ptr %25, align 4, !tbaa !25
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, ptr %245, i64 %247
  store i32 %244, ptr %248, align 4, !tbaa !25
  store i32 0, ptr %27, align 4
  br label %249

249:                                              ; preds = %231, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #8
  %250 = load i32, ptr %27, align 4
  switch i32 %250, label %252 [
    i32 0, label %251
    i32 1, label %251
  ]

251:                                              ; preds = %249, %249
  ret void

252:                                              ; preds = %249
  unreachable
}

; Function Attrs: nounwind
define internal ptr @new_exon(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4, !tbaa !25
  store i32 %1, ptr %6, align 4, !tbaa !25
  store i32 %2, ptr %7, align 4, !tbaa !25
  store i32 %3, ptr %8, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #8
  %10 = call ptr @xmalloc(i64 noundef 32)
  store ptr %10, ptr %9, align 8, !tbaa !37
  %11 = load i32, ptr %5, align 4, !tbaa !25
  %12 = load ptr, ptr %9, align 8, !tbaa !37
  %13 = getelementptr inbounds nuw %struct._exon_t, ptr %12, i32 0, i32 0
  store i32 %11, ptr %13, align 4, !tbaa !41
  %14 = load i32, ptr %6, align 4, !tbaa !25
  %15 = load ptr, ptr %9, align 8, !tbaa !37
  %16 = getelementptr inbounds nuw %struct._exon_t, ptr %15, i32 0, i32 1
  store i32 %14, ptr %16, align 4, !tbaa !39
  %17 = load i32, ptr %7, align 4, !tbaa !25
  %18 = load ptr, ptr %9, align 8, !tbaa !37
  %19 = getelementptr inbounds nuw %struct._exon_t, ptr %18, i32 0, i32 2
  store i32 %17, ptr %19, align 4, !tbaa !53
  %20 = load i32, ptr %8, align 4, !tbaa !25
  %21 = load ptr, ptr %9, align 8, !tbaa !37
  %22 = getelementptr inbounds nuw %struct._exon_t, ptr %21, i32 0, i32 3
  store i32 %20, ptr %22, align 4, !tbaa !52
  %23 = load ptr, ptr %9, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #8
  ret ptr %23
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: inlinehint nounwind
define internal signext i32 @lies_after_p(ptr noundef %0, ptr noundef %1) #5 {
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
  store ptr %0, ptr %4, align 8, !tbaa !37
  store ptr %1, ptr %5, align 8, !tbaa !37
  %13 = load ptr, ptr %5, align 8, !tbaa !37
  %14 = getelementptr inbounds nuw %struct._exon_t, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 4, !tbaa !41
  %16 = load ptr, ptr %4, align 8, !tbaa !37
  %17 = getelementptr inbounds nuw %struct._exon_t, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !53
  %19 = icmp ugt i32 %15, %18
  br i1 %19, label %20, label %88

20:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  %21 = load ptr, ptr %5, align 8, !tbaa !37
  %22 = getelementptr inbounds nuw %struct._exon_t, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !39
  %24 = load ptr, ptr %4, align 8, !tbaa !37
  %25 = getelementptr inbounds nuw %struct._exon_t, ptr %24, i32 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !52
  %27 = icmp ugt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, ptr %3, align 4
  store i32 1, ptr %9, align 4
  br label %85

29:                                               ; preds = %20
  %30 = load ptr, ptr %5, align 8, !tbaa !37
  %31 = getelementptr inbounds nuw %struct._exon_t, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !39
  %33 = load ptr, ptr %4, align 8, !tbaa !37
  %34 = getelementptr inbounds nuw %struct._exon_t, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !39
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load ptr, ptr %5, align 8, !tbaa !37
  %39 = getelementptr inbounds nuw %struct._exon_t, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !52
  %41 = load ptr, ptr %4, align 8, !tbaa !37
  %42 = getelementptr inbounds nuw %struct._exon_t, ptr %41, i32 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !52
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37, %29
  store i32 0, ptr %3, align 4
  store i32 1, ptr %9, align 4
  br label %85

46:                                               ; preds = %37
  %47 = load ptr, ptr %5, align 8, !tbaa !37
  %48 = getelementptr inbounds nuw %struct._exon_t, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !39
  %50 = load ptr, ptr %4, align 8, !tbaa !37
  %51 = getelementptr inbounds nuw %struct._exon_t, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !39
  %53 = sub i32 %49, %52
  store i32 %53, ptr %6, align 4, !tbaa !25
  %54 = load ptr, ptr %4, align 8, !tbaa !37
  %55 = getelementptr inbounds nuw %struct._exon_t, ptr %54, i32 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !52
  %57 = load ptr, ptr %5, align 8, !tbaa !37
  %58 = getelementptr inbounds nuw %struct._exon_t, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !39
  %60 = sub i32 %56, %59
  store i32 %60, ptr %7, align 4, !tbaa !25
  %61 = load ptr, ptr %5, align 8, !tbaa !37
  %62 = getelementptr inbounds nuw %struct._exon_t, ptr %61, i32 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !52
  %64 = load ptr, ptr %4, align 8, !tbaa !37
  %65 = getelementptr inbounds nuw %struct._exon_t, ptr %64, i32 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !52
  %67 = sub i32 %63, %66
  store i32 %67, ptr %8, align 4, !tbaa !25
  %68 = load i32, ptr %6, align 4, !tbaa !25
  %69 = load i32, ptr %7, align 4, !tbaa !25
  %70 = icmp ugt i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %46
  %72 = load i32, ptr %8, align 4, !tbaa !25
  %73 = load i32, ptr %7, align 4, !tbaa !25
  %74 = icmp ugt i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i32, ptr %6, align 4, !tbaa !25
  %77 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 8), align 8, !tbaa !22
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, ptr %8, align 4, !tbaa !25
  %81 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 8), align 8, !tbaa !22
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 1, ptr %3, align 4
  store i32 1, ptr %9, align 4
  br label %85

84:                                               ; preds = %79, %75, %71, %46
  store i32 0, ptr %9, align 4
  br label %85

85:                                               ; preds = %84, %83, %45, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  %86 = load i32, ptr %9, align 4
  switch i32 %86, label %159 [
    i32 0, label %87
    i32 1, label %157
  ]

87:                                               ; preds = %85
  br label %156

88:                                               ; preds = %2
  %89 = load ptr, ptr %5, align 8, !tbaa !37
  %90 = getelementptr inbounds nuw %struct._exon_t, ptr %89, i32 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !39
  %92 = load ptr, ptr %4, align 8, !tbaa !37
  %93 = getelementptr inbounds nuw %struct._exon_t, ptr %92, i32 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !52
  %95 = icmp ugt i32 %91, %94
  br i1 %95, label %96, label %155

96:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  %97 = load ptr, ptr %5, align 8, !tbaa !37
  %98 = getelementptr inbounds nuw %struct._exon_t, ptr %97, i32 0, i32 0
  %99 = load i32, ptr %98, align 4, !tbaa !41
  %100 = load ptr, ptr %4, align 8, !tbaa !37
  %101 = getelementptr inbounds nuw %struct._exon_t, ptr %100, i32 0, i32 0
  %102 = load i32, ptr %101, align 4, !tbaa !41
  %103 = icmp ult i32 %99, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %96
  %105 = load ptr, ptr %5, align 8, !tbaa !37
  %106 = getelementptr inbounds nuw %struct._exon_t, ptr %105, i32 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !53
  %108 = load ptr, ptr %4, align 8, !tbaa !37
  %109 = getelementptr inbounds nuw %struct._exon_t, ptr %108, i32 0, i32 2
  %110 = load i32, ptr %109, align 4, !tbaa !53
  %111 = icmp ult i32 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104, %96
  store i32 0, ptr %3, align 4
  store i32 1, ptr %9, align 4
  br label %152

113:                                              ; preds = %104
  %114 = load ptr, ptr %5, align 8, !tbaa !37
  %115 = getelementptr inbounds nuw %struct._exon_t, ptr %114, i32 0, i32 0
  %116 = load i32, ptr %115, align 4, !tbaa !41
  %117 = load ptr, ptr %4, align 8, !tbaa !37
  %118 = getelementptr inbounds nuw %struct._exon_t, ptr %117, i32 0, i32 0
  %119 = load i32, ptr %118, align 4, !tbaa !41
  %120 = sub i32 %116, %119
  store i32 %120, ptr %10, align 4, !tbaa !25
  %121 = load ptr, ptr %4, align 8, !tbaa !37
  %122 = getelementptr inbounds nuw %struct._exon_t, ptr %121, i32 0, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !53
  %124 = load ptr, ptr %5, align 8, !tbaa !37
  %125 = getelementptr inbounds nuw %struct._exon_t, ptr %124, i32 0, i32 0
  %126 = load i32, ptr %125, align 4, !tbaa !41
  %127 = sub i32 %123, %126
  store i32 %127, ptr %11, align 4, !tbaa !25
  %128 = load ptr, ptr %5, align 8, !tbaa !37
  %129 = getelementptr inbounds nuw %struct._exon_t, ptr %128, i32 0, i32 2
  %130 = load i32, ptr %129, align 4, !tbaa !53
  %131 = load ptr, ptr %4, align 8, !tbaa !37
  %132 = getelementptr inbounds nuw %struct._exon_t, ptr %131, i32 0, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !53
  %134 = sub i32 %130, %133
  store i32 %134, ptr %12, align 4, !tbaa !25
  %135 = load i32, ptr %10, align 4, !tbaa !25
  %136 = load i32, ptr %11, align 4, !tbaa !25
  %137 = icmp ugt i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %113
  %139 = load i32, ptr %12, align 4, !tbaa !25
  %140 = load i32, ptr %11, align 4, !tbaa !25
  %141 = icmp ugt i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load i32, ptr %10, align 4, !tbaa !25
  %144 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 8), align 8, !tbaa !22
  %145 = icmp ugt i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load i32, ptr %12, align 4, !tbaa !25
  %148 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 8), align 8, !tbaa !22
  %149 = icmp ugt i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 1, ptr %3, align 4
  store i32 1, ptr %9, align 4
  br label %152

151:                                              ; preds = %146, %142, %138, %113
  store i32 0, ptr %9, align 4
  br label %152

152:                                              ; preds = %151, %150, %112
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  %153 = load i32, ptr %9, align 4
  switch i32 %153, label %159 [
    i32 0, label %154
    i32 1, label %157
  ]

154:                                              ; preds = %152
  br label %155

155:                                              ; preds = %154, %88
  br label %156

156:                                              ; preds = %155, %87
  store i32 0, ptr %3, align 4
  br label %157

157:                                              ; preds = %156, %152, %85
  %158 = load i32, ptr %3, align 4
  ret i32 %158

159:                                              ; preds = %152, %85
  unreachable
}

declare ptr @xrealloc(ptr noundef, i64 noundef) #4

declare ptr @tsearch(ptr noundef, ptr noundef, ptr noundef) #4

declare signext i32 @align_get_dist(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #4

declare void @align_path(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) #4

declare void @Condense_both_Ends(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
define internal signext i32 @about_same_gap_p(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, ptr %6, align 4, !tbaa !25
  store i32 %1, ptr %7, align 4, !tbaa !25
  store i32 %2, ptr %8, align 4, !tbaa !25
  store i32 %3, ptr %9, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  %15 = load i32, ptr %7, align 4, !tbaa !25
  %16 = load i32, ptr %6, align 4, !tbaa !25
  %17 = icmp ule i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, ptr %9, align 4, !tbaa !25
  %20 = load i32, ptr %8, align 4, !tbaa !25
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %4
  store i32 0, ptr %5, align 4
  store i32 1, ptr %13, align 4
  br label %51

23:                                               ; preds = %18
  %24 = load i32, ptr %7, align 4, !tbaa !25
  %25 = load i32, ptr %6, align 4, !tbaa !25
  %26 = sub i32 %24, %25
  %27 = sub i32 %26, 1
  store i32 %27, ptr %10, align 4, !tbaa !25
  %28 = load i32, ptr %9, align 4, !tbaa !25
  %29 = load i32, ptr %8, align 4, !tbaa !25
  %30 = sub i32 %28, %29
  %31 = sub i32 %30, 1
  store i32 %31, ptr %11, align 4, !tbaa !25
  %32 = load i32, ptr %11, align 4, !tbaa !25
  %33 = load i32, ptr %10, align 4, !tbaa !25
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8
  %36 = load i32, ptr %10, align 4, !tbaa !25
  store i32 %36, ptr %14, align 4, !tbaa !25
  %37 = load i32, ptr %11, align 4, !tbaa !25
  store i32 %37, ptr %10, align 4, !tbaa !25
  %38 = load i32, ptr %14, align 4, !tbaa !25
  store i32 %38, ptr %11, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8
  br label %39

39:                                               ; preds = %35, %23
  %40 = load i32, ptr %10, align 4, !tbaa !25
  %41 = load i32, ptr %11, align 4, !tbaa !25
  %42 = sub i32 %40, %41
  store i32 %42, ptr %12, align 4, !tbaa !25
  %43 = load i32, ptr %12, align 4, !tbaa !25
  %44 = mul i32 %43, 100
  %45 = load i32, ptr %10, align 4, !tbaa !25
  %46 = udiv i32 %44, %45
  %47 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 6), align 8, !tbaa !213
  %48 = icmp ule i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 1, ptr %5, align 4
  store i32 1, ptr %13, align 4
  br label %51

50:                                               ; preds = %39
  store i32 0, ptr %5, align 4
  store i32 1, ptr %13, align 4
  br label %51

51:                                               ; preds = %50, %49, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  %52 = load i32, ptr %5, align 4
  ret i32 %52
}

; Function Attrs: nounwind
define internal signext i32 @good_ratio(i32 noundef signext %0, i32 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !25
  store i32 %1, ptr %5, align 4, !tbaa !25
  %6 = load i32, ptr %4, align 4, !tbaa !25
  %7 = load i32, ptr %5, align 4, !tbaa !25
  %8 = sdiv i32 %7, 2
  %9 = icmp sle i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 2, ptr %3, align 4
  br label %23

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4, !tbaa !25
  %13 = load i32, ptr %5, align 4, !tbaa !25
  %14 = mul nsw i32 2, %13
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 5), align 4, !tbaa !214
  store i32 %17, ptr %3, align 4
  br label %23

18:                                               ; preds = %11
  %19 = load i32, ptr %4, align 4, !tbaa !25
  %20 = sitofp i32 %19 to double
  %21 = call double @llvm.fmuladd.f64(double 0x3FC3333333333334, double %20, double 1.000000e+00)
  %22 = fptosi double %21 to i32
  store i32 %22, ptr %3, align 4
  br label %23

23:                                               ; preds = %18, %16, %10
  %24 = load i32, ptr %3, align 4
  ret i32 %24
}

; Function Attrs: nounwind
define internal signext i32 @perfect_spl_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !64
  store ptr %1, ptr %6, align 8, !tbaa !64
  store ptr %2, ptr %7, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  %12 = load ptr, ptr %5, align 8, !tbaa !64
  %13 = load ptr, ptr %7, align 8, !tbaa !146
  %14 = getelementptr inbounds nuw %struct._splice_score_t, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 4, !tbaa !137
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 %16
  %18 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %19 = zext i32 %18 to i64
  %20 = sub i64 0, %19
  %21 = getelementptr inbounds i8, ptr %17, i64 %20
  %22 = load ptr, ptr %6, align 8, !tbaa !64
  %23 = load ptr, ptr %7, align 8, !tbaa !146
  %24 = getelementptr inbounds nuw %struct._splice_score_t, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !139
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds nuw i8, ptr %22, i64 %26
  %28 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %29 = zext i32 %28 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds i8, ptr %27, i64 %30
  %32 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %33 = call signext i32 @SWscore(ptr noundef %21, ptr noundef %31, i32 noundef signext %32)
  store i32 %33, ptr %8, align 4, !tbaa !25
  %34 = load i32, ptr %8, align 4, !tbaa !25
  %35 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i32 0, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %116

38:                                               ; preds = %3
  %39 = load ptr, ptr %5, align 8, !tbaa !64
  %40 = load ptr, ptr %7, align 8, !tbaa !146
  %41 = getelementptr inbounds nuw %struct._splice_score_t, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !140
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw i8, ptr %39, i64 %43
  %45 = getelementptr inbounds i8, ptr %44, i64 -1
  %46 = load ptr, ptr %6, align 8, !tbaa !64
  %47 = load ptr, ptr %7, align 8, !tbaa !146
  %48 = getelementptr inbounds nuw %struct._splice_score_t, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !139
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds nuw i8, ptr %46, i64 %50
  %52 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %53 = call signext i32 @SWscore(ptr noundef %45, ptr noundef %51, i32 noundef signext %52)
  store i32 %53, ptr %8, align 4, !tbaa !25
  %54 = load i32, ptr %8, align 4, !tbaa !25
  %55 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %38
  store i32 0, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %116

58:                                               ; preds = %38
  %59 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 0
  %60 = load ptr, ptr %5, align 8, !tbaa !64
  %61 = load ptr, ptr %7, align 8, !tbaa !146
  %62 = getelementptr inbounds nuw %struct._splice_score_t, ptr %61, i32 0, i32 0
  %63 = load i32, ptr %62, align 4, !tbaa !137
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds nuw i8, ptr %60, i64 %64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 1 %65, i64 2, i1 false)
  %66 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 0
  %67 = getelementptr inbounds i8, ptr %66, i64 2
  %68 = load ptr, ptr %5, align 8, !tbaa !64
  %69 = load ptr, ptr %7, align 8, !tbaa !146
  %70 = getelementptr inbounds nuw %struct._splice_score_t, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !140
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds nuw i8, ptr %68, i64 %72
  %74 = getelementptr inbounds i8, ptr %73, i64 -3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %67, ptr align 1 %74, i64 2, i1 false)
  store i32 0, ptr %9, align 4, !tbaa !25
  br label %75

75:                                               ; preds = %112, %58
  %76 = load i32, ptr %9, align 4, !tbaa !25
  %77 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 2), align 8, !tbaa !215
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %75
  %80 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 0
  %81 = load ptr, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 1), align 8, !tbaa !189
  %82 = load i32, ptr %9, align 4, !tbaa !25
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds nuw %struct._junction_t, ptr %81, i64 %83
  %85 = getelementptr inbounds nuw %struct._junction_t, ptr %84, i32 0, i32 0
  %86 = getelementptr inbounds [4 x i8], ptr %85, i64 0, i64 0
  %87 = call signext i32 @memcmp(ptr noundef %80, ptr noundef %86, i64 noundef 4) #9
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load i32, ptr %9, align 4, !tbaa !25
  %91 = load ptr, ptr %7, align 8, !tbaa !146
  %92 = getelementptr inbounds nuw %struct._splice_score_t, ptr %91, i32 0, i32 3
  store i32 %90, ptr %92, align 4, !tbaa !143
  %93 = load ptr, ptr %7, align 8, !tbaa !146
  %94 = getelementptr inbounds nuw %struct._splice_score_t, ptr %93, i32 0, i32 6
  store i32 1, ptr %94, align 4, !tbaa !141
  store i32 1, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %116

95:                                               ; preds = %79
  %96 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 0
  %97 = load ptr, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 1), align 8, !tbaa !189
  %98 = load i32, ptr %9, align 4, !tbaa !25
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds nuw %struct._junction_t, ptr %97, i64 %99
  %101 = getelementptr inbounds nuw %struct._junction_t, ptr %100, i32 0, i32 1
  %102 = getelementptr inbounds [4 x i8], ptr %101, i64 0, i64 0
  %103 = call signext i32 @memcmp(ptr noundef %96, ptr noundef %102, i64 noundef 4) #9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %95
  %106 = load i32, ptr %9, align 4, !tbaa !25
  %107 = load ptr, ptr %7, align 8, !tbaa !146
  %108 = getelementptr inbounds nuw %struct._splice_score_t, ptr %107, i32 0, i32 3
  store i32 %106, ptr %108, align 4, !tbaa !143
  %109 = load ptr, ptr %7, align 8, !tbaa !146
  %110 = getelementptr inbounds nuw %struct._splice_score_t, ptr %109, i32 0, i32 6
  store i32 -1, ptr %110, align 4, !tbaa !141
  store i32 1, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %116

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111
  %113 = load i32, ptr %9, align 4, !tbaa !25
  %114 = add i32 %113, 1
  store i32 %114, ptr %9, align 4, !tbaa !25
  br label %75, !llvm.loop !216

115:                                              ; preds = %75
  store i32 0, ptr %4, align 4
  store i32 1, ptr %11, align 4
  br label %116

116:                                              ; preds = %115, %105, %89, %57, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  %117 = load i32, ptr %4, align 4
  ret i32 %117
}

; Function Attrs: nounwind
define internal void @compute_max_score(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !64
  store ptr %1, ptr %6, align 8, !tbaa !64
  store ptr %2, ptr %7, align 8, !tbaa !146
  store i32 %3, ptr %8, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  %14 = load ptr, ptr %7, align 8, !tbaa !146
  %15 = getelementptr inbounds nuw %struct._splice_score_t, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 4, !tbaa !137
  store i32 %16, ptr %10, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  %17 = load ptr, ptr %7, align 8, !tbaa !146
  %18 = getelementptr inbounds nuw %struct._splice_score_t, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !139
  store i32 %19, ptr %11, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  %20 = load ptr, ptr %7, align 8, !tbaa !146
  %21 = getelementptr inbounds nuw %struct._splice_score_t, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !140
  store i32 %22, ptr %12, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #8
  %23 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %24 = mul i32 %23, 2
  %25 = add i32 %24, 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 %26, 1
  %28 = call ptr @xmalloc(i64 noundef %27)
  store ptr %28, ptr %13, align 8, !tbaa !64
  %29 = load ptr, ptr %7, align 8, !tbaa !146
  %30 = getelementptr inbounds nuw %struct._splice_score_t, ptr %29, i32 0, i32 4
  store i32 0, ptr %30, align 4, !tbaa !151
  %31 = load ptr, ptr %7, align 8, !tbaa !146
  %32 = getelementptr inbounds nuw %struct._splice_score_t, ptr %31, i32 0, i32 5
  store i32 0, ptr %32, align 4, !tbaa !152
  %33 = load ptr, ptr %7, align 8, !tbaa !146
  %34 = getelementptr inbounds nuw %struct._splice_score_t, ptr %33, i32 0, i32 3
  store i32 -1, ptr %34, align 4, !tbaa !143
  store i32 0, ptr %9, align 4, !tbaa !25
  br label %35

35:                                               ; preds = %76, %4
  %36 = load i32, ptr %9, align 4, !tbaa !25
  %37 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 2), align 8, !tbaa !215
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load i32, ptr %8, align 4, !tbaa !25
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load ptr, ptr %5, align 8, !tbaa !64
  %44 = load ptr, ptr %6, align 8, !tbaa !64
  %45 = load ptr, ptr %7, align 8, !tbaa !146
  %46 = load i32, ptr %9, align 4, !tbaa !25
  %47 = load i32, ptr %10, align 4, !tbaa !25
  %48 = load i32, ptr %11, align 4, !tbaa !25
  %49 = load i32, ptr %12, align 4, !tbaa !25
  %50 = load ptr, ptr %13, align 8, !tbaa !64
  %51 = load ptr, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 1), align 8, !tbaa !189
  %52 = load i32, ptr %9, align 4, !tbaa !25
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds nuw %struct._junction_t, ptr %51, i64 %53
  %55 = getelementptr inbounds nuw %struct._junction_t, ptr %54, i32 0, i32 0
  %56 = getelementptr inbounds [4 x i8], ptr %55, i64 0, i64 0
  call void @compute_max_score_1(ptr noundef %43, ptr noundef %44, ptr noundef %45, i32 noundef signext %46, i32 noundef signext %47, i32 noundef signext %48, i32 noundef signext %49, ptr noundef %50, ptr noundef %56, i32 noundef signext 1)
  br label %57

57:                                               ; preds = %42, %39
  %58 = load i32, ptr %8, align 4, !tbaa !25
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load ptr, ptr %5, align 8, !tbaa !64
  %62 = load ptr, ptr %6, align 8, !tbaa !64
  %63 = load ptr, ptr %7, align 8, !tbaa !146
  %64 = load i32, ptr %9, align 4, !tbaa !25
  %65 = load i32, ptr %10, align 4, !tbaa !25
  %66 = load i32, ptr %11, align 4, !tbaa !25
  %67 = load i32, ptr %12, align 4, !tbaa !25
  %68 = load ptr, ptr %13, align 8, !tbaa !64
  %69 = load ptr, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 1), align 8, !tbaa !189
  %70 = load i32, ptr %9, align 4, !tbaa !25
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds nuw %struct._junction_t, ptr %69, i64 %71
  %73 = getelementptr inbounds nuw %struct._junction_t, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds [4 x i8], ptr %73, i64 0, i64 0
  call void @compute_max_score_1(ptr noundef %61, ptr noundef %62, ptr noundef %63, i32 noundef signext %64, i32 noundef signext %65, i32 noundef signext %66, i32 noundef signext %67, ptr noundef %68, ptr noundef %74, i32 noundef signext -1)
  br label %75

75:                                               ; preds = %60, %57
  br label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %9, align 4, !tbaa !25
  %78 = add i32 %77, 1
  store i32 %78, ptr %9, align 4, !tbaa !25
  br label %35, !llvm.loop !217

79:                                               ; preds = %35
  %80 = load ptr, ptr %13, align 8, !tbaa !64
  call void @free(ptr noundef %80) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  ret void
}

; Function Attrs: nounwind
define internal signext i32 @splice_score_compare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !93
  store ptr %1, ptr %5, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #8
  %9 = load ptr, ptr %4, align 8, !tbaa !93
  store ptr %9, ptr %6, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #8
  %10 = load ptr, ptr %5, align 8, !tbaa !93
  store ptr %10, ptr %7, align 8, !tbaa !146
  %11 = load ptr, ptr %6, align 8, !tbaa !146
  %12 = getelementptr inbounds nuw %struct._splice_score_t, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !151
  %14 = load ptr, ptr %7, align 8, !tbaa !146
  %15 = getelementptr inbounds nuw %struct._splice_score_t, ptr %14, i32 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !151
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load ptr, ptr %6, align 8, !tbaa !146
  %21 = getelementptr inbounds nuw %struct._splice_score_t, ptr %20, i32 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !151
  %23 = load ptr, ptr %7, align 8, !tbaa !146
  %24 = getelementptr inbounds nuw %struct._splice_score_t, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !151
  %26 = icmp ugt i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %65

28:                                               ; preds = %19
  %29 = load ptr, ptr %6, align 8, !tbaa !146
  %30 = getelementptr inbounds nuw %struct._splice_score_t, ptr %29, i32 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !152
  %32 = load ptr, ptr %7, align 8, !tbaa !146
  %33 = getelementptr inbounds nuw %struct._splice_score_t, ptr %32, i32 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !152
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %65

37:                                               ; preds = %28
  %38 = load ptr, ptr %6, align 8, !tbaa !146
  %39 = getelementptr inbounds nuw %struct._splice_score_t, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !152
  %41 = load ptr, ptr %7, align 8, !tbaa !146
  %42 = getelementptr inbounds nuw %struct._splice_score_t, ptr %41, i32 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !152
  %44 = icmp ugt i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %65

46:                                               ; preds = %37
  %47 = load ptr, ptr %6, align 8, !tbaa !146
  %48 = getelementptr inbounds nuw %struct._splice_score_t, ptr %47, i32 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !143
  %50 = load ptr, ptr %7, align 8, !tbaa !146
  %51 = getelementptr inbounds nuw %struct._splice_score_t, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !143
  %53 = icmp ugt i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %65

55:                                               ; preds = %46
  %56 = load ptr, ptr %6, align 8, !tbaa !146
  %57 = getelementptr inbounds nuw %struct._splice_score_t, ptr %56, i32 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !143
  %59 = load ptr, ptr %7, align 8, !tbaa !146
  %60 = getelementptr inbounds nuw %struct._splice_score_t, ptr %59, i32 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !143
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 1, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %65

64:                                               ; preds = %55
  store i32 0, ptr %3, align 4
  store i32 1, ptr %8, align 4
  br label %65

65:                                               ; preds = %64, %63, %54, %45, %36, %27, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #8
  %66 = load i32, ptr %3, align 4
  ret i32 %66
}

; Function Attrs: nounwind
define internal signext i32 @SWscore(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  store ptr %0, ptr %4, align 8, !tbaa !64
  store ptr %1, ptr %5, align 8, !tbaa !64
  store i32 %2, ptr %6, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr %8) #8
  %9 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  store i32 0, ptr %9, align 4, !tbaa !25
  %10 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 0
  store i32 0, ptr %10, align 4, !tbaa !25
  %11 = load ptr, ptr %4, align 8, !tbaa !64
  %12 = load i8, ptr %11, align 1, !tbaa !28
  %13 = zext i8 %12 to i32
  %14 = load ptr, ptr %5, align 8, !tbaa !64
  %15 = load i8, ptr %14, align 1, !tbaa !28
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %13, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  store i32 %19, ptr %20, align 4, !tbaa !25
  store i32 1, ptr %7, align 4, !tbaa !25
  br label %21

21:                                               ; preds = %198, %3
  %22 = load i32, ptr %7, align 4, !tbaa !25
  %23 = load i32, ptr %6, align 4, !tbaa !25
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %201

25:                                               ; preds = %21
  %26 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 0
  %27 = load i32, ptr %26, align 4, !tbaa !25
  %28 = load ptr, ptr %4, align 8, !tbaa !64
  %29 = load i32, ptr %7, align 4, !tbaa !25
  %30 = sub i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds nuw i8, ptr %28, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !28
  %34 = zext i8 %33 to i32
  %35 = load ptr, ptr %5, align 8, !tbaa !64
  %36 = load i32, ptr %7, align 4, !tbaa !25
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !28
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %34, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = add nsw i32 %27, %43
  %45 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  %46 = load i32, ptr %45, align 4, !tbaa !25
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %25
  %49 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  %50 = load i32, ptr %49, align 4, !tbaa !25
  br label %71

51:                                               ; preds = %25
  %52 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 0
  %53 = load i32, ptr %52, align 4, !tbaa !25
  %54 = load ptr, ptr %4, align 8, !tbaa !64
  %55 = load i32, ptr %7, align 4, !tbaa !25
  %56 = sub i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds nuw i8, ptr %54, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !28
  %60 = zext i8 %59 to i32
  %61 = load ptr, ptr %5, align 8, !tbaa !64
  %62 = load i32, ptr %7, align 4, !tbaa !25
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !28
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %60, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = add nsw i32 %53, %69
  br label %71

71:                                               ; preds = %51, %48
  %72 = phi i32 [ %50, %48 ], [ %70, %51 ]
  %73 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 0
  store i32 %72, ptr %73, align 4, !tbaa !25
  %74 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  %75 = load i32, ptr %74, align 4, !tbaa !25
  %76 = load ptr, ptr %4, align 8, !tbaa !64
  %77 = load i32, ptr %7, align 4, !tbaa !25
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw i8, ptr %76, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !28
  %81 = zext i8 %80 to i32
  %82 = load ptr, ptr %5, align 8, !tbaa !64
  %83 = load i32, ptr %7, align 4, !tbaa !25
  %84 = sub i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds nuw i8, ptr %82, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !28
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %81, %88
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  %92 = add nsw i32 %75, %91
  %93 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  %94 = load i32, ptr %93, align 4, !tbaa !25
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %71
  %97 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  %98 = load i32, ptr %97, align 4, !tbaa !25
  br label %119

99:                                               ; preds = %71
  %100 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  %101 = load i32, ptr %100, align 4, !tbaa !25
  %102 = load ptr, ptr %4, align 8, !tbaa !64
  %103 = load i32, ptr %7, align 4, !tbaa !25
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds nuw i8, ptr %102, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !28
  %107 = zext i8 %106 to i32
  %108 = load ptr, ptr %5, align 8, !tbaa !64
  %109 = load i32, ptr %7, align 4, !tbaa !25
  %110 = sub i32 %109, 1
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds nuw i8, ptr %108, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !28
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %107, %114
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 1, i32 0
  %118 = add nsw i32 %101, %117
  br label %119

119:                                              ; preds = %99, %96
  %120 = phi i32 [ %98, %96 ], [ %118, %99 ]
  %121 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  store i32 %120, ptr %121, align 4, !tbaa !25
  %122 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 0
  %123 = load i32, ptr %122, align 4, !tbaa !25
  %124 = sub nsw i32 %123, 1
  %125 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  %126 = load i32, ptr %125, align 4, !tbaa !25
  %127 = sub nsw i32 %126, 1
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %119
  %130 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  %131 = load i32, ptr %130, align 4, !tbaa !25
  %132 = sub nsw i32 %131, 1
  br label %137

133:                                              ; preds = %119
  %134 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 0
  %135 = load i32, ptr %134, align 4, !tbaa !25
  %136 = sub nsw i32 %135, 1
  br label %137

137:                                              ; preds = %133, %129
  %138 = phi i32 [ %132, %129 ], [ %136, %133 ]
  %139 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  %140 = load i32, ptr %139, align 4, !tbaa !25
  %141 = load ptr, ptr %4, align 8, !tbaa !64
  %142 = load i32, ptr %7, align 4, !tbaa !25
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds nuw i8, ptr %141, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !28
  %146 = zext i8 %145 to i32
  %147 = load ptr, ptr %5, align 8, !tbaa !64
  %148 = load i32, ptr %7, align 4, !tbaa !25
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds nuw i8, ptr %147, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !28
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %146, %152
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 1, i32 0
  %156 = add nsw i32 %140, %155
  %157 = icmp slt i32 %138, %156
  br i1 %157, label %158, label %177

158:                                              ; preds = %137
  %159 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  %160 = load i32, ptr %159, align 4, !tbaa !25
  %161 = load ptr, ptr %4, align 8, !tbaa !64
  %162 = load i32, ptr %7, align 4, !tbaa !25
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds nuw i8, ptr %161, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !28
  %166 = zext i8 %165 to i32
  %167 = load ptr, ptr %5, align 8, !tbaa !64
  %168 = load i32, ptr %7, align 4, !tbaa !25
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds nuw i8, ptr %167, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !28
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %166, %172
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 1, i32 0
  %176 = add nsw i32 %160, %175
  br label %195

177:                                              ; preds = %137
  %178 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 0
  %179 = load i32, ptr %178, align 4, !tbaa !25
  %180 = sub nsw i32 %179, 1
  %181 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  %182 = load i32, ptr %181, align 4, !tbaa !25
  %183 = sub nsw i32 %182, 1
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %177
  %186 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  %187 = load i32, ptr %186, align 4, !tbaa !25
  %188 = sub nsw i32 %187, 1
  br label %193

189:                                              ; preds = %177
  %190 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 0
  %191 = load i32, ptr %190, align 4, !tbaa !25
  %192 = sub nsw i32 %191, 1
  br label %193

193:                                              ; preds = %189, %185
  %194 = phi i32 [ %188, %185 ], [ %192, %189 ]
  br label %195

195:                                              ; preds = %193, %158
  %196 = phi i32 [ %176, %158 ], [ %194, %193 ]
  %197 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  store i32 %196, ptr %197, align 4, !tbaa !25
  br label %198

198:                                              ; preds = %195
  %199 = load i32, ptr %7, align 4, !tbaa !25
  %200 = add i32 %199, 1
  store i32 %200, ptr %7, align 4, !tbaa !25
  br label %21, !llvm.loop !218

201:                                              ; preds = %21
  %202 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  %203 = load i32, ptr %202, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 12, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  ret i32 %203
}

; Function Attrs: nounwind willreturn memory(read)
declare signext i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: nounwind
define internal void @compute_max_score_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, ptr noundef %7, ptr noundef %8, i32 noundef signext %9) #0 {
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct._splice_score_t, align 4
  %23 = alloca %struct._splice_score_t, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct._splice_score_t, align 4
  store ptr %0, ptr %11, align 8, !tbaa !64
  store ptr %1, ptr %12, align 8, !tbaa !64
  store ptr %2, ptr %13, align 8, !tbaa !146
  store i32 %3, ptr %14, align 4, !tbaa !25
  store i32 %4, ptr %15, align 4, !tbaa !25
  store i32 %5, ptr %16, align 4, !tbaa !25
  store i32 %6, ptr %17, align 4, !tbaa !25
  store ptr %7, ptr %18, align 8, !tbaa !64
  store ptr %8, ptr %19, align 8, !tbaa !64
  store i32 %9, ptr %20, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  %26 = load ptr, ptr %18, align 8, !tbaa !64
  %27 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 %28
  %30 = load ptr, ptr %19, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 %30, i64 4, i1 false)
  %31 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 7), align 4, !tbaa !133
  %32 = sub i32 0, %31
  store i32 %32, ptr %21, align 4, !tbaa !25
  br label %33

33:                                               ; preds = %281, %10
  %34 = load i32, ptr %21, align 4, !tbaa !25
  %35 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 7), align 4, !tbaa !133
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %284

37:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 28, ptr %22) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr %23) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8
  %38 = load i32, ptr %14, align 4, !tbaa !25
  %39 = getelementptr inbounds nuw %struct._splice_score_t, ptr %23, i32 0, i32 3
  store i32 %38, ptr %39, align 4, !tbaa !143
  %40 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 3
  store i32 %38, ptr %40, align 4, !tbaa !143
  %41 = getelementptr inbounds nuw %struct._splice_score_t, ptr %23, i32 0, i32 5
  store i32 0, ptr %41, align 4, !tbaa !152
  %42 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 5
  store i32 0, ptr %42, align 4, !tbaa !152
  %43 = getelementptr inbounds nuw %struct._splice_score_t, ptr %23, i32 0, i32 4
  store i32 0, ptr %43, align 4, !tbaa !151
  %44 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 4
  store i32 0, ptr %44, align 4, !tbaa !151
  %45 = load ptr, ptr %18, align 8, !tbaa !64
  %46 = load ptr, ptr %12, align 8, !tbaa !64
  %47 = load i32, ptr %16, align 4, !tbaa !25
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 %48
  %50 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %51 = zext i32 %50 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i8, ptr %49, i64 %52
  %54 = load i32, ptr %21, align 4, !tbaa !25
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %53, i64 %55
  %57 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %58 = zext i32 %57 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 %56, i64 %58, i1 false)
  %59 = load ptr, ptr %18, align 8, !tbaa !64
  %60 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw i8, ptr %59, i64 %61
  %63 = getelementptr inbounds i8, ptr %62, i64 4
  %64 = load ptr, ptr %12, align 8, !tbaa !64
  %65 = load i32, ptr %16, align 4, !tbaa !25
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr %64, i64 %66
  %68 = load i32, ptr %21, align 4, !tbaa !25
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %67, i64 %69
  %71 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %72 = zext i32 %71 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %70, i64 %72, i1 false)
  store i32 -1, ptr %24, align 4, !tbaa !25
  br label %73

73:                                               ; preds = %235, %37
  %74 = load i32, ptr %24, align 4, !tbaa !25
  %75 = icmp sle i32 %74, 1
  br i1 %75, label %76, label %238

76:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 28, ptr %25) #8
  %77 = load i32, ptr %14, align 4, !tbaa !25
  %78 = getelementptr inbounds nuw %struct._splice_score_t, ptr %25, i32 0, i32 3
  store i32 %77, ptr %78, align 4, !tbaa !143
  %79 = getelementptr inbounds nuw %struct._splice_score_t, ptr %25, i32 0, i32 5
  store i32 0, ptr %79, align 4, !tbaa !152
  %80 = load ptr, ptr %11, align 8, !tbaa !64
  %81 = load i32, ptr %15, align 4, !tbaa !25
  %82 = load i32, ptr %21, align 4, !tbaa !25
  %83 = add i32 %81, %82
  %84 = load i32, ptr %24, align 4, !tbaa !25
  %85 = add i32 %83, %84
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds nuw i8, ptr %80, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !28
  %89 = zext i8 %88 to i32
  %90 = load ptr, ptr %19, align 8, !tbaa !64
  %91 = getelementptr inbounds i8, ptr %90, i64 0
  %92 = load i8, ptr %91, align 1, !tbaa !28
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %89, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %76
  %96 = getelementptr inbounds nuw %struct._splice_score_t, ptr %25, i32 0, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !152
  %98 = add i32 %97, 1
  store i32 %98, ptr %96, align 4, !tbaa !152
  br label %99

99:                                               ; preds = %95, %76
  %100 = load ptr, ptr %11, align 8, !tbaa !64
  %101 = load i32, ptr %15, align 4, !tbaa !25
  %102 = load i32, ptr %21, align 4, !tbaa !25
  %103 = add i32 %101, %102
  %104 = load i32, ptr %24, align 4, !tbaa !25
  %105 = add i32 %103, %104
  %106 = add i32 %105, 1
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds nuw i8, ptr %100, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !28
  %110 = zext i8 %109 to i32
  %111 = load ptr, ptr %19, align 8, !tbaa !64
  %112 = getelementptr inbounds i8, ptr %111, i64 1
  %113 = load i8, ptr %112, align 1, !tbaa !28
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %110, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %99
  %117 = getelementptr inbounds nuw %struct._splice_score_t, ptr %25, i32 0, i32 5
  %118 = load i32, ptr %117, align 4, !tbaa !152
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 4, !tbaa !152
  br label %120

120:                                              ; preds = %116, %99
  %121 = load ptr, ptr %11, align 8, !tbaa !64
  %122 = load i32, ptr %15, align 4, !tbaa !25
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds nuw i8, ptr %121, i64 %123
  %125 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %126 = zext i32 %125 to i64
  %127 = sub i64 0, %126
  %128 = getelementptr inbounds i8, ptr %124, i64 %127
  %129 = load i32, ptr %21, align 4, !tbaa !25
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %128, i64 %130
  %132 = load i32, ptr %24, align 4, !tbaa !25
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %131, i64 %133
  %135 = load ptr, ptr %18, align 8, !tbaa !64
  %136 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %137 = add i32 %136, 2
  %138 = call signext i32 @SWscore(ptr noundef %134, ptr noundef %135, i32 noundef signext %137)
  %139 = getelementptr inbounds nuw %struct._splice_score_t, ptr %25, i32 0, i32 4
  store i32 %138, ptr %139, align 4, !tbaa !151
  %140 = call signext i32 @splice_score_compare(ptr noundef %25, ptr noundef %22)
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %120
  %143 = getelementptr inbounds nuw %struct._splice_score_t, ptr %25, i32 0, i32 4
  %144 = load i32, ptr %143, align 4, !tbaa !151
  %145 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 4
  store i32 %144, ptr %145, align 4, !tbaa !151
  %146 = getelementptr inbounds nuw %struct._splice_score_t, ptr %25, i32 0, i32 5
  %147 = load i32, ptr %146, align 4, !tbaa !152
  %148 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 5
  store i32 %147, ptr %148, align 4, !tbaa !152
  %149 = load i32, ptr %15, align 4, !tbaa !25
  %150 = load i32, ptr %21, align 4, !tbaa !25
  %151 = add i32 %149, %150
  %152 = load i32, ptr %24, align 4, !tbaa !25
  %153 = add i32 %151, %152
  %154 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 0
  store i32 %153, ptr %154, align 4, !tbaa !137
  br label %155

155:                                              ; preds = %142, %120
  %156 = getelementptr inbounds nuw %struct._splice_score_t, ptr %25, i32 0, i32 5
  store i32 0, ptr %156, align 4, !tbaa !152
  %157 = load ptr, ptr %11, align 8, !tbaa !64
  %158 = load i32, ptr %17, align 4, !tbaa !25
  %159 = sub i32 %158, 3
  %160 = load i32, ptr %21, align 4, !tbaa !25
  %161 = add i32 %159, %160
  %162 = load i32, ptr %24, align 4, !tbaa !25
  %163 = add i32 %161, %162
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds nuw i8, ptr %157, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !28
  %167 = zext i8 %166 to i32
  %168 = load ptr, ptr %19, align 8, !tbaa !64
  %169 = getelementptr inbounds i8, ptr %168, i64 2
  %170 = load i8, ptr %169, align 1, !tbaa !28
  %171 = zext i8 %170 to i32
  %172 = icmp eq i32 %167, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %155
  %174 = getelementptr inbounds nuw %struct._splice_score_t, ptr %25, i32 0, i32 5
  %175 = load i32, ptr %174, align 4, !tbaa !152
  %176 = add i32 %175, 1
  store i32 %176, ptr %174, align 4, !tbaa !152
  br label %177

177:                                              ; preds = %173, %155
  %178 = load ptr, ptr %11, align 8, !tbaa !64
  %179 = load i32, ptr %17, align 4, !tbaa !25
  %180 = sub i32 %179, 2
  %181 = load i32, ptr %21, align 4, !tbaa !25
  %182 = add i32 %180, %181
  %183 = load i32, ptr %24, align 4, !tbaa !25
  %184 = add i32 %182, %183
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds nuw i8, ptr %178, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !28
  %188 = zext i8 %187 to i32
  %189 = load ptr, ptr %19, align 8, !tbaa !64
  %190 = getelementptr inbounds i8, ptr %189, i64 3
  %191 = load i8, ptr %190, align 1, !tbaa !28
  %192 = zext i8 %191 to i32
  %193 = icmp eq i32 %188, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %177
  %195 = getelementptr inbounds nuw %struct._splice_score_t, ptr %25, i32 0, i32 5
  %196 = load i32, ptr %195, align 4, !tbaa !152
  %197 = add i32 %196, 1
  store i32 %197, ptr %195, align 4, !tbaa !152
  br label %198

198:                                              ; preds = %194, %177
  %199 = load ptr, ptr %11, align 8, !tbaa !64
  %200 = load i32, ptr %17, align 4, !tbaa !25
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds nuw i8, ptr %199, i64 %201
  %203 = getelementptr inbounds i8, ptr %202, i64 -3
  %204 = load i32, ptr %21, align 4, !tbaa !25
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, ptr %203, i64 %205
  %207 = load i32, ptr %24, align 4, !tbaa !25
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, ptr %206, i64 %208
  %210 = load ptr, ptr %18, align 8, !tbaa !64
  %211 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds nuw i8, ptr %210, i64 %212
  %214 = getelementptr inbounds i8, ptr %213, i64 2
  %215 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !144
  %216 = add i32 %215, 2
  %217 = call signext i32 @SWscore(ptr noundef %209, ptr noundef %214, i32 noundef signext %216)
  %218 = getelementptr inbounds nuw %struct._splice_score_t, ptr %25, i32 0, i32 4
  store i32 %217, ptr %218, align 4, !tbaa !151
  %219 = call signext i32 @splice_score_compare(ptr noundef %25, ptr noundef %23)
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %198
  %222 = getelementptr inbounds nuw %struct._splice_score_t, ptr %25, i32 0, i32 4
  %223 = load i32, ptr %222, align 4, !tbaa !151
  %224 = getelementptr inbounds nuw %struct._splice_score_t, ptr %23, i32 0, i32 4
  store i32 %223, ptr %224, align 4, !tbaa !151
  %225 = getelementptr inbounds nuw %struct._splice_score_t, ptr %25, i32 0, i32 5
  %226 = load i32, ptr %225, align 4, !tbaa !152
  %227 = getelementptr inbounds nuw %struct._splice_score_t, ptr %23, i32 0, i32 5
  store i32 %226, ptr %227, align 4, !tbaa !152
  %228 = load i32, ptr %17, align 4, !tbaa !25
  %229 = load i32, ptr %21, align 4, !tbaa !25
  %230 = add i32 %228, %229
  %231 = load i32, ptr %24, align 4, !tbaa !25
  %232 = add i32 %230, %231
  %233 = getelementptr inbounds nuw %struct._splice_score_t, ptr %23, i32 0, i32 2
  store i32 %232, ptr %233, align 4, !tbaa !140
  br label %234

234:                                              ; preds = %221, %198
  call void @llvm.lifetime.end.p0(i64 28, ptr %25) #8
  br label %235

235:                                              ; preds = %234
  %236 = load i32, ptr %24, align 4, !tbaa !25
  %237 = add nsw i32 %236, 1
  store i32 %237, ptr %24, align 4, !tbaa !25
  br label %73, !llvm.loop !219

238:                                              ; preds = %73
  %239 = getelementptr inbounds nuw %struct._splice_score_t, ptr %23, i32 0, i32 4
  %240 = load i32, ptr %239, align 4, !tbaa !151
  %241 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 4
  %242 = load i32, ptr %241, align 4, !tbaa !151
  %243 = add i32 %242, %240
  store i32 %243, ptr %241, align 4, !tbaa !151
  %244 = getelementptr inbounds nuw %struct._splice_score_t, ptr %23, i32 0, i32 5
  %245 = load i32, ptr %244, align 4, !tbaa !152
  %246 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 5
  %247 = load i32, ptr %246, align 4, !tbaa !152
  %248 = add i32 %247, %245
  store i32 %248, ptr %246, align 4, !tbaa !152
  %249 = load ptr, ptr %13, align 8, !tbaa !146
  %250 = call signext i32 @splice_score_compare(ptr noundef %22, ptr noundef %249)
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %280

252:                                              ; preds = %238
  %253 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 4
  %254 = load i32, ptr %253, align 4, !tbaa !151
  %255 = load ptr, ptr %13, align 8, !tbaa !146
  %256 = getelementptr inbounds nuw %struct._splice_score_t, ptr %255, i32 0, i32 4
  store i32 %254, ptr %256, align 4, !tbaa !151
  %257 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 5
  %258 = load i32, ptr %257, align 4, !tbaa !152
  %259 = load ptr, ptr %13, align 8, !tbaa !146
  %260 = getelementptr inbounds nuw %struct._splice_score_t, ptr %259, i32 0, i32 5
  store i32 %258, ptr %260, align 4, !tbaa !152
  %261 = getelementptr inbounds nuw %struct._splice_score_t, ptr %22, i32 0, i32 0
  %262 = load i32, ptr %261, align 4, !tbaa !137
  %263 = load ptr, ptr %13, align 8, !tbaa !146
  %264 = getelementptr inbounds nuw %struct._splice_score_t, ptr %263, i32 0, i32 0
  store i32 %262, ptr %264, align 4, !tbaa !137
  %265 = load i32, ptr %16, align 4, !tbaa !25
  %266 = load i32, ptr %21, align 4, !tbaa !25
  %267 = add i32 %265, %266
  %268 = load ptr, ptr %13, align 8, !tbaa !146
  %269 = getelementptr inbounds nuw %struct._splice_score_t, ptr %268, i32 0, i32 1
  store i32 %267, ptr %269, align 4, !tbaa !139
  %270 = getelementptr inbounds nuw %struct._splice_score_t, ptr %23, i32 0, i32 2
  %271 = load i32, ptr %270, align 4, !tbaa !140
  %272 = load ptr, ptr %13, align 8, !tbaa !146
  %273 = getelementptr inbounds nuw %struct._splice_score_t, ptr %272, i32 0, i32 2
  store i32 %271, ptr %273, align 4, !tbaa !140
  %274 = load i32, ptr %14, align 4, !tbaa !25
  %275 = load ptr, ptr %13, align 8, !tbaa !146
  %276 = getelementptr inbounds nuw %struct._splice_score_t, ptr %275, i32 0, i32 3
  store i32 %274, ptr %276, align 4, !tbaa !143
  %277 = load i32, ptr %20, align 4, !tbaa !25
  %278 = load ptr, ptr %13, align 8, !tbaa !146
  %279 = getelementptr inbounds nuw %struct._splice_score_t, ptr %278, i32 0, i32 6
  store i32 %277, ptr %279, align 4, !tbaa !141
  br label %280

280:                                              ; preds = %252, %238
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr %22) #8
  br label %281

281:                                              ; preds = %280
  %282 = load i32, ptr %21, align 4, !tbaa !25
  %283 = add nsw i32 %282, 1
  store i32 %283, ptr %21, align 4, !tbaa !25
  br label %33, !llvm.loop !220

284:                                              ; preds = %33
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #5 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 _ZTS11_hash_env_t", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS6_seq_t", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS9_collec_t", !5, i64 0}
!12 = !{!13, !16, i64 16}
!13 = !{!"_hash_env_t", !14, i64 0, !15, i64 8, !16, i64 16, !17, i64 24, !16, i64 32, !16, i64 36}
!14 = !{!"any p2 pointer", !5, i64 0}
!15 = !{!"p1 omnipotent char", !5, i64 0}
!16 = !{!"int", !6, i64 0}
!17 = !{!"p1 int", !5, i64 0}
!18 = !{!19, !16, i64 4148}
!19 = !{!"_seq_t", !15, i64 0, !15, i64 8, !15, i64 16, !20, i64 24, !16, i64 4144, !16, i64 4148, !16, i64 4152, !16, i64 4156}
!20 = !{!"_read_buf_t", !15, i64 0, !16, i64 8, !16, i64 12, !16, i64 16, !6, i64 20}
!21 = !{!19, !15, i64 16}
!22 = !{!23, !16, i64 40}
!23 = !{!"_options_t", !15, i64 0, !24, i64 8, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !16, i64 60, !16, i64 64, !16, i64 68, !16, i64 72, !16, i64 76}
!24 = !{!"p1 _ZTS11_junction_t", !5, i64 0}
!25 = !{!16, !16, i64 0}
!26 = !{!27, !16, i64 8}
!27 = !{!"_collec_t", !6, i64 0, !16, i64 8, !16, i64 12}
!28 = !{!6, !6, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTS9_result_t", !5, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTS11_sim4_stats", !5, i64 0}
!33 = !{!34, !16, i64 4}
!34 = !{!"_sim4_stats", !16, i64 0, !16, i64 4, !16, i64 8}
!35 = !{!34, !16, i64 8}
!36 = !{!13, !15, i64 8}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTS7_exon_t", !5, i64 0}
!39 = !{!40, !16, i64 4}
!40 = !{!"_exon_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 24, !16, i64 24, !16, i64 28, !16, i64 28, !16, i64 31}
!41 = !{!40, !16, i64 0}
!42 = !{!43, !16, i64 24}
!43 = !{!"_result_t", !44, i64 0, !27, i64 8, !16, i64 24, !16, i64 28, !16, i64 32, !34, i64 36}
!44 = !{!"p1 _ZTS17_edit_script_list", !5, i64 0}
!45 = !{!13, !16, i64 36}
!46 = !{!23, !16, i64 24}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = !{!23, !16, i64 56}
!51 = !{!23, !16, i64 48}
!52 = !{!40, !16, i64 12}
!53 = !{!40, !16, i64 8}
!54 = !{!43, !16, i64 28}
!55 = distinct !{!55, !48}
!56 = distinct !{!56, !48}
!57 = distinct !{!57, !48}
!58 = distinct !{!58, !48}
!59 = distinct !{!59, !48}
!60 = !{!23, !16, i64 20}
!61 = !{!43, !44, i64 0}
!62 = distinct !{!62, !48}
!63 = !{!27, !16, i64 12}
!64 = !{!15, !15, i64 0}
!65 = distinct !{!65, !48}
!66 = distinct !{!66, !48}
!67 = !{!40, !16, i64 20}
!68 = !{!23, !16, i64 72}
!69 = distinct !{!69, !48}
!70 = distinct !{!70, !48}
!71 = distinct !{!71, !48}
!72 = !{i64 0, i64 4, !25, i64 4, i64 4, !25, i64 8, i64 4, !25}
!73 = distinct !{!73, !48}
!74 = distinct !{!74, !48}
!75 = distinct !{!75, !48}
!76 = distinct !{!76, !48}
!77 = !{!78, !16, i64 0}
!78 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8}
!79 = !{!78, !16, i64 4}
!80 = !{!78, !16, i64 8}
!81 = distinct !{!81, !48}
!82 = distinct !{!82, !48}
!83 = !{!43, !16, i64 40}
!84 = distinct !{!84, !48}
!85 = distinct !{!85, !48}
!86 = !{!43, !16, i64 44}
!87 = !{!13, !16, i64 32}
!88 = !{!13, !17, i64 24}
!89 = !{!13, !14, i64 0}
!90 = distinct !{!90, !48}
!91 = distinct !{!91, !48}
!92 = distinct !{!92, !48}
!93 = !{!5, !5, i64 0}
!94 = distinct !{!94, !48}
!95 = distinct !{!95, !48}
!96 = distinct !{!96, !48}
!97 = distinct !{!97, !48}
!98 = distinct !{!98, !48}
!99 = !{!17, !17, i64 0}
!100 = distinct !{!100, !48}
!101 = distinct !{!101, !48}
!102 = distinct !{!102, !48}
!103 = distinct !{!103, !48}
!104 = distinct !{!104, !48}
!105 = distinct !{!105, !48}
!106 = distinct !{!106, !48}
!107 = distinct !{!107, !48}
!108 = distinct !{!108, !48}
!109 = distinct !{!109, !48}
!110 = distinct !{!110, !48}
!111 = distinct !{!111, !48}
!112 = distinct !{!112, !48}
!113 = distinct !{!113, !48}
!114 = distinct !{!114, !48}
!115 = distinct !{!115, !48}
!116 = distinct !{!116, !48}
!117 = distinct !{!117, !48}
!118 = distinct !{!118, !48}
!119 = distinct !{!119, !48}
!120 = distinct !{!120, !48}
!121 = distinct !{!121, !48}
!122 = distinct !{!122, !48}
!123 = distinct !{!123, !48}
!124 = distinct !{!124, !48}
!125 = distinct !{!125, !48}
!126 = distinct !{!126, !48}
!127 = distinct !{!127, !48}
!128 = distinct !{!128, !48}
!129 = distinct !{!129, !48}
!130 = distinct !{!130, !48}
!131 = distinct !{!131, !48}
!132 = distinct !{!132, !48}
!133 = !{!23, !16, i64 36}
!134 = distinct !{!134, !48}
!135 = distinct !{!135, !48}
!136 = !{!43, !16, i64 16}
!137 = !{!138, !16, i64 0}
!138 = !{!"_splice_score_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24}
!139 = !{!138, !16, i64 4}
!140 = !{!138, !16, i64 8}
!141 = !{!138, !16, i64 24}
!142 = !{!43, !16, i64 32}
!143 = !{!138, !16, i64 12}
!144 = !{!23, !16, i64 44}
!145 = distinct !{!145, !48}
!146 = !{!147, !147, i64 0}
!147 = !{!"p1 _ZTS15_splice_score_t", !5, i64 0}
!148 = distinct !{!148, !48}
!149 = distinct !{!149, !48}
!150 = distinct !{!150, !48}
!151 = !{!138, !16, i64 16}
!152 = !{!138, !16, i64 20}
!153 = !{i64 0, i64 4, !25, i64 4, i64 4, !25, i64 8, i64 4, !25, i64 12, i64 4, !25, i64 16, i64 4, !25, i64 20, i64 4, !25, i64 24, i64 4, !25}
!154 = distinct !{!154, !48}
!155 = distinct !{!155, !48}
!156 = distinct !{!156, !48}
!157 = distinct !{!157, !48}
!158 = !{!159, !159, i64 0}
!159 = !{!"p2 _ZTS17_edit_script_list", !14, i64 0}
!160 = !{!161, !161, i64 0}
!161 = !{!"p1 _ZTS12_edit_script", !5, i64 0}
!162 = !{!44, !44, i64 0}
!163 = !{!164, !44, i64 0}
!164 = !{!"_edit_script_list", !44, i64 0, !161, i64 8, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32}
!165 = !{!164, !161, i64 8}
!166 = !{!164, !16, i64 16}
!167 = !{!164, !16, i64 20}
!168 = !{!164, !16, i64 24}
!169 = !{!164, !16, i64 28}
!170 = !{!164, !16, i64 32}
!171 = !{!172, !6, i64 12}
!172 = !{!"_edit_script", !161, i64 0, !16, i64 8, !6, i64 12}
!173 = !{!172, !16, i64 8}
!174 = !{!172, !161, i64 0}
!175 = distinct !{!175, !48}
!176 = distinct !{!176, !48}
!177 = !{!40, !16, i64 16}
!178 = distinct !{!178, !48}
!179 = distinct !{!179, !48}
!180 = distinct !{!180, !48}
!181 = !{!182, !182, i64 0}
!182 = !{!"p1 _ZTS12_hash_node_t", !5, i64 0}
!183 = !{!184, !16, i64 0}
!184 = !{!"_hash_node_t", !16, i64 0, !16, i64 4}
!185 = !{!186, !186, i64 0}
!186 = !{!"p2 _ZTS12_hash_node_t", !14, i64 0}
!187 = !{!184, !16, i64 4}
!188 = !{!23, !16, i64 68}
!189 = !{!23, !24, i64 8}
!190 = distinct !{!190, !48}
!191 = distinct !{!191, !48}
!192 = distinct !{!192, !48}
!193 = distinct !{!193, !48}
!194 = distinct !{!194, !48}
!195 = distinct !{!195, !48}
!196 = distinct !{!196, !48}
!197 = distinct !{!197, !48}
!198 = distinct !{!198, !48}
!199 = distinct !{!199, !48}
!200 = distinct !{!200, !48}
!201 = !{!202, !16, i64 4}
!202 = !{!"", !16, i64 0, !16, i64 4}
!203 = !{!202, !16, i64 0}
!204 = distinct !{!204, !48}
!205 = distinct !{!205, !48}
!206 = !{!207, !207, i64 0}
!207 = !{!"p2 _ZTS7_exon_t", !14, i64 0}
!208 = distinct !{!208, !48}
!209 = distinct !{!209, !48}
!210 = !{!23, !16, i64 64}
!211 = distinct !{!211, !48}
!212 = distinct !{!212, !48}
!213 = !{!23, !16, i64 32}
!214 = !{!23, !16, i64 28}
!215 = !{!23, !16, i64 16}
!216 = distinct !{!216, !48}
!217 = distinct !{!217, !48}
!218 = distinct !{!218, !48}
!219 = distinct !{!219, !48}
!220 = distinct !{!220, !48}
