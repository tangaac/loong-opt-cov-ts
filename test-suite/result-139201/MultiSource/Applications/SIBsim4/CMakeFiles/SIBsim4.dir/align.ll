; ModuleID = './MultiSource/Applications/SIBsim4/CMakeFiles/SIBsim4.dir/align.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/SIBsim4/align.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct._options_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._edit_script = type { ptr, i32, i8 }
%struct._collec_t = type { %union._collec_elt_t, i32, i32 }
%union._collec_elt_t = type { ptr }
%struct._exon_t = type { i32, i32, i32, i32, i32, i32, i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [49 x i8] c"align.c: warning: something wrong when aligning.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"align.c: warning: something wrong when dividing\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"align.c: Alignment fragment not found.\0A\00", align 1
@ALINE = internal global [51 x i8] zeroinitializer, align 1
@BLINE = internal global [51 x i8] zeroinitializer, align 1
@CLINE = internal global [51 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\0A%*u \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"    .    :\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"    .\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"\0A%*u %s\0A%*s %s\0A%*u %s\0A\00", align 1
@options = external global %struct._options_t, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"TROUBLE!!! startx:  %5d,  starty:  %5d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"TROUBLE!!! x:  %5d,  y:  %5d\0A\00", align 1

; Function Attrs: nounwind
define dso_local void @align_path(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, ptr noundef %7, ptr noundef %8, i32 noundef signext %9, i32 noundef signext %10) #0 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i8, align 1
  %48 = alloca i32, align 4
  store ptr %0, ptr %12, align 8, !tbaa !3
  store ptr %1, ptr %13, align 8, !tbaa !3
  store i32 %2, ptr %14, align 4, !tbaa !8
  store i32 %3, ptr %15, align 4, !tbaa !8
  store i32 %4, ptr %16, align 4, !tbaa !8
  store i32 %5, ptr %17, align 4, !tbaa !8
  store i32 %6, ptr %18, align 4, !tbaa !8
  store ptr %7, ptr %19, align 8, !tbaa !10
  store ptr %8, ptr %20, align 8, !tbaa !10
  store i32 %9, ptr %21, align 4, !tbaa !8
  store i32 %10, ptr %22, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %23) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %24) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %25) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %26) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %27) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %28) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %29) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %30) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %31) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %32) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %33) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %34) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %35) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %36) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %37) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %38) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %39) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %40) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %41) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %42) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %43) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %44) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %45) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %46) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %47) #4
  %49 = load ptr, ptr %20, align 8, !tbaa !10
  store ptr null, ptr %49, align 8, !tbaa !13
  %50 = load ptr, ptr %19, align 8, !tbaa !10
  store ptr null, ptr %50, align 8, !tbaa !13
  %51 = load i32, ptr %14, align 4, !tbaa !8
  %52 = load i32, ptr %16, align 4, !tbaa !8
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %11
  %55 = load i32, ptr %15, align 4, !tbaa !8
  %56 = load i32, ptr %17, align 4, !tbaa !8
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load ptr, ptr %19, align 8, !tbaa !10
  store ptr null, ptr %59, align 8, !tbaa !13
  br label %74

60:                                               ; preds = %54
  %61 = call ptr @xmalloc(i64 noundef 16)
  store ptr %61, ptr %27, align 8, !tbaa !13
  %62 = load ptr, ptr %27, align 8, !tbaa !13
  %63 = getelementptr inbounds nuw %struct._edit_script, ptr %62, i32 0, i32 2
  store i8 2, ptr %63, align 4, !tbaa !15
  %64 = load i32, ptr %17, align 4, !tbaa !8
  %65 = load i32, ptr %15, align 4, !tbaa !8
  %66 = sub nsw i32 %64, %65
  %67 = load ptr, ptr %27, align 8, !tbaa !13
  %68 = getelementptr inbounds nuw %struct._edit_script, ptr %67, i32 0, i32 1
  store i32 %66, ptr %68, align 8, !tbaa !17
  %69 = load ptr, ptr %27, align 8, !tbaa !13
  %70 = getelementptr inbounds nuw %struct._edit_script, ptr %69, i32 0, i32 0
  store ptr null, ptr %70, align 8, !tbaa !18
  %71 = load ptr, ptr %27, align 8, !tbaa !13
  %72 = load ptr, ptr %20, align 8, !tbaa !10
  store ptr %71, ptr %72, align 8, !tbaa !13
  %73 = load ptr, ptr %19, align 8, !tbaa !10
  store ptr %71, ptr %73, align 8, !tbaa !13
  br label %74

74:                                               ; preds = %60, %58
  store i32 1, ptr %48, align 4
  br label %952

75:                                               ; preds = %11
  %76 = load i32, ptr %15, align 4, !tbaa !8
  %77 = load i32, ptr %17, align 4, !tbaa !8
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = call ptr @xmalloc(i64 noundef 16)
  store ptr %80, ptr %27, align 8, !tbaa !13
  %81 = load ptr, ptr %27, align 8, !tbaa !13
  %82 = getelementptr inbounds nuw %struct._edit_script, ptr %81, i32 0, i32 2
  store i8 1, ptr %82, align 4, !tbaa !15
  %83 = load i32, ptr %16, align 4, !tbaa !8
  %84 = load i32, ptr %14, align 4, !tbaa !8
  %85 = sub nsw i32 %83, %84
  %86 = load ptr, ptr %27, align 8, !tbaa !13
  %87 = getelementptr inbounds nuw %struct._edit_script, ptr %86, i32 0, i32 1
  store i32 %85, ptr %87, align 8, !tbaa !17
  %88 = load ptr, ptr %27, align 8, !tbaa !13
  %89 = getelementptr inbounds nuw %struct._edit_script, ptr %88, i32 0, i32 0
  store ptr null, ptr %89, align 8, !tbaa !18
  %90 = load ptr, ptr %27, align 8, !tbaa !13
  %91 = load ptr, ptr %20, align 8, !tbaa !10
  store ptr %90, ptr %91, align 8, !tbaa !13
  %92 = load ptr, ptr %19, align 8, !tbaa !10
  store ptr %90, ptr %92, align 8, !tbaa !13
  store i32 1, ptr %48, align 4
  br label %952

93:                                               ; preds = %75
  %94 = load i32, ptr %18, align 4, !tbaa !8
  %95 = icmp sle i32 %94, 1
  br i1 %95, label %96, label %274

96:                                               ; preds = %93
  %97 = load i32, ptr %15, align 4, !tbaa !8
  %98 = load i32, ptr %14, align 4, !tbaa !8
  %99 = sub nsw i32 %97, %98
  store i32 %99, ptr %33, align 4, !tbaa !8
  %100 = load i32, ptr %17, align 4, !tbaa !8
  %101 = load i32, ptr %16, align 4, !tbaa !8
  %102 = sub nsw i32 %100, %101
  %103 = load i32, ptr %15, align 4, !tbaa !8
  %104 = load i32, ptr %14, align 4, !tbaa !8
  %105 = sub nsw i32 %103, %104
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %96
  %108 = call ptr @xmalloc(i64 noundef 16)
  store ptr %108, ptr %27, align 8, !tbaa !13
  %109 = load ptr, ptr %27, align 8, !tbaa !13
  %110 = getelementptr inbounds nuw %struct._edit_script, ptr %109, i32 0, i32 2
  store i8 3, ptr %110, align 4, !tbaa !15
  %111 = load i32, ptr %16, align 4, !tbaa !8
  %112 = load i32, ptr %14, align 4, !tbaa !8
  %113 = sub nsw i32 %111, %112
  %114 = load ptr, ptr %27, align 8, !tbaa !13
  %115 = getelementptr inbounds nuw %struct._edit_script, ptr %114, i32 0, i32 1
  store i32 %113, ptr %115, align 8, !tbaa !17
  %116 = load ptr, ptr %27, align 8, !tbaa !13
  %117 = getelementptr inbounds nuw %struct._edit_script, ptr %116, i32 0, i32 0
  store ptr null, ptr %117, align 8, !tbaa !18
  %118 = load ptr, ptr %27, align 8, !tbaa !13
  %119 = load ptr, ptr %20, align 8, !tbaa !10
  store ptr %118, ptr %119, align 8, !tbaa !13
  %120 = load ptr, ptr %19, align 8, !tbaa !10
  store ptr %118, ptr %120, align 8, !tbaa !13
  br label %273

121:                                              ; preds = %96
  %122 = load i32, ptr %17, align 4, !tbaa !8
  %123 = load i32, ptr %15, align 4, !tbaa !8
  %124 = sub nsw i32 %122, %123
  %125 = load i32, ptr %16, align 4, !tbaa !8
  %126 = load i32, ptr %14, align 4, !tbaa !8
  %127 = sub nsw i32 %125, %126
  %128 = add nsw i32 %127, 1
  %129 = icmp eq i32 %124, %128
  br i1 %129, label %130, label %194

130:                                              ; preds = %121
  %131 = load ptr, ptr %12, align 8, !tbaa !3
  %132 = load ptr, ptr %13, align 8, !tbaa !3
  %133 = load i32, ptr %33, align 4, !tbaa !8
  %134 = load i32, ptr %14, align 4, !tbaa !8
  %135 = load i32, ptr %16, align 4, !tbaa !8
  %136 = load i32, ptr %17, align 4, !tbaa !8
  %137 = call signext i32 @snake(ptr noundef %131, ptr noundef %132, i32 noundef signext %133, i32 noundef signext %134, i32 noundef signext %135, i32 noundef signext %136)
  store i32 %137, ptr %44, align 4, !tbaa !8
  %138 = load i32, ptr %44, align 4, !tbaa !8
  %139 = load i32, ptr %14, align 4, !tbaa !8
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %130
  %142 = call ptr @xmalloc(i64 noundef 16)
  store ptr %142, ptr %27, align 8, !tbaa !13
  %143 = load ptr, ptr %27, align 8, !tbaa !13
  %144 = getelementptr inbounds nuw %struct._edit_script, ptr %143, i32 0, i32 2
  store i8 3, ptr %144, align 4, !tbaa !15
  %145 = load i32, ptr %44, align 4, !tbaa !8
  %146 = load i32, ptr %14, align 4, !tbaa !8
  %147 = sub nsw i32 %145, %146
  %148 = load ptr, ptr %27, align 8, !tbaa !13
  %149 = getelementptr inbounds nuw %struct._edit_script, ptr %148, i32 0, i32 1
  store i32 %147, ptr %149, align 8, !tbaa !17
  %150 = load ptr, ptr %27, align 8, !tbaa !13
  %151 = load ptr, ptr %19, align 8, !tbaa !10
  store ptr %150, ptr %151, align 8, !tbaa !13
  br label %152

152:                                              ; preds = %141, %130
  %153 = call ptr @xmalloc(i64 noundef 16)
  store ptr %153, ptr %29, align 8, !tbaa !13
  %154 = load ptr, ptr %29, align 8, !tbaa !13
  %155 = getelementptr inbounds nuw %struct._edit_script, ptr %154, i32 0, i32 2
  store i8 2, ptr %155, align 4, !tbaa !15
  %156 = load ptr, ptr %29, align 8, !tbaa !13
  %157 = getelementptr inbounds nuw %struct._edit_script, ptr %156, i32 0, i32 1
  store i32 1, ptr %157, align 8, !tbaa !17
  %158 = load ptr, ptr %19, align 8, !tbaa !10
  %159 = load ptr, ptr %158, align 8, !tbaa !13
  %160 = icmp ne ptr %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %152
  %162 = load ptr, ptr %29, align 8, !tbaa !13
  %163 = load ptr, ptr %27, align 8, !tbaa !13
  %164 = getelementptr inbounds nuw %struct._edit_script, ptr %163, i32 0, i32 0
  store ptr %162, ptr %164, align 8, !tbaa !18
  br label %168

165:                                              ; preds = %152
  %166 = load ptr, ptr %29, align 8, !tbaa !13
  %167 = load ptr, ptr %19, align 8, !tbaa !10
  store ptr %166, ptr %167, align 8, !tbaa !13
  br label %168

168:                                              ; preds = %165, %161
  %169 = load ptr, ptr %29, align 8, !tbaa !13
  %170 = load ptr, ptr %20, align 8, !tbaa !10
  store ptr %169, ptr %170, align 8, !tbaa !13
  %171 = load ptr, ptr %29, align 8, !tbaa !13
  %172 = getelementptr inbounds nuw %struct._edit_script, ptr %171, i32 0, i32 0
  store ptr null, ptr %172, align 8, !tbaa !18
  %173 = load i32, ptr %16, align 4, !tbaa !8
  %174 = load i32, ptr %44, align 4, !tbaa !8
  %175 = sub nsw i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %193

177:                                              ; preds = %168
  %178 = load ptr, ptr %29, align 8, !tbaa !13
  store ptr %178, ptr %27, align 8, !tbaa !13
  %179 = call ptr @xmalloc(i64 noundef 16)
  store ptr %179, ptr %29, align 8, !tbaa !13
  %180 = load ptr, ptr %20, align 8, !tbaa !10
  store ptr %179, ptr %180, align 8, !tbaa !13
  %181 = load ptr, ptr %29, align 8, !tbaa !13
  %182 = getelementptr inbounds nuw %struct._edit_script, ptr %181, i32 0, i32 2
  store i8 3, ptr %182, align 4, !tbaa !15
  %183 = load i32, ptr %16, align 4, !tbaa !8
  %184 = load i32, ptr %44, align 4, !tbaa !8
  %185 = sub nsw i32 %183, %184
  %186 = load ptr, ptr %29, align 8, !tbaa !13
  %187 = getelementptr inbounds nuw %struct._edit_script, ptr %186, i32 0, i32 1
  store i32 %185, ptr %187, align 8, !tbaa !17
  %188 = load ptr, ptr %29, align 8, !tbaa !13
  %189 = getelementptr inbounds nuw %struct._edit_script, ptr %188, i32 0, i32 0
  store ptr null, ptr %189, align 8, !tbaa !18
  %190 = load ptr, ptr %29, align 8, !tbaa !13
  %191 = load ptr, ptr %27, align 8, !tbaa !13
  %192 = getelementptr inbounds nuw %struct._edit_script, ptr %191, i32 0, i32 0
  store ptr %190, ptr %192, align 8, !tbaa !18
  br label %193

193:                                              ; preds = %177, %168
  br label %272

194:                                              ; preds = %121
  %195 = load i32, ptr %17, align 4, !tbaa !8
  %196 = load i32, ptr %15, align 4, !tbaa !8
  %197 = sub nsw i32 %195, %196
  %198 = add nsw i32 %197, 1
  %199 = load i32, ptr %16, align 4, !tbaa !8
  %200 = load i32, ptr %14, align 4, !tbaa !8
  %201 = sub nsw i32 %199, %200
  %202 = icmp eq i32 %198, %201
  br i1 %202, label %203, label %268

203:                                              ; preds = %194
  %204 = load ptr, ptr %12, align 8, !tbaa !3
  %205 = load ptr, ptr %13, align 8, !tbaa !3
  %206 = load i32, ptr %33, align 4, !tbaa !8
  %207 = load i32, ptr %14, align 4, !tbaa !8
  %208 = load i32, ptr %16, align 4, !tbaa !8
  %209 = load i32, ptr %17, align 4, !tbaa !8
  %210 = call signext i32 @snake(ptr noundef %204, ptr noundef %205, i32 noundef signext %206, i32 noundef signext %207, i32 noundef signext %208, i32 noundef signext %209)
  store i32 %210, ptr %44, align 4, !tbaa !8
  %211 = load i32, ptr %44, align 4, !tbaa !8
  %212 = load i32, ptr %14, align 4, !tbaa !8
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %225

