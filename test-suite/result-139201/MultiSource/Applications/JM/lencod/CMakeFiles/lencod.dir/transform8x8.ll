; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/transform8x8.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/transform8x8.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.macroblock = type { i32, i32, i32, [2 x i32], i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, [3 x [2 x i32]] }
%struct.datapartition = type { ptr, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }

@quant_coef8 = dso_local constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 13107, i32 12222, i32 16777, i32 12222, i32 13107, i32 12222, i32 16777, i32 12222], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 16777, i32 15481, i32 20972, i32 15481, i32 16777, i32 15481, i32 20972, i32 15481], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 13107, i32 12222, i32 16777, i32 12222, i32 13107, i32 12222, i32 16777, i32 12222], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 16777, i32 15481, i32 20972, i32 15481, i32 16777, i32 15481, i32 20972, i32 15481], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428]], [8 x [8 x i32]] [[8 x i32] [i32 11916, i32 11058, i32 14980, i32 11058, i32 11916, i32 11058, i32 14980, i32 11058], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 14980, i32 14290, i32 19174, i32 14290, i32 14980, i32 14290, i32 19174, i32 14290], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 11916, i32 11058, i32 14980, i32 11058, i32 11916, i32 11058, i32 14980, i32 11058], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 14980, i32 14290, i32 19174, i32 14290, i32 14980, i32 14290, i32 19174, i32 14290], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826]], [8 x [8 x i32]] [[8 x i32] [i32 10082, i32 9675, i32 12710, i32 9675, i32 10082, i32 9675, i32 12710, i32 9675], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 12710, i32 11985, i32 15978, i32 11985, i32 12710, i32 11985, i32 15978, i32 11985], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 10082, i32 9675, i32 12710, i32 9675, i32 10082, i32 9675, i32 12710, i32 9675], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 12710, i32 11985, i32 15978, i32 11985, i32 12710, i32 11985, i32 15978, i32 11985], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943]], [8 x [8 x i32]] [[8 x i32] [i32 9362, i32 8931, i32 11984, i32 8931, i32 9362, i32 8931, i32 11984, i32 8931], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 11984, i32 11259, i32 14913, i32 11259, i32 11984, i32 11259, i32 14913, i32 11259], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 9362, i32 8931, i32 11984, i32 8931, i32 9362, i32 8931, i32 11984, i32 8931], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 11984, i32 11259, i32 14913, i32 11259, i32 11984, i32 11259, i32 14913, i32 11259], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228]], [8 x [8 x i32]] [[8 x i32] [i32 8192, i32 7740, i32 10486, i32 7740, i32 8192, i32 7740, i32 10486, i32 7740], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 10486, i32 9777, i32 13159, i32 9777, i32 10486, i32 9777, i32 13159, i32 9777], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 8192, i32 7740, i32 10486, i32 7740, i32 8192, i32 7740, i32 10486, i32 7740], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 10486, i32 9777, i32 13159, i32 9777, i32 10486, i32 9777, i32 13159, i32 9777], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346]], [8 x [8 x i32]] [[8 x i32] [i32 7282, i32 6830, i32 9118, i32 6830, i32 7282, i32 6830, i32 9118, i32 6830], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 9118, i32 8640, i32 11570, i32 8640, i32 9118, i32 8640, i32 11570, i32 8640], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 7282, i32 6830, i32 9118, i32 6830, i32 7282, i32 6830, i32 9118, i32 6830], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 9118, i32 8640, i32 11570, i32 8640, i32 9118, i32 8640, i32 11570, i32 8640], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428]]], align 4
@dequant_coef8 = dso_local constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18]], [8 x [8 x i32]] [[8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19]], [8 x [8 x i32]] [[8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23]], [8 x [8 x i32]] [[8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25]], [8 x [8 x i32]] [[8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28]], [8 x [8 x i32]] [[8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32]]], align 4
@SNGL_SCAN8x8 = dso_local constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\01", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\03", [2 x i8] c"\02\02", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\05\00", [2 x i8] c"\04\01", [2 x i8] c"\03\02", [2 x i8] c"\02\03", [2 x i8] c"\01\04", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\01\05", [2 x i8] c"\02\04", [2 x i8] c"\03\03", [2 x i8] c"\04\02", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\07\00", [2 x i8] c"\06\01", [2 x i8] c"\05\02", [2 x i8] c"\04\03", [2 x i8] c"\03\04", [2 x i8] c"\02\05", [2 x i8] c"\01\06", [2 x i8] c"\00\07", [2 x i8] c"\01\07", [2 x i8] c"\02\06", [2 x i8] c"\03\05", [2 x i8] c"\04\04", [2 x i8] c"\05\03", [2 x i8] c"\06\02", [2 x i8] c"\07\01", [2 x i8] c"\07\02", [2 x i8] c"\06\03", [2 x i8] c"\05\04", [2 x i8] c"\04\05", [2 x i8] c"\03\06", [2 x i8] c"\02\07", [2 x i8] c"\03\07", [2 x i8] c"\04\06", [2 x i8] c"\05\05", [2 x i8] c"\06\04", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\06\05", [2 x i8] c"\05\06", [2 x i8] c"\04\07", [2 x i8] c"\05\07", [2 x i8] c"\06\06", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\06\07", [2 x i8] c"\07\07"], align 1
@FIELD_SCAN8x8 = dso_local constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\02", [2 x i8] c"\02\00", [2 x i8] c"\01\03", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\00\07", [2 x i8] c"\01\04", [2 x i8] c"\02\01", [2 x i8] c"\03\00", [2 x i8] c"\02\02", [2 x i8] c"\01\05", [2 x i8] c"\01\06", [2 x i8] c"\01\07", [2 x i8] c"\02\03", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\03\02", [2 x i8] c"\02\04", [2 x i8] c"\02\05", [2 x i8] c"\02\06", [2 x i8] c"\02\07", [2 x i8] c"\03\03", [2 x i8] c"\04\01", [2 x i8] c"\05\00", [2 x i8] c"\04\02", [2 x i8] c"\03\04", [2 x i8] c"\03\05", [2 x i8] c"\03\06", [2 x i8] c"\03\07", [2 x i8] c"\04\03", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\05\02", [2 x i8] c"\04\04", [2 x i8] c"\04\05", [2 x i8] c"\04\06", [2 x i8] c"\04\07", [2 x i8] c"\05\03", [2 x i8] c"\06\01", [2 x i8] c"\06\02", [2 x i8] c"\05\04", [2 x i8] c"\05\05", [2 x i8] c"\05\06", [2 x i8] c"\05\07", [2 x i8] c"\06\03", [2 x i8] c"\07\00", [2 x i8] c"\07\01", [2 x i8] c"\06\04", [2 x i8] c"\06\05", [2 x i8] c"\06\06", [2 x i8] c"\06\07", [2 x i8] c"\07\02", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\07\07"], align 1
@COEFF_COST8x8 = dso_local constant <{ <{ [24 x i8], [40 x i8] }>, [64 x i8] }> <{ <{ [24 x i8], [40 x i8] }> <{ [24 x i8] c"\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01", [40 x i8] zeroinitializer }>, [64 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09" }>, align 1
@img = external global ptr, align 8
@imgY_org = common dso_local global ptr null, align 8
@input = external global ptr, align 8
@diff64 = internal global [64 x i32] zeroinitializer, align 4
@cofAC8x8 = external global ptr, align 8
@enc_picture = external global ptr, align 8
@intrapred_luma8x8.PredPel = internal global [25 x i16] zeroinitializer, align 2
@getNeighbour = common dso_local global ptr null, align 8
@assignSE2partition = external global [2 x ptr], align 8
@writeIntraPredMode = external global ptr, align 8
@qp_per_matrix = external global ptr, align 8
@qp_rem_matrix = external global ptr, align 8
@LevelScale8x8Luma = external global ptr, align 8
@LevelOffset8x8Luma = external global ptr, align 8
@InvLevelScale8x8Luma = external global ptr, align 8
@AdaptRndWeight = external global i32, align 4
@color_formats = common dso_local global i32 0, align 4
@top_pic = common dso_local global ptr null, align 8
@bottom_pic = common dso_local global ptr null, align 8
@frame_pic = common dso_local global ptr null, align 8
@frame_pic_1 = common dso_local global ptr null, align 8
@frame_pic_2 = common dso_local global ptr null, align 8
@frame_pic_3 = common dso_local global ptr null, align 8
@frame_pic_si = common dso_local global ptr null, align 8
@Bit_Buffer = common dso_local global ptr null, align 8
@imgUV_org = common dso_local global ptr null, align 8
@imgY_sub_tmp = common dso_local global ptr null, align 8
@PicPos = common dso_local global ptr null, align 8
@log2_max_frame_num_minus4 = common dso_local global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common dso_local global i32 0, align 4
@me_tot_time = common dso_local global i64 0, align 8
@me_time = common dso_local global i64 0, align 8
@active_pps = common dso_local global ptr null, align 8
@active_sps = common dso_local global ptr null, align 8
@dsr_new_search_range = common dso_local global i32 0, align 4
@mb_adaptive = common dso_local global i32 0, align 4
@MBPairIsField = common dso_local global i32 0, align 4
@wp_weight = common dso_local global ptr null, align 8
@wp_offset = common dso_local global ptr null, align 8
@wbp_weight = common dso_local global ptr null, align 8
@luma_log_weight_denom = common dso_local global i32 0, align 4
@chroma_log_weight_denom = common dso_local global i32 0, align 4
@wp_luma_round = common dso_local global i32 0, align 4
@wp_chroma_round = common dso_local global i32 0, align 4
@imgY_org_top = common dso_local global ptr null, align 8
@imgY_org_bot = common dso_local global ptr null, align 8
@imgUV_org_top = common dso_local global ptr null, align 8
@imgUV_org_bot = common dso_local global ptr null, align 8
@imgY_org_frm = common dso_local global ptr null, align 8
@imgUV_org_frm = common dso_local global ptr null, align 8
@imgY_com = common dso_local global ptr null, align 8
@imgUV_com = common dso_local global ptr null, align 8
@direct_ref_idx = common dso_local global ptr null, align 8
@direct_pdir = common dso_local global ptr null, align 8
@pixel_map = common dso_local global ptr null, align 8
@refresh_map = common dso_local global ptr null, align 8
@intras = common dso_local global i32 0, align 4
@frame_ctr = common dso_local global [5 x i32] zeroinitializer, align 4
@frame_no = common dso_local global i32 0, align 4
@nextP_tr_fld = common dso_local global i32 0, align 4
@nextP_tr_frm = common dso_local global i32 0, align 4
@tot_time = common dso_local global i64 0, align 8
@errortext = common dso_local global [300 x i8] zeroinitializer, align 1
@b8_ipredmode8x8 = common dso_local global [4 x [4 x i8]] zeroinitializer, align 1
@b8_intra_pred_modes8x8 = common dso_local global [16 x i8] zeroinitializer, align 1
@gop_structure = common dso_local global ptr null, align 8
@rdopt = common dso_local global ptr null, align 8
@rddata_top_frame_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common dso_local global ptr null, align 8
@p_log = common dso_local global ptr null, align 8
@p_trace = common dso_local global ptr null, align 8
@p_in = common dso_local global i32 0, align 4
@p_dec = common dso_local global i32 0, align 4
@mb16x16_cost_frame = common dso_local global ptr null, align 8
@Bytes_After_Header = common dso_local global i32 0, align 4
@encode_one_macroblock = common dso_local global ptr null, align 8
@lrec = common dso_local global ptr null, align 8
@lrec_uv = common dso_local global ptr null, align 8
@si_frame_indicator = common dso_local global i32 0, align 4
@sp2_frame_indicator = common dso_local global i32 0, align 4
@number_sp2_frames = common dso_local global i32 0, align 4
@giRDOpt_B8OnlyFlag = common dso_local global i32 0, align 4
@imgY_tmp = common dso_local global ptr null, align 8
@imgUV_tmp = common dso_local global [2 x ptr] zeroinitializer, align 8
@frameNuminGOP = common dso_local global i32 0, align 4
@redundant_coding = common dso_local global i32 0, align 4
@key_frame = common dso_local global i32 0, align 4
@redundant_ref_idx = common dso_local global i32 0, align 4
@img_pad_size_uv_x = common dso_local global i32 0, align 4
@img_pad_size_uv_y = common dso_local global i32 0, align 4
@chroma_mask_mv_y = common dso_local global i8 0, align 1
@chroma_mask_mv_x = common dso_local global i8 0, align 1
@chroma_shift_y = common dso_local global i32 0, align 4
@chroma_shift_x = common dso_local global i32 0, align 4
@shift_cr_x = common dso_local global i32 0, align 4
@shift_cr_y = common dso_local global i32 0, align 4
@img_padded_size_x = common dso_local global i32 0, align 4
@img_cr_padded_size_x = common dso_local global i32 0, align 4
@start_me_refinement_hp = common dso_local global i32 0, align 4
@start_me_refinement_qp = common dso_local global i32 0, align 4
@get_mb_block_pos = common dso_local global ptr null, align 8
@cofAC8x8_chroma = common dso_local global [2 x [4 x [2 x [18 x i32]]]] zeroinitializer, align 4

; Function Attrs: nounwind
define dso_local signext i32 @Mode_Decision_for_new_Intra8x8Macroblock(double noundef %0, ptr noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  store i32 0, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  %8 = load double, ptr %3, align 8, !tbaa !3
  %9 = call double @llvm.fmuladd.f64(double 6.000000e+00, double %8, double 4.999000e-01)
  %10 = call double @llvm.floor.f64(double %9)
  %11 = fptosi double %10 to i32
  %12 = load ptr, ptr %4, align 8, !tbaa !7
  store i32 %11, ptr %12, align 4, !tbaa !10
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %13

13:                                               ; preds = %31, %2
  %14 = load i32, ptr %6, align 4, !tbaa !10
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i32, ptr %6, align 4, !tbaa !10
  %18 = load double, ptr %3, align 8, !tbaa !3
  %19 = call signext i32 @Mode_Decision_for_new_8x8IntraBlocks(i32 noundef signext %17, double noundef %18, ptr noundef %7)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, ptr %6, align 4, !tbaa !10
  %23 = shl i32 1, %22
  %24 = load i32, ptr %5, align 4, !tbaa !10
  %25 = or i32 %24, %23
  store i32 %25, ptr %5, align 4, !tbaa !10
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, ptr %7, align 4, !tbaa !10
  %28 = load ptr, ptr %4, align 8, !tbaa !7
  %29 = load i32, ptr %28, align 4, !tbaa !10
  %30 = add nsw i32 %29, %27
  store i32 %30, ptr %28, align 4, !tbaa !10
  br label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %6, align 4, !tbaa !10
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %6, align 4, !tbaa !10
  br label %13, !llvm.loop !12

34:                                               ; preds = %13
  %35 = load i32, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  ret i32 %35
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nounwind
define dso_local signext i32 @Mode_Decision_for_new_8x8IntraBlocks(i32 noundef signext %0, double noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [8 x [8 x i16]], align 2
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca ptr, align 8
  %29 = alloca [2 x [16 x [16 x i32]]], align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8, align 1
  %34 = alloca i8, align 1
  %35 = alloca i32, align 4
  %36 = alloca %struct.pix_pos, align 4
  %37 = alloca %struct.pix_pos, align 4
  %38 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4, !tbaa !10
  store double %1, ptr %5, align 8, !tbaa !3
  store ptr %2, ptr %6, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  store i32 0, ptr %8, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7
  store i32 0, ptr %16, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 128, ptr %17) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #7
  store double 0.000000e+00, ptr %18, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7
  %39 = load i32, ptr %4, align 4, !tbaa !10
  %40 = and i32 %39, 1
  %41 = mul nsw i32 8, %40
  store i32 %41, ptr %19, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #7
  %42 = load i32, ptr %4, align 4, !tbaa !10
  %43 = ashr i32 %42, 1
  %44 = mul nsw i32 8, %43
  store i32 %44, ptr %20, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #7
  %45 = load ptr, ptr @img, align 8, !tbaa !14
  %46 = getelementptr inbounds nuw %struct.ImageParameters, ptr %45, i32 0, i32 39
  %47 = load i32, ptr %46, align 8, !tbaa !15
  %48 = load i32, ptr %19, align 4, !tbaa !10
  %49 = add nsw i32 %47, %48
  store i32 %49, ptr %21, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #7
  %50 = load ptr, ptr @img, align 8, !tbaa !14
  %51 = getelementptr inbounds nuw %struct.ImageParameters, ptr %50, i32 0, i32 40
  %52 = load i32, ptr %51, align 4, !tbaa !32
  %53 = load i32, ptr %20, align 4, !tbaa !10
  %54 = add nsw i32 %52, %53
  store i32 %54, ptr %22, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #7
  %55 = load ptr, ptr @img, align 8, !tbaa !14
  %56 = getelementptr inbounds nuw %struct.ImageParameters, ptr %55, i32 0, i32 43
  %57 = load i32, ptr %56, align 8, !tbaa !33
  %58 = load i32, ptr %19, align 4, !tbaa !10
  %59 = add nsw i32 %57, %58
  store i32 %59, ptr %23, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #7
  %60 = load ptr, ptr @img, align 8, !tbaa !14
  %61 = getelementptr inbounds nuw %struct.ImageParameters, ptr %60, i32 0, i32 44
  %62 = load i32, ptr %61, align 4, !tbaa !34
  %63 = load i32, ptr %20, align 4, !tbaa !10
  %64 = add nsw i32 %62, %63
  store i32 %64, ptr %24, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #7
  %65 = load i32, ptr %21, align 4, !tbaa !10
  %66 = sdiv i32 %65, 4
  store i32 %66, ptr %25, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #7
  %67 = load i32, ptr %22, align 4, !tbaa !10
  %68 = sdiv i32 %67, 4
  store i32 %68, ptr %26, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %27) #7
  store double 1.000000e+30, ptr %27, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %28) #7
  %69 = load ptr, ptr @imgY_org, align 8, !tbaa !35
  store ptr %69, ptr %28, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 2048, ptr %29) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %30) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %31) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %32) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr %33) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr %34) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %35) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %36) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %37) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %38) #7
  %70 = load ptr, ptr @img, align 8, !tbaa !14
  %71 = getelementptr inbounds nuw %struct.ImageParameters, ptr %70, i32 0, i32 61
  %72 = load ptr, ptr %71, align 8, !tbaa !37
  %73 = load ptr, ptr @img, align 8, !tbaa !14
  %74 = getelementptr inbounds nuw %struct.ImageParameters, ptr %73, i32 0, i32 3
  %75 = load i32, ptr %74, align 4, !tbaa !38
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.macroblock, ptr %72, i64 %76
  store ptr %77, ptr %38, align 8, !tbaa !39
  %78 = load ptr, ptr @img, align 8, !tbaa !14
  %79 = getelementptr inbounds nuw %struct.ImageParameters, ptr %78, i32 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !38
  %81 = load i32, ptr %19, align 4, !tbaa !10
  %82 = sub nsw i32 %81, 1
  %83 = load i32, ptr %20, align 4, !tbaa !10
  call void @getLuma4x4Neighbour(i32 noundef signext %80, i32 noundef signext %82, i32 noundef signext %83, ptr noundef %36)
  %84 = load ptr, ptr @img, align 8, !tbaa !14
  %85 = getelementptr inbounds nuw %struct.ImageParameters, ptr %84, i32 0, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !38
  %87 = load i32, ptr %19, align 4, !tbaa !10
  %88 = load i32, ptr %20, align 4, !tbaa !10
  %89 = sub nsw i32 %88, 1
  call void @getLuma4x4Neighbour(i32 noundef signext %86, i32 noundef signext %87, i32 noundef signext %89, ptr noundef %37)
  %90 = load ptr, ptr @input, align 8, !tbaa !14
  %91 = getelementptr inbounds nuw %struct.InputParameters, ptr %90, i32 0, i32 23
  %92 = load i32, ptr %91, align 8, !tbaa !40
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %127

94:                                               ; preds = %3
  %95 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 0
  %96 = load i32, ptr %95, align 4, !tbaa !43
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load ptr, ptr @img, align 8, !tbaa !14
  %100 = getelementptr inbounds nuw %struct.ImageParameters, ptr %99, i32 0, i32 63
  %101 = load ptr, ptr %100, align 8, !tbaa !45
  %102 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !46
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, ptr %101, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !10
  br label %108

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107, %98
  %109 = phi i32 [ %106, %98 ], [ 0, %107 ]
  %110 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 0
  store i32 %109, ptr %110, align 4, !tbaa !43
  %111 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 0
  %112 = load i32, ptr %111, align 4, !tbaa !43
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = load ptr, ptr @img, align 8, !tbaa !14
  %116 = getelementptr inbounds nuw %struct.ImageParameters, ptr %115, i32 0, i32 63
  %117 = load ptr, ptr %116, align 8, !tbaa !45
  %118 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !46
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %117, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !10
  br label %124

123:                                              ; preds = %108
  br label %124

124:                                              ; preds = %123, %114
  %125 = phi i32 [ %122, %114 ], [ 0, %123 ]
  %126 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 0
  store i32 %125, ptr %126, align 4, !tbaa !43
  br label %127

127:                                              ; preds = %124, %3
  %128 = load i32, ptr %4, align 4, !tbaa !10
  %129 = ashr i32 %128, 1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %154

131:                                              ; preds = %127
  %132 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 0
  %133 = load i32, ptr %132, align 4, !tbaa !43
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %131
  %136 = load ptr, ptr @img, align 8, !tbaa !14
  %137 = getelementptr inbounds nuw %struct.ImageParameters, ptr %136, i32 0, i32 32
  %138 = load ptr, ptr %137, align 8, !tbaa !47
  %139 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 5
  %140 = load i32, ptr %139, align 4, !tbaa !48
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds ptr, ptr %138, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !49
  %144 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 4
  %145 = load i32, ptr %144, align 4, !tbaa !50
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, ptr %143, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !51
  %149 = sext i8 %148 to i32
  br label %151

150:                                              ; preds = %131
  br label %151

151:                                              ; preds = %150, %135
  %152 = phi i32 [ %149, %135 ], [ -1, %150 ]
  %153 = trunc i32 %152 to i8
  store i8 %153, ptr %33, align 1, !tbaa !51
  br label %177

154:                                              ; preds = %127
  %155 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 0
  %156 = load i32, ptr %155, align 4, !tbaa !43
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %154
  %159 = load ptr, ptr @img, align 8, !tbaa !14
  %160 = getelementptr inbounds nuw %struct.ImageParameters, ptr %159, i32 0, i32 31
  %161 = load ptr, ptr %160, align 8, !tbaa !52
  %162 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 5
  %163 = load i32, ptr %162, align 4, !tbaa !48
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds ptr, ptr %161, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !49
  %167 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 4
  %168 = load i32, ptr %167, align 4, !tbaa !50
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, ptr %166, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !51
  %172 = sext i8 %171 to i32
  br label %174

173:                                              ; preds = %154
  br label %174

174:                                              ; preds = %173, %158
  %175 = phi i32 [ %172, %158 ], [ -1, %173 ]
  %176 = trunc i32 %175 to i8
  store i8 %176, ptr %33, align 1, !tbaa !51
  br label %177

177:                                              ; preds = %174, %151
  %178 = load i32, ptr %4, align 4, !tbaa !10
  %179 = and i32 %178, 1
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %204

181:                                              ; preds = %177
  %182 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 0
  %183 = load i32, ptr %182, align 4, !tbaa !43
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %181
  %186 = load ptr, ptr @img, align 8, !tbaa !14
  %187 = getelementptr inbounds nuw %struct.ImageParameters, ptr %186, i32 0, i32 32
  %188 = load ptr, ptr %187, align 8, !tbaa !47
  %189 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 5
  %190 = load i32, ptr %189, align 4, !tbaa !48
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds ptr, ptr %188, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !49
  %194 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 4
  %195 = load i32, ptr %194, align 4, !tbaa !50
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %193, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !51
  %199 = sext i8 %198 to i32
  br label %201

200:                                              ; preds = %181
  br label %201

201:                                              ; preds = %200, %185
  %202 = phi i32 [ %199, %185 ], [ -1, %200 ]
  %203 = trunc i32 %202 to i8
  store i8 %203, ptr %34, align 1, !tbaa !51
  br label %227

204:                                              ; preds = %177
  %205 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 0
  %206 = load i32, ptr %205, align 4, !tbaa !43
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %223

208:                                              ; preds = %204
  %209 = load ptr, ptr @img, align 8, !tbaa !14
  %210 = getelementptr inbounds nuw %struct.ImageParameters, ptr %209, i32 0, i32 31
  %211 = load ptr, ptr %210, align 8, !tbaa !52
  %212 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 5
  %213 = load i32, ptr %212, align 4, !tbaa !48
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds ptr, ptr %211, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !49
  %217 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 4
  %218 = load i32, ptr %217, align 4, !tbaa !50
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, ptr %216, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !51
  %222 = sext i8 %221 to i32
  br label %224

223:                                              ; preds = %204
  br label %224

224:                                              ; preds = %223, %208
  %225 = phi i32 [ %222, %208 ], [ -1, %223 ]
  %226 = trunc i32 %225 to i8
  store i8 %226, ptr %34, align 1, !tbaa !51
  br label %227

227:                                              ; preds = %224, %201
  %228 = load i8, ptr %33, align 1, !tbaa !51
  %229 = sext i8 %228 to i32
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %235, label %231

231:                                              ; preds = %227
  %232 = load i8, ptr %34, align 1, !tbaa !51
  %233 = sext i8 %232 to i32
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %231, %227
  br label %250

236:                                              ; preds = %231
  %237 = load i8, ptr %33, align 1, !tbaa !51
  %238 = sext i8 %237 to i32
  %239 = load i8, ptr %34, align 1, !tbaa !51
  %240 = sext i8 %239 to i32
  %241 = icmp slt i32 %238, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %236
  %243 = load i8, ptr %33, align 1, !tbaa !51
  %244 = sext i8 %243 to i32
  br label %248

245:                                              ; preds = %236
  %246 = load i8, ptr %34, align 1, !tbaa !51
  %247 = sext i8 %246 to i32
  br label %248

248:                                              ; preds = %245, %242
  %249 = phi i32 [ %244, %242 ], [ %247, %245 ]
  br label %250

250:                                              ; preds = %248, %235
  %251 = phi i32 [ 2, %235 ], [ %249, %248 ]
  store i32 %251, ptr %35, align 4, !tbaa !10
  %252 = load ptr, ptr %6, align 8, !tbaa !7
  store i32 2147483647, ptr %252, align 4, !tbaa !10
  %253 = load i32, ptr %21, align 4, !tbaa !10
  %254 = load i32, ptr %22, align 4, !tbaa !10
  call void @intrapred_luma8x8(i32 noundef signext %253, i32 noundef signext %254, ptr noundef %30, ptr noundef %31, ptr noundef %32)
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %255

255:                                              ; preds = %554, %250
  %256 = load i32, ptr %7, align 4, !tbaa !10
  %257 = icmp slt i32 %256, 9
  br i1 %257, label %258, label %557

258:                                              ; preds = %255
  %259 = load i32, ptr %7, align 4, !tbaa !10
  %260 = icmp eq i32 %259, 2
  br i1 %260, label %285, label %261

261:                                              ; preds = %258
  %262 = load i32, ptr %7, align 4, !tbaa !10
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %270, label %264

264:                                              ; preds = %261
  %265 = load i32, ptr %7, align 4, !tbaa !10
  %266 = icmp eq i32 %265, 7
  br i1 %266, label %270, label %267

267:                                              ; preds = %264
  %268 = load i32, ptr %7, align 4, !tbaa !10
  %269 = icmp eq i32 %268, 3
  br i1 %269, label %270, label %273

270:                                              ; preds = %267, %264, %261
  %271 = load i32, ptr %31, align 4, !tbaa !10
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %285, label %273

273:                                              ; preds = %270, %267
  %274 = load i32, ptr %7, align 4, !tbaa !10
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %279, label %276

276:                                              ; preds = %273
  %277 = load i32, ptr %7, align 4, !tbaa !10
  %278 = icmp eq i32 %277, 8
  br i1 %278, label %279, label %282

279:                                              ; preds = %276, %273
  %280 = load i32, ptr %30, align 4, !tbaa !10
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %279, %276
  %283 = load i32, ptr %32, align 4, !tbaa !10
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %553

285:                                              ; preds = %282, %279, %270, %258
  %286 = load ptr, ptr @input, align 8, !tbaa !14
  %287 = getelementptr inbounds nuw %struct.InputParameters, ptr %286, i32 0, i32 113
  %288 = load i32, ptr %287, align 8, !tbaa !53
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %363, label %290

290:                                              ; preds = %285
  store i32 0, ptr %10, align 4, !tbaa !10
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %291

291:                                              ; preds = %336, %290
  %292 = load i32, ptr %10, align 4, !tbaa !10
  %293 = icmp slt i32 %292, 8
  br i1 %293, label %294, label %339

294:                                              ; preds = %291
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %295

295:                                              ; preds = %330, %294
  %296 = load i32, ptr %9, align 4, !tbaa !10
  %297 = icmp slt i32 %296, 8
  br i1 %297, label %298, label %335

298:                                              ; preds = %295
  %299 = load ptr, ptr %28, align 8, !tbaa !35
  %300 = load i32, ptr %24, align 4, !tbaa !10
  %301 = load i32, ptr %10, align 4, !tbaa !10
  %302 = add nsw i32 %300, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds ptr, ptr %299, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !54
  %306 = load i32, ptr %23, align 4, !tbaa !10
  %307 = load i32, ptr %9, align 4, !tbaa !10
  %308 = add nsw i32 %306, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i16, ptr %305, i64 %309
  %311 = load i16, ptr %310, align 2, !tbaa !56
  %312 = zext i16 %311 to i32
  %313 = load ptr, ptr @img, align 8, !tbaa !14
  %314 = getelementptr inbounds nuw %struct.ImageParameters, ptr %313, i32 0, i32 49
  %315 = load i32, ptr %7, align 4, !tbaa !10
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %314, i64 0, i64 %316
  %318 = load i32, ptr %10, align 4, !tbaa !10
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [8 x [8 x i16]], ptr %317, i64 0, i64 %319
  %321 = load i32, ptr %9, align 4, !tbaa !10
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [8 x i16], ptr %320, i64 0, i64 %322
  %324 = load i16, ptr %323, align 2, !tbaa !56
  %325 = zext i16 %324 to i32
  %326 = sub nsw i32 %312, %325
  %327 = load i32, ptr %11, align 4, !tbaa !10
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [64 x i32], ptr @diff64, i64 0, i64 %328
  store i32 %326, ptr %329, align 4, !tbaa !10
  br label %330

330:                                              ; preds = %298
  %331 = load i32, ptr %9, align 4, !tbaa !10
  %332 = add nsw i32 %331, 1
  store i32 %332, ptr %9, align 4, !tbaa !10
  %333 = load i32, ptr %11, align 4, !tbaa !10
  %334 = add nsw i32 %333, 1
  store i32 %334, ptr %11, align 4, !tbaa !10
  br label %295, !llvm.loop !57

335:                                              ; preds = %295
  br label %336

336:                                              ; preds = %335
  %337 = load i32, ptr %10, align 4, !tbaa !10
  %338 = add nsw i32 %337, 1
  store i32 %338, ptr %10, align 4, !tbaa !10
  br label %291, !llvm.loop !58

339:                                              ; preds = %291
  %340 = load i32, ptr %7, align 4, !tbaa !10
  %341 = load i32, ptr %35, align 4, !tbaa !10
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %344

343:                                              ; preds = %339
  br label %349

344:                                              ; preds = %339
  %345 = load double, ptr %5, align 8, !tbaa !3
  %346 = fmul double 4.000000e+00, %345
  %347 = call double @llvm.floor.f64(double %346)
  %348 = fptosi double %347 to i32
  br label %349

349:                                              ; preds = %344, %343
  %350 = phi i32 [ 0, %343 ], [ %348, %344 ]
  store i32 %350, ptr %13, align 4, !tbaa !10
  %351 = call signext i32 @distortion8x8(ptr noundef @diff64)
  %352 = load i32, ptr %13, align 4, !tbaa !10
  %353 = add nsw i32 %352, %351
  store i32 %353, ptr %13, align 4, !tbaa !10
  %354 = load i32, ptr %13, align 4, !tbaa !10
  %355 = load ptr, ptr %6, align 8, !tbaa !7
  %356 = load i32, ptr %355, align 4, !tbaa !10
  %357 = icmp slt i32 %354, %356
  br i1 %357, label %358, label %362

358:                                              ; preds = %349
  %359 = load i32, ptr %7, align 4, !tbaa !10
  store i32 %359, ptr %8, align 4, !tbaa !10
  %360 = load i32, ptr %13, align 4, !tbaa !10
  %361 = load ptr, ptr %6, align 8, !tbaa !7
  store i32 %360, ptr %361, align 4, !tbaa !10
  br label %362

362:                                              ; preds = %358, %349
  br label %552

363:                                              ; preds = %285
  store i32 0, ptr %10, align 4, !tbaa !10
  br label %364

364:                                              ; preds = %431, %363
  %365 = load i32, ptr %10, align 4, !tbaa !10
  %366 = icmp slt i32 %365, 8
  br i1 %366, label %367, label %434

367:                                              ; preds = %364
  %368 = load ptr, ptr @img, align 8, !tbaa !14
  %369 = getelementptr inbounds nuw %struct.ImageParameters, ptr %368, i32 0, i32 51
  %370 = load i32, ptr %20, align 4, !tbaa !10
  %371 = load i32, ptr %10, align 4, !tbaa !10
  %372 = add nsw i32 %370, %371
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [16 x [16 x i16]], ptr %369, i64 0, i64 %373
  %375 = load i32, ptr %19, align 4, !tbaa !10
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [16 x i16], ptr %374, i64 0, i64 %376
  %378 = load ptr, ptr @img, align 8, !tbaa !14
  %379 = getelementptr inbounds nuw %struct.ImageParameters, ptr %378, i32 0, i32 49
  %380 = load i32, ptr %7, align 4, !tbaa !10
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %379, i64 0, i64 %381
  %383 = load i32, ptr %10, align 4, !tbaa !10
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [8 x [8 x i16]], ptr %382, i64 0, i64 %384
  %386 = getelementptr inbounds [8 x i16], ptr %385, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %377, ptr align 8 %386, i64 16, i1 false)
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %387

387:                                              ; preds = %427, %367
  %388 = load i32, ptr %9, align 4, !tbaa !10
  %389 = icmp slt i32 %388, 8
  br i1 %389, label %390, label %430

390:                                              ; preds = %387
  %391 = load ptr, ptr %28, align 8, !tbaa !35
  %392 = load i32, ptr %24, align 4, !tbaa !10
  %393 = load i32, ptr %10, align 4, !tbaa !10
  %394 = add nsw i32 %392, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds ptr, ptr %391, i64 %395
  %397 = load ptr, ptr %396, align 8, !tbaa !54
  %398 = load i32, ptr %23, align 4, !tbaa !10
  %399 = load i32, ptr %9, align 4, !tbaa !10
  %400 = add nsw i32 %398, %399
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i16, ptr %397, i64 %401
  %403 = load i16, ptr %402, align 2, !tbaa !56
  %404 = zext i16 %403 to i32
  %405 = load ptr, ptr @img, align 8, !tbaa !14
  %406 = getelementptr inbounds nuw %struct.ImageParameters, ptr %405, i32 0, i32 49
  %407 = load i32, ptr %7, align 4, !tbaa !10
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %406, i64 0, i64 %408
  %410 = load i32, ptr %10, align 4, !tbaa !10
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [8 x [8 x i16]], ptr %409, i64 0, i64 %411
  %413 = load i32, ptr %9, align 4, !tbaa !10
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [8 x i16], ptr %412, i64 0, i64 %414
  %416 = load i16, ptr %415, align 2, !tbaa !56
  %417 = zext i16 %416 to i32
  %418 = sub nsw i32 %404, %417
  %419 = load ptr, ptr @img, align 8, !tbaa !14
  %420 = getelementptr inbounds nuw %struct.ImageParameters, ptr %419, i32 0, i32 52
  %421 = load i32, ptr %10, align 4, !tbaa !10
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [16 x [16 x i32]], ptr %420, i64 0, i64 %422
  %424 = load i32, ptr %9, align 4, !tbaa !10
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [16 x i32], ptr %423, i64 0, i64 %425
  store i32 %418, ptr %426, align 4, !tbaa !10
  br label %427

427:                                              ; preds = %390
  %428 = load i32, ptr %9, align 4, !tbaa !10
  %429 = add nsw i32 %428, 1
  store i32 %429, ptr %9, align 4, !tbaa !10
  br label %387, !llvm.loop !59

430:                                              ; preds = %387
  br label %431

431:                                              ; preds = %430
  %432 = load i32, ptr %10, align 4, !tbaa !10
  %433 = add nsw i32 %432, 1
  store i32 %433, ptr %10, align 4, !tbaa !10
  br label %364, !llvm.loop !60

434:                                              ; preds = %364
  %435 = load i32, ptr %4, align 4, !tbaa !10
  %436 = load i32, ptr %7, align 4, !tbaa !10
  %437 = load double, ptr %5, align 8, !tbaa !3
  %438 = load double, ptr %27, align 8, !tbaa !3
  %439 = load i32, ptr %35, align 4, !tbaa !10
  %440 = call double @RDCost_for_8x8IntraBlocks(ptr noundef %15, i32 noundef signext %435, i32 noundef signext %436, double noundef %437, double noundef %438, i32 noundef signext %439)
  store double %440, ptr %18, align 8, !tbaa !3
  %441 = load double, ptr %27, align 8, !tbaa !3
  %442 = fcmp olt double %440, %441
  br i1 %442, label %443, label %551

443:                                              ; preds = %434
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %444

444:                                              ; preds = %484, %443
  %445 = load i32, ptr %11, align 4, !tbaa !10
  %446 = icmp slt i32 %445, 4
  br i1 %446, label %447, label %487

447:                                              ; preds = %444
  store i32 0, ptr %10, align 4, !tbaa !10
  br label %448

448:                                              ; preds = %480, %447
  %449 = load i32, ptr %10, align 4, !tbaa !10
  %450 = icmp slt i32 %449, 2
  br i1 %450, label %451, label %483

451:                                              ; preds = %448
  %452 = load ptr, ptr @cofAC8x8, align 8, !tbaa !61
  %453 = load i32, ptr %4, align 4, !tbaa !10
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds ptr, ptr %452, i64 %454
  %456 = load ptr, ptr %455, align 8, !tbaa !62
  %457 = load i32, ptr %11, align 4, !tbaa !10
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds ptr, ptr %456, i64 %458
  %460 = load ptr, ptr %459, align 8, !tbaa !63
  %461 = load i32, ptr %10, align 4, !tbaa !10
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds ptr, ptr %460, i64 %462
  %464 = load ptr, ptr %463, align 8, !tbaa !7
  %465 = load ptr, ptr @img, align 8, !tbaa !14
  %466 = getelementptr inbounds nuw %struct.ImageParameters, ptr %465, i32 0, i32 53
  %467 = load ptr, ptr %466, align 8, !tbaa !65
  %468 = load i32, ptr %4, align 4, !tbaa !10
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds ptr, ptr %467, i64 %469
  %471 = load ptr, ptr %470, align 8, !tbaa !62
  %472 = load i32, ptr %11, align 4, !tbaa !10
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds ptr, ptr %471, i64 %473
  %475 = load ptr, ptr %474, align 8, !tbaa !63
  %476 = load i32, ptr %10, align 4, !tbaa !10
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds ptr, ptr %475, i64 %477
  %479 = load ptr, ptr %478, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %464, ptr align 4 %479, i64 260, i1 false)
  br label %480

480:                                              ; preds = %451
  %481 = load i32, ptr %10, align 4, !tbaa !10
  %482 = add nsw i32 %481, 1
  store i32 %482, ptr %10, align 4, !tbaa !10
  br label %448, !llvm.loop !66

483:                                              ; preds = %448
  br label %484

484:                                              ; preds = %483
  %485 = load i32, ptr %11, align 4, !tbaa !10
  %486 = add nsw i32 %485, 1
  store i32 %486, ptr %11, align 4, !tbaa !10
  br label %444, !llvm.loop !67

487:                                              ; preds = %444
  store i32 0, ptr %12, align 4, !tbaa !10
  br label %488

488:                                              ; preds = %508, %487
  %489 = load i32, ptr %12, align 4, !tbaa !10
  %490 = icmp slt i32 %489, 8
  br i1 %490, label %491, label %511

491:                                              ; preds = %488
  %492 = load i32, ptr %12, align 4, !tbaa !10
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [8 x [8 x i16]], ptr %17, i64 0, i64 %493
  %495 = getelementptr inbounds [8 x i16], ptr %494, i64 0, i64 0
  %496 = load ptr, ptr @enc_picture, align 8, !tbaa !68
  %497 = getelementptr inbounds nuw %struct.storable_picture, ptr %496, i32 0, i32 29
  %498 = load ptr, ptr %497, align 8, !tbaa !70
  %499 = load i32, ptr %22, align 4, !tbaa !10
  %500 = load i32, ptr %12, align 4, !tbaa !10
  %501 = add nsw i32 %499, %500
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds ptr, ptr %498, i64 %502
  %504 = load ptr, ptr %503, align 8, !tbaa !54
  %505 = load i32, ptr %21, align 4, !tbaa !10
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i16, ptr %504, i64 %506
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %495, ptr align 2 %507, i64 16, i1 false)
  br label %508

508:                                              ; preds = %491
  %509 = load i32, ptr %12, align 4, !tbaa !10
  %510 = add nsw i32 %509, 1
  store i32 %510, ptr %12, align 4, !tbaa !10
  br label %488, !llvm.loop !77

511:                                              ; preds = %488
  %512 = load ptr, ptr @img, align 8, !tbaa !14
  %513 = getelementptr inbounds nuw %struct.ImageParameters, ptr %512, i32 0, i32 98
  %514 = load i32, ptr %513, align 4, !tbaa !78
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %547

516:                                              ; preds = %511
  %517 = load i32, ptr %20, align 4, !tbaa !10
  store i32 %517, ptr %10, align 4, !tbaa !10
  br label %518

518:                                              ; preds = %543, %516
  %519 = load i32, ptr %10, align 4, !tbaa !10
  %520 = load i32, ptr %20, align 4, !tbaa !10
  %521 = add nsw i32 %520, 8
  %522 = icmp slt i32 %519, %521
  br i1 %522, label %523, label %546

523:                                              ; preds = %518
  %524 = getelementptr inbounds [2 x [16 x [16 x i32]]], ptr %29, i64 0, i64 1
  %525 = load i32, ptr %10, align 4, !tbaa !10
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds [16 x [16 x i32]], ptr %524, i64 0, i64 %526
  %528 = load i32, ptr %19, align 4, !tbaa !10
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [16 x i32], ptr %527, i64 0, i64 %529
  %531 = load ptr, ptr @img, align 8, !tbaa !14
  %532 = getelementptr inbounds nuw %struct.ImageParameters, ptr %531, i32 0, i32 56
  %533 = load ptr, ptr %532, align 8, !tbaa !79
  %534 = getelementptr inbounds ptr, ptr %533, i64 1
  %535 = load ptr, ptr %534, align 8, !tbaa !63
  %536 = load i32, ptr %10, align 4, !tbaa !10
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds ptr, ptr %535, i64 %537
  %539 = load ptr, ptr %538, align 8, !tbaa !7
  %540 = load i32, ptr %19, align 4, !tbaa !10
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32, ptr %539, i64 %541
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %530, ptr align 4 %542, i64 32, i1 false)
  br label %543

543:                                              ; preds = %523
  %544 = load i32, ptr %10, align 4, !tbaa !10
  %545 = add nsw i32 %544, 1
  store i32 %545, ptr %10, align 4, !tbaa !10
  br label %518, !llvm.loop !80

546:                                              ; preds = %518
  br label %547

547:                                              ; preds = %546, %511
  %548 = load i32, ptr %15, align 4, !tbaa !10
  store i32 %548, ptr %16, align 4, !tbaa !10
  %549 = load double, ptr %18, align 8, !tbaa !3
  store double %549, ptr %27, align 8, !tbaa !3
  %550 = load i32, ptr %7, align 4, !tbaa !10
  store i32 %550, ptr %8, align 4, !tbaa !10
  br label %551

551:                                              ; preds = %547, %434
  call void @reset_coding_state_cs_cm()
  br label %552

552:                                              ; preds = %551, %362
  br label %553

553:                                              ; preds = %552, %282
  br label %554

554:                                              ; preds = %553
  %555 = load i32, ptr %7, align 4, !tbaa !10
  %556 = add nsw i32 %555, 1
  store i32 %556, ptr %7, align 4, !tbaa !10
  br label %255, !llvm.loop !81

557:                                              ; preds = %255
  %558 = load i32, ptr %8, align 4, !tbaa !10
  %559 = trunc i32 %558 to i8
  %560 = load ptr, ptr @img, align 8, !tbaa !14
  %561 = getelementptr inbounds nuw %struct.ImageParameters, ptr %560, i32 0, i32 32
  %562 = load ptr, ptr %561, align 8, !tbaa !47
  %563 = load i32, ptr %26, align 4, !tbaa !10
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds ptr, ptr %562, i64 %564
  %566 = load ptr, ptr %565, align 8, !tbaa !49
  %567 = load i32, ptr %25, align 4, !tbaa !10
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i8, ptr %566, i64 %568
  store i8 %559, ptr %569, align 1, !tbaa !51
  %570 = load i32, ptr %35, align 4, !tbaa !10
  %571 = load i32, ptr %8, align 4, !tbaa !10
  %572 = icmp eq i32 %570, %571
  br i1 %572, label %573, label %574

573:                                              ; preds = %557
  br label %585

574:                                              ; preds = %557
  %575 = load i32, ptr %8, align 4, !tbaa !10
  %576 = load i32, ptr %35, align 4, !tbaa !10
  %577 = icmp slt i32 %575, %576
  br i1 %577, label %578, label %580

578:                                              ; preds = %574
  %579 = load i32, ptr %8, align 4, !tbaa !10
  br label %583

580:                                              ; preds = %574
  %581 = load i32, ptr %8, align 4, !tbaa !10
  %582 = sub nsw i32 %581, 1
  br label %583

583:                                              ; preds = %580, %578
  %584 = phi i32 [ %579, %578 ], [ %582, %580 ]
  br label %585

585:                                              ; preds = %583, %573
  %586 = phi i32 [ -1, %573 ], [ %584, %583 ]
  %587 = trunc i32 %586 to i8
  %588 = load ptr, ptr %38, align 8, !tbaa !39
  %589 = getelementptr inbounds nuw %struct.macroblock, ptr %588, i32 0, i32 11
  %590 = load i32, ptr %4, align 4, !tbaa !10
  %591 = mul nsw i32 4, %590
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [16 x i8], ptr %589, i64 0, i64 %592
  store i8 %587, ptr %593, align 1, !tbaa !51
  %594 = load ptr, ptr @img, align 8, !tbaa !14
  %595 = getelementptr inbounds nuw %struct.ImageParameters, ptr %594, i32 0, i32 36
  %596 = load i32, ptr %595, align 4, !tbaa !82
  %597 = mul nsw i32 %596, 4
  %598 = load i32, ptr %4, align 4, !tbaa !10
  %599 = ashr i32 %598, 1
  %600 = mul nsw i32 %599, 2
  %601 = add nsw i32 %597, %600
  store i32 %601, ptr %10, align 4, !tbaa !10
  br label %602

602:                                              ; preds = %634, %585
  %603 = load i32, ptr %10, align 4, !tbaa !10
  %604 = load ptr, ptr @img, align 8, !tbaa !14
  %605 = getelementptr inbounds nuw %struct.ImageParameters, ptr %604, i32 0, i32 36
  %606 = load i32, ptr %605, align 4, !tbaa !82
  %607 = mul nsw i32 %606, 4
  %608 = load i32, ptr %4, align 4, !tbaa !10
  %609 = ashr i32 %608, 1
  %610 = mul nsw i32 %609, 2
  %611 = add nsw i32 %607, %610
  %612 = add nsw i32 %611, 2
  %613 = icmp slt i32 %603, %612
  br i1 %613, label %614, label %637

614:                                              ; preds = %602
  %615 = load ptr, ptr @img, align 8, !tbaa !14
  %616 = getelementptr inbounds nuw %struct.ImageParameters, ptr %615, i32 0, i32 32
  %617 = load ptr, ptr %616, align 8, !tbaa !47
  %618 = load i32, ptr %10, align 4, !tbaa !10
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds ptr, ptr %617, i64 %619
  %621 = load ptr, ptr %620, align 8, !tbaa !49
  %622 = load ptr, ptr @img, align 8, !tbaa !14
  %623 = getelementptr inbounds nuw %struct.ImageParameters, ptr %622, i32 0, i32 35
  %624 = load i32, ptr %623, align 8, !tbaa !83
  %625 = mul nsw i32 %624, 4
  %626 = load i32, ptr %4, align 4, !tbaa !10
  %627 = and i32 %626, 1
  %628 = mul nsw i32 %627, 2
  %629 = add nsw i32 %625, %628
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i8, ptr %621, i64 %630
  %632 = load i32, ptr %8, align 4, !tbaa !10
  %633 = trunc i32 %632 to i8
  call void @llvm.memset.p0.i64(ptr align 1 %631, i8 %633, i64 2, i1 false)
  br label %634

634:                                              ; preds = %614
  %635 = load i32, ptr %10, align 4, !tbaa !10
  %636 = add nsw i32 %635, 1
  store i32 %636, ptr %10, align 4, !tbaa !10
  br label %602, !llvm.loop !84

637:                                              ; preds = %602
  %638 = load ptr, ptr @input, align 8, !tbaa !14
  %639 = getelementptr inbounds nuw %struct.InputParameters, ptr %638, i32 0, i32 113
  %640 = load i32, ptr %639, align 8, !tbaa !53
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %716, label %642

642:                                              ; preds = %637
  store i32 0, ptr %10, align 4, !tbaa !10
  br label %643

643:                                              ; preds = %710, %642
  %644 = load i32, ptr %10, align 4, !tbaa !10
  %645 = icmp slt i32 %644, 8
  br i1 %645, label %646, label %713

646:                                              ; preds = %643
  %647 = load ptr, ptr @img, align 8, !tbaa !14
  %648 = getelementptr inbounds nuw %struct.ImageParameters, ptr %647, i32 0, i32 51
  %649 = load i32, ptr %20, align 4, !tbaa !10
  %650 = load i32, ptr %10, align 4, !tbaa !10
  %651 = add nsw i32 %649, %650
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds [16 x [16 x i16]], ptr %648, i64 0, i64 %652
  %654 = load i32, ptr %19, align 4, !tbaa !10
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds [16 x i16], ptr %653, i64 0, i64 %655
  %657 = load ptr, ptr @img, align 8, !tbaa !14
  %658 = getelementptr inbounds nuw %struct.ImageParameters, ptr %657, i32 0, i32 49
  %659 = load i32, ptr %8, align 4, !tbaa !10
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %658, i64 0, i64 %660
  %662 = load i32, ptr %10, align 4, !tbaa !10
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds [8 x [8 x i16]], ptr %661, i64 0, i64 %663
  %665 = getelementptr inbounds [8 x i16], ptr %664, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %656, ptr align 8 %665, i64 16, i1 false)
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %666

666:                                              ; preds = %706, %646
  %667 = load i32, ptr %9, align 4, !tbaa !10
  %668 = icmp slt i32 %667, 8
  br i1 %668, label %669, label %709

669:                                              ; preds = %666
  %670 = load ptr, ptr %28, align 8, !tbaa !35
  %671 = load i32, ptr %24, align 4, !tbaa !10
  %672 = load i32, ptr %10, align 4, !tbaa !10
  %673 = add nsw i32 %671, %672
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds ptr, ptr %670, i64 %674
  %676 = load ptr, ptr %675, align 8, !tbaa !54
  %677 = load i32, ptr %23, align 4, !tbaa !10
  %678 = load i32, ptr %9, align 4, !tbaa !10
  %679 = add nsw i32 %677, %678
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i16, ptr %676, i64 %680
  %682 = load i16, ptr %681, align 2, !tbaa !56
  %683 = zext i16 %682 to i32
  %684 = load ptr, ptr @img, align 8, !tbaa !14
  %685 = getelementptr inbounds nuw %struct.ImageParameters, ptr %684, i32 0, i32 49
  %686 = load i32, ptr %8, align 4, !tbaa !10
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %685, i64 0, i64 %687
  %689 = load i32, ptr %10, align 4, !tbaa !10
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds [8 x [8 x i16]], ptr %688, i64 0, i64 %690
  %692 = load i32, ptr %9, align 4, !tbaa !10
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds [8 x i16], ptr %691, i64 0, i64 %693
  %695 = load i16, ptr %694, align 2, !tbaa !56
  %696 = zext i16 %695 to i32
  %697 = sub nsw i32 %683, %696
  %698 = load ptr, ptr @img, align 8, !tbaa !14
  %699 = getelementptr inbounds nuw %struct.ImageParameters, ptr %698, i32 0, i32 52
  %700 = load i32, ptr %10, align 4, !tbaa !10
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds [16 x [16 x i32]], ptr %699, i64 0, i64 %701
  %703 = load i32, ptr %9, align 4, !tbaa !10
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds [16 x i32], ptr %702, i64 0, i64 %704
  store i32 %697, ptr %705, align 4, !tbaa !10
  br label %706

706:                                              ; preds = %669
  %707 = load i32, ptr %9, align 4, !tbaa !10
  %708 = add nsw i32 %707, 1
  store i32 %708, ptr %9, align 4, !tbaa !10
  br label %666, !llvm.loop !85

709:                                              ; preds = %666
  br label %710

710:                                              ; preds = %709
  %711 = load i32, ptr %10, align 4, !tbaa !10
  %712 = add nsw i32 %711, 1
  store i32 %712, ptr %10, align 4, !tbaa !10
  br label %643, !llvm.loop !86

713:                                              ; preds = %643
  %714 = load i32, ptr %4, align 4, !tbaa !10
  %715 = call signext i32 @dct_luma8x8(i32 noundef signext %714, ptr noundef %14, i32 noundef signext 1)
  store i32 %715, ptr %16, align 4, !tbaa !10
  br label %841

716:                                              ; preds = %637
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %717

717:                                              ; preds = %757, %716
  %718 = load i32, ptr %11, align 4, !tbaa !10
  %719 = icmp slt i32 %718, 4
  br i1 %719, label %720, label %760

720:                                              ; preds = %717
  store i32 0, ptr %10, align 4, !tbaa !10
  br label %721

721:                                              ; preds = %753, %720
  %722 = load i32, ptr %10, align 4, !tbaa !10
  %723 = icmp slt i32 %722, 2
  br i1 %723, label %724, label %756

724:                                              ; preds = %721
  %725 = load ptr, ptr @img, align 8, !tbaa !14
  %726 = getelementptr inbounds nuw %struct.ImageParameters, ptr %725, i32 0, i32 53
  %727 = load ptr, ptr %726, align 8, !tbaa !65
  %728 = load i32, ptr %4, align 4, !tbaa !10
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds ptr, ptr %727, i64 %729
  %731 = load ptr, ptr %730, align 8, !tbaa !62
  %732 = load i32, ptr %11, align 4, !tbaa !10
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds ptr, ptr %731, i64 %733
  %735 = load ptr, ptr %734, align 8, !tbaa !63
  %736 = load i32, ptr %10, align 4, !tbaa !10
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds ptr, ptr %735, i64 %737
  %739 = load ptr, ptr %738, align 8, !tbaa !7
  %740 = load ptr, ptr @cofAC8x8, align 8, !tbaa !61
  %741 = load i32, ptr %4, align 4, !tbaa !10
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds ptr, ptr %740, i64 %742
  %744 = load ptr, ptr %743, align 8, !tbaa !62
  %745 = load i32, ptr %11, align 4, !tbaa !10
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds ptr, ptr %744, i64 %746
  %748 = load ptr, ptr %747, align 8, !tbaa !63
  %749 = load i32, ptr %10, align 4, !tbaa !10
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds ptr, ptr %748, i64 %750
  %752 = load ptr, ptr %751, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %739, ptr align 4 %752, i64 260, i1 false)
  br label %753

753:                                              ; preds = %724
  %754 = load i32, ptr %10, align 4, !tbaa !10
  %755 = add nsw i32 %754, 1
  store i32 %755, ptr %10, align 4, !tbaa !10
  br label %721, !llvm.loop !87

756:                                              ; preds = %721
  br label %757

757:                                              ; preds = %756
  %758 = load i32, ptr %11, align 4, !tbaa !10
  %759 = add nsw i32 %758, 1
  store i32 %759, ptr %11, align 4, !tbaa !10
  br label %717, !llvm.loop !88

760:                                              ; preds = %717
  %761 = load ptr, ptr @img, align 8, !tbaa !14
  %762 = getelementptr inbounds nuw %struct.ImageParameters, ptr %761, i32 0, i32 98
  %763 = load i32, ptr %762, align 4, !tbaa !78
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %765, label %797

765:                                              ; preds = %760
  store i32 0, ptr %10, align 4, !tbaa !10
  br label %766

766:                                              ; preds = %793, %765
  %767 = load i32, ptr %10, align 4, !tbaa !10
  %768 = icmp slt i32 %767, 8
  br i1 %768, label %769, label %796

769:                                              ; preds = %766
  %770 = load ptr, ptr @img, align 8, !tbaa !14
  %771 = getelementptr inbounds nuw %struct.ImageParameters, ptr %770, i32 0, i32 56
  %772 = load ptr, ptr %771, align 8, !tbaa !79
  %773 = getelementptr inbounds ptr, ptr %772, i64 1
  %774 = load ptr, ptr %773, align 8, !tbaa !63
  %775 = load i32, ptr %20, align 4, !tbaa !10
  %776 = load i32, ptr %10, align 4, !tbaa !10
  %777 = add nsw i32 %775, %776
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds ptr, ptr %774, i64 %778
  %780 = load ptr, ptr %779, align 8, !tbaa !7
  %781 = load i32, ptr %19, align 4, !tbaa !10
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds i32, ptr %780, i64 %782
  %784 = getelementptr inbounds [2 x [16 x [16 x i32]]], ptr %29, i64 0, i64 1
  %785 = load i32, ptr %20, align 4, !tbaa !10
  %786 = load i32, ptr %10, align 4, !tbaa !10
  %787 = add nsw i32 %785, %786
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds [16 x [16 x i32]], ptr %784, i64 0, i64 %788
  %790 = load i32, ptr %19, align 4, !tbaa !10
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds [16 x i32], ptr %789, i64 0, i64 %791
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %783, ptr align 4 %792, i64 32, i1 false)
  br label %793

793:                                              ; preds = %769
  %794 = load i32, ptr %10, align 4, !tbaa !10
  %795 = add nsw i32 %794, 1
  store i32 %795, ptr %10, align 4, !tbaa !10
  br label %766, !llvm.loop !89

796:                                              ; preds = %766
  br label %797

797:                                              ; preds = %796, %760
  store i32 0, ptr %12, align 4, !tbaa !10
  br label %798

798:                                              ; preds = %837, %797
  %799 = load i32, ptr %12, align 4, !tbaa !10
  %800 = icmp slt i32 %799, 8
  br i1 %800, label %801, label %840

801:                                              ; preds = %798
  %802 = load ptr, ptr @enc_picture, align 8, !tbaa !68
  %803 = getelementptr inbounds nuw %struct.storable_picture, ptr %802, i32 0, i32 29
  %804 = load ptr, ptr %803, align 8, !tbaa !70
  %805 = load i32, ptr %22, align 4, !tbaa !10
  %806 = load i32, ptr %12, align 4, !tbaa !10
  %807 = add nsw i32 %805, %806
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds ptr, ptr %804, i64 %808
  %810 = load ptr, ptr %809, align 8, !tbaa !54
  %811 = load i32, ptr %21, align 4, !tbaa !10
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds i16, ptr %810, i64 %812
  %814 = load i32, ptr %12, align 4, !tbaa !10
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds [8 x [8 x i16]], ptr %17, i64 0, i64 %815
  %817 = getelementptr inbounds [8 x i16], ptr %816, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %813, ptr align 2 %817, i64 16, i1 false)
  %818 = load ptr, ptr @img, align 8, !tbaa !14
  %819 = getelementptr inbounds nuw %struct.ImageParameters, ptr %818, i32 0, i32 51
  %820 = load i32, ptr %20, align 4, !tbaa !10
  %821 = load i32, ptr %12, align 4, !tbaa !10
  %822 = add nsw i32 %820, %821
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds [16 x [16 x i16]], ptr %819, i64 0, i64 %823
  %825 = load i32, ptr %19, align 4, !tbaa !10
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds [16 x i16], ptr %824, i64 0, i64 %826
  %828 = load ptr, ptr @img, align 8, !tbaa !14
  %829 = getelementptr inbounds nuw %struct.ImageParameters, ptr %828, i32 0, i32 49
  %830 = load i32, ptr %8, align 4, !tbaa !10
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %829, i64 0, i64 %831
  %833 = load i32, ptr %12, align 4, !tbaa !10
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds [8 x [8 x i16]], ptr %832, i64 0, i64 %834
  %836 = getelementptr inbounds [8 x i16], ptr %835, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %827, ptr align 8 %836, i64 16, i1 false)
  br label %837

837:                                              ; preds = %801
  %838 = load i32, ptr %12, align 4, !tbaa !10
  %839 = add nsw i32 %838, 1
  store i32 %839, ptr %12, align 4, !tbaa !10
  br label %798, !llvm.loop !90

840:                                              ; preds = %798
  br label %841

841:                                              ; preds = %840, %713
  %842 = load i32, ptr %16, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %38) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %37) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %36) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %35) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %34) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %33) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %32) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %31) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %30) #7
  call void @llvm.lifetime.end.p0(i64 2048, ptr %29) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %28) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %27) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %17) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  ret i32 %842
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @getLuma4x4Neighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) #3

; Function Attrs: nounwind
define dso_local void @intrapred_luma8x8(i32 noundef signext %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [8 x %struct.pix_pos], align 4
  %21 = alloca %struct.pix_pos, align 4
  %22 = alloca %struct.pix_pos, align 4
  %23 = alloca %struct.pix_pos, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, ptr %6, align 4, !tbaa !10
  store i32 %1, ptr %7, align 4, !tbaa !10
  store ptr %2, ptr %8, align 8, !tbaa !7
  store ptr %3, ptr %9, align 8, !tbaa !7
  store ptr %4, ptr %10, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #7
  %28 = load ptr, ptr @enc_picture, align 8, !tbaa !68
  %29 = getelementptr inbounds nuw %struct.storable_picture, ptr %28, i32 0, i32 29
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  store ptr %30, ptr %14, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7
  %31 = load i32, ptr %6, align 4, !tbaa !10
  %32 = and i32 %31, 15
  store i32 %32, ptr %17, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #7
  %33 = load i32, ptr %7, align 4, !tbaa !10
  %34 = and i32 %33, 15
  store i32 %34, ptr %18, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7
  %35 = load ptr, ptr @img, align 8, !tbaa !14
  %36 = getelementptr inbounds nuw %struct.ImageParameters, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !38
  store i32 %37, ptr %19, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 192, ptr %20) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %21) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %22) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %23) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #7
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %38

38:                                               ; preds = %52, %5
  %39 = load i32, ptr %11, align 4, !tbaa !10
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load ptr, ptr @getNeighbour, align 8, !tbaa !14
  %43 = load i32, ptr %19, align 4, !tbaa !10
  %44 = load i32, ptr %17, align 4, !tbaa !10
  %45 = sub nsw i32 %44, 1
  %46 = load i32, ptr %18, align 4, !tbaa !10
  %47 = load i32, ptr %11, align 4, !tbaa !10
  %48 = add nsw i32 %46, %47
  %49 = load i32, ptr %11, align 4, !tbaa !10
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 %50
  call void %42(i32 noundef signext %43, i32 noundef signext %45, i32 noundef signext %48, i32 noundef signext 0, ptr noundef %51)
  br label %52

52:                                               ; preds = %41
  %53 = load i32, ptr %11, align 4, !tbaa !10
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %11, align 4, !tbaa !10
  br label %38, !llvm.loop !91

55:                                               ; preds = %38
  %56 = load ptr, ptr @getNeighbour, align 8, !tbaa !14
  %57 = load i32, ptr %19, align 4, !tbaa !10
  %58 = load i32, ptr %17, align 4, !tbaa !10
  %59 = load i32, ptr %18, align 4, !tbaa !10
  %60 = sub nsw i32 %59, 1
  call void %56(i32 noundef signext %57, i32 noundef signext %58, i32 noundef signext %60, i32 noundef signext 0, ptr noundef %21)
  %61 = load ptr, ptr @getNeighbour, align 8, !tbaa !14
  %62 = load i32, ptr %19, align 4, !tbaa !10
  %63 = load i32, ptr %17, align 4, !tbaa !10
  %64 = add nsw i32 %63, 8
  %65 = load i32, ptr %18, align 4, !tbaa !10
  %66 = sub nsw i32 %65, 1
  call void %61(i32 noundef signext %62, i32 noundef signext %64, i32 noundef signext %66, i32 noundef signext 0, ptr noundef %22)
  %67 = load ptr, ptr @getNeighbour, align 8, !tbaa !14
  %68 = load i32, ptr %19, align 4, !tbaa !10
  %69 = load i32, ptr %17, align 4, !tbaa !10
  %70 = sub nsw i32 %69, 1
  %71 = load i32, ptr %18, align 4, !tbaa !10
  %72 = sub nsw i32 %71, 1
  call void %67(i32 noundef signext %68, i32 noundef signext %70, i32 noundef signext %72, i32 noundef signext 0, ptr noundef %23)
  %73 = getelementptr inbounds nuw %struct.pix_pos, ptr %22, i32 0, i32 0
  %74 = load i32, ptr %73, align 4, !tbaa !43
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %55
  %77 = load i32, ptr %17, align 4, !tbaa !10
  %78 = icmp eq i32 %77, 8
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, ptr %18, align 4, !tbaa !10
  %81 = icmp eq i32 %80, 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i1 [ false, %76 ], [ %81, %79 ]
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %82, %55
  %86 = phi i1 [ false, %55 ], [ %84, %82 ]
  %87 = zext i1 %86 to i32
  %88 = getelementptr inbounds nuw %struct.pix_pos, ptr %22, i32 0, i32 0
  store i32 %87, ptr %88, align 4, !tbaa !43
  %89 = load ptr, ptr @input, align 8, !tbaa !14
  %90 = getelementptr inbounds nuw %struct.InputParameters, ptr %89, i32 0, i32 23
  %91 = load i32, ptr %90, align 8, !tbaa !40
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %170

93:                                               ; preds = %85
  store i32 0, ptr %11, align 4, !tbaa !10
  store i32 1, ptr %25, align 4, !tbaa !10
  br label %94

94:                                               ; preds = %121, %93
  %95 = load i32, ptr %11, align 4, !tbaa !10
  %96 = icmp slt i32 %95, 8
  br i1 %96, label %97, label %124

97:                                               ; preds = %94
  %98 = load i32, ptr %11, align 4, !tbaa !10
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 %99
  %101 = getelementptr inbounds nuw %struct.pix_pos, ptr %100, i32 0, i32 0
  %102 = load i32, ptr %101, align 4, !tbaa !43
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %97
  %105 = load ptr, ptr @img, align 8, !tbaa !14
  %106 = getelementptr inbounds nuw %struct.ImageParameters, ptr %105, i32 0, i32 63
  %107 = load ptr, ptr %106, align 8, !tbaa !45
  %108 = load i32, ptr %11, align 4, !tbaa !10
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 %109
  %111 = getelementptr inbounds nuw %struct.pix_pos, ptr %110, i32 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !46
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, ptr %107, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !10
  br label %117

116:                                              ; preds = %97
  br label %117

117:                                              ; preds = %116, %104
  %118 = phi i32 [ %115, %104 ], [ 0, %116 ]
  %119 = load i32, ptr %25, align 4, !tbaa !10
  %120 = and i32 %119, %118
  store i32 %120, ptr %25, align 4, !tbaa !10
  br label %121

121:                                              ; preds = %117
  %122 = load i32, ptr %11, align 4, !tbaa !10
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr %11, align 4, !tbaa !10
  br label %94, !llvm.loop !92

124:                                              ; preds = %94
  %125 = getelementptr inbounds nuw %struct.pix_pos, ptr %21, i32 0, i32 0
  %126 = load i32, ptr %125, align 4, !tbaa !43
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load ptr, ptr @img, align 8, !tbaa !14
  %130 = getelementptr inbounds nuw %struct.ImageParameters, ptr %129, i32 0, i32 63
  %131 = load ptr, ptr %130, align 8, !tbaa !45
  %132 = getelementptr inbounds nuw %struct.pix_pos, ptr %21, i32 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !46
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, ptr %131, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !10
  br label %138

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137, %128
  %139 = phi i32 [ %136, %128 ], [ 0, %137 ]
  store i32 %139, ptr %24, align 4, !tbaa !10
  %140 = getelementptr inbounds nuw %struct.pix_pos, ptr %22, i32 0, i32 0
  %141 = load i32, ptr %140, align 4, !tbaa !43
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load ptr, ptr @img, align 8, !tbaa !14
  %145 = getelementptr inbounds nuw %struct.ImageParameters, ptr %144, i32 0, i32 63
  %146 = load ptr, ptr %145, align 8, !tbaa !45
  %147 = getelementptr inbounds nuw %struct.pix_pos, ptr %22, i32 0, i32 1
  %148 = load i32, ptr %147, align 4, !tbaa !46
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, ptr %146, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !10
  br label %153

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %152, %143
  %154 = phi i32 [ %151, %143 ], [ 0, %152 ]
  store i32 %154, ptr %27, align 4, !tbaa !10
  %155 = getelementptr inbounds nuw %struct.pix_pos, ptr %23, i32 0, i32 0
  %156 = load i32, ptr %155, align 4, !tbaa !43
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %153
  %159 = load ptr, ptr @img, align 8, !tbaa !14
  %160 = getelementptr inbounds nuw %struct.ImageParameters, ptr %159, i32 0, i32 63
  %161 = load ptr, ptr %160, align 8, !tbaa !45
  %162 = getelementptr inbounds nuw %struct.pix_pos, ptr %23, i32 0, i32 1
  %163 = load i32, ptr %162, align 4, !tbaa !46
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, ptr %161, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !10
  br label %168

167:                                              ; preds = %153
  br label %168

168:                                              ; preds = %167, %158
  %169 = phi i32 [ %166, %158 ], [ 0, %167 ]
  store i32 %169, ptr %26, align 4, !tbaa !10
  br label %180

170:                                              ; preds = %85
  %171 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 0
  %172 = getelementptr inbounds nuw %struct.pix_pos, ptr %171, i32 0, i32 0
  %173 = load i32, ptr %172, align 4, !tbaa !43
  store i32 %173, ptr %25, align 4, !tbaa !10
  %174 = getelementptr inbounds nuw %struct.pix_pos, ptr %21, i32 0, i32 0
  %175 = load i32, ptr %174, align 4, !tbaa !43
  store i32 %175, ptr %24, align 4, !tbaa !10
  %176 = getelementptr inbounds nuw %struct.pix_pos, ptr %22, i32 0, i32 0
  %177 = load i32, ptr %176, align 4, !tbaa !43
  store i32 %177, ptr %27, align 4, !tbaa !10
  %178 = getelementptr inbounds nuw %struct.pix_pos, ptr %23, i32 0, i32 0
  %179 = load i32, ptr %178, align 4, !tbaa !43
  store i32 %179, ptr %26, align 4, !tbaa !10
  br label %180

180:                                              ; preds = %170, %168
  %181 = load i32, ptr %25, align 4, !tbaa !10
  %182 = load ptr, ptr %8, align 8, !tbaa !7
  store i32 %181, ptr %182, align 4, !tbaa !10
  %183 = load i32, ptr %24, align 4, !tbaa !10
  %184 = load ptr, ptr %9, align 8, !tbaa !7
  store i32 %183, ptr %184, align 4, !tbaa !10
  %185 = load i32, ptr %24, align 4, !tbaa !10
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %180
  %188 = load i32, ptr %25, align 4, !tbaa !10
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32, ptr %26, align 4, !tbaa !10
  %192 = icmp ne i32 %191, 0
  br label %193

193:                                              ; preds = %190, %187, %180
  %194 = phi i1 [ false, %187 ], [ false, %180 ], [ %192, %190 ]
  %195 = zext i1 %194 to i32
  %196 = load ptr, ptr %10, align 8, !tbaa !7
  store i32 %195, ptr %196, align 4, !tbaa !10
  %197 = load i32, ptr %6, align 4, !tbaa !10
  %198 = and i32 %197, 15
  store i32 %198, ptr %11, align 4, !tbaa !10
  %199 = load i32, ptr %7, align 4, !tbaa !10
  %200 = and i32 %199, 15
  store i32 %200, ptr %12, align 4, !tbaa !10
  %201 = load i32, ptr %24, align 4, !tbaa !10
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %237

203:                                              ; preds = %193
  %204 = load ptr, ptr %14, align 8, !tbaa !35
  %205 = getelementptr inbounds nuw %struct.pix_pos, ptr %21, i32 0, i32 5
  %206 = load i32, ptr %205, align 4, !tbaa !48
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds ptr, ptr %204, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !54
  %210 = getelementptr inbounds nuw %struct.pix_pos, ptr %21, i32 0, i32 4
  %211 = load i32, ptr %210, align 4, !tbaa !50
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i16, ptr %209, i64 %212
  store ptr %213, ptr %15, align 8, !tbaa !54
  %214 = load ptr, ptr %15, align 8, !tbaa !54
  %215 = getelementptr inbounds nuw i16, ptr %214, i32 1
  store ptr %215, ptr %15, align 8, !tbaa !54
  %216 = load i16, ptr %214, align 2, !tbaa !56
  store i16 %216, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %217 = load ptr, ptr %15, align 8, !tbaa !54
  %218 = getelementptr inbounds nuw i16, ptr %217, i32 1
  store ptr %218, ptr %15, align 8, !tbaa !54
  %219 = load i16, ptr %217, align 2, !tbaa !56
  store i16 %219, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %220 = load ptr, ptr %15, align 8, !tbaa !54
  %221 = getelementptr inbounds nuw i16, ptr %220, i32 1
  store ptr %221, ptr %15, align 8, !tbaa !54
  %222 = load i16, ptr %220, align 2, !tbaa !56
  store i16 %222, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %223 = load ptr, ptr %15, align 8, !tbaa !54
  %224 = getelementptr inbounds nuw i16, ptr %223, i32 1
  store ptr %224, ptr %15, align 8, !tbaa !54
  %225 = load i16, ptr %223, align 2, !tbaa !56
  store i16 %225, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %226 = load ptr, ptr %15, align 8, !tbaa !54
  %227 = getelementptr inbounds nuw i16, ptr %226, i32 1
  store ptr %227, ptr %15, align 8, !tbaa !54
  %228 = load i16, ptr %226, align 2, !tbaa !56
  store i16 %228, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %229 = load ptr, ptr %15, align 8, !tbaa !54
  %230 = getelementptr inbounds nuw i16, ptr %229, i32 1
  store ptr %230, ptr %15, align 8, !tbaa !54
  %231 = load i16, ptr %229, align 2, !tbaa !56
  store i16 %231, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %232 = load ptr, ptr %15, align 8, !tbaa !54
  %233 = getelementptr inbounds nuw i16, ptr %232, i32 1
  store ptr %233, ptr %15, align 8, !tbaa !54
  %234 = load i16, ptr %232, align 2, !tbaa !56
  store i16 %234, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %235 = load ptr, ptr %15, align 8, !tbaa !54
  %236 = load i16, ptr %235, align 2, !tbaa !56
  store i16 %236, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  br label %242

237:                                              ; preds = %193
  %238 = load ptr, ptr @img, align 8, !tbaa !14
  %239 = getelementptr inbounds nuw %struct.ImageParameters, ptr %238, i32 0, i32 154
  %240 = load i32, ptr %239, align 8, !tbaa !93
  %241 = trunc i32 %240 to i16
  store i16 %241, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  store i16 %241, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  store i16 %241, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  store i16 %241, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  store i16 %241, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  store i16 %241, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  store i16 %241, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  store i16 %241, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  br label %242

242:                                              ; preds = %237, %203
  %243 = load i32, ptr %27, align 4, !tbaa !10
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %279

245:                                              ; preds = %242
  %246 = load ptr, ptr %14, align 8, !tbaa !35
  %247 = getelementptr inbounds nuw %struct.pix_pos, ptr %22, i32 0, i32 5
  %248 = load i32, ptr %247, align 4, !tbaa !48
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds ptr, ptr %246, i64 %249
  %251 = load ptr, ptr %250, align 8, !tbaa !54
  %252 = getelementptr inbounds nuw %struct.pix_pos, ptr %22, i32 0, i32 4
  %253 = load i32, ptr %252, align 4, !tbaa !50
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i16, ptr %251, i64 %254
  store ptr %255, ptr %15, align 8, !tbaa !54
  %256 = load ptr, ptr %15, align 8, !tbaa !54
  %257 = getelementptr inbounds nuw i16, ptr %256, i32 1
  store ptr %257, ptr %15, align 8, !tbaa !54
  %258 = load i16, ptr %256, align 2, !tbaa !56
  store i16 %258, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 9), align 2, !tbaa !56
  %259 = load ptr, ptr %15, align 8, !tbaa !54
  %260 = getelementptr inbounds nuw i16, ptr %259, i32 1
  store ptr %260, ptr %15, align 8, !tbaa !54
  %261 = load i16, ptr %259, align 2, !tbaa !56
  store i16 %261, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 10), align 2, !tbaa !56
  %262 = load ptr, ptr %15, align 8, !tbaa !54
  %263 = getelementptr inbounds nuw i16, ptr %262, i32 1
  store ptr %263, ptr %15, align 8, !tbaa !54
  %264 = load i16, ptr %262, align 2, !tbaa !56
  store i16 %264, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 11), align 2, !tbaa !56
  %265 = load ptr, ptr %15, align 8, !tbaa !54
  %266 = getelementptr inbounds nuw i16, ptr %265, i32 1
  store ptr %266, ptr %15, align 8, !tbaa !54
  %267 = load i16, ptr %265, align 2, !tbaa !56
  store i16 %267, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 12), align 2, !tbaa !56
  %268 = load ptr, ptr %15, align 8, !tbaa !54
  %269 = getelementptr inbounds nuw i16, ptr %268, i32 1
  store ptr %269, ptr %15, align 8, !tbaa !54
  %270 = load i16, ptr %268, align 2, !tbaa !56
  store i16 %270, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 13), align 2, !tbaa !56
  %271 = load ptr, ptr %15, align 8, !tbaa !54
  %272 = getelementptr inbounds nuw i16, ptr %271, i32 1
  store ptr %272, ptr %15, align 8, !tbaa !54
  %273 = load i16, ptr %271, align 2, !tbaa !56
  store i16 %273, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 14), align 2, !tbaa !56
  %274 = load ptr, ptr %15, align 8, !tbaa !54
  %275 = getelementptr inbounds nuw i16, ptr %274, i32 1
  store ptr %275, ptr %15, align 8, !tbaa !54
  %276 = load i16, ptr %274, align 2, !tbaa !56
  store i16 %276, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 15), align 2, !tbaa !56
  %277 = load ptr, ptr %15, align 8, !tbaa !54
  %278 = load i16, ptr %277, align 2, !tbaa !56
  store i16 %278, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 16), align 2, !tbaa !56
  br label %281

279:                                              ; preds = %242
  %280 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  store i16 %280, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 16), align 2, !tbaa !56
  store i16 %280, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 15), align 2, !tbaa !56
  store i16 %280, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 14), align 2, !tbaa !56
  store i16 %280, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 13), align 2, !tbaa !56
  store i16 %280, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 12), align 2, !tbaa !56
  store i16 %280, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 11), align 2, !tbaa !56
  store i16 %280, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 10), align 2, !tbaa !56
  store i16 %280, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 9), align 2, !tbaa !56
  br label %281

281:                                              ; preds = %279, %245
  %282 = load i32, ptr %25, align 4, !tbaa !10
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %389

284:                                              ; preds = %281
  %285 = load ptr, ptr %14, align 8, !tbaa !35
  %286 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 0
  %287 = getelementptr inbounds nuw %struct.pix_pos, ptr %286, i32 0, i32 5
  %288 = load i32, ptr %287, align 4, !tbaa !48
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds ptr, ptr %285, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !54
  %292 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 0
  %293 = getelementptr inbounds nuw %struct.pix_pos, ptr %292, i32 0, i32 4
  %294 = load i32, ptr %293, align 4, !tbaa !50
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i16, ptr %291, i64 %295
  %297 = load i16, ptr %296, align 2, !tbaa !56
  store i16 %297, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %298 = load ptr, ptr %14, align 8, !tbaa !35
  %299 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 1
  %300 = getelementptr inbounds nuw %struct.pix_pos, ptr %299, i32 0, i32 5
  %301 = load i32, ptr %300, align 4, !tbaa !48
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds ptr, ptr %298, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !54
  %305 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 1
  %306 = getelementptr inbounds nuw %struct.pix_pos, ptr %305, i32 0, i32 4
  %307 = load i32, ptr %306, align 4, !tbaa !50
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i16, ptr %304, i64 %308
  %310 = load i16, ptr %309, align 2, !tbaa !56
  store i16 %310, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %311 = load ptr, ptr %14, align 8, !tbaa !35
  %312 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 2
  %313 = getelementptr inbounds nuw %struct.pix_pos, ptr %312, i32 0, i32 5
  %314 = load i32, ptr %313, align 4, !tbaa !48
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds ptr, ptr %311, i64 %315
  %317 = load ptr, ptr %316, align 8, !tbaa !54
  %318 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 2
  %319 = getelementptr inbounds nuw %struct.pix_pos, ptr %318, i32 0, i32 4
  %320 = load i32, ptr %319, align 4, !tbaa !50
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i16, ptr %317, i64 %321
  %323 = load i16, ptr %322, align 2, !tbaa !56
  store i16 %323, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %324 = load ptr, ptr %14, align 8, !tbaa !35
  %325 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 3
  %326 = getelementptr inbounds nuw %struct.pix_pos, ptr %325, i32 0, i32 5
  %327 = load i32, ptr %326, align 4, !tbaa !48
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds ptr, ptr %324, i64 %328
  %330 = load ptr, ptr %329, align 8, !tbaa !54
  %331 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 3
  %332 = getelementptr inbounds nuw %struct.pix_pos, ptr %331, i32 0, i32 4
  %333 = load i32, ptr %332, align 4, !tbaa !50
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i16, ptr %330, i64 %334
  %336 = load i16, ptr %335, align 2, !tbaa !56
  store i16 %336, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %337 = load ptr, ptr %14, align 8, !tbaa !35
  %338 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 4
  %339 = getelementptr inbounds nuw %struct.pix_pos, ptr %338, i32 0, i32 5
  %340 = load i32, ptr %339, align 4, !tbaa !48
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds ptr, ptr %337, i64 %341
  %343 = load ptr, ptr %342, align 8, !tbaa !54
  %344 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 4
  %345 = getelementptr inbounds nuw %struct.pix_pos, ptr %344, i32 0, i32 4
  %346 = load i32, ptr %345, align 4, !tbaa !50
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i16, ptr %343, i64 %347
  %349 = load i16, ptr %348, align 2, !tbaa !56
  store i16 %349, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %350 = load ptr, ptr %14, align 8, !tbaa !35
  %351 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 5
  %352 = getelementptr inbounds nuw %struct.pix_pos, ptr %351, i32 0, i32 5
  %353 = load i32, ptr %352, align 4, !tbaa !48
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds ptr, ptr %350, i64 %354
  %356 = load ptr, ptr %355, align 8, !tbaa !54
  %357 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 5
  %358 = getelementptr inbounds nuw %struct.pix_pos, ptr %357, i32 0, i32 4
  %359 = load i32, ptr %358, align 4, !tbaa !50
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i16, ptr %356, i64 %360
  %362 = load i16, ptr %361, align 2, !tbaa !56
  store i16 %362, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %363 = load ptr, ptr %14, align 8, !tbaa !35
  %364 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 6
  %365 = getelementptr inbounds nuw %struct.pix_pos, ptr %364, i32 0, i32 5
  %366 = load i32, ptr %365, align 4, !tbaa !48
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds ptr, ptr %363, i64 %367
  %369 = load ptr, ptr %368, align 8, !tbaa !54
  %370 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 6
  %371 = getelementptr inbounds nuw %struct.pix_pos, ptr %370, i32 0, i32 4
  %372 = load i32, ptr %371, align 4, !tbaa !50
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i16, ptr %369, i64 %373
  %375 = load i16, ptr %374, align 2, !tbaa !56
  store i16 %375, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %376 = load ptr, ptr %14, align 8, !tbaa !35
  %377 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 7
  %378 = getelementptr inbounds nuw %struct.pix_pos, ptr %377, i32 0, i32 5
  %379 = load i32, ptr %378, align 4, !tbaa !48
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds ptr, ptr %376, i64 %380
  %382 = load ptr, ptr %381, align 8, !tbaa !54
  %383 = getelementptr inbounds [8 x %struct.pix_pos], ptr %20, i64 0, i64 7
  %384 = getelementptr inbounds nuw %struct.pix_pos, ptr %383, i32 0, i32 4
  %385 = load i32, ptr %384, align 4, !tbaa !50
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i16, ptr %382, i64 %386
  %388 = load i16, ptr %387, align 2, !tbaa !56
  store i16 %388, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 24), align 2, !tbaa !56
  br label %394

389:                                              ; preds = %281
  %390 = load ptr, ptr @img, align 8, !tbaa !14
  %391 = getelementptr inbounds nuw %struct.ImageParameters, ptr %390, i32 0, i32 154
  %392 = load i32, ptr %391, align 8, !tbaa !93
  %393 = trunc i32 %392 to i16
  store i16 %393, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 24), align 2, !tbaa !56
  store i16 %393, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  store i16 %393, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  store i16 %393, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  store i16 %393, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  store i16 %393, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  store i16 %393, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  store i16 %393, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  br label %394

394:                                              ; preds = %389, %284
  %395 = load i32, ptr %26, align 4, !tbaa !10
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %409

397:                                              ; preds = %394
  %398 = load ptr, ptr %14, align 8, !tbaa !35
  %399 = getelementptr inbounds nuw %struct.pix_pos, ptr %23, i32 0, i32 5
  %400 = load i32, ptr %399, align 4, !tbaa !48
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds ptr, ptr %398, i64 %401
  %403 = load ptr, ptr %402, align 8, !tbaa !54
  %404 = getelementptr inbounds nuw %struct.pix_pos, ptr %23, i32 0, i32 4
  %405 = load i32, ptr %404, align 4, !tbaa !50
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i16, ptr %403, i64 %406
  %408 = load i16, ptr %407, align 2, !tbaa !56
  store i16 %408, ptr @intrapred_luma8x8.PredPel, align 2, !tbaa !56
  br label %414

409:                                              ; preds = %394
  %410 = load ptr, ptr @img, align 8, !tbaa !14
  %411 = getelementptr inbounds nuw %struct.ImageParameters, ptr %410, i32 0, i32 154
  %412 = load i32, ptr %411, align 8, !tbaa !93
  %413 = trunc i32 %412 to i16
  store i16 %413, ptr @intrapred_luma8x8.PredPel, align 2, !tbaa !56
  br label %414

414:                                              ; preds = %409, %397
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %415

415:                                              ; preds = %426, %414
  %416 = load i32, ptr %11, align 4, !tbaa !10
  %417 = icmp slt i32 %416, 9
  br i1 %417, label %418, label %429

418:                                              ; preds = %415
  %419 = load ptr, ptr @img, align 8, !tbaa !14
  %420 = getelementptr inbounds nuw %struct.ImageParameters, ptr %419, i32 0, i32 49
  %421 = load i32, ptr %11, align 4, !tbaa !10
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %420, i64 0, i64 %422
  %424 = getelementptr inbounds [8 x [8 x i16]], ptr %423, i64 0, i64 0
  %425 = getelementptr inbounds [8 x i16], ptr %424, i64 0, i64 0
  store i16 -1, ptr %425, align 8, !tbaa !56
  br label %426

426:                                              ; preds = %418
  %427 = load i32, ptr %11, align 4, !tbaa !10
  %428 = add nsw i32 %427, 1
  store i32 %428, ptr %11, align 4, !tbaa !10
  br label %415, !llvm.loop !94

429:                                              ; preds = %415
  %430 = load i32, ptr %26, align 4, !tbaa !10
  %431 = load i32, ptr %24, align 4, !tbaa !10
  %432 = load i32, ptr %25, align 4, !tbaa !10
  call void @LowPassForIntra8x8Pred(ptr noundef @intrapred_luma8x8.PredPel, i32 noundef signext %430, i32 noundef signext %431, i32 noundef signext %432)
  store i32 0, ptr %13, align 4, !tbaa !10
  %433 = load i32, ptr %24, align 4, !tbaa !10
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %487

435:                                              ; preds = %429
  %436 = load i32, ptr %25, align 4, !tbaa !10
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %487

438:                                              ; preds = %435
  %439 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %440 = zext i16 %439 to i32
  %441 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %442 = zext i16 %441 to i32
  %443 = add nsw i32 %440, %442
  %444 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %445 = zext i16 %444 to i32
  %446 = add nsw i32 %443, %445
  %447 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %448 = zext i16 %447 to i32
  %449 = add nsw i32 %446, %448
  %450 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %451 = zext i16 %450 to i32
  %452 = add nsw i32 %449, %451
  %453 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %454 = zext i16 %453 to i32
  %455 = add nsw i32 %452, %454
  %456 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %457 = zext i16 %456 to i32
  %458 = add nsw i32 %455, %457
  %459 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  %460 = zext i16 %459 to i32
  %461 = add nsw i32 %458, %460
  %462 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %463 = zext i16 %462 to i32
  %464 = add nsw i32 %461, %463
  %465 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %466 = zext i16 %465 to i32
  %467 = add nsw i32 %464, %466
  %468 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %469 = zext i16 %468 to i32
  %470 = add nsw i32 %467, %469
  %471 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %472 = zext i16 %471 to i32
  %473 = add nsw i32 %470, %472
  %474 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %475 = zext i16 %474 to i32
  %476 = add nsw i32 %473, %475
  %477 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %478 = zext i16 %477 to i32
  %479 = add nsw i32 %476, %478
  %480 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %481 = zext i16 %480 to i32
  %482 = add nsw i32 %479, %481
  %483 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 24), align 2, !tbaa !56
  %484 = zext i16 %483 to i32
  %485 = add nsw i32 %482, %484
  %486 = call signext i32 @rshift_rnd_sf(i32 noundef signext %485, i32 noundef signext 4)
  store i32 %486, ptr %13, align 4, !tbaa !10
  br label %555

487:                                              ; preds = %435, %429
  %488 = load i32, ptr %24, align 4, !tbaa !10
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %518, label %490

490:                                              ; preds = %487
  %491 = load i32, ptr %25, align 4, !tbaa !10
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %518

493:                                              ; preds = %490
  %494 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %495 = zext i16 %494 to i32
  %496 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %497 = zext i16 %496 to i32
  %498 = add nsw i32 %495, %497
  %499 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %500 = zext i16 %499 to i32
  %501 = add nsw i32 %498, %500
  %502 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %503 = zext i16 %502 to i32
  %504 = add nsw i32 %501, %503
  %505 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %506 = zext i16 %505 to i32
  %507 = add nsw i32 %504, %506
  %508 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %509 = zext i16 %508 to i32
  %510 = add nsw i32 %507, %509
  %511 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %512 = zext i16 %511 to i32
  %513 = add nsw i32 %510, %512
  %514 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 24), align 2, !tbaa !56
  %515 = zext i16 %514 to i32
  %516 = add nsw i32 %513, %515
  %517 = call signext i32 @rshift_rnd_sf(i32 noundef signext %516, i32 noundef signext 3)
  store i32 %517, ptr %13, align 4, !tbaa !10
  br label %554

518:                                              ; preds = %490, %487
  %519 = load i32, ptr %24, align 4, !tbaa !10
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %549

521:                                              ; preds = %518
  %522 = load i32, ptr %25, align 4, !tbaa !10
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %549, label %524

524:                                              ; preds = %521
  %525 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %526 = zext i16 %525 to i32
  %527 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %528 = zext i16 %527 to i32
  %529 = add nsw i32 %526, %528
  %530 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %531 = zext i16 %530 to i32
  %532 = add nsw i32 %529, %531
  %533 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %534 = zext i16 %533 to i32
  %535 = add nsw i32 %532, %534
  %536 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %537 = zext i16 %536 to i32
  %538 = add nsw i32 %535, %537
  %539 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %540 = zext i16 %539 to i32
  %541 = add nsw i32 %538, %540
  %542 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %543 = zext i16 %542 to i32
  %544 = add nsw i32 %541, %543
  %545 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  %546 = zext i16 %545 to i32
  %547 = add nsw i32 %544, %546
  %548 = call signext i32 @rshift_rnd_sf(i32 noundef signext %547, i32 noundef signext 3)
  store i32 %548, ptr %13, align 4, !tbaa !10
  br label %553

549:                                              ; preds = %521, %518
  %550 = load ptr, ptr @img, align 8, !tbaa !14
  %551 = getelementptr inbounds nuw %struct.ImageParameters, ptr %550, i32 0, i32 154
  %552 = load i32, ptr %551, align 8, !tbaa !93
  store i32 %552, ptr %13, align 4, !tbaa !10
  br label %553

553:                                              ; preds = %549, %524
  br label %554

554:                                              ; preds = %553, %493
  br label %555

555:                                              ; preds = %554, %438
  %556 = load ptr, ptr @img, align 8, !tbaa !14
  %557 = getelementptr inbounds nuw %struct.ImageParameters, ptr %556, i32 0, i32 49
  %558 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %557, i64 0, i64 2
  %559 = getelementptr inbounds [8 x [8 x i16]], ptr %558, i64 0, i64 0
  store ptr %559, ptr %16, align 8, !tbaa !54
  store i32 0, ptr %12, align 4, !tbaa !10
  br label %560

560:                                              ; preds = %581, %555
  %561 = load i32, ptr %12, align 4, !tbaa !10
  %562 = icmp slt i32 %561, 8
  br i1 %562, label %563, label %584

563:                                              ; preds = %560
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %564

564:                                              ; preds = %577, %563
  %565 = load i32, ptr %11, align 4, !tbaa !10
  %566 = icmp slt i32 %565, 8
  br i1 %566, label %567, label %580

567:                                              ; preds = %564
  %568 = load i32, ptr %13, align 4, !tbaa !10
  %569 = trunc i32 %568 to i16
  %570 = load ptr, ptr %16, align 8, !tbaa !54
  %571 = load i32, ptr %11, align 4, !tbaa !10
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [8 x i16], ptr %570, i64 %572
  %574 = load i32, ptr %12, align 4, !tbaa !10
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [8 x i16], ptr %573, i64 0, i64 %575
  store i16 %569, ptr %576, align 2, !tbaa !56
  br label %577

577:                                              ; preds = %567
  %578 = load i32, ptr %11, align 4, !tbaa !10
  %579 = add nsw i32 %578, 1
  store i32 %579, ptr %11, align 4, !tbaa !10
  br label %564, !llvm.loop !95

580:                                              ; preds = %564
  br label %581

581:                                              ; preds = %580
  %582 = load i32, ptr %12, align 4, !tbaa !10
  %583 = add nsw i32 %582, 1
  store i32 %583, ptr %12, align 4, !tbaa !10
  br label %560, !llvm.loop !96

584:                                              ; preds = %560
  %585 = load ptr, ptr @img, align 8, !tbaa !14
  %586 = getelementptr inbounds nuw %struct.ImageParameters, ptr %585, i32 0, i32 49
  %587 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %586, i64 0, i64 0
  %588 = getelementptr inbounds [8 x [8 x i16]], ptr %587, i64 0, i64 0
  store ptr %588, ptr %16, align 8, !tbaa !54
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %589

589:                                              ; preds = %637, %584
  %590 = load i32, ptr %11, align 4, !tbaa !10
  %591 = icmp slt i32 %590, 8
  br i1 %591, label %592, label %640

592:                                              ; preds = %589
  %593 = load i32, ptr %11, align 4, !tbaa !10
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), i64 %594
  %596 = load i16, ptr %595, align 2, !tbaa !56
  %597 = load ptr, ptr %16, align 8, !tbaa !54
  %598 = getelementptr inbounds [8 x i16], ptr %597, i64 7
  %599 = load i32, ptr %11, align 4, !tbaa !10
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [8 x i16], ptr %598, i64 0, i64 %600
  store i16 %596, ptr %601, align 2, !tbaa !56
  %602 = load ptr, ptr %16, align 8, !tbaa !54
  %603 = getelementptr inbounds [8 x i16], ptr %602, i64 6
  %604 = load i32, ptr %11, align 4, !tbaa !10
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds [8 x i16], ptr %603, i64 0, i64 %605
  store i16 %596, ptr %606, align 2, !tbaa !56
  %607 = load ptr, ptr %16, align 8, !tbaa !54
  %608 = getelementptr inbounds [8 x i16], ptr %607, i64 5
  %609 = load i32, ptr %11, align 4, !tbaa !10
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds [8 x i16], ptr %608, i64 0, i64 %610
  store i16 %596, ptr %611, align 2, !tbaa !56
  %612 = load ptr, ptr %16, align 8, !tbaa !54
  %613 = getelementptr inbounds [8 x i16], ptr %612, i64 4
  %614 = load i32, ptr %11, align 4, !tbaa !10
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [8 x i16], ptr %613, i64 0, i64 %615
  store i16 %596, ptr %616, align 2, !tbaa !56
  %617 = load ptr, ptr %16, align 8, !tbaa !54
  %618 = getelementptr inbounds [8 x i16], ptr %617, i64 3
  %619 = load i32, ptr %11, align 4, !tbaa !10
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [8 x i16], ptr %618, i64 0, i64 %620
  store i16 %596, ptr %621, align 2, !tbaa !56
  %622 = load ptr, ptr %16, align 8, !tbaa !54
  %623 = getelementptr inbounds [8 x i16], ptr %622, i64 2
  %624 = load i32, ptr %11, align 4, !tbaa !10
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [8 x i16], ptr %623, i64 0, i64 %625
  store i16 %596, ptr %626, align 2, !tbaa !56
  %627 = load ptr, ptr %16, align 8, !tbaa !54
  %628 = getelementptr inbounds [8 x i16], ptr %627, i64 1
  %629 = load i32, ptr %11, align 4, !tbaa !10
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds [8 x i16], ptr %628, i64 0, i64 %630
  store i16 %596, ptr %631, align 2, !tbaa !56
  %632 = load ptr, ptr %16, align 8, !tbaa !54
  %633 = getelementptr inbounds [8 x i16], ptr %632, i64 0
  %634 = load i32, ptr %11, align 4, !tbaa !10
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds [8 x i16], ptr %633, i64 0, i64 %635
  store i16 %596, ptr %636, align 2, !tbaa !56
  br label %637

637:                                              ; preds = %592
  %638 = load i32, ptr %11, align 4, !tbaa !10
  %639 = add nsw i32 %638, 1
  store i32 %639, ptr %11, align 4, !tbaa !10
  br label %589, !llvm.loop !97

640:                                              ; preds = %589
  %641 = load i32, ptr %24, align 4, !tbaa !10
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %647, label %643

643:                                              ; preds = %640
  %644 = load ptr, ptr %16, align 8, !tbaa !54
  %645 = getelementptr inbounds [8 x i16], ptr %644, i64 0
  %646 = getelementptr inbounds [8 x i16], ptr %645, i64 0, i64 0
  store i16 -1, ptr %646, align 2, !tbaa !56
  br label %647

647:                                              ; preds = %643, %640
  %648 = load ptr, ptr @img, align 8, !tbaa !14
  %649 = getelementptr inbounds nuw %struct.ImageParameters, ptr %648, i32 0, i32 49
  %650 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %649, i64 0, i64 1
  %651 = getelementptr inbounds [8 x [8 x i16]], ptr %650, i64 0, i64 0
  store ptr %651, ptr %16, align 8, !tbaa !54
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %652

652:                                              ; preds = %700, %647
  %653 = load i32, ptr %11, align 4, !tbaa !10
  %654 = icmp slt i32 %653, 8
  br i1 %654, label %655, label %703

655:                                              ; preds = %652
  %656 = load i32, ptr %11, align 4, !tbaa !10
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), i64 %657
  %659 = load i16, ptr %658, align 2, !tbaa !56
  %660 = load ptr, ptr %16, align 8, !tbaa !54
  %661 = load i32, ptr %11, align 4, !tbaa !10
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds [8 x i16], ptr %660, i64 %662
  %664 = getelementptr inbounds [8 x i16], ptr %663, i64 0, i64 7
  store i16 %659, ptr %664, align 2, !tbaa !56
  %665 = load ptr, ptr %16, align 8, !tbaa !54
  %666 = load i32, ptr %11, align 4, !tbaa !10
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds [8 x i16], ptr %665, i64 %667
  %669 = getelementptr inbounds [8 x i16], ptr %668, i64 0, i64 6
  store i16 %659, ptr %669, align 2, !tbaa !56
  %670 = load ptr, ptr %16, align 8, !tbaa !54
  %671 = load i32, ptr %11, align 4, !tbaa !10
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds [8 x i16], ptr %670, i64 %672
  %674 = getelementptr inbounds [8 x i16], ptr %673, i64 0, i64 5
  store i16 %659, ptr %674, align 2, !tbaa !56
  %675 = load ptr, ptr %16, align 8, !tbaa !54
  %676 = load i32, ptr %11, align 4, !tbaa !10
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds [8 x i16], ptr %675, i64 %677
  %679 = getelementptr inbounds [8 x i16], ptr %678, i64 0, i64 4
  store i16 %659, ptr %679, align 2, !tbaa !56
  %680 = load ptr, ptr %16, align 8, !tbaa !54
  %681 = load i32, ptr %11, align 4, !tbaa !10
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds [8 x i16], ptr %680, i64 %682
  %684 = getelementptr inbounds [8 x i16], ptr %683, i64 0, i64 3
  store i16 %659, ptr %684, align 2, !tbaa !56
  %685 = load ptr, ptr %16, align 8, !tbaa !54
  %686 = load i32, ptr %11, align 4, !tbaa !10
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [8 x i16], ptr %685, i64 %687
  %689 = getelementptr inbounds [8 x i16], ptr %688, i64 0, i64 2
  store i16 %659, ptr %689, align 2, !tbaa !56
  %690 = load ptr, ptr %16, align 8, !tbaa !54
  %691 = load i32, ptr %11, align 4, !tbaa !10
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds [8 x i16], ptr %690, i64 %692
  %694 = getelementptr inbounds [8 x i16], ptr %693, i64 0, i64 1
  store i16 %659, ptr %694, align 2, !tbaa !56
  %695 = load ptr, ptr %16, align 8, !tbaa !54
  %696 = load i32, ptr %11, align 4, !tbaa !10
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds [8 x i16], ptr %695, i64 %697
  %699 = getelementptr inbounds [8 x i16], ptr %698, i64 0, i64 0
  store i16 %659, ptr %699, align 2, !tbaa !56
  br label %700

700:                                              ; preds = %655
  %701 = load i32, ptr %11, align 4, !tbaa !10
  %702 = add nsw i32 %701, 1
  store i32 %702, ptr %11, align 4, !tbaa !10
  br label %652, !llvm.loop !98

703:                                              ; preds = %652
  %704 = load i32, ptr %25, align 4, !tbaa !10
  %705 = icmp ne i32 %704, 0
  br i1 %705, label %710, label %706

706:                                              ; preds = %703
  %707 = load ptr, ptr %16, align 8, !tbaa !54
  %708 = getelementptr inbounds [8 x i16], ptr %707, i64 0
  %709 = getelementptr inbounds [8 x i16], ptr %708, i64 0, i64 0
  store i16 -1, ptr %709, align 2, !tbaa !56
  br label %710

710:                                              ; preds = %706, %703
  %711 = load i32, ptr %24, align 4, !tbaa !10
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %1503

713:                                              ; preds = %710
  %714 = load ptr, ptr @img, align 8, !tbaa !14
  %715 = getelementptr inbounds nuw %struct.ImageParameters, ptr %714, i32 0, i32 49
  %716 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %715, i64 0, i64 3
  %717 = getelementptr inbounds [8 x [8 x i16]], ptr %716, i64 0, i64 0
  store ptr %717, ptr %16, align 8, !tbaa !54
  %718 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %719 = zext i16 %718 to i32
  %720 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %721 = zext i16 %720 to i32
  %722 = add nsw i32 %719, %721
  %723 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %724 = zext i16 %723 to i32
  %725 = mul nsw i32 2, %724
  %726 = add nsw i32 %722, %725
  %727 = add nsw i32 %726, 2
  %728 = ashr i32 %727, 2
  %729 = trunc i32 %728 to i16
  %730 = load ptr, ptr %16, align 8, !tbaa !54
  %731 = getelementptr inbounds [8 x i16], ptr %730, i64 0
  %732 = getelementptr inbounds [8 x i16], ptr %731, i64 0, i64 0
  store i16 %729, ptr %732, align 2, !tbaa !56
  %733 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %734 = zext i16 %733 to i32
  %735 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %736 = zext i16 %735 to i32
  %737 = add nsw i32 %734, %736
  %738 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %739 = zext i16 %738 to i32
  %740 = mul nsw i32 2, %739
  %741 = add nsw i32 %737, %740
  %742 = add nsw i32 %741, 2
  %743 = ashr i32 %742, 2
  %744 = trunc i32 %743 to i16
  %745 = load ptr, ptr %16, align 8, !tbaa !54
  %746 = getelementptr inbounds [8 x i16], ptr %745, i64 1
  %747 = getelementptr inbounds [8 x i16], ptr %746, i64 0, i64 0
  store i16 %744, ptr %747, align 2, !tbaa !56
  %748 = load ptr, ptr %16, align 8, !tbaa !54
  %749 = getelementptr inbounds [8 x i16], ptr %748, i64 0
  %750 = getelementptr inbounds [8 x i16], ptr %749, i64 0, i64 1
  store i16 %744, ptr %750, align 2, !tbaa !56
  %751 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %752 = zext i16 %751 to i32
  %753 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %754 = zext i16 %753 to i32
  %755 = add nsw i32 %752, %754
  %756 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %757 = zext i16 %756 to i32
  %758 = mul nsw i32 2, %757
  %759 = add nsw i32 %755, %758
  %760 = add nsw i32 %759, 2
  %761 = ashr i32 %760, 2
  %762 = trunc i32 %761 to i16
  %763 = load ptr, ptr %16, align 8, !tbaa !54
  %764 = getelementptr inbounds [8 x i16], ptr %763, i64 2
  %765 = getelementptr inbounds [8 x i16], ptr %764, i64 0, i64 0
  store i16 %762, ptr %765, align 2, !tbaa !56
  %766 = load ptr, ptr %16, align 8, !tbaa !54
  %767 = getelementptr inbounds [8 x i16], ptr %766, i64 1
  %768 = getelementptr inbounds [8 x i16], ptr %767, i64 0, i64 1
  store i16 %762, ptr %768, align 2, !tbaa !56
  %769 = load ptr, ptr %16, align 8, !tbaa !54
  %770 = getelementptr inbounds [8 x i16], ptr %769, i64 0
  %771 = getelementptr inbounds [8 x i16], ptr %770, i64 0, i64 2
  store i16 %762, ptr %771, align 2, !tbaa !56
  %772 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %773 = zext i16 %772 to i32
  %774 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %775 = zext i16 %774 to i32
  %776 = add nsw i32 %773, %775
  %777 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %778 = zext i16 %777 to i32
  %779 = mul nsw i32 2, %778
  %780 = add nsw i32 %776, %779
  %781 = add nsw i32 %780, 2
  %782 = ashr i32 %781, 2
  %783 = trunc i32 %782 to i16
  %784 = load ptr, ptr %16, align 8, !tbaa !54
  %785 = getelementptr inbounds [8 x i16], ptr %784, i64 3
  %786 = getelementptr inbounds [8 x i16], ptr %785, i64 0, i64 0
  store i16 %783, ptr %786, align 2, !tbaa !56
  %787 = load ptr, ptr %16, align 8, !tbaa !54
  %788 = getelementptr inbounds [8 x i16], ptr %787, i64 2
  %789 = getelementptr inbounds [8 x i16], ptr %788, i64 0, i64 1
  store i16 %783, ptr %789, align 2, !tbaa !56
  %790 = load ptr, ptr %16, align 8, !tbaa !54
  %791 = getelementptr inbounds [8 x i16], ptr %790, i64 1
  %792 = getelementptr inbounds [8 x i16], ptr %791, i64 0, i64 2
  store i16 %783, ptr %792, align 2, !tbaa !56
  %793 = load ptr, ptr %16, align 8, !tbaa !54
  %794 = getelementptr inbounds [8 x i16], ptr %793, i64 0
  %795 = getelementptr inbounds [8 x i16], ptr %794, i64 0, i64 3
  store i16 %783, ptr %795, align 2, !tbaa !56
  %796 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %797 = zext i16 %796 to i32
  %798 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %799 = zext i16 %798 to i32
  %800 = add nsw i32 %797, %799
  %801 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %802 = zext i16 %801 to i32
  %803 = mul nsw i32 2, %802
  %804 = add nsw i32 %800, %803
  %805 = add nsw i32 %804, 2
  %806 = ashr i32 %805, 2
  %807 = trunc i32 %806 to i16
  %808 = load ptr, ptr %16, align 8, !tbaa !54
  %809 = getelementptr inbounds [8 x i16], ptr %808, i64 4
  %810 = getelementptr inbounds [8 x i16], ptr %809, i64 0, i64 0
  store i16 %807, ptr %810, align 2, !tbaa !56
  %811 = load ptr, ptr %16, align 8, !tbaa !54
  %812 = getelementptr inbounds [8 x i16], ptr %811, i64 3
  %813 = getelementptr inbounds [8 x i16], ptr %812, i64 0, i64 1
  store i16 %807, ptr %813, align 2, !tbaa !56
  %814 = load ptr, ptr %16, align 8, !tbaa !54
  %815 = getelementptr inbounds [8 x i16], ptr %814, i64 2
  %816 = getelementptr inbounds [8 x i16], ptr %815, i64 0, i64 2
  store i16 %807, ptr %816, align 2, !tbaa !56
  %817 = load ptr, ptr %16, align 8, !tbaa !54
  %818 = getelementptr inbounds [8 x i16], ptr %817, i64 1
  %819 = getelementptr inbounds [8 x i16], ptr %818, i64 0, i64 3
  store i16 %807, ptr %819, align 2, !tbaa !56
  %820 = load ptr, ptr %16, align 8, !tbaa !54
  %821 = getelementptr inbounds [8 x i16], ptr %820, i64 0
  %822 = getelementptr inbounds [8 x i16], ptr %821, i64 0, i64 4
  store i16 %807, ptr %822, align 2, !tbaa !56
  %823 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %824 = zext i16 %823 to i32
  %825 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  %826 = zext i16 %825 to i32
  %827 = add nsw i32 %824, %826
  %828 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %829 = zext i16 %828 to i32
  %830 = mul nsw i32 2, %829
  %831 = add nsw i32 %827, %830
  %832 = add nsw i32 %831, 2
  %833 = ashr i32 %832, 2
  %834 = trunc i32 %833 to i16
  %835 = load ptr, ptr %16, align 8, !tbaa !54
  %836 = getelementptr inbounds [8 x i16], ptr %835, i64 5
  %837 = getelementptr inbounds [8 x i16], ptr %836, i64 0, i64 0
  store i16 %834, ptr %837, align 2, !tbaa !56
  %838 = load ptr, ptr %16, align 8, !tbaa !54
  %839 = getelementptr inbounds [8 x i16], ptr %838, i64 4
  %840 = getelementptr inbounds [8 x i16], ptr %839, i64 0, i64 1
  store i16 %834, ptr %840, align 2, !tbaa !56
  %841 = load ptr, ptr %16, align 8, !tbaa !54
  %842 = getelementptr inbounds [8 x i16], ptr %841, i64 3
  %843 = getelementptr inbounds [8 x i16], ptr %842, i64 0, i64 2
  store i16 %834, ptr %843, align 2, !tbaa !56
  %844 = load ptr, ptr %16, align 8, !tbaa !54
  %845 = getelementptr inbounds [8 x i16], ptr %844, i64 2
  %846 = getelementptr inbounds [8 x i16], ptr %845, i64 0, i64 3
  store i16 %834, ptr %846, align 2, !tbaa !56
  %847 = load ptr, ptr %16, align 8, !tbaa !54
  %848 = getelementptr inbounds [8 x i16], ptr %847, i64 1
  %849 = getelementptr inbounds [8 x i16], ptr %848, i64 0, i64 4
  store i16 %834, ptr %849, align 2, !tbaa !56
  %850 = load ptr, ptr %16, align 8, !tbaa !54
  %851 = getelementptr inbounds [8 x i16], ptr %850, i64 0
  %852 = getelementptr inbounds [8 x i16], ptr %851, i64 0, i64 5
  store i16 %834, ptr %852, align 2, !tbaa !56
  %853 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %854 = zext i16 %853 to i32
  %855 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 9), align 2, !tbaa !56
  %856 = zext i16 %855 to i32
  %857 = add nsw i32 %854, %856
  %858 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  %859 = zext i16 %858 to i32
  %860 = mul nsw i32 2, %859
  %861 = add nsw i32 %857, %860
  %862 = add nsw i32 %861, 2
  %863 = ashr i32 %862, 2
  %864 = trunc i32 %863 to i16
  %865 = load ptr, ptr %16, align 8, !tbaa !54
  %866 = getelementptr inbounds [8 x i16], ptr %865, i64 6
  %867 = getelementptr inbounds [8 x i16], ptr %866, i64 0, i64 0
  store i16 %864, ptr %867, align 2, !tbaa !56
  %868 = load ptr, ptr %16, align 8, !tbaa !54
  %869 = getelementptr inbounds [8 x i16], ptr %868, i64 5
  %870 = getelementptr inbounds [8 x i16], ptr %869, i64 0, i64 1
  store i16 %864, ptr %870, align 2, !tbaa !56
  %871 = load ptr, ptr %16, align 8, !tbaa !54
  %872 = getelementptr inbounds [8 x i16], ptr %871, i64 4
  %873 = getelementptr inbounds [8 x i16], ptr %872, i64 0, i64 2
  store i16 %864, ptr %873, align 2, !tbaa !56
  %874 = load ptr, ptr %16, align 8, !tbaa !54
  %875 = getelementptr inbounds [8 x i16], ptr %874, i64 3
  %876 = getelementptr inbounds [8 x i16], ptr %875, i64 0, i64 3
  store i16 %864, ptr %876, align 2, !tbaa !56
  %877 = load ptr, ptr %16, align 8, !tbaa !54
  %878 = getelementptr inbounds [8 x i16], ptr %877, i64 2
  %879 = getelementptr inbounds [8 x i16], ptr %878, i64 0, i64 4
  store i16 %864, ptr %879, align 2, !tbaa !56
  %880 = load ptr, ptr %16, align 8, !tbaa !54
  %881 = getelementptr inbounds [8 x i16], ptr %880, i64 1
  %882 = getelementptr inbounds [8 x i16], ptr %881, i64 0, i64 5
  store i16 %864, ptr %882, align 2, !tbaa !56
  %883 = load ptr, ptr %16, align 8, !tbaa !54
  %884 = getelementptr inbounds [8 x i16], ptr %883, i64 0
  %885 = getelementptr inbounds [8 x i16], ptr %884, i64 0, i64 6
  store i16 %864, ptr %885, align 2, !tbaa !56
  %886 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  %887 = zext i16 %886 to i32
  %888 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 10), align 2, !tbaa !56
  %889 = zext i16 %888 to i32
  %890 = add nsw i32 %887, %889
  %891 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 9), align 2, !tbaa !56
  %892 = zext i16 %891 to i32
  %893 = mul nsw i32 2, %892
  %894 = add nsw i32 %890, %893
  %895 = add nsw i32 %894, 2
  %896 = ashr i32 %895, 2
  %897 = trunc i32 %896 to i16
  %898 = load ptr, ptr %16, align 8, !tbaa !54
  %899 = getelementptr inbounds [8 x i16], ptr %898, i64 7
  %900 = getelementptr inbounds [8 x i16], ptr %899, i64 0, i64 0
  store i16 %897, ptr %900, align 2, !tbaa !56
  %901 = load ptr, ptr %16, align 8, !tbaa !54
  %902 = getelementptr inbounds [8 x i16], ptr %901, i64 6
  %903 = getelementptr inbounds [8 x i16], ptr %902, i64 0, i64 1
  store i16 %897, ptr %903, align 2, !tbaa !56
  %904 = load ptr, ptr %16, align 8, !tbaa !54
  %905 = getelementptr inbounds [8 x i16], ptr %904, i64 5
  %906 = getelementptr inbounds [8 x i16], ptr %905, i64 0, i64 2
  store i16 %897, ptr %906, align 2, !tbaa !56
  %907 = load ptr, ptr %16, align 8, !tbaa !54
  %908 = getelementptr inbounds [8 x i16], ptr %907, i64 4
  %909 = getelementptr inbounds [8 x i16], ptr %908, i64 0, i64 3
  store i16 %897, ptr %909, align 2, !tbaa !56
  %910 = load ptr, ptr %16, align 8, !tbaa !54
  %911 = getelementptr inbounds [8 x i16], ptr %910, i64 3
  %912 = getelementptr inbounds [8 x i16], ptr %911, i64 0, i64 4
  store i16 %897, ptr %912, align 2, !tbaa !56
  %913 = load ptr, ptr %16, align 8, !tbaa !54
  %914 = getelementptr inbounds [8 x i16], ptr %913, i64 2
  %915 = getelementptr inbounds [8 x i16], ptr %914, i64 0, i64 5
  store i16 %897, ptr %915, align 2, !tbaa !56
  %916 = load ptr, ptr %16, align 8, !tbaa !54
  %917 = getelementptr inbounds [8 x i16], ptr %916, i64 1
  %918 = getelementptr inbounds [8 x i16], ptr %917, i64 0, i64 6
  store i16 %897, ptr %918, align 2, !tbaa !56
  %919 = load ptr, ptr %16, align 8, !tbaa !54
  %920 = getelementptr inbounds [8 x i16], ptr %919, i64 0
  %921 = getelementptr inbounds [8 x i16], ptr %920, i64 0, i64 7
  store i16 %897, ptr %921, align 2, !tbaa !56
  %922 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 9), align 2, !tbaa !56
  %923 = zext i16 %922 to i32
  %924 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 11), align 2, !tbaa !56
  %925 = zext i16 %924 to i32
  %926 = add nsw i32 %923, %925
  %927 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 10), align 2, !tbaa !56
  %928 = zext i16 %927 to i32
  %929 = mul nsw i32 2, %928
  %930 = add nsw i32 %926, %929
  %931 = add nsw i32 %930, 2
  %932 = ashr i32 %931, 2
  %933 = trunc i32 %932 to i16
  %934 = load ptr, ptr %16, align 8, !tbaa !54
  %935 = getelementptr inbounds [8 x i16], ptr %934, i64 7
  %936 = getelementptr inbounds [8 x i16], ptr %935, i64 0, i64 1
  store i16 %933, ptr %936, align 2, !tbaa !56
  %937 = load ptr, ptr %16, align 8, !tbaa !54
  %938 = getelementptr inbounds [8 x i16], ptr %937, i64 6
  %939 = getelementptr inbounds [8 x i16], ptr %938, i64 0, i64 2
  store i16 %933, ptr %939, align 2, !tbaa !56
  %940 = load ptr, ptr %16, align 8, !tbaa !54
  %941 = getelementptr inbounds [8 x i16], ptr %940, i64 5
  %942 = getelementptr inbounds [8 x i16], ptr %941, i64 0, i64 3
  store i16 %933, ptr %942, align 2, !tbaa !56
  %943 = load ptr, ptr %16, align 8, !tbaa !54
  %944 = getelementptr inbounds [8 x i16], ptr %943, i64 4
  %945 = getelementptr inbounds [8 x i16], ptr %944, i64 0, i64 4
  store i16 %933, ptr %945, align 2, !tbaa !56
  %946 = load ptr, ptr %16, align 8, !tbaa !54
  %947 = getelementptr inbounds [8 x i16], ptr %946, i64 3
  %948 = getelementptr inbounds [8 x i16], ptr %947, i64 0, i64 5
  store i16 %933, ptr %948, align 2, !tbaa !56
  %949 = load ptr, ptr %16, align 8, !tbaa !54
  %950 = getelementptr inbounds [8 x i16], ptr %949, i64 2
  %951 = getelementptr inbounds [8 x i16], ptr %950, i64 0, i64 6
  store i16 %933, ptr %951, align 2, !tbaa !56
  %952 = load ptr, ptr %16, align 8, !tbaa !54
  %953 = getelementptr inbounds [8 x i16], ptr %952, i64 1
  %954 = getelementptr inbounds [8 x i16], ptr %953, i64 0, i64 7
  store i16 %933, ptr %954, align 2, !tbaa !56
  %955 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 10), align 2, !tbaa !56
  %956 = zext i16 %955 to i32
  %957 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 12), align 2, !tbaa !56
  %958 = zext i16 %957 to i32
  %959 = add nsw i32 %956, %958
  %960 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 11), align 2, !tbaa !56
  %961 = zext i16 %960 to i32
  %962 = mul nsw i32 2, %961
  %963 = add nsw i32 %959, %962
  %964 = add nsw i32 %963, 2
  %965 = ashr i32 %964, 2
  %966 = trunc i32 %965 to i16
  %967 = load ptr, ptr %16, align 8, !tbaa !54
  %968 = getelementptr inbounds [8 x i16], ptr %967, i64 7
  %969 = getelementptr inbounds [8 x i16], ptr %968, i64 0, i64 2
  store i16 %966, ptr %969, align 2, !tbaa !56
  %970 = load ptr, ptr %16, align 8, !tbaa !54
  %971 = getelementptr inbounds [8 x i16], ptr %970, i64 6
  %972 = getelementptr inbounds [8 x i16], ptr %971, i64 0, i64 3
  store i16 %966, ptr %972, align 2, !tbaa !56
  %973 = load ptr, ptr %16, align 8, !tbaa !54
  %974 = getelementptr inbounds [8 x i16], ptr %973, i64 5
  %975 = getelementptr inbounds [8 x i16], ptr %974, i64 0, i64 4
  store i16 %966, ptr %975, align 2, !tbaa !56
  %976 = load ptr, ptr %16, align 8, !tbaa !54
  %977 = getelementptr inbounds [8 x i16], ptr %976, i64 4
  %978 = getelementptr inbounds [8 x i16], ptr %977, i64 0, i64 5
  store i16 %966, ptr %978, align 2, !tbaa !56
  %979 = load ptr, ptr %16, align 8, !tbaa !54
  %980 = getelementptr inbounds [8 x i16], ptr %979, i64 3
  %981 = getelementptr inbounds [8 x i16], ptr %980, i64 0, i64 6
  store i16 %966, ptr %981, align 2, !tbaa !56
  %982 = load ptr, ptr %16, align 8, !tbaa !54
  %983 = getelementptr inbounds [8 x i16], ptr %982, i64 2
  %984 = getelementptr inbounds [8 x i16], ptr %983, i64 0, i64 7
  store i16 %966, ptr %984, align 2, !tbaa !56
  %985 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 11), align 2, !tbaa !56
  %986 = zext i16 %985 to i32
  %987 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 13), align 2, !tbaa !56
  %988 = zext i16 %987 to i32
  %989 = add nsw i32 %986, %988
  %990 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 12), align 2, !tbaa !56
  %991 = zext i16 %990 to i32
  %992 = mul nsw i32 2, %991
  %993 = add nsw i32 %989, %992
  %994 = add nsw i32 %993, 2
  %995 = ashr i32 %994, 2
  %996 = trunc i32 %995 to i16
  %997 = load ptr, ptr %16, align 8, !tbaa !54
  %998 = getelementptr inbounds [8 x i16], ptr %997, i64 7
  %999 = getelementptr inbounds [8 x i16], ptr %998, i64 0, i64 3
  store i16 %996, ptr %999, align 2, !tbaa !56
  %1000 = load ptr, ptr %16, align 8, !tbaa !54
  %1001 = getelementptr inbounds [8 x i16], ptr %1000, i64 6
  %1002 = getelementptr inbounds [8 x i16], ptr %1001, i64 0, i64 4
  store i16 %996, ptr %1002, align 2, !tbaa !56
  %1003 = load ptr, ptr %16, align 8, !tbaa !54
  %1004 = getelementptr inbounds [8 x i16], ptr %1003, i64 5
  %1005 = getelementptr inbounds [8 x i16], ptr %1004, i64 0, i64 5
  store i16 %996, ptr %1005, align 2, !tbaa !56
  %1006 = load ptr, ptr %16, align 8, !tbaa !54
  %1007 = getelementptr inbounds [8 x i16], ptr %1006, i64 4
  %1008 = getelementptr inbounds [8 x i16], ptr %1007, i64 0, i64 6
  store i16 %996, ptr %1008, align 2, !tbaa !56
  %1009 = load ptr, ptr %16, align 8, !tbaa !54
  %1010 = getelementptr inbounds [8 x i16], ptr %1009, i64 3
  %1011 = getelementptr inbounds [8 x i16], ptr %1010, i64 0, i64 7
  store i16 %996, ptr %1011, align 2, !tbaa !56
  %1012 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 12), align 2, !tbaa !56
  %1013 = zext i16 %1012 to i32
  %1014 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 14), align 2, !tbaa !56
  %1015 = zext i16 %1014 to i32
  %1016 = add nsw i32 %1013, %1015
  %1017 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 13), align 2, !tbaa !56
  %1018 = zext i16 %1017 to i32
  %1019 = mul nsw i32 2, %1018
  %1020 = add nsw i32 %1016, %1019
  %1021 = add nsw i32 %1020, 2
  %1022 = ashr i32 %1021, 2
  %1023 = trunc i32 %1022 to i16
  %1024 = load ptr, ptr %16, align 8, !tbaa !54
  %1025 = getelementptr inbounds [8 x i16], ptr %1024, i64 7
  %1026 = getelementptr inbounds [8 x i16], ptr %1025, i64 0, i64 4
  store i16 %1023, ptr %1026, align 2, !tbaa !56
  %1027 = load ptr, ptr %16, align 8, !tbaa !54
  %1028 = getelementptr inbounds [8 x i16], ptr %1027, i64 6
  %1029 = getelementptr inbounds [8 x i16], ptr %1028, i64 0, i64 5
  store i16 %1023, ptr %1029, align 2, !tbaa !56
  %1030 = load ptr, ptr %16, align 8, !tbaa !54
  %1031 = getelementptr inbounds [8 x i16], ptr %1030, i64 5
  %1032 = getelementptr inbounds [8 x i16], ptr %1031, i64 0, i64 6
  store i16 %1023, ptr %1032, align 2, !tbaa !56
  %1033 = load ptr, ptr %16, align 8, !tbaa !54
  %1034 = getelementptr inbounds [8 x i16], ptr %1033, i64 4
  %1035 = getelementptr inbounds [8 x i16], ptr %1034, i64 0, i64 7
  store i16 %1023, ptr %1035, align 2, !tbaa !56
  %1036 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 13), align 2, !tbaa !56
  %1037 = zext i16 %1036 to i32
  %1038 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 15), align 2, !tbaa !56
  %1039 = zext i16 %1038 to i32
  %1040 = add nsw i32 %1037, %1039
  %1041 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 14), align 2, !tbaa !56
  %1042 = zext i16 %1041 to i32
  %1043 = mul nsw i32 2, %1042
  %1044 = add nsw i32 %1040, %1043
  %1045 = add nsw i32 %1044, 2
  %1046 = ashr i32 %1045, 2
  %1047 = trunc i32 %1046 to i16
  %1048 = load ptr, ptr %16, align 8, !tbaa !54
  %1049 = getelementptr inbounds [8 x i16], ptr %1048, i64 7
  %1050 = getelementptr inbounds [8 x i16], ptr %1049, i64 0, i64 5
  store i16 %1047, ptr %1050, align 2, !tbaa !56
  %1051 = load ptr, ptr %16, align 8, !tbaa !54
  %1052 = getelementptr inbounds [8 x i16], ptr %1051, i64 6
  %1053 = getelementptr inbounds [8 x i16], ptr %1052, i64 0, i64 6
  store i16 %1047, ptr %1053, align 2, !tbaa !56
  %1054 = load ptr, ptr %16, align 8, !tbaa !54
  %1055 = getelementptr inbounds [8 x i16], ptr %1054, i64 5
  %1056 = getelementptr inbounds [8 x i16], ptr %1055, i64 0, i64 7
  store i16 %1047, ptr %1056, align 2, !tbaa !56
  %1057 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 14), align 2, !tbaa !56
  %1058 = zext i16 %1057 to i32
  %1059 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 16), align 2, !tbaa !56
  %1060 = zext i16 %1059 to i32
  %1061 = add nsw i32 %1058, %1060
  %1062 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 15), align 2, !tbaa !56
  %1063 = zext i16 %1062 to i32
  %1064 = mul nsw i32 2, %1063
  %1065 = add nsw i32 %1061, %1064
  %1066 = add nsw i32 %1065, 2
  %1067 = ashr i32 %1066, 2
  %1068 = trunc i32 %1067 to i16
  %1069 = load ptr, ptr %16, align 8, !tbaa !54
  %1070 = getelementptr inbounds [8 x i16], ptr %1069, i64 7
  %1071 = getelementptr inbounds [8 x i16], ptr %1070, i64 0, i64 6
  store i16 %1068, ptr %1071, align 2, !tbaa !56
  %1072 = load ptr, ptr %16, align 8, !tbaa !54
  %1073 = getelementptr inbounds [8 x i16], ptr %1072, i64 6
  %1074 = getelementptr inbounds [8 x i16], ptr %1073, i64 0, i64 7
  store i16 %1068, ptr %1074, align 2, !tbaa !56
  %1075 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 15), align 2, !tbaa !56
  %1076 = zext i16 %1075 to i32
  %1077 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 16), align 2, !tbaa !56
  %1078 = zext i16 %1077 to i32
  %1079 = mul nsw i32 3, %1078
  %1080 = add nsw i32 %1076, %1079
  %1081 = add nsw i32 %1080, 2
  %1082 = ashr i32 %1081, 2
  %1083 = trunc i32 %1082 to i16
  %1084 = load ptr, ptr %16, align 8, !tbaa !54
  %1085 = getelementptr inbounds [8 x i16], ptr %1084, i64 7
  %1086 = getelementptr inbounds [8 x i16], ptr %1085, i64 0, i64 7
  store i16 %1083, ptr %1086, align 2, !tbaa !56
  %1087 = load ptr, ptr @img, align 8, !tbaa !14
  %1088 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1087, i32 0, i32 49
  %1089 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %1088, i64 0, i64 7
  %1090 = getelementptr inbounds [8 x [8 x i16]], ptr %1089, i64 0, i64 0
  store ptr %1090, ptr %16, align 8, !tbaa !54
  %1091 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %1092 = zext i16 %1091 to i32
  %1093 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %1094 = zext i16 %1093 to i32
  %1095 = add nsw i32 %1092, %1094
  %1096 = add nsw i32 %1095, 1
  %1097 = ashr i32 %1096, 1
  %1098 = trunc i32 %1097 to i16
  %1099 = load ptr, ptr %16, align 8, !tbaa !54
  %1100 = getelementptr inbounds [8 x i16], ptr %1099, i64 0
  %1101 = getelementptr inbounds [8 x i16], ptr %1100, i64 0, i64 0
  store i16 %1098, ptr %1101, align 2, !tbaa !56
  %1102 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %1103 = zext i16 %1102 to i32
  %1104 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %1105 = zext i16 %1104 to i32
  %1106 = add nsw i32 %1103, %1105
  %1107 = add nsw i32 %1106, 1
  %1108 = ashr i32 %1107, 1
  %1109 = trunc i32 %1108 to i16
  %1110 = load ptr, ptr %16, align 8, !tbaa !54
  %1111 = getelementptr inbounds [8 x i16], ptr %1110, i64 2
  %1112 = getelementptr inbounds [8 x i16], ptr %1111, i64 0, i64 0
  store i16 %1109, ptr %1112, align 2, !tbaa !56
  %1113 = load ptr, ptr %16, align 8, !tbaa !54
  %1114 = getelementptr inbounds [8 x i16], ptr %1113, i64 0
  %1115 = getelementptr inbounds [8 x i16], ptr %1114, i64 0, i64 1
  store i16 %1109, ptr %1115, align 2, !tbaa !56
  %1116 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %1117 = zext i16 %1116 to i32
  %1118 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %1119 = zext i16 %1118 to i32
  %1120 = add nsw i32 %1117, %1119
  %1121 = add nsw i32 %1120, 1
  %1122 = ashr i32 %1121, 1
  %1123 = trunc i32 %1122 to i16
  %1124 = load ptr, ptr %16, align 8, !tbaa !54
  %1125 = getelementptr inbounds [8 x i16], ptr %1124, i64 4
  %1126 = getelementptr inbounds [8 x i16], ptr %1125, i64 0, i64 0
  store i16 %1123, ptr %1126, align 2, !tbaa !56
  %1127 = load ptr, ptr %16, align 8, !tbaa !54
  %1128 = getelementptr inbounds [8 x i16], ptr %1127, i64 2
  %1129 = getelementptr inbounds [8 x i16], ptr %1128, i64 0, i64 1
  store i16 %1123, ptr %1129, align 2, !tbaa !56
  %1130 = load ptr, ptr %16, align 8, !tbaa !54
  %1131 = getelementptr inbounds [8 x i16], ptr %1130, i64 0
  %1132 = getelementptr inbounds [8 x i16], ptr %1131, i64 0, i64 2
  store i16 %1123, ptr %1132, align 2, !tbaa !56
  %1133 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %1134 = zext i16 %1133 to i32
  %1135 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %1136 = zext i16 %1135 to i32
  %1137 = add nsw i32 %1134, %1136
  %1138 = add nsw i32 %1137, 1
  %1139 = ashr i32 %1138, 1
  %1140 = trunc i32 %1139 to i16
  %1141 = load ptr, ptr %16, align 8, !tbaa !54
  %1142 = getelementptr inbounds [8 x i16], ptr %1141, i64 6
  %1143 = getelementptr inbounds [8 x i16], ptr %1142, i64 0, i64 0
  store i16 %1140, ptr %1143, align 2, !tbaa !56
  %1144 = load ptr, ptr %16, align 8, !tbaa !54
  %1145 = getelementptr inbounds [8 x i16], ptr %1144, i64 4
  %1146 = getelementptr inbounds [8 x i16], ptr %1145, i64 0, i64 1
  store i16 %1140, ptr %1146, align 2, !tbaa !56
  %1147 = load ptr, ptr %16, align 8, !tbaa !54
  %1148 = getelementptr inbounds [8 x i16], ptr %1147, i64 2
  %1149 = getelementptr inbounds [8 x i16], ptr %1148, i64 0, i64 2
  store i16 %1140, ptr %1149, align 2, !tbaa !56
  %1150 = load ptr, ptr %16, align 8, !tbaa !54
  %1151 = getelementptr inbounds [8 x i16], ptr %1150, i64 0
  %1152 = getelementptr inbounds [8 x i16], ptr %1151, i64 0, i64 3
  store i16 %1140, ptr %1152, align 2, !tbaa !56
  %1153 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %1154 = zext i16 %1153 to i32
  %1155 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %1156 = zext i16 %1155 to i32
  %1157 = add nsw i32 %1154, %1156
  %1158 = add nsw i32 %1157, 1
  %1159 = ashr i32 %1158, 1
  %1160 = trunc i32 %1159 to i16
  %1161 = load ptr, ptr %16, align 8, !tbaa !54
  %1162 = getelementptr inbounds [8 x i16], ptr %1161, i64 6
  %1163 = getelementptr inbounds [8 x i16], ptr %1162, i64 0, i64 1
  store i16 %1160, ptr %1163, align 2, !tbaa !56
  %1164 = load ptr, ptr %16, align 8, !tbaa !54
  %1165 = getelementptr inbounds [8 x i16], ptr %1164, i64 4
  %1166 = getelementptr inbounds [8 x i16], ptr %1165, i64 0, i64 2
  store i16 %1160, ptr %1166, align 2, !tbaa !56
  %1167 = load ptr, ptr %16, align 8, !tbaa !54
  %1168 = getelementptr inbounds [8 x i16], ptr %1167, i64 2
  %1169 = getelementptr inbounds [8 x i16], ptr %1168, i64 0, i64 3
  store i16 %1160, ptr %1169, align 2, !tbaa !56
  %1170 = load ptr, ptr %16, align 8, !tbaa !54
  %1171 = getelementptr inbounds [8 x i16], ptr %1170, i64 0
  %1172 = getelementptr inbounds [8 x i16], ptr %1171, i64 0, i64 4
  store i16 %1160, ptr %1172, align 2, !tbaa !56
  %1173 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %1174 = zext i16 %1173 to i32
  %1175 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %1176 = zext i16 %1175 to i32
  %1177 = add nsw i32 %1174, %1176
  %1178 = add nsw i32 %1177, 1
  %1179 = ashr i32 %1178, 1
  %1180 = trunc i32 %1179 to i16
  %1181 = load ptr, ptr %16, align 8, !tbaa !54
  %1182 = getelementptr inbounds [8 x i16], ptr %1181, i64 6
  %1183 = getelementptr inbounds [8 x i16], ptr %1182, i64 0, i64 2
  store i16 %1180, ptr %1183, align 2, !tbaa !56
  %1184 = load ptr, ptr %16, align 8, !tbaa !54
  %1185 = getelementptr inbounds [8 x i16], ptr %1184, i64 4
  %1186 = getelementptr inbounds [8 x i16], ptr %1185, i64 0, i64 3
  store i16 %1180, ptr %1186, align 2, !tbaa !56
  %1187 = load ptr, ptr %16, align 8, !tbaa !54
  %1188 = getelementptr inbounds [8 x i16], ptr %1187, i64 2
  %1189 = getelementptr inbounds [8 x i16], ptr %1188, i64 0, i64 4
  store i16 %1180, ptr %1189, align 2, !tbaa !56
  %1190 = load ptr, ptr %16, align 8, !tbaa !54
  %1191 = getelementptr inbounds [8 x i16], ptr %1190, i64 0
  %1192 = getelementptr inbounds [8 x i16], ptr %1191, i64 0, i64 5
  store i16 %1180, ptr %1192, align 2, !tbaa !56
  %1193 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %1194 = zext i16 %1193 to i32
  %1195 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  %1196 = zext i16 %1195 to i32
  %1197 = add nsw i32 %1194, %1196
  %1198 = add nsw i32 %1197, 1
  %1199 = ashr i32 %1198, 1
  %1200 = trunc i32 %1199 to i16
  %1201 = load ptr, ptr %16, align 8, !tbaa !54
  %1202 = getelementptr inbounds [8 x i16], ptr %1201, i64 6
  %1203 = getelementptr inbounds [8 x i16], ptr %1202, i64 0, i64 3
  store i16 %1200, ptr %1203, align 2, !tbaa !56
  %1204 = load ptr, ptr %16, align 8, !tbaa !54
  %1205 = getelementptr inbounds [8 x i16], ptr %1204, i64 4
  %1206 = getelementptr inbounds [8 x i16], ptr %1205, i64 0, i64 4
  store i16 %1200, ptr %1206, align 2, !tbaa !56
  %1207 = load ptr, ptr %16, align 8, !tbaa !54
  %1208 = getelementptr inbounds [8 x i16], ptr %1207, i64 2
  %1209 = getelementptr inbounds [8 x i16], ptr %1208, i64 0, i64 5
  store i16 %1200, ptr %1209, align 2, !tbaa !56
  %1210 = load ptr, ptr %16, align 8, !tbaa !54
  %1211 = getelementptr inbounds [8 x i16], ptr %1210, i64 0
  %1212 = getelementptr inbounds [8 x i16], ptr %1211, i64 0, i64 6
  store i16 %1200, ptr %1212, align 2, !tbaa !56
  %1213 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  %1214 = zext i16 %1213 to i32
  %1215 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 9), align 2, !tbaa !56
  %1216 = zext i16 %1215 to i32
  %1217 = add nsw i32 %1214, %1216
  %1218 = add nsw i32 %1217, 1
  %1219 = ashr i32 %1218, 1
  %1220 = trunc i32 %1219 to i16
  %1221 = load ptr, ptr %16, align 8, !tbaa !54
  %1222 = getelementptr inbounds [8 x i16], ptr %1221, i64 6
  %1223 = getelementptr inbounds [8 x i16], ptr %1222, i64 0, i64 4
  store i16 %1220, ptr %1223, align 2, !tbaa !56
  %1224 = load ptr, ptr %16, align 8, !tbaa !54
  %1225 = getelementptr inbounds [8 x i16], ptr %1224, i64 4
  %1226 = getelementptr inbounds [8 x i16], ptr %1225, i64 0, i64 5
  store i16 %1220, ptr %1226, align 2, !tbaa !56
  %1227 = load ptr, ptr %16, align 8, !tbaa !54
  %1228 = getelementptr inbounds [8 x i16], ptr %1227, i64 2
  %1229 = getelementptr inbounds [8 x i16], ptr %1228, i64 0, i64 6
  store i16 %1220, ptr %1229, align 2, !tbaa !56
  %1230 = load ptr, ptr %16, align 8, !tbaa !54
  %1231 = getelementptr inbounds [8 x i16], ptr %1230, i64 0
  %1232 = getelementptr inbounds [8 x i16], ptr %1231, i64 0, i64 7
  store i16 %1220, ptr %1232, align 2, !tbaa !56
  %1233 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 9), align 2, !tbaa !56
  %1234 = zext i16 %1233 to i32
  %1235 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 10), align 2, !tbaa !56
  %1236 = zext i16 %1235 to i32
  %1237 = add nsw i32 %1234, %1236
  %1238 = add nsw i32 %1237, 1
  %1239 = ashr i32 %1238, 1
  %1240 = trunc i32 %1239 to i16
  %1241 = load ptr, ptr %16, align 8, !tbaa !54
  %1242 = getelementptr inbounds [8 x i16], ptr %1241, i64 6
  %1243 = getelementptr inbounds [8 x i16], ptr %1242, i64 0, i64 5
  store i16 %1240, ptr %1243, align 2, !tbaa !56
  %1244 = load ptr, ptr %16, align 8, !tbaa !54
  %1245 = getelementptr inbounds [8 x i16], ptr %1244, i64 4
  %1246 = getelementptr inbounds [8 x i16], ptr %1245, i64 0, i64 6
  store i16 %1240, ptr %1246, align 2, !tbaa !56
  %1247 = load ptr, ptr %16, align 8, !tbaa !54
  %1248 = getelementptr inbounds [8 x i16], ptr %1247, i64 2
  %1249 = getelementptr inbounds [8 x i16], ptr %1248, i64 0, i64 7
  store i16 %1240, ptr %1249, align 2, !tbaa !56
  %1250 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 10), align 2, !tbaa !56
  %1251 = zext i16 %1250 to i32
  %1252 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 11), align 2, !tbaa !56
  %1253 = zext i16 %1252 to i32
  %1254 = add nsw i32 %1251, %1253
  %1255 = add nsw i32 %1254, 1
  %1256 = ashr i32 %1255, 1
  %1257 = trunc i32 %1256 to i16
  %1258 = load ptr, ptr %16, align 8, !tbaa !54
  %1259 = getelementptr inbounds [8 x i16], ptr %1258, i64 6
  %1260 = getelementptr inbounds [8 x i16], ptr %1259, i64 0, i64 6
  store i16 %1257, ptr %1260, align 2, !tbaa !56
  %1261 = load ptr, ptr %16, align 8, !tbaa !54
  %1262 = getelementptr inbounds [8 x i16], ptr %1261, i64 4
  %1263 = getelementptr inbounds [8 x i16], ptr %1262, i64 0, i64 7
  store i16 %1257, ptr %1263, align 2, !tbaa !56
  %1264 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 11), align 2, !tbaa !56
  %1265 = zext i16 %1264 to i32
  %1266 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 12), align 2, !tbaa !56
  %1267 = zext i16 %1266 to i32
  %1268 = add nsw i32 %1265, %1267
  %1269 = add nsw i32 %1268, 1
  %1270 = ashr i32 %1269, 1
  %1271 = trunc i32 %1270 to i16
  %1272 = load ptr, ptr %16, align 8, !tbaa !54
  %1273 = getelementptr inbounds [8 x i16], ptr %1272, i64 6
  %1274 = getelementptr inbounds [8 x i16], ptr %1273, i64 0, i64 7
  store i16 %1271, ptr %1274, align 2, !tbaa !56
  %1275 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %1276 = zext i16 %1275 to i32
  %1277 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %1278 = zext i16 %1277 to i32
  %1279 = add nsw i32 %1276, %1278
  %1280 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %1281 = zext i16 %1280 to i32
  %1282 = mul nsw i32 2, %1281
  %1283 = add nsw i32 %1279, %1282
  %1284 = add nsw i32 %1283, 2
  %1285 = ashr i32 %1284, 2
  %1286 = trunc i32 %1285 to i16
  %1287 = load ptr, ptr %16, align 8, !tbaa !54
  %1288 = getelementptr inbounds [8 x i16], ptr %1287, i64 1
  %1289 = getelementptr inbounds [8 x i16], ptr %1288, i64 0, i64 0
  store i16 %1286, ptr %1289, align 2, !tbaa !56
  %1290 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %1291 = zext i16 %1290 to i32
  %1292 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %1293 = zext i16 %1292 to i32
  %1294 = add nsw i32 %1291, %1293
  %1295 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %1296 = zext i16 %1295 to i32
  %1297 = mul nsw i32 2, %1296
  %1298 = add nsw i32 %1294, %1297
  %1299 = add nsw i32 %1298, 2
  %1300 = ashr i32 %1299, 2
  %1301 = trunc i32 %1300 to i16
  %1302 = load ptr, ptr %16, align 8, !tbaa !54
  %1303 = getelementptr inbounds [8 x i16], ptr %1302, i64 3
  %1304 = getelementptr inbounds [8 x i16], ptr %1303, i64 0, i64 0
  store i16 %1301, ptr %1304, align 2, !tbaa !56
  %1305 = load ptr, ptr %16, align 8, !tbaa !54
  %1306 = getelementptr inbounds [8 x i16], ptr %1305, i64 1
  %1307 = getelementptr inbounds [8 x i16], ptr %1306, i64 0, i64 1
  store i16 %1301, ptr %1307, align 2, !tbaa !56
  %1308 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %1309 = zext i16 %1308 to i32
  %1310 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %1311 = zext i16 %1310 to i32
  %1312 = add nsw i32 %1309, %1311
  %1313 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %1314 = zext i16 %1313 to i32
  %1315 = mul nsw i32 2, %1314
  %1316 = add nsw i32 %1312, %1315
  %1317 = add nsw i32 %1316, 2
  %1318 = ashr i32 %1317, 2
  %1319 = trunc i32 %1318 to i16
  %1320 = load ptr, ptr %16, align 8, !tbaa !54
  %1321 = getelementptr inbounds [8 x i16], ptr %1320, i64 5
  %1322 = getelementptr inbounds [8 x i16], ptr %1321, i64 0, i64 0
  store i16 %1319, ptr %1322, align 2, !tbaa !56
  %1323 = load ptr, ptr %16, align 8, !tbaa !54
  %1324 = getelementptr inbounds [8 x i16], ptr %1323, i64 3
  %1325 = getelementptr inbounds [8 x i16], ptr %1324, i64 0, i64 1
  store i16 %1319, ptr %1325, align 2, !tbaa !56
  %1326 = load ptr, ptr %16, align 8, !tbaa !54
  %1327 = getelementptr inbounds [8 x i16], ptr %1326, i64 1
  %1328 = getelementptr inbounds [8 x i16], ptr %1327, i64 0, i64 2
  store i16 %1319, ptr %1328, align 2, !tbaa !56
  %1329 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %1330 = zext i16 %1329 to i32
  %1331 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %1332 = zext i16 %1331 to i32
  %1333 = add nsw i32 %1330, %1332
  %1334 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %1335 = zext i16 %1334 to i32
  %1336 = mul nsw i32 2, %1335
  %1337 = add nsw i32 %1333, %1336
  %1338 = add nsw i32 %1337, 2
  %1339 = ashr i32 %1338, 2
  %1340 = trunc i32 %1339 to i16
  %1341 = load ptr, ptr %16, align 8, !tbaa !54
  %1342 = getelementptr inbounds [8 x i16], ptr %1341, i64 7
  %1343 = getelementptr inbounds [8 x i16], ptr %1342, i64 0, i64 0
  store i16 %1340, ptr %1343, align 2, !tbaa !56
  %1344 = load ptr, ptr %16, align 8, !tbaa !54
  %1345 = getelementptr inbounds [8 x i16], ptr %1344, i64 5
  %1346 = getelementptr inbounds [8 x i16], ptr %1345, i64 0, i64 1
  store i16 %1340, ptr %1346, align 2, !tbaa !56
  %1347 = load ptr, ptr %16, align 8, !tbaa !54
  %1348 = getelementptr inbounds [8 x i16], ptr %1347, i64 3
  %1349 = getelementptr inbounds [8 x i16], ptr %1348, i64 0, i64 2
  store i16 %1340, ptr %1349, align 2, !tbaa !56
  %1350 = load ptr, ptr %16, align 8, !tbaa !54
  %1351 = getelementptr inbounds [8 x i16], ptr %1350, i64 1
  %1352 = getelementptr inbounds [8 x i16], ptr %1351, i64 0, i64 3
  store i16 %1340, ptr %1352, align 2, !tbaa !56
  %1353 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %1354 = zext i16 %1353 to i32
  %1355 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %1356 = zext i16 %1355 to i32
  %1357 = add nsw i32 %1354, %1356
  %1358 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %1359 = zext i16 %1358 to i32
  %1360 = mul nsw i32 2, %1359
  %1361 = add nsw i32 %1357, %1360
  %1362 = add nsw i32 %1361, 2
  %1363 = ashr i32 %1362, 2
  %1364 = trunc i32 %1363 to i16
  %1365 = load ptr, ptr %16, align 8, !tbaa !54
  %1366 = getelementptr inbounds [8 x i16], ptr %1365, i64 7
  %1367 = getelementptr inbounds [8 x i16], ptr %1366, i64 0, i64 1
  store i16 %1364, ptr %1367, align 2, !tbaa !56
  %1368 = load ptr, ptr %16, align 8, !tbaa !54
  %1369 = getelementptr inbounds [8 x i16], ptr %1368, i64 5
  %1370 = getelementptr inbounds [8 x i16], ptr %1369, i64 0, i64 2
  store i16 %1364, ptr %1370, align 2, !tbaa !56
  %1371 = load ptr, ptr %16, align 8, !tbaa !54
  %1372 = getelementptr inbounds [8 x i16], ptr %1371, i64 3
  %1373 = getelementptr inbounds [8 x i16], ptr %1372, i64 0, i64 3
  store i16 %1364, ptr %1373, align 2, !tbaa !56
  %1374 = load ptr, ptr %16, align 8, !tbaa !54
  %1375 = getelementptr inbounds [8 x i16], ptr %1374, i64 1
  %1376 = getelementptr inbounds [8 x i16], ptr %1375, i64 0, i64 4
  store i16 %1364, ptr %1376, align 2, !tbaa !56
  %1377 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %1378 = zext i16 %1377 to i32
  %1379 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  %1380 = zext i16 %1379 to i32
  %1381 = add nsw i32 %1378, %1380
  %1382 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %1383 = zext i16 %1382 to i32
  %1384 = mul nsw i32 2, %1383
  %1385 = add nsw i32 %1381, %1384
  %1386 = add nsw i32 %1385, 2
  %1387 = ashr i32 %1386, 2
  %1388 = trunc i32 %1387 to i16
  %1389 = load ptr, ptr %16, align 8, !tbaa !54
  %1390 = getelementptr inbounds [8 x i16], ptr %1389, i64 7
  %1391 = getelementptr inbounds [8 x i16], ptr %1390, i64 0, i64 2
  store i16 %1388, ptr %1391, align 2, !tbaa !56
  %1392 = load ptr, ptr %16, align 8, !tbaa !54
  %1393 = getelementptr inbounds [8 x i16], ptr %1392, i64 5
  %1394 = getelementptr inbounds [8 x i16], ptr %1393, i64 0, i64 3
  store i16 %1388, ptr %1394, align 2, !tbaa !56
  %1395 = load ptr, ptr %16, align 8, !tbaa !54
  %1396 = getelementptr inbounds [8 x i16], ptr %1395, i64 3
  %1397 = getelementptr inbounds [8 x i16], ptr %1396, i64 0, i64 4
  store i16 %1388, ptr %1397, align 2, !tbaa !56
  %1398 = load ptr, ptr %16, align 8, !tbaa !54
  %1399 = getelementptr inbounds [8 x i16], ptr %1398, i64 1
  %1400 = getelementptr inbounds [8 x i16], ptr %1399, i64 0, i64 5
  store i16 %1388, ptr %1400, align 2, !tbaa !56
  %1401 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %1402 = zext i16 %1401 to i32
  %1403 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 9), align 2, !tbaa !56
  %1404 = zext i16 %1403 to i32
  %1405 = add nsw i32 %1402, %1404
  %1406 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  %1407 = zext i16 %1406 to i32
  %1408 = mul nsw i32 2, %1407
  %1409 = add nsw i32 %1405, %1408
  %1410 = add nsw i32 %1409, 2
  %1411 = ashr i32 %1410, 2
  %1412 = trunc i32 %1411 to i16
  %1413 = load ptr, ptr %16, align 8, !tbaa !54
  %1414 = getelementptr inbounds [8 x i16], ptr %1413, i64 7
  %1415 = getelementptr inbounds [8 x i16], ptr %1414, i64 0, i64 3
  store i16 %1412, ptr %1415, align 2, !tbaa !56
  %1416 = load ptr, ptr %16, align 8, !tbaa !54
  %1417 = getelementptr inbounds [8 x i16], ptr %1416, i64 5
  %1418 = getelementptr inbounds [8 x i16], ptr %1417, i64 0, i64 4
  store i16 %1412, ptr %1418, align 2, !tbaa !56
  %1419 = load ptr, ptr %16, align 8, !tbaa !54
  %1420 = getelementptr inbounds [8 x i16], ptr %1419, i64 3
  %1421 = getelementptr inbounds [8 x i16], ptr %1420, i64 0, i64 5
  store i16 %1412, ptr %1421, align 2, !tbaa !56
  %1422 = load ptr, ptr %16, align 8, !tbaa !54
  %1423 = getelementptr inbounds [8 x i16], ptr %1422, i64 1
  %1424 = getelementptr inbounds [8 x i16], ptr %1423, i64 0, i64 6
  store i16 %1412, ptr %1424, align 2, !tbaa !56
  %1425 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  %1426 = zext i16 %1425 to i32
  %1427 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 10), align 2, !tbaa !56
  %1428 = zext i16 %1427 to i32
  %1429 = add nsw i32 %1426, %1428
  %1430 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 9), align 2, !tbaa !56
  %1431 = zext i16 %1430 to i32
  %1432 = mul nsw i32 2, %1431
  %1433 = add nsw i32 %1429, %1432
  %1434 = add nsw i32 %1433, 2
  %1435 = ashr i32 %1434, 2
  %1436 = trunc i32 %1435 to i16
  %1437 = load ptr, ptr %16, align 8, !tbaa !54
  %1438 = getelementptr inbounds [8 x i16], ptr %1437, i64 7
  %1439 = getelementptr inbounds [8 x i16], ptr %1438, i64 0, i64 4
  store i16 %1436, ptr %1439, align 2, !tbaa !56
  %1440 = load ptr, ptr %16, align 8, !tbaa !54
  %1441 = getelementptr inbounds [8 x i16], ptr %1440, i64 5
  %1442 = getelementptr inbounds [8 x i16], ptr %1441, i64 0, i64 5
  store i16 %1436, ptr %1442, align 2, !tbaa !56
  %1443 = load ptr, ptr %16, align 8, !tbaa !54
  %1444 = getelementptr inbounds [8 x i16], ptr %1443, i64 3
  %1445 = getelementptr inbounds [8 x i16], ptr %1444, i64 0, i64 6
  store i16 %1436, ptr %1445, align 2, !tbaa !56
  %1446 = load ptr, ptr %16, align 8, !tbaa !54
  %1447 = getelementptr inbounds [8 x i16], ptr %1446, i64 1
  %1448 = getelementptr inbounds [8 x i16], ptr %1447, i64 0, i64 7
  store i16 %1436, ptr %1448, align 2, !tbaa !56
  %1449 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 9), align 2, !tbaa !56
  %1450 = zext i16 %1449 to i32
  %1451 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 11), align 2, !tbaa !56
  %1452 = zext i16 %1451 to i32
  %1453 = add nsw i32 %1450, %1452
  %1454 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 10), align 2, !tbaa !56
  %1455 = zext i16 %1454 to i32
  %1456 = mul nsw i32 2, %1455
  %1457 = add nsw i32 %1453, %1456
  %1458 = add nsw i32 %1457, 2
  %1459 = ashr i32 %1458, 2
  %1460 = trunc i32 %1459 to i16
  %1461 = load ptr, ptr %16, align 8, !tbaa !54
  %1462 = getelementptr inbounds [8 x i16], ptr %1461, i64 7
  %1463 = getelementptr inbounds [8 x i16], ptr %1462, i64 0, i64 5
  store i16 %1460, ptr %1463, align 2, !tbaa !56
  %1464 = load ptr, ptr %16, align 8, !tbaa !54
  %1465 = getelementptr inbounds [8 x i16], ptr %1464, i64 5
  %1466 = getelementptr inbounds [8 x i16], ptr %1465, i64 0, i64 6
  store i16 %1460, ptr %1466, align 2, !tbaa !56
  %1467 = load ptr, ptr %16, align 8, !tbaa !54
  %1468 = getelementptr inbounds [8 x i16], ptr %1467, i64 3
  %1469 = getelementptr inbounds [8 x i16], ptr %1468, i64 0, i64 7
  store i16 %1460, ptr %1469, align 2, !tbaa !56
  %1470 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 10), align 2, !tbaa !56
  %1471 = zext i16 %1470 to i32
  %1472 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 12), align 2, !tbaa !56
  %1473 = zext i16 %1472 to i32
  %1474 = add nsw i32 %1471, %1473
  %1475 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 11), align 2, !tbaa !56
  %1476 = zext i16 %1475 to i32
  %1477 = mul nsw i32 2, %1476
  %1478 = add nsw i32 %1474, %1477
  %1479 = add nsw i32 %1478, 2
  %1480 = ashr i32 %1479, 2
  %1481 = trunc i32 %1480 to i16
  %1482 = load ptr, ptr %16, align 8, !tbaa !54
  %1483 = getelementptr inbounds [8 x i16], ptr %1482, i64 7
  %1484 = getelementptr inbounds [8 x i16], ptr %1483, i64 0, i64 6
  store i16 %1481, ptr %1484, align 2, !tbaa !56
  %1485 = load ptr, ptr %16, align 8, !tbaa !54
  %1486 = getelementptr inbounds [8 x i16], ptr %1485, i64 5
  %1487 = getelementptr inbounds [8 x i16], ptr %1486, i64 0, i64 7
  store i16 %1481, ptr %1487, align 2, !tbaa !56
  %1488 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 11), align 2, !tbaa !56
  %1489 = zext i16 %1488 to i32
  %1490 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 13), align 2, !tbaa !56
  %1491 = zext i16 %1490 to i32
  %1492 = add nsw i32 %1489, %1491
  %1493 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 12), align 2, !tbaa !56
  %1494 = zext i16 %1493 to i32
  %1495 = mul nsw i32 2, %1494
  %1496 = add nsw i32 %1492, %1495
  %1497 = add nsw i32 %1496, 2
  %1498 = ashr i32 %1497, 2
  %1499 = trunc i32 %1498 to i16
  %1500 = load ptr, ptr %16, align 8, !tbaa !54
  %1501 = getelementptr inbounds [8 x i16], ptr %1500, i64 7
  %1502 = getelementptr inbounds [8 x i16], ptr %1501, i64 0, i64 7
  store i16 %1499, ptr %1502, align 2, !tbaa !56
  br label %1503

1503:                                             ; preds = %713, %710
  %1504 = load i32, ptr %24, align 4, !tbaa !10
  %1505 = icmp ne i32 %1504, 0
  br i1 %1505, label %1506, label %2745

1506:                                             ; preds = %1503
  %1507 = load i32, ptr %25, align 4, !tbaa !10
  %1508 = icmp ne i32 %1507, 0
  br i1 %1508, label %1509, label %2745

1509:                                             ; preds = %1506
  %1510 = load i32, ptr %26, align 4, !tbaa !10
  %1511 = icmp ne i32 %1510, 0
  br i1 %1511, label %1512, label %2745

1512:                                             ; preds = %1509
  %1513 = load ptr, ptr @img, align 8, !tbaa !14
  %1514 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1513, i32 0, i32 49
  %1515 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %1514, i64 0, i64 4
  %1516 = getelementptr inbounds [8 x [8 x i16]], ptr %1515, i64 0, i64 0
  store ptr %1516, ptr %16, align 8, !tbaa !54
  %1517 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 24), align 2, !tbaa !56
  %1518 = zext i16 %1517 to i32
  %1519 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %1520 = zext i16 %1519 to i32
  %1521 = add nsw i32 %1518, %1520
  %1522 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %1523 = zext i16 %1522 to i32
  %1524 = mul nsw i32 2, %1523
  %1525 = add nsw i32 %1521, %1524
  %1526 = add nsw i32 %1525, 2
  %1527 = ashr i32 %1526, 2
  %1528 = trunc i32 %1527 to i16
  %1529 = load ptr, ptr %16, align 8, !tbaa !54
  %1530 = getelementptr inbounds [8 x i16], ptr %1529, i64 7
  %1531 = getelementptr inbounds [8 x i16], ptr %1530, i64 0, i64 0
  store i16 %1528, ptr %1531, align 2, !tbaa !56
  %1532 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %1533 = zext i16 %1532 to i32
  %1534 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %1535 = zext i16 %1534 to i32
  %1536 = add nsw i32 %1533, %1535
  %1537 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %1538 = zext i16 %1537 to i32
  %1539 = mul nsw i32 2, %1538
  %1540 = add nsw i32 %1536, %1539
  %1541 = add nsw i32 %1540, 2
  %1542 = ashr i32 %1541, 2
  %1543 = trunc i32 %1542 to i16
  %1544 = load ptr, ptr %16, align 8, !tbaa !54
  %1545 = getelementptr inbounds [8 x i16], ptr %1544, i64 7
  %1546 = getelementptr inbounds [8 x i16], ptr %1545, i64 0, i64 1
  store i16 %1543, ptr %1546, align 2, !tbaa !56
  %1547 = load ptr, ptr %16, align 8, !tbaa !54
  %1548 = getelementptr inbounds [8 x i16], ptr %1547, i64 6
  %1549 = getelementptr inbounds [8 x i16], ptr %1548, i64 0, i64 0
  store i16 %1543, ptr %1549, align 2, !tbaa !56
  %1550 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %1551 = zext i16 %1550 to i32
  %1552 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %1553 = zext i16 %1552 to i32
  %1554 = add nsw i32 %1551, %1553
  %1555 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %1556 = zext i16 %1555 to i32
  %1557 = mul nsw i32 2, %1556
  %1558 = add nsw i32 %1554, %1557
  %1559 = add nsw i32 %1558, 2
  %1560 = ashr i32 %1559, 2
  %1561 = trunc i32 %1560 to i16
  %1562 = load ptr, ptr %16, align 8, !tbaa !54
  %1563 = getelementptr inbounds [8 x i16], ptr %1562, i64 7
  %1564 = getelementptr inbounds [8 x i16], ptr %1563, i64 0, i64 2
  store i16 %1561, ptr %1564, align 2, !tbaa !56
  %1565 = load ptr, ptr %16, align 8, !tbaa !54
  %1566 = getelementptr inbounds [8 x i16], ptr %1565, i64 6
  %1567 = getelementptr inbounds [8 x i16], ptr %1566, i64 0, i64 1
  store i16 %1561, ptr %1567, align 2, !tbaa !56
  %1568 = load ptr, ptr %16, align 8, !tbaa !54
  %1569 = getelementptr inbounds [8 x i16], ptr %1568, i64 5
  %1570 = getelementptr inbounds [8 x i16], ptr %1569, i64 0, i64 0
  store i16 %1561, ptr %1570, align 2, !tbaa !56
  %1571 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %1572 = zext i16 %1571 to i32
  %1573 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %1574 = zext i16 %1573 to i32
  %1575 = add nsw i32 %1572, %1574
  %1576 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %1577 = zext i16 %1576 to i32
  %1578 = mul nsw i32 2, %1577
  %1579 = add nsw i32 %1575, %1578
  %1580 = add nsw i32 %1579, 2
  %1581 = ashr i32 %1580, 2
  %1582 = trunc i32 %1581 to i16
  %1583 = load ptr, ptr %16, align 8, !tbaa !54
  %1584 = getelementptr inbounds [8 x i16], ptr %1583, i64 7
  %1585 = getelementptr inbounds [8 x i16], ptr %1584, i64 0, i64 3
  store i16 %1582, ptr %1585, align 2, !tbaa !56
  %1586 = load ptr, ptr %16, align 8, !tbaa !54
  %1587 = getelementptr inbounds [8 x i16], ptr %1586, i64 6
  %1588 = getelementptr inbounds [8 x i16], ptr %1587, i64 0, i64 2
  store i16 %1582, ptr %1588, align 2, !tbaa !56
  %1589 = load ptr, ptr %16, align 8, !tbaa !54
  %1590 = getelementptr inbounds [8 x i16], ptr %1589, i64 5
  %1591 = getelementptr inbounds [8 x i16], ptr %1590, i64 0, i64 1
  store i16 %1582, ptr %1591, align 2, !tbaa !56
  %1592 = load ptr, ptr %16, align 8, !tbaa !54
  %1593 = getelementptr inbounds [8 x i16], ptr %1592, i64 4
  %1594 = getelementptr inbounds [8 x i16], ptr %1593, i64 0, i64 0
  store i16 %1582, ptr %1594, align 2, !tbaa !56
  %1595 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %1596 = zext i16 %1595 to i32
  %1597 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %1598 = zext i16 %1597 to i32
  %1599 = add nsw i32 %1596, %1598
  %1600 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %1601 = zext i16 %1600 to i32
  %1602 = mul nsw i32 2, %1601
  %1603 = add nsw i32 %1599, %1602
  %1604 = add nsw i32 %1603, 2
  %1605 = ashr i32 %1604, 2
  %1606 = trunc i32 %1605 to i16
  %1607 = load ptr, ptr %16, align 8, !tbaa !54
  %1608 = getelementptr inbounds [8 x i16], ptr %1607, i64 7
  %1609 = getelementptr inbounds [8 x i16], ptr %1608, i64 0, i64 4
  store i16 %1606, ptr %1609, align 2, !tbaa !56
  %1610 = load ptr, ptr %16, align 8, !tbaa !54
  %1611 = getelementptr inbounds [8 x i16], ptr %1610, i64 6
  %1612 = getelementptr inbounds [8 x i16], ptr %1611, i64 0, i64 3
  store i16 %1606, ptr %1612, align 2, !tbaa !56
  %1613 = load ptr, ptr %16, align 8, !tbaa !54
  %1614 = getelementptr inbounds [8 x i16], ptr %1613, i64 5
  %1615 = getelementptr inbounds [8 x i16], ptr %1614, i64 0, i64 2
  store i16 %1606, ptr %1615, align 2, !tbaa !56
  %1616 = load ptr, ptr %16, align 8, !tbaa !54
  %1617 = getelementptr inbounds [8 x i16], ptr %1616, i64 4
  %1618 = getelementptr inbounds [8 x i16], ptr %1617, i64 0, i64 1
  store i16 %1606, ptr %1618, align 2, !tbaa !56
  %1619 = load ptr, ptr %16, align 8, !tbaa !54
  %1620 = getelementptr inbounds [8 x i16], ptr %1619, i64 3
  %1621 = getelementptr inbounds [8 x i16], ptr %1620, i64 0, i64 0
  store i16 %1606, ptr %1621, align 2, !tbaa !56
  %1622 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %1623 = zext i16 %1622 to i32
  %1624 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %1625 = zext i16 %1624 to i32
  %1626 = add nsw i32 %1623, %1625
  %1627 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %1628 = zext i16 %1627 to i32
  %1629 = mul nsw i32 2, %1628
  %1630 = add nsw i32 %1626, %1629
  %1631 = add nsw i32 %1630, 2
  %1632 = ashr i32 %1631, 2
  %1633 = trunc i32 %1632 to i16
  %1634 = load ptr, ptr %16, align 8, !tbaa !54
  %1635 = getelementptr inbounds [8 x i16], ptr %1634, i64 7
  %1636 = getelementptr inbounds [8 x i16], ptr %1635, i64 0, i64 5
  store i16 %1633, ptr %1636, align 2, !tbaa !56
  %1637 = load ptr, ptr %16, align 8, !tbaa !54
  %1638 = getelementptr inbounds [8 x i16], ptr %1637, i64 6
  %1639 = getelementptr inbounds [8 x i16], ptr %1638, i64 0, i64 4
  store i16 %1633, ptr %1639, align 2, !tbaa !56
  %1640 = load ptr, ptr %16, align 8, !tbaa !54
  %1641 = getelementptr inbounds [8 x i16], ptr %1640, i64 5
  %1642 = getelementptr inbounds [8 x i16], ptr %1641, i64 0, i64 3
  store i16 %1633, ptr %1642, align 2, !tbaa !56
  %1643 = load ptr, ptr %16, align 8, !tbaa !54
  %1644 = getelementptr inbounds [8 x i16], ptr %1643, i64 4
  %1645 = getelementptr inbounds [8 x i16], ptr %1644, i64 0, i64 2
  store i16 %1633, ptr %1645, align 2, !tbaa !56
  %1646 = load ptr, ptr %16, align 8, !tbaa !54
  %1647 = getelementptr inbounds [8 x i16], ptr %1646, i64 3
  %1648 = getelementptr inbounds [8 x i16], ptr %1647, i64 0, i64 1
  store i16 %1633, ptr %1648, align 2, !tbaa !56
  %1649 = load ptr, ptr %16, align 8, !tbaa !54
  %1650 = getelementptr inbounds [8 x i16], ptr %1649, i64 2
  %1651 = getelementptr inbounds [8 x i16], ptr %1650, i64 0, i64 0
  store i16 %1633, ptr %1651, align 2, !tbaa !56
  %1652 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %1653 = zext i16 %1652 to i32
  %1654 = load i16, ptr @intrapred_luma8x8.PredPel, align 2, !tbaa !56
  %1655 = zext i16 %1654 to i32
  %1656 = add nsw i32 %1653, %1655
  %1657 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %1658 = zext i16 %1657 to i32
  %1659 = mul nsw i32 2, %1658
  %1660 = add nsw i32 %1656, %1659
  %1661 = add nsw i32 %1660, 2
  %1662 = ashr i32 %1661, 2
  %1663 = trunc i32 %1662 to i16
  %1664 = load ptr, ptr %16, align 8, !tbaa !54
  %1665 = getelementptr inbounds [8 x i16], ptr %1664, i64 7
  %1666 = getelementptr inbounds [8 x i16], ptr %1665, i64 0, i64 6
  store i16 %1663, ptr %1666, align 2, !tbaa !56
  %1667 = load ptr, ptr %16, align 8, !tbaa !54
  %1668 = getelementptr inbounds [8 x i16], ptr %1667, i64 6
  %1669 = getelementptr inbounds [8 x i16], ptr %1668, i64 0, i64 5
  store i16 %1663, ptr %1669, align 2, !tbaa !56
  %1670 = load ptr, ptr %16, align 8, !tbaa !54
  %1671 = getelementptr inbounds [8 x i16], ptr %1670, i64 5
  %1672 = getelementptr inbounds [8 x i16], ptr %1671, i64 0, i64 4
  store i16 %1663, ptr %1672, align 2, !tbaa !56
  %1673 = load ptr, ptr %16, align 8, !tbaa !54
  %1674 = getelementptr inbounds [8 x i16], ptr %1673, i64 4
  %1675 = getelementptr inbounds [8 x i16], ptr %1674, i64 0, i64 3
  store i16 %1663, ptr %1675, align 2, !tbaa !56
  %1676 = load ptr, ptr %16, align 8, !tbaa !54
  %1677 = getelementptr inbounds [8 x i16], ptr %1676, i64 3
  %1678 = getelementptr inbounds [8 x i16], ptr %1677, i64 0, i64 2
  store i16 %1663, ptr %1678, align 2, !tbaa !56
  %1679 = load ptr, ptr %16, align 8, !tbaa !54
  %1680 = getelementptr inbounds [8 x i16], ptr %1679, i64 2
  %1681 = getelementptr inbounds [8 x i16], ptr %1680, i64 0, i64 1
  store i16 %1663, ptr %1681, align 2, !tbaa !56
  %1682 = load ptr, ptr %16, align 8, !tbaa !54
  %1683 = getelementptr inbounds [8 x i16], ptr %1682, i64 1
  %1684 = getelementptr inbounds [8 x i16], ptr %1683, i64 0, i64 0
  store i16 %1663, ptr %1684, align 2, !tbaa !56
  %1685 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %1686 = zext i16 %1685 to i32
  %1687 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %1688 = zext i16 %1687 to i32
  %1689 = add nsw i32 %1686, %1688
  %1690 = load i16, ptr @intrapred_luma8x8.PredPel, align 2, !tbaa !56
  %1691 = zext i16 %1690 to i32
  %1692 = mul nsw i32 2, %1691
  %1693 = add nsw i32 %1689, %1692
  %1694 = add nsw i32 %1693, 2
  %1695 = ashr i32 %1694, 2
  %1696 = trunc i32 %1695 to i16
  %1697 = load ptr, ptr %16, align 8, !tbaa !54
  %1698 = getelementptr inbounds [8 x i16], ptr %1697, i64 7
  %1699 = getelementptr inbounds [8 x i16], ptr %1698, i64 0, i64 7
  store i16 %1696, ptr %1699, align 2, !tbaa !56
  %1700 = load ptr, ptr %16, align 8, !tbaa !54
  %1701 = getelementptr inbounds [8 x i16], ptr %1700, i64 6
  %1702 = getelementptr inbounds [8 x i16], ptr %1701, i64 0, i64 6
  store i16 %1696, ptr %1702, align 2, !tbaa !56
  %1703 = load ptr, ptr %16, align 8, !tbaa !54
  %1704 = getelementptr inbounds [8 x i16], ptr %1703, i64 5
  %1705 = getelementptr inbounds [8 x i16], ptr %1704, i64 0, i64 5
  store i16 %1696, ptr %1705, align 2, !tbaa !56
  %1706 = load ptr, ptr %16, align 8, !tbaa !54
  %1707 = getelementptr inbounds [8 x i16], ptr %1706, i64 4
  %1708 = getelementptr inbounds [8 x i16], ptr %1707, i64 0, i64 4
  store i16 %1696, ptr %1708, align 2, !tbaa !56
  %1709 = load ptr, ptr %16, align 8, !tbaa !54
  %1710 = getelementptr inbounds [8 x i16], ptr %1709, i64 3
  %1711 = getelementptr inbounds [8 x i16], ptr %1710, i64 0, i64 3
  store i16 %1696, ptr %1711, align 2, !tbaa !56
  %1712 = load ptr, ptr %16, align 8, !tbaa !54
  %1713 = getelementptr inbounds [8 x i16], ptr %1712, i64 2
  %1714 = getelementptr inbounds [8 x i16], ptr %1713, i64 0, i64 2
  store i16 %1696, ptr %1714, align 2, !tbaa !56
  %1715 = load ptr, ptr %16, align 8, !tbaa !54
  %1716 = getelementptr inbounds [8 x i16], ptr %1715, i64 1
  %1717 = getelementptr inbounds [8 x i16], ptr %1716, i64 0, i64 1
  store i16 %1696, ptr %1717, align 2, !tbaa !56
  %1718 = load ptr, ptr %16, align 8, !tbaa !54
  %1719 = getelementptr inbounds [8 x i16], ptr %1718, i64 0
  %1720 = getelementptr inbounds [8 x i16], ptr %1719, i64 0, i64 0
  store i16 %1696, ptr %1720, align 2, !tbaa !56
  %1721 = load i16, ptr @intrapred_luma8x8.PredPel, align 2, !tbaa !56
  %1722 = zext i16 %1721 to i32
  %1723 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %1724 = zext i16 %1723 to i32
  %1725 = add nsw i32 %1722, %1724
  %1726 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %1727 = zext i16 %1726 to i32
  %1728 = mul nsw i32 2, %1727
  %1729 = add nsw i32 %1725, %1728
  %1730 = add nsw i32 %1729, 2
  %1731 = ashr i32 %1730, 2
  %1732 = trunc i32 %1731 to i16
  %1733 = load ptr, ptr %16, align 8, !tbaa !54
  %1734 = getelementptr inbounds [8 x i16], ptr %1733, i64 6
  %1735 = getelementptr inbounds [8 x i16], ptr %1734, i64 0, i64 7
  store i16 %1732, ptr %1735, align 2, !tbaa !56
  %1736 = load ptr, ptr %16, align 8, !tbaa !54
  %1737 = getelementptr inbounds [8 x i16], ptr %1736, i64 5
  %1738 = getelementptr inbounds [8 x i16], ptr %1737, i64 0, i64 6
  store i16 %1732, ptr %1738, align 2, !tbaa !56
  %1739 = load ptr, ptr %16, align 8, !tbaa !54
  %1740 = getelementptr inbounds [8 x i16], ptr %1739, i64 4
  %1741 = getelementptr inbounds [8 x i16], ptr %1740, i64 0, i64 5
  store i16 %1732, ptr %1741, align 2, !tbaa !56
  %1742 = load ptr, ptr %16, align 8, !tbaa !54
  %1743 = getelementptr inbounds [8 x i16], ptr %1742, i64 3
  %1744 = getelementptr inbounds [8 x i16], ptr %1743, i64 0, i64 4
  store i16 %1732, ptr %1744, align 2, !tbaa !56
  %1745 = load ptr, ptr %16, align 8, !tbaa !54
  %1746 = getelementptr inbounds [8 x i16], ptr %1745, i64 2
  %1747 = getelementptr inbounds [8 x i16], ptr %1746, i64 0, i64 3
  store i16 %1732, ptr %1747, align 2, !tbaa !56
  %1748 = load ptr, ptr %16, align 8, !tbaa !54
  %1749 = getelementptr inbounds [8 x i16], ptr %1748, i64 1
  %1750 = getelementptr inbounds [8 x i16], ptr %1749, i64 0, i64 2
  store i16 %1732, ptr %1750, align 2, !tbaa !56
  %1751 = load ptr, ptr %16, align 8, !tbaa !54
  %1752 = getelementptr inbounds [8 x i16], ptr %1751, i64 0
  %1753 = getelementptr inbounds [8 x i16], ptr %1752, i64 0, i64 1
  store i16 %1732, ptr %1753, align 2, !tbaa !56
  %1754 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %1755 = zext i16 %1754 to i32
  %1756 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %1757 = zext i16 %1756 to i32
  %1758 = add nsw i32 %1755, %1757
  %1759 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %1760 = zext i16 %1759 to i32
  %1761 = mul nsw i32 2, %1760
  %1762 = add nsw i32 %1758, %1761
  %1763 = add nsw i32 %1762, 2
  %1764 = ashr i32 %1763, 2
  %1765 = trunc i32 %1764 to i16
  %1766 = load ptr, ptr %16, align 8, !tbaa !54
  %1767 = getelementptr inbounds [8 x i16], ptr %1766, i64 5
  %1768 = getelementptr inbounds [8 x i16], ptr %1767, i64 0, i64 7
  store i16 %1765, ptr %1768, align 2, !tbaa !56
  %1769 = load ptr, ptr %16, align 8, !tbaa !54
  %1770 = getelementptr inbounds [8 x i16], ptr %1769, i64 4
  %1771 = getelementptr inbounds [8 x i16], ptr %1770, i64 0, i64 6
  store i16 %1765, ptr %1771, align 2, !tbaa !56
  %1772 = load ptr, ptr %16, align 8, !tbaa !54
  %1773 = getelementptr inbounds [8 x i16], ptr %1772, i64 3
  %1774 = getelementptr inbounds [8 x i16], ptr %1773, i64 0, i64 5
  store i16 %1765, ptr %1774, align 2, !tbaa !56
  %1775 = load ptr, ptr %16, align 8, !tbaa !54
  %1776 = getelementptr inbounds [8 x i16], ptr %1775, i64 2
  %1777 = getelementptr inbounds [8 x i16], ptr %1776, i64 0, i64 4
  store i16 %1765, ptr %1777, align 2, !tbaa !56
  %1778 = load ptr, ptr %16, align 8, !tbaa !54
  %1779 = getelementptr inbounds [8 x i16], ptr %1778, i64 1
  %1780 = getelementptr inbounds [8 x i16], ptr %1779, i64 0, i64 3
  store i16 %1765, ptr %1780, align 2, !tbaa !56
  %1781 = load ptr, ptr %16, align 8, !tbaa !54
  %1782 = getelementptr inbounds [8 x i16], ptr %1781, i64 0
  %1783 = getelementptr inbounds [8 x i16], ptr %1782, i64 0, i64 2
  store i16 %1765, ptr %1783, align 2, !tbaa !56
  %1784 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %1785 = zext i16 %1784 to i32
  %1786 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %1787 = zext i16 %1786 to i32
  %1788 = add nsw i32 %1785, %1787
  %1789 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %1790 = zext i16 %1789 to i32
  %1791 = mul nsw i32 2, %1790
  %1792 = add nsw i32 %1788, %1791
  %1793 = add nsw i32 %1792, 2
  %1794 = ashr i32 %1793, 2
  %1795 = trunc i32 %1794 to i16
  %1796 = load ptr, ptr %16, align 8, !tbaa !54
  %1797 = getelementptr inbounds [8 x i16], ptr %1796, i64 4
  %1798 = getelementptr inbounds [8 x i16], ptr %1797, i64 0, i64 7
  store i16 %1795, ptr %1798, align 2, !tbaa !56
  %1799 = load ptr, ptr %16, align 8, !tbaa !54
  %1800 = getelementptr inbounds [8 x i16], ptr %1799, i64 3
  %1801 = getelementptr inbounds [8 x i16], ptr %1800, i64 0, i64 6
  store i16 %1795, ptr %1801, align 2, !tbaa !56
  %1802 = load ptr, ptr %16, align 8, !tbaa !54
  %1803 = getelementptr inbounds [8 x i16], ptr %1802, i64 2
  %1804 = getelementptr inbounds [8 x i16], ptr %1803, i64 0, i64 5
  store i16 %1795, ptr %1804, align 2, !tbaa !56
  %1805 = load ptr, ptr %16, align 8, !tbaa !54
  %1806 = getelementptr inbounds [8 x i16], ptr %1805, i64 1
  %1807 = getelementptr inbounds [8 x i16], ptr %1806, i64 0, i64 4
  store i16 %1795, ptr %1807, align 2, !tbaa !56
  %1808 = load ptr, ptr %16, align 8, !tbaa !54
  %1809 = getelementptr inbounds [8 x i16], ptr %1808, i64 0
  %1810 = getelementptr inbounds [8 x i16], ptr %1809, i64 0, i64 3
  store i16 %1795, ptr %1810, align 2, !tbaa !56
  %1811 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %1812 = zext i16 %1811 to i32
  %1813 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %1814 = zext i16 %1813 to i32
  %1815 = add nsw i32 %1812, %1814
  %1816 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %1817 = zext i16 %1816 to i32
  %1818 = mul nsw i32 2, %1817
  %1819 = add nsw i32 %1815, %1818
  %1820 = add nsw i32 %1819, 2
  %1821 = ashr i32 %1820, 2
  %1822 = trunc i32 %1821 to i16
  %1823 = load ptr, ptr %16, align 8, !tbaa !54
  %1824 = getelementptr inbounds [8 x i16], ptr %1823, i64 3
  %1825 = getelementptr inbounds [8 x i16], ptr %1824, i64 0, i64 7
  store i16 %1822, ptr %1825, align 2, !tbaa !56
  %1826 = load ptr, ptr %16, align 8, !tbaa !54
  %1827 = getelementptr inbounds [8 x i16], ptr %1826, i64 2
  %1828 = getelementptr inbounds [8 x i16], ptr %1827, i64 0, i64 6
  store i16 %1822, ptr %1828, align 2, !tbaa !56
  %1829 = load ptr, ptr %16, align 8, !tbaa !54
  %1830 = getelementptr inbounds [8 x i16], ptr %1829, i64 1
  %1831 = getelementptr inbounds [8 x i16], ptr %1830, i64 0, i64 5
  store i16 %1822, ptr %1831, align 2, !tbaa !56
  %1832 = load ptr, ptr %16, align 8, !tbaa !54
  %1833 = getelementptr inbounds [8 x i16], ptr %1832, i64 0
  %1834 = getelementptr inbounds [8 x i16], ptr %1833, i64 0, i64 4
  store i16 %1822, ptr %1834, align 2, !tbaa !56
  %1835 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %1836 = zext i16 %1835 to i32
  %1837 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %1838 = zext i16 %1837 to i32
  %1839 = add nsw i32 %1836, %1838
  %1840 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %1841 = zext i16 %1840 to i32
  %1842 = mul nsw i32 2, %1841
  %1843 = add nsw i32 %1839, %1842
  %1844 = add nsw i32 %1843, 2
  %1845 = ashr i32 %1844, 2
  %1846 = trunc i32 %1845 to i16
  %1847 = load ptr, ptr %16, align 8, !tbaa !54
  %1848 = getelementptr inbounds [8 x i16], ptr %1847, i64 2
  %1849 = getelementptr inbounds [8 x i16], ptr %1848, i64 0, i64 7
  store i16 %1846, ptr %1849, align 2, !tbaa !56
  %1850 = load ptr, ptr %16, align 8, !tbaa !54
  %1851 = getelementptr inbounds [8 x i16], ptr %1850, i64 1
  %1852 = getelementptr inbounds [8 x i16], ptr %1851, i64 0, i64 6
  store i16 %1846, ptr %1852, align 2, !tbaa !56
  %1853 = load ptr, ptr %16, align 8, !tbaa !54
  %1854 = getelementptr inbounds [8 x i16], ptr %1853, i64 0
  %1855 = getelementptr inbounds [8 x i16], ptr %1854, i64 0, i64 5
  store i16 %1846, ptr %1855, align 2, !tbaa !56
  %1856 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %1857 = zext i16 %1856 to i32
  %1858 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %1859 = zext i16 %1858 to i32
  %1860 = add nsw i32 %1857, %1859
  %1861 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %1862 = zext i16 %1861 to i32
  %1863 = mul nsw i32 2, %1862
  %1864 = add nsw i32 %1860, %1863
  %1865 = add nsw i32 %1864, 2
  %1866 = ashr i32 %1865, 2
  %1867 = trunc i32 %1866 to i16
  %1868 = load ptr, ptr %16, align 8, !tbaa !54
  %1869 = getelementptr inbounds [8 x i16], ptr %1868, i64 1
  %1870 = getelementptr inbounds [8 x i16], ptr %1869, i64 0, i64 7
  store i16 %1867, ptr %1870, align 2, !tbaa !56
  %1871 = load ptr, ptr %16, align 8, !tbaa !54
  %1872 = getelementptr inbounds [8 x i16], ptr %1871, i64 0
  %1873 = getelementptr inbounds [8 x i16], ptr %1872, i64 0, i64 6
  store i16 %1867, ptr %1873, align 2, !tbaa !56
  %1874 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %1875 = zext i16 %1874 to i32
  %1876 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  %1877 = zext i16 %1876 to i32
  %1878 = add nsw i32 %1875, %1877
  %1879 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %1880 = zext i16 %1879 to i32
  %1881 = mul nsw i32 2, %1880
  %1882 = add nsw i32 %1878, %1881
  %1883 = add nsw i32 %1882, 2
  %1884 = ashr i32 %1883, 2
  %1885 = trunc i32 %1884 to i16
  %1886 = load ptr, ptr %16, align 8, !tbaa !54
  %1887 = getelementptr inbounds [8 x i16], ptr %1886, i64 0
  %1888 = getelementptr inbounds [8 x i16], ptr %1887, i64 0, i64 7
  store i16 %1885, ptr %1888, align 2, !tbaa !56
  %1889 = load ptr, ptr @img, align 8, !tbaa !14
  %1890 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1889, i32 0, i32 49
  %1891 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %1890, i64 0, i64 5
  %1892 = getelementptr inbounds [8 x [8 x i16]], ptr %1891, i64 0, i64 0
  store ptr %1892, ptr %16, align 8, !tbaa !54
  %1893 = load i16, ptr @intrapred_luma8x8.PredPel, align 2, !tbaa !56
  %1894 = zext i16 %1893 to i32
  %1895 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %1896 = zext i16 %1895 to i32
  %1897 = add nsw i32 %1894, %1896
  %1898 = add nsw i32 %1897, 1
  %1899 = ashr i32 %1898, 1
  %1900 = trunc i32 %1899 to i16
  %1901 = load ptr, ptr %16, align 8, !tbaa !54
  %1902 = getelementptr inbounds [8 x i16], ptr %1901, i64 6
  %1903 = getelementptr inbounds [8 x i16], ptr %1902, i64 0, i64 3
  store i16 %1900, ptr %1903, align 2, !tbaa !56
  %1904 = load ptr, ptr %16, align 8, !tbaa !54
  %1905 = getelementptr inbounds [8 x i16], ptr %1904, i64 4
  %1906 = getelementptr inbounds [8 x i16], ptr %1905, i64 0, i64 2
  store i16 %1900, ptr %1906, align 2, !tbaa !56
  %1907 = load ptr, ptr %16, align 8, !tbaa !54
  %1908 = getelementptr inbounds [8 x i16], ptr %1907, i64 2
  %1909 = getelementptr inbounds [8 x i16], ptr %1908, i64 0, i64 1
  store i16 %1900, ptr %1909, align 2, !tbaa !56
  %1910 = load ptr, ptr %16, align 8, !tbaa !54
  %1911 = getelementptr inbounds [8 x i16], ptr %1910, i64 0
  %1912 = getelementptr inbounds [8 x i16], ptr %1911, i64 0, i64 0
  store i16 %1900, ptr %1912, align 2, !tbaa !56
  %1913 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %1914 = zext i16 %1913 to i32
  %1915 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %1916 = zext i16 %1915 to i32
  %1917 = add nsw i32 %1914, %1916
  %1918 = add nsw i32 %1917, 1
  %1919 = ashr i32 %1918, 1
  %1920 = trunc i32 %1919 to i16
  %1921 = load ptr, ptr %16, align 8, !tbaa !54
  %1922 = getelementptr inbounds [8 x i16], ptr %1921, i64 6
  %1923 = getelementptr inbounds [8 x i16], ptr %1922, i64 0, i64 4
  store i16 %1920, ptr %1923, align 2, !tbaa !56
  %1924 = load ptr, ptr %16, align 8, !tbaa !54
  %1925 = getelementptr inbounds [8 x i16], ptr %1924, i64 4
  %1926 = getelementptr inbounds [8 x i16], ptr %1925, i64 0, i64 3
  store i16 %1920, ptr %1926, align 2, !tbaa !56
  %1927 = load ptr, ptr %16, align 8, !tbaa !54
  %1928 = getelementptr inbounds [8 x i16], ptr %1927, i64 2
  %1929 = getelementptr inbounds [8 x i16], ptr %1928, i64 0, i64 2
  store i16 %1920, ptr %1929, align 2, !tbaa !56
  %1930 = load ptr, ptr %16, align 8, !tbaa !54
  %1931 = getelementptr inbounds [8 x i16], ptr %1930, i64 0
  %1932 = getelementptr inbounds [8 x i16], ptr %1931, i64 0, i64 1
  store i16 %1920, ptr %1932, align 2, !tbaa !56
  %1933 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %1934 = zext i16 %1933 to i32
  %1935 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %1936 = zext i16 %1935 to i32
  %1937 = add nsw i32 %1934, %1936
  %1938 = add nsw i32 %1937, 1
  %1939 = ashr i32 %1938, 1
  %1940 = trunc i32 %1939 to i16
  %1941 = load ptr, ptr %16, align 8, !tbaa !54
  %1942 = getelementptr inbounds [8 x i16], ptr %1941, i64 6
  %1943 = getelementptr inbounds [8 x i16], ptr %1942, i64 0, i64 5
  store i16 %1940, ptr %1943, align 2, !tbaa !56
  %1944 = load ptr, ptr %16, align 8, !tbaa !54
  %1945 = getelementptr inbounds [8 x i16], ptr %1944, i64 4
  %1946 = getelementptr inbounds [8 x i16], ptr %1945, i64 0, i64 4
  store i16 %1940, ptr %1946, align 2, !tbaa !56
  %1947 = load ptr, ptr %16, align 8, !tbaa !54
  %1948 = getelementptr inbounds [8 x i16], ptr %1947, i64 2
  %1949 = getelementptr inbounds [8 x i16], ptr %1948, i64 0, i64 3
  store i16 %1940, ptr %1949, align 2, !tbaa !56
  %1950 = load ptr, ptr %16, align 8, !tbaa !54
  %1951 = getelementptr inbounds [8 x i16], ptr %1950, i64 0
  %1952 = getelementptr inbounds [8 x i16], ptr %1951, i64 0, i64 2
  store i16 %1940, ptr %1952, align 2, !tbaa !56
  %1953 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %1954 = zext i16 %1953 to i32
  %1955 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %1956 = zext i16 %1955 to i32
  %1957 = add nsw i32 %1954, %1956
  %1958 = add nsw i32 %1957, 1
  %1959 = ashr i32 %1958, 1
  %1960 = trunc i32 %1959 to i16
  %1961 = load ptr, ptr %16, align 8, !tbaa !54
  %1962 = getelementptr inbounds [8 x i16], ptr %1961, i64 6
  %1963 = getelementptr inbounds [8 x i16], ptr %1962, i64 0, i64 6
  store i16 %1960, ptr %1963, align 2, !tbaa !56
  %1964 = load ptr, ptr %16, align 8, !tbaa !54
  %1965 = getelementptr inbounds [8 x i16], ptr %1964, i64 4
  %1966 = getelementptr inbounds [8 x i16], ptr %1965, i64 0, i64 5
  store i16 %1960, ptr %1966, align 2, !tbaa !56
  %1967 = load ptr, ptr %16, align 8, !tbaa !54
  %1968 = getelementptr inbounds [8 x i16], ptr %1967, i64 2
  %1969 = getelementptr inbounds [8 x i16], ptr %1968, i64 0, i64 4
  store i16 %1960, ptr %1969, align 2, !tbaa !56
  %1970 = load ptr, ptr %16, align 8, !tbaa !54
  %1971 = getelementptr inbounds [8 x i16], ptr %1970, i64 0
  %1972 = getelementptr inbounds [8 x i16], ptr %1971, i64 0, i64 3
  store i16 %1960, ptr %1972, align 2, !tbaa !56
  %1973 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %1974 = zext i16 %1973 to i32
  %1975 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %1976 = zext i16 %1975 to i32
  %1977 = add nsw i32 %1974, %1976
  %1978 = add nsw i32 %1977, 1
  %1979 = ashr i32 %1978, 1
  %1980 = trunc i32 %1979 to i16
  %1981 = load ptr, ptr %16, align 8, !tbaa !54
  %1982 = getelementptr inbounds [8 x i16], ptr %1981, i64 6
  %1983 = getelementptr inbounds [8 x i16], ptr %1982, i64 0, i64 7
  store i16 %1980, ptr %1983, align 2, !tbaa !56
  %1984 = load ptr, ptr %16, align 8, !tbaa !54
  %1985 = getelementptr inbounds [8 x i16], ptr %1984, i64 4
  %1986 = getelementptr inbounds [8 x i16], ptr %1985, i64 0, i64 6
  store i16 %1980, ptr %1986, align 2, !tbaa !56
  %1987 = load ptr, ptr %16, align 8, !tbaa !54
  %1988 = getelementptr inbounds [8 x i16], ptr %1987, i64 2
  %1989 = getelementptr inbounds [8 x i16], ptr %1988, i64 0, i64 5
  store i16 %1980, ptr %1989, align 2, !tbaa !56
  %1990 = load ptr, ptr %16, align 8, !tbaa !54
  %1991 = getelementptr inbounds [8 x i16], ptr %1990, i64 0
  %1992 = getelementptr inbounds [8 x i16], ptr %1991, i64 0, i64 4
  store i16 %1980, ptr %1992, align 2, !tbaa !56
  %1993 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %1994 = zext i16 %1993 to i32
  %1995 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %1996 = zext i16 %1995 to i32
  %1997 = add nsw i32 %1994, %1996
  %1998 = add nsw i32 %1997, 1
  %1999 = ashr i32 %1998, 1
  %2000 = trunc i32 %1999 to i16
  %2001 = load ptr, ptr %16, align 8, !tbaa !54
  %2002 = getelementptr inbounds [8 x i16], ptr %2001, i64 4
  %2003 = getelementptr inbounds [8 x i16], ptr %2002, i64 0, i64 7
  store i16 %2000, ptr %2003, align 2, !tbaa !56
  %2004 = load ptr, ptr %16, align 8, !tbaa !54
  %2005 = getelementptr inbounds [8 x i16], ptr %2004, i64 2
  %2006 = getelementptr inbounds [8 x i16], ptr %2005, i64 0, i64 6
  store i16 %2000, ptr %2006, align 2, !tbaa !56
  %2007 = load ptr, ptr %16, align 8, !tbaa !54
  %2008 = getelementptr inbounds [8 x i16], ptr %2007, i64 0
  %2009 = getelementptr inbounds [8 x i16], ptr %2008, i64 0, i64 5
  store i16 %2000, ptr %2009, align 2, !tbaa !56
  %2010 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %2011 = zext i16 %2010 to i32
  %2012 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %2013 = zext i16 %2012 to i32
  %2014 = add nsw i32 %2011, %2013
  %2015 = add nsw i32 %2014, 1
  %2016 = ashr i32 %2015, 1
  %2017 = trunc i32 %2016 to i16
  %2018 = load ptr, ptr %16, align 8, !tbaa !54
  %2019 = getelementptr inbounds [8 x i16], ptr %2018, i64 2
  %2020 = getelementptr inbounds [8 x i16], ptr %2019, i64 0, i64 7
  store i16 %2017, ptr %2020, align 2, !tbaa !56
  %2021 = load ptr, ptr %16, align 8, !tbaa !54
  %2022 = getelementptr inbounds [8 x i16], ptr %2021, i64 0
  %2023 = getelementptr inbounds [8 x i16], ptr %2022, i64 0, i64 6
  store i16 %2017, ptr %2023, align 2, !tbaa !56
  %2024 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %2025 = zext i16 %2024 to i32
  %2026 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  %2027 = zext i16 %2026 to i32
  %2028 = add nsw i32 %2025, %2027
  %2029 = add nsw i32 %2028, 1
  %2030 = ashr i32 %2029, 1
  %2031 = trunc i32 %2030 to i16
  %2032 = load ptr, ptr %16, align 8, !tbaa !54
  %2033 = getelementptr inbounds [8 x i16], ptr %2032, i64 0
  %2034 = getelementptr inbounds [8 x i16], ptr %2033, i64 0, i64 7
  store i16 %2031, ptr %2034, align 2, !tbaa !56
  %2035 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %2036 = zext i16 %2035 to i32
  %2037 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %2038 = zext i16 %2037 to i32
  %2039 = add nsw i32 %2036, %2038
  %2040 = load i16, ptr @intrapred_luma8x8.PredPel, align 2, !tbaa !56
  %2041 = zext i16 %2040 to i32
  %2042 = mul nsw i32 2, %2041
  %2043 = add nsw i32 %2039, %2042
  %2044 = add nsw i32 %2043, 2
  %2045 = ashr i32 %2044, 2
  %2046 = trunc i32 %2045 to i16
  %2047 = load ptr, ptr %16, align 8, !tbaa !54
  %2048 = getelementptr inbounds [8 x i16], ptr %2047, i64 7
  %2049 = getelementptr inbounds [8 x i16], ptr %2048, i64 0, i64 3
  store i16 %2046, ptr %2049, align 2, !tbaa !56
  %2050 = load ptr, ptr %16, align 8, !tbaa !54
  %2051 = getelementptr inbounds [8 x i16], ptr %2050, i64 5
  %2052 = getelementptr inbounds [8 x i16], ptr %2051, i64 0, i64 2
  store i16 %2046, ptr %2052, align 2, !tbaa !56
  %2053 = load ptr, ptr %16, align 8, !tbaa !54
  %2054 = getelementptr inbounds [8 x i16], ptr %2053, i64 3
  %2055 = getelementptr inbounds [8 x i16], ptr %2054, i64 0, i64 1
  store i16 %2046, ptr %2055, align 2, !tbaa !56
  %2056 = load ptr, ptr %16, align 8, !tbaa !54
  %2057 = getelementptr inbounds [8 x i16], ptr %2056, i64 1
  %2058 = getelementptr inbounds [8 x i16], ptr %2057, i64 0, i64 0
  store i16 %2046, ptr %2058, align 2, !tbaa !56
  %2059 = load i16, ptr @intrapred_luma8x8.PredPel, align 2, !tbaa !56
  %2060 = zext i16 %2059 to i32
  %2061 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %2062 = zext i16 %2061 to i32
  %2063 = add nsw i32 %2060, %2062
  %2064 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %2065 = zext i16 %2064 to i32
  %2066 = mul nsw i32 2, %2065
  %2067 = add nsw i32 %2063, %2066
  %2068 = add nsw i32 %2067, 2
  %2069 = ashr i32 %2068, 2
  %2070 = trunc i32 %2069 to i16
  %2071 = load ptr, ptr %16, align 8, !tbaa !54
  %2072 = getelementptr inbounds [8 x i16], ptr %2071, i64 7
  %2073 = getelementptr inbounds [8 x i16], ptr %2072, i64 0, i64 4
  store i16 %2070, ptr %2073, align 2, !tbaa !56
  %2074 = load ptr, ptr %16, align 8, !tbaa !54
  %2075 = getelementptr inbounds [8 x i16], ptr %2074, i64 5
  %2076 = getelementptr inbounds [8 x i16], ptr %2075, i64 0, i64 3
  store i16 %2070, ptr %2076, align 2, !tbaa !56
  %2077 = load ptr, ptr %16, align 8, !tbaa !54
  %2078 = getelementptr inbounds [8 x i16], ptr %2077, i64 3
  %2079 = getelementptr inbounds [8 x i16], ptr %2078, i64 0, i64 2
  store i16 %2070, ptr %2079, align 2, !tbaa !56
  %2080 = load ptr, ptr %16, align 8, !tbaa !54
  %2081 = getelementptr inbounds [8 x i16], ptr %2080, i64 1
  %2082 = getelementptr inbounds [8 x i16], ptr %2081, i64 0, i64 1
  store i16 %2070, ptr %2082, align 2, !tbaa !56
  %2083 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %2084 = zext i16 %2083 to i32
  %2085 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %2086 = zext i16 %2085 to i32
  %2087 = add nsw i32 %2084, %2086
  %2088 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %2089 = zext i16 %2088 to i32
  %2090 = mul nsw i32 2, %2089
  %2091 = add nsw i32 %2087, %2090
  %2092 = add nsw i32 %2091, 2
  %2093 = ashr i32 %2092, 2
  %2094 = trunc i32 %2093 to i16
  %2095 = load ptr, ptr %16, align 8, !tbaa !54
  %2096 = getelementptr inbounds [8 x i16], ptr %2095, i64 7
  %2097 = getelementptr inbounds [8 x i16], ptr %2096, i64 0, i64 5
  store i16 %2094, ptr %2097, align 2, !tbaa !56
  %2098 = load ptr, ptr %16, align 8, !tbaa !54
  %2099 = getelementptr inbounds [8 x i16], ptr %2098, i64 5
  %2100 = getelementptr inbounds [8 x i16], ptr %2099, i64 0, i64 4
  store i16 %2094, ptr %2100, align 2, !tbaa !56
  %2101 = load ptr, ptr %16, align 8, !tbaa !54
  %2102 = getelementptr inbounds [8 x i16], ptr %2101, i64 3
  %2103 = getelementptr inbounds [8 x i16], ptr %2102, i64 0, i64 3
  store i16 %2094, ptr %2103, align 2, !tbaa !56
  %2104 = load ptr, ptr %16, align 8, !tbaa !54
  %2105 = getelementptr inbounds [8 x i16], ptr %2104, i64 1
  %2106 = getelementptr inbounds [8 x i16], ptr %2105, i64 0, i64 2
  store i16 %2094, ptr %2106, align 2, !tbaa !56
  %2107 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %2108 = zext i16 %2107 to i32
  %2109 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %2110 = zext i16 %2109 to i32
  %2111 = add nsw i32 %2108, %2110
  %2112 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %2113 = zext i16 %2112 to i32
  %2114 = mul nsw i32 2, %2113
  %2115 = add nsw i32 %2111, %2114
  %2116 = add nsw i32 %2115, 2
  %2117 = ashr i32 %2116, 2
  %2118 = trunc i32 %2117 to i16
  %2119 = load ptr, ptr %16, align 8, !tbaa !54
  %2120 = getelementptr inbounds [8 x i16], ptr %2119, i64 7
  %2121 = getelementptr inbounds [8 x i16], ptr %2120, i64 0, i64 6
  store i16 %2118, ptr %2121, align 2, !tbaa !56
  %2122 = load ptr, ptr %16, align 8, !tbaa !54
  %2123 = getelementptr inbounds [8 x i16], ptr %2122, i64 5
  %2124 = getelementptr inbounds [8 x i16], ptr %2123, i64 0, i64 5
  store i16 %2118, ptr %2124, align 2, !tbaa !56
  %2125 = load ptr, ptr %16, align 8, !tbaa !54
  %2126 = getelementptr inbounds [8 x i16], ptr %2125, i64 3
  %2127 = getelementptr inbounds [8 x i16], ptr %2126, i64 0, i64 4
  store i16 %2118, ptr %2127, align 2, !tbaa !56
  %2128 = load ptr, ptr %16, align 8, !tbaa !54
  %2129 = getelementptr inbounds [8 x i16], ptr %2128, i64 1
  %2130 = getelementptr inbounds [8 x i16], ptr %2129, i64 0, i64 3
  store i16 %2118, ptr %2130, align 2, !tbaa !56
  %2131 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %2132 = zext i16 %2131 to i32
  %2133 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %2134 = zext i16 %2133 to i32
  %2135 = add nsw i32 %2132, %2134
  %2136 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %2137 = zext i16 %2136 to i32
  %2138 = mul nsw i32 2, %2137
  %2139 = add nsw i32 %2135, %2138
  %2140 = add nsw i32 %2139, 2
  %2141 = ashr i32 %2140, 2
  %2142 = trunc i32 %2141 to i16
  %2143 = load ptr, ptr %16, align 8, !tbaa !54
  %2144 = getelementptr inbounds [8 x i16], ptr %2143, i64 7
  %2145 = getelementptr inbounds [8 x i16], ptr %2144, i64 0, i64 7
  store i16 %2142, ptr %2145, align 2, !tbaa !56
  %2146 = load ptr, ptr %16, align 8, !tbaa !54
  %2147 = getelementptr inbounds [8 x i16], ptr %2146, i64 5
  %2148 = getelementptr inbounds [8 x i16], ptr %2147, i64 0, i64 6
  store i16 %2142, ptr %2148, align 2, !tbaa !56
  %2149 = load ptr, ptr %16, align 8, !tbaa !54
  %2150 = getelementptr inbounds [8 x i16], ptr %2149, i64 3
  %2151 = getelementptr inbounds [8 x i16], ptr %2150, i64 0, i64 5
  store i16 %2142, ptr %2151, align 2, !tbaa !56
  %2152 = load ptr, ptr %16, align 8, !tbaa !54
  %2153 = getelementptr inbounds [8 x i16], ptr %2152, i64 1
  %2154 = getelementptr inbounds [8 x i16], ptr %2153, i64 0, i64 4
  store i16 %2142, ptr %2154, align 2, !tbaa !56
  %2155 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %2156 = zext i16 %2155 to i32
  %2157 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %2158 = zext i16 %2157 to i32
  %2159 = add nsw i32 %2156, %2158
  %2160 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %2161 = zext i16 %2160 to i32
  %2162 = mul nsw i32 2, %2161
  %2163 = add nsw i32 %2159, %2162
  %2164 = add nsw i32 %2163, 2
  %2165 = ashr i32 %2164, 2
  %2166 = trunc i32 %2165 to i16
  %2167 = load ptr, ptr %16, align 8, !tbaa !54
  %2168 = getelementptr inbounds [8 x i16], ptr %2167, i64 5
  %2169 = getelementptr inbounds [8 x i16], ptr %2168, i64 0, i64 7
  store i16 %2166, ptr %2169, align 2, !tbaa !56
  %2170 = load ptr, ptr %16, align 8, !tbaa !54
  %2171 = getelementptr inbounds [8 x i16], ptr %2170, i64 3
  %2172 = getelementptr inbounds [8 x i16], ptr %2171, i64 0, i64 6
  store i16 %2166, ptr %2172, align 2, !tbaa !56
  %2173 = load ptr, ptr %16, align 8, !tbaa !54
  %2174 = getelementptr inbounds [8 x i16], ptr %2173, i64 1
  %2175 = getelementptr inbounds [8 x i16], ptr %2174, i64 0, i64 5
  store i16 %2166, ptr %2175, align 2, !tbaa !56
  %2176 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %2177 = zext i16 %2176 to i32
  %2178 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %2179 = zext i16 %2178 to i32
  %2180 = add nsw i32 %2177, %2179
  %2181 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %2182 = zext i16 %2181 to i32
  %2183 = mul nsw i32 2, %2182
  %2184 = add nsw i32 %2180, %2183
  %2185 = add nsw i32 %2184, 2
  %2186 = ashr i32 %2185, 2
  %2187 = trunc i32 %2186 to i16
  %2188 = load ptr, ptr %16, align 8, !tbaa !54
  %2189 = getelementptr inbounds [8 x i16], ptr %2188, i64 3
  %2190 = getelementptr inbounds [8 x i16], ptr %2189, i64 0, i64 7
  store i16 %2187, ptr %2190, align 2, !tbaa !56
  %2191 = load ptr, ptr %16, align 8, !tbaa !54
  %2192 = getelementptr inbounds [8 x i16], ptr %2191, i64 1
  %2193 = getelementptr inbounds [8 x i16], ptr %2192, i64 0, i64 6
  store i16 %2187, ptr %2193, align 2, !tbaa !56
  %2194 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %2195 = zext i16 %2194 to i32
  %2196 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 8), align 2, !tbaa !56
  %2197 = zext i16 %2196 to i32
  %2198 = add nsw i32 %2195, %2197
  %2199 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %2200 = zext i16 %2199 to i32
  %2201 = mul nsw i32 2, %2200
  %2202 = add nsw i32 %2198, %2201
  %2203 = add nsw i32 %2202, 2
  %2204 = ashr i32 %2203, 2
  %2205 = trunc i32 %2204 to i16
  %2206 = load ptr, ptr %16, align 8, !tbaa !54
  %2207 = getelementptr inbounds [8 x i16], ptr %2206, i64 1
  %2208 = getelementptr inbounds [8 x i16], ptr %2207, i64 0, i64 7
  store i16 %2205, ptr %2208, align 2, !tbaa !56
  %2209 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %2210 = zext i16 %2209 to i32
  %2211 = load i16, ptr @intrapred_luma8x8.PredPel, align 2, !tbaa !56
  %2212 = zext i16 %2211 to i32
  %2213 = add nsw i32 %2210, %2212
  %2214 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %2215 = zext i16 %2214 to i32
  %2216 = mul nsw i32 2, %2215
  %2217 = add nsw i32 %2213, %2216
  %2218 = add nsw i32 %2217, 2
  %2219 = ashr i32 %2218, 2
  %2220 = trunc i32 %2219 to i16
  %2221 = load ptr, ptr %16, align 8, !tbaa !54
  %2222 = getelementptr inbounds [8 x i16], ptr %2221, i64 6
  %2223 = getelementptr inbounds [8 x i16], ptr %2222, i64 0, i64 2
  store i16 %2220, ptr %2223, align 2, !tbaa !56
  %2224 = load ptr, ptr %16, align 8, !tbaa !54
  %2225 = getelementptr inbounds [8 x i16], ptr %2224, i64 4
  %2226 = getelementptr inbounds [8 x i16], ptr %2225, i64 0, i64 1
  store i16 %2220, ptr %2226, align 2, !tbaa !56
  %2227 = load ptr, ptr %16, align 8, !tbaa !54
  %2228 = getelementptr inbounds [8 x i16], ptr %2227, i64 2
  %2229 = getelementptr inbounds [8 x i16], ptr %2228, i64 0, i64 0
  store i16 %2220, ptr %2229, align 2, !tbaa !56
  %2230 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %2231 = zext i16 %2230 to i32
  %2232 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %2233 = zext i16 %2232 to i32
  %2234 = add nsw i32 %2231, %2233
  %2235 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %2236 = zext i16 %2235 to i32
  %2237 = mul nsw i32 2, %2236
  %2238 = add nsw i32 %2234, %2237
  %2239 = add nsw i32 %2238, 2
  %2240 = ashr i32 %2239, 2
  %2241 = trunc i32 %2240 to i16
  %2242 = load ptr, ptr %16, align 8, !tbaa !54
  %2243 = getelementptr inbounds [8 x i16], ptr %2242, i64 7
  %2244 = getelementptr inbounds [8 x i16], ptr %2243, i64 0, i64 2
  store i16 %2241, ptr %2244, align 2, !tbaa !56
  %2245 = load ptr, ptr %16, align 8, !tbaa !54
  %2246 = getelementptr inbounds [8 x i16], ptr %2245, i64 5
  %2247 = getelementptr inbounds [8 x i16], ptr %2246, i64 0, i64 1
  store i16 %2241, ptr %2247, align 2, !tbaa !56
  %2248 = load ptr, ptr %16, align 8, !tbaa !54
  %2249 = getelementptr inbounds [8 x i16], ptr %2248, i64 3
  %2250 = getelementptr inbounds [8 x i16], ptr %2249, i64 0, i64 0
  store i16 %2241, ptr %2250, align 2, !tbaa !56
  %2251 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %2252 = zext i16 %2251 to i32
  %2253 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %2254 = zext i16 %2253 to i32
  %2255 = add nsw i32 %2252, %2254
  %2256 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %2257 = zext i16 %2256 to i32
  %2258 = mul nsw i32 2, %2257
  %2259 = add nsw i32 %2255, %2258
  %2260 = add nsw i32 %2259, 2
  %2261 = ashr i32 %2260, 2
  %2262 = trunc i32 %2261 to i16
  %2263 = load ptr, ptr %16, align 8, !tbaa !54
  %2264 = getelementptr inbounds [8 x i16], ptr %2263, i64 6
  %2265 = getelementptr inbounds [8 x i16], ptr %2264, i64 0, i64 1
  store i16 %2262, ptr %2265, align 2, !tbaa !56
  %2266 = load ptr, ptr %16, align 8, !tbaa !54
  %2267 = getelementptr inbounds [8 x i16], ptr %2266, i64 4
  %2268 = getelementptr inbounds [8 x i16], ptr %2267, i64 0, i64 0
  store i16 %2262, ptr %2268, align 2, !tbaa !56
  %2269 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %2270 = zext i16 %2269 to i32
  %2271 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %2272 = zext i16 %2271 to i32
  %2273 = add nsw i32 %2270, %2272
  %2274 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %2275 = zext i16 %2274 to i32
  %2276 = mul nsw i32 2, %2275
  %2277 = add nsw i32 %2273, %2276
  %2278 = add nsw i32 %2277, 2
  %2279 = ashr i32 %2278, 2
  %2280 = trunc i32 %2279 to i16
  %2281 = load ptr, ptr %16, align 8, !tbaa !54
  %2282 = getelementptr inbounds [8 x i16], ptr %2281, i64 7
  %2283 = getelementptr inbounds [8 x i16], ptr %2282, i64 0, i64 1
  store i16 %2280, ptr %2283, align 2, !tbaa !56
  %2284 = load ptr, ptr %16, align 8, !tbaa !54
  %2285 = getelementptr inbounds [8 x i16], ptr %2284, i64 5
  %2286 = getelementptr inbounds [8 x i16], ptr %2285, i64 0, i64 0
  store i16 %2280, ptr %2286, align 2, !tbaa !56
  %2287 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %2288 = zext i16 %2287 to i32
  %2289 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %2290 = zext i16 %2289 to i32
  %2291 = add nsw i32 %2288, %2290
  %2292 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %2293 = zext i16 %2292 to i32
  %2294 = mul nsw i32 2, %2293
  %2295 = add nsw i32 %2291, %2294
  %2296 = add nsw i32 %2295, 2
  %2297 = ashr i32 %2296, 2
  %2298 = trunc i32 %2297 to i16
  %2299 = load ptr, ptr %16, align 8, !tbaa !54
  %2300 = getelementptr inbounds [8 x i16], ptr %2299, i64 6
  %2301 = getelementptr inbounds [8 x i16], ptr %2300, i64 0, i64 0
  store i16 %2298, ptr %2301, align 2, !tbaa !56
  %2302 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %2303 = zext i16 %2302 to i32
  %2304 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %2305 = zext i16 %2304 to i32
  %2306 = add nsw i32 %2303, %2305
  %2307 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %2308 = zext i16 %2307 to i32
  %2309 = mul nsw i32 2, %2308
  %2310 = add nsw i32 %2306, %2309
  %2311 = add nsw i32 %2310, 2
  %2312 = ashr i32 %2311, 2
  %2313 = trunc i32 %2312 to i16
  %2314 = load ptr, ptr %16, align 8, !tbaa !54
  %2315 = getelementptr inbounds [8 x i16], ptr %2314, i64 7
  %2316 = getelementptr inbounds [8 x i16], ptr %2315, i64 0, i64 0
  store i16 %2313, ptr %2316, align 2, !tbaa !56
  %2317 = load ptr, ptr @img, align 8, !tbaa !14
  %2318 = getelementptr inbounds nuw %struct.ImageParameters, ptr %2317, i32 0, i32 49
  %2319 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %2318, i64 0, i64 6
  %2320 = getelementptr inbounds [8 x [8 x i16]], ptr %2319, i64 0, i64 0
  store ptr %2320, ptr %16, align 8, !tbaa !54
  %2321 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %2322 = zext i16 %2321 to i32
  %2323 = load i16, ptr @intrapred_luma8x8.PredPel, align 2, !tbaa !56
  %2324 = zext i16 %2323 to i32
  %2325 = add nsw i32 %2322, %2324
  %2326 = add nsw i32 %2325, 1
  %2327 = ashr i32 %2326, 1
  %2328 = trunc i32 %2327 to i16
  %2329 = load ptr, ptr %16, align 8, !tbaa !54
  %2330 = getelementptr inbounds [8 x i16], ptr %2329, i64 3
  %2331 = getelementptr inbounds [8 x i16], ptr %2330, i64 0, i64 6
  store i16 %2328, ptr %2331, align 2, !tbaa !56
  %2332 = load ptr, ptr %16, align 8, !tbaa !54
  %2333 = getelementptr inbounds [8 x i16], ptr %2332, i64 2
  %2334 = getelementptr inbounds [8 x i16], ptr %2333, i64 0, i64 4
  store i16 %2328, ptr %2334, align 2, !tbaa !56
  %2335 = load ptr, ptr %16, align 8, !tbaa !54
  %2336 = getelementptr inbounds [8 x i16], ptr %2335, i64 1
  %2337 = getelementptr inbounds [8 x i16], ptr %2336, i64 0, i64 2
  store i16 %2328, ptr %2337, align 2, !tbaa !56
  %2338 = load ptr, ptr %16, align 8, !tbaa !54
  %2339 = getelementptr inbounds [8 x i16], ptr %2338, i64 0
  %2340 = getelementptr inbounds [8 x i16], ptr %2339, i64 0, i64 0
  store i16 %2328, ptr %2340, align 2, !tbaa !56
  %2341 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %2342 = zext i16 %2341 to i32
  %2343 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %2344 = zext i16 %2343 to i32
  %2345 = add nsw i32 %2342, %2344
  %2346 = add nsw i32 %2345, 1
  %2347 = ashr i32 %2346, 1
  %2348 = trunc i32 %2347 to i16
  %2349 = load ptr, ptr %16, align 8, !tbaa !54
  %2350 = getelementptr inbounds [8 x i16], ptr %2349, i64 4
  %2351 = getelementptr inbounds [8 x i16], ptr %2350, i64 0, i64 6
  store i16 %2348, ptr %2351, align 2, !tbaa !56
  %2352 = load ptr, ptr %16, align 8, !tbaa !54
  %2353 = getelementptr inbounds [8 x i16], ptr %2352, i64 3
  %2354 = getelementptr inbounds [8 x i16], ptr %2353, i64 0, i64 4
  store i16 %2348, ptr %2354, align 2, !tbaa !56
  %2355 = load ptr, ptr %16, align 8, !tbaa !54
  %2356 = getelementptr inbounds [8 x i16], ptr %2355, i64 2
  %2357 = getelementptr inbounds [8 x i16], ptr %2356, i64 0, i64 2
  store i16 %2348, ptr %2357, align 2, !tbaa !56
  %2358 = load ptr, ptr %16, align 8, !tbaa !54
  %2359 = getelementptr inbounds [8 x i16], ptr %2358, i64 1
  %2360 = getelementptr inbounds [8 x i16], ptr %2359, i64 0, i64 0
  store i16 %2348, ptr %2360, align 2, !tbaa !56
  %2361 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %2362 = zext i16 %2361 to i32
  %2363 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %2364 = zext i16 %2363 to i32
  %2365 = add nsw i32 %2362, %2364
  %2366 = add nsw i32 %2365, 1
  %2367 = ashr i32 %2366, 1
  %2368 = trunc i32 %2367 to i16
  %2369 = load ptr, ptr %16, align 8, !tbaa !54
  %2370 = getelementptr inbounds [8 x i16], ptr %2369, i64 5
  %2371 = getelementptr inbounds [8 x i16], ptr %2370, i64 0, i64 6
  store i16 %2368, ptr %2371, align 2, !tbaa !56
  %2372 = load ptr, ptr %16, align 8, !tbaa !54
  %2373 = getelementptr inbounds [8 x i16], ptr %2372, i64 4
  %2374 = getelementptr inbounds [8 x i16], ptr %2373, i64 0, i64 4
  store i16 %2368, ptr %2374, align 2, !tbaa !56
  %2375 = load ptr, ptr %16, align 8, !tbaa !54
  %2376 = getelementptr inbounds [8 x i16], ptr %2375, i64 3
  %2377 = getelementptr inbounds [8 x i16], ptr %2376, i64 0, i64 2
  store i16 %2368, ptr %2377, align 2, !tbaa !56
  %2378 = load ptr, ptr %16, align 8, !tbaa !54
  %2379 = getelementptr inbounds [8 x i16], ptr %2378, i64 2
  %2380 = getelementptr inbounds [8 x i16], ptr %2379, i64 0, i64 0
  store i16 %2368, ptr %2380, align 2, !tbaa !56
  %2381 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %2382 = zext i16 %2381 to i32
  %2383 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %2384 = zext i16 %2383 to i32
  %2385 = add nsw i32 %2382, %2384
  %2386 = add nsw i32 %2385, 1
  %2387 = ashr i32 %2386, 1
  %2388 = trunc i32 %2387 to i16
  %2389 = load ptr, ptr %16, align 8, !tbaa !54
  %2390 = getelementptr inbounds [8 x i16], ptr %2389, i64 6
  %2391 = getelementptr inbounds [8 x i16], ptr %2390, i64 0, i64 6
  store i16 %2388, ptr %2391, align 2, !tbaa !56
  %2392 = load ptr, ptr %16, align 8, !tbaa !54
  %2393 = getelementptr inbounds [8 x i16], ptr %2392, i64 5
  %2394 = getelementptr inbounds [8 x i16], ptr %2393, i64 0, i64 4
  store i16 %2388, ptr %2394, align 2, !tbaa !56
  %2395 = load ptr, ptr %16, align 8, !tbaa !54
  %2396 = getelementptr inbounds [8 x i16], ptr %2395, i64 4
  %2397 = getelementptr inbounds [8 x i16], ptr %2396, i64 0, i64 2
  store i16 %2388, ptr %2397, align 2, !tbaa !56
  %2398 = load ptr, ptr %16, align 8, !tbaa !54
  %2399 = getelementptr inbounds [8 x i16], ptr %2398, i64 3
  %2400 = getelementptr inbounds [8 x i16], ptr %2399, i64 0, i64 0
  store i16 %2388, ptr %2400, align 2, !tbaa !56
  %2401 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %2402 = zext i16 %2401 to i32
  %2403 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %2404 = zext i16 %2403 to i32
  %2405 = add nsw i32 %2402, %2404
  %2406 = add nsw i32 %2405, 1
  %2407 = ashr i32 %2406, 1
  %2408 = trunc i32 %2407 to i16
  %2409 = load ptr, ptr %16, align 8, !tbaa !54
  %2410 = getelementptr inbounds [8 x i16], ptr %2409, i64 7
  %2411 = getelementptr inbounds [8 x i16], ptr %2410, i64 0, i64 6
  store i16 %2408, ptr %2411, align 2, !tbaa !56
  %2412 = load ptr, ptr %16, align 8, !tbaa !54
  %2413 = getelementptr inbounds [8 x i16], ptr %2412, i64 6
  %2414 = getelementptr inbounds [8 x i16], ptr %2413, i64 0, i64 4
  store i16 %2408, ptr %2414, align 2, !tbaa !56
  %2415 = load ptr, ptr %16, align 8, !tbaa !54
  %2416 = getelementptr inbounds [8 x i16], ptr %2415, i64 5
  %2417 = getelementptr inbounds [8 x i16], ptr %2416, i64 0, i64 2
  store i16 %2408, ptr %2417, align 2, !tbaa !56
  %2418 = load ptr, ptr %16, align 8, !tbaa !54
  %2419 = getelementptr inbounds [8 x i16], ptr %2418, i64 4
  %2420 = getelementptr inbounds [8 x i16], ptr %2419, i64 0, i64 0
  store i16 %2408, ptr %2420, align 2, !tbaa !56
  %2421 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %2422 = zext i16 %2421 to i32
  %2423 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %2424 = zext i16 %2423 to i32
  %2425 = add nsw i32 %2422, %2424
  %2426 = add nsw i32 %2425, 1
  %2427 = ashr i32 %2426, 1
  %2428 = trunc i32 %2427 to i16
  %2429 = load ptr, ptr %16, align 8, !tbaa !54
  %2430 = getelementptr inbounds [8 x i16], ptr %2429, i64 7
  %2431 = getelementptr inbounds [8 x i16], ptr %2430, i64 0, i64 4
  store i16 %2428, ptr %2431, align 2, !tbaa !56
  %2432 = load ptr, ptr %16, align 8, !tbaa !54
  %2433 = getelementptr inbounds [8 x i16], ptr %2432, i64 6
  %2434 = getelementptr inbounds [8 x i16], ptr %2433, i64 0, i64 2
  store i16 %2428, ptr %2434, align 2, !tbaa !56
  %2435 = load ptr, ptr %16, align 8, !tbaa !54
  %2436 = getelementptr inbounds [8 x i16], ptr %2435, i64 5
  %2437 = getelementptr inbounds [8 x i16], ptr %2436, i64 0, i64 0
  store i16 %2428, ptr %2437, align 2, !tbaa !56
  %2438 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %2439 = zext i16 %2438 to i32
  %2440 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %2441 = zext i16 %2440 to i32
  %2442 = add nsw i32 %2439, %2441
  %2443 = add nsw i32 %2442, 1
  %2444 = ashr i32 %2443, 1
  %2445 = trunc i32 %2444 to i16
  %2446 = load ptr, ptr %16, align 8, !tbaa !54
  %2447 = getelementptr inbounds [8 x i16], ptr %2446, i64 7
  %2448 = getelementptr inbounds [8 x i16], ptr %2447, i64 0, i64 2
  store i16 %2445, ptr %2448, align 2, !tbaa !56
  %2449 = load ptr, ptr %16, align 8, !tbaa !54
  %2450 = getelementptr inbounds [8 x i16], ptr %2449, i64 6
  %2451 = getelementptr inbounds [8 x i16], ptr %2450, i64 0, i64 0
  store i16 %2445, ptr %2451, align 2, !tbaa !56
  %2452 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 24), align 2, !tbaa !56
  %2453 = zext i16 %2452 to i32
  %2454 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %2455 = zext i16 %2454 to i32
  %2456 = add nsw i32 %2453, %2455
  %2457 = add nsw i32 %2456, 1
  %2458 = ashr i32 %2457, 1
  %2459 = trunc i32 %2458 to i16
  %2460 = load ptr, ptr %16, align 8, !tbaa !54
  %2461 = getelementptr inbounds [8 x i16], ptr %2460, i64 7
  %2462 = getelementptr inbounds [8 x i16], ptr %2461, i64 0, i64 0
  store i16 %2459, ptr %2462, align 2, !tbaa !56
  %2463 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %2464 = zext i16 %2463 to i32
  %2465 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %2466 = zext i16 %2465 to i32
  %2467 = add nsw i32 %2464, %2466
  %2468 = load i16, ptr @intrapred_luma8x8.PredPel, align 2, !tbaa !56
  %2469 = zext i16 %2468 to i32
  %2470 = mul nsw i32 2, %2469
  %2471 = add nsw i32 %2467, %2470
  %2472 = add nsw i32 %2471, 2
  %2473 = ashr i32 %2472, 2
  %2474 = trunc i32 %2473 to i16
  %2475 = load ptr, ptr %16, align 8, !tbaa !54
  %2476 = getelementptr inbounds [8 x i16], ptr %2475, i64 3
  %2477 = getelementptr inbounds [8 x i16], ptr %2476, i64 0, i64 7
  store i16 %2474, ptr %2477, align 2, !tbaa !56
  %2478 = load ptr, ptr %16, align 8, !tbaa !54
  %2479 = getelementptr inbounds [8 x i16], ptr %2478, i64 2
  %2480 = getelementptr inbounds [8 x i16], ptr %2479, i64 0, i64 5
  store i16 %2474, ptr %2480, align 2, !tbaa !56
  %2481 = load ptr, ptr %16, align 8, !tbaa !54
  %2482 = getelementptr inbounds [8 x i16], ptr %2481, i64 1
  %2483 = getelementptr inbounds [8 x i16], ptr %2482, i64 0, i64 3
  store i16 %2474, ptr %2483, align 2, !tbaa !56
  %2484 = load ptr, ptr %16, align 8, !tbaa !54
  %2485 = getelementptr inbounds [8 x i16], ptr %2484, i64 0
  %2486 = getelementptr inbounds [8 x i16], ptr %2485, i64 0, i64 1
  store i16 %2474, ptr %2486, align 2, !tbaa !56
  %2487 = load i16, ptr @intrapred_luma8x8.PredPel, align 2, !tbaa !56
  %2488 = zext i16 %2487 to i32
  %2489 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %2490 = zext i16 %2489 to i32
  %2491 = add nsw i32 %2488, %2490
  %2492 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %2493 = zext i16 %2492 to i32
  %2494 = mul nsw i32 2, %2493
  %2495 = add nsw i32 %2491, %2494
  %2496 = add nsw i32 %2495, 2
  %2497 = ashr i32 %2496, 2
  %2498 = trunc i32 %2497 to i16
  %2499 = load ptr, ptr %16, align 8, !tbaa !54
  %2500 = getelementptr inbounds [8 x i16], ptr %2499, i64 4
  %2501 = getelementptr inbounds [8 x i16], ptr %2500, i64 0, i64 7
  store i16 %2498, ptr %2501, align 2, !tbaa !56
  %2502 = load ptr, ptr %16, align 8, !tbaa !54
  %2503 = getelementptr inbounds [8 x i16], ptr %2502, i64 3
  %2504 = getelementptr inbounds [8 x i16], ptr %2503, i64 0, i64 5
  store i16 %2498, ptr %2504, align 2, !tbaa !56
  %2505 = load ptr, ptr %16, align 8, !tbaa !54
  %2506 = getelementptr inbounds [8 x i16], ptr %2505, i64 2
  %2507 = getelementptr inbounds [8 x i16], ptr %2506, i64 0, i64 3
  store i16 %2498, ptr %2507, align 2, !tbaa !56
  %2508 = load ptr, ptr %16, align 8, !tbaa !54
  %2509 = getelementptr inbounds [8 x i16], ptr %2508, i64 1
  %2510 = getelementptr inbounds [8 x i16], ptr %2509, i64 0, i64 1
  store i16 %2498, ptr %2510, align 2, !tbaa !56
  %2511 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %2512 = zext i16 %2511 to i32
  %2513 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %2514 = zext i16 %2513 to i32
  %2515 = add nsw i32 %2512, %2514
  %2516 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %2517 = zext i16 %2516 to i32
  %2518 = mul nsw i32 2, %2517
  %2519 = add nsw i32 %2515, %2518
  %2520 = add nsw i32 %2519, 2
  %2521 = ashr i32 %2520, 2
  %2522 = trunc i32 %2521 to i16
  %2523 = load ptr, ptr %16, align 8, !tbaa !54
  %2524 = getelementptr inbounds [8 x i16], ptr %2523, i64 5
  %2525 = getelementptr inbounds [8 x i16], ptr %2524, i64 0, i64 7
  store i16 %2522, ptr %2525, align 2, !tbaa !56
  %2526 = load ptr, ptr %16, align 8, !tbaa !54
  %2527 = getelementptr inbounds [8 x i16], ptr %2526, i64 4
  %2528 = getelementptr inbounds [8 x i16], ptr %2527, i64 0, i64 5
  store i16 %2522, ptr %2528, align 2, !tbaa !56
  %2529 = load ptr, ptr %16, align 8, !tbaa !54
  %2530 = getelementptr inbounds [8 x i16], ptr %2529, i64 3
  %2531 = getelementptr inbounds [8 x i16], ptr %2530, i64 0, i64 3
  store i16 %2522, ptr %2531, align 2, !tbaa !56
  %2532 = load ptr, ptr %16, align 8, !tbaa !54
  %2533 = getelementptr inbounds [8 x i16], ptr %2532, i64 2
  %2534 = getelementptr inbounds [8 x i16], ptr %2533, i64 0, i64 1
  store i16 %2522, ptr %2534, align 2, !tbaa !56
  %2535 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %2536 = zext i16 %2535 to i32
  %2537 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %2538 = zext i16 %2537 to i32
  %2539 = add nsw i32 %2536, %2538
  %2540 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %2541 = zext i16 %2540 to i32
  %2542 = mul nsw i32 2, %2541
  %2543 = add nsw i32 %2539, %2542
  %2544 = add nsw i32 %2543, 2
  %2545 = ashr i32 %2544, 2
  %2546 = trunc i32 %2545 to i16
  %2547 = load ptr, ptr %16, align 8, !tbaa !54
  %2548 = getelementptr inbounds [8 x i16], ptr %2547, i64 6
  %2549 = getelementptr inbounds [8 x i16], ptr %2548, i64 0, i64 7
  store i16 %2546, ptr %2549, align 2, !tbaa !56
  %2550 = load ptr, ptr %16, align 8, !tbaa !54
  %2551 = getelementptr inbounds [8 x i16], ptr %2550, i64 5
  %2552 = getelementptr inbounds [8 x i16], ptr %2551, i64 0, i64 5
  store i16 %2546, ptr %2552, align 2, !tbaa !56
  %2553 = load ptr, ptr %16, align 8, !tbaa !54
  %2554 = getelementptr inbounds [8 x i16], ptr %2553, i64 4
  %2555 = getelementptr inbounds [8 x i16], ptr %2554, i64 0, i64 3
  store i16 %2546, ptr %2555, align 2, !tbaa !56
  %2556 = load ptr, ptr %16, align 8, !tbaa !54
  %2557 = getelementptr inbounds [8 x i16], ptr %2556, i64 3
  %2558 = getelementptr inbounds [8 x i16], ptr %2557, i64 0, i64 1
  store i16 %2546, ptr %2558, align 2, !tbaa !56
  %2559 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %2560 = zext i16 %2559 to i32
  %2561 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %2562 = zext i16 %2561 to i32
  %2563 = add nsw i32 %2560, %2562
  %2564 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %2565 = zext i16 %2564 to i32
  %2566 = mul nsw i32 2, %2565
  %2567 = add nsw i32 %2563, %2566
  %2568 = add nsw i32 %2567, 2
  %2569 = ashr i32 %2568, 2
  %2570 = trunc i32 %2569 to i16
  %2571 = load ptr, ptr %16, align 8, !tbaa !54
  %2572 = getelementptr inbounds [8 x i16], ptr %2571, i64 7
  %2573 = getelementptr inbounds [8 x i16], ptr %2572, i64 0, i64 7
  store i16 %2570, ptr %2573, align 2, !tbaa !56
  %2574 = load ptr, ptr %16, align 8, !tbaa !54
  %2575 = getelementptr inbounds [8 x i16], ptr %2574, i64 6
  %2576 = getelementptr inbounds [8 x i16], ptr %2575, i64 0, i64 5
  store i16 %2570, ptr %2576, align 2, !tbaa !56
  %2577 = load ptr, ptr %16, align 8, !tbaa !54
  %2578 = getelementptr inbounds [8 x i16], ptr %2577, i64 5
  %2579 = getelementptr inbounds [8 x i16], ptr %2578, i64 0, i64 3
  store i16 %2570, ptr %2579, align 2, !tbaa !56
  %2580 = load ptr, ptr %16, align 8, !tbaa !54
  %2581 = getelementptr inbounds [8 x i16], ptr %2580, i64 4
  %2582 = getelementptr inbounds [8 x i16], ptr %2581, i64 0, i64 1
  store i16 %2570, ptr %2582, align 2, !tbaa !56
  %2583 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %2584 = zext i16 %2583 to i32
  %2585 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %2586 = zext i16 %2585 to i32
  %2587 = add nsw i32 %2584, %2586
  %2588 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %2589 = zext i16 %2588 to i32
  %2590 = mul nsw i32 2, %2589
  %2591 = add nsw i32 %2587, %2590
  %2592 = add nsw i32 %2591, 2
  %2593 = ashr i32 %2592, 2
  %2594 = trunc i32 %2593 to i16
  %2595 = load ptr, ptr %16, align 8, !tbaa !54
  %2596 = getelementptr inbounds [8 x i16], ptr %2595, i64 7
  %2597 = getelementptr inbounds [8 x i16], ptr %2596, i64 0, i64 5
  store i16 %2594, ptr %2597, align 2, !tbaa !56
  %2598 = load ptr, ptr %16, align 8, !tbaa !54
  %2599 = getelementptr inbounds [8 x i16], ptr %2598, i64 6
  %2600 = getelementptr inbounds [8 x i16], ptr %2599, i64 0, i64 3
  store i16 %2594, ptr %2600, align 2, !tbaa !56
  %2601 = load ptr, ptr %16, align 8, !tbaa !54
  %2602 = getelementptr inbounds [8 x i16], ptr %2601, i64 5
  %2603 = getelementptr inbounds [8 x i16], ptr %2602, i64 0, i64 1
  store i16 %2594, ptr %2603, align 2, !tbaa !56
  %2604 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %2605 = zext i16 %2604 to i32
  %2606 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %2607 = zext i16 %2606 to i32
  %2608 = add nsw i32 %2605, %2607
  %2609 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %2610 = zext i16 %2609 to i32
  %2611 = mul nsw i32 2, %2610
  %2612 = add nsw i32 %2608, %2611
  %2613 = add nsw i32 %2612, 2
  %2614 = ashr i32 %2613, 2
  %2615 = trunc i32 %2614 to i16
  %2616 = load ptr, ptr %16, align 8, !tbaa !54
  %2617 = getelementptr inbounds [8 x i16], ptr %2616, i64 7
  %2618 = getelementptr inbounds [8 x i16], ptr %2617, i64 0, i64 3
  store i16 %2615, ptr %2618, align 2, !tbaa !56
  %2619 = load ptr, ptr %16, align 8, !tbaa !54
  %2620 = getelementptr inbounds [8 x i16], ptr %2619, i64 6
  %2621 = getelementptr inbounds [8 x i16], ptr %2620, i64 0, i64 1
  store i16 %2615, ptr %2621, align 2, !tbaa !56
  %2622 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %2623 = zext i16 %2622 to i32
  %2624 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 24), align 2, !tbaa !56
  %2625 = zext i16 %2624 to i32
  %2626 = add nsw i32 %2623, %2625
  %2627 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %2628 = zext i16 %2627 to i32
  %2629 = mul nsw i32 2, %2628
  %2630 = add nsw i32 %2626, %2629
  %2631 = add nsw i32 %2630, 2
  %2632 = ashr i32 %2631, 2
  %2633 = trunc i32 %2632 to i16
  %2634 = load ptr, ptr %16, align 8, !tbaa !54
  %2635 = getelementptr inbounds [8 x i16], ptr %2634, i64 7
  %2636 = getelementptr inbounds [8 x i16], ptr %2635, i64 0, i64 1
  store i16 %2633, ptr %2636, align 2, !tbaa !56
  %2637 = load i16, ptr @intrapred_luma8x8.PredPel, align 2, !tbaa !56
  %2638 = zext i16 %2637 to i32
  %2639 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %2640 = zext i16 %2639 to i32
  %2641 = add nsw i32 %2638, %2640
  %2642 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %2643 = zext i16 %2642 to i32
  %2644 = mul nsw i32 2, %2643
  %2645 = add nsw i32 %2641, %2644
  %2646 = add nsw i32 %2645, 2
  %2647 = ashr i32 %2646, 2
  %2648 = trunc i32 %2647 to i16
  %2649 = load ptr, ptr %16, align 8, !tbaa !54
  %2650 = getelementptr inbounds [8 x i16], ptr %2649, i64 2
  %2651 = getelementptr inbounds [8 x i16], ptr %2650, i64 0, i64 6
  store i16 %2648, ptr %2651, align 2, !tbaa !56
  %2652 = load ptr, ptr %16, align 8, !tbaa !54
  %2653 = getelementptr inbounds [8 x i16], ptr %2652, i64 1
  %2654 = getelementptr inbounds [8 x i16], ptr %2653, i64 0, i64 4
  store i16 %2648, ptr %2654, align 2, !tbaa !56
  %2655 = load ptr, ptr %16, align 8, !tbaa !54
  %2656 = getelementptr inbounds [8 x i16], ptr %2655, i64 0
  %2657 = getelementptr inbounds [8 x i16], ptr %2656, i64 0, i64 2
  store i16 %2648, ptr %2657, align 2, !tbaa !56
  %2658 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 1), align 2, !tbaa !56
  %2659 = zext i16 %2658 to i32
  %2660 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %2661 = zext i16 %2660 to i32
  %2662 = add nsw i32 %2659, %2661
  %2663 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %2664 = zext i16 %2663 to i32
  %2665 = mul nsw i32 2, %2664
  %2666 = add nsw i32 %2662, %2665
  %2667 = add nsw i32 %2666, 2
  %2668 = ashr i32 %2667, 2
  %2669 = trunc i32 %2668 to i16
  %2670 = load ptr, ptr %16, align 8, !tbaa !54
  %2671 = getelementptr inbounds [8 x i16], ptr %2670, i64 2
  %2672 = getelementptr inbounds [8 x i16], ptr %2671, i64 0, i64 7
  store i16 %2669, ptr %2672, align 2, !tbaa !56
  %2673 = load ptr, ptr %16, align 8, !tbaa !54
  %2674 = getelementptr inbounds [8 x i16], ptr %2673, i64 1
  %2675 = getelementptr inbounds [8 x i16], ptr %2674, i64 0, i64 5
  store i16 %2669, ptr %2675, align 2, !tbaa !56
  %2676 = load ptr, ptr %16, align 8, !tbaa !54
  %2677 = getelementptr inbounds [8 x i16], ptr %2676, i64 0
  %2678 = getelementptr inbounds [8 x i16], ptr %2677, i64 0, i64 3
  store i16 %2669, ptr %2678, align 2, !tbaa !56
  %2679 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 2), align 2, !tbaa !56
  %2680 = zext i16 %2679 to i32
  %2681 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %2682 = zext i16 %2681 to i32
  %2683 = add nsw i32 %2680, %2682
  %2684 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %2685 = zext i16 %2684 to i32
  %2686 = mul nsw i32 2, %2685
  %2687 = add nsw i32 %2683, %2686
  %2688 = add nsw i32 %2687, 2
  %2689 = ashr i32 %2688, 2
  %2690 = trunc i32 %2689 to i16
  %2691 = load ptr, ptr %16, align 8, !tbaa !54
  %2692 = getelementptr inbounds [8 x i16], ptr %2691, i64 1
  %2693 = getelementptr inbounds [8 x i16], ptr %2692, i64 0, i64 6
  store i16 %2690, ptr %2693, align 2, !tbaa !56
  %2694 = load ptr, ptr %16, align 8, !tbaa !54
  %2695 = getelementptr inbounds [8 x i16], ptr %2694, i64 0
  %2696 = getelementptr inbounds [8 x i16], ptr %2695, i64 0, i64 4
  store i16 %2690, ptr %2696, align 2, !tbaa !56
  %2697 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 3), align 2, !tbaa !56
  %2698 = zext i16 %2697 to i32
  %2699 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %2700 = zext i16 %2699 to i32
  %2701 = add nsw i32 %2698, %2700
  %2702 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %2703 = zext i16 %2702 to i32
  %2704 = mul nsw i32 2, %2703
  %2705 = add nsw i32 %2701, %2704
  %2706 = add nsw i32 %2705, 2
  %2707 = ashr i32 %2706, 2
  %2708 = trunc i32 %2707 to i16
  %2709 = load ptr, ptr %16, align 8, !tbaa !54
  %2710 = getelementptr inbounds [8 x i16], ptr %2709, i64 1
  %2711 = getelementptr inbounds [8 x i16], ptr %2710, i64 0, i64 7
  store i16 %2708, ptr %2711, align 2, !tbaa !56
  %2712 = load ptr, ptr %16, align 8, !tbaa !54
  %2713 = getelementptr inbounds [8 x i16], ptr %2712, i64 0
  %2714 = getelementptr inbounds [8 x i16], ptr %2713, i64 0, i64 5
  store i16 %2708, ptr %2714, align 2, !tbaa !56
  %2715 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 4), align 2, !tbaa !56
  %2716 = zext i16 %2715 to i32
  %2717 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %2718 = zext i16 %2717 to i32
  %2719 = add nsw i32 %2716, %2718
  %2720 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %2721 = zext i16 %2720 to i32
  %2722 = mul nsw i32 2, %2721
  %2723 = add nsw i32 %2719, %2722
  %2724 = add nsw i32 %2723, 2
  %2725 = ashr i32 %2724, 2
  %2726 = trunc i32 %2725 to i16
  %2727 = load ptr, ptr %16, align 8, !tbaa !54
  %2728 = getelementptr inbounds [8 x i16], ptr %2727, i64 0
  %2729 = getelementptr inbounds [8 x i16], ptr %2728, i64 0, i64 6
  store i16 %2726, ptr %2729, align 2, !tbaa !56
  %2730 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 5), align 2, !tbaa !56
  %2731 = zext i16 %2730 to i32
  %2732 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 7), align 2, !tbaa !56
  %2733 = zext i16 %2732 to i32
  %2734 = add nsw i32 %2731, %2733
  %2735 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 6), align 2, !tbaa !56
  %2736 = zext i16 %2735 to i32
  %2737 = mul nsw i32 2, %2736
  %2738 = add nsw i32 %2734, %2737
  %2739 = add nsw i32 %2738, 2
  %2740 = ashr i32 %2739, 2
  %2741 = trunc i32 %2740 to i16
  %2742 = load ptr, ptr %16, align 8, !tbaa !54
  %2743 = getelementptr inbounds [8 x i16], ptr %2742, i64 0
  %2744 = getelementptr inbounds [8 x i16], ptr %2743, i64 0, i64 7
  store i16 %2741, ptr %2744, align 2, !tbaa !56
  br label %2745

2745:                                             ; preds = %1512, %1509, %1506, %1503
  %2746 = load i32, ptr %25, align 4, !tbaa !10
  %2747 = icmp ne i32 %2746, 0
  br i1 %2747, label %2748, label %3083

2748:                                             ; preds = %2745
  %2749 = load ptr, ptr @img, align 8, !tbaa !14
  %2750 = getelementptr inbounds nuw %struct.ImageParameters, ptr %2749, i32 0, i32 49
  %2751 = getelementptr inbounds [9 x [8 x [8 x i16]]], ptr %2750, i64 0, i64 8
  %2752 = getelementptr inbounds [8 x [8 x i16]], ptr %2751, i64 0, i64 0
  store ptr %2752, ptr %16, align 8, !tbaa !54
  %2753 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %2754 = zext i16 %2753 to i32
  %2755 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %2756 = zext i16 %2755 to i32
  %2757 = add nsw i32 %2754, %2756
  %2758 = add nsw i32 %2757, 1
  %2759 = ashr i32 %2758, 1
  %2760 = trunc i32 %2759 to i16
  %2761 = load ptr, ptr %16, align 8, !tbaa !54
  %2762 = getelementptr inbounds [8 x i16], ptr %2761, i64 0
  %2763 = getelementptr inbounds [8 x i16], ptr %2762, i64 0, i64 0
  store i16 %2760, ptr %2763, align 2, !tbaa !56
  %2764 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %2765 = zext i16 %2764 to i32
  %2766 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %2767 = zext i16 %2766 to i32
  %2768 = add nsw i32 %2765, %2767
  %2769 = add nsw i32 %2768, 1
  %2770 = ashr i32 %2769, 1
  %2771 = trunc i32 %2770 to i16
  %2772 = load ptr, ptr %16, align 8, !tbaa !54
  %2773 = getelementptr inbounds [8 x i16], ptr %2772, i64 0
  %2774 = getelementptr inbounds [8 x i16], ptr %2773, i64 0, i64 2
  store i16 %2771, ptr %2774, align 2, !tbaa !56
  %2775 = load ptr, ptr %16, align 8, !tbaa !54
  %2776 = getelementptr inbounds [8 x i16], ptr %2775, i64 1
  %2777 = getelementptr inbounds [8 x i16], ptr %2776, i64 0, i64 0
  store i16 %2771, ptr %2777, align 2, !tbaa !56
  %2778 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %2779 = zext i16 %2778 to i32
  %2780 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %2781 = zext i16 %2780 to i32
  %2782 = add nsw i32 %2779, %2781
  %2783 = add nsw i32 %2782, 1
  %2784 = ashr i32 %2783, 1
  %2785 = trunc i32 %2784 to i16
  %2786 = load ptr, ptr %16, align 8, !tbaa !54
  %2787 = getelementptr inbounds [8 x i16], ptr %2786, i64 0
  %2788 = getelementptr inbounds [8 x i16], ptr %2787, i64 0, i64 4
  store i16 %2785, ptr %2788, align 2, !tbaa !56
  %2789 = load ptr, ptr %16, align 8, !tbaa !54
  %2790 = getelementptr inbounds [8 x i16], ptr %2789, i64 1
  %2791 = getelementptr inbounds [8 x i16], ptr %2790, i64 0, i64 2
  store i16 %2785, ptr %2791, align 2, !tbaa !56
  %2792 = load ptr, ptr %16, align 8, !tbaa !54
  %2793 = getelementptr inbounds [8 x i16], ptr %2792, i64 2
  %2794 = getelementptr inbounds [8 x i16], ptr %2793, i64 0, i64 0
  store i16 %2785, ptr %2794, align 2, !tbaa !56
  %2795 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %2796 = zext i16 %2795 to i32
  %2797 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %2798 = zext i16 %2797 to i32
  %2799 = add nsw i32 %2796, %2798
  %2800 = add nsw i32 %2799, 1
  %2801 = ashr i32 %2800, 1
  %2802 = trunc i32 %2801 to i16
  %2803 = load ptr, ptr %16, align 8, !tbaa !54
  %2804 = getelementptr inbounds [8 x i16], ptr %2803, i64 0
  %2805 = getelementptr inbounds [8 x i16], ptr %2804, i64 0, i64 6
  store i16 %2802, ptr %2805, align 2, !tbaa !56
  %2806 = load ptr, ptr %16, align 8, !tbaa !54
  %2807 = getelementptr inbounds [8 x i16], ptr %2806, i64 1
  %2808 = getelementptr inbounds [8 x i16], ptr %2807, i64 0, i64 4
  store i16 %2802, ptr %2808, align 2, !tbaa !56
  %2809 = load ptr, ptr %16, align 8, !tbaa !54
  %2810 = getelementptr inbounds [8 x i16], ptr %2809, i64 2
  %2811 = getelementptr inbounds [8 x i16], ptr %2810, i64 0, i64 2
  store i16 %2802, ptr %2811, align 2, !tbaa !56
  %2812 = load ptr, ptr %16, align 8, !tbaa !54
  %2813 = getelementptr inbounds [8 x i16], ptr %2812, i64 3
  %2814 = getelementptr inbounds [8 x i16], ptr %2813, i64 0, i64 0
  store i16 %2802, ptr %2814, align 2, !tbaa !56
  %2815 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %2816 = zext i16 %2815 to i32
  %2817 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %2818 = zext i16 %2817 to i32
  %2819 = add nsw i32 %2816, %2818
  %2820 = add nsw i32 %2819, 1
  %2821 = ashr i32 %2820, 1
  %2822 = trunc i32 %2821 to i16
  %2823 = load ptr, ptr %16, align 8, !tbaa !54
  %2824 = getelementptr inbounds [8 x i16], ptr %2823, i64 1
  %2825 = getelementptr inbounds [8 x i16], ptr %2824, i64 0, i64 6
  store i16 %2822, ptr %2825, align 2, !tbaa !56
  %2826 = load ptr, ptr %16, align 8, !tbaa !54
  %2827 = getelementptr inbounds [8 x i16], ptr %2826, i64 2
  %2828 = getelementptr inbounds [8 x i16], ptr %2827, i64 0, i64 4
  store i16 %2822, ptr %2828, align 2, !tbaa !56
  %2829 = load ptr, ptr %16, align 8, !tbaa !54
  %2830 = getelementptr inbounds [8 x i16], ptr %2829, i64 3
  %2831 = getelementptr inbounds [8 x i16], ptr %2830, i64 0, i64 2
  store i16 %2822, ptr %2831, align 2, !tbaa !56
  %2832 = load ptr, ptr %16, align 8, !tbaa !54
  %2833 = getelementptr inbounds [8 x i16], ptr %2832, i64 4
  %2834 = getelementptr inbounds [8 x i16], ptr %2833, i64 0, i64 0
  store i16 %2822, ptr %2834, align 2, !tbaa !56
  %2835 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %2836 = zext i16 %2835 to i32
  %2837 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %2838 = zext i16 %2837 to i32
  %2839 = add nsw i32 %2836, %2838
  %2840 = add nsw i32 %2839, 1
  %2841 = ashr i32 %2840, 1
  %2842 = trunc i32 %2841 to i16
  %2843 = load ptr, ptr %16, align 8, !tbaa !54
  %2844 = getelementptr inbounds [8 x i16], ptr %2843, i64 2
  %2845 = getelementptr inbounds [8 x i16], ptr %2844, i64 0, i64 6
  store i16 %2842, ptr %2845, align 2, !tbaa !56
  %2846 = load ptr, ptr %16, align 8, !tbaa !54
  %2847 = getelementptr inbounds [8 x i16], ptr %2846, i64 3
  %2848 = getelementptr inbounds [8 x i16], ptr %2847, i64 0, i64 4
  store i16 %2842, ptr %2848, align 2, !tbaa !56
  %2849 = load ptr, ptr %16, align 8, !tbaa !54
  %2850 = getelementptr inbounds [8 x i16], ptr %2849, i64 4
  %2851 = getelementptr inbounds [8 x i16], ptr %2850, i64 0, i64 2
  store i16 %2842, ptr %2851, align 2, !tbaa !56
  %2852 = load ptr, ptr %16, align 8, !tbaa !54
  %2853 = getelementptr inbounds [8 x i16], ptr %2852, i64 5
  %2854 = getelementptr inbounds [8 x i16], ptr %2853, i64 0, i64 0
  store i16 %2842, ptr %2854, align 2, !tbaa !56
  %2855 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %2856 = zext i16 %2855 to i32
  %2857 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 24), align 2, !tbaa !56
  %2858 = zext i16 %2857 to i32
  %2859 = add nsw i32 %2856, %2858
  %2860 = add nsw i32 %2859, 1
  %2861 = ashr i32 %2860, 1
  %2862 = trunc i32 %2861 to i16
  %2863 = load ptr, ptr %16, align 8, !tbaa !54
  %2864 = getelementptr inbounds [8 x i16], ptr %2863, i64 3
  %2865 = getelementptr inbounds [8 x i16], ptr %2864, i64 0, i64 6
  store i16 %2862, ptr %2865, align 2, !tbaa !56
  %2866 = load ptr, ptr %16, align 8, !tbaa !54
  %2867 = getelementptr inbounds [8 x i16], ptr %2866, i64 4
  %2868 = getelementptr inbounds [8 x i16], ptr %2867, i64 0, i64 4
  store i16 %2862, ptr %2868, align 2, !tbaa !56
  %2869 = load ptr, ptr %16, align 8, !tbaa !54
  %2870 = getelementptr inbounds [8 x i16], ptr %2869, i64 5
  %2871 = getelementptr inbounds [8 x i16], ptr %2870, i64 0, i64 2
  store i16 %2862, ptr %2871, align 2, !tbaa !56
  %2872 = load ptr, ptr %16, align 8, !tbaa !54
  %2873 = getelementptr inbounds [8 x i16], ptr %2872, i64 6
  %2874 = getelementptr inbounds [8 x i16], ptr %2873, i64 0, i64 0
  store i16 %2862, ptr %2874, align 2, !tbaa !56
  %2875 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 24), align 2, !tbaa !56
  %2876 = load ptr, ptr %16, align 8, !tbaa !54
  %2877 = getelementptr inbounds [8 x i16], ptr %2876, i64 7
  %2878 = getelementptr inbounds [8 x i16], ptr %2877, i64 0, i64 7
  store i16 %2875, ptr %2878, align 2, !tbaa !56
  %2879 = load ptr, ptr %16, align 8, !tbaa !54
  %2880 = getelementptr inbounds [8 x i16], ptr %2879, i64 7
  %2881 = getelementptr inbounds [8 x i16], ptr %2880, i64 0, i64 6
  store i16 %2875, ptr %2881, align 2, !tbaa !56
  %2882 = load ptr, ptr %16, align 8, !tbaa !54
  %2883 = getelementptr inbounds [8 x i16], ptr %2882, i64 7
  %2884 = getelementptr inbounds [8 x i16], ptr %2883, i64 0, i64 5
  store i16 %2875, ptr %2884, align 2, !tbaa !56
  %2885 = load ptr, ptr %16, align 8, !tbaa !54
  %2886 = getelementptr inbounds [8 x i16], ptr %2885, i64 7
  %2887 = getelementptr inbounds [8 x i16], ptr %2886, i64 0, i64 4
  store i16 %2875, ptr %2887, align 2, !tbaa !56
  %2888 = load ptr, ptr %16, align 8, !tbaa !54
  %2889 = getelementptr inbounds [8 x i16], ptr %2888, i64 7
  %2890 = getelementptr inbounds [8 x i16], ptr %2889, i64 0, i64 3
  store i16 %2875, ptr %2890, align 2, !tbaa !56
  %2891 = load ptr, ptr %16, align 8, !tbaa !54
  %2892 = getelementptr inbounds [8 x i16], ptr %2891, i64 7
  %2893 = getelementptr inbounds [8 x i16], ptr %2892, i64 0, i64 2
  store i16 %2875, ptr %2893, align 2, !tbaa !56
  %2894 = load ptr, ptr %16, align 8, !tbaa !54
  %2895 = getelementptr inbounds [8 x i16], ptr %2894, i64 7
  %2896 = getelementptr inbounds [8 x i16], ptr %2895, i64 0, i64 1
  store i16 %2875, ptr %2896, align 2, !tbaa !56
  %2897 = load ptr, ptr %16, align 8, !tbaa !54
  %2898 = getelementptr inbounds [8 x i16], ptr %2897, i64 7
  %2899 = getelementptr inbounds [8 x i16], ptr %2898, i64 0, i64 0
  store i16 %2875, ptr %2899, align 2, !tbaa !56
  %2900 = load ptr, ptr %16, align 8, !tbaa !54
  %2901 = getelementptr inbounds [8 x i16], ptr %2900, i64 6
  %2902 = getelementptr inbounds [8 x i16], ptr %2901, i64 0, i64 7
  store i16 %2875, ptr %2902, align 2, !tbaa !56
  %2903 = load ptr, ptr %16, align 8, !tbaa !54
  %2904 = getelementptr inbounds [8 x i16], ptr %2903, i64 6
  %2905 = getelementptr inbounds [8 x i16], ptr %2904, i64 0, i64 6
  store i16 %2875, ptr %2905, align 2, !tbaa !56
  %2906 = load ptr, ptr %16, align 8, !tbaa !54
  %2907 = getelementptr inbounds [8 x i16], ptr %2906, i64 6
  %2908 = getelementptr inbounds [8 x i16], ptr %2907, i64 0, i64 5
  store i16 %2875, ptr %2908, align 2, !tbaa !56
  %2909 = load ptr, ptr %16, align 8, !tbaa !54
  %2910 = getelementptr inbounds [8 x i16], ptr %2909, i64 6
  %2911 = getelementptr inbounds [8 x i16], ptr %2910, i64 0, i64 4
  store i16 %2875, ptr %2911, align 2, !tbaa !56
  %2912 = load ptr, ptr %16, align 8, !tbaa !54
  %2913 = getelementptr inbounds [8 x i16], ptr %2912, i64 6
  %2914 = getelementptr inbounds [8 x i16], ptr %2913, i64 0, i64 3
  store i16 %2875, ptr %2914, align 2, !tbaa !56
  %2915 = load ptr, ptr %16, align 8, !tbaa !54
  %2916 = getelementptr inbounds [8 x i16], ptr %2915, i64 6
  %2917 = getelementptr inbounds [8 x i16], ptr %2916, i64 0, i64 2
  store i16 %2875, ptr %2917, align 2, !tbaa !56
  %2918 = load ptr, ptr %16, align 8, !tbaa !54
  %2919 = getelementptr inbounds [8 x i16], ptr %2918, i64 5
  %2920 = getelementptr inbounds [8 x i16], ptr %2919, i64 0, i64 7
  store i16 %2875, ptr %2920, align 2, !tbaa !56
  %2921 = load ptr, ptr %16, align 8, !tbaa !54
  %2922 = getelementptr inbounds [8 x i16], ptr %2921, i64 5
  %2923 = getelementptr inbounds [8 x i16], ptr %2922, i64 0, i64 6
  store i16 %2875, ptr %2923, align 2, !tbaa !56
  %2924 = load ptr, ptr %16, align 8, !tbaa !54
  %2925 = getelementptr inbounds [8 x i16], ptr %2924, i64 5
  %2926 = getelementptr inbounds [8 x i16], ptr %2925, i64 0, i64 5
  store i16 %2875, ptr %2926, align 2, !tbaa !56
  %2927 = load ptr, ptr %16, align 8, !tbaa !54
  %2928 = getelementptr inbounds [8 x i16], ptr %2927, i64 5
  %2929 = getelementptr inbounds [8 x i16], ptr %2928, i64 0, i64 4
  store i16 %2875, ptr %2929, align 2, !tbaa !56
  %2930 = load ptr, ptr %16, align 8, !tbaa !54
  %2931 = getelementptr inbounds [8 x i16], ptr %2930, i64 4
  %2932 = getelementptr inbounds [8 x i16], ptr %2931, i64 0, i64 7
  store i16 %2875, ptr %2932, align 2, !tbaa !56
  %2933 = load ptr, ptr %16, align 8, !tbaa !54
  %2934 = getelementptr inbounds [8 x i16], ptr %2933, i64 4
  %2935 = getelementptr inbounds [8 x i16], ptr %2934, i64 0, i64 6
  store i16 %2875, ptr %2935, align 2, !tbaa !56
  %2936 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %2937 = zext i16 %2936 to i32
  %2938 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 24), align 2, !tbaa !56
  %2939 = zext i16 %2938 to i32
  %2940 = mul nsw i32 3, %2939
  %2941 = add nsw i32 %2937, %2940
  %2942 = add nsw i32 %2941, 2
  %2943 = ashr i32 %2942, 2
  %2944 = trunc i32 %2943 to i16
  %2945 = load ptr, ptr %16, align 8, !tbaa !54
  %2946 = getelementptr inbounds [8 x i16], ptr %2945, i64 3
  %2947 = getelementptr inbounds [8 x i16], ptr %2946, i64 0, i64 7
  store i16 %2944, ptr %2947, align 2, !tbaa !56
  %2948 = load ptr, ptr %16, align 8, !tbaa !54
  %2949 = getelementptr inbounds [8 x i16], ptr %2948, i64 4
  %2950 = getelementptr inbounds [8 x i16], ptr %2949, i64 0, i64 5
  store i16 %2944, ptr %2950, align 2, !tbaa !56
  %2951 = load ptr, ptr %16, align 8, !tbaa !54
  %2952 = getelementptr inbounds [8 x i16], ptr %2951, i64 5
  %2953 = getelementptr inbounds [8 x i16], ptr %2952, i64 0, i64 3
  store i16 %2944, ptr %2953, align 2, !tbaa !56
  %2954 = load ptr, ptr %16, align 8, !tbaa !54
  %2955 = getelementptr inbounds [8 x i16], ptr %2954, i64 6
  %2956 = getelementptr inbounds [8 x i16], ptr %2955, i64 0, i64 1
  store i16 %2944, ptr %2956, align 2, !tbaa !56
  %2957 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 24), align 2, !tbaa !56
  %2958 = zext i16 %2957 to i32
  %2959 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %2960 = zext i16 %2959 to i32
  %2961 = add nsw i32 %2958, %2960
  %2962 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %2963 = zext i16 %2962 to i32
  %2964 = mul nsw i32 2, %2963
  %2965 = add nsw i32 %2961, %2964
  %2966 = add nsw i32 %2965, 2
  %2967 = ashr i32 %2966, 2
  %2968 = trunc i32 %2967 to i16
  %2969 = load ptr, ptr %16, align 8, !tbaa !54
  %2970 = getelementptr inbounds [8 x i16], ptr %2969, i64 2
  %2971 = getelementptr inbounds [8 x i16], ptr %2970, i64 0, i64 7
  store i16 %2968, ptr %2971, align 2, !tbaa !56
  %2972 = load ptr, ptr %16, align 8, !tbaa !54
  %2973 = getelementptr inbounds [8 x i16], ptr %2972, i64 3
  %2974 = getelementptr inbounds [8 x i16], ptr %2973, i64 0, i64 5
  store i16 %2968, ptr %2974, align 2, !tbaa !56
  %2975 = load ptr, ptr %16, align 8, !tbaa !54
  %2976 = getelementptr inbounds [8 x i16], ptr %2975, i64 4
  %2977 = getelementptr inbounds [8 x i16], ptr %2976, i64 0, i64 3
  store i16 %2968, ptr %2977, align 2, !tbaa !56
  %2978 = load ptr, ptr %16, align 8, !tbaa !54
  %2979 = getelementptr inbounds [8 x i16], ptr %2978, i64 5
  %2980 = getelementptr inbounds [8 x i16], ptr %2979, i64 0, i64 1
  store i16 %2968, ptr %2980, align 2, !tbaa !56
  %2981 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 23), align 2, !tbaa !56
  %2982 = zext i16 %2981 to i32
  %2983 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %2984 = zext i16 %2983 to i32
  %2985 = add nsw i32 %2982, %2984
  %2986 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %2987 = zext i16 %2986 to i32
  %2988 = mul nsw i32 2, %2987
  %2989 = add nsw i32 %2985, %2988
  %2990 = add nsw i32 %2989, 2
  %2991 = ashr i32 %2990, 2
  %2992 = trunc i32 %2991 to i16
  %2993 = load ptr, ptr %16, align 8, !tbaa !54
  %2994 = getelementptr inbounds [8 x i16], ptr %2993, i64 1
  %2995 = getelementptr inbounds [8 x i16], ptr %2994, i64 0, i64 7
  store i16 %2992, ptr %2995, align 2, !tbaa !56
  %2996 = load ptr, ptr %16, align 8, !tbaa !54
  %2997 = getelementptr inbounds [8 x i16], ptr %2996, i64 2
  %2998 = getelementptr inbounds [8 x i16], ptr %2997, i64 0, i64 5
  store i16 %2992, ptr %2998, align 2, !tbaa !56
  %2999 = load ptr, ptr %16, align 8, !tbaa !54
  %3000 = getelementptr inbounds [8 x i16], ptr %2999, i64 3
  %3001 = getelementptr inbounds [8 x i16], ptr %3000, i64 0, i64 3
  store i16 %2992, ptr %3001, align 2, !tbaa !56
  %3002 = load ptr, ptr %16, align 8, !tbaa !54
  %3003 = getelementptr inbounds [8 x i16], ptr %3002, i64 4
  %3004 = getelementptr inbounds [8 x i16], ptr %3003, i64 0, i64 1
  store i16 %2992, ptr %3004, align 2, !tbaa !56
  %3005 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 22), align 2, !tbaa !56
  %3006 = zext i16 %3005 to i32
  %3007 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %3008 = zext i16 %3007 to i32
  %3009 = add nsw i32 %3006, %3008
  %3010 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %3011 = zext i16 %3010 to i32
  %3012 = mul nsw i32 2, %3011
  %3013 = add nsw i32 %3009, %3012
  %3014 = add nsw i32 %3013, 2
  %3015 = ashr i32 %3014, 2
  %3016 = trunc i32 %3015 to i16
  %3017 = load ptr, ptr %16, align 8, !tbaa !54
  %3018 = getelementptr inbounds [8 x i16], ptr %3017, i64 0
  %3019 = getelementptr inbounds [8 x i16], ptr %3018, i64 0, i64 7
  store i16 %3016, ptr %3019, align 2, !tbaa !56
  %3020 = load ptr, ptr %16, align 8, !tbaa !54
  %3021 = getelementptr inbounds [8 x i16], ptr %3020, i64 1
  %3022 = getelementptr inbounds [8 x i16], ptr %3021, i64 0, i64 5
  store i16 %3016, ptr %3022, align 2, !tbaa !56
  %3023 = load ptr, ptr %16, align 8, !tbaa !54
  %3024 = getelementptr inbounds [8 x i16], ptr %3023, i64 2
  %3025 = getelementptr inbounds [8 x i16], ptr %3024, i64 0, i64 3
  store i16 %3016, ptr %3025, align 2, !tbaa !56
  %3026 = load ptr, ptr %16, align 8, !tbaa !54
  %3027 = getelementptr inbounds [8 x i16], ptr %3026, i64 3
  %3028 = getelementptr inbounds [8 x i16], ptr %3027, i64 0, i64 1
  store i16 %3016, ptr %3028, align 2, !tbaa !56
  %3029 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 21), align 2, !tbaa !56
  %3030 = zext i16 %3029 to i32
  %3031 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %3032 = zext i16 %3031 to i32
  %3033 = add nsw i32 %3030, %3032
  %3034 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %3035 = zext i16 %3034 to i32
  %3036 = mul nsw i32 2, %3035
  %3037 = add nsw i32 %3033, %3036
  %3038 = add nsw i32 %3037, 2
  %3039 = ashr i32 %3038, 2
  %3040 = trunc i32 %3039 to i16
  %3041 = load ptr, ptr %16, align 8, !tbaa !54
  %3042 = getelementptr inbounds [8 x i16], ptr %3041, i64 0
  %3043 = getelementptr inbounds [8 x i16], ptr %3042, i64 0, i64 5
  store i16 %3040, ptr %3043, align 2, !tbaa !56
  %3044 = load ptr, ptr %16, align 8, !tbaa !54
  %3045 = getelementptr inbounds [8 x i16], ptr %3044, i64 1
  %3046 = getelementptr inbounds [8 x i16], ptr %3045, i64 0, i64 3
  store i16 %3040, ptr %3046, align 2, !tbaa !56
  %3047 = load ptr, ptr %16, align 8, !tbaa !54
  %3048 = getelementptr inbounds [8 x i16], ptr %3047, i64 2
  %3049 = getelementptr inbounds [8 x i16], ptr %3048, i64 0, i64 1
  store i16 %3040, ptr %3049, align 2, !tbaa !56
  %3050 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 20), align 2, !tbaa !56
  %3051 = zext i16 %3050 to i32
  %3052 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %3053 = zext i16 %3052 to i32
  %3054 = add nsw i32 %3051, %3053
  %3055 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %3056 = zext i16 %3055 to i32
  %3057 = mul nsw i32 2, %3056
  %3058 = add nsw i32 %3054, %3057
  %3059 = add nsw i32 %3058, 2
  %3060 = ashr i32 %3059, 2
  %3061 = trunc i32 %3060 to i16
  %3062 = load ptr, ptr %16, align 8, !tbaa !54
  %3063 = getelementptr inbounds [8 x i16], ptr %3062, i64 0
  %3064 = getelementptr inbounds [8 x i16], ptr %3063, i64 0, i64 3
  store i16 %3061, ptr %3064, align 2, !tbaa !56
  %3065 = load ptr, ptr %16, align 8, !tbaa !54
  %3066 = getelementptr inbounds [8 x i16], ptr %3065, i64 1
  %3067 = getelementptr inbounds [8 x i16], ptr %3066, i64 0, i64 1
  store i16 %3061, ptr %3067, align 2, !tbaa !56
  %3068 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 19), align 2, !tbaa !56
  %3069 = zext i16 %3068 to i32
  %3070 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 17), align 2, !tbaa !56
  %3071 = zext i16 %3070 to i32
  %3072 = add nsw i32 %3069, %3071
  %3073 = load i16, ptr getelementptr inbounds ([25 x i16], ptr @intrapred_luma8x8.PredPel, i64 0, i64 18), align 2, !tbaa !56
  %3074 = zext i16 %3073 to i32
  %3075 = mul nsw i32 2, %3074
  %3076 = add nsw i32 %3072, %3075
  %3077 = add nsw i32 %3076, 2
  %3078 = ashr i32 %3077, 2
  %3079 = trunc i32 %3078 to i16
  %3080 = load ptr, ptr %16, align 8, !tbaa !54
  %3081 = getelementptr inbounds [8 x i16], ptr %3080, i64 0
  %3082 = getelementptr inbounds [8 x i16], ptr %3081, i64 0, i64 1
  store i16 %3079, ptr %3082, align 2, !tbaa !56
  br label %3083

3083:                                             ; preds = %2748, %2745
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %23) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %22) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %21) #7
  call void @llvm.lifetime.end.p0(i64 192, ptr %20) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7
  ret void
}

declare signext i32 @distortion8x8(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
define dso_local double @RDCost_for_8x8IntraBlocks(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2, double noundef %3, double noundef %4, i32 noundef signext %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca %struct.syntaxelement, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca i32, align 4
  store ptr %0, ptr %7, align 8, !tbaa !7
  store i32 %1, ptr %8, align 4, !tbaa !10
  store i32 %2, ptr %9, align 4, !tbaa !10
  store double %3, ptr %10, align 8, !tbaa !3
  store double %4, ptr %11, align 8, !tbaa !3
  store i32 %5, ptr %12, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #7
  store double 0.000000e+00, ptr %13, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #7
  store i64 0, ptr %18, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7
  %31 = load i32, ptr %8, align 4, !tbaa !10
  %32 = and i32 %31, 1
  %33 = mul nsw i32 8, %32
  store i32 %33, ptr %19, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #7
  %34 = load i32, ptr %8, align 4, !tbaa !10
  %35 = ashr i32 %34, 1
  %36 = mul nsw i32 8, %35
  store i32 %36, ptr %20, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #7
  %37 = load ptr, ptr @img, align 8, !tbaa !14
  %38 = getelementptr inbounds nuw %struct.ImageParameters, ptr %37, i32 0, i32 39
  %39 = load i32, ptr %38, align 8, !tbaa !15
  %40 = load i32, ptr %19, align 4, !tbaa !10
  %41 = add nsw i32 %39, %40
  store i32 %41, ptr %21, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #7
  %42 = load ptr, ptr @img, align 8, !tbaa !14
  %43 = getelementptr inbounds nuw %struct.ImageParameters, ptr %42, i32 0, i32 40
  %44 = load i32, ptr %43, align 4, !tbaa !32
  %45 = load i32, ptr %20, align 4, !tbaa !10
  %46 = add nsw i32 %44, %45
  store i32 %46, ptr %22, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #7
  %47 = load ptr, ptr @img, align 8, !tbaa !14
  %48 = getelementptr inbounds nuw %struct.ImageParameters, ptr %47, i32 0, i32 44
  %49 = load i32, ptr %48, align 4, !tbaa !34
  %50 = load i32, ptr %20, align 4, !tbaa !10
  %51 = add nsw i32 %49, %50
  store i32 %51, ptr %23, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %24) #7
  %52 = load ptr, ptr @imgY_org, align 8, !tbaa !35
  store ptr %52, ptr %24, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %25) #7
  %53 = load ptr, ptr @enc_picture, align 8, !tbaa !68
  %54 = getelementptr inbounds nuw %struct.storable_picture, ptr %53, i32 0, i32 29
  %55 = load ptr, ptr %54, align 8, !tbaa !70
  store ptr %55, ptr %25, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %26) #7
  %56 = load ptr, ptr @img, align 8, !tbaa !14
  %57 = getelementptr inbounds nuw %struct.ImageParameters, ptr %56, i32 0, i32 60
  %58 = load ptr, ptr %57, align 8, !tbaa !101
  store ptr %58, ptr %26, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 40, ptr %27) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %28) #7
  %59 = load ptr, ptr @input, align 8, !tbaa !14
  %60 = getelementptr inbounds nuw %struct.InputParameters, ptr %59, i32 0, i32 76
  %61 = load i32, ptr %60, align 8, !tbaa !102
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !7
  store ptr %64, ptr %28, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %29) #7
  store i32 0, ptr %14, align 4, !tbaa !10
  %65 = load i32, ptr %8, align 4, !tbaa !10
  %66 = call signext i32 @dct_luma8x8(i32 noundef signext %65, ptr noundef %14, i32 noundef signext 1)
  %67 = load ptr, ptr %7, align 8, !tbaa !7
  store i32 %66, ptr %67, align 4, !tbaa !10
  store i32 0, ptr %16, align 4, !tbaa !10
  br label %68

68:                                               ; preds = %117, %6
  %69 = load i32, ptr %16, align 4, !tbaa !10
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %120

71:                                               ; preds = %68
  %72 = load i32, ptr %21, align 4, !tbaa !10
  store i32 %72, ptr %15, align 4, !tbaa !10
  br label %73

73:                                               ; preds = %113, %71
  %74 = load i32, ptr %15, align 4, !tbaa !10
  %75 = load i32, ptr %21, align 4, !tbaa !10
  %76 = add nsw i32 %75, 8
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %116

78:                                               ; preds = %73
  %79 = load ptr, ptr @img, align 8, !tbaa !14
  %80 = getelementptr inbounds nuw %struct.ImageParameters, ptr %79, i32 0, i32 62
  %81 = load ptr, ptr %80, align 8, !tbaa !103
  %82 = load ptr, ptr %24, align 8, !tbaa !35
  %83 = load i32, ptr %23, align 4, !tbaa !10
  %84 = load i32, ptr %16, align 4, !tbaa !10
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %82, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !54
  %89 = load i32, ptr %15, align 4, !tbaa !10
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16, ptr %88, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !56
  %93 = zext i16 %92 to i32
  %94 = load ptr, ptr %25, align 8, !tbaa !35
  %95 = load i32, ptr %22, align 4, !tbaa !10
  %96 = load i32, ptr %16, align 4, !tbaa !10
  %97 = add nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %94, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !54
  %101 = load i32, ptr %15, align 4, !tbaa !10
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i16, ptr %100, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !56
  %105 = zext i16 %104 to i32
  %106 = sub nsw i32 %93, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, ptr %81, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !10
  %110 = sext i32 %109 to i64
  %111 = load i64, ptr %18, align 8, !tbaa !99
  %112 = add nsw i64 %111, %110
  store i64 %112, ptr %18, align 8, !tbaa !99
  br label %113

113:                                              ; preds = %78
  %114 = load i32, ptr %15, align 4, !tbaa !10
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr %15, align 4, !tbaa !10
  br label %73, !llvm.loop !104

116:                                              ; preds = %73
  br label %117

117:                                              ; preds = %116
  %118 = load i32, ptr %16, align 4, !tbaa !10
  %119 = add nsw i32 %118, 1
  store i32 %119, ptr %16, align 4, !tbaa !10
  br label %68, !llvm.loop !105

120:                                              ; preds = %68
  %121 = load i32, ptr %12, align 4, !tbaa !10
  %122 = load i32, ptr %9, align 4, !tbaa !10
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %136

125:                                              ; preds = %120
  %126 = load i32, ptr %9, align 4, !tbaa !10
  %127 = load i32, ptr %12, align 4, !tbaa !10
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, ptr %9, align 4, !tbaa !10
  br label %134

131:                                              ; preds = %125
  %132 = load i32, ptr %9, align 4, !tbaa !10
  %133 = sub nsw i32 %132, 1
  br label %134

134:                                              ; preds = %131, %129
  %135 = phi i32 [ %130, %129 ], [ %133, %131 ]
  br label %136

136:                                              ; preds = %134, %124
  %137 = phi i32 [ -1, %124 ], [ %135, %134 ]
  %138 = getelementptr inbounds nuw %struct.syntaxelement, ptr %27, i32 0, i32 1
  store i32 %137, ptr %138, align 4, !tbaa !106
  %139 = load i32, ptr %8, align 4, !tbaa !10
  %140 = getelementptr inbounds nuw %struct.syntaxelement, ptr %27, i32 0, i32 6
  store i32 %139, ptr %140, align 8, !tbaa !108
  %141 = getelementptr inbounds nuw %struct.syntaxelement, ptr %27, i32 0, i32 0
  store i32 4, ptr %141, align 8, !tbaa !109
  %142 = load ptr, ptr @img, align 8, !tbaa !14
  %143 = getelementptr inbounds nuw %struct.ImageParameters, ptr %142, i32 0, i32 5
  %144 = load i32, ptr %143, align 4, !tbaa !110
  %145 = icmp ne i32 %144, 1
  br i1 %145, label %146, label %155

146:                                              ; preds = %136
  %147 = load ptr, ptr %26, align 8, !tbaa !14
  %148 = getelementptr inbounds nuw %struct.Slice, ptr %147, i32 0, i32 6
  %149 = load ptr, ptr %148, align 8, !tbaa !111
  %150 = load ptr, ptr %28, align 8, !tbaa !7
  %151 = getelementptr inbounds i32, ptr %150, i64 4
  %152 = load i32, ptr %151, align 4, !tbaa !10
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.datapartition, ptr %149, i64 %153
  store ptr %154, ptr %29, align 8, !tbaa !114
  br label %164

155:                                              ; preds = %136
  %156 = load ptr, ptr %26, align 8, !tbaa !14
  %157 = getelementptr inbounds nuw %struct.Slice, ptr %156, i32 0, i32 6
  %158 = load ptr, ptr %157, align 8, !tbaa !111
  %159 = load ptr, ptr %28, align 8, !tbaa !7
  %160 = getelementptr inbounds i32, ptr %159, i64 16
  %161 = load i32, ptr %160, align 4, !tbaa !10
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.datapartition, ptr %158, i64 %162
  store ptr %163, ptr %29, align 8, !tbaa !114
  br label %164

164:                                              ; preds = %155, %146
  %165 = load ptr, ptr @writeIntraPredMode, align 8, !tbaa !14
  %166 = load ptr, ptr %29, align 8, !tbaa !114
  call void %165(ptr noundef %27, ptr noundef %166)
  %167 = getelementptr inbounds nuw %struct.syntaxelement, ptr %27, i32 0, i32 3
  %168 = load i32, ptr %167, align 4, !tbaa !115
  store i32 %168, ptr %17, align 4, !tbaa !10
  %169 = load ptr, ptr @input, align 8, !tbaa !14
  %170 = getelementptr inbounds nuw %struct.InputParameters, ptr %169, i32 0, i32 74
  %171 = load i32, ptr %170, align 8, !tbaa !116
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 4, ptr %30) #7
  store i32 0, ptr %30, align 4, !tbaa !10
  br label %174

174:                                              ; preds = %183, %173
  %175 = load i32, ptr %30, align 4, !tbaa !10
  %176 = icmp slt i32 %175, 4
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = load i32, ptr %8, align 4, !tbaa !10
  %179 = load i32, ptr %30, align 4, !tbaa !10
  %180 = call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 0, i32 noundef signext %178, i32 noundef signext %179, i32 noundef signext 0)
  %181 = load i32, ptr %17, align 4, !tbaa !10
  %182 = add nsw i32 %181, %180
  store i32 %182, ptr %17, align 4, !tbaa !10
  br label %183

183:                                              ; preds = %177
  %184 = load i32, ptr %30, align 4, !tbaa !10
  %185 = add nsw i32 %184, 1
  store i32 %185, ptr %30, align 4, !tbaa !10
  br label %174, !llvm.loop !117

186:                                              ; preds = %174
  call void @llvm.lifetime.end.p0(i64 4, ptr %30) #7
  br label %192

187:                                              ; preds = %164
  %188 = load i32, ptr %8, align 4, !tbaa !10
  %189 = call signext i32 @writeLumaCoeff8x8_CABAC(i32 noundef signext %188, i32 noundef signext 1)
  %190 = load i32, ptr %17, align 4, !tbaa !10
  %191 = add nsw i32 %190, %189
  store i32 %191, ptr %17, align 4, !tbaa !10
  br label %192

192:                                              ; preds = %187, %186
  %193 = load i64, ptr %18, align 8, !tbaa !99
  %194 = sitofp i64 %193 to double
  %195 = load double, ptr %10, align 8, !tbaa !3
  %196 = load i32, ptr %17, align 4, !tbaa !10
  %197 = sitofp i32 %196 to double
  %198 = call double @llvm.fmuladd.f64(double %195, double %197, double %194)
  store double %198, ptr %13, align 8, !tbaa !3
  %199 = load double, ptr %13, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 8, ptr %29) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %28) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %27) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %26) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %25) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %24) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #7
  ret double %199
}

declare void @reset_coding_state_cs_cm() #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind
define dso_local signext i32 @dct_luma8x8(i32 noundef signext %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca [8 x [8 x i32]], align 4
  %23 = alloca [8 x i32], align 4
  %24 = alloca [8 x i32], align 4
  %25 = alloca [4 x i32], align 4
  %26 = alloca [4 x i32], align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca i32, align 4
  %34 = alloca ptr, align 8
  %35 = alloca i32, align 4
  %36 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4, !tbaa !10
  store ptr %1, ptr %5, align 8, !tbaa !7
  store i32 %2, ptr %6, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #7
  %37 = load i32, ptr %4, align 4, !tbaa !10
  %38 = and i32 %37, 1
  %39 = mul nsw i32 8, %38
  store i32 %39, ptr %18, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7
  %40 = load i32, ptr %4, align 4, !tbaa !10
  %41 = ashr i32 %40, 1
  %42 = mul nsw i32 8, %41
  store i32 %42, ptr %19, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %20) #7
  %43 = load ptr, ptr @img, align 8, !tbaa !14
  %44 = getelementptr inbounds nuw %struct.ImageParameters, ptr %43, i32 0, i32 53
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  %46 = load i32, ptr %4, align 4, !tbaa !10
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !62
  %50 = getelementptr inbounds ptr, ptr %49, i64 0
  %51 = load ptr, ptr %50, align 8, !tbaa !63
  %52 = getelementptr inbounds ptr, ptr %51, i64 0
  %53 = load ptr, ptr %52, align 8, !tbaa !7
  store ptr %53, ptr %20, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %21) #7
  %54 = load ptr, ptr @img, align 8, !tbaa !14
  %55 = getelementptr inbounds nuw %struct.ImageParameters, ptr %54, i32 0, i32 53
  %56 = load ptr, ptr %55, align 8, !tbaa !65
  %57 = load i32, ptr %4, align 4, !tbaa !10
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  %61 = getelementptr inbounds ptr, ptr %60, i64 0
  %62 = load ptr, ptr %61, align 8, !tbaa !63
  %63 = getelementptr inbounds ptr, ptr %62, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !7
  store ptr %64, ptr %21, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 256, ptr %22) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr %23) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr %24) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr %25) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr %26) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %29) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %30) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %31) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %32) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %33) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %34) #7
  %65 = load ptr, ptr @img, align 8, !tbaa !14
  %66 = getelementptr inbounds nuw %struct.ImageParameters, ptr %65, i32 0, i32 61
  %67 = load ptr, ptr %66, align 8, !tbaa !37
  %68 = load ptr, ptr @img, align 8, !tbaa !14
  %69 = getelementptr inbounds nuw %struct.ImageParameters, ptr %68, i32 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !38
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.macroblock, ptr %67, i64 %71
  store ptr %72, ptr %34, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 4, ptr %35) #7
  %73 = load ptr, ptr @img, align 8, !tbaa !14
  %74 = getelementptr inbounds nuw %struct.ImageParameters, ptr %73, i32 0, i32 11
  %75 = load i32, ptr %74, align 4, !tbaa !118
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %3
  %78 = load ptr, ptr @img, align 8, !tbaa !14
  %79 = getelementptr inbounds nuw %struct.ImageParameters, ptr %78, i32 0, i32 161
  %80 = load i32, ptr %79, align 4, !tbaa !119
  %81 = icmp eq i32 %80, 1
  br label %82

82:                                               ; preds = %77, %3
  %83 = phi i1 [ false, %3 ], [ %81, %77 ]
  %84 = zext i1 %83 to i32
  store i32 %84, ptr %35, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %36) #7
  %85 = load ptr, ptr %34, align 8, !tbaa !39
  %86 = getelementptr inbounds nuw %struct.macroblock, ptr %85, i32 0, i32 20
  %87 = load i32, ptr %86, align 4, !tbaa !120
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, ptr @FIELD_SCAN8x8, ptr @SNGL_SCAN8x8
  store ptr %90, ptr %36, align 8, !tbaa !49
  %91 = load ptr, ptr @qp_per_matrix, align 8, !tbaa !7
  %92 = load ptr, ptr @img, align 8, !tbaa !14
  %93 = getelementptr inbounds nuw %struct.ImageParameters, ptr %92, i32 0, i32 11
  %94 = load i32, ptr %93, align 4, !tbaa !118
  %95 = sub nsw i32 %94, 0
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %91, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !10
  store i32 %98, ptr %15, align 4, !tbaa !10
  %99 = load ptr, ptr @qp_rem_matrix, align 8, !tbaa !7
  %100 = load ptr, ptr @img, align 8, !tbaa !14
  %101 = getelementptr inbounds nuw %struct.ImageParameters, ptr %100, i32 0, i32 11
  %102 = load i32, ptr %101, align 4, !tbaa !118
  %103 = sub nsw i32 %102, 0
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, ptr %99, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !10
  store i32 %106, ptr %16, align 4, !tbaa !10
  %107 = load i32, ptr %15, align 4, !tbaa !10
  %108 = add nsw i32 16, %107
  store i32 %108, ptr %17, align 4, !tbaa !10
  %109 = load ptr, ptr @LevelScale8x8Luma, align 8, !tbaa !61
  %110 = load i32, ptr %6, align 4, !tbaa !10
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds ptr, ptr %109, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !62
  %114 = load i32, ptr %16, align 4, !tbaa !10
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds ptr, ptr %113, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !63
  store ptr %117, ptr %30, align 8, !tbaa !63
  %118 = load ptr, ptr @LevelOffset8x8Luma, align 8, !tbaa !61
  %119 = load i32, ptr %6, align 4, !tbaa !10
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %118, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !62
  %123 = load i32, ptr %15, align 4, !tbaa !10
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds ptr, ptr %122, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !63
  store ptr %126, ptr %31, align 8, !tbaa !63
  %127 = load ptr, ptr @InvLevelScale8x8Luma, align 8, !tbaa !61
  %128 = load i32, ptr %6, align 4, !tbaa !10
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %127, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !62
  %132 = load i32, ptr %16, align 4, !tbaa !10
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds ptr, ptr %131, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !63
  store ptr %135, ptr %32, align 8, !tbaa !63
  %136 = load i32, ptr %35, align 4, !tbaa !10
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %1009, label %138

138:                                              ; preds = %82
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %139

139:                                              ; preds = %426, %138
  %140 = load i32, ptr %7, align 4, !tbaa !10
  %141 = icmp slt i32 %140, 8
  br i1 %141, label %142, label %429

142:                                              ; preds = %139
  %143 = load ptr, ptr @img, align 8, !tbaa !14
  %144 = getelementptr inbounds nuw %struct.ImageParameters, ptr %143, i32 0, i32 52
  %145 = load i32, ptr %7, align 4, !tbaa !10
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [16 x [16 x i32]], ptr %144, i64 0, i64 %146
  %148 = getelementptr inbounds [16 x i32], ptr %147, i64 0, i64 0
  %149 = load i32, ptr %148, align 8, !tbaa !10
  %150 = load ptr, ptr @img, align 8, !tbaa !14
  %151 = getelementptr inbounds nuw %struct.ImageParameters, ptr %150, i32 0, i32 52
  %152 = load i32, ptr %7, align 4, !tbaa !10
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [16 x [16 x i32]], ptr %151, i64 0, i64 %153
  %155 = getelementptr inbounds [16 x i32], ptr %154, i64 0, i64 7
  %156 = load i32, ptr %155, align 4, !tbaa !10
  %157 = add nsw i32 %149, %156
  %158 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 0
  store i32 %157, ptr %158, align 4, !tbaa !10
  %159 = load ptr, ptr @img, align 8, !tbaa !14
  %160 = getelementptr inbounds nuw %struct.ImageParameters, ptr %159, i32 0, i32 52
  %161 = load i32, ptr %7, align 4, !tbaa !10
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [16 x [16 x i32]], ptr %160, i64 0, i64 %162
  %164 = getelementptr inbounds [16 x i32], ptr %163, i64 0, i64 1
  %165 = load i32, ptr %164, align 4, !tbaa !10
  %166 = load ptr, ptr @img, align 8, !tbaa !14
  %167 = getelementptr inbounds nuw %struct.ImageParameters, ptr %166, i32 0, i32 52
  %168 = load i32, ptr %7, align 4, !tbaa !10
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [16 x [16 x i32]], ptr %167, i64 0, i64 %169
  %171 = getelementptr inbounds [16 x i32], ptr %170, i64 0, i64 6
  %172 = load i32, ptr %171, align 8, !tbaa !10
  %173 = add nsw i32 %165, %172
  %174 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 1
  store i32 %173, ptr %174, align 4, !tbaa !10
  %175 = load ptr, ptr @img, align 8, !tbaa !14
  %176 = getelementptr inbounds nuw %struct.ImageParameters, ptr %175, i32 0, i32 52
  %177 = load i32, ptr %7, align 4, !tbaa !10
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [16 x [16 x i32]], ptr %176, i64 0, i64 %178
  %180 = getelementptr inbounds [16 x i32], ptr %179, i64 0, i64 2
  %181 = load i32, ptr %180, align 8, !tbaa !10
  %182 = load ptr, ptr @img, align 8, !tbaa !14
  %183 = getelementptr inbounds nuw %struct.ImageParameters, ptr %182, i32 0, i32 52
  %184 = load i32, ptr %7, align 4, !tbaa !10
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [16 x [16 x i32]], ptr %183, i64 0, i64 %185
  %187 = getelementptr inbounds [16 x i32], ptr %186, i64 0, i64 5
  %188 = load i32, ptr %187, align 4, !tbaa !10
  %189 = add nsw i32 %181, %188
  %190 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 2
  store i32 %189, ptr %190, align 4, !tbaa !10
  %191 = load ptr, ptr @img, align 8, !tbaa !14
  %192 = getelementptr inbounds nuw %struct.ImageParameters, ptr %191, i32 0, i32 52
  %193 = load i32, ptr %7, align 4, !tbaa !10
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [16 x [16 x i32]], ptr %192, i64 0, i64 %194
  %196 = getelementptr inbounds [16 x i32], ptr %195, i64 0, i64 3
  %197 = load i32, ptr %196, align 4, !tbaa !10
  %198 = load ptr, ptr @img, align 8, !tbaa !14
  %199 = getelementptr inbounds nuw %struct.ImageParameters, ptr %198, i32 0, i32 52
  %200 = load i32, ptr %7, align 4, !tbaa !10
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [16 x [16 x i32]], ptr %199, i64 0, i64 %201
  %203 = getelementptr inbounds [16 x i32], ptr %202, i64 0, i64 4
  %204 = load i32, ptr %203, align 8, !tbaa !10
  %205 = add nsw i32 %197, %204
  %206 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 3
  store i32 %205, ptr %206, align 4, !tbaa !10
  %207 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 0
  %208 = load i32, ptr %207, align 4, !tbaa !10
  %209 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 3
  %210 = load i32, ptr %209, align 4, !tbaa !10
  %211 = add nsw i32 %208, %210
  %212 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0
  store i32 %211, ptr %212, align 4, !tbaa !10
  %213 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 1
  %214 = load i32, ptr %213, align 4, !tbaa !10
  %215 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 2
  %216 = load i32, ptr %215, align 4, !tbaa !10
  %217 = add nsw i32 %214, %216
  %218 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 1
  store i32 %217, ptr %218, align 4, !tbaa !10
  %219 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 0
  %220 = load i32, ptr %219, align 4, !tbaa !10
  %221 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 3
  %222 = load i32, ptr %221, align 4, !tbaa !10
  %223 = sub nsw i32 %220, %222
  %224 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 2
  store i32 %223, ptr %224, align 4, !tbaa !10
  %225 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 1
  %226 = load i32, ptr %225, align 4, !tbaa !10
  %227 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 2
  %228 = load i32, ptr %227, align 4, !tbaa !10
  %229 = sub nsw i32 %226, %228
  %230 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 3
  store i32 %229, ptr %230, align 4, !tbaa !10
  %231 = load ptr, ptr @img, align 8, !tbaa !14
  %232 = getelementptr inbounds nuw %struct.ImageParameters, ptr %231, i32 0, i32 52
  %233 = load i32, ptr %7, align 4, !tbaa !10
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [16 x [16 x i32]], ptr %232, i64 0, i64 %234
  %236 = getelementptr inbounds [16 x i32], ptr %235, i64 0, i64 0
  %237 = load i32, ptr %236, align 8, !tbaa !10
  %238 = load ptr, ptr @img, align 8, !tbaa !14
  %239 = getelementptr inbounds nuw %struct.ImageParameters, ptr %238, i32 0, i32 52
  %240 = load i32, ptr %7, align 4, !tbaa !10
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [16 x [16 x i32]], ptr %239, i64 0, i64 %241
  %243 = getelementptr inbounds [16 x i32], ptr %242, i64 0, i64 7
  %244 = load i32, ptr %243, align 4, !tbaa !10
  %245 = sub nsw i32 %237, %244
  %246 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  store i32 %245, ptr %246, align 4, !tbaa !10
  %247 = load ptr, ptr @img, align 8, !tbaa !14
  %248 = getelementptr inbounds nuw %struct.ImageParameters, ptr %247, i32 0, i32 52
  %249 = load i32, ptr %7, align 4, !tbaa !10
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [16 x [16 x i32]], ptr %248, i64 0, i64 %250
  %252 = getelementptr inbounds [16 x i32], ptr %251, i64 0, i64 1
  %253 = load i32, ptr %252, align 4, !tbaa !10
  %254 = load ptr, ptr @img, align 8, !tbaa !14
  %255 = getelementptr inbounds nuw %struct.ImageParameters, ptr %254, i32 0, i32 52
  %256 = load i32, ptr %7, align 4, !tbaa !10
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [16 x [16 x i32]], ptr %255, i64 0, i64 %257
  %259 = getelementptr inbounds [16 x i32], ptr %258, i64 0, i64 6
  %260 = load i32, ptr %259, align 8, !tbaa !10
  %261 = sub nsw i32 %253, %260
  %262 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  store i32 %261, ptr %262, align 4, !tbaa !10
  %263 = load ptr, ptr @img, align 8, !tbaa !14
  %264 = getelementptr inbounds nuw %struct.ImageParameters, ptr %263, i32 0, i32 52
  %265 = load i32, ptr %7, align 4, !tbaa !10
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [16 x [16 x i32]], ptr %264, i64 0, i64 %266
  %268 = getelementptr inbounds [16 x i32], ptr %267, i64 0, i64 2
  %269 = load i32, ptr %268, align 8, !tbaa !10
  %270 = load ptr, ptr @img, align 8, !tbaa !14
  %271 = getelementptr inbounds nuw %struct.ImageParameters, ptr %270, i32 0, i32 52
  %272 = load i32, ptr %7, align 4, !tbaa !10
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [16 x [16 x i32]], ptr %271, i64 0, i64 %273
  %275 = getelementptr inbounds [16 x i32], ptr %274, i64 0, i64 5
  %276 = load i32, ptr %275, align 4, !tbaa !10
  %277 = sub nsw i32 %269, %276
  %278 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  store i32 %277, ptr %278, align 4, !tbaa !10
  %279 = load ptr, ptr @img, align 8, !tbaa !14
  %280 = getelementptr inbounds nuw %struct.ImageParameters, ptr %279, i32 0, i32 52
  %281 = load i32, ptr %7, align 4, !tbaa !10
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [16 x [16 x i32]], ptr %280, i64 0, i64 %282
  %284 = getelementptr inbounds [16 x i32], ptr %283, i64 0, i64 3
  %285 = load i32, ptr %284, align 4, !tbaa !10
  %286 = load ptr, ptr @img, align 8, !tbaa !14
  %287 = getelementptr inbounds nuw %struct.ImageParameters, ptr %286, i32 0, i32 52
  %288 = load i32, ptr %7, align 4, !tbaa !10
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [16 x [16 x i32]], ptr %287, i64 0, i64 %289
  %291 = getelementptr inbounds [16 x i32], ptr %290, i64 0, i64 4
  %292 = load i32, ptr %291, align 8, !tbaa !10
  %293 = sub nsw i32 %285, %292
  %294 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  store i32 %293, ptr %294, align 4, !tbaa !10
  %295 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  %296 = load i32, ptr %295, align 4, !tbaa !10
  %297 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  %298 = load i32, ptr %297, align 4, !tbaa !10
  %299 = add nsw i32 %296, %298
  %300 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  %301 = load i32, ptr %300, align 4, !tbaa !10
  %302 = ashr i32 %301, 1
  %303 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  %304 = load i32, ptr %303, align 4, !tbaa !10
  %305 = add nsw i32 %302, %304
  %306 = add nsw i32 %299, %305
  %307 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 4
  store i32 %306, ptr %307, align 4, !tbaa !10
  %308 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  %309 = load i32, ptr %308, align 4, !tbaa !10
  %310 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  %311 = load i32, ptr %310, align 4, !tbaa !10
  %312 = sub nsw i32 %309, %311
  %313 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  %314 = load i32, ptr %313, align 4, !tbaa !10
  %315 = ashr i32 %314, 1
  %316 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  %317 = load i32, ptr %316, align 4, !tbaa !10
  %318 = add nsw i32 %315, %317
  %319 = sub nsw i32 %312, %318
  %320 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 5
  store i32 %319, ptr %320, align 4, !tbaa !10
  %321 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  %322 = load i32, ptr %321, align 4, !tbaa !10
  %323 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  %324 = load i32, ptr %323, align 4, !tbaa !10
  %325 = add nsw i32 %322, %324
  %326 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  %327 = load i32, ptr %326, align 4, !tbaa !10
  %328 = ashr i32 %327, 1
  %329 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  %330 = load i32, ptr %329, align 4, !tbaa !10
  %331 = add nsw i32 %328, %330
  %332 = sub nsw i32 %325, %331
  %333 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 6
  store i32 %332, ptr %333, align 4, !tbaa !10
  %334 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  %335 = load i32, ptr %334, align 4, !tbaa !10
  %336 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  %337 = load i32, ptr %336, align 4, !tbaa !10
  %338 = sub nsw i32 %335, %337
  %339 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  %340 = load i32, ptr %339, align 4, !tbaa !10
  %341 = ashr i32 %340, 1
  %342 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  %343 = load i32, ptr %342, align 4, !tbaa !10
  %344 = add nsw i32 %341, %343
  %345 = add nsw i32 %338, %344
  %346 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 7
  store i32 %345, ptr %346, align 4, !tbaa !10
  %347 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0
  %348 = load i32, ptr %347, align 4, !tbaa !10
  %349 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 1
  %350 = load i32, ptr %349, align 4, !tbaa !10
  %351 = add nsw i32 %348, %350
  %352 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 0
  %353 = load i32, ptr %7, align 4, !tbaa !10
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [8 x i32], ptr %352, i64 0, i64 %354
  store i32 %351, ptr %355, align 4, !tbaa !10
  %356 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 2
  %357 = load i32, ptr %356, align 4, !tbaa !10
  %358 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 3
  %359 = load i32, ptr %358, align 4, !tbaa !10
  %360 = ashr i32 %359, 1
  %361 = add nsw i32 %357, %360
  %362 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 2
  %363 = load i32, ptr %7, align 4, !tbaa !10
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [8 x i32], ptr %362, i64 0, i64 %364
  store i32 %361, ptr %365, align 4, !tbaa !10
  %366 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0
  %367 = load i32, ptr %366, align 4, !tbaa !10
  %368 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 1
  %369 = load i32, ptr %368, align 4, !tbaa !10
  %370 = sub nsw i32 %367, %369
  %371 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 4
  %372 = load i32, ptr %7, align 4, !tbaa !10
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [8 x i32], ptr %371, i64 0, i64 %373
  store i32 %370, ptr %374, align 4, !tbaa !10
  %375 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 2
  %376 = load i32, ptr %375, align 4, !tbaa !10
  %377 = ashr i32 %376, 1
  %378 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 3
  %379 = load i32, ptr %378, align 4, !tbaa !10
  %380 = sub nsw i32 %377, %379
  %381 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 6
  %382 = load i32, ptr %7, align 4, !tbaa !10
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [8 x i32], ptr %381, i64 0, i64 %383
  store i32 %380, ptr %384, align 4, !tbaa !10
  %385 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 4
  %386 = load i32, ptr %385, align 4, !tbaa !10
  %387 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 7
  %388 = load i32, ptr %387, align 4, !tbaa !10
  %389 = ashr i32 %388, 2
  %390 = add nsw i32 %386, %389
  %391 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 1
  %392 = load i32, ptr %7, align 4, !tbaa !10
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [8 x i32], ptr %391, i64 0, i64 %393
  store i32 %390, ptr %394, align 4, !tbaa !10
  %395 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 5
  %396 = load i32, ptr %395, align 4, !tbaa !10
  %397 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 6
  %398 = load i32, ptr %397, align 4, !tbaa !10
  %399 = ashr i32 %398, 2
  %400 = add nsw i32 %396, %399
  %401 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 3
  %402 = load i32, ptr %7, align 4, !tbaa !10
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [8 x i32], ptr %401, i64 0, i64 %403
  store i32 %400, ptr %404, align 4, !tbaa !10
  %405 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 6
  %406 = load i32, ptr %405, align 4, !tbaa !10
  %407 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 5
  %408 = load i32, ptr %407, align 4, !tbaa !10
  %409 = ashr i32 %408, 2
  %410 = sub nsw i32 %406, %409
  %411 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 5
  %412 = load i32, ptr %7, align 4, !tbaa !10
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [8 x i32], ptr %411, i64 0, i64 %413
  store i32 %410, ptr %414, align 4, !tbaa !10
  %415 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 7
  %416 = load i32, ptr %415, align 4, !tbaa !10
  %417 = sub nsw i32 0, %416
  %418 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 4
  %419 = load i32, ptr %418, align 4, !tbaa !10
  %420 = ashr i32 %419, 2
  %421 = add nsw i32 %417, %420
  %422 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 7
  %423 = load i32, ptr %7, align 4, !tbaa !10
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [8 x i32], ptr %422, i64 0, i64 %424
  store i32 %421, ptr %425, align 4, !tbaa !10
  br label %426

426:                                              ; preds = %142
  %427 = load i32, ptr %7, align 4, !tbaa !10
  %428 = add nsw i32 %427, 1
  store i32 %428, ptr %7, align 4, !tbaa !10
  br label %139, !llvm.loop !122

429:                                              ; preds = %139
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %430

430:                                              ; preds = %701, %429
  %431 = load i32, ptr %7, align 4, !tbaa !10
  %432 = icmp slt i32 %431, 8
  br i1 %432, label %433, label %704

433:                                              ; preds = %430
  %434 = load i32, ptr %7, align 4, !tbaa !10
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %435
  %437 = getelementptr inbounds [8 x i32], ptr %436, i64 0, i64 0
  %438 = load i32, ptr %437, align 4, !tbaa !10
  %439 = load i32, ptr %7, align 4, !tbaa !10
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %440
  %442 = getelementptr inbounds [8 x i32], ptr %441, i64 0, i64 7
  %443 = load i32, ptr %442, align 4, !tbaa !10
  %444 = add nsw i32 %438, %443
  %445 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 0
  store i32 %444, ptr %445, align 4, !tbaa !10
  %446 = load i32, ptr %7, align 4, !tbaa !10
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %447
  %449 = getelementptr inbounds [8 x i32], ptr %448, i64 0, i64 1
  %450 = load i32, ptr %449, align 4, !tbaa !10
  %451 = load i32, ptr %7, align 4, !tbaa !10
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %452
  %454 = getelementptr inbounds [8 x i32], ptr %453, i64 0, i64 6
  %455 = load i32, ptr %454, align 4, !tbaa !10
  %456 = add nsw i32 %450, %455
  %457 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 1
  store i32 %456, ptr %457, align 4, !tbaa !10
  %458 = load i32, ptr %7, align 4, !tbaa !10
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %459
  %461 = getelementptr inbounds [8 x i32], ptr %460, i64 0, i64 2
  %462 = load i32, ptr %461, align 4, !tbaa !10
  %463 = load i32, ptr %7, align 4, !tbaa !10
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %464
  %466 = getelementptr inbounds [8 x i32], ptr %465, i64 0, i64 5
  %467 = load i32, ptr %466, align 4, !tbaa !10
  %468 = add nsw i32 %462, %467
  %469 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 2
  store i32 %468, ptr %469, align 4, !tbaa !10
  %470 = load i32, ptr %7, align 4, !tbaa !10
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %471
  %473 = getelementptr inbounds [8 x i32], ptr %472, i64 0, i64 3
  %474 = load i32, ptr %473, align 4, !tbaa !10
  %475 = load i32, ptr %7, align 4, !tbaa !10
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %476
  %478 = getelementptr inbounds [8 x i32], ptr %477, i64 0, i64 4
  %479 = load i32, ptr %478, align 4, !tbaa !10
  %480 = add nsw i32 %474, %479
  %481 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 3
  store i32 %480, ptr %481, align 4, !tbaa !10
  %482 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 0
  %483 = load i32, ptr %482, align 4, !tbaa !10
  %484 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 3
  %485 = load i32, ptr %484, align 4, !tbaa !10
  %486 = add nsw i32 %483, %485
  %487 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0
  store i32 %486, ptr %487, align 4, !tbaa !10
  %488 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 1
  %489 = load i32, ptr %488, align 4, !tbaa !10
  %490 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 2
  %491 = load i32, ptr %490, align 4, !tbaa !10
  %492 = add nsw i32 %489, %491
  %493 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 1
  store i32 %492, ptr %493, align 4, !tbaa !10
  %494 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 0
  %495 = load i32, ptr %494, align 4, !tbaa !10
  %496 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 3
  %497 = load i32, ptr %496, align 4, !tbaa !10
  %498 = sub nsw i32 %495, %497
  %499 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 2
  store i32 %498, ptr %499, align 4, !tbaa !10
  %500 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 1
  %501 = load i32, ptr %500, align 4, !tbaa !10
  %502 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 2
  %503 = load i32, ptr %502, align 4, !tbaa !10
  %504 = sub nsw i32 %501, %503
  %505 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 3
  store i32 %504, ptr %505, align 4, !tbaa !10
  %506 = load i32, ptr %7, align 4, !tbaa !10
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %507
  %509 = getelementptr inbounds [8 x i32], ptr %508, i64 0, i64 0
  %510 = load i32, ptr %509, align 4, !tbaa !10
  %511 = load i32, ptr %7, align 4, !tbaa !10
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %512
  %514 = getelementptr inbounds [8 x i32], ptr %513, i64 0, i64 7
  %515 = load i32, ptr %514, align 4, !tbaa !10
  %516 = sub nsw i32 %510, %515
  %517 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  store i32 %516, ptr %517, align 4, !tbaa !10
  %518 = load i32, ptr %7, align 4, !tbaa !10
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %519
  %521 = getelementptr inbounds [8 x i32], ptr %520, i64 0, i64 1
  %522 = load i32, ptr %521, align 4, !tbaa !10
  %523 = load i32, ptr %7, align 4, !tbaa !10
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %524
  %526 = getelementptr inbounds [8 x i32], ptr %525, i64 0, i64 6
  %527 = load i32, ptr %526, align 4, !tbaa !10
  %528 = sub nsw i32 %522, %527
  %529 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  store i32 %528, ptr %529, align 4, !tbaa !10
  %530 = load i32, ptr %7, align 4, !tbaa !10
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %531
  %533 = getelementptr inbounds [8 x i32], ptr %532, i64 0, i64 2
  %534 = load i32, ptr %533, align 4, !tbaa !10
  %535 = load i32, ptr %7, align 4, !tbaa !10
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %536
  %538 = getelementptr inbounds [8 x i32], ptr %537, i64 0, i64 5
  %539 = load i32, ptr %538, align 4, !tbaa !10
  %540 = sub nsw i32 %534, %539
  %541 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  store i32 %540, ptr %541, align 4, !tbaa !10
  %542 = load i32, ptr %7, align 4, !tbaa !10
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %543
  %545 = getelementptr inbounds [8 x i32], ptr %544, i64 0, i64 3
  %546 = load i32, ptr %545, align 4, !tbaa !10
  %547 = load i32, ptr %7, align 4, !tbaa !10
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %548
  %550 = getelementptr inbounds [8 x i32], ptr %549, i64 0, i64 4
  %551 = load i32, ptr %550, align 4, !tbaa !10
  %552 = sub nsw i32 %546, %551
  %553 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  store i32 %552, ptr %553, align 4, !tbaa !10
  %554 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  %555 = load i32, ptr %554, align 4, !tbaa !10
  %556 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  %557 = load i32, ptr %556, align 4, !tbaa !10
  %558 = add nsw i32 %555, %557
  %559 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  %560 = load i32, ptr %559, align 4, !tbaa !10
  %561 = ashr i32 %560, 1
  %562 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  %563 = load i32, ptr %562, align 4, !tbaa !10
  %564 = add nsw i32 %561, %563
  %565 = add nsw i32 %558, %564
  %566 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 4
  store i32 %565, ptr %566, align 4, !tbaa !10
  %567 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  %568 = load i32, ptr %567, align 4, !tbaa !10
  %569 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  %570 = load i32, ptr %569, align 4, !tbaa !10
  %571 = sub nsw i32 %568, %570
  %572 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  %573 = load i32, ptr %572, align 4, !tbaa !10
  %574 = ashr i32 %573, 1
  %575 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  %576 = load i32, ptr %575, align 4, !tbaa !10
  %577 = add nsw i32 %574, %576
  %578 = sub nsw i32 %571, %577
  %579 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 5
  store i32 %578, ptr %579, align 4, !tbaa !10
  %580 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  %581 = load i32, ptr %580, align 4, !tbaa !10
  %582 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  %583 = load i32, ptr %582, align 4, !tbaa !10
  %584 = add nsw i32 %581, %583
  %585 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  %586 = load i32, ptr %585, align 4, !tbaa !10
  %587 = ashr i32 %586, 1
  %588 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  %589 = load i32, ptr %588, align 4, !tbaa !10
  %590 = add nsw i32 %587, %589
  %591 = sub nsw i32 %584, %590
  %592 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 6
  store i32 %591, ptr %592, align 4, !tbaa !10
  %593 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  %594 = load i32, ptr %593, align 4, !tbaa !10
  %595 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  %596 = load i32, ptr %595, align 4, !tbaa !10
  %597 = sub nsw i32 %594, %596
  %598 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  %599 = load i32, ptr %598, align 4, !tbaa !10
  %600 = ashr i32 %599, 1
  %601 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  %602 = load i32, ptr %601, align 4, !tbaa !10
  %603 = add nsw i32 %600, %602
  %604 = add nsw i32 %597, %603
  %605 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 7
  store i32 %604, ptr %605, align 4, !tbaa !10
  %606 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0
  %607 = load i32, ptr %606, align 4, !tbaa !10
  %608 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 1
  %609 = load i32, ptr %608, align 4, !tbaa !10
  %610 = add nsw i32 %607, %609
  %611 = load ptr, ptr @img, align 8, !tbaa !14
  %612 = getelementptr inbounds nuw %struct.ImageParameters, ptr %611, i32 0, i32 52
  %613 = getelementptr inbounds [16 x [16 x i32]], ptr %612, i64 0, i64 0
  %614 = load i32, ptr %7, align 4, !tbaa !10
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [16 x i32], ptr %613, i64 0, i64 %615
  store i32 %610, ptr %616, align 4, !tbaa !10
  %617 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 2
  %618 = load i32, ptr %617, align 4, !tbaa !10
  %619 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 3
  %620 = load i32, ptr %619, align 4, !tbaa !10
  %621 = ashr i32 %620, 1
  %622 = add nsw i32 %618, %621
  %623 = load ptr, ptr @img, align 8, !tbaa !14
  %624 = getelementptr inbounds nuw %struct.ImageParameters, ptr %623, i32 0, i32 52
  %625 = getelementptr inbounds [16 x [16 x i32]], ptr %624, i64 0, i64 2
  %626 = load i32, ptr %7, align 4, !tbaa !10
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [16 x i32], ptr %625, i64 0, i64 %627
  store i32 %622, ptr %628, align 4, !tbaa !10
  %629 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0
  %630 = load i32, ptr %629, align 4, !tbaa !10
  %631 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 1
  %632 = load i32, ptr %631, align 4, !tbaa !10
  %633 = sub nsw i32 %630, %632
  %634 = load ptr, ptr @img, align 8, !tbaa !14
  %635 = getelementptr inbounds nuw %struct.ImageParameters, ptr %634, i32 0, i32 52
  %636 = getelementptr inbounds [16 x [16 x i32]], ptr %635, i64 0, i64 4
  %637 = load i32, ptr %7, align 4, !tbaa !10
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds [16 x i32], ptr %636, i64 0, i64 %638
  store i32 %633, ptr %639, align 4, !tbaa !10
  %640 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 2
  %641 = load i32, ptr %640, align 4, !tbaa !10
  %642 = ashr i32 %641, 1
  %643 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 3
  %644 = load i32, ptr %643, align 4, !tbaa !10
  %645 = sub nsw i32 %642, %644
  %646 = load ptr, ptr @img, align 8, !tbaa !14
  %647 = getelementptr inbounds nuw %struct.ImageParameters, ptr %646, i32 0, i32 52
  %648 = getelementptr inbounds [16 x [16 x i32]], ptr %647, i64 0, i64 6
  %649 = load i32, ptr %7, align 4, !tbaa !10
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds [16 x i32], ptr %648, i64 0, i64 %650
  store i32 %645, ptr %651, align 4, !tbaa !10
  %652 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 4
  %653 = load i32, ptr %652, align 4, !tbaa !10
  %654 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 7
  %655 = load i32, ptr %654, align 4, !tbaa !10
  %656 = ashr i32 %655, 2
  %657 = add nsw i32 %653, %656
  %658 = load ptr, ptr @img, align 8, !tbaa !14
  %659 = getelementptr inbounds nuw %struct.ImageParameters, ptr %658, i32 0, i32 52
  %660 = getelementptr inbounds [16 x [16 x i32]], ptr %659, i64 0, i64 1
  %661 = load i32, ptr %7, align 4, !tbaa !10
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds [16 x i32], ptr %660, i64 0, i64 %662
  store i32 %657, ptr %663, align 4, !tbaa !10
  %664 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 5
  %665 = load i32, ptr %664, align 4, !tbaa !10
  %666 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 6
  %667 = load i32, ptr %666, align 4, !tbaa !10
  %668 = ashr i32 %667, 2
  %669 = add nsw i32 %665, %668
  %670 = load ptr, ptr @img, align 8, !tbaa !14
  %671 = getelementptr inbounds nuw %struct.ImageParameters, ptr %670, i32 0, i32 52
  %672 = getelementptr inbounds [16 x [16 x i32]], ptr %671, i64 0, i64 3
  %673 = load i32, ptr %7, align 4, !tbaa !10
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [16 x i32], ptr %672, i64 0, i64 %674
  store i32 %669, ptr %675, align 4, !tbaa !10
  %676 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 6
  %677 = load i32, ptr %676, align 4, !tbaa !10
  %678 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 5
  %679 = load i32, ptr %678, align 4, !tbaa !10
  %680 = ashr i32 %679, 2
  %681 = sub nsw i32 %677, %680
  %682 = load ptr, ptr @img, align 8, !tbaa !14
  %683 = getelementptr inbounds nuw %struct.ImageParameters, ptr %682, i32 0, i32 52
  %684 = getelementptr inbounds [16 x [16 x i32]], ptr %683, i64 0, i64 5
  %685 = load i32, ptr %7, align 4, !tbaa !10
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds [16 x i32], ptr %684, i64 0, i64 %686
  store i32 %681, ptr %687, align 4, !tbaa !10
  %688 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 7
  %689 = load i32, ptr %688, align 4, !tbaa !10
  %690 = sub nsw i32 0, %689
  %691 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 4
  %692 = load i32, ptr %691, align 4, !tbaa !10
  %693 = ashr i32 %692, 2
  %694 = add nsw i32 %690, %693
  %695 = load ptr, ptr @img, align 8, !tbaa !14
  %696 = getelementptr inbounds nuw %struct.ImageParameters, ptr %695, i32 0, i32 52
  %697 = getelementptr inbounds [16 x [16 x i32]], ptr %696, i64 0, i64 7
  %698 = load i32, ptr %7, align 4, !tbaa !10
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds [16 x i32], ptr %697, i64 0, i64 %699
  store i32 %694, ptr %700, align 4, !tbaa !10
  br label %701

701:                                              ; preds = %433
  %702 = load i32, ptr %7, align 4, !tbaa !10
  %703 = add nsw i32 %702, 1
  store i32 %703, ptr %7, align 4, !tbaa !10
  br label %430, !llvm.loop !123

704:                                              ; preds = %430
  store i32 0, ptr %14, align 4, !tbaa !10
  store i32 -1, ptr %13, align 4, !tbaa !10
  store i32 0, ptr %12, align 4, !tbaa !10
  %705 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 3
  store i32 -1, ptr %705, align 4, !tbaa !10
  %706 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 2
  store i32 -1, ptr %706, align 4, !tbaa !10
  %707 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 1
  store i32 -1, ptr %707, align 4, !tbaa !10
  %708 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 0
  store i32 -1, ptr %708, align 4, !tbaa !10
  %709 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 3
  store i32 0, ptr %709, align 4, !tbaa !10
  %710 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 2
  store i32 0, ptr %710, align 4, !tbaa !10
  %711 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 1
  store i32 0, ptr %711, align 4, !tbaa !10
  %712 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 0
  store i32 0, ptr %712, align 4, !tbaa !10
  store i32 0, ptr %10, align 4, !tbaa !10
  br label %713

713:                                              ; preds = %1005, %704
  %714 = load i32, ptr %10, align 4, !tbaa !10
  %715 = icmp slt i32 %714, 64
  br i1 %715, label %716, label %1008

716:                                              ; preds = %713
  %717 = load ptr, ptr %36, align 8, !tbaa !49
  %718 = load i32, ptr %10, align 4, !tbaa !10
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds [2 x i8], ptr %717, i64 %719
  %721 = getelementptr inbounds [2 x i8], ptr %720, i64 0, i64 0
  %722 = load i8, ptr %721, align 1, !tbaa !51
  %723 = zext i8 %722 to i32
  store i32 %723, ptr %7, align 4, !tbaa !10
  %724 = load ptr, ptr %36, align 8, !tbaa !49
  %725 = load i32, ptr %10, align 4, !tbaa !10
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds [2 x i8], ptr %724, i64 %726
  %728 = getelementptr inbounds [2 x i8], ptr %727, i64 0, i64 1
  %729 = load i8, ptr %728, align 1, !tbaa !51
  %730 = zext i8 %729 to i32
  store i32 %730, ptr %8, align 4, !tbaa !10
  %731 = load i32, ptr %10, align 4, !tbaa !10
  %732 = and i32 %731, 3
  store i32 %732, ptr %33, align 4, !tbaa !10
  %733 = load i32, ptr %13, align 4, !tbaa !10
  %734 = add nsw i32 %733, 1
  store i32 %734, ptr %13, align 4, !tbaa !10
  store i32 0, ptr %9, align 4, !tbaa !10
  %735 = load i32, ptr %33, align 4, !tbaa !10
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 %736
  %738 = load i32, ptr %737, align 4, !tbaa !10
  %739 = add nsw i32 %738, 1
  store i32 %739, ptr %737, align 4, !tbaa !10
  %740 = load ptr, ptr @img, align 8, !tbaa !14
  %741 = getelementptr inbounds nuw %struct.ImageParameters, ptr %740, i32 0, i32 52
  %742 = load i32, ptr %8, align 4, !tbaa !10
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds [16 x [16 x i32]], ptr %741, i64 0, i64 %743
  %745 = load i32, ptr %7, align 4, !tbaa !10
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds [16 x i32], ptr %744, i64 0, i64 %746
  %748 = load i32, ptr %747, align 4, !tbaa !10
  %749 = call signext i32 @iabs(i32 noundef signext %748)
  %750 = load ptr, ptr %30, align 8, !tbaa !63
  %751 = load i32, ptr %8, align 4, !tbaa !10
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds ptr, ptr %750, i64 %752
  %754 = load ptr, ptr %753, align 8, !tbaa !7
  %755 = load i32, ptr %7, align 4, !tbaa !10
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds i32, ptr %754, i64 %756
  %758 = load i32, ptr %757, align 4, !tbaa !10
  %759 = mul nsw i32 %749, %758
  %760 = load ptr, ptr %31, align 8, !tbaa !63
  %761 = load i32, ptr %8, align 4, !tbaa !10
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds ptr, ptr %760, i64 %762
  %764 = load ptr, ptr %763, align 8, !tbaa !7
  %765 = load i32, ptr %7, align 4, !tbaa !10
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds i32, ptr %764, i64 %766
  %768 = load i32, ptr %767, align 4, !tbaa !10
  %769 = add nsw i32 %759, %768
  %770 = load i32, ptr %17, align 4, !tbaa !10
  %771 = ashr i32 %769, %770
  store i32 %771, ptr %11, align 4, !tbaa !10
  %772 = load ptr, ptr @img, align 8, !tbaa !14
  %773 = getelementptr inbounds nuw %struct.ImageParameters, ptr %772, i32 0, i32 98
  %774 = load i32, ptr %773, align 4, !tbaa !78
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %776, label %830

776:                                              ; preds = %716
  %777 = load i32, ptr %11, align 4, !tbaa !10
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %779, label %780

779:                                              ; preds = %776
  br label %810

780:                                              ; preds = %776
  %781 = load i32, ptr @AdaptRndWeight, align 4, !tbaa !10
  %782 = load ptr, ptr @img, align 8, !tbaa !14
  %783 = getelementptr inbounds nuw %struct.ImageParameters, ptr %782, i32 0, i32 52
  %784 = load i32, ptr %8, align 4, !tbaa !10
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds [16 x [16 x i32]], ptr %783, i64 0, i64 %785
  %787 = load i32, ptr %7, align 4, !tbaa !10
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds [16 x i32], ptr %786, i64 0, i64 %788
  %790 = load i32, ptr %789, align 4, !tbaa !10
  %791 = call signext i32 @iabs(i32 noundef signext %790)
  %792 = load ptr, ptr %30, align 8, !tbaa !63
  %793 = load i32, ptr %8, align 4, !tbaa !10
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds ptr, ptr %792, i64 %794
  %796 = load ptr, ptr %795, align 8, !tbaa !7
  %797 = load i32, ptr %7, align 4, !tbaa !10
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds i32, ptr %796, i64 %798
  %800 = load i32, ptr %799, align 4, !tbaa !10
  %801 = mul nsw i32 %791, %800
  %802 = load i32, ptr %11, align 4, !tbaa !10
  %803 = load i32, ptr %17, align 4, !tbaa !10
  %804 = shl i32 %802, %803
  %805 = sub nsw i32 %801, %804
  %806 = mul nsw i32 %781, %805
  %807 = load i32, ptr %17, align 4, !tbaa !10
  %808 = add nsw i32 %807, 1
  %809 = call signext i32 @rshift_rnd_sf(i32 noundef signext %806, i32 noundef signext %808)
  br label %810

810:                                              ; preds = %780, %779
  %811 = phi i32 [ 0, %779 ], [ %809, %780 ]
  %812 = load ptr, ptr @img, align 8, !tbaa !14
  %813 = getelementptr inbounds nuw %struct.ImageParameters, ptr %812, i32 0, i32 56
  %814 = load ptr, ptr %813, align 8, !tbaa !79
  %815 = load i32, ptr %6, align 4, !tbaa !10
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds ptr, ptr %814, i64 %816
  %818 = load ptr, ptr %817, align 8, !tbaa !63
  %819 = load i32, ptr %19, align 4, !tbaa !10
  %820 = load i32, ptr %8, align 4, !tbaa !10
  %821 = add nsw i32 %819, %820
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds ptr, ptr %818, i64 %822
  %824 = load ptr, ptr %823, align 8, !tbaa !7
  %825 = load i32, ptr %18, align 4, !tbaa !10
  %826 = load i32, ptr %7, align 4, !tbaa !10
  %827 = add nsw i32 %825, %826
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds i32, ptr %824, i64 %828
  store i32 %811, ptr %829, align 4, !tbaa !10
  br label %830

830:                                              ; preds = %810, %716
  %831 = load i32, ptr %11, align 4, !tbaa !10
  %832 = icmp ne i32 %831, 0
  br i1 %832, label %833, label %995

833:                                              ; preds = %830
  store i32 1, ptr %14, align 4, !tbaa !10
  %834 = load ptr, ptr %34, align 8, !tbaa !39
  %835 = getelementptr inbounds nuw %struct.macroblock, ptr %834, i32 0, i32 31
  %836 = load i32, ptr %835, align 8, !tbaa !124
  %837 = icmp ne i32 %836, 0
  br i1 %837, label %838, label %927

838:                                              ; preds = %833
  %839 = load ptr, ptr @input, align 8, !tbaa !14
  %840 = getelementptr inbounds nuw %struct.InputParameters, ptr %839, i32 0, i32 74
  %841 = load i32, ptr %840, align 8, !tbaa !116
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %843, label %927

843:                                              ; preds = %838
  %844 = load i32, ptr %11, align 4, !tbaa !10
  %845 = icmp sgt i32 %844, 1
  br i1 %845, label %846, label %847

846:                                              ; preds = %843
  br label %861

847:                                              ; preds = %843
  %848 = load ptr, ptr @input, align 8, !tbaa !14
  %849 = getelementptr inbounds nuw %struct.InputParameters, ptr %848, i32 0, i32 116
  %850 = load i32, ptr %849, align 4, !tbaa !125
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds [2 x [64 x i8]], ptr @COEFF_COST8x8, i64 0, i64 %851
  %853 = load i32, ptr %33, align 4, !tbaa !10
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 %854
  %856 = load i32, ptr %855, align 4, !tbaa !10
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds [64 x i8], ptr %852, i64 0, i64 %857
  %859 = load i8, ptr %858, align 1, !tbaa !51
  %860 = zext i8 %859 to i32
  br label %861

861:                                              ; preds = %847, %846
  %862 = phi i32 [ 999999, %846 ], [ %860, %847 ]
  %863 = load ptr, ptr %5, align 8, !tbaa !7
  %864 = load i32, ptr %863, align 4, !tbaa !10
  %865 = add nsw i32 %864, %862
  store i32 %865, ptr %863, align 4, !tbaa !10
  %866 = load i32, ptr %11, align 4, !tbaa !10
  %867 = load ptr, ptr @img, align 8, !tbaa !14
  %868 = getelementptr inbounds nuw %struct.ImageParameters, ptr %867, i32 0, i32 52
  %869 = load i32, ptr %8, align 4, !tbaa !10
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds [16 x [16 x i32]], ptr %868, i64 0, i64 %870
  %872 = load i32, ptr %7, align 4, !tbaa !10
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds [16 x i32], ptr %871, i64 0, i64 %873
  %875 = load i32, ptr %874, align 4, !tbaa !10
  %876 = call signext i32 @isignab(i32 noundef signext %866, i32 noundef signext %875)
  %877 = load ptr, ptr @img, align 8, !tbaa !14
  %878 = getelementptr inbounds nuw %struct.ImageParameters, ptr %877, i32 0, i32 53
  %879 = load ptr, ptr %878, align 8, !tbaa !65
  %880 = load i32, ptr %4, align 4, !tbaa !10
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds ptr, ptr %879, i64 %881
  %883 = load ptr, ptr %882, align 8, !tbaa !62
  %884 = load i32, ptr %33, align 4, !tbaa !10
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds ptr, ptr %883, i64 %885
  %887 = load ptr, ptr %886, align 8, !tbaa !63
  %888 = getelementptr inbounds ptr, ptr %887, i64 0
  %889 = load ptr, ptr %888, align 8, !tbaa !7
  %890 = load i32, ptr %33, align 4, !tbaa !10
  %891 = sext i32 %890 to i64
  %892 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 %891
  %893 = load i32, ptr %892, align 4, !tbaa !10
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds i32, ptr %889, i64 %894
  store i32 %876, ptr %895, align 4, !tbaa !10
  %896 = load i32, ptr %33, align 4, !tbaa !10
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 %897
  %899 = load i32, ptr %898, align 4, !tbaa !10
  %900 = load ptr, ptr @img, align 8, !tbaa !14
  %901 = getelementptr inbounds nuw %struct.ImageParameters, ptr %900, i32 0, i32 53
  %902 = load ptr, ptr %901, align 8, !tbaa !65
  %903 = load i32, ptr %4, align 4, !tbaa !10
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds ptr, ptr %902, i64 %904
  %906 = load ptr, ptr %905, align 8, !tbaa !62
  %907 = load i32, ptr %33, align 4, !tbaa !10
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds ptr, ptr %906, i64 %908
  %910 = load ptr, ptr %909, align 8, !tbaa !63
  %911 = getelementptr inbounds ptr, ptr %910, i64 1
  %912 = load ptr, ptr %911, align 8, !tbaa !7
  %913 = load i32, ptr %33, align 4, !tbaa !10
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 %914
  %916 = load i32, ptr %915, align 4, !tbaa !10
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds i32, ptr %912, i64 %917
  store i32 %899, ptr %918, align 4, !tbaa !10
  %919 = load i32, ptr %33, align 4, !tbaa !10
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 %920
  %922 = load i32, ptr %921, align 4, !tbaa !10
  %923 = add nsw i32 %922, 1
  store i32 %923, ptr %921, align 4, !tbaa !10
  %924 = load i32, ptr %33, align 4, !tbaa !10
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 %925
  store i32 -1, ptr %926, align 4, !tbaa !10
  br label %969

927:                                              ; preds = %838, %833
  %928 = load i32, ptr %11, align 4, !tbaa !10
  %929 = icmp sgt i32 %928, 1
  br i1 %929, label %930, label %931

930:                                              ; preds = %927
  br label %942

931:                                              ; preds = %927
  %932 = load ptr, ptr @input, align 8, !tbaa !14
  %933 = getelementptr inbounds nuw %struct.InputParameters, ptr %932, i32 0, i32 116
  %934 = load i32, ptr %933, align 4, !tbaa !125
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds [2 x [64 x i8]], ptr @COEFF_COST8x8, i64 0, i64 %935
  %937 = load i32, ptr %13, align 4, !tbaa !10
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds [64 x i8], ptr %936, i64 0, i64 %938
  %940 = load i8, ptr %939, align 1, !tbaa !51
  %941 = zext i8 %940 to i32
  br label %942

942:                                              ; preds = %931, %930
  %943 = phi i32 [ 999999, %930 ], [ %941, %931 ]
  %944 = load ptr, ptr %5, align 8, !tbaa !7
  %945 = load i32, ptr %944, align 4, !tbaa !10
  %946 = add nsw i32 %945, %943
  store i32 %946, ptr %944, align 4, !tbaa !10
  %947 = load i32, ptr %11, align 4, !tbaa !10
  %948 = load ptr, ptr @img, align 8, !tbaa !14
  %949 = getelementptr inbounds nuw %struct.ImageParameters, ptr %948, i32 0, i32 52
  %950 = load i32, ptr %8, align 4, !tbaa !10
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds [16 x [16 x i32]], ptr %949, i64 0, i64 %951
  %953 = load i32, ptr %7, align 4, !tbaa !10
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds [16 x i32], ptr %952, i64 0, i64 %954
  %956 = load i32, ptr %955, align 4, !tbaa !10
  %957 = call signext i32 @isignab(i32 noundef signext %947, i32 noundef signext %956)
  %958 = load ptr, ptr %20, align 8, !tbaa !7
  %959 = load i32, ptr %12, align 4, !tbaa !10
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds i32, ptr %958, i64 %960
  store i32 %957, ptr %961, align 4, !tbaa !10
  %962 = load i32, ptr %13, align 4, !tbaa !10
  %963 = load ptr, ptr %21, align 8, !tbaa !7
  %964 = load i32, ptr %12, align 4, !tbaa !10
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds i32, ptr %963, i64 %965
  store i32 %962, ptr %966, align 4, !tbaa !10
  %967 = load i32, ptr %12, align 4, !tbaa !10
  %968 = add nsw i32 %967, 1
  store i32 %968, ptr %12, align 4, !tbaa !10
  store i32 -1, ptr %13, align 4, !tbaa !10
  br label %969

969:                                              ; preds = %942, %861
  %970 = load i32, ptr %11, align 4, !tbaa !10
  %971 = load ptr, ptr @img, align 8, !tbaa !14
  %972 = getelementptr inbounds nuw %struct.ImageParameters, ptr %971, i32 0, i32 52
  %973 = load i32, ptr %8, align 4, !tbaa !10
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds [16 x [16 x i32]], ptr %972, i64 0, i64 %974
  %976 = load i32, ptr %7, align 4, !tbaa !10
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds [16 x i32], ptr %975, i64 0, i64 %977
  %979 = load i32, ptr %978, align 4, !tbaa !10
  %980 = call signext i32 @isignab(i32 noundef signext %970, i32 noundef signext %979)
  store i32 %980, ptr %11, align 4, !tbaa !10
  %981 = load i32, ptr %11, align 4, !tbaa !10
  %982 = load ptr, ptr %32, align 8, !tbaa !63
  %983 = load i32, ptr %8, align 4, !tbaa !10
  %984 = sext i32 %983 to i64
  %985 = getelementptr inbounds ptr, ptr %982, i64 %984
  %986 = load ptr, ptr %985, align 8, !tbaa !7
  %987 = load i32, ptr %7, align 4, !tbaa !10
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds i32, ptr %986, i64 %988
  %990 = load i32, ptr %989, align 4, !tbaa !10
  %991 = mul nsw i32 %981, %990
  %992 = load i32, ptr %15, align 4, !tbaa !10
  %993 = shl i32 %991, %992
  %994 = call signext i32 @rshift_rnd_sf(i32 noundef signext %993, i32 noundef signext 6)
  store i32 %994, ptr %9, align 4, !tbaa !10
  br label %995

995:                                              ; preds = %969, %830
  %996 = load i32, ptr %9, align 4, !tbaa !10
  %997 = load ptr, ptr @img, align 8, !tbaa !14
  %998 = getelementptr inbounds nuw %struct.ImageParameters, ptr %997, i32 0, i32 52
  %999 = load i32, ptr %8, align 4, !tbaa !10
  %1000 = sext i32 %999 to i64
  %1001 = getelementptr inbounds [16 x [16 x i32]], ptr %998, i64 0, i64 %1000
  %1002 = load i32, ptr %7, align 4, !tbaa !10
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds [16 x i32], ptr %1001, i64 0, i64 %1003
  store i32 %996, ptr %1004, align 4, !tbaa !10
  br label %1005

1005:                                             ; preds = %995
  %1006 = load i32, ptr %10, align 4, !tbaa !10
  %1007 = add nsw i32 %1006, 1
  store i32 %1007, ptr %10, align 4, !tbaa !10
  br label %713, !llvm.loop !126

1008:                                             ; preds = %713
  br label %1200

1009:                                             ; preds = %82
  store i32 0, ptr %14, align 4, !tbaa !10
  store i32 -1, ptr %13, align 4, !tbaa !10
  store i32 0, ptr %12, align 4, !tbaa !10
  %1010 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 3
  store i32 -1, ptr %1010, align 4, !tbaa !10
  %1011 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 2
  store i32 -1, ptr %1011, align 4, !tbaa !10
  %1012 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 1
  store i32 -1, ptr %1012, align 4, !tbaa !10
  %1013 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 0
  store i32 -1, ptr %1013, align 4, !tbaa !10
  %1014 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 3
  store i32 0, ptr %1014, align 4, !tbaa !10
  %1015 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 2
  store i32 0, ptr %1015, align 4, !tbaa !10
  %1016 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 1
  store i32 0, ptr %1016, align 4, !tbaa !10
  %1017 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 0
  store i32 0, ptr %1017, align 4, !tbaa !10
  store i32 0, ptr %10, align 4, !tbaa !10
  br label %1018

1018:                                             ; preds = %1196, %1009
  %1019 = load i32, ptr %10, align 4, !tbaa !10
  %1020 = icmp slt i32 %1019, 64
  br i1 %1020, label %1021, label %1199

1021:                                             ; preds = %1018
  %1022 = load ptr, ptr %36, align 8, !tbaa !49
  %1023 = load i32, ptr %10, align 4, !tbaa !10
  %1024 = sext i32 %1023 to i64
  %1025 = getelementptr inbounds [2 x i8], ptr %1022, i64 %1024
  %1026 = getelementptr inbounds [2 x i8], ptr %1025, i64 0, i64 0
  %1027 = load i8, ptr %1026, align 1, !tbaa !51
  %1028 = zext i8 %1027 to i32
  store i32 %1028, ptr %7, align 4, !tbaa !10
  %1029 = load ptr, ptr %36, align 8, !tbaa !49
  %1030 = load i32, ptr %10, align 4, !tbaa !10
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds [2 x i8], ptr %1029, i64 %1031
  %1033 = getelementptr inbounds [2 x i8], ptr %1032, i64 0, i64 1
  %1034 = load i8, ptr %1033, align 1, !tbaa !51
  %1035 = zext i8 %1034 to i32
  store i32 %1035, ptr %8, align 4, !tbaa !10
  %1036 = load i32, ptr %10, align 4, !tbaa !10
  %1037 = and i32 %1036, 3
  store i32 %1037, ptr %33, align 4, !tbaa !10
  %1038 = load i32, ptr %13, align 4, !tbaa !10
  %1039 = add nsw i32 %1038, 1
  store i32 %1039, ptr %13, align 4, !tbaa !10
  store i32 0, ptr %9, align 4, !tbaa !10
  %1040 = load i32, ptr %33, align 4, !tbaa !10
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 %1041
  %1043 = load i32, ptr %1042, align 4, !tbaa !10
  %1044 = add nsw i32 %1043, 1
  store i32 %1044, ptr %1042, align 4, !tbaa !10
  %1045 = load ptr, ptr @img, align 8, !tbaa !14
  %1046 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1045, i32 0, i32 52
  %1047 = load i32, ptr %8, align 4, !tbaa !10
  %1048 = sext i32 %1047 to i64
  %1049 = getelementptr inbounds [16 x [16 x i32]], ptr %1046, i64 0, i64 %1048
  %1050 = load i32, ptr %7, align 4, !tbaa !10
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds [16 x i32], ptr %1049, i64 0, i64 %1051
  %1053 = load i32, ptr %1052, align 4, !tbaa !10
  %1054 = call signext i32 @iabs(i32 noundef signext %1053)
  store i32 %1054, ptr %11, align 4, !tbaa !10
  %1055 = load ptr, ptr @img, align 8, !tbaa !14
  %1056 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1055, i32 0, i32 98
  %1057 = load i32, ptr %1056, align 4, !tbaa !78
  %1058 = icmp ne i32 %1057, 0
  br i1 %1058, label %1059, label %1078

1059:                                             ; preds = %1021
  %1060 = load ptr, ptr @img, align 8, !tbaa !14
  %1061 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1060, i32 0, i32 56
  %1062 = load ptr, ptr %1061, align 8, !tbaa !79
  %1063 = load i32, ptr %6, align 4, !tbaa !10
  %1064 = sext i32 %1063 to i64
  %1065 = getelementptr inbounds ptr, ptr %1062, i64 %1064
  %1066 = load ptr, ptr %1065, align 8, !tbaa !63
  %1067 = load i32, ptr %19, align 4, !tbaa !10
  %1068 = load i32, ptr %8, align 4, !tbaa !10
  %1069 = add nsw i32 %1067, %1068
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds ptr, ptr %1066, i64 %1070
  %1072 = load ptr, ptr %1071, align 8, !tbaa !7
  %1073 = load i32, ptr %18, align 4, !tbaa !10
  %1074 = load i32, ptr %7, align 4, !tbaa !10
  %1075 = add nsw i32 %1073, %1074
  %1076 = sext i32 %1075 to i64
  %1077 = getelementptr inbounds i32, ptr %1072, i64 %1076
  store i32 0, ptr %1077, align 4, !tbaa !10
  br label %1078

1078:                                             ; preds = %1059, %1021
  %1079 = load i32, ptr %11, align 4, !tbaa !10
  %1080 = icmp ne i32 %1079, 0
  br i1 %1080, label %1081, label %1195

1081:                                             ; preds = %1078
  store i32 1, ptr %14, align 4, !tbaa !10
  %1082 = load ptr, ptr %34, align 8, !tbaa !39
  %1083 = getelementptr inbounds nuw %struct.macroblock, ptr %1082, i32 0, i32 31
  %1084 = load i32, ptr %1083, align 8, !tbaa !124
  %1085 = icmp ne i32 %1084, 0
  br i1 %1085, label %1086, label %1156

1086:                                             ; preds = %1081
  %1087 = load ptr, ptr @input, align 8, !tbaa !14
  %1088 = getelementptr inbounds nuw %struct.InputParameters, ptr %1087, i32 0, i32 74
  %1089 = load i32, ptr %1088, align 8, !tbaa !116
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1091, label %1156

1091:                                             ; preds = %1086
  %1092 = load ptr, ptr %5, align 8, !tbaa !7
  %1093 = load i32, ptr %1092, align 4, !tbaa !10
  %1094 = add nsw i32 %1093, 999999
  store i32 %1094, ptr %1092, align 4, !tbaa !10
  %1095 = load i32, ptr %11, align 4, !tbaa !10
  %1096 = load ptr, ptr @img, align 8, !tbaa !14
  %1097 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1096, i32 0, i32 52
  %1098 = load i32, ptr %8, align 4, !tbaa !10
  %1099 = sext i32 %1098 to i64
  %1100 = getelementptr inbounds [16 x [16 x i32]], ptr %1097, i64 0, i64 %1099
  %1101 = load i32, ptr %7, align 4, !tbaa !10
  %1102 = sext i32 %1101 to i64
  %1103 = getelementptr inbounds [16 x i32], ptr %1100, i64 0, i64 %1102
  %1104 = load i32, ptr %1103, align 4, !tbaa !10
  %1105 = call signext i32 @isignab(i32 noundef signext %1095, i32 noundef signext %1104)
  %1106 = load ptr, ptr @img, align 8, !tbaa !14
  %1107 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1106, i32 0, i32 53
  %1108 = load ptr, ptr %1107, align 8, !tbaa !65
  %1109 = load i32, ptr %4, align 4, !tbaa !10
  %1110 = sext i32 %1109 to i64
  %1111 = getelementptr inbounds ptr, ptr %1108, i64 %1110
  %1112 = load ptr, ptr %1111, align 8, !tbaa !62
  %1113 = load i32, ptr %33, align 4, !tbaa !10
  %1114 = sext i32 %1113 to i64
  %1115 = getelementptr inbounds ptr, ptr %1112, i64 %1114
  %1116 = load ptr, ptr %1115, align 8, !tbaa !63
  %1117 = getelementptr inbounds ptr, ptr %1116, i64 0
  %1118 = load ptr, ptr %1117, align 8, !tbaa !7
  %1119 = load i32, ptr %33, align 4, !tbaa !10
  %1120 = sext i32 %1119 to i64
  %1121 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 %1120
  %1122 = load i32, ptr %1121, align 4, !tbaa !10
  %1123 = sext i32 %1122 to i64
  %1124 = getelementptr inbounds i32, ptr %1118, i64 %1123
  store i32 %1105, ptr %1124, align 4, !tbaa !10
  %1125 = load i32, ptr %33, align 4, !tbaa !10
  %1126 = sext i32 %1125 to i64
  %1127 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 %1126
  %1128 = load i32, ptr %1127, align 4, !tbaa !10
  %1129 = load ptr, ptr @img, align 8, !tbaa !14
  %1130 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1129, i32 0, i32 53
  %1131 = load ptr, ptr %1130, align 8, !tbaa !65
  %1132 = load i32, ptr %4, align 4, !tbaa !10
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds ptr, ptr %1131, i64 %1133
  %1135 = load ptr, ptr %1134, align 8, !tbaa !62
  %1136 = load i32, ptr %33, align 4, !tbaa !10
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds ptr, ptr %1135, i64 %1137
  %1139 = load ptr, ptr %1138, align 8, !tbaa !63
  %1140 = getelementptr inbounds ptr, ptr %1139, i64 1
  %1141 = load ptr, ptr %1140, align 8, !tbaa !7
  %1142 = load i32, ptr %33, align 4, !tbaa !10
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 %1143
  %1145 = load i32, ptr %1144, align 4, !tbaa !10
  %1146 = sext i32 %1145 to i64
  %1147 = getelementptr inbounds i32, ptr %1141, i64 %1146
  store i32 %1128, ptr %1147, align 4, !tbaa !10
  %1148 = load i32, ptr %33, align 4, !tbaa !10
  %1149 = sext i32 %1148 to i64
  %1150 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 %1149
  %1151 = load i32, ptr %1150, align 4, !tbaa !10
  %1152 = add nsw i32 %1151, 1
  store i32 %1152, ptr %1150, align 4, !tbaa !10
  %1153 = load i32, ptr %33, align 4, !tbaa !10
  %1154 = sext i32 %1153 to i64
  %1155 = getelementptr inbounds [4 x i32], ptr %26, i64 0, i64 %1154
  store i32 -1, ptr %1155, align 4, !tbaa !10
  br label %1182

1156:                                             ; preds = %1086, %1081
  %1157 = load ptr, ptr %5, align 8, !tbaa !7
  %1158 = load i32, ptr %1157, align 4, !tbaa !10
  %1159 = add nsw i32 %1158, 999999
  store i32 %1159, ptr %1157, align 4, !tbaa !10
  %1160 = load i32, ptr %11, align 4, !tbaa !10
  %1161 = load ptr, ptr @img, align 8, !tbaa !14
  %1162 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1161, i32 0, i32 52
  %1163 = load i32, ptr %8, align 4, !tbaa !10
  %1164 = sext i32 %1163 to i64
  %1165 = getelementptr inbounds [16 x [16 x i32]], ptr %1162, i64 0, i64 %1164
  %1166 = load i32, ptr %7, align 4, !tbaa !10
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds [16 x i32], ptr %1165, i64 0, i64 %1167
  %1169 = load i32, ptr %1168, align 4, !tbaa !10
  %1170 = call signext i32 @isignab(i32 noundef signext %1160, i32 noundef signext %1169)
  %1171 = load ptr, ptr %20, align 8, !tbaa !7
  %1172 = load i32, ptr %12, align 4, !tbaa !10
  %1173 = sext i32 %1172 to i64
  %1174 = getelementptr inbounds i32, ptr %1171, i64 %1173
  store i32 %1170, ptr %1174, align 4, !tbaa !10
  %1175 = load i32, ptr %13, align 4, !tbaa !10
  %1176 = load ptr, ptr %21, align 8, !tbaa !7
  %1177 = load i32, ptr %12, align 4, !tbaa !10
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds i32, ptr %1176, i64 %1178
  store i32 %1175, ptr %1179, align 4, !tbaa !10
  %1180 = load i32, ptr %12, align 4, !tbaa !10
  %1181 = add nsw i32 %1180, 1
  store i32 %1181, ptr %12, align 4, !tbaa !10
  store i32 -1, ptr %13, align 4, !tbaa !10
  br label %1182

1182:                                             ; preds = %1156, %1091
  %1183 = load i32, ptr %11, align 4, !tbaa !10
  %1184 = load ptr, ptr @img, align 8, !tbaa !14
  %1185 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1184, i32 0, i32 52
  %1186 = load i32, ptr %8, align 4, !tbaa !10
  %1187 = sext i32 %1186 to i64
  %1188 = getelementptr inbounds [16 x [16 x i32]], ptr %1185, i64 0, i64 %1187
  %1189 = load i32, ptr %7, align 4, !tbaa !10
  %1190 = sext i32 %1189 to i64
  %1191 = getelementptr inbounds [16 x i32], ptr %1188, i64 0, i64 %1190
  %1192 = load i32, ptr %1191, align 4, !tbaa !10
  %1193 = call signext i32 @isignab(i32 noundef signext %1183, i32 noundef signext %1192)
  store i32 %1193, ptr %11, align 4, !tbaa !10
  %1194 = load i32, ptr %11, align 4, !tbaa !10
  store i32 %1194, ptr %9, align 4, !tbaa !10
  br label %1195

1195:                                             ; preds = %1182, %1078
  br label %1196

1196:                                             ; preds = %1195
  %1197 = load i32, ptr %10, align 4, !tbaa !10
  %1198 = add nsw i32 %1197, 1
  store i32 %1198, ptr %10, align 4, !tbaa !10
  br label %1018, !llvm.loop !127

1199:                                             ; preds = %1018
  br label %1200

1200:                                             ; preds = %1199, %1008
  %1201 = load ptr, ptr %34, align 8, !tbaa !39
  %1202 = getelementptr inbounds nuw %struct.macroblock, ptr %1201, i32 0, i32 31
  %1203 = load i32, ptr %1202, align 8, !tbaa !124
  %1204 = icmp ne i32 %1203, 0
  br i1 %1204, label %1205, label %1210

1205:                                             ; preds = %1200
  %1206 = load ptr, ptr @input, align 8, !tbaa !14
  %1207 = getelementptr inbounds nuw %struct.InputParameters, ptr %1206, i32 0, i32 74
  %1208 = load i32, ptr %1207, align 8, !tbaa !116
  %1209 = icmp ne i32 %1208, 0
  br i1 %1209, label %1210, label %1215

1210:                                             ; preds = %1205, %1200
  %1211 = load ptr, ptr %20, align 8, !tbaa !7
  %1212 = load i32, ptr %12, align 4, !tbaa !10
  %1213 = sext i32 %1212 to i64
  %1214 = getelementptr inbounds i32, ptr %1211, i64 %1213
  store i32 0, ptr %1214, align 4, !tbaa !10
  br label %1243

1215:                                             ; preds = %1205
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %1216

1216:                                             ; preds = %1239, %1215
  %1217 = load i32, ptr %7, align 4, !tbaa !10
  %1218 = icmp slt i32 %1217, 4
  br i1 %1218, label %1219, label %1242

1219:                                             ; preds = %1216
  %1220 = load ptr, ptr @img, align 8, !tbaa !14
  %1221 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1220, i32 0, i32 53
  %1222 = load ptr, ptr %1221, align 8, !tbaa !65
  %1223 = load i32, ptr %4, align 4, !tbaa !10
  %1224 = sext i32 %1223 to i64
  %1225 = getelementptr inbounds ptr, ptr %1222, i64 %1224
  %1226 = load ptr, ptr %1225, align 8, !tbaa !62
  %1227 = load i32, ptr %7, align 4, !tbaa !10
  %1228 = sext i32 %1227 to i64
  %1229 = getelementptr inbounds ptr, ptr %1226, i64 %1228
  %1230 = load ptr, ptr %1229, align 8, !tbaa !63
  %1231 = getelementptr inbounds ptr, ptr %1230, i64 0
  %1232 = load ptr, ptr %1231, align 8, !tbaa !7
  %1233 = load i32, ptr %7, align 4, !tbaa !10
  %1234 = sext i32 %1233 to i64
  %1235 = getelementptr inbounds [4 x i32], ptr %25, i64 0, i64 %1234
  %1236 = load i32, ptr %1235, align 4, !tbaa !10
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr inbounds i32, ptr %1232, i64 %1237
  store i32 0, ptr %1238, align 4, !tbaa !10
  br label %1239

1239:                                             ; preds = %1219
  %1240 = load i32, ptr %7, align 4, !tbaa !10
  %1241 = add nsw i32 %1240, 1
  store i32 %1241, ptr %7, align 4, !tbaa !10
  br label %1216, !llvm.loop !128

1242:                                             ; preds = %1216
  br label %1243

1243:                                             ; preds = %1242, %1210
  %1244 = load i32, ptr %35, align 4, !tbaa !10
  %1245 = icmp ne i32 %1244, 0
  br i1 %1245, label %1968, label %1246

1246:                                             ; preds = %1243
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %1247

1247:                                             ; preds = %1576, %1246
  %1248 = load i32, ptr %7, align 4, !tbaa !10
  %1249 = icmp slt i32 %1248, 8
  br i1 %1249, label %1250, label %1579

1250:                                             ; preds = %1247
  %1251 = load ptr, ptr @img, align 8, !tbaa !14
  %1252 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1251, i32 0, i32 52
  %1253 = load i32, ptr %7, align 4, !tbaa !10
  %1254 = sext i32 %1253 to i64
  %1255 = getelementptr inbounds [16 x [16 x i32]], ptr %1252, i64 0, i64 %1254
  %1256 = getelementptr inbounds [16 x i32], ptr %1255, i64 0, i64 0
  %1257 = load i32, ptr %1256, align 8, !tbaa !10
  %1258 = load ptr, ptr @img, align 8, !tbaa !14
  %1259 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1258, i32 0, i32 52
  %1260 = load i32, ptr %7, align 4, !tbaa !10
  %1261 = sext i32 %1260 to i64
  %1262 = getelementptr inbounds [16 x [16 x i32]], ptr %1259, i64 0, i64 %1261
  %1263 = getelementptr inbounds [16 x i32], ptr %1262, i64 0, i64 4
  %1264 = load i32, ptr %1263, align 8, !tbaa !10
  %1265 = add nsw i32 %1257, %1264
  %1266 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 0
  store i32 %1265, ptr %1266, align 4, !tbaa !10
  %1267 = load ptr, ptr @img, align 8, !tbaa !14
  %1268 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1267, i32 0, i32 52
  %1269 = load i32, ptr %7, align 4, !tbaa !10
  %1270 = sext i32 %1269 to i64
  %1271 = getelementptr inbounds [16 x [16 x i32]], ptr %1268, i64 0, i64 %1270
  %1272 = getelementptr inbounds [16 x i32], ptr %1271, i64 0, i64 0
  %1273 = load i32, ptr %1272, align 8, !tbaa !10
  %1274 = load ptr, ptr @img, align 8, !tbaa !14
  %1275 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1274, i32 0, i32 52
  %1276 = load i32, ptr %7, align 4, !tbaa !10
  %1277 = sext i32 %1276 to i64
  %1278 = getelementptr inbounds [16 x [16 x i32]], ptr %1275, i64 0, i64 %1277
  %1279 = getelementptr inbounds [16 x i32], ptr %1278, i64 0, i64 4
  %1280 = load i32, ptr %1279, align 8, !tbaa !10
  %1281 = sub nsw i32 %1273, %1280
  %1282 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  store i32 %1281, ptr %1282, align 4, !tbaa !10
  %1283 = load ptr, ptr @img, align 8, !tbaa !14
  %1284 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1283, i32 0, i32 52
  %1285 = load i32, ptr %7, align 4, !tbaa !10
  %1286 = sext i32 %1285 to i64
  %1287 = getelementptr inbounds [16 x [16 x i32]], ptr %1284, i64 0, i64 %1286
  %1288 = getelementptr inbounds [16 x i32], ptr %1287, i64 0, i64 2
  %1289 = load i32, ptr %1288, align 8, !tbaa !10
  %1290 = ashr i32 %1289, 1
  %1291 = load ptr, ptr @img, align 8, !tbaa !14
  %1292 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1291, i32 0, i32 52
  %1293 = load i32, ptr %7, align 4, !tbaa !10
  %1294 = sext i32 %1293 to i64
  %1295 = getelementptr inbounds [16 x [16 x i32]], ptr %1292, i64 0, i64 %1294
  %1296 = getelementptr inbounds [16 x i32], ptr %1295, i64 0, i64 6
  %1297 = load i32, ptr %1296, align 8, !tbaa !10
  %1298 = sub nsw i32 %1290, %1297
  %1299 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 2
  store i32 %1298, ptr %1299, align 4, !tbaa !10
  %1300 = load ptr, ptr @img, align 8, !tbaa !14
  %1301 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1300, i32 0, i32 52
  %1302 = load i32, ptr %7, align 4, !tbaa !10
  %1303 = sext i32 %1302 to i64
  %1304 = getelementptr inbounds [16 x [16 x i32]], ptr %1301, i64 0, i64 %1303
  %1305 = getelementptr inbounds [16 x i32], ptr %1304, i64 0, i64 2
  %1306 = load i32, ptr %1305, align 8, !tbaa !10
  %1307 = load ptr, ptr @img, align 8, !tbaa !14
  %1308 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1307, i32 0, i32 52
  %1309 = load i32, ptr %7, align 4, !tbaa !10
  %1310 = sext i32 %1309 to i64
  %1311 = getelementptr inbounds [16 x [16 x i32]], ptr %1308, i64 0, i64 %1310
  %1312 = getelementptr inbounds [16 x i32], ptr %1311, i64 0, i64 6
  %1313 = load i32, ptr %1312, align 8, !tbaa !10
  %1314 = ashr i32 %1313, 1
  %1315 = add nsw i32 %1306, %1314
  %1316 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  store i32 %1315, ptr %1316, align 4, !tbaa !10
  %1317 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 0
  %1318 = load i32, ptr %1317, align 4, !tbaa !10
  %1319 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  %1320 = load i32, ptr %1319, align 4, !tbaa !10
  %1321 = add nsw i32 %1318, %1320
  %1322 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0
  store i32 %1321, ptr %1322, align 4, !tbaa !10
  %1323 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  %1324 = load i32, ptr %1323, align 4, !tbaa !10
  %1325 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 2
  %1326 = load i32, ptr %1325, align 4, !tbaa !10
  %1327 = add nsw i32 %1324, %1326
  %1328 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 2
  store i32 %1327, ptr %1328, align 4, !tbaa !10
  %1329 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  %1330 = load i32, ptr %1329, align 4, !tbaa !10
  %1331 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 2
  %1332 = load i32, ptr %1331, align 4, !tbaa !10
  %1333 = sub nsw i32 %1330, %1332
  %1334 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 4
  store i32 %1333, ptr %1334, align 4, !tbaa !10
  %1335 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 0
  %1336 = load i32, ptr %1335, align 4, !tbaa !10
  %1337 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  %1338 = load i32, ptr %1337, align 4, !tbaa !10
  %1339 = sub nsw i32 %1336, %1338
  %1340 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 6
  store i32 %1339, ptr %1340, align 4, !tbaa !10
  %1341 = load ptr, ptr @img, align 8, !tbaa !14
  %1342 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1341, i32 0, i32 52
  %1343 = load i32, ptr %7, align 4, !tbaa !10
  %1344 = sext i32 %1343 to i64
  %1345 = getelementptr inbounds [16 x [16 x i32]], ptr %1342, i64 0, i64 %1344
  %1346 = getelementptr inbounds [16 x i32], ptr %1345, i64 0, i64 3
  %1347 = load i32, ptr %1346, align 4, !tbaa !10
  %1348 = sub nsw i32 0, %1347
  %1349 = load ptr, ptr @img, align 8, !tbaa !14
  %1350 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1349, i32 0, i32 52
  %1351 = load i32, ptr %7, align 4, !tbaa !10
  %1352 = sext i32 %1351 to i64
  %1353 = getelementptr inbounds [16 x [16 x i32]], ptr %1350, i64 0, i64 %1352
  %1354 = getelementptr inbounds [16 x i32], ptr %1353, i64 0, i64 5
  %1355 = load i32, ptr %1354, align 4, !tbaa !10
  %1356 = add nsw i32 %1348, %1355
  %1357 = load ptr, ptr @img, align 8, !tbaa !14
  %1358 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1357, i32 0, i32 52
  %1359 = load i32, ptr %7, align 4, !tbaa !10
  %1360 = sext i32 %1359 to i64
  %1361 = getelementptr inbounds [16 x [16 x i32]], ptr %1358, i64 0, i64 %1360
  %1362 = getelementptr inbounds [16 x i32], ptr %1361, i64 0, i64 7
  %1363 = load i32, ptr %1362, align 4, !tbaa !10
  %1364 = sub nsw i32 %1356, %1363
  %1365 = load ptr, ptr @img, align 8, !tbaa !14
  %1366 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1365, i32 0, i32 52
  %1367 = load i32, ptr %7, align 4, !tbaa !10
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds [16 x [16 x i32]], ptr %1366, i64 0, i64 %1368
  %1370 = getelementptr inbounds [16 x i32], ptr %1369, i64 0, i64 7
  %1371 = load i32, ptr %1370, align 4, !tbaa !10
  %1372 = ashr i32 %1371, 1
  %1373 = sub nsw i32 %1364, %1372
  %1374 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 1
  store i32 %1373, ptr %1374, align 4, !tbaa !10
  %1375 = load ptr, ptr @img, align 8, !tbaa !14
  %1376 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1375, i32 0, i32 52
  %1377 = load i32, ptr %7, align 4, !tbaa !10
  %1378 = sext i32 %1377 to i64
  %1379 = getelementptr inbounds [16 x [16 x i32]], ptr %1376, i64 0, i64 %1378
  %1380 = getelementptr inbounds [16 x i32], ptr %1379, i64 0, i64 1
  %1381 = load i32, ptr %1380, align 4, !tbaa !10
  %1382 = load ptr, ptr @img, align 8, !tbaa !14
  %1383 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1382, i32 0, i32 52
  %1384 = load i32, ptr %7, align 4, !tbaa !10
  %1385 = sext i32 %1384 to i64
  %1386 = getelementptr inbounds [16 x [16 x i32]], ptr %1383, i64 0, i64 %1385
  %1387 = getelementptr inbounds [16 x i32], ptr %1386, i64 0, i64 7
  %1388 = load i32, ptr %1387, align 4, !tbaa !10
  %1389 = add nsw i32 %1381, %1388
  %1390 = load ptr, ptr @img, align 8, !tbaa !14
  %1391 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1390, i32 0, i32 52
  %1392 = load i32, ptr %7, align 4, !tbaa !10
  %1393 = sext i32 %1392 to i64
  %1394 = getelementptr inbounds [16 x [16 x i32]], ptr %1391, i64 0, i64 %1393
  %1395 = getelementptr inbounds [16 x i32], ptr %1394, i64 0, i64 3
  %1396 = load i32, ptr %1395, align 4, !tbaa !10
  %1397 = sub nsw i32 %1389, %1396
  %1398 = load ptr, ptr @img, align 8, !tbaa !14
  %1399 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1398, i32 0, i32 52
  %1400 = load i32, ptr %7, align 4, !tbaa !10
  %1401 = sext i32 %1400 to i64
  %1402 = getelementptr inbounds [16 x [16 x i32]], ptr %1399, i64 0, i64 %1401
  %1403 = getelementptr inbounds [16 x i32], ptr %1402, i64 0, i64 3
  %1404 = load i32, ptr %1403, align 4, !tbaa !10
  %1405 = ashr i32 %1404, 1
  %1406 = sub nsw i32 %1397, %1405
  %1407 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 3
  store i32 %1406, ptr %1407, align 4, !tbaa !10
  %1408 = load ptr, ptr @img, align 8, !tbaa !14
  %1409 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1408, i32 0, i32 52
  %1410 = load i32, ptr %7, align 4, !tbaa !10
  %1411 = sext i32 %1410 to i64
  %1412 = getelementptr inbounds [16 x [16 x i32]], ptr %1409, i64 0, i64 %1411
  %1413 = getelementptr inbounds [16 x i32], ptr %1412, i64 0, i64 1
  %1414 = load i32, ptr %1413, align 4, !tbaa !10
  %1415 = sub nsw i32 0, %1414
  %1416 = load ptr, ptr @img, align 8, !tbaa !14
  %1417 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1416, i32 0, i32 52
  %1418 = load i32, ptr %7, align 4, !tbaa !10
  %1419 = sext i32 %1418 to i64
  %1420 = getelementptr inbounds [16 x [16 x i32]], ptr %1417, i64 0, i64 %1419
  %1421 = getelementptr inbounds [16 x i32], ptr %1420, i64 0, i64 7
  %1422 = load i32, ptr %1421, align 4, !tbaa !10
  %1423 = add nsw i32 %1415, %1422
  %1424 = load ptr, ptr @img, align 8, !tbaa !14
  %1425 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1424, i32 0, i32 52
  %1426 = load i32, ptr %7, align 4, !tbaa !10
  %1427 = sext i32 %1426 to i64
  %1428 = getelementptr inbounds [16 x [16 x i32]], ptr %1425, i64 0, i64 %1427
  %1429 = getelementptr inbounds [16 x i32], ptr %1428, i64 0, i64 5
  %1430 = load i32, ptr %1429, align 4, !tbaa !10
  %1431 = add nsw i32 %1423, %1430
  %1432 = load ptr, ptr @img, align 8, !tbaa !14
  %1433 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1432, i32 0, i32 52
  %1434 = load i32, ptr %7, align 4, !tbaa !10
  %1435 = sext i32 %1434 to i64
  %1436 = getelementptr inbounds [16 x [16 x i32]], ptr %1433, i64 0, i64 %1435
  %1437 = getelementptr inbounds [16 x i32], ptr %1436, i64 0, i64 5
  %1438 = load i32, ptr %1437, align 4, !tbaa !10
  %1439 = ashr i32 %1438, 1
  %1440 = add nsw i32 %1431, %1439
  %1441 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  store i32 %1440, ptr %1441, align 4, !tbaa !10
  %1442 = load ptr, ptr @img, align 8, !tbaa !14
  %1443 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1442, i32 0, i32 52
  %1444 = load i32, ptr %7, align 4, !tbaa !10
  %1445 = sext i32 %1444 to i64
  %1446 = getelementptr inbounds [16 x [16 x i32]], ptr %1443, i64 0, i64 %1445
  %1447 = getelementptr inbounds [16 x i32], ptr %1446, i64 0, i64 3
  %1448 = load i32, ptr %1447, align 4, !tbaa !10
  %1449 = load ptr, ptr @img, align 8, !tbaa !14
  %1450 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1449, i32 0, i32 52
  %1451 = load i32, ptr %7, align 4, !tbaa !10
  %1452 = sext i32 %1451 to i64
  %1453 = getelementptr inbounds [16 x [16 x i32]], ptr %1450, i64 0, i64 %1452
  %1454 = getelementptr inbounds [16 x i32], ptr %1453, i64 0, i64 5
  %1455 = load i32, ptr %1454, align 4, !tbaa !10
  %1456 = add nsw i32 %1448, %1455
  %1457 = load ptr, ptr @img, align 8, !tbaa !14
  %1458 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1457, i32 0, i32 52
  %1459 = load i32, ptr %7, align 4, !tbaa !10
  %1460 = sext i32 %1459 to i64
  %1461 = getelementptr inbounds [16 x [16 x i32]], ptr %1458, i64 0, i64 %1460
  %1462 = getelementptr inbounds [16 x i32], ptr %1461, i64 0, i64 1
  %1463 = load i32, ptr %1462, align 4, !tbaa !10
  %1464 = add nsw i32 %1456, %1463
  %1465 = load ptr, ptr @img, align 8, !tbaa !14
  %1466 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1465, i32 0, i32 52
  %1467 = load i32, ptr %7, align 4, !tbaa !10
  %1468 = sext i32 %1467 to i64
  %1469 = getelementptr inbounds [16 x [16 x i32]], ptr %1466, i64 0, i64 %1468
  %1470 = getelementptr inbounds [16 x i32], ptr %1469, i64 0, i64 1
  %1471 = load i32, ptr %1470, align 4, !tbaa !10
  %1472 = ashr i32 %1471, 1
  %1473 = add nsw i32 %1464, %1472
  %1474 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  store i32 %1473, ptr %1474, align 4, !tbaa !10
  %1475 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 1
  %1476 = load i32, ptr %1475, align 4, !tbaa !10
  %1477 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  %1478 = load i32, ptr %1477, align 4, !tbaa !10
  %1479 = ashr i32 %1478, 2
  %1480 = add nsw i32 %1476, %1479
  %1481 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 1
  store i32 %1480, ptr %1481, align 4, !tbaa !10
  %1482 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 1
  %1483 = load i32, ptr %1482, align 4, !tbaa !10
  %1484 = ashr i32 %1483, 2
  %1485 = sub nsw i32 0, %1484
  %1486 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  %1487 = load i32, ptr %1486, align 4, !tbaa !10
  %1488 = add nsw i32 %1485, %1487
  %1489 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 7
  store i32 %1488, ptr %1489, align 4, !tbaa !10
  %1490 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 3
  %1491 = load i32, ptr %1490, align 4, !tbaa !10
  %1492 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  %1493 = load i32, ptr %1492, align 4, !tbaa !10
  %1494 = ashr i32 %1493, 2
  %1495 = add nsw i32 %1491, %1494
  %1496 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 3
  store i32 %1495, ptr %1496, align 4, !tbaa !10
  %1497 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 3
  %1498 = load i32, ptr %1497, align 4, !tbaa !10
  %1499 = ashr i32 %1498, 2
  %1500 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  %1501 = load i32, ptr %1500, align 4, !tbaa !10
  %1502 = sub nsw i32 %1499, %1501
  %1503 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 5
  store i32 %1502, ptr %1503, align 4, !tbaa !10
  %1504 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0
  %1505 = load i32, ptr %1504, align 4, !tbaa !10
  %1506 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 7
  %1507 = load i32, ptr %1506, align 4, !tbaa !10
  %1508 = add nsw i32 %1505, %1507
  %1509 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 0
  %1510 = load i32, ptr %7, align 4, !tbaa !10
  %1511 = sext i32 %1510 to i64
  %1512 = getelementptr inbounds [8 x i32], ptr %1509, i64 0, i64 %1511
  store i32 %1508, ptr %1512, align 4, !tbaa !10
  %1513 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 2
  %1514 = load i32, ptr %1513, align 4, !tbaa !10
  %1515 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 5
  %1516 = load i32, ptr %1515, align 4, !tbaa !10
  %1517 = add nsw i32 %1514, %1516
  %1518 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 1
  %1519 = load i32, ptr %7, align 4, !tbaa !10
  %1520 = sext i32 %1519 to i64
  %1521 = getelementptr inbounds [8 x i32], ptr %1518, i64 0, i64 %1520
  store i32 %1517, ptr %1521, align 4, !tbaa !10
  %1522 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 4
  %1523 = load i32, ptr %1522, align 4, !tbaa !10
  %1524 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 3
  %1525 = load i32, ptr %1524, align 4, !tbaa !10
  %1526 = add nsw i32 %1523, %1525
  %1527 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 2
  %1528 = load i32, ptr %7, align 4, !tbaa !10
  %1529 = sext i32 %1528 to i64
  %1530 = getelementptr inbounds [8 x i32], ptr %1527, i64 0, i64 %1529
  store i32 %1526, ptr %1530, align 4, !tbaa !10
  %1531 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 6
  %1532 = load i32, ptr %1531, align 4, !tbaa !10
  %1533 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 1
  %1534 = load i32, ptr %1533, align 4, !tbaa !10
  %1535 = add nsw i32 %1532, %1534
  %1536 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 3
  %1537 = load i32, ptr %7, align 4, !tbaa !10
  %1538 = sext i32 %1537 to i64
  %1539 = getelementptr inbounds [8 x i32], ptr %1536, i64 0, i64 %1538
  store i32 %1535, ptr %1539, align 4, !tbaa !10
  %1540 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 6
  %1541 = load i32, ptr %1540, align 4, !tbaa !10
  %1542 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 1
  %1543 = load i32, ptr %1542, align 4, !tbaa !10
  %1544 = sub nsw i32 %1541, %1543
  %1545 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 4
  %1546 = load i32, ptr %7, align 4, !tbaa !10
  %1547 = sext i32 %1546 to i64
  %1548 = getelementptr inbounds [8 x i32], ptr %1545, i64 0, i64 %1547
  store i32 %1544, ptr %1548, align 4, !tbaa !10
  %1549 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 4
  %1550 = load i32, ptr %1549, align 4, !tbaa !10
  %1551 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 3
  %1552 = load i32, ptr %1551, align 4, !tbaa !10
  %1553 = sub nsw i32 %1550, %1552
  %1554 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 5
  %1555 = load i32, ptr %7, align 4, !tbaa !10
  %1556 = sext i32 %1555 to i64
  %1557 = getelementptr inbounds [8 x i32], ptr %1554, i64 0, i64 %1556
  store i32 %1553, ptr %1557, align 4, !tbaa !10
  %1558 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 2
  %1559 = load i32, ptr %1558, align 4, !tbaa !10
  %1560 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 5
  %1561 = load i32, ptr %1560, align 4, !tbaa !10
  %1562 = sub nsw i32 %1559, %1561
  %1563 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 6
  %1564 = load i32, ptr %7, align 4, !tbaa !10
  %1565 = sext i32 %1564 to i64
  %1566 = getelementptr inbounds [8 x i32], ptr %1563, i64 0, i64 %1565
  store i32 %1562, ptr %1566, align 4, !tbaa !10
  %1567 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0
  %1568 = load i32, ptr %1567, align 4, !tbaa !10
  %1569 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 7
  %1570 = load i32, ptr %1569, align 4, !tbaa !10
  %1571 = sub nsw i32 %1568, %1570
  %1572 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 7
  %1573 = load i32, ptr %7, align 4, !tbaa !10
  %1574 = sext i32 %1573 to i64
  %1575 = getelementptr inbounds [8 x i32], ptr %1572, i64 0, i64 %1574
  store i32 %1571, ptr %1575, align 4, !tbaa !10
  br label %1576

1576:                                             ; preds = %1250
  %1577 = load i32, ptr %7, align 4, !tbaa !10
  %1578 = add nsw i32 %1577, 1
  store i32 %1578, ptr %7, align 4, !tbaa !10
  br label %1247, !llvm.loop !129

1579:                                             ; preds = %1247
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %1580

1580:                                             ; preds = %1877, %1579
  %1581 = load i32, ptr %7, align 4, !tbaa !10
  %1582 = icmp slt i32 %1581, 8
  br i1 %1582, label %1583, label %1880

1583:                                             ; preds = %1580
  %1584 = load i32, ptr %7, align 4, !tbaa !10
  %1585 = sext i32 %1584 to i64
  %1586 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1585
  %1587 = getelementptr inbounds [8 x i32], ptr %1586, i64 0, i64 0
  %1588 = load i32, ptr %1587, align 4, !tbaa !10
  %1589 = load i32, ptr %7, align 4, !tbaa !10
  %1590 = sext i32 %1589 to i64
  %1591 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1590
  %1592 = getelementptr inbounds [8 x i32], ptr %1591, i64 0, i64 4
  %1593 = load i32, ptr %1592, align 4, !tbaa !10
  %1594 = add nsw i32 %1588, %1593
  %1595 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 0
  store i32 %1594, ptr %1595, align 4, !tbaa !10
  %1596 = load i32, ptr %7, align 4, !tbaa !10
  %1597 = sext i32 %1596 to i64
  %1598 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1597
  %1599 = getelementptr inbounds [8 x i32], ptr %1598, i64 0, i64 0
  %1600 = load i32, ptr %1599, align 4, !tbaa !10
  %1601 = load i32, ptr %7, align 4, !tbaa !10
  %1602 = sext i32 %1601 to i64
  %1603 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1602
  %1604 = getelementptr inbounds [8 x i32], ptr %1603, i64 0, i64 4
  %1605 = load i32, ptr %1604, align 4, !tbaa !10
  %1606 = sub nsw i32 %1600, %1605
  %1607 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  store i32 %1606, ptr %1607, align 4, !tbaa !10
  %1608 = load i32, ptr %7, align 4, !tbaa !10
  %1609 = sext i32 %1608 to i64
  %1610 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1609
  %1611 = getelementptr inbounds [8 x i32], ptr %1610, i64 0, i64 2
  %1612 = load i32, ptr %1611, align 4, !tbaa !10
  %1613 = ashr i32 %1612, 1
  %1614 = load i32, ptr %7, align 4, !tbaa !10
  %1615 = sext i32 %1614 to i64
  %1616 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1615
  %1617 = getelementptr inbounds [8 x i32], ptr %1616, i64 0, i64 6
  %1618 = load i32, ptr %1617, align 4, !tbaa !10
  %1619 = sub nsw i32 %1613, %1618
  %1620 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 2
  store i32 %1619, ptr %1620, align 4, !tbaa !10
  %1621 = load i32, ptr %7, align 4, !tbaa !10
  %1622 = sext i32 %1621 to i64
  %1623 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1622
  %1624 = getelementptr inbounds [8 x i32], ptr %1623, i64 0, i64 2
  %1625 = load i32, ptr %1624, align 4, !tbaa !10
  %1626 = load i32, ptr %7, align 4, !tbaa !10
  %1627 = sext i32 %1626 to i64
  %1628 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1627
  %1629 = getelementptr inbounds [8 x i32], ptr %1628, i64 0, i64 6
  %1630 = load i32, ptr %1629, align 4, !tbaa !10
  %1631 = ashr i32 %1630, 1
  %1632 = add nsw i32 %1625, %1631
  %1633 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  store i32 %1632, ptr %1633, align 4, !tbaa !10
  %1634 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 0
  %1635 = load i32, ptr %1634, align 4, !tbaa !10
  %1636 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  %1637 = load i32, ptr %1636, align 4, !tbaa !10
  %1638 = add nsw i32 %1635, %1637
  %1639 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0
  store i32 %1638, ptr %1639, align 4, !tbaa !10
  %1640 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  %1641 = load i32, ptr %1640, align 4, !tbaa !10
  %1642 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 2
  %1643 = load i32, ptr %1642, align 4, !tbaa !10
  %1644 = add nsw i32 %1641, %1643
  %1645 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 2
  store i32 %1644, ptr %1645, align 4, !tbaa !10
  %1646 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 4
  %1647 = load i32, ptr %1646, align 4, !tbaa !10
  %1648 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 2
  %1649 = load i32, ptr %1648, align 4, !tbaa !10
  %1650 = sub nsw i32 %1647, %1649
  %1651 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 4
  store i32 %1650, ptr %1651, align 4, !tbaa !10
  %1652 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 0
  %1653 = load i32, ptr %1652, align 4, !tbaa !10
  %1654 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 6
  %1655 = load i32, ptr %1654, align 4, !tbaa !10
  %1656 = sub nsw i32 %1653, %1655
  %1657 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 6
  store i32 %1656, ptr %1657, align 4, !tbaa !10
  %1658 = load i32, ptr %7, align 4, !tbaa !10
  %1659 = sext i32 %1658 to i64
  %1660 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1659
  %1661 = getelementptr inbounds [8 x i32], ptr %1660, i64 0, i64 3
  %1662 = load i32, ptr %1661, align 4, !tbaa !10
  %1663 = sub nsw i32 0, %1662
  %1664 = load i32, ptr %7, align 4, !tbaa !10
  %1665 = sext i32 %1664 to i64
  %1666 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1665
  %1667 = getelementptr inbounds [8 x i32], ptr %1666, i64 0, i64 5
  %1668 = load i32, ptr %1667, align 4, !tbaa !10
  %1669 = add nsw i32 %1663, %1668
  %1670 = load i32, ptr %7, align 4, !tbaa !10
  %1671 = sext i32 %1670 to i64
  %1672 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1671
  %1673 = getelementptr inbounds [8 x i32], ptr %1672, i64 0, i64 7
  %1674 = load i32, ptr %1673, align 4, !tbaa !10
  %1675 = sub nsw i32 %1669, %1674
  %1676 = load i32, ptr %7, align 4, !tbaa !10
  %1677 = sext i32 %1676 to i64
  %1678 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1677
  %1679 = getelementptr inbounds [8 x i32], ptr %1678, i64 0, i64 7
  %1680 = load i32, ptr %1679, align 4, !tbaa !10
  %1681 = ashr i32 %1680, 1
  %1682 = sub nsw i32 %1675, %1681
  %1683 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 1
  store i32 %1682, ptr %1683, align 4, !tbaa !10
  %1684 = load i32, ptr %7, align 4, !tbaa !10
  %1685 = sext i32 %1684 to i64
  %1686 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1685
  %1687 = getelementptr inbounds [8 x i32], ptr %1686, i64 0, i64 1
  %1688 = load i32, ptr %1687, align 4, !tbaa !10
  %1689 = load i32, ptr %7, align 4, !tbaa !10
  %1690 = sext i32 %1689 to i64
  %1691 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1690
  %1692 = getelementptr inbounds [8 x i32], ptr %1691, i64 0, i64 7
  %1693 = load i32, ptr %1692, align 4, !tbaa !10
  %1694 = add nsw i32 %1688, %1693
  %1695 = load i32, ptr %7, align 4, !tbaa !10
  %1696 = sext i32 %1695 to i64
  %1697 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1696
  %1698 = getelementptr inbounds [8 x i32], ptr %1697, i64 0, i64 3
  %1699 = load i32, ptr %1698, align 4, !tbaa !10
  %1700 = sub nsw i32 %1694, %1699
  %1701 = load i32, ptr %7, align 4, !tbaa !10
  %1702 = sext i32 %1701 to i64
  %1703 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1702
  %1704 = getelementptr inbounds [8 x i32], ptr %1703, i64 0, i64 3
  %1705 = load i32, ptr %1704, align 4, !tbaa !10
  %1706 = ashr i32 %1705, 1
  %1707 = sub nsw i32 %1700, %1706
  %1708 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 3
  store i32 %1707, ptr %1708, align 4, !tbaa !10
  %1709 = load i32, ptr %7, align 4, !tbaa !10
  %1710 = sext i32 %1709 to i64
  %1711 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1710
  %1712 = getelementptr inbounds [8 x i32], ptr %1711, i64 0, i64 1
  %1713 = load i32, ptr %1712, align 4, !tbaa !10
  %1714 = sub nsw i32 0, %1713
  %1715 = load i32, ptr %7, align 4, !tbaa !10
  %1716 = sext i32 %1715 to i64
  %1717 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1716
  %1718 = getelementptr inbounds [8 x i32], ptr %1717, i64 0, i64 7
  %1719 = load i32, ptr %1718, align 4, !tbaa !10
  %1720 = add nsw i32 %1714, %1719
  %1721 = load i32, ptr %7, align 4, !tbaa !10
  %1722 = sext i32 %1721 to i64
  %1723 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1722
  %1724 = getelementptr inbounds [8 x i32], ptr %1723, i64 0, i64 5
  %1725 = load i32, ptr %1724, align 4, !tbaa !10
  %1726 = add nsw i32 %1720, %1725
  %1727 = load i32, ptr %7, align 4, !tbaa !10
  %1728 = sext i32 %1727 to i64
  %1729 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1728
  %1730 = getelementptr inbounds [8 x i32], ptr %1729, i64 0, i64 5
  %1731 = load i32, ptr %1730, align 4, !tbaa !10
  %1732 = ashr i32 %1731, 1
  %1733 = add nsw i32 %1726, %1732
  %1734 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  store i32 %1733, ptr %1734, align 4, !tbaa !10
  %1735 = load i32, ptr %7, align 4, !tbaa !10
  %1736 = sext i32 %1735 to i64
  %1737 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1736
  %1738 = getelementptr inbounds [8 x i32], ptr %1737, i64 0, i64 3
  %1739 = load i32, ptr %1738, align 4, !tbaa !10
  %1740 = load i32, ptr %7, align 4, !tbaa !10
  %1741 = sext i32 %1740 to i64
  %1742 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1741
  %1743 = getelementptr inbounds [8 x i32], ptr %1742, i64 0, i64 5
  %1744 = load i32, ptr %1743, align 4, !tbaa !10
  %1745 = add nsw i32 %1739, %1744
  %1746 = load i32, ptr %7, align 4, !tbaa !10
  %1747 = sext i32 %1746 to i64
  %1748 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1747
  %1749 = getelementptr inbounds [8 x i32], ptr %1748, i64 0, i64 1
  %1750 = load i32, ptr %1749, align 4, !tbaa !10
  %1751 = add nsw i32 %1745, %1750
  %1752 = load i32, ptr %7, align 4, !tbaa !10
  %1753 = sext i32 %1752 to i64
  %1754 = getelementptr inbounds [8 x [8 x i32]], ptr %22, i64 0, i64 %1753
  %1755 = getelementptr inbounds [8 x i32], ptr %1754, i64 0, i64 1
  %1756 = load i32, ptr %1755, align 4, !tbaa !10
  %1757 = ashr i32 %1756, 1
  %1758 = add nsw i32 %1751, %1757
  %1759 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  store i32 %1758, ptr %1759, align 4, !tbaa !10
  %1760 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 1
  %1761 = load i32, ptr %1760, align 4, !tbaa !10
  %1762 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  %1763 = load i32, ptr %1762, align 4, !tbaa !10
  %1764 = ashr i32 %1763, 2
  %1765 = add nsw i32 %1761, %1764
  %1766 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 1
  store i32 %1765, ptr %1766, align 4, !tbaa !10
  %1767 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 1
  %1768 = load i32, ptr %1767, align 4, !tbaa !10
  %1769 = ashr i32 %1768, 2
  %1770 = sub nsw i32 0, %1769
  %1771 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 7
  %1772 = load i32, ptr %1771, align 4, !tbaa !10
  %1773 = add nsw i32 %1770, %1772
  %1774 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 7
  store i32 %1773, ptr %1774, align 4, !tbaa !10
  %1775 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 3
  %1776 = load i32, ptr %1775, align 4, !tbaa !10
  %1777 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  %1778 = load i32, ptr %1777, align 4, !tbaa !10
  %1779 = ashr i32 %1778, 2
  %1780 = add nsw i32 %1776, %1779
  %1781 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 3
  store i32 %1780, ptr %1781, align 4, !tbaa !10
  %1782 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 3
  %1783 = load i32, ptr %1782, align 4, !tbaa !10
  %1784 = ashr i32 %1783, 2
  %1785 = getelementptr inbounds [8 x i32], ptr %23, i64 0, i64 5
  %1786 = load i32, ptr %1785, align 4, !tbaa !10
  %1787 = sub nsw i32 %1784, %1786
  %1788 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 5
  store i32 %1787, ptr %1788, align 4, !tbaa !10
  %1789 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0
  %1790 = load i32, ptr %1789, align 4, !tbaa !10
  %1791 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 7
  %1792 = load i32, ptr %1791, align 4, !tbaa !10
  %1793 = add nsw i32 %1790, %1792
  %1794 = load ptr, ptr @img, align 8, !tbaa !14
  %1795 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1794, i32 0, i32 52
  %1796 = getelementptr inbounds [16 x [16 x i32]], ptr %1795, i64 0, i64 0
  %1797 = load i32, ptr %7, align 4, !tbaa !10
  %1798 = sext i32 %1797 to i64
  %1799 = getelementptr inbounds [16 x i32], ptr %1796, i64 0, i64 %1798
  store i32 %1793, ptr %1799, align 4, !tbaa !10
  %1800 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 2
  %1801 = load i32, ptr %1800, align 4, !tbaa !10
  %1802 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 5
  %1803 = load i32, ptr %1802, align 4, !tbaa !10
  %1804 = add nsw i32 %1801, %1803
  %1805 = load ptr, ptr @img, align 8, !tbaa !14
  %1806 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1805, i32 0, i32 52
  %1807 = getelementptr inbounds [16 x [16 x i32]], ptr %1806, i64 0, i64 1
  %1808 = load i32, ptr %7, align 4, !tbaa !10
  %1809 = sext i32 %1808 to i64
  %1810 = getelementptr inbounds [16 x i32], ptr %1807, i64 0, i64 %1809
  store i32 %1804, ptr %1810, align 4, !tbaa !10
  %1811 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 4
  %1812 = load i32, ptr %1811, align 4, !tbaa !10
  %1813 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 3
  %1814 = load i32, ptr %1813, align 4, !tbaa !10
  %1815 = add nsw i32 %1812, %1814
  %1816 = load ptr, ptr @img, align 8, !tbaa !14
  %1817 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1816, i32 0, i32 52
  %1818 = getelementptr inbounds [16 x [16 x i32]], ptr %1817, i64 0, i64 2
  %1819 = load i32, ptr %7, align 4, !tbaa !10
  %1820 = sext i32 %1819 to i64
  %1821 = getelementptr inbounds [16 x i32], ptr %1818, i64 0, i64 %1820
  store i32 %1815, ptr %1821, align 4, !tbaa !10
  %1822 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 6
  %1823 = load i32, ptr %1822, align 4, !tbaa !10
  %1824 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 1
  %1825 = load i32, ptr %1824, align 4, !tbaa !10
  %1826 = add nsw i32 %1823, %1825
  %1827 = load ptr, ptr @img, align 8, !tbaa !14
  %1828 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1827, i32 0, i32 52
  %1829 = getelementptr inbounds [16 x [16 x i32]], ptr %1828, i64 0, i64 3
  %1830 = load i32, ptr %7, align 4, !tbaa !10
  %1831 = sext i32 %1830 to i64
  %1832 = getelementptr inbounds [16 x i32], ptr %1829, i64 0, i64 %1831
  store i32 %1826, ptr %1832, align 4, !tbaa !10
  %1833 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 6
  %1834 = load i32, ptr %1833, align 4, !tbaa !10
  %1835 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 1
  %1836 = load i32, ptr %1835, align 4, !tbaa !10
  %1837 = sub nsw i32 %1834, %1836
  %1838 = load ptr, ptr @img, align 8, !tbaa !14
  %1839 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1838, i32 0, i32 52
  %1840 = getelementptr inbounds [16 x [16 x i32]], ptr %1839, i64 0, i64 4
  %1841 = load i32, ptr %7, align 4, !tbaa !10
  %1842 = sext i32 %1841 to i64
  %1843 = getelementptr inbounds [16 x i32], ptr %1840, i64 0, i64 %1842
  store i32 %1837, ptr %1843, align 4, !tbaa !10
  %1844 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 4
  %1845 = load i32, ptr %1844, align 4, !tbaa !10
  %1846 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 3
  %1847 = load i32, ptr %1846, align 4, !tbaa !10
  %1848 = sub nsw i32 %1845, %1847
  %1849 = load ptr, ptr @img, align 8, !tbaa !14
  %1850 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1849, i32 0, i32 52
  %1851 = getelementptr inbounds [16 x [16 x i32]], ptr %1850, i64 0, i64 5
  %1852 = load i32, ptr %7, align 4, !tbaa !10
  %1853 = sext i32 %1852 to i64
  %1854 = getelementptr inbounds [16 x i32], ptr %1851, i64 0, i64 %1853
  store i32 %1848, ptr %1854, align 4, !tbaa !10
  %1855 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 2
  %1856 = load i32, ptr %1855, align 4, !tbaa !10
  %1857 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 5
  %1858 = load i32, ptr %1857, align 4, !tbaa !10
  %1859 = sub nsw i32 %1856, %1858
  %1860 = load ptr, ptr @img, align 8, !tbaa !14
  %1861 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1860, i32 0, i32 52
  %1862 = getelementptr inbounds [16 x [16 x i32]], ptr %1861, i64 0, i64 6
  %1863 = load i32, ptr %7, align 4, !tbaa !10
  %1864 = sext i32 %1863 to i64
  %1865 = getelementptr inbounds [16 x i32], ptr %1862, i64 0, i64 %1864
  store i32 %1859, ptr %1865, align 4, !tbaa !10
  %1866 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0
  %1867 = load i32, ptr %1866, align 4, !tbaa !10
  %1868 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 7
  %1869 = load i32, ptr %1868, align 4, !tbaa !10
  %1870 = sub nsw i32 %1867, %1869
  %1871 = load ptr, ptr @img, align 8, !tbaa !14
  %1872 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1871, i32 0, i32 52
  %1873 = getelementptr inbounds [16 x [16 x i32]], ptr %1872, i64 0, i64 7
  %1874 = load i32, ptr %7, align 4, !tbaa !10
  %1875 = sext i32 %1874 to i64
  %1876 = getelementptr inbounds [16 x i32], ptr %1873, i64 0, i64 %1875
  store i32 %1870, ptr %1876, align 4, !tbaa !10
  br label %1877

1877:                                             ; preds = %1583
  %1878 = load i32, ptr %7, align 4, !tbaa !10
  %1879 = add nsw i32 %1878, 1
  store i32 %1879, ptr %7, align 4, !tbaa !10
  br label %1580, !llvm.loop !130

1880:                                             ; preds = %1580
  store i32 0, ptr %8, align 4, !tbaa !10
  br label %1881

1881:                                             ; preds = %1964, %1880
  %1882 = load i32, ptr %8, align 4, !tbaa !10
  %1883 = icmp slt i32 %1882, 8
  br i1 %1883, label %1884, label %1967

1884:                                             ; preds = %1881
  %1885 = load i32, ptr %19, align 4, !tbaa !10
  %1886 = load i32, ptr %8, align 4, !tbaa !10
  %1887 = add nsw i32 %1885, %1886
  store i32 %1887, ptr %28, align 4, !tbaa !10
  %1888 = load ptr, ptr @img, align 8, !tbaa !14
  %1889 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1888, i32 0, i32 40
  %1890 = load i32, ptr %1889, align 4, !tbaa !32
  %1891 = load i32, ptr %28, align 4, !tbaa !10
  %1892 = add nsw i32 %1890, %1891
  store i32 %1892, ptr %29, align 4, !tbaa !10
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %1893

1893:                                             ; preds = %1960, %1884
  %1894 = load i32, ptr %7, align 4, !tbaa !10
  %1895 = icmp slt i32 %1894, 8
  br i1 %1895, label %1896, label %1963

1896:                                             ; preds = %1893
  %1897 = load i32, ptr %18, align 4, !tbaa !10
  %1898 = load i32, ptr %7, align 4, !tbaa !10
  %1899 = add nsw i32 %1897, %1898
  store i32 %1899, ptr %27, align 4, !tbaa !10
  %1900 = load ptr, ptr @img, align 8, !tbaa !14
  %1901 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1900, i32 0, i32 156
  %1902 = load i32, ptr %1901, align 8, !tbaa !131
  %1903 = load ptr, ptr @img, align 8, !tbaa !14
  %1904 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1903, i32 0, i32 52
  %1905 = load i32, ptr %8, align 4, !tbaa !10
  %1906 = sext i32 %1905 to i64
  %1907 = getelementptr inbounds [16 x [16 x i32]], ptr %1904, i64 0, i64 %1906
  %1908 = load i32, ptr %7, align 4, !tbaa !10
  %1909 = sext i32 %1908 to i64
  %1910 = getelementptr inbounds [16 x i32], ptr %1907, i64 0, i64 %1909
  %1911 = load i32, ptr %1910, align 4, !tbaa !10
  %1912 = sext i32 %1911 to i64
  %1913 = load ptr, ptr @img, align 8, !tbaa !14
  %1914 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1913, i32 0, i32 51
  %1915 = load i32, ptr %28, align 4, !tbaa !10
  %1916 = sext i32 %1915 to i64
  %1917 = getelementptr inbounds [16 x [16 x i16]], ptr %1914, i64 0, i64 %1916
  %1918 = load i32, ptr %27, align 4, !tbaa !10
  %1919 = sext i32 %1918 to i64
  %1920 = getelementptr inbounds [16 x i16], ptr %1917, i64 0, i64 %1919
  %1921 = load i16, ptr %1920, align 2, !tbaa !56
  %1922 = zext i16 %1921 to i64
  %1923 = shl i64 %1922, 6
  %1924 = add nsw i64 %1912, %1923
  %1925 = trunc i64 %1924 to i32
  %1926 = call signext i32 @rshift_rnd_sf(i32 noundef signext %1925, i32 noundef signext 6)
  %1927 = call signext i32 @iClip1(i32 noundef signext %1902, i32 noundef signext %1926)
  %1928 = load ptr, ptr @img, align 8, !tbaa !14
  %1929 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1928, i32 0, i32 52
  %1930 = load i32, ptr %8, align 4, !tbaa !10
  %1931 = sext i32 %1930 to i64
  %1932 = getelementptr inbounds [16 x [16 x i32]], ptr %1929, i64 0, i64 %1931
  %1933 = load i32, ptr %7, align 4, !tbaa !10
  %1934 = sext i32 %1933 to i64
  %1935 = getelementptr inbounds [16 x i32], ptr %1932, i64 0, i64 %1934
  store i32 %1927, ptr %1935, align 4, !tbaa !10
  %1936 = load ptr, ptr @img, align 8, !tbaa !14
  %1937 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1936, i32 0, i32 52
  %1938 = load i32, ptr %8, align 4, !tbaa !10
  %1939 = sext i32 %1938 to i64
  %1940 = getelementptr inbounds [16 x [16 x i32]], ptr %1937, i64 0, i64 %1939
  %1941 = load i32, ptr %7, align 4, !tbaa !10
  %1942 = sext i32 %1941 to i64
  %1943 = getelementptr inbounds [16 x i32], ptr %1940, i64 0, i64 %1942
  %1944 = load i32, ptr %1943, align 4, !tbaa !10
  %1945 = trunc i32 %1944 to i16
  %1946 = load ptr, ptr @enc_picture, align 8, !tbaa !68
  %1947 = getelementptr inbounds nuw %struct.storable_picture, ptr %1946, i32 0, i32 29
  %1948 = load ptr, ptr %1947, align 8, !tbaa !70
  %1949 = load i32, ptr %29, align 4, !tbaa !10
  %1950 = sext i32 %1949 to i64
  %1951 = getelementptr inbounds ptr, ptr %1948, i64 %1950
  %1952 = load ptr, ptr %1951, align 8, !tbaa !54
  %1953 = load ptr, ptr @img, align 8, !tbaa !14
  %1954 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1953, i32 0, i32 39
  %1955 = load i32, ptr %1954, align 8, !tbaa !15
  %1956 = load i32, ptr %27, align 4, !tbaa !10
  %1957 = add nsw i32 %1955, %1956
  %1958 = sext i32 %1957 to i64
  %1959 = getelementptr inbounds i16, ptr %1952, i64 %1958
  store i16 %1945, ptr %1959, align 2, !tbaa !56
  br label %1960

1960:                                             ; preds = %1896
  %1961 = load i32, ptr %7, align 4, !tbaa !10
  %1962 = add nsw i32 %1961, 1
  store i32 %1962, ptr %7, align 4, !tbaa !10
  br label %1893, !llvm.loop !132

1963:                                             ; preds = %1893
  br label %1964

1964:                                             ; preds = %1963
  %1965 = load i32, ptr %8, align 4, !tbaa !10
  %1966 = add nsw i32 %1965, 1
  store i32 %1966, ptr %8, align 4, !tbaa !10
  br label %1881, !llvm.loop !133

1967:                                             ; preds = %1881
  br label %2050

1968:                                             ; preds = %1243
  store i32 0, ptr %8, align 4, !tbaa !10
  br label %1969

1969:                                             ; preds = %2046, %1968
  %1970 = load i32, ptr %8, align 4, !tbaa !10
  %1971 = icmp slt i32 %1970, 8
  br i1 %1971, label %1972, label %2049

1972:                                             ; preds = %1969
  %1973 = load i32, ptr %19, align 4, !tbaa !10
  %1974 = load i32, ptr %8, align 4, !tbaa !10
  %1975 = add nsw i32 %1973, %1974
  store i32 %1975, ptr %28, align 4, !tbaa !10
  %1976 = load ptr, ptr @img, align 8, !tbaa !14
  %1977 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1976, i32 0, i32 40
  %1978 = load i32, ptr %1977, align 4, !tbaa !32
  %1979 = load i32, ptr %28, align 4, !tbaa !10
  %1980 = add nsw i32 %1978, %1979
  store i32 %1980, ptr %29, align 4, !tbaa !10
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %1981

1981:                                             ; preds = %2042, %1972
  %1982 = load i32, ptr %7, align 4, !tbaa !10
  %1983 = icmp slt i32 %1982, 8
  br i1 %1983, label %1984, label %2045

1984:                                             ; preds = %1981
  %1985 = load i32, ptr %18, align 4, !tbaa !10
  %1986 = load i32, ptr %7, align 4, !tbaa !10
  %1987 = add nsw i32 %1985, %1986
  store i32 %1987, ptr %27, align 4, !tbaa !10
  %1988 = load ptr, ptr @img, align 8, !tbaa !14
  %1989 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1988, i32 0, i32 52
  %1990 = load i32, ptr %8, align 4, !tbaa !10
  %1991 = sext i32 %1990 to i64
  %1992 = getelementptr inbounds [16 x [16 x i32]], ptr %1989, i64 0, i64 %1991
  %1993 = load i32, ptr %7, align 4, !tbaa !10
  %1994 = sext i32 %1993 to i64
  %1995 = getelementptr inbounds [16 x i32], ptr %1992, i64 0, i64 %1994
  %1996 = load i32, ptr %1995, align 4, !tbaa !10
  %1997 = load ptr, ptr @img, align 8, !tbaa !14
  %1998 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1997, i32 0, i32 51
  %1999 = load i32, ptr %28, align 4, !tbaa !10
  %2000 = sext i32 %1999 to i64
  %2001 = getelementptr inbounds [16 x [16 x i16]], ptr %1998, i64 0, i64 %2000
  %2002 = load i32, ptr %18, align 4, !tbaa !10
  %2003 = load i32, ptr %7, align 4, !tbaa !10
  %2004 = add nsw i32 %2002, %2003
  %2005 = sext i32 %2004 to i64
  %2006 = getelementptr inbounds [16 x i16], ptr %2001, i64 0, i64 %2005
  %2007 = load i16, ptr %2006, align 2, !tbaa !56
  %2008 = zext i16 %2007 to i32
  %2009 = add nsw i32 %1996, %2008
  %2010 = load ptr, ptr @img, align 8, !tbaa !14
  %2011 = getelementptr inbounds nuw %struct.ImageParameters, ptr %2010, i32 0, i32 52
  %2012 = load i32, ptr %8, align 4, !tbaa !10
  %2013 = sext i32 %2012 to i64
  %2014 = getelementptr inbounds [16 x [16 x i32]], ptr %2011, i64 0, i64 %2013
  %2015 = load i32, ptr %7, align 4, !tbaa !10
  %2016 = sext i32 %2015 to i64
  %2017 = getelementptr inbounds [16 x i32], ptr %2014, i64 0, i64 %2016
  store i32 %2009, ptr %2017, align 4, !tbaa !10
  %2018 = load ptr, ptr @img, align 8, !tbaa !14
  %2019 = getelementptr inbounds nuw %struct.ImageParameters, ptr %2018, i32 0, i32 52
  %2020 = load i32, ptr %8, align 4, !tbaa !10
  %2021 = sext i32 %2020 to i64
  %2022 = getelementptr inbounds [16 x [16 x i32]], ptr %2019, i64 0, i64 %2021
  %2023 = load i32, ptr %7, align 4, !tbaa !10
  %2024 = sext i32 %2023 to i64
  %2025 = getelementptr inbounds [16 x i32], ptr %2022, i64 0, i64 %2024
  %2026 = load i32, ptr %2025, align 4, !tbaa !10
  %2027 = trunc i32 %2026 to i16
  %2028 = load ptr, ptr @enc_picture, align 8, !tbaa !68
  %2029 = getelementptr inbounds nuw %struct.storable_picture, ptr %2028, i32 0, i32 29
  %2030 = load ptr, ptr %2029, align 8, !tbaa !70
  %2031 = load i32, ptr %29, align 4, !tbaa !10
  %2032 = sext i32 %2031 to i64
  %2033 = getelementptr inbounds ptr, ptr %2030, i64 %2032
  %2034 = load ptr, ptr %2033, align 8, !tbaa !54
  %2035 = load ptr, ptr @img, align 8, !tbaa !14
  %2036 = getelementptr inbounds nuw %struct.ImageParameters, ptr %2035, i32 0, i32 39
  %2037 = load i32, ptr %2036, align 8, !tbaa !15
  %2038 = load i32, ptr %27, align 4, !tbaa !10
  %2039 = add nsw i32 %2037, %2038
  %2040 = sext i32 %2039 to i64
  %2041 = getelementptr inbounds i16, ptr %2034, i64 %2040
  store i16 %2027, ptr %2041, align 2, !tbaa !56
  br label %2042

2042:                                             ; preds = %1984
  %2043 = load i32, ptr %7, align 4, !tbaa !10
  %2044 = add nsw i32 %2043, 1
  store i32 %2044, ptr %7, align 4, !tbaa !10
  br label %1981, !llvm.loop !134

2045:                                             ; preds = %1981
  br label %2046

2046:                                             ; preds = %2045
  %2047 = load i32, ptr %8, align 4, !tbaa !10
  %2048 = add nsw i32 %2047, 1
  store i32 %2048, ptr %8, align 4, !tbaa !10
  br label %1969, !llvm.loop !135

2049:                                             ; preds = %1969
  br label %2050

2050:                                             ; preds = %2049, %1967
  %2051 = load i32, ptr %14, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %36) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %35) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %34) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %33) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %32) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %31) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %30) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %29) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %26) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %25) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %24) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %23) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr %22) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %21) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %20) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  ret i32 %2051
}

; Function Attrs: nounwind
define dso_local void @LowPassForIntra8x8Pred(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [25 x i16], align 2
  store ptr %0, ptr %5, align 8, !tbaa !54
  store i32 %1, ptr %6, align 4, !tbaa !10
  store i32 %2, ptr %7, align 4, !tbaa !10
  store i32 %3, ptr %8, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.start.p0(i64 50, ptr %10) #7
  %11 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 0
  %12 = load ptr, ptr %5, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %11, ptr align 2 %12, i64 50, i1 false)
  %13 = load i32, ptr %7, align 4, !tbaa !10
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %124

15:                                               ; preds = %4
  %16 = load i32, ptr %6, align 4, !tbaa !10
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load ptr, ptr %5, align 8, !tbaa !54
  %20 = getelementptr inbounds i16, ptr %19, i64 0
  %21 = getelementptr inbounds i16, ptr %20, i64 0
  %22 = load i16, ptr %21, align 2, !tbaa !56
  %23 = zext i16 %22 to i32
  %24 = load ptr, ptr %5, align 8, !tbaa !54
  %25 = getelementptr inbounds i16, ptr %24, i64 0
  %26 = getelementptr inbounds i16, ptr %25, i64 1
  %27 = load i16, ptr %26, align 2, !tbaa !56
  %28 = zext i16 %27 to i32
  %29 = shl i32 %28, 1
  %30 = add nsw i32 %23, %29
  %31 = load ptr, ptr %5, align 8, !tbaa !54
  %32 = getelementptr inbounds i16, ptr %31, i64 0
  %33 = getelementptr inbounds i16, ptr %32, i64 2
  %34 = load i16, ptr %33, align 2, !tbaa !56
  %35 = zext i16 %34 to i32
  %36 = add nsw i32 %30, %35
  %37 = add nsw i32 %36, 2
  %38 = ashr i32 %37, 2
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 1
  store i16 %39, ptr %40, align 2, !tbaa !56
  br label %64

41:                                               ; preds = %15
  %42 = load ptr, ptr %5, align 8, !tbaa !54
  %43 = getelementptr inbounds i16, ptr %42, i64 0
  %44 = getelementptr inbounds i16, ptr %43, i64 1
  %45 = load i16, ptr %44, align 2, !tbaa !56
  %46 = zext i16 %45 to i32
  %47 = load ptr, ptr %5, align 8, !tbaa !54
  %48 = getelementptr inbounds i16, ptr %47, i64 0
  %49 = getelementptr inbounds i16, ptr %48, i64 1
  %50 = load i16, ptr %49, align 2, !tbaa !56
  %51 = zext i16 %50 to i32
  %52 = shl i32 %51, 1
  %53 = add nsw i32 %46, %52
  %54 = load ptr, ptr %5, align 8, !tbaa !54
  %55 = getelementptr inbounds i16, ptr %54, i64 0
  %56 = getelementptr inbounds i16, ptr %55, i64 2
  %57 = load i16, ptr %56, align 2, !tbaa !56
  %58 = zext i16 %57 to i32
  %59 = add nsw i32 %53, %58
  %60 = add nsw i32 %59, 2
  %61 = ashr i32 %60, 2
  %62 = trunc i32 %61 to i16
  %63 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 1
  store i16 %62, ptr %63, align 2, !tbaa !56
  br label %64

64:                                               ; preds = %41, %18
  store i32 2, ptr %9, align 4, !tbaa !10
  br label %65

65:                                               ; preds = %101, %64
  %66 = load i32, ptr %9, align 4, !tbaa !10
  %67 = icmp slt i32 %66, 16
  br i1 %67, label %68, label %104

68:                                               ; preds = %65
  %69 = load ptr, ptr %5, align 8, !tbaa !54
  %70 = getelementptr inbounds i16, ptr %69, i64 0
  %71 = load i32, ptr %9, align 4, !tbaa !10
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i16, ptr %70, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !56
  %76 = zext i16 %75 to i32
  %77 = load ptr, ptr %5, align 8, !tbaa !54
  %78 = getelementptr inbounds i16, ptr %77, i64 0
  %79 = load i32, ptr %9, align 4, !tbaa !10
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i16, ptr %78, i64 %80
  %82 = load i16, ptr %81, align 2, !tbaa !56
  %83 = zext i16 %82 to i32
  %84 = shl i32 %83, 1
  %85 = add nsw i32 %76, %84
  %86 = load ptr, ptr %5, align 8, !tbaa !54
  %87 = getelementptr inbounds i16, ptr %86, i64 0
  %88 = load i32, ptr %9, align 4, !tbaa !10
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16, ptr %87, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !56
  %93 = zext i16 %92 to i32
  %94 = add nsw i32 %85, %93
  %95 = add nsw i32 %94, 2
  %96 = ashr i32 %95, 2
  %97 = trunc i32 %96 to i16
  %98 = load i32, ptr %9, align 4, !tbaa !10
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 %99
  store i16 %97, ptr %100, align 2, !tbaa !56
  br label %101

101:                                              ; preds = %68
  %102 = load i32, ptr %9, align 4, !tbaa !10
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %9, align 4, !tbaa !10
  br label %65, !llvm.loop !136

104:                                              ; preds = %65
  %105 = load ptr, ptr %5, align 8, !tbaa !54
  %106 = getelementptr inbounds i16, ptr %105, i64 16
  %107 = load i16, ptr %106, align 2, !tbaa !56
  %108 = zext i16 %107 to i32
  %109 = load ptr, ptr %5, align 8, !tbaa !54
  %110 = getelementptr inbounds i16, ptr %109, i64 16
  %111 = load i16, ptr %110, align 2, !tbaa !56
  %112 = zext i16 %111 to i32
  %113 = shl i32 %112, 1
  %114 = add nsw i32 %108, %113
  %115 = load ptr, ptr %5, align 8, !tbaa !54
  %116 = getelementptr inbounds i16, ptr %115, i64 15
  %117 = load i16, ptr %116, align 2, !tbaa !56
  %118 = zext i16 %117 to i32
  %119 = add nsw i32 %114, %118
  %120 = add nsw i32 %119, 2
  %121 = ashr i32 %120, 2
  %122 = trunc i32 %121 to i16
  %123 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 16
  store i16 %122, ptr %123, align 2, !tbaa !56
  br label %124

124:                                              ; preds = %104, %4
  %125 = load i32, ptr %6, align 4, !tbaa !10
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %202

127:                                              ; preds = %124
  %128 = load i32, ptr %7, align 4, !tbaa !10
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %153

130:                                              ; preds = %127
  %131 = load i32, ptr %8, align 4, !tbaa !10
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %130
  %134 = load ptr, ptr %5, align 8, !tbaa !54
  %135 = getelementptr inbounds i16, ptr %134, i64 17
  %136 = load i16, ptr %135, align 2, !tbaa !56
  %137 = zext i16 %136 to i32
  %138 = load ptr, ptr %5, align 8, !tbaa !54
  %139 = getelementptr inbounds i16, ptr %138, i64 0
  %140 = load i16, ptr %139, align 2, !tbaa !56
  %141 = zext i16 %140 to i32
  %142 = shl i32 %141, 1
  %143 = add nsw i32 %137, %142
  %144 = load ptr, ptr %5, align 8, !tbaa !54
  %145 = getelementptr inbounds i16, ptr %144, i64 1
  %146 = load i16, ptr %145, align 2, !tbaa !56
  %147 = zext i16 %146 to i32
  %148 = add nsw i32 %143, %147
  %149 = add nsw i32 %148, 2
  %150 = ashr i32 %149, 2
  %151 = trunc i32 %150 to i16
  %152 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 0
  store i16 %151, ptr %152, align 2, !tbaa !56
  br label %201

153:                                              ; preds = %130, %127
  %154 = load i32, ptr %7, align 4, !tbaa !10
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %153
  %157 = load ptr, ptr %5, align 8, !tbaa !54
  %158 = getelementptr inbounds i16, ptr %157, i64 0
  %159 = load i16, ptr %158, align 2, !tbaa !56
  %160 = zext i16 %159 to i32
  %161 = load ptr, ptr %5, align 8, !tbaa !54
  %162 = getelementptr inbounds i16, ptr %161, i64 0
  %163 = load i16, ptr %162, align 2, !tbaa !56
  %164 = zext i16 %163 to i32
  %165 = shl i32 %164, 1
  %166 = add nsw i32 %160, %165
  %167 = load ptr, ptr %5, align 8, !tbaa !54
  %168 = getelementptr inbounds i16, ptr %167, i64 1
  %169 = load i16, ptr %168, align 2, !tbaa !56
  %170 = zext i16 %169 to i32
  %171 = add nsw i32 %166, %170
  %172 = add nsw i32 %171, 2
  %173 = ashr i32 %172, 2
  %174 = trunc i32 %173 to i16
  %175 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 0
  store i16 %174, ptr %175, align 2, !tbaa !56
  br label %200

176:                                              ; preds = %153
  %177 = load i32, ptr %8, align 4, !tbaa !10
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %176
  %180 = load ptr, ptr %5, align 8, !tbaa !54
  %181 = getelementptr inbounds i16, ptr %180, i64 0
  %182 = load i16, ptr %181, align 2, !tbaa !56
  %183 = zext i16 %182 to i32
  %184 = load ptr, ptr %5, align 8, !tbaa !54
  %185 = getelementptr inbounds i16, ptr %184, i64 0
  %186 = load i16, ptr %185, align 2, !tbaa !56
  %187 = zext i16 %186 to i32
  %188 = shl i32 %187, 1
  %189 = add nsw i32 %183, %188
  %190 = load ptr, ptr %5, align 8, !tbaa !54
  %191 = getelementptr inbounds i16, ptr %190, i64 17
  %192 = load i16, ptr %191, align 2, !tbaa !56
  %193 = zext i16 %192 to i32
  %194 = add nsw i32 %189, %193
  %195 = add nsw i32 %194, 2
  %196 = ashr i32 %195, 2
  %197 = trunc i32 %196 to i16
  %198 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 0
  store i16 %197, ptr %198, align 2, !tbaa !56
  br label %199

199:                                              ; preds = %179, %176
  br label %200

200:                                              ; preds = %199, %156
  br label %201

201:                                              ; preds = %200, %133
  br label %202

202:                                              ; preds = %201, %124
  %203 = load i32, ptr %8, align 4, !tbaa !10
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %308

205:                                              ; preds = %202
  %206 = load i32, ptr %6, align 4, !tbaa !10
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %228

208:                                              ; preds = %205
  %209 = load ptr, ptr %5, align 8, !tbaa !54
  %210 = getelementptr inbounds i16, ptr %209, i64 0
  %211 = load i16, ptr %210, align 2, !tbaa !56
  %212 = zext i16 %211 to i32
  %213 = load ptr, ptr %5, align 8, !tbaa !54
  %214 = getelementptr inbounds i16, ptr %213, i64 17
  %215 = load i16, ptr %214, align 2, !tbaa !56
  %216 = zext i16 %215 to i32
  %217 = shl i32 %216, 1
  %218 = add nsw i32 %212, %217
  %219 = load ptr, ptr %5, align 8, !tbaa !54
  %220 = getelementptr inbounds i16, ptr %219, i64 18
  %221 = load i16, ptr %220, align 2, !tbaa !56
  %222 = zext i16 %221 to i32
  %223 = add nsw i32 %218, %222
  %224 = add nsw i32 %223, 2
  %225 = ashr i32 %224, 2
  %226 = trunc i32 %225 to i16
  %227 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 17
  store i16 %226, ptr %227, align 2, !tbaa !56
  br label %248

228:                                              ; preds = %205
  %229 = load ptr, ptr %5, align 8, !tbaa !54
  %230 = getelementptr inbounds i16, ptr %229, i64 17
  %231 = load i16, ptr %230, align 2, !tbaa !56
  %232 = zext i16 %231 to i32
  %233 = load ptr, ptr %5, align 8, !tbaa !54
  %234 = getelementptr inbounds i16, ptr %233, i64 17
  %235 = load i16, ptr %234, align 2, !tbaa !56
  %236 = zext i16 %235 to i32
  %237 = shl i32 %236, 1
  %238 = add nsw i32 %232, %237
  %239 = load ptr, ptr %5, align 8, !tbaa !54
  %240 = getelementptr inbounds i16, ptr %239, i64 18
  %241 = load i16, ptr %240, align 2, !tbaa !56
  %242 = zext i16 %241 to i32
  %243 = add nsw i32 %238, %242
  %244 = add nsw i32 %243, 2
  %245 = ashr i32 %244, 2
  %246 = trunc i32 %245 to i16
  %247 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 17
  store i16 %246, ptr %247, align 2, !tbaa !56
  br label %248

248:                                              ; preds = %228, %208
  store i32 18, ptr %9, align 4, !tbaa !10
  br label %249

249:                                              ; preds = %285, %248
  %250 = load i32, ptr %9, align 4, !tbaa !10
  %251 = icmp slt i32 %250, 24
  br i1 %251, label %252, label %288

252:                                              ; preds = %249
  %253 = load ptr, ptr %5, align 8, !tbaa !54
  %254 = getelementptr inbounds i16, ptr %253, i64 0
  %255 = load i32, ptr %9, align 4, !tbaa !10
  %256 = sub nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i16, ptr %254, i64 %257
  %259 = load i16, ptr %258, align 2, !tbaa !56
  %260 = zext i16 %259 to i32
  %261 = load ptr, ptr %5, align 8, !tbaa !54
  %262 = getelementptr inbounds i16, ptr %261, i64 0
  %263 = load i32, ptr %9, align 4, !tbaa !10
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i16, ptr %262, i64 %264
  %266 = load i16, ptr %265, align 2, !tbaa !56
  %267 = zext i16 %266 to i32
  %268 = shl i32 %267, 1
  %269 = add nsw i32 %260, %268
  %270 = load ptr, ptr %5, align 8, !tbaa !54
  %271 = getelementptr inbounds i16, ptr %270, i64 0
  %272 = load i32, ptr %9, align 4, !tbaa !10
  %273 = add nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i16, ptr %271, i64 %274
  %276 = load i16, ptr %275, align 2, !tbaa !56
  %277 = zext i16 %276 to i32
  %278 = add nsw i32 %269, %277
  %279 = add nsw i32 %278, 2
  %280 = ashr i32 %279, 2
  %281 = trunc i32 %280 to i16
  %282 = load i32, ptr %9, align 4, !tbaa !10
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 %283
  store i16 %281, ptr %284, align 2, !tbaa !56
  br label %285

285:                                              ; preds = %252
  %286 = load i32, ptr %9, align 4, !tbaa !10
  %287 = add nsw i32 %286, 1
  store i32 %287, ptr %9, align 4, !tbaa !10
  br label %249, !llvm.loop !137

288:                                              ; preds = %249
  %289 = load ptr, ptr %5, align 8, !tbaa !54
  %290 = getelementptr inbounds i16, ptr %289, i64 23
  %291 = load i16, ptr %290, align 2, !tbaa !56
  %292 = zext i16 %291 to i32
  %293 = load ptr, ptr %5, align 8, !tbaa !54
  %294 = getelementptr inbounds i16, ptr %293, i64 24
  %295 = load i16, ptr %294, align 2, !tbaa !56
  %296 = zext i16 %295 to i32
  %297 = shl i32 %296, 1
  %298 = add nsw i32 %292, %297
  %299 = load ptr, ptr %5, align 8, !tbaa !54
  %300 = getelementptr inbounds i16, ptr %299, i64 24
  %301 = load i16, ptr %300, align 2, !tbaa !56
  %302 = zext i16 %301 to i32
  %303 = add nsw i32 %298, %302
  %304 = add nsw i32 %303, 2
  %305 = ashr i32 %304, 2
  %306 = trunc i32 %305 to i16
  %307 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 24
  store i16 %306, ptr %307, align 2, !tbaa !56
  br label %308

308:                                              ; preds = %288, %202
  %309 = load ptr, ptr %5, align 8, !tbaa !54
  %310 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %309, ptr align 2 %310, i64 50, i1 false)
  call void @llvm.lifetime.end.p0(i64 50, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7
  ret void
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @rshift_rnd_sf(i32 noundef signext %0, i32 noundef signext %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !10
  store i32 %1, ptr %4, align 4, !tbaa !10
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load i32, ptr %4, align 4, !tbaa !10
  %7 = sub nsw i32 %6, 1
  %8 = shl i32 1, %7
  %9 = add nsw i32 %5, %8
  %10 = load i32, ptr %4, align 4, !tbaa !10
  %11 = ashr i32 %9, %10
  ret i32 %11
}

declare signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

declare signext i32 @writeLumaCoeff8x8_CABAC(i32 noundef signext, i32 noundef signext) #3

; Function Attrs: inlinehint nounwind
define internal signext i32 @iabs(i32 noundef signext %0) #6 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !10
  %3 = load i32, ptr %2, align 4, !tbaa !10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !tbaa !10
  %7 = sub nsw i32 0, %6
  br label %10

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4, !tbaa !10
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @isignab(i32 noundef signext %0, i32 noundef signext %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !10
  store i32 %1, ptr %4, align 4, !tbaa !10
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 4, !tbaa !10
  %9 = call signext i32 @iabs(i32 noundef signext %8)
  %10 = sub nsw i32 0, %9
  br label %14

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4, !tbaa !10
  %13 = call signext i32 @iabs(i32 noundef signext %12)
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi i32 [ %10, %7 ], [ %13, %11 ]
  ret i32 %15
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @iClip1(i32 noundef signext %0, i32 noundef signext %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !10
  store i32 %1, ptr %4, align 4, !tbaa !10
  %5 = load i32, ptr %4, align 4, !tbaa !10
  %6 = call signext i32 @imax(i32 noundef signext %5, i32 noundef signext 0)
  store i32 %6, ptr %4, align 4, !tbaa !10
  %7 = load i32, ptr %4, align 4, !tbaa !10
  %8 = load i32, ptr %3, align 4, !tbaa !10
  %9 = call signext i32 @imin(i32 noundef signext %7, i32 noundef signext %8)
  store i32 %9, ptr %4, align 4, !tbaa !10
  %10 = load i32, ptr %4, align 4, !tbaa !10
  ret i32 %10
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @imax(i32 noundef signext %0, i32 noundef signext %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !10
  store i32 %1, ptr %4, align 4, !tbaa !10
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load i32, ptr %4, align 4, !tbaa !10
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4, !tbaa !10
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4, !tbaa !10
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @imin(i32 noundef signext %0, i32 noundef signext %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !10
  store i32 %1, ptr %4, align 4, !tbaa !10
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load i32, ptr %4, align 4, !tbaa !10
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4, !tbaa !10
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4, !tbaa !10
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 int", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !5, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!9, !9, i64 0}
!15 = !{!16, !11, i64 176}
!16 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !17, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !18, i64 128, !18, i64 136, !11, i64 144, !20, i64 152, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !5, i64 208, !5, i64 4816, !5, i64 7376, !5, i64 8528, !5, i64 12624, !5, i64 13136, !22, i64 14160, !20, i64 14168, !20, i64 14176, !20, i64 14184, !22, i64 14192, !22, i64 14200, !9, i64 14208, !9, i64 14216, !24, i64 14224, !8, i64 14232, !8, i64 14240, !11, i64 14248, !11, i64 14252, !11, i64 14256, !11, i64 14260, !5, i64 14264, !11, i64 14328, !11, i64 14332, !11, i64 14336, !11, i64 14340, !11, i64 14344, !4, i64 14352, !11, i64 14360, !11, i64 14364, !11, i64 14368, !11, i64 14372, !25, i64 14376, !25, i64 14384, !25, i64 14392, !25, i64 14400, !5, i64 14408, !11, i64 14440, !11, i64 14444, !11, i64 14448, !11, i64 14452, !11, i64 14456, !11, i64 14460, !11, i64 14464, !11, i64 14468, !5, i64 14472, !11, i64 15240, !11, i64 15244, !11, i64 15248, !11, i64 15252, !11, i64 15256, !11, i64 15260, !11, i64 15264, !11, i64 15268, !11, i64 15272, !11, i64 15276, !11, i64 15280, !11, i64 15284, !11, i64 15288, !5, i64 15292, !11, i64 15296, !11, i64 15300, !5, i64 15304, !11, i64 15312, !11, i64 15316, !11, i64 15320, !11, i64 15324, !11, i64 15328, !11, i64 15332, !11, i64 15336, !11, i64 15340, !11, i64 15344, !11, i64 15348, !11, i64 15352, !11, i64 15356, !11, i64 15360, !11, i64 15364, !11, i64 15368, !11, i64 15372, !28, i64 15376, !11, i64 15384, !11, i64 15388, !11, i64 15392, !11, i64 15396, !11, i64 15400, !11, i64 15404, !11, i64 15408, !11, i64 15412, !11, i64 15416, !11, i64 15420, !11, i64 15424, !11, i64 15428, !11, i64 15432, !11, i64 15436, !11, i64 15440, !11, i64 15444, !11, i64 15448, !11, i64 15452, !11, i64 15456, !11, i64 15460, !11, i64 15464, !11, i64 15468, !11, i64 15472, !29, i64 15480, !30, i64 15488, !20, i64 15496, !29, i64 15504, !11, i64 15512, !11, i64 15516, !11, i64 15520, !11, i64 15524, !11, i64 15528, !11, i64 15532, !11, i64 15536, !11, i64 15540, !11, i64 15544, !11, i64 15548, !5, i64 15552, !5, i64 15576, !11, i64 15584, !11, i64 15588, !31, i64 15592, !11, i64 15596, !11, i64 15600, !11, i64 15604, !11, i64 15608, !11, i64 15612}
!17 = !{!"float", !5, i64 0}
!18 = !{!"p2 omnipotent char", !19, i64 0}
!19 = !{!"any p2 pointer", !9, i64 0}
!20 = !{!"p3 int", !21, i64 0}
!21 = !{!"any p3 pointer", !19, i64 0}
!22 = !{!"p4 int", !23, i64 0}
!23 = !{!"any p4 pointer", !21, i64 0}
!24 = !{!"p1 _ZTS10macroblock", !9, i64 0}
!25 = !{!"p6 short", !26, i64 0}
!26 = !{!"any p6 pointer", !27, i64 0}
!27 = !{!"any p5 pointer", !23, i64 0}
!28 = !{!"p1 _ZTS18DecRefPicMarking_s", !9, i64 0}
!29 = !{!"p2 double", !19, i64 0}
!30 = !{!"p3 double", !21, i64 0}
!31 = !{!"short", !5, i64 0}
!32 = !{!16, !11, i64 180}
!33 = !{!16, !11, i64 192}
!34 = !{!16, !11, i64 196}
!35 = !{!36, !36, i64 0}
!36 = !{!"p2 short", !19, i64 0}
!37 = !{!16, !24, i64 14224}
!38 = !{!16, !11, i64 12}
!39 = !{!24, !24, i64 0}
!40 = !{!41, !11, i64 272}
!41 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !5, i64 72, !5, i64 136, !5, i64 200, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !5, i64 280, !5, i64 536, !5, i64 792, !5, i64 1048, !5, i64 1304, !11, i64 1560, !11, i64 1564, !11, i64 1568, !11, i64 1572, !11, i64 1576, !11, i64 1580, !5, i64 1584, !11, i64 2084, !11, i64 2088, !11, i64 2092, !11, i64 2096, !11, i64 2100, !11, i64 2104, !11, i64 2108, !11, i64 2112, !11, i64 2116, !11, i64 2120, !11, i64 2124, !11, i64 2128, !11, i64 2132, !11, i64 2136, !11, i64 2140, !11, i64 2144, !11, i64 2148, !11, i64 2152, !11, i64 2156, !5, i64 2160, !5, i64 2416, !5, i64 2672, !11, i64 2928, !11, i64 2932, !11, i64 2936, !11, i64 2940, !11, i64 2944, !11, i64 2948, !11, i64 2952, !11, i64 2956, !11, i64 2960, !11, i64 2964, !11, i64 2968, !11, i64 2972, !5, i64 2976, !11, i64 4000, !11, i64 4004, !11, i64 4008, !11, i64 4012, !11, i64 4016, !11, i64 4020, !11, i64 4024, !11, i64 4028, !11, i64 4032, !11, i64 4036, !11, i64 4040, !11, i64 4044, !11, i64 4048, !11, i64 4052, !11, i64 4056, !11, i64 4060, !11, i64 4064, !11, i64 4068, !11, i64 4072, !11, i64 4076, !4, i64 4080, !11, i64 4088, !11, i64 4092, !11, i64 4096, !11, i64 4100, !11, i64 4104, !11, i64 4108, !11, i64 4112, !11, i64 4116, !11, i64 4120, !11, i64 4124, !11, i64 4128, !11, i64 4132, !11, i64 4136, !11, i64 4140, !11, i64 4144, !11, i64 4148, !11, i64 4152, !11, i64 4156, !11, i64 4160, !11, i64 4164, !11, i64 4168, !11, i64 4172, !11, i64 4176, !11, i64 4180, !11, i64 4184, !11, i64 4188, !5, i64 4192, !5, i64 4448, !11, i64 4704, !11, i64 4708, !11, i64 4712, !11, i64 4716, !11, i64 4720, !11, i64 4724, !11, i64 4728, !11, i64 4732, !11, i64 4736, !11, i64 4740, !11, i64 4744, !11, i64 4748, !11, i64 4752, !11, i64 4756, !11, i64 4760, !11, i64 4764, !11, i64 4768, !11, i64 4772, !5, i64 4776, !11, i64 5032, !11, i64 5036, !8, i64 5040, !8, i64 5048, !42, i64 5056, !8, i64 5064, !11, i64 5072, !11, i64 5076, !11, i64 5080, !11, i64 5084, !11, i64 5088, !11, i64 5092, !11, i64 5096, !11, i64 5100, !11, i64 5104, !11, i64 5108, !11, i64 5112, !11, i64 5116, !11, i64 5120, !11, i64 5124, !11, i64 5128, !11, i64 5132, !11, i64 5136, !4, i64 5144, !4, i64 5152, !4, i64 5160, !5, i64 5168, !11, i64 5208, !5, i64 5212, !11, i64 5244, !11, i64 5248, !11, i64 5252, !11, i64 5256, !11, i64 5260, !11, i64 5264, !11, i64 5268, !11, i64 5272, !11, i64 5276, !11, i64 5280, !11, i64 5284, !11, i64 5288, !5, i64 5296, !5, i64 5344, !5, i64 5392, !11, i64 5648, !11, i64 5652, !11, i64 5656, !11, i64 5660, !5, i64 5664, !5, i64 5704, !11, i64 5744, !11, i64 5748, !11, i64 5752, !11, i64 5756, !11, i64 5760, !11, i64 5764, !11, i64 5768, !11, i64 5772, !11, i64 5776, !5, i64 5780, !11, i64 5792}
!42 = !{!"p1 omnipotent char", !9, i64 0}
!43 = !{!44, !11, i64 0}
!44 = !{!"pix_pos", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!45 = !{!16, !8, i64 14240}
!46 = !{!44, !11, i64 4}
!47 = !{!16, !18, i64 136}
!48 = !{!44, !11, i64 20}
!49 = !{!42, !42, i64 0}
!50 = !{!44, !11, i64 16}
!51 = !{!5, !5, i64 0}
!52 = !{!16, !18, i64 128}
!53 = !{!41, !11, i64 4168}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 short", !9, i64 0}
!56 = !{!31, !31, i64 0}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = !{!22, !22, i64 0}
!62 = !{!20, !20, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"p2 int", !19, i64 0}
!65 = !{!16, !22, i64 14160}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTS16storable_picture", !9, i64 0}
!70 = !{!71, !36, i64 6440}
!71 = !{!"storable_picture", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !5, i64 24, !5, i64 1608, !5, i64 3192, !5, i64 4776, !11, i64 6360, !11, i64 6364, !11, i64 6368, !11, i64 6372, !11, i64 6376, !11, i64 6380, !11, i64 6384, !11, i64 6388, !11, i64 6392, !11, i64 6396, !11, i64 6400, !11, i64 6404, !11, i64 6408, !11, i64 6412, !11, i64 6416, !11, i64 6420, !11, i64 6424, !11, i64 6428, !11, i64 6432, !36, i64 6440, !72, i64 6448, !72, i64 6456, !73, i64 6464, !74, i64 6472, !42, i64 6480, !75, i64 6488, !76, i64 6496, !76, i64 6504, !72, i64 6512, !18, i64 6520, !18, i64 6528, !69, i64 6536, !69, i64 6544, !69, i64 6552, !11, i64 6560, !11, i64 6564, !11, i64 6568, !11, i64 6572, !11, i64 6576, !11, i64 6580, !11, i64 6584}
!72 = !{!"p4 short", !23, i64 0}
!73 = !{!"p5 short", !27, i64 0}
!74 = !{!"p3 short", !21, i64 0}
!75 = !{!"p3 omnipotent char", !21, i64 0}
!76 = !{!"p3 long long", !21, i64 0}
!77 = distinct !{!77, !13}
!78 = !{!16, !11, i64 15260}
!79 = !{!16, !20, i64 14184}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = !{!16, !11, i64 164}
!83 = !{!16, !11, i64 160}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = !{!16, !11, i64 15512}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = !{!100, !100, i64 0}
!100 = !{!"long long", !5, i64 0}
!101 = !{!16, !9, i64 14216}
!102 = !{!41, !11, i64 4016}
!103 = !{!16, !8, i64 14232}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !13}
!106 = !{!107, !11, i64 4}
!107 = !{!"syntaxelement", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !9, i64 32}
!108 = !{!107, !11, i64 24}
!109 = !{!107, !11, i64 0}
!110 = !{!16, !11, i64 20}
!111 = !{!112, !113, i64 24}
!112 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !113, i64 24, !9, i64 32, !9, i64 40, !11, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !11, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !9, i64 112, !5, i64 120}
!113 = !{!"p1 _ZTS13datapartition", !9, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!107, !11, i64 12}
!116 = !{!41, !11, i64 4008}
!117 = distinct !{!117, !13}
!118 = !{!16, !11, i64 44}
!119 = !{!16, !11, i64 15540}
!120 = !{!121, !11, i64 428}
!121 = !{!"macroblock", !11, i64 0, !11, i64 4, !11, i64 8, !5, i64 12, !11, i64 20, !5, i64 24, !24, i64 56, !24, i64 64, !11, i64 72, !5, i64 76, !5, i64 332, !5, i64 348, !11, i64 364, !100, i64 368, !5, i64 376, !5, i64 392, !100, i64 408, !11, i64 416, !11, i64 420, !11, i64 424, !11, i64 428, !11, i64 432, !11, i64 436, !11, i64 440, !11, i64 444, !11, i64 448, !11, i64 452, !11, i64 456, !11, i64 460, !11, i64 464, !11, i64 468, !11, i64 472, !11, i64 476, !31, i64 480, !4, i64 488, !11, i64 496, !11, i64 500, !11, i64 504, !11, i64 508, !11, i64 512, !11, i64 516, !11, i64 520, !11, i64 524, !11, i64 528}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = !{!121, !11, i64 472}
!125 = !{!41, !11, i64 4180}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !13}
!131 = !{!16, !11, i64 15520}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
!137 = distinct !{!137, !13}