214:                                              ; preds = %203
  %215 = call ptr @xmalloc(i64 noundef 16)
  store ptr %215, ptr %27, align 8, !tbaa !13
  %216 = load ptr, ptr %27, align 8, !tbaa !13
  %217 = getelementptr inbounds nuw %struct._edit_script, ptr %216, i32 0, i32 2
  store i8 3, ptr %217, align 4, !tbaa !15
  %218 = load i32, ptr %44, align 4, !tbaa !8
  %219 = load i32, ptr %14, align 4, !tbaa !8
  %220 = sub nsw i32 %218, %219
  %221 = load ptr, ptr %27, align 8, !tbaa !13
  %222 = getelementptr inbounds nuw %struct._edit_script, ptr %221, i32 0, i32 1
  store i32 %220, ptr %222, align 8, !tbaa !17
  %223 = load ptr, ptr %27, align 8, !tbaa !13
  %224 = load ptr, ptr %19, align 8, !tbaa !10
  store ptr %223, ptr %224, align 8, !tbaa !13
  br label %225

225:                                              ; preds = %214, %203
  %226 = call ptr @xmalloc(i64 noundef 16)
  store ptr %226, ptr %29, align 8, !tbaa !13
  %227 = load ptr, ptr %29, align 8, !tbaa !13
  %228 = getelementptr inbounds nuw %struct._edit_script, ptr %227, i32 0, i32 2
  store i8 1, ptr %228, align 4, !tbaa !15
  %229 = load ptr, ptr %29, align 8, !tbaa !13
  %230 = getelementptr inbounds nuw %struct._edit_script, ptr %229, i32 0, i32 1
  store i32 1, ptr %230, align 8, !tbaa !17
  %231 = load ptr, ptr %19, align 8, !tbaa !10
  %232 = load ptr, ptr %231, align 8, !tbaa !13
  %233 = icmp ne ptr %232, null
  br i1 %233, label %234, label %238

234:                                              ; preds = %225
  %235 = load ptr, ptr %29, align 8, !tbaa !13
  %236 = load ptr, ptr %27, align 8, !tbaa !13
  %237 = getelementptr inbounds nuw %struct._edit_script, ptr %236, i32 0, i32 0
  store ptr %235, ptr %237, align 8, !tbaa !18
  br label %241

238:                                              ; preds = %225
  %239 = load ptr, ptr %29, align 8, !tbaa !13
  %240 = load ptr, ptr %19, align 8, !tbaa !10
  store ptr %239, ptr %240, align 8, !tbaa !13
  br label %241

241:                                              ; preds = %238, %234
  %242 = load ptr, ptr %29, align 8, !tbaa !13
  %243 = load ptr, ptr %20, align 8, !tbaa !10
  store ptr %242, ptr %243, align 8, !tbaa !13
  %244 = load ptr, ptr %29, align 8, !tbaa !13
  %245 = getelementptr inbounds nuw %struct._edit_script, ptr %244, i32 0, i32 0
  store ptr null, ptr %245, align 8, !tbaa !18
  %246 = load i32, ptr %16, align 4, !tbaa !8
  %247 = load i32, ptr %44, align 4, !tbaa !8
  %248 = add nsw i32 %247, 1
  %249 = icmp sgt i32 %246, %248
  br i1 %249, label %250, label %267

250:                                              ; preds = %241
  %251 = load ptr, ptr %29, align 8, !tbaa !13
  store ptr %251, ptr %27, align 8, !tbaa !13
  %252 = call ptr @xmalloc(i64 noundef 16)
  store ptr %252, ptr %29, align 8, !tbaa !13
  %253 = load ptr, ptr %20, align 8, !tbaa !10
  store ptr %252, ptr %253, align 8, !tbaa !13
  %254 = load ptr, ptr %29, align 8, !tbaa !13
  %255 = getelementptr inbounds nuw %struct._edit_script, ptr %254, i32 0, i32 2
  store i8 3, ptr %255, align 4, !tbaa !15
  %256 = load i32, ptr %16, align 4, !tbaa !8
  %257 = load i32, ptr %44, align 4, !tbaa !8
  %258 = sub nsw i32 %256, %257
  %259 = sub nsw i32 %258, 1
  %260 = load ptr, ptr %29, align 8, !tbaa !13
  %261 = getelementptr inbounds nuw %struct._edit_script, ptr %260, i32 0, i32 1
  store i32 %259, ptr %261, align 8, !tbaa !17
  %262 = load ptr, ptr %29, align 8, !tbaa !13
  %263 = getelementptr inbounds nuw %struct._edit_script, ptr %262, i32 0, i32 0
  store ptr null, ptr %263, align 8, !tbaa !18
  %264 = load ptr, ptr %29, align 8, !tbaa !13
  %265 = load ptr, ptr %27, align 8, !tbaa !13
  %266 = getelementptr inbounds nuw %struct._edit_script, ptr %265, i32 0, i32 0
  store ptr %264, ptr %266, align 8, !tbaa !18
  br label %267

267:                                              ; preds = %250, %241
  br label %271

268:                                              ; preds = %194
  %269 = load ptr, ptr @stderr, align 8, !tbaa !19
  %270 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %269, ptr noundef @.str) #4
  br label %271

271:                                              ; preds = %268, %267
  br label %272

272:                                              ; preds = %271, %193
  br label %273

273:                                              ; preds = %272, %107
  store i32 1, ptr %48, align 4
  br label %952

274:                                              ; preds = %93
  %275 = load i32, ptr %18, align 4, !tbaa !8
  %276 = sdiv i32 %275, 2
  store i32 %276, ptr %31, align 4, !tbaa !8
  %277 = load i32, ptr %18, align 4, !tbaa !8
  %278 = load i32, ptr %31, align 4, !tbaa !8
  %279 = sub nsw i32 %277, %278
  store i32 %279, ptr %32, align 4, !tbaa !8
  %280 = load i32, ptr %15, align 4, !tbaa !8
  %281 = load i32, ptr %14, align 4, !tbaa !8
  %282 = sub nsw i32 %280, %281
  store i32 %282, ptr %33, align 4, !tbaa !8
  %283 = load i32, ptr %15, align 4, !tbaa !8
  %284 = load i32, ptr %16, align 4, !tbaa !8
  %285 = sub nsw i32 %283, %284
  %286 = load i32, ptr %33, align 4, !tbaa !8
  %287 = load i32, ptr %31, align 4, !tbaa !8
  %288 = sub nsw i32 %286, %287
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %274
  %291 = load i32, ptr %33, align 4, !tbaa !8
  %292 = load i32, ptr %31, align 4, !tbaa !8
  %293 = sub nsw i32 %291, %292
  br label %298

294:                                              ; preds = %274
  %295 = load i32, ptr %15, align 4, !tbaa !8
  %296 = load i32, ptr %16, align 4, !tbaa !8
  %297 = sub nsw i32 %295, %296
  br label %298

298:                                              ; preds = %294, %290
  %299 = phi i32 [ %293, %290 ], [ %297, %294 ]
  store i32 %299, ptr %34, align 4, !tbaa !8
  %300 = load i32, ptr %17, align 4, !tbaa !8
  %301 = load i32, ptr %14, align 4, !tbaa !8
  %302 = sub nsw i32 %300, %301
  %303 = load i32, ptr %33, align 4, !tbaa !8
  %304 = load i32, ptr %31, align 4, !tbaa !8
  %305 = add nsw i32 %303, %304
  %306 = icmp sgt i32 %302, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %298
  %308 = load i32, ptr %33, align 4, !tbaa !8
  %309 = load i32, ptr %31, align 4, !tbaa !8
  %310 = add nsw i32 %308, %309
  br label %315

311:                                              ; preds = %298
  %312 = load i32, ptr %17, align 4, !tbaa !8
  %313 = load i32, ptr %14, align 4, !tbaa !8
  %314 = sub nsw i32 %312, %313
  br label %315

315:                                              ; preds = %311, %307
  %316 = phi i32 [ %310, %307 ], [ %314, %311 ]
  store i32 %316, ptr %35, align 4, !tbaa !8
  %317 = load i32, ptr %17, align 4, !tbaa !8
  %318 = load i32, ptr %16, align 4, !tbaa !8
  %319 = sub nsw i32 %317, %318
  store i32 %319, ptr %36, align 4, !tbaa !8
  %320 = load i32, ptr %15, align 4, !tbaa !8
  %321 = load i32, ptr %16, align 4, !tbaa !8
  %322 = sub nsw i32 %320, %321
  %323 = load i32, ptr %36, align 4, !tbaa !8
  %324 = load i32, ptr %32, align 4, !tbaa !8
  %325 = sub nsw i32 %323, %324
  %326 = icmp slt i32 %322, %325
  br i1 %326, label %327, label %331

327:                                              ; preds = %315
  %328 = load i32, ptr %36, align 4, !tbaa !8
  %329 = load i32, ptr %32, align 4, !tbaa !8
  %330 = sub nsw i32 %328, %329
  br label %335

331:                                              ; preds = %315
  %332 = load i32, ptr %15, align 4, !tbaa !8
  %333 = load i32, ptr %16, align 4, !tbaa !8
  %334 = sub nsw i32 %332, %333
  br label %335

335:                                              ; preds = %331, %327
  %336 = phi i32 [ %330, %327 ], [ %334, %331 ]
  store i32 %336, ptr %37, align 4, !tbaa !8
  %337 = load i32, ptr %17, align 4, !tbaa !8
  %338 = load i32, ptr %14, align 4, !tbaa !8
  %339 = sub nsw i32 %337, %338
  %340 = load i32, ptr %36, align 4, !tbaa !8
  %341 = load i32, ptr %32, align 4, !tbaa !8
  %342 = add nsw i32 %340, %341
  %343 = icmp sgt i32 %339, %342
  br i1 %343, label %344, label %348

344:                                              ; preds = %335
  %345 = load i32, ptr %36, align 4, !tbaa !8
  %346 = load i32, ptr %32, align 4, !tbaa !8
  %347 = add nsw i32 %345, %346
  br label %352

348:                                              ; preds = %335
  %349 = load i32, ptr %17, align 4, !tbaa !8
  %350 = load i32, ptr %14, align 4, !tbaa !8
  %351 = sub nsw i32 %349, %350
  br label %352

352:                                              ; preds = %348, %344
  %353 = phi i32 [ %347, %344 ], [ %351, %348 ]
  store i32 %353, ptr %38, align 4, !tbaa !8
  %354 = load i32, ptr %35, align 4, !tbaa !8
  %355 = load i32, ptr %34, align 4, !tbaa !8
  %356 = sub nsw i32 %354, %355
  %357 = add nsw i32 %356, 1
  %358 = sext i32 %357 to i64
  %359 = mul i64 %358, 4
  %360 = call ptr @xmalloc(i64 noundef %359)
  %361 = load i32, ptr %34, align 4, !tbaa !8
  %362 = sext i32 %361 to i64
  %363 = sub i64 0, %362
  %364 = getelementptr inbounds i32, ptr %360, i64 %363
  store ptr %364, ptr %23, align 8, !tbaa !21
  %365 = load i32, ptr %35, align 4, !tbaa !8
  %366 = load i32, ptr %34, align 4, !tbaa !8
  %367 = sub nsw i32 %365, %366
  %368 = add nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = mul i64 %369, 4
  %371 = call ptr @xmalloc(i64 noundef %370)
  %372 = load i32, ptr %34, align 4, !tbaa !8
  %373 = sext i32 %372 to i64
  %374 = sub i64 0, %373
  %375 = getelementptr inbounds i32, ptr %371, i64 %374
  store ptr %375, ptr %24, align 8, !tbaa !21
  %376 = load i32, ptr %34, align 4, !tbaa !8
  store i32 %376, ptr %40, align 4, !tbaa !8
  br label %377

377:                                              ; preds = %386, %352
  %378 = load i32, ptr %40, align 4, !tbaa !8
  %379 = load i32, ptr %35, align 4, !tbaa !8
  %380 = icmp sle i32 %378, %379
  br i1 %380, label %381, label %389

381:                                              ; preds = %377
  %382 = load ptr, ptr %23, align 8, !tbaa !21
  %383 = load i32, ptr %40, align 4, !tbaa !8
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, ptr %382, i64 %384
  store i32 -1, ptr %385, align 4, !tbaa !8
  br label %386

386:                                              ; preds = %381
  %387 = load i32, ptr %40, align 4, !tbaa !8
  %388 = add nsw i32 %387, 1
  store i32 %388, ptr %40, align 4, !tbaa !8
  br label %377, !llvm.loop !23

389:                                              ; preds = %377
  %390 = load ptr, ptr %12, align 8, !tbaa !3
  %391 = load ptr, ptr %13, align 8, !tbaa !3
  %392 = load i32, ptr %33, align 4, !tbaa !8
  %393 = load i32, ptr %14, align 4, !tbaa !8
  %394 = load i32, ptr %16, align 4, !tbaa !8
  %395 = load i32, ptr %17, align 4, !tbaa !8
  %396 = call signext i32 @snake(ptr noundef %390, ptr noundef %391, i32 noundef signext %392, i32 noundef signext %393, i32 noundef signext %394, i32 noundef signext %395)
  %397 = load ptr, ptr %23, align 8, !tbaa !21
  %398 = load i32, ptr %33, align 4, !tbaa !8
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, ptr %397, i64 %399
  store i32 %396, ptr %400, align 4, !tbaa !8
  store i32 1, ptr %39, align 4, !tbaa !8
  br label %401

401:                                              ; preds = %575, %389
  %402 = load i32, ptr %39, align 4, !tbaa !8
  %403 = load i32, ptr %31, align 4, !tbaa !8
  %404 = icmp sle i32 %402, %403
  br i1 %404, label %405, label %578

405:                                              ; preds = %401
  %406 = load i32, ptr %34, align 4, !tbaa !8
  %407 = load i32, ptr %33, align 4, !tbaa !8
  %408 = load i32, ptr %39, align 4, !tbaa !8
  %409 = sub nsw i32 %407, %408
  %410 = icmp slt i32 %406, %409
  br i1 %410, label %411, label %415

411:                                              ; preds = %405
  %412 = load i32, ptr %33, align 4, !tbaa !8
  %413 = load i32, ptr %39, align 4, !tbaa !8
  %414 = sub nsw i32 %412, %413
  br label %417

415:                                              ; preds = %405
  %416 = load i32, ptr %34, align 4, !tbaa !8
  br label %417

417:                                              ; preds = %415, %411
  %418 = phi i32 [ %414, %411 ], [ %416, %415 ]
  store i32 %418, ptr %45, align 4, !tbaa !8
  %419 = load i32, ptr %35, align 4, !tbaa !8
  %420 = load i32, ptr %33, align 4, !tbaa !8
  %421 = load i32, ptr %39, align 4, !tbaa !8
  %422 = add nsw i32 %420, %421
  %423 = icmp sgt i32 %419, %422
  br i1 %423, label %424, label %428

424:                                              ; preds = %417
  %425 = load i32, ptr %33, align 4, !tbaa !8
  %426 = load i32, ptr %39, align 4, !tbaa !8
  %427 = add nsw i32 %425, %426
  br label %430

428:                                              ; preds = %417
  %429 = load i32, ptr %35, align 4, !tbaa !8
  br label %430

430:                                              ; preds = %428, %424
  %431 = phi i32 [ %427, %424 ], [ %429, %428 ]
  store i32 %431, ptr %46, align 4, !tbaa !8
  %432 = load i32, ptr %45, align 4, !tbaa !8
  store i32 %432, ptr %40, align 4, !tbaa !8
  br label %433

433:                                              ; preds = %552, %430
  %434 = load i32, ptr %40, align 4, !tbaa !8
  %435 = load i32, ptr %46, align 4, !tbaa !8
  %436 = icmp sle i32 %434, %435
  br i1 %436, label %437, label %555

437:                                              ; preds = %433
  %438 = load i32, ptr %40, align 4, !tbaa !8
  %439 = load i32, ptr %45, align 4, !tbaa !8
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %441, label %449

441:                                              ; preds = %437
  %442 = load ptr, ptr %23, align 8, !tbaa !21
  %443 = load i32, ptr %40, align 4, !tbaa !8
  %444 = add nsw i32 %443, 1
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, ptr %442, i64 %445
  %447 = load i32, ptr %446, align 4, !tbaa !8
  %448 = add nsw i32 %447, 1
  store i32 %448, ptr %41, align 4, !tbaa !8
  br label %540

449:                                              ; preds = %437
  %450 = load i32, ptr %40, align 4, !tbaa !8
  %451 = load i32, ptr %46, align 4, !tbaa !8
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %453, label %460

453:                                              ; preds = %449
  %454 = load ptr, ptr %23, align 8, !tbaa !21
  %455 = load i32, ptr %40, align 4, !tbaa !8
  %456 = sub nsw i32 %455, 1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, ptr %454, i64 %457
  %459 = load i32, ptr %458, align 4, !tbaa !8
  store i32 %459, ptr %41, align 4, !tbaa !8
  br label %539

460:                                              ; preds = %449
  %461 = load ptr, ptr %23, align 8, !tbaa !21
  %462 = load i32, ptr %40, align 4, !tbaa !8
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, ptr %461, i64 %463
  %465 = load i32, ptr %464, align 4, !tbaa !8
  %466 = load ptr, ptr %23, align 8, !tbaa !21
  %467 = load i32, ptr %40, align 4, !tbaa !8
  %468 = add nsw i32 %467, 1
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, ptr %466, i64 %469
  %471 = load i32, ptr %470, align 4, !tbaa !8
  %472 = icmp sge i32 %465, %471
  br i1 %472, label %473, label %494

473:                                              ; preds = %460
  %474 = load ptr, ptr %23, align 8, !tbaa !21
  %475 = load i32, ptr %40, align 4, !tbaa !8
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, ptr %474, i64 %476
  %478 = load i32, ptr %477, align 4, !tbaa !8
  %479 = add nsw i32 %478, 1
  %480 = load ptr, ptr %23, align 8, !tbaa !21
  %481 = load i32, ptr %40, align 4, !tbaa !8
  %482 = sub nsw i32 %481, 1
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, ptr %480, i64 %483
  %485 = load i32, ptr %484, align 4, !tbaa !8
  %486 = icmp sge i32 %479, %485
  br i1 %486, label %487, label %494

487:                                              ; preds = %473
  %488 = load ptr, ptr %23, align 8, !tbaa !21
  %489 = load i32, ptr %40, align 4, !tbaa !8
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, ptr %488, i64 %490
  %492 = load i32, ptr %491, align 4, !tbaa !8
  %493 = add nsw i32 %492, 1
  store i32 %493, ptr %41, align 4, !tbaa !8
  br label %538

494:                                              ; preds = %473, %460
  %495 = load ptr, ptr %23, align 8, !tbaa !21
  %496 = load i32, ptr %40, align 4, !tbaa !8
  %497 = add nsw i32 %496, 1
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, ptr %495, i64 %498
  %500 = load i32, ptr %499, align 4, !tbaa !8
  %501 = add nsw i32 %500, 1
  %502 = load ptr, ptr %23, align 8, !tbaa !21
  %503 = load i32, ptr %40, align 4, !tbaa !8
  %504 = sub nsw i32 %503, 1
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, ptr %502, i64 %505
  %507 = load i32, ptr %506, align 4, !tbaa !8
  %508 = icmp sge i32 %501, %507
  br i1 %508, label %509, label %530

509:                                              ; preds = %494
  %510 = load ptr, ptr %23, align 8, !tbaa !21
  %511 = load i32, ptr %40, align 4, !tbaa !8
  %512 = add nsw i32 %511, 1
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, ptr %510, i64 %513
  %515 = load i32, ptr %514, align 4, !tbaa !8
  %516 = load ptr, ptr %23, align 8, !tbaa !21
  %517 = load i32, ptr %40, align 4, !tbaa !8
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, ptr %516, i64 %518
  %520 = load i32, ptr %519, align 4, !tbaa !8
  %521 = icmp sge i32 %515, %520
  br i1 %521, label %522, label %530

522:                                              ; preds = %509
  %523 = load ptr, ptr %23, align 8, !tbaa !21
  %524 = load i32, ptr %40, align 4, !tbaa !8
  %525 = add nsw i32 %524, 1
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, ptr %523, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !8
  %529 = add nsw i32 %528, 1
  store i32 %529, ptr %41, align 4, !tbaa !8
  br label %537

530:                                              ; preds = %509, %494
  %531 = load ptr, ptr %23, align 8, !tbaa !21
  %532 = load i32, ptr %40, align 4, !tbaa !8
  %533 = sub nsw i32 %532, 1
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i32, ptr %531, i64 %534
  %536 = load i32, ptr %535, align 4, !tbaa !8
  store i32 %536, ptr %41, align 4, !tbaa !8
  br label %537

537:                                              ; preds = %530, %522
  br label %538

538:                                              ; preds = %537, %487
  br label %539

539:                                              ; preds = %538, %453
  br label %540

540:                                              ; preds = %539, %441
  %541 = load ptr, ptr %12, align 8, !tbaa !3
  %542 = load ptr, ptr %13, align 8, !tbaa !3
  %543 = load i32, ptr %40, align 4, !tbaa !8
  %544 = load i32, ptr %41, align 4, !tbaa !8
  %545 = load i32, ptr %16, align 4, !tbaa !8
  %546 = load i32, ptr %17, align 4, !tbaa !8
  %547 = call signext i32 @snake(ptr noundef %541, ptr noundef %542, i32 noundef signext %543, i32 noundef signext %544, i32 noundef signext %545, i32 noundef signext %546)
  %548 = load ptr, ptr %24, align 8, !tbaa !21
  %549 = load i32, ptr %40, align 4, !tbaa !8
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, ptr %548, i64 %550
  store i32 %547, ptr %551, align 4, !tbaa !8
  br label %552

552:                                              ; preds = %540
  %553 = load i32, ptr %40, align 4, !tbaa !8
  %554 = add nsw i32 %553, 1
  store i32 %554, ptr %40, align 4, !tbaa !8
  br label %433, !llvm.loop !25

555:                                              ; preds = %433
  %556 = load i32, ptr %45, align 4, !tbaa !8
  store i32 %556, ptr %40, align 4, !tbaa !8
  br label %557

557:                                              ; preds = %571, %555
  %558 = load i32, ptr %40, align 4, !tbaa !8
  %559 = load i32, ptr %46, align 4, !tbaa !8
  %560 = icmp sle i32 %558, %559
  br i1 %560, label %561, label %574

561:                                              ; preds = %557
  %562 = load ptr, ptr %24, align 8, !tbaa !21
  %563 = load i32, ptr %40, align 4, !tbaa !8
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i32, ptr %562, i64 %564
  %566 = load i32, ptr %565, align 4, !tbaa !8
  %567 = load ptr, ptr %23, align 8, !tbaa !21
  %568 = load i32, ptr %40, align 4, !tbaa !8
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, ptr %567, i64 %569
  store i32 %566, ptr %570, align 4, !tbaa !8
  br label %571

571:                                              ; preds = %561
  %572 = load i32, ptr %40, align 4, !tbaa !8
  %573 = add nsw i32 %572, 1
  store i32 %573, ptr %40, align 4, !tbaa !8
  br label %557, !llvm.loop !26

574:                                              ; preds = %557
  br label %575

575:                                              ; preds = %574
  %576 = load i32, ptr %39, align 4, !tbaa !8
  %577 = add nsw i32 %576, 1
  store i32 %577, ptr %39, align 4, !tbaa !8
  br label %401, !llvm.loop !27

578:                                              ; preds = %401
  %579 = load i32, ptr %38, align 4, !tbaa !8
  %580 = load i32, ptr %37, align 4, !tbaa !8
  %581 = sub nsw i32 %579, %580
  %582 = add nsw i32 %581, 1
  %583 = sext i32 %582 to i64
  %584 = mul i64 %583, 4
  %585 = call ptr @xmalloc(i64 noundef %584)
  %586 = load i32, ptr %37, align 4, !tbaa !8
  %587 = sext i32 %586 to i64
  %588 = sub i64 0, %587
  %589 = getelementptr inbounds i32, ptr %585, i64 %588
  store ptr %589, ptr %25, align 8, !tbaa !21
  %590 = load i32, ptr %38, align 4, !tbaa !8
  %591 = load i32, ptr %37, align 4, !tbaa !8
  %592 = sub nsw i32 %590, %591
  %593 = add nsw i32 %592, 1
  %594 = sext i32 %593 to i64
  %595 = mul i64 %594, 4
  %596 = call ptr @xmalloc(i64 noundef %595)
  %597 = load i32, ptr %37, align 4, !tbaa !8
  %598 = sext i32 %597 to i64
  %599 = sub i64 0, %598
  %600 = getelementptr inbounds i32, ptr %596, i64 %599
  store ptr %600, ptr %26, align 8, !tbaa !21
  %601 = load i32, ptr %37, align 4, !tbaa !8
  store i32 %601, ptr %40, align 4, !tbaa !8
  br label %602

602:                                              ; preds = %613, %578
  %603 = load i32, ptr %40, align 4, !tbaa !8
  %604 = load i32, ptr %38, align 4, !tbaa !8
  %605 = icmp sle i32 %603, %604
  br i1 %605, label %606, label %616

606:                                              ; preds = %602
  %607 = load i32, ptr %16, align 4, !tbaa !8
  %608 = add nsw i32 %607, 1
  %609 = load ptr, ptr %25, align 8, !tbaa !21
  %610 = load i32, ptr %40, align 4, !tbaa !8
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i32, ptr %609, i64 %611
  store i32 %608, ptr %612, align 4, !tbaa !8
  br label %613

613:                                              ; preds = %606
  %614 = load i32, ptr %40, align 4, !tbaa !8
  %615 = add nsw i32 %614, 1
  store i32 %615, ptr %40, align 4, !tbaa !8
  br label %602, !llvm.loop !28

616:                                              ; preds = %602
  %617 = load ptr, ptr %12, align 8, !tbaa !3
  %618 = load ptr, ptr %13, align 8, !tbaa !3
  %619 = load i32, ptr %36, align 4, !tbaa !8
  %620 = load i32, ptr %16, align 4, !tbaa !8
  %621 = load i32, ptr %14, align 4, !tbaa !8
  %622 = load i32, ptr %15, align 4, !tbaa !8
  %623 = load i32, ptr %21, align 4, !tbaa !8
  %624 = load i32, ptr %22, align 4, !tbaa !8
  %625 = call signext i32 @rsnake(ptr noundef %617, ptr noundef %618, i32 noundef signext %619, i32 noundef signext %620, i32 noundef signext %621, i32 noundef signext %622, i32 noundef signext %623, i32 noundef signext %624)
  %626 = load ptr, ptr %25, align 8, !tbaa !21
  %627 = load i32, ptr %36, align 4, !tbaa !8
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds i32, ptr %626, i64 %628
  store i32 %625, ptr %629, align 4, !tbaa !8
  store i32 1, ptr %39, align 4, !tbaa !8
  br label %630

630:                                              ; preds = %810, %616
  %631 = load i32, ptr %39, align 4, !tbaa !8
  %632 = load i32, ptr %32, align 4, !tbaa !8
  %633 = icmp sle i32 %631, %632
  br i1 %633, label %634, label %813

634:                                              ; preds = %630
  %635 = load i32, ptr %37, align 4, !tbaa !8
  %636 = load i32, ptr %36, align 4, !tbaa !8
  %637 = load i32, ptr %39, align 4, !tbaa !8
  %638 = sub nsw i32 %636, %637
  %639 = icmp slt i32 %635, %638
  br i1 %639, label %640, label %644

640:                                              ; preds = %634
  %641 = load i32, ptr %36, align 4, !tbaa !8
  %642 = load i32, ptr %39, align 4, !tbaa !8
  %643 = sub nsw i32 %641, %642
  br label %646

644:                                              ; preds = %634
  %645 = load i32, ptr %37, align 4, !tbaa !8
  br label %646

646:                                              ; preds = %644, %640
  %647 = phi i32 [ %643, %640 ], [ %645, %644 ]
  store i32 %647, ptr %45, align 4, !tbaa !8
  %648 = load i32, ptr %38, align 4, !tbaa !8
  %649 = load i32, ptr %36, align 4, !tbaa !8
  %650 = load i32, ptr %39, align 4, !tbaa !8
  %651 = add nsw i32 %649, %650
  %652 = icmp sgt i32 %648, %651
  br i1 %652, label %653, label %657

653:                                              ; preds = %646
  %654 = load i32, ptr %36, align 4, !tbaa !8
  %655 = load i32, ptr %39, align 4, !tbaa !8
  %656 = add nsw i32 %654, %655
  br label %659

657:                                              ; preds = %646
  %658 = load i32, ptr %38, align 4, !tbaa !8
  br label %659

659:                                              ; preds = %657, %653
  %660 = phi i32 [ %656, %653 ], [ %658, %657 ]
  store i32 %660, ptr %46, align 4, !tbaa !8
  %661 = load i32, ptr %45, align 4, !tbaa !8
  store i32 %661, ptr %40, align 4, !tbaa !8
  br label %662

662:                                              ; preds = %787, %659
  %663 = load i32, ptr %40, align 4, !tbaa !8
  %664 = load i32, ptr %46, align 4, !tbaa !8
  %665 = icmp sle i32 %663, %664
  br i1 %665, label %666, label %790

666:                                              ; preds = %662
  %667 = load i32, ptr %40, align 4, !tbaa !8
  %668 = load i32, ptr %45, align 4, !tbaa !8
  %669 = icmp eq i32 %667, %668
  br i1 %669, label %670, label %677

670:                                              ; preds = %666
  %671 = load ptr, ptr %25, align 8, !tbaa !21
  %672 = load i32, ptr %40, align 4, !tbaa !8
  %673 = add nsw i32 %672, 1
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i32, ptr %671, i64 %674
  %676 = load i32, ptr %675, align 4, !tbaa !8
  store i32 %676, ptr %41, align 4, !tbaa !8
  br label %773

677:                                              ; preds = %666
  %678 = load i32, ptr %40, align 4, !tbaa !8
  %679 = load i32, ptr %46, align 4, !tbaa !8
  %680 = icmp eq i32 %678, %679
  br i1 %680, label %681, label %689

681:                                              ; preds = %677
  %682 = load ptr, ptr %25, align 8, !tbaa !21
  %683 = load i32, ptr %40, align 4, !tbaa !8
  %684 = sub nsw i32 %683, 1
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds i32, ptr %682, i64 %685
  %687 = load i32, ptr %686, align 4, !tbaa !8
  %688 = sub nsw i32 %687, 1
  store i32 %688, ptr %41, align 4, !tbaa !8
  br label %772

689:                                              ; preds = %677
  %690 = load ptr, ptr %25, align 8, !tbaa !21
  %691 = load i32, ptr %40, align 4, !tbaa !8
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i32, ptr %690, i64 %692
  %694 = load i32, ptr %693, align 4, !tbaa !8
  %695 = sub nsw i32 %694, 1
  %696 = load ptr, ptr %25, align 8, !tbaa !21
  %697 = load i32, ptr %40, align 4, !tbaa !8
  %698 = add nsw i32 %697, 1
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds i32, ptr %696, i64 %699
  %701 = load i32, ptr %700, align 4, !tbaa !8
  %702 = icmp sle i32 %695, %701
  br i1 %702, label %703, label %725

703:                                              ; preds = %689
  %704 = load ptr, ptr %25, align 8, !tbaa !21
  %705 = load i32, ptr %40, align 4, !tbaa !8
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i32, ptr %704, i64 %706
  %708 = load i32, ptr %707, align 4, !tbaa !8
  %709 = sub nsw i32 %708, 1
  %710 = load ptr, ptr %25, align 8, !tbaa !21
  %711 = load i32, ptr %40, align 4, !tbaa !8
  %712 = sub nsw i32 %711, 1
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds i32, ptr %710, i64 %713
  %715 = load i32, ptr %714, align 4, !tbaa !8
  %716 = sub nsw i32 %715, 1
  %717 = icmp sle i32 %709, %716
  br i1 %717, label %718, label %725

718:                                              ; preds = %703
  %719 = load ptr, ptr %25, align 8, !tbaa !21
  %720 = load i32, ptr %40, align 4, !tbaa !8
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds i32, ptr %719, i64 %721
  %723 = load i32, ptr %722, align 4, !tbaa !8
  %724 = sub nsw i32 %723, 1
  store i32 %724, ptr %41, align 4, !tbaa !8
  br label %771

725:                                              ; preds = %703, %689
  %726 = load ptr, ptr %25, align 8, !tbaa !21
  %727 = load i32, ptr %40, align 4, !tbaa !8
  %728 = sub nsw i32 %727, 1
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds i32, ptr %726, i64 %729
  %731 = load i32, ptr %730, align 4, !tbaa !8
  %732 = sub nsw i32 %731, 1
  %733 = load ptr, ptr %25, align 8, !tbaa !21
  %734 = load i32, ptr %40, align 4, !tbaa !8
  %735 = add nsw i32 %734, 1
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds i32, ptr %733, i64 %736
  %738 = load i32, ptr %737, align 4, !tbaa !8
  %739 = icmp sle i32 %732, %738
  br i1 %739, label %740, label %763

740:                                              ; preds = %725
  %741 = load ptr, ptr %25, align 8, !tbaa !21
  %742 = load i32, ptr %40, align 4, !tbaa !8
  %743 = sub nsw i32 %742, 1
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds i32, ptr %741, i64 %744
  %746 = load i32, ptr %745, align 4, !tbaa !8
  %747 = sub nsw i32 %746, 1
  %748 = load ptr, ptr %25, align 8, !tbaa !21
  %749 = load i32, ptr %40, align 4, !tbaa !8
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds i32, ptr %748, i64 %750
  %752 = load i32, ptr %751, align 4, !tbaa !8
  %753 = sub nsw i32 %752, 1
  %754 = icmp sle i32 %747, %753
  br i1 %754, label %755, label %763

755:                                              ; preds = %740
  %756 = load ptr, ptr %25, align 8, !tbaa !21
  %757 = load i32, ptr %40, align 4, !tbaa !8
  %758 = sub nsw i32 %757, 1
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds i32, ptr %756, i64 %759
  %761 = load i32, ptr %760, align 4, !tbaa !8
  %762 = sub nsw i32 %761, 1
  store i32 %762, ptr %41, align 4, !tbaa !8
  br label %770

763:                                              ; preds = %740, %725
  %764 = load ptr, ptr %25, align 8, !tbaa !21
  %765 = load i32, ptr %40, align 4, !tbaa !8
  %766 = add nsw i32 %765, 1
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds i32, ptr %764, i64 %767
  %769 = load i32, ptr %768, align 4, !tbaa !8
  store i32 %769, ptr %41, align 4, !tbaa !8
  br label %770

770:                                              ; preds = %763, %755
  br label %771

771:                                              ; preds = %770, %718
  br label %772

772:                                              ; preds = %771, %681
  br label %773

773:                                              ; preds = %772, %670
  %774 = load ptr, ptr %12, align 8, !tbaa !3
  %775 = load ptr, ptr %13, align 8, !tbaa !3
  %776 = load i32, ptr %40, align 4, !tbaa !8
  %777 = load i32, ptr %41, align 4, !tbaa !8
  %778 = load i32, ptr %14, align 4, !tbaa !8
  %779 = load i32, ptr %15, align 4, !tbaa !8
  %780 = load i32, ptr %21, align 4, !tbaa !8
  %781 = load i32, ptr %22, align 4, !tbaa !8
  %782 = call signext i32 @rsnake(ptr noundef %774, ptr noundef %775, i32 noundef signext %776, i32 noundef signext %777, i32 noundef signext %778, i32 noundef signext %779, i32 noundef signext %780, i32 noundef signext %781)
  %783 = load ptr, ptr %26, align 8, !tbaa !21
  %784 = load i32, ptr %40, align 4, !tbaa !8
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds i32, ptr %783, i64 %785
  store i32 %782, ptr %786, align 4, !tbaa !8
  br label %787

787:                                              ; preds = %773
  %788 = load i32, ptr %40, align 4, !tbaa !8
  %789 = add nsw i32 %788, 1
  store i32 %789, ptr %40, align 4, !tbaa !8
  br label %662, !llvm.loop !29

790:                                              ; preds = %662
  %791 = load i32, ptr %45, align 4, !tbaa !8
  store i32 %791, ptr %40, align 4, !tbaa !8
  br label %792

792:                                              ; preds = %806, %790
  %793 = load i32, ptr %40, align 4, !tbaa !8
  %794 = load i32, ptr %46, align 4, !tbaa !8
  %795 = icmp sle i32 %793, %794
  br i1 %795, label %796, label %809

796:                                              ; preds = %792
  %797 = load ptr, ptr %26, align 8, !tbaa !21
  %798 = load i32, ptr %40, align 4, !tbaa !8
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds i32, ptr %797, i64 %799
  %801 = load i32, ptr %800, align 4, !tbaa !8
  %802 = load ptr, ptr %25, align 8, !tbaa !21
  %803 = load i32, ptr %40, align 4, !tbaa !8
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds i32, ptr %802, i64 %804
  store i32 %801, ptr %805, align 4, !tbaa !8
  br label %806

806:                                              ; preds = %796
  %807 = load i32, ptr %40, align 4, !tbaa !8
  %808 = add nsw i32 %807, 1
  store i32 %808, ptr %40, align 4, !tbaa !8
  br label %792, !llvm.loop !30

809:                                              ; preds = %792
  br label %810

810:                                              ; preds = %809
  %811 = load i32, ptr %39, align 4, !tbaa !8
  %812 = add nsw i32 %811, 1
  store i32 %812, ptr %39, align 4, !tbaa !8
  br label %630, !llvm.loop !31

813:                                              ; preds = %630
  store i8 0, ptr %47, align 1, !tbaa !32
  %814 = load i32, ptr %14, align 4, !tbaa !8
  store i32 %814, ptr %42, align 4, !tbaa !8
  %815 = load i32, ptr %15, align 4, !tbaa !8
  store i32 %815, ptr %43, align 4, !tbaa !8
  %816 = load i32, ptr %34, align 4, !tbaa !8
  %817 = load i32, ptr %37, align 4, !tbaa !8
  %818 = icmp slt i32 %816, %817
  br i1 %818, label %819, label %821

819:                                              ; preds = %813
  %820 = load i32, ptr %37, align 4, !tbaa !8
  br label %823

821:                                              ; preds = %813
  %822 = load i32, ptr %34, align 4, !tbaa !8
  br label %823

823:                                              ; preds = %821, %819
  %824 = phi i32 [ %820, %819 ], [ %822, %821 ]
  store i32 %824, ptr %45, align 4, !tbaa !8
  %825 = load i32, ptr %35, align 4, !tbaa !8
  %826 = load i32, ptr %38, align 4, !tbaa !8
  %827 = icmp sgt i32 %825, %826
  br i1 %827, label %828, label %830

828:                                              ; preds = %823
  %829 = load i32, ptr %38, align 4, !tbaa !8
  br label %832

830:                                              ; preds = %823
  %831 = load i32, ptr %35, align 4, !tbaa !8
  br label %832

832:                                              ; preds = %830, %828
  %833 = phi i32 [ %829, %828 ], [ %831, %830 ]
  store i32 %833, ptr %46, align 4, !tbaa !8
  %834 = load i32, ptr %45, align 4, !tbaa !8
  store i32 %834, ptr %40, align 4, !tbaa !8
  br label %835

835:                                              ; preds = %887, %832
  %836 = load i32, ptr %40, align 4, !tbaa !8
  %837 = load i32, ptr %46, align 4, !tbaa !8
  %838 = icmp sle i32 %836, %837
  br i1 %838, label %839, label %890

839:                                              ; preds = %835
  %840 = load ptr, ptr %23, align 8, !tbaa !21
  %841 = load i32, ptr %40, align 4, !tbaa !8
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds i32, ptr %840, i64 %842
  %844 = load i32, ptr %843, align 4, !tbaa !8
  %845 = load ptr, ptr %25, align 8, !tbaa !21
  %846 = load i32, ptr %40, align 4, !tbaa !8
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds i32, ptr %845, i64 %847
  %849 = load i32, ptr %848, align 4, !tbaa !8
  %850 = icmp sge i32 %844, %849
  br i1 %850, label %851, label %886

851:                                              ; preds = %839
  %852 = load ptr, ptr %23, align 8, !tbaa !21
  %853 = load i32, ptr %40, align 4, !tbaa !8
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds i32, ptr %852, i64 %854
  %856 = load i32, ptr %855, align 4, !tbaa !8
  %857 = load i32, ptr %14, align 4, !tbaa !8
  %858 = sub nsw i32 %856, %857
  %859 = load i32, ptr %16, align 4, !tbaa !8
  %860 = load ptr, ptr %25, align 8, !tbaa !21
  %861 = load i32, ptr %40, align 4, !tbaa !8
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds i32, ptr %860, i64 %862
  %864 = load i32, ptr %863, align 4, !tbaa !8
  %865 = sub nsw i32 %859, %864
  %866 = icmp sge i32 %858, %865
  br i1 %866, label %867, label %876

867:                                              ; preds = %851
  %868 = load ptr, ptr %23, align 8, !tbaa !21
  %869 = load i32, ptr %40, align 4, !tbaa !8
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds i32, ptr %868, i64 %870
  %872 = load i32, ptr %871, align 4, !tbaa !8
  store i32 %872, ptr %42, align 4, !tbaa !8
  %873 = load i32, ptr %40, align 4, !tbaa !8
  %874 = load i32, ptr %42, align 4, !tbaa !8
  %875 = add nsw i32 %873, %874
  store i32 %875, ptr %43, align 4, !tbaa !8
  br label %885

876:                                              ; preds = %851
  %877 = load ptr, ptr %25, align 8, !tbaa !21
  %878 = load i32, ptr %40, align 4, !tbaa !8
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds i32, ptr %877, i64 %879
  %881 = load i32, ptr %880, align 4, !tbaa !8
  store i32 %881, ptr %42, align 4, !tbaa !8
  %882 = load i32, ptr %40, align 4, !tbaa !8
  %883 = load i32, ptr %42, align 4, !tbaa !8
  %884 = add nsw i32 %882, %883
  store i32 %884, ptr %43, align 4, !tbaa !8
  br label %885

885:                                              ; preds = %876, %867
  store i8 1, ptr %47, align 1, !tbaa !32
  br label %890

886:                                              ; preds = %839
  br label %887

887:                                              ; preds = %886
  %888 = load i32, ptr %40, align 4, !tbaa !8
  %889 = add nsw i32 %888, 1
  store i32 %889, ptr %40, align 4, !tbaa !8
  br label %835, !llvm.loop !33

890:                                              ; preds = %885, %835
  %891 = load ptr, ptr %23, align 8, !tbaa !21
  %892 = load i32, ptr %34, align 4, !tbaa !8
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds i32, ptr %891, i64 %893
  call void @free(ptr noundef %894) #4
  %895 = load ptr, ptr %25, align 8, !tbaa !21
  %896 = load i32, ptr %37, align 4, !tbaa !8
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds i32, ptr %895, i64 %897
  call void @free(ptr noundef %898) #4
  %899 = load ptr, ptr %24, align 8, !tbaa !21
  %900 = load i32, ptr %34, align 4, !tbaa !8
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds i32, ptr %899, i64 %901
  call void @free(ptr noundef %902) #4
  %903 = load ptr, ptr %26, align 8, !tbaa !21
  %904 = load i32, ptr %37, align 4, !tbaa !8
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds i32, ptr %903, i64 %905
  call void @free(ptr noundef %906) #4
  %907 = load i8, ptr %47, align 1, !tbaa !32
  %908 = icmp ne i8 %907, 0
  br i1 %908, label %909, label %937

909:                                              ; preds = %890
  %910 = load ptr, ptr %12, align 8, !tbaa !3
  %911 = load ptr, ptr %13, align 8, !tbaa !3
  %912 = load i32, ptr %14, align 4, !tbaa !8
  %913 = load i32, ptr %15, align 4, !tbaa !8
  %914 = load i32, ptr %42, align 4, !tbaa !8
  %915 = load i32, ptr %43, align 4, !tbaa !8
  %916 = load i32, ptr %31, align 4, !tbaa !8
  %917 = load i32, ptr %21, align 4, !tbaa !8
  %918 = load i32, ptr %22, align 4, !tbaa !8
  call void @align_path(ptr noundef %910, ptr noundef %911, i32 noundef signext %912, i32 noundef signext %913, i32 noundef signext %914, i32 noundef signext %915, i32 noundef signext %916, ptr noundef %27, ptr noundef %28, i32 noundef signext %917, i32 noundef signext %918)
  %919 = load ptr, ptr %12, align 8, !tbaa !3
  %920 = load ptr, ptr %13, align 8, !tbaa !3
  %921 = load i32, ptr %42, align 4, !tbaa !8
  %922 = load i32, ptr %43, align 4, !tbaa !8
  %923 = load i32, ptr %16, align 4, !tbaa !8
  %924 = load i32, ptr %17, align 4, !tbaa !8
  %925 = load i32, ptr %32, align 4, !tbaa !8
  %926 = load i32, ptr %21, align 4, !tbaa !8
  %927 = load i32, ptr %22, align 4, !tbaa !8
  call void @align_path(ptr noundef %919, ptr noundef %920, i32 noundef signext %921, i32 noundef signext %922, i32 noundef signext %923, i32 noundef signext %924, i32 noundef signext %925, ptr noundef %29, ptr noundef %30, i32 noundef signext %926, i32 noundef signext %927)
  %928 = load ptr, ptr %27, align 8, !tbaa !13
  %929 = icmp ne ptr %928, null
  br i1 %929, label %930, label %934

930:                                              ; preds = %909
  %931 = load ptr, ptr %29, align 8, !tbaa !13
  %932 = load ptr, ptr %28, align 8, !tbaa !13
  %933 = getelementptr inbounds nuw %struct._edit_script, ptr %932, i32 0, i32 0
  store ptr %931, ptr %933, align 8, !tbaa !18
  br label %936

934:                                              ; preds = %909
  %935 = load ptr, ptr %29, align 8, !tbaa !13
  store ptr %935, ptr %27, align 8, !tbaa !13
  br label %936

936:                                              ; preds = %934, %930
  br label %940

937:                                              ; preds = %890
  %938 = load ptr, ptr @stderr, align 8, !tbaa !19
  %939 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %938, ptr noundef @.str.1) #4
  store ptr null, ptr %27, align 8, !tbaa !13
  br label %940

940:                                              ; preds = %937, %936
  %941 = load ptr, ptr %27, align 8, !tbaa !13
  %942 = load ptr, ptr %19, align 8, !tbaa !10
  store ptr %941, ptr %942, align 8, !tbaa !13
  %943 = load ptr, ptr %29, align 8, !tbaa !13
  %944 = icmp ne ptr %943, null
  br i1 %944, label %945, label %948

945:                                              ; preds = %940
  %946 = load ptr, ptr %30, align 8, !tbaa !13
  %947 = load ptr, ptr %20, align 8, !tbaa !10
  store ptr %946, ptr %947, align 8, !tbaa !13
  br label %951

948:                                              ; preds = %940
  %949 = load ptr, ptr %28, align 8, !tbaa !13
  %950 = load ptr, ptr %20, align 8, !tbaa !10
  store ptr %949, ptr %950, align 8, !tbaa !13
  br label %951

951:                                              ; preds = %948, %945
  store i32 0, ptr %48, align 4
  br label %952

952:                                              ; preds = %951, %273, %79, %74
  call void @llvm.lifetime.end.p0(i64 1, ptr %47) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %46) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %45) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %44) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %43) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %42) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %41) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %40) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %39) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %38) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %37) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %36) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %35) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %34) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %33) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %32) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %31) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %30) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %29) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %28) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %27) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %26) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %25) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %24) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %23) #4
  %953 = load i32, ptr %48, align 4
  switch i32 %953, label %955 [
    i32 0, label %954
    i32 1, label %954
  ]

954:                                              ; preds = %952, %952
  ret void

955:                                              ; preds = %952
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare ptr @xmalloc(i64 noundef) #2

; Function Attrs: nounwind
define internal signext i32 @snake(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %8, align 8, !tbaa !3
  store ptr %1, ptr %9, align 8, !tbaa !3
  store i32 %2, ptr %10, align 4, !tbaa !8
  store i32 %3, ptr %11, align 4, !tbaa !8
  store i32 %4, ptr %12, align 4, !tbaa !8
  store i32 %5, ptr %13, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #4
  %16 = load i32, ptr %11, align 4, !tbaa !8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, ptr %11, align 4, !tbaa !8
  store i32 %19, ptr %7, align 4
  store i32 1, ptr %15, align 4
  br label %55

20:                                               ; preds = %6
  %21 = load i32, ptr %11, align 4, !tbaa !8
  %22 = load i32, ptr %10, align 4, !tbaa !8
  %23 = add nsw i32 %21, %22
  store i32 %23, ptr %14, align 4, !tbaa !8
  br label %24

24:                                               ; preds = %48, %20
  %25 = load i32, ptr %11, align 4, !tbaa !8
  %26 = load i32, ptr %12, align 4, !tbaa !8
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i32, ptr %14, align 4, !tbaa !8
  %30 = load i32, ptr %13, align 4, !tbaa !8
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load ptr, ptr %8, align 8, !tbaa !3
  %34 = load i32, ptr %11, align 4, !tbaa !8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %33, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !32
  %38 = zext i8 %37 to i32
  %39 = load ptr, ptr %9, align 8, !tbaa !3
  %40 = load i32, ptr %14, align 4, !tbaa !8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %39, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !32
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %38, %44
  br label %46

46:                                               ; preds = %32, %28, %24
  %47 = phi i1 [ false, %28 ], [ false, %24 ], [ %45, %32 ]
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = load i32, ptr %11, align 4, !tbaa !8
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %11, align 4, !tbaa !8
  %51 = load i32, ptr %14, align 4, !tbaa !8
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %14, align 4, !tbaa !8
  br label %24, !llvm.loop !34

53:                                               ; preds = %46
  %54 = load i32, ptr %11, align 4, !tbaa !8
  store i32 %54, ptr %7, align 4
  store i32 1, ptr %15, align 4
  br label %55

55:                                               ; preds = %53, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #4
  %56 = load i32, ptr %7, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare signext i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind
define internal signext i32 @rsnake(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %10, align 8, !tbaa !3
  store ptr %1, ptr %11, align 8, !tbaa !3
  store i32 %2, ptr %12, align 4, !tbaa !8
  store i32 %3, ptr %13, align 4, !tbaa !8
  store i32 %4, ptr %14, align 4, !tbaa !8
  store i32 %5, ptr %15, align 4, !tbaa !8
  store i32 %6, ptr %16, align 4, !tbaa !8
  store i32 %7, ptr %17, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #4
  %20 = load i32, ptr %13, align 4, !tbaa !8
  %21 = load i32, ptr %16, align 4, !tbaa !8
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  %24 = load i32, ptr %13, align 4, !tbaa !8
  store i32 %24, ptr %9, align 4
  store i32 1, ptr %19, align 4
  br label %86

25:                                               ; preds = %8
  %26 = load i32, ptr %14, align 4, !tbaa !8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %15, align 4, !tbaa !8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28, %25
  %32 = load ptr, ptr @stderr, align 8, !tbaa !19
  %33 = load i32, ptr %14, align 4, !tbaa !8
  %34 = load i32, ptr %15, align 4, !tbaa !8
  %35 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.8, i32 noundef signext %33, i32 noundef signext %34) #4
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, ptr %13, align 4, !tbaa !8
  %38 = load i32, ptr %12, align 4, !tbaa !8
  %39 = add nsw i32 %37, %38
  %40 = load i32, ptr %17, align 4, !tbaa !8
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load ptr, ptr @stderr, align 8, !tbaa !19
  %44 = load i32, ptr %13, align 4, !tbaa !8
  %45 = load i32, ptr %13, align 4, !tbaa !8
  %46 = load i32, ptr %12, align 4, !tbaa !8
  %47 = add nsw i32 %45, %46
  %48 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.9, i32 noundef signext %44, i32 noundef signext %47) #4
  br label %49

49:                                               ; preds = %42, %36
  %50 = load i32, ptr %13, align 4, !tbaa !8
  %51 = load i32, ptr %12, align 4, !tbaa !8
  %52 = add nsw i32 %50, %51
  store i32 %52, ptr %18, align 4, !tbaa !8
  br label %53

53:                                               ; preds = %79, %49
  %54 = load i32, ptr %13, align 4, !tbaa !8
  %55 = load i32, ptr %14, align 4, !tbaa !8
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load i32, ptr %18, align 4, !tbaa !8
  %59 = load i32, ptr %15, align 4, !tbaa !8
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load ptr, ptr %10, align 8, !tbaa !3
  %63 = load i32, ptr %13, align 4, !tbaa !8
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !32
  %68 = zext i8 %67 to i32
  %69 = load ptr, ptr %11, align 8, !tbaa !3
  %70 = load i32, ptr %18, align 4, !tbaa !8
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !32
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %68, %75
  br label %77

77:                                               ; preds = %61, %57, %53
  %78 = phi i1 [ false, %57 ], [ false, %53 ], [ %76, %61 ]
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = load i32, ptr %13, align 4, !tbaa !8
  %81 = sub nsw i32 %80, 1
  store i32 %81, ptr %13, align 4, !tbaa !8
  %82 = load i32, ptr %18, align 4, !tbaa !8
  %83 = sub nsw i32 %82, 1
  store i32 %83, ptr %18, align 4, !tbaa !8
  br label %53, !llvm.loop !35

84:                                               ; preds = %77
  %85 = load i32, ptr %13, align 4, !tbaa !8
  store i32 %85, ptr %9, align 4
  store i32 1, ptr %19, align 4
  br label %86

86:                                               ; preds = %84, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #4
  %87 = load i32, ptr %9, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local signext i32 @align_get_dist(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
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
  store ptr %0, ptr %9, align 8, !tbaa !3
  store ptr %1, ptr %10, align 8, !tbaa !3
  store i32 %2, ptr %11, align 4, !tbaa !8
  store i32 %3, ptr %12, align 4, !tbaa !8
  store i32 %4, ptr %13, align 4, !tbaa !8
  store i32 %5, ptr %14, align 4, !tbaa !8
  store i32 %6, ptr %15, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #4
  %28 = load i32, ptr %12, align 4, !tbaa !8
  %29 = load i32, ptr %11, align 4, !tbaa !8
  %30 = sub nsw i32 %28, %29
  store i32 %30, ptr %24, align 4, !tbaa !8
  %31 = load i32, ptr %12, align 4, !tbaa !8
  %32 = load i32, ptr %13, align 4, !tbaa !8
  %33 = sub nsw i32 %31, %32
  %34 = load i32, ptr %24, align 4, !tbaa !8
  %35 = load i32, ptr %15, align 4, !tbaa !8
  %36 = sub nsw i32 %34, %35
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %7
  %39 = load i32, ptr %24, align 4, !tbaa !8
  %40 = load i32, ptr %15, align 4, !tbaa !8
  %41 = sub nsw i32 %39, %40
  br label %46

42:                                               ; preds = %7
  %43 = load i32, ptr %12, align 4, !tbaa !8
  %44 = load i32, ptr %13, align 4, !tbaa !8
  %45 = sub nsw i32 %43, %44
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %41, %38 ], [ %45, %42 ]
  store i32 %47, ptr %25, align 4, !tbaa !8
  %48 = load i32, ptr %14, align 4, !tbaa !8
  %49 = load i32, ptr %11, align 4, !tbaa !8
  %50 = sub nsw i32 %48, %49
  %51 = load i32, ptr %24, align 4, !tbaa !8
  %52 = load i32, ptr %15, align 4, !tbaa !8
  %53 = add nsw i32 %51, %52
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, ptr %24, align 4, !tbaa !8
  %57 = load i32, ptr %15, align 4, !tbaa !8
  %58 = add nsw i32 %56, %57
  br label %63

59:                                               ; preds = %46
  %60 = load i32, ptr %14, align 4, !tbaa !8
  %61 = load i32, ptr %11, align 4, !tbaa !8
  %62 = sub nsw i32 %60, %61
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i32 [ %58, %55 ], [ %62, %59 ]
  store i32 %64, ptr %26, align 4, !tbaa !8
  %65 = load i32, ptr %14, align 4, !tbaa !8
  %66 = load i32, ptr %13, align 4, !tbaa !8
  %67 = sub nsw i32 %65, %66
  store i32 %67, ptr %18, align 4, !tbaa !8
  %68 = load i32, ptr %18, align 4, !tbaa !8
  %69 = load i32, ptr %26, align 4, !tbaa !8
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %63
  %72 = load i32, ptr %18, align 4, !tbaa !8
  %73 = load i32, ptr %25, align 4, !tbaa !8
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %63
  store i32 -1, ptr %8, align 4
  store i32 1, ptr %27, align 4
  br label %337

76:                                               ; preds = %71
  %77 = load i32, ptr %26, align 4, !tbaa !8
  %78 = load i32, ptr %25, align 4, !tbaa !8
  %79 = sub nsw i32 %77, %78
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = call ptr @xmalloc(i64 noundef %82)
  %84 = load i32, ptr %25, align 4, !tbaa !8
  %85 = sext i32 %84 to i64
  %86 = sub i64 0, %85
  %87 = getelementptr inbounds i32, ptr %83, i64 %86
  store ptr %87, ptr %16, align 8, !tbaa !21
  %88 = load i32, ptr %26, align 4, !tbaa !8
  %89 = load i32, ptr %25, align 4, !tbaa !8
  %90 = sub nsw i32 %88, %89
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = call ptr @xmalloc(i64 noundef %93)
  %95 = load i32, ptr %25, align 4, !tbaa !8
  %96 = sext i32 %95 to i64
  %97 = sub i64 0, %96
  %98 = getelementptr inbounds i32, ptr %94, i64 %97
  store ptr %98, ptr %17, align 8, !tbaa !21
  %99 = load i32, ptr %25, align 4, !tbaa !8
  store i32 %99, ptr %22, align 4, !tbaa !8
  br label %100

100:                                              ; preds = %109, %76
  %101 = load i32, ptr %22, align 4, !tbaa !8
  %102 = load i32, ptr %26, align 4, !tbaa !8
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load ptr, ptr %16, align 8, !tbaa !21
  %106 = load i32, ptr %22, align 4, !tbaa !8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, ptr %105, i64 %107
  store i32 -2147483648, ptr %108, align 4, !tbaa !8
  br label %109

109:                                              ; preds = %104
  %110 = load i32, ptr %22, align 4, !tbaa !8
  %111 = add nsw i32 %110, 1
  store i32 %111, ptr %22, align 4, !tbaa !8
  br label %100, !llvm.loop !36

112:                                              ; preds = %100
  %113 = load ptr, ptr %9, align 8, !tbaa !3
  %114 = load ptr, ptr %10, align 8, !tbaa !3
  %115 = load i32, ptr %24, align 4, !tbaa !8
  %116 = load i32, ptr %11, align 4, !tbaa !8
  %117 = load i32, ptr %13, align 4, !tbaa !8
  %118 = load i32, ptr %14, align 4, !tbaa !8
  %119 = call signext i32 @snake(ptr noundef %113, ptr noundef %114, i32 noundef signext %115, i32 noundef signext %116, i32 noundef signext %117, i32 noundef signext %118)
  %120 = load ptr, ptr %16, align 8, !tbaa !21
  %121 = load i32, ptr %24, align 4, !tbaa !8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, ptr %120, i64 %122
  store i32 %119, ptr %123, align 4, !tbaa !8
  %124 = load ptr, ptr %16, align 8, !tbaa !21
  %125 = load i32, ptr %18, align 4, !tbaa !8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %124, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !8
  %129 = load i32, ptr %13, align 4, !tbaa !8
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %112
  %132 = load ptr, ptr %16, align 8, !tbaa !21
  %133 = load i32, ptr %25, align 4, !tbaa !8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, ptr %132, i64 %134
  call void @free(ptr noundef %135) #4
  %136 = load ptr, ptr %17, align 8, !tbaa !21
  %137 = load i32, ptr %25, align 4, !tbaa !8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, ptr %136, i64 %138
  call void @free(ptr noundef %139) #4
  store i32 0, ptr %8, align 4
  store i32 1, ptr %27, align 4
  br label %337

140:                                              ; preds = %112
  store i32 1, ptr %21, align 4, !tbaa !8
  br label %141

141:                                              ; preds = %333, %140
  %142 = load i32, ptr %21, align 4, !tbaa !8
  %143 = load i32, ptr %15, align 4, !tbaa !8
  %144 = icmp sle i32 %142, %143
  br i1 %144, label %145, label %336

145:                                              ; preds = %141
  %146 = load i32, ptr %25, align 4, !tbaa !8
  %147 = load i32, ptr %24, align 4, !tbaa !8
  %148 = load i32, ptr %21, align 4, !tbaa !8
  %149 = sub nsw i32 %147, %148
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load i32, ptr %24, align 4, !tbaa !8
  %153 = load i32, ptr %21, align 4, !tbaa !8
  %154 = sub nsw i32 %152, %153
  br label %157

155:                                              ; preds = %145
  %156 = load i32, ptr %25, align 4, !tbaa !8
  br label %157

157:                                              ; preds = %155, %151
  %158 = phi i32 [ %154, %151 ], [ %156, %155 ]
  store i32 %158, ptr %19, align 4, !tbaa !8
  %159 = load i32, ptr %26, align 4, !tbaa !8
  %160 = load i32, ptr %24, align 4, !tbaa !8
  %161 = load i32, ptr %21, align 4, !tbaa !8
  %162 = add nsw i32 %160, %161
  %163 = icmp sgt i32 %159, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load i32, ptr %24, align 4, !tbaa !8
  %166 = load i32, ptr %21, align 4, !tbaa !8
  %167 = add nsw i32 %165, %166
  br label %170

168:                                              ; preds = %157
  %169 = load i32, ptr %26, align 4, !tbaa !8
  br label %170

170:                                              ; preds = %168, %164
  %171 = phi i32 [ %167, %164 ], [ %169, %168 ]
  store i32 %171, ptr %20, align 4, !tbaa !8
  %172 = load i32, ptr %19, align 4, !tbaa !8
  store i32 %172, ptr %22, align 4, !tbaa !8
  br label %173

173:                                              ; preds = %292, %170
  %174 = load i32, ptr %22, align 4, !tbaa !8
  %175 = load i32, ptr %20, align 4, !tbaa !8
  %176 = icmp sle i32 %174, %175
  br i1 %176, label %177, label %295

177:                                              ; preds = %173
  %178 = load i32, ptr %22, align 4, !tbaa !8
  %179 = load i32, ptr %19, align 4, !tbaa !8
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %177
  %182 = load ptr, ptr %16, align 8, !tbaa !21
  %183 = load i32, ptr %22, align 4, !tbaa !8
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, ptr %182, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !8
  %188 = add nsw i32 %187, 1
  store i32 %188, ptr %23, align 4, !tbaa !8
  br label %280

189:                                              ; preds = %177
  %190 = load i32, ptr %22, align 4, !tbaa !8
  %191 = load i32, ptr %20, align 4, !tbaa !8
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %189
  %194 = load ptr, ptr %16, align 8, !tbaa !21
  %195 = load i32, ptr %22, align 4, !tbaa !8
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, ptr %194, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !8
  store i32 %199, ptr %23, align 4, !tbaa !8
  br label %279

200:                                              ; preds = %189
  %201 = load ptr, ptr %16, align 8, !tbaa !21
  %202 = load i32, ptr %22, align 4, !tbaa !8
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, ptr %201, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !8
  %206 = load ptr, ptr %16, align 8, !tbaa !21
  %207 = load i32, ptr %22, align 4, !tbaa !8
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, ptr %206, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !8
  %212 = icmp sge i32 %205, %211
  br i1 %212, label %213, label %234

213:                                              ; preds = %200
  %214 = load ptr, ptr %16, align 8, !tbaa !21
  %215 = load i32, ptr %22, align 4, !tbaa !8
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, ptr %214, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !8
  %219 = add nsw i32 %218, 1
  %220 = load ptr, ptr %16, align 8, !tbaa !21
  %221 = load i32, ptr %22, align 4, !tbaa !8
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, ptr %220, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !8
  %226 = icmp sge i32 %219, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %213
  %228 = load ptr, ptr %16, align 8, !tbaa !21
  %229 = load i32, ptr %22, align 4, !tbaa !8
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, ptr %228, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !8
  %233 = add nsw i32 %232, 1
  store i32 %233, ptr %23, align 4, !tbaa !8
  br label %278

234:                                              ; preds = %213, %200
  %235 = load ptr, ptr %16, align 8, !tbaa !21
  %236 = load i32, ptr %22, align 4, !tbaa !8
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, ptr %235, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !8
  %241 = add nsw i32 %240, 1
  %242 = load ptr, ptr %16, align 8, !tbaa !21
  %243 = load i32, ptr %22, align 4, !tbaa !8
  %244 = sub nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, ptr %242, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !8
  %248 = icmp sge i32 %241, %247
  br i1 %248, label %249, label %270

249:                                              ; preds = %234
  %250 = load ptr, ptr %16, align 8, !tbaa !21
  %251 = load i32, ptr %22, align 4, !tbaa !8
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, ptr %250, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !8
  %256 = load ptr, ptr %16, align 8, !tbaa !21
  %257 = load i32, ptr %22, align 4, !tbaa !8
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, ptr %256, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !8
  %261 = icmp sge i32 %255, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %249
  %263 = load ptr, ptr %16, align 8, !tbaa !21
  %264 = load i32, ptr %22, align 4, !tbaa !8
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, ptr %263, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !8
  %269 = add nsw i32 %268, 1
  store i32 %269, ptr %23, align 4, !tbaa !8
  br label %277

270:                                              ; preds = %249, %234
  %271 = load ptr, ptr %16, align 8, !tbaa !21
  %272 = load i32, ptr %22, align 4, !tbaa !8
  %273 = sub nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, ptr %271, i64 %274
  %276 = load i32, ptr %275, align 4, !tbaa !8
  store i32 %276, ptr %23, align 4, !tbaa !8
  br label %277

277:                                              ; preds = %270, %262
  br label %278

278:                                              ; preds = %277, %227
  br label %279

279:                                              ; preds = %278, %193
  br label %280

280:                                              ; preds = %279, %181
  %281 = load ptr, ptr %9, align 8, !tbaa !3
  %282 = load ptr, ptr %10, align 8, !tbaa !3
  %283 = load i32, ptr %22, align 4, !tbaa !8
  %284 = load i32, ptr %23, align 4, !tbaa !8
  %285 = load i32, ptr %13, align 4, !tbaa !8
  %286 = load i32, ptr %14, align 4, !tbaa !8
  %287 = call signext i32 @snake(ptr noundef %281, ptr noundef %282, i32 noundef signext %283, i32 noundef signext %284, i32 noundef signext %285, i32 noundef signext %286)
  %288 = load ptr, ptr %17, align 8, !tbaa !21
  %289 = load i32, ptr %22, align 4, !tbaa !8
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, ptr %288, i64 %290
  store i32 %287, ptr %291, align 4, !tbaa !8
  br label %292

292:                                              ; preds = %280
  %293 = load i32, ptr %22, align 4, !tbaa !8
  %294 = add nsw i32 %293, 1
  store i32 %294, ptr %22, align 4, !tbaa !8
  br label %173, !llvm.loop !37

295:                                              ; preds = %173
  %296 = load i32, ptr %19, align 4, !tbaa !8
  store i32 %296, ptr %22, align 4, !tbaa !8
  br label %297

297:                                              ; preds = %311, %295
  %298 = load i32, ptr %22, align 4, !tbaa !8
  %299 = load i32, ptr %20, align 4, !tbaa !8
  %300 = icmp sle i32 %298, %299
  br i1 %300, label %301, label %314

301:                                              ; preds = %297
  %302 = load ptr, ptr %17, align 8, !tbaa !21
  %303 = load i32, ptr %22, align 4, !tbaa !8
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, ptr %302, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !8
  %307 = load ptr, ptr %16, align 8, !tbaa !21
  %308 = load i32, ptr %22, align 4, !tbaa !8
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, ptr %307, i64 %309
  store i32 %306, ptr %310, align 4, !tbaa !8
  br label %311

311:                                              ; preds = %301
  %312 = load i32, ptr %22, align 4, !tbaa !8
  %313 = add nsw i32 %312, 1
  store i32 %313, ptr %22, align 4, !tbaa !8
  br label %297, !llvm.loop !38

314:                                              ; preds = %297
  %315 = load ptr, ptr %16, align 8, !tbaa !21
  %316 = load i32, ptr %18, align 4, !tbaa !8
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, ptr %315, i64 %317
  %319 = load i32, ptr %318, align 4, !tbaa !8
  %320 = load i32, ptr %13, align 4, !tbaa !8
  %321 = icmp sge i32 %319, %320
  br i1 %321, label %322, label %332

322:                                              ; preds = %314
  %323 = load ptr, ptr %16, align 8, !tbaa !21
  %324 = load i32, ptr %25, align 4, !tbaa !8
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, ptr %323, i64 %325
  call void @free(ptr noundef %326) #4
  %327 = load ptr, ptr %17, align 8, !tbaa !21
  %328 = load i32, ptr %25, align 4, !tbaa !8
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, ptr %327, i64 %329
  call void @free(ptr noundef %330) #4
  %331 = load i32, ptr %21, align 4, !tbaa !8
  store i32 %331, ptr %8, align 4
  store i32 1, ptr %27, align 4
  br label %337

332:                                              ; preds = %314
  br label %333

333:                                              ; preds = %332
  %334 = load i32, ptr %21, align 4, !tbaa !8
  %335 = add nsw i32 %334, 1
  store i32 %335, ptr %21, align 4, !tbaa !8
  br label %141, !llvm.loop !39

336:                                              ; preds = %141
  store i32 -1, ptr %8, align 4
  store i32 1, ptr %27, align 4
  br label %337

337:                                              ; preds = %336, %322, %131, %75
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #4
  %338 = load i32, ptr %8, align 4
  ret i32 %338
}

; Function Attrs: nounwind
define dso_local void @Condense_both_Ends(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !10
  store ptr %1, ptr %5, align 8, !tbaa !10
  store ptr %2, ptr %6, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #4
  %9 = load ptr, ptr %4, align 8, !tbaa !10
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  store ptr %10, ptr %7, align 8, !tbaa !13
  %11 = load ptr, ptr %6, align 8, !tbaa !10
  store ptr null, ptr %11, align 8, !tbaa !13
  br label %12

12:                                               ; preds = %60, %3
  %13 = load ptr, ptr %7, align 8, !tbaa !13
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %64

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %33, %15
  %17 = load ptr, ptr %7, align 8, !tbaa !13
  %18 = getelementptr inbounds nuw %struct._edit_script, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  store ptr %19, ptr %8, align 8, !tbaa !13
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load ptr, ptr %7, align 8, !tbaa !13
  %23 = getelementptr inbounds nuw %struct._edit_script, ptr %22, i32 0, i32 2
  %24 = load i8, ptr %23, align 4, !tbaa !15
  %25 = sext i8 %24 to i32
  %26 = load ptr, ptr %8, align 8, !tbaa !13
  %27 = getelementptr inbounds nuw %struct._edit_script, ptr %26, i32 0, i32 2
  %28 = load i8, ptr %27, align 4, !tbaa !15
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %25, %29
  br label %31

31:                                               ; preds = %21, %16
  %32 = phi i1 [ false, %16 ], [ %30, %21 ]
  br i1 %32, label %33, label %49

33:                                               ; preds = %31
  %34 = load ptr, ptr %7, align 8, !tbaa !13
  %35 = getelementptr inbounds nuw %struct._edit_script, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !17
  %37 = load ptr, ptr %8, align 8, !tbaa !13
  %38 = getelementptr inbounds nuw %struct._edit_script, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !17
  %40 = add nsw i32 %36, %39
  %41 = load ptr, ptr %7, align 8, !tbaa !13
  %42 = getelementptr inbounds nuw %struct._edit_script, ptr %41, i32 0, i32 1
  store i32 %40, ptr %42, align 8, !tbaa !17
  %43 = load ptr, ptr %8, align 8, !tbaa !13
  %44 = getelementptr inbounds nuw %struct._edit_script, ptr %43, i32 0, i32 0
  %45 = load ptr, ptr %44, align 8, !tbaa !18
  %46 = load ptr, ptr %7, align 8, !tbaa !13
  %47 = getelementptr inbounds nuw %struct._edit_script, ptr %46, i32 0, i32 0
  store ptr %45, ptr %47, align 8, !tbaa !18
  %48 = load ptr, ptr %8, align 8, !tbaa !13
  call void @free(ptr noundef %48) #4
  br label %16, !llvm.loop !40

49:                                               ; preds = %31
  %50 = load ptr, ptr %7, align 8, !tbaa !13
  %51 = getelementptr inbounds nuw %struct._edit_script, ptr %50, i32 0, i32 0
  %52 = load ptr, ptr %51, align 8, !tbaa !18
  %53 = icmp ne ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load ptr, ptr %7, align 8, !tbaa !13
  %56 = load ptr, ptr %6, align 8, !tbaa !10
  store ptr %55, ptr %56, align 8, !tbaa !13
  br label %60

57:                                               ; preds = %49
  %58 = load ptr, ptr %7, align 8, !tbaa !13
  %59 = load ptr, ptr %5, align 8, !tbaa !10
  store ptr %58, ptr %59, align 8, !tbaa !13
  br label %60

60:                                               ; preds = %57, %54
  %61 = load ptr, ptr %7, align 8, !tbaa !13
  %62 = getelementptr inbounds nuw %struct._edit_script, ptr %61, i32 0, i32 0
  %63 = load ptr, ptr %62, align 8, !tbaa !18
  store ptr %63, ptr %7, align 8, !tbaa !13
  br label %12, !llvm.loop !41

64:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #4
  ret void
}

; Function Attrs: nounwind
define dso_local void @S2A(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !13
  store ptr %1, ptr %5, align 8, !tbaa !21
  store i32 %2, ptr %6, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #4
  %10 = load ptr, ptr %4, align 8, !tbaa !13
  store ptr %10, ptr %7, align 8, !tbaa !13
  %11 = load ptr, ptr %5, align 8, !tbaa !21
  store ptr %11, ptr %8, align 8, !tbaa !21
  br label %12

12:                                               ; preds = %74, %3
  %13 = load ptr, ptr %7, align 8, !tbaa !13
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %78

15:                                               ; preds = %12
  %16 = load ptr, ptr %7, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct._edit_script, ptr %16, i32 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !15
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  store i32 0, ptr %9, align 4, !tbaa !8
  br label %22

22:                                               ; preds = %31, %21
  %23 = load i32, ptr %9, align 4, !tbaa !8
  %24 = load ptr, ptr %7, align 8, !tbaa !13
  %25 = getelementptr inbounds nuw %struct._edit_script, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !17
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load ptr, ptr %8, align 8, !tbaa !21
  %30 = getelementptr inbounds nuw i32, ptr %29, i32 1
  store ptr %30, ptr %8, align 8, !tbaa !21
  store i32 0, ptr %29, align 4, !tbaa !8
  br label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %9, align 4, !tbaa !8
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %9, align 4, !tbaa !8
  br label %22, !llvm.loop !42

34:                                               ; preds = %22
  br label %74

35:                                               ; preds = %15
  %36 = load ptr, ptr %7, align 8, !tbaa !13
  %37 = getelementptr inbounds nuw %struct._edit_script, ptr %36, i32 0, i32 2
  %38 = load i8, ptr %37, align 4, !tbaa !15
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load i32, ptr %6, align 4, !tbaa !8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %7, align 8, !tbaa !13
  %46 = getelementptr inbounds nuw %struct._edit_script, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !17
  br label %53

48:                                               ; preds = %41
  %49 = load ptr, ptr %7, align 8, !tbaa !13
  %50 = getelementptr inbounds nuw %struct._edit_script, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !17
  %52 = sub nsw i32 0, %51
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i32 [ %47, %44 ], [ %52, %48 ]
  %55 = load ptr, ptr %8, align 8, !tbaa !21
  %56 = getelementptr inbounds nuw i32, ptr %55, i32 1
  store ptr %56, ptr %8, align 8, !tbaa !21
  store i32 %54, ptr %55, align 4, !tbaa !8
  br label %73

57:                                               ; preds = %35
  %58 = load i32, ptr %6, align 4, !tbaa !8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %7, align 8, !tbaa !13
  %62 = getelementptr inbounds nuw %struct._edit_script, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !17
  %64 = sub nsw i32 0, %63
  br label %69

65:                                               ; preds = %57
  %66 = load ptr, ptr %7, align 8, !tbaa !13
  %67 = getelementptr inbounds nuw %struct._edit_script, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !17
  br label %69

69:                                               ; preds = %65, %60
  %70 = phi i32 [ %64, %60 ], [ %68, %65 ]
  %71 = load ptr, ptr %8, align 8, !tbaa !21
  %72 = getelementptr inbounds nuw i32, ptr %71, i32 1
  store ptr %72, ptr %8, align 8, !tbaa !21
  store i32 %70, ptr %71, align 4, !tbaa !8
  br label %73

73:                                               ; preds = %69, %53
  br label %74

74:                                               ; preds = %73, %34
  %75 = load ptr, ptr %7, align 8, !tbaa !13
  %76 = getelementptr inbounds nuw %struct._edit_script, ptr %75, i32 0, i32 0
  %77 = load ptr, ptr %76, align 8, !tbaa !18
  store ptr %77, ptr %7, align 8, !tbaa !13
  br label %12, !llvm.loop !43

78:                                               ; preds = %12
  %79 = load ptr, ptr %8, align 8, !tbaa !21
  %80 = load ptr, ptr %5, align 8, !tbaa !21
  %81 = ptrtoint ptr %79 to i64
  %82 = ptrtoint ptr %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = load ptr, ptr %5, align 8, !tbaa !21
  %87 = getelementptr inbounds i32, ptr %86, i64 -1
  store i32 %85, ptr %87, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #4
  ret void
}

; Function Attrs: nounwind
define dso_local void @IDISPLAY(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4, i32 noundef signext %5, i32 noundef signext %6, ptr noundef %7, i32 noundef signext %8) #0 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i8, align 1
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
  %33 = alloca ptr, align 8
  store ptr %0, ptr %10, align 8, !tbaa !3
  store ptr %1, ptr %11, align 8, !tbaa !3
  store i32 %2, ptr %12, align 4, !tbaa !8
  store i32 %3, ptr %13, align 4, !tbaa !8
  store ptr %4, ptr %14, align 8, !tbaa !21
  store i32 %5, ptr %15, align 4, !tbaa !8
  store i32 %6, ptr %16, align 4, !tbaa !8
  store ptr %7, ptr %17, align 8, !tbaa !44
  store i32 %8, ptr %18, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %19) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %20) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %21) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %22) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %29) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %30) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %31) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %32) #4
  store i32 0, ptr %32, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %33) #4
  %34 = load ptr, ptr %17, align 8, !tbaa !44
  %35 = call signext i32 @get_pos_width(ptr noundef %34)
  store i32 %35, ptr %31, align 4, !tbaa !8
  br label %36

36:                                               ; preds = %64, %9
  %37 = load i32, ptr %32, align 4, !tbaa !8
  %38 = load ptr, ptr %17, align 8, !tbaa !44
  %39 = getelementptr inbounds nuw %struct._collec_t, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !46
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load ptr, ptr %17, align 8, !tbaa !44
  %44 = getelementptr inbounds nuw %struct._collec_t, ptr %43, i32 0, i32 0
  %45 = load ptr, ptr %44, align 8, !tbaa !32
  %46 = load i32, ptr %32, align 4, !tbaa !8
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds nuw ptr, ptr %45, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  store ptr %49, ptr %33, align 8, !tbaa !48
  %50 = getelementptr inbounds nuw %struct._exon_t, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 4, !tbaa !50
  %52 = load i32, ptr %15, align 4, !tbaa !8
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %42
  %55 = load ptr, ptr %33, align 8, !tbaa !48
  %56 = getelementptr inbounds nuw %struct._exon_t, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !52
  %58 = load i32, ptr %16, align 4, !tbaa !8
  %59 = icmp ne i32 %57, %58
  br label %60

60:                                               ; preds = %54, %42
  %61 = phi i1 [ true, %42 ], [ %59, %54 ]
  br label %62

62:                                               ; preds = %60, %36
  %63 = phi i1 [ false, %36 ], [ %61, %60 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i32, ptr %32, align 4, !tbaa !8
  %66 = add i32 %65, 1
  store i32 %66, ptr %32, align 4, !tbaa !8
  br label %36, !llvm.loop !53

67:                                               ; preds = %62
  %68 = load i32, ptr %32, align 4, !tbaa !8
  %69 = load ptr, ptr %17, align 8, !tbaa !44
  %70 = getelementptr inbounds nuw %struct._collec_t, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !46
  %72 = icmp uge i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  call void (ptr, ...) @fatal(ptr noundef @.str.2) #5
  unreachable

74:                                               ; preds = %67
  store i32 0, ptr %24, align 4, !tbaa !8
  store i32 0, ptr %28, align 4, !tbaa !8
  store i32 0, ptr %23, align 4, !tbaa !8
  store i32 0, ptr %27, align 4, !tbaa !8
  store i32 0, ptr %26, align 4, !tbaa !8
  store i8 42, ptr %22, align 1, !tbaa !32
  %75 = load i32, ptr %15, align 4, !tbaa !8
  store i32 %75, ptr %29, align 4, !tbaa !8
  %76 = load i32, ptr %16, align 4, !tbaa !8
  store i32 %76, ptr %30, align 4, !tbaa !8
  store ptr @ALINE, ptr %19, align 8, !tbaa !3
  store ptr @BLINE, ptr %20, align 8, !tbaa !3
  store ptr @CLINE, ptr %21, align 8, !tbaa !3
  %77 = load i32, ptr %32, align 4, !tbaa !8
  %78 = load ptr, ptr %17, align 8, !tbaa !44
  %79 = getelementptr inbounds nuw %struct._collec_t, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !46
  %81 = sub i32 %80, 1
  %82 = icmp ult i32 %77, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load ptr, ptr %33, align 8, !tbaa !48
  %85 = getelementptr inbounds nuw %struct._exon_t, ptr %84, i32 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !54
  %87 = add nsw i32 %86, 1
  br label %89

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %83
  %90 = phi i32 [ %87, %83 ], [ -1, %88 ]
  store i32 %90, ptr %25, align 4, !tbaa !8
  br label %91

91:                                               ; preds = %390, %89
  %92 = load i32, ptr %26, align 4, !tbaa !8
  %93 = load i32, ptr %12, align 4, !tbaa !8
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32, ptr %27, align 4, !tbaa !8
  %97 = load i32, ptr %13, align 4, !tbaa !8
  %98 = icmp ult i32 %96, %97
  br label %99

99:                                               ; preds = %95, %91
  %100 = phi i1 [ true, %91 ], [ %98, %95 ]
  br i1 %100, label %101, label %391

101:                                              ; preds = %99
  %102 = load i32, ptr %23, align 4, !tbaa !8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %140

104:                                              ; preds = %101
  %105 = load ptr, ptr %14, align 8, !tbaa !21
  %106 = load i32, ptr %105, align 4, !tbaa !8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %140

108:                                              ; preds = %104
  %109 = load ptr, ptr %14, align 8, !tbaa !21
  %110 = getelementptr inbounds nuw i32, ptr %109, i32 1
  store ptr %110, ptr %14, align 8, !tbaa !21
  %111 = load i32, ptr %109, align 4, !tbaa !8
  store i32 %111, ptr %23, align 4, !tbaa !8
  %112 = load ptr, ptr %10, align 8, !tbaa !3
  %113 = load i32, ptr %26, align 4, !tbaa !8
  %114 = add i32 %113, 1
  store i32 %114, ptr %26, align 4, !tbaa !8
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds nuw i8, ptr %112, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !32
  %118 = load ptr, ptr %19, align 8, !tbaa !3
  store i8 %117, ptr %118, align 1, !tbaa !32
  %119 = load ptr, ptr %11, align 8, !tbaa !3
  %120 = load i32, ptr %27, align 4, !tbaa !8
  %121 = add i32 %120, 1
  store i32 %121, ptr %27, align 4, !tbaa !8
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds nuw i8, ptr %119, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !32
  %125 = load ptr, ptr %20, align 8, !tbaa !3
  store i8 %124, ptr %125, align 1, !tbaa !32
  %126 = load ptr, ptr %19, align 8, !tbaa !3
  %127 = getelementptr inbounds nuw i8, ptr %126, i32 1
  store ptr %127, ptr %19, align 8, !tbaa !3
  %128 = load i8, ptr %126, align 1, !tbaa !32
  %129 = zext i8 %128 to i32
  %130 = load ptr, ptr %20, align 8, !tbaa !3
  %131 = getelementptr inbounds nuw i8, ptr %130, i32 1
  store ptr %131, ptr %20, align 8, !tbaa !3
  %132 = load i8, ptr %130, align 1, !tbaa !32
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %129, %133
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 124, i32 32
  %137 = trunc i32 %136 to i8
  %138 = load ptr, ptr %21, align 8, !tbaa !3
  %139 = getelementptr inbounds nuw i8, ptr %138, i32 1
  store ptr %139, ptr %21, align 8, !tbaa !3
  store i8 %137, ptr %138, align 1, !tbaa !32
  br label %339

140:                                              ; preds = %104, %101
  %141 = load i32, ptr %23, align 4, !tbaa !8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load ptr, ptr %14, align 8, !tbaa !21
  %145 = getelementptr inbounds nuw i32, ptr %144, i32 1
  store ptr %145, ptr %14, align 8, !tbaa !21
  %146 = load i32, ptr %144, align 4, !tbaa !8
  store i32 %146, ptr %23, align 4, !tbaa !8
  br label %147

147:                                              ; preds = %143, %140
  %148 = load i32, ptr %23, align 4, !tbaa !8
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %147
  %151 = load ptr, ptr %19, align 8, !tbaa !3
  %152 = getelementptr inbounds nuw i8, ptr %151, i32 1
  store ptr %152, ptr %19, align 8, !tbaa !3
  store i8 32, ptr %151, align 1, !tbaa !32
  %153 = load ptr, ptr %11, align 8, !tbaa !3
  %154 = load i32, ptr %27, align 4, !tbaa !8
  %155 = add i32 %154, 1
  store i32 %155, ptr %27, align 4, !tbaa !8
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds nuw i8, ptr %153, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !32
  %159 = load ptr, ptr %20, align 8, !tbaa !3
  %160 = getelementptr inbounds nuw i8, ptr %159, i32 1
  store ptr %160, ptr %20, align 8, !tbaa !3
  store i8 %158, ptr %159, align 1, !tbaa !32
  %161 = load ptr, ptr %21, align 8, !tbaa !3
  %162 = getelementptr inbounds nuw i8, ptr %161, i32 1
  store ptr %162, ptr %21, align 8, !tbaa !3
  store i8 45, ptr %161, align 1, !tbaa !32
  %163 = load i32, ptr %23, align 4, !tbaa !8
  %164 = add nsw i32 %163, -1
  store i32 %164, ptr %23, align 4, !tbaa !8
  br label %338

165:                                              ; preds = %147
  %166 = load i32, ptr %26, align 4, !tbaa !8
  %167 = load i32, ptr %15, align 4, !tbaa !8
  %168 = add i32 %166, %167
  %169 = load i32, ptr %25, align 4, !tbaa !8
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %236

171:                                              ; preds = %165
  %172 = load ptr, ptr %33, align 8, !tbaa !48
  %173 = getelementptr inbounds nuw %struct._exon_t, ptr %172, i32 0, i32 6
  %174 = load i64, ptr %173, align 4
  %175 = ashr i64 %174, 56
  %176 = trunc i64 %175 to i32
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %171
  %179 = load i32, ptr %18, align 4, !tbaa !8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178, %171
  store i8 61, ptr %22, align 1, !tbaa !32
  br label %188

182:                                              ; preds = %178
  %183 = load i32, ptr %18, align 4, !tbaa !8
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i8 62, ptr %22, align 1, !tbaa !32
  br label %187

186:                                              ; preds = %182
  store i8 60, ptr %22, align 1, !tbaa !32
  br label %187

187:                                              ; preds = %186, %185
  br label %188

188:                                              ; preds = %187, %181
  %189 = load i32, ptr %32, align 4, !tbaa !8
  %190 = add i32 %189, 1
  store i32 %190, ptr %32, align 4, !tbaa !8
  %191 = load i32, ptr %32, align 4, !tbaa !8
  %192 = load ptr, ptr %17, align 8, !tbaa !44
  %193 = getelementptr inbounds nuw %struct._collec_t, ptr %192, i32 0, i32 1
  %194 = load i32, ptr %193, align 8, !tbaa !46
  %195 = icmp ult i32 %191, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %188
  %197 = load ptr, ptr %17, align 8, !tbaa !44
  %198 = getelementptr inbounds nuw %struct._collec_t, ptr %197, i32 0, i32 0
  %199 = load ptr, ptr %198, align 8, !tbaa !32
  %200 = load i32, ptr %32, align 4, !tbaa !8
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds nuw ptr, ptr %199, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !48
  br label %205

204:                                              ; preds = %188
  br label %205

205:                                              ; preds = %204, %196
  %206 = phi ptr [ %203, %196 ], [ null, %204 ]
  store ptr %206, ptr %33, align 8, !tbaa !48
  %207 = load i32, ptr %32, align 4, !tbaa !8
  %208 = load ptr, ptr %17, align 8, !tbaa !44
  %209 = getelementptr inbounds nuw %struct._collec_t, ptr %208, i32 0, i32 1
  %210 = load i32, ptr %209, align 8, !tbaa !46
  %211 = sub i32 %210, 1
  %212 = icmp ult i32 %207, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %205
  %214 = load ptr, ptr %33, align 8, !tbaa !48
  %215 = getelementptr inbounds nuw %struct._exon_t, ptr %214, i32 0, i32 2
  %216 = load i32, ptr %215, align 4, !tbaa !54
  %217 = add nsw i32 %216, 1
  br label %219

218:                                              ; preds = %205
  br label %219

219:                                              ; preds = %218, %213
  %220 = phi i32 [ %217, %213 ], [ -1, %218 ]
  store i32 %220, ptr %25, align 4, !tbaa !8
  store i32 1, ptr %24, align 4, !tbaa !8
  %221 = load i8, ptr %22, align 1, !tbaa !32
  %222 = load ptr, ptr %21, align 8, !tbaa !3
  %223 = getelementptr inbounds nuw i8, ptr %222, i32 1
  store ptr %223, ptr %21, align 8, !tbaa !3
  store i8 %221, ptr %222, align 1, !tbaa !32
  %224 = load ptr, ptr %10, align 8, !tbaa !3
  %225 = load i32, ptr %26, align 4, !tbaa !8
  %226 = add i32 %225, 1
  store i32 %226, ptr %26, align 4, !tbaa !8
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds nuw i8, ptr %224, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !32
  %230 = load ptr, ptr %19, align 8, !tbaa !3
  %231 = getelementptr inbounds nuw i8, ptr %230, i32 1
  store ptr %231, ptr %19, align 8, !tbaa !3
  store i8 %229, ptr %230, align 1, !tbaa !32
  %232 = load ptr, ptr %20, align 8, !tbaa !3
  %233 = getelementptr inbounds nuw i8, ptr %232, i32 1
  store ptr %233, ptr %20, align 8, !tbaa !3
  store i8 32, ptr %232, align 1, !tbaa !32
  %234 = load i32, ptr %23, align 4, !tbaa !8
  %235 = add nsw i32 %234, 1
  store i32 %235, ptr %23, align 4, !tbaa !8
  br label %337

236:                                              ; preds = %165
  %237 = load i32, ptr %24, align 4, !tbaa !8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %254, label %239

239:                                              ; preds = %236
  %240 = load ptr, ptr %21, align 8, !tbaa !3
  %241 = getelementptr inbounds nuw i8, ptr %240, i32 1
  store ptr %241, ptr %21, align 8, !tbaa !3
  store i8 45, ptr %240, align 1, !tbaa !32
  %242 = load ptr, ptr %10, align 8, !tbaa !3
  %243 = load i32, ptr %26, align 4, !tbaa !8
  %244 = add i32 %243, 1
  store i32 %244, ptr %26, align 4, !tbaa !8
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds nuw i8, ptr %242, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !32
  %248 = load ptr, ptr %19, align 8, !tbaa !3
  %249 = getelementptr inbounds nuw i8, ptr %248, i32 1
  store ptr %249, ptr %19, align 8, !tbaa !3
  store i8 %247, ptr %248, align 1, !tbaa !32
  %250 = load ptr, ptr %20, align 8, !tbaa !3
  %251 = getelementptr inbounds nuw i8, ptr %250, i32 1
  store ptr %251, ptr %20, align 8, !tbaa !3
  store i8 32, ptr %250, align 1, !tbaa !32
  %252 = load i32, ptr %23, align 4, !tbaa !8
  %253 = add nsw i32 %252, 1
  store i32 %253, ptr %23, align 4, !tbaa !8
  br label %336

254:                                              ; preds = %236
  %255 = load i32, ptr %24, align 4, !tbaa !8
  switch i32 %255, label %335 [
    i32 0, label %256
    i32 1, label %256
    i32 2, label %256
    i32 3, label %274
    i32 4, label %274
    i32 5, label %287
    i32 6, label %301
    i32 7, label %301
    i32 8, label %319
  ]

256:                                              ; preds = %254, %254, %254
  %257 = load ptr, ptr %10, align 8, !tbaa !3
  %258 = load i32, ptr %26, align 4, !tbaa !8
  %259 = add i32 %258, 1
  store i32 %259, ptr %26, align 4, !tbaa !8
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds nuw i8, ptr %257, i64 %260
  %262 = load i8, ptr %261, align 1, !tbaa !32
  %263 = load ptr, ptr %19, align 8, !tbaa !3
  %264 = getelementptr inbounds nuw i8, ptr %263, i32 1
  store ptr %264, ptr %19, align 8, !tbaa !3
  store i8 %262, ptr %263, align 1, !tbaa !32
  %265 = load ptr, ptr %20, align 8, !tbaa !3
  %266 = getelementptr inbounds nuw i8, ptr %265, i32 1
  store ptr %266, ptr %20, align 8, !tbaa !3
  store i8 32, ptr %265, align 1, !tbaa !32
  %267 = load i8, ptr %22, align 1, !tbaa !32
  %268 = load ptr, ptr %21, align 8, !tbaa !3
  %269 = getelementptr inbounds nuw i8, ptr %268, i32 1
  store ptr %269, ptr %21, align 8, !tbaa !3
  store i8 %267, ptr %268, align 1, !tbaa !32
  %270 = load i32, ptr %23, align 4, !tbaa !8
  %271 = add nsw i32 %270, 1
  store i32 %271, ptr %23, align 4, !tbaa !8
  %272 = load i32, ptr %24, align 4, !tbaa !8
  %273 = add nsw i32 %272, 1
  store i32 %273, ptr %24, align 4, !tbaa !8
  br label %335

274:                                              ; preds = %254, %254
  %275 = load ptr, ptr %19, align 8, !tbaa !3
  %276 = getelementptr inbounds nuw i8, ptr %275, i32 1
  store ptr %276, ptr %19, align 8, !tbaa !3
  store i8 46, ptr %275, align 1, !tbaa !32
  %277 = load ptr, ptr %20, align 8, !tbaa !3
  %278 = getelementptr inbounds nuw i8, ptr %277, i32 1
  store ptr %278, ptr %20, align 8, !tbaa !3
  store i8 32, ptr %277, align 1, !tbaa !32
  %279 = load ptr, ptr %21, align 8, !tbaa !3
  %280 = getelementptr inbounds nuw i8, ptr %279, i32 1
  store ptr %280, ptr %21, align 8, !tbaa !3
  store i8 46, ptr %279, align 1, !tbaa !32
  %281 = load i32, ptr %26, align 4, !tbaa !8
  %282 = add i32 %281, 1
  store i32 %282, ptr %26, align 4, !tbaa !8
  %283 = load i32, ptr %23, align 4, !tbaa !8
  %284 = add nsw i32 %283, 1
  store i32 %284, ptr %23, align 4, !tbaa !8
  %285 = load i32, ptr %24, align 4, !tbaa !8
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr %24, align 4, !tbaa !8
  br label %335

287:                                              ; preds = %254
  %288 = load ptr, ptr %19, align 8, !tbaa !3
  %289 = getelementptr inbounds nuw i8, ptr %288, i32 1
  store ptr %289, ptr %19, align 8, !tbaa !3
  store i8 46, ptr %288, align 1, !tbaa !32
  %290 = load ptr, ptr %20, align 8, !tbaa !3
  %291 = getelementptr inbounds nuw i8, ptr %290, i32 1
  store ptr %291, ptr %20, align 8, !tbaa !3
  store i8 32, ptr %290, align 1, !tbaa !32
  %292 = load ptr, ptr %21, align 8, !tbaa !3
  %293 = getelementptr inbounds nuw i8, ptr %292, i32 1
  store ptr %293, ptr %21, align 8, !tbaa !3
  store i8 46, ptr %292, align 1, !tbaa !32
  %294 = load i32, ptr %23, align 4, !tbaa !8
  %295 = sub nsw i32 0, %294
  %296 = sub nsw i32 %295, 3
  %297 = load i32, ptr %26, align 4, !tbaa !8
  %298 = add i32 %297, %296
  store i32 %298, ptr %26, align 4, !tbaa !8
  store i32 -3, ptr %23, align 4, !tbaa !8
  %299 = load i32, ptr %24, align 4, !tbaa !8
  %300 = add nsw i32 %299, 1
  store i32 %300, ptr %24, align 4, !tbaa !8
  br label %335

301:                                              ; preds = %254, %254
  %302 = load ptr, ptr %10, align 8, !tbaa !3
  %303 = load i32, ptr %26, align 4, !tbaa !8
  %304 = add i32 %303, 1
  store i32 %304, ptr %26, align 4, !tbaa !8
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds nuw i8, ptr %302, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !32
  %308 = load ptr, ptr %19, align 8, !tbaa !3
  %309 = getelementptr inbounds nuw i8, ptr %308, i32 1
  store ptr %309, ptr %19, align 8, !tbaa !3
  store i8 %307, ptr %308, align 1, !tbaa !32
  %310 = load ptr, ptr %20, align 8, !tbaa !3
  %311 = getelementptr inbounds nuw i8, ptr %310, i32 1
  store ptr %311, ptr %20, align 8, !tbaa !3
  store i8 32, ptr %310, align 1, !tbaa !32
  %312 = load i8, ptr %22, align 1, !tbaa !32
  %313 = load ptr, ptr %21, align 8, !tbaa !3
  %314 = getelementptr inbounds nuw i8, ptr %313, i32 1
  store ptr %314, ptr %21, align 8, !tbaa !3
  store i8 %312, ptr %313, align 1, !tbaa !32
  %315 = load i32, ptr %23, align 4, !tbaa !8
  %316 = add nsw i32 %315, 1
  store i32 %316, ptr %23, align 4, !tbaa !8
  %317 = load i32, ptr %24, align 4, !tbaa !8
  %318 = add nsw i32 %317, 1
  store i32 %318, ptr %24, align 4, !tbaa !8
  br label %335

319:                                              ; preds = %254
  %320 = load ptr, ptr %10, align 8, !tbaa !3
  %321 = load i32, ptr %26, align 4, !tbaa !8
  %322 = add i32 %321, 1
  store i32 %322, ptr %26, align 4, !tbaa !8
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds nuw i8, ptr %320, i64 %323
  %325 = load i8, ptr %324, align 1, !tbaa !32
  %326 = load ptr, ptr %19, align 8, !tbaa !3
  %327 = getelementptr inbounds nuw i8, ptr %326, i32 1
  store ptr %327, ptr %19, align 8, !tbaa !3
  store i8 %325, ptr %326, align 1, !tbaa !32
  %328 = load ptr, ptr %20, align 8, !tbaa !3
  %329 = getelementptr inbounds nuw i8, ptr %328, i32 1
  store ptr %329, ptr %20, align 8, !tbaa !3
  store i8 32, ptr %328, align 1, !tbaa !32
  %330 = load i8, ptr %22, align 1, !tbaa !32
  %331 = load ptr, ptr %21, align 8, !tbaa !3
  %332 = getelementptr inbounds nuw i8, ptr %331, i32 1
  store ptr %332, ptr %21, align 8, !tbaa !3
  store i8 %330, ptr %331, align 1, !tbaa !32
  %333 = load i32, ptr %23, align 4, !tbaa !8
  %334 = add nsw i32 %333, 1
  store i32 %334, ptr %23, align 4, !tbaa !8
  store i32 0, ptr %24, align 4, !tbaa !8
  br label %335

335:                                              ; preds = %254, %319, %301, %287, %274, %256
  br label %336

336:                                              ; preds = %335, %239
  br label %337

337:                                              ; preds = %336, %219
  br label %338

338:                                              ; preds = %337, %150
  br label %339

339:                                              ; preds = %338, %108
  %340 = load ptr, ptr %19, align 8, !tbaa !3
  %341 = icmp uge ptr %340, getelementptr inbounds (i8, ptr @ALINE, i64 50)
  br i1 %341, label %350, label %342

342:                                              ; preds = %339
  %343 = load i32, ptr %26, align 4, !tbaa !8
  %344 = load i32, ptr %12, align 4, !tbaa !8
  %345 = icmp uge i32 %343, %344
  br i1 %345, label %346, label %390

346:                                              ; preds = %342
  %347 = load i32, ptr %27, align 4, !tbaa !8
  %348 = load i32, ptr %13, align 4, !tbaa !8
  %349 = icmp uge i32 %347, %348
  br i1 %349, label %350, label %390

350:                                              ; preds = %346, %339
  %351 = load ptr, ptr %21, align 8, !tbaa !3
  store i8 0, ptr %351, align 1, !tbaa !32
  %352 = load ptr, ptr %20, align 8, !tbaa !3
  store i8 0, ptr %352, align 1, !tbaa !32
  %353 = load ptr, ptr %19, align 8, !tbaa !3
  store i8 0, ptr %353, align 1, !tbaa !32
  %354 = load i32, ptr %31, align 4, !tbaa !8
  %355 = load i32, ptr %28, align 4, !tbaa !8
  %356 = add i32 %355, 1
  store i32 %356, ptr %28, align 4, !tbaa !8
  %357 = mul i32 50, %355
  %358 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef signext %354, i32 noundef signext %357)
  store ptr getelementptr inbounds (i8, ptr @ALINE, i64 10), ptr %20, align 8, !tbaa !3
  br label %359

359:                                              ; preds = %365, %350
  %360 = load ptr, ptr %20, align 8, !tbaa !3
  %361 = load ptr, ptr %19, align 8, !tbaa !3
  %362 = icmp ule ptr %360, %361
  br i1 %362, label %363, label %368

363:                                              ; preds = %359
  %364 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %365

365:                                              ; preds = %363
  %366 = load ptr, ptr %20, align 8, !tbaa !3
  %367 = getelementptr inbounds i8, ptr %366, i64 10
  store ptr %367, ptr %20, align 8, !tbaa !3
  br label %359, !llvm.loop !55

368:                                              ; preds = %359
  %369 = load ptr, ptr %20, align 8, !tbaa !3
  %370 = load ptr, ptr %19, align 8, !tbaa !3
  %371 = getelementptr inbounds i8, ptr %370, i64 5
  %372 = icmp ule ptr %369, %371
  br i1 %372, label %373, label %375

373:                                              ; preds = %368
  %374 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %375

375:                                              ; preds = %373, %368
  %376 = load i32, ptr %31, align 4, !tbaa !8
  %377 = load i32, ptr %29, align 4, !tbaa !8
  %378 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !56
  %379 = add i32 %377, %378
  %380 = load i32, ptr %31, align 4, !tbaa !8
  %381 = load i32, ptr %31, align 4, !tbaa !8
  %382 = load i32, ptr %30, align 4, !tbaa !8
  %383 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef signext %376, i32 noundef signext %379, ptr noundef @ALINE, i32 noundef signext %380, ptr noundef @.str.7, ptr noundef @CLINE, i32 noundef signext %381, i32 noundef signext %382, ptr noundef @BLINE)
  %384 = load i32, ptr %15, align 4, !tbaa !8
  %385 = load i32, ptr %26, align 4, !tbaa !8
  %386 = add i32 %384, %385
  store i32 %386, ptr %29, align 4, !tbaa !8
  %387 = load i32, ptr %16, align 4, !tbaa !8
  %388 = load i32, ptr %27, align 4, !tbaa !8
  %389 = add i32 %387, %388
  store i32 %389, ptr %30, align 4, !tbaa !8
  store ptr @ALINE, ptr %19, align 8, !tbaa !3
  store ptr @BLINE, ptr %20, align 8, !tbaa !3
  store ptr @CLINE, ptr %21, align 8, !tbaa !3
  br label %390

390:                                              ; preds = %375, %346, %342
  br label %91, !llvm.loop !59

391:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 8, ptr %33) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %32) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %31) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %30) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %29) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %22) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %21) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %20) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %19) #4
  ret void
}

; Function Attrs: nounwind
define internal signext i32 @get_pos_width(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #4
  %5 = load ptr, ptr %2, align 8, !tbaa !44
  %6 = getelementptr inbounds nuw %struct._collec_t, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8, !tbaa !32
  %8 = load ptr, ptr %2, align 8, !tbaa !44
  %9 = getelementptr inbounds nuw %struct._collec_t, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !46
  %11 = sub i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds nuw ptr, ptr %7, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds nuw %struct._exon_t, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !54
  %17 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !56
  %18 = add i32 %16, %17
  store i32 %18, ptr %3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #4
  store i32 1, ptr %4, align 4, !tbaa !8
  br label %19

19:                                               ; preds = %23, %1
  %20 = load i32, ptr %3, align 4, !tbaa !8
  %21 = udiv i32 %20, 10
  store i32 %21, ptr %3, align 4, !tbaa !8
  %22 = icmp ugt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, ptr %4, align 4, !tbaa !8
  %25 = add i32 %24, 1
  store i32 %25, ptr %4, align 4, !tbaa !8
  br label %19, !llvm.loop !60

26:                                               ; preds = %19
  %27 = load i32, ptr %4, align 4, !tbaa !8
  %28 = icmp ult i32 %27, 7
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 7, ptr %4, align 4, !tbaa !8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, ptr %4, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #4
  ret i32 %31
}

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) #3

declare signext i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
define dso_local void @Free_script(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #4
  %5 = load ptr, ptr %2, align 8, !tbaa !13
  store ptr %5, ptr %3, align 8, !tbaa !13
  br label %6

6:                                                ; preds = %9, %1
  %7 = load ptr, ptr %3, align 8, !tbaa !13
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8, !tbaa !13
  %11 = getelementptr inbounds nuw %struct._edit_script, ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  store ptr %12, ptr %4, align 8, !tbaa !13
  %13 = load ptr, ptr %3, align 8, !tbaa !13
  call void @free(ptr noundef %13) #4
  %14 = load ptr, ptr %4, align 8, !tbaa !13
  store ptr %14, ptr %3, align 8, !tbaa !13
  br label %6, !llvm.loop !61

15:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #4
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"p2 _ZTS12_edit_script", !12, i64 0}
!12 = !{!"any p2 pointer", !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS12_edit_script", !5, i64 0}
!15 = !{!16, !6, i64 12}
!16 = !{!"_edit_script", !14, i64 0, !9, i64 8, !6, i64 12}
!17 = !{!16, !9, i64 8}
!18 = !{!16, !14, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS8_IO_FILE", !5, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 int", !5, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = !{!6, !6, i64 0}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !24}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !24}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !24}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 _ZTS9_collec_t", !5, i64 0}
!46 = !{!47, !9, i64 8}
!47 = !{!"_collec_t", !6, i64 0, !9, i64 8, !9, i64 12}
!48 = !{!49, !49, i64 0}
!49 = !{!"p1 _ZTS7_exon_t", !5, i64 0}
!50 = !{!51, !9, i64 0}
!51 = !{!"_exon_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 24, !9, i64 24, !9, i64 28, !9, i64 28, !9, i64 31}
!52 = !{!51, !9, i64 4}
!53 = distinct !{!53, !24}
!54 = !{!51, !9, i64 8}
!55 = distinct !{!55, !24}
!56 = !{!57, !9, i64 68}
!57 = !{!"_options_t", !4, i64 0, !58, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76}
!58 = !{!"p1 _ZTS11_junction_t", !5, i64 0}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !24}
!61 = distinct !{!61, !24}
