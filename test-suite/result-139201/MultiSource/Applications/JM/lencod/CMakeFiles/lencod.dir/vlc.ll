; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/vlc.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/vlc.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, ptr, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.datapartition = type { ptr, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.macroblock = type { i32, i32, i32, [2 x i32], i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.StatParameters = type { i32, i32, float, float, i64, i64, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32, ptr, ptr, i64, i64, i64, float, float, float, [5 x [15 x i64]], [5 x [15 x i64]], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], i32, i32, ptr, i32, i32 }

@img = external global ptr, align 8
@__const.levrun_linfo_c2x2.NTAB = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 1, i32 5], [2 x i32] [i32 3, i32 0]], align 4
@__const.levrun_linfo_c2x2.LEVRUN = private unnamed_addr constant [4 x i32] [i32 2, i32 1, i32 0, i32 0], align 4
@__const.levrun_linfo_inter.LEVRUN = private unnamed_addr constant [16 x i8] c"\04\02\02\01\01\01\01\01\01\01\00\00\00\00\00\00", align 1
@__const.levrun_linfo_inter.NTAB = private unnamed_addr constant <{ [10 x i8], [10 x i8], <{ i8, [9 x i8] }>, <{ i8, [9 x i8] }> }> <{ [10 x i8] c"\01\03\05\09\0B\0D\15\17\19\1B", [10 x i8] c"\07\11\13\00\00\00\00\00\00\00", <{ i8, [9 x i8] }> <{ i8 15, [9 x i8] zeroinitializer }>, <{ i8, [9 x i8] }> <{ i8 29, [9 x i8] zeroinitializer }> }>, align 1
@writeSyntaxElement_NumCoeffTrailingOnes.lentab = internal constant [3 x [4 x [17 x i32]]] [[4 x [17 x i32]] [[17 x i32] [i32 1, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 2, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16]], [4 x [17 x i32]] [[17 x i32] [i32 2, i32 6, i32 6, i32 7, i32 8, i32 8, i32 9, i32 11, i32 11, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 14, i32 14], [17 x i32] [i32 0, i32 2, i32 5, i32 6, i32 6, i32 7, i32 8, i32 9, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 14], [17 x i32] [i32 0, i32 0, i32 3, i32 6, i32 6, i32 7, i32 8, i32 9, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 13, i32 14, i32 14], [17 x i32] [i32 0, i32 0, i32 0, i32 4, i32 4, i32 5, i32 6, i32 6, i32 7, i32 9, i32 11, i32 11, i32 12, i32 13, i32 13, i32 13, i32 14]], [4 x [17 x i32]] [[17 x i32] [i32 4, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10], [17 x i32] [i32 0, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10], [17 x i32] [i32 0, i32 0, i32 4, i32 5, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 10], [17 x i32] [i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 6, i32 7, i32 8, i32 8, i32 9, i32 10, i32 10, i32 10]]], align 4
@writeSyntaxElement_NumCoeffTrailingOnes.codtab = internal constant [3 x [4 x [17 x i32]]] [[4 x [17 x i32]] [[17 x i32] [i32 1, i32 5, i32 7, i32 7, i32 7, i32 7, i32 15, i32 11, i32 8, i32 15, i32 11, i32 15, i32 11, i32 15, i32 11, i32 7, i32 4], [17 x i32] [i32 0, i32 1, i32 4, i32 6, i32 6, i32 6, i32 6, i32 14, i32 10, i32 14, i32 10, i32 14, i32 10, i32 1, i32 14, i32 10, i32 6], [17 x i32] [i32 0, i32 0, i32 1, i32 5, i32 5, i32 5, i32 5, i32 5, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 5], [17 x i32] [i32 0, i32 0, i32 0, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 12, i32 12, i32 8, i32 12, i32 8, i32 12, i32 8]], [4 x [17 x i32]] [[17 x i32] [i32 3, i32 11, i32 7, i32 7, i32 7, i32 4, i32 7, i32 15, i32 11, i32 15, i32 11, i32 8, i32 15, i32 11, i32 7, i32 9, i32 7], [17 x i32] [i32 0, i32 2, i32 7, i32 10, i32 6, i32 6, i32 6, i32 6, i32 14, i32 10, i32 14, i32 10, i32 14, i32 10, i32 11, i32 8, i32 6], [17 x i32] [i32 0, i32 0, i32 3, i32 9, i32 5, i32 5, i32 5, i32 5, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 6, i32 10, i32 5], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 4, i32 6, i32 8, i32 4, i32 4, i32 4, i32 12, i32 8, i32 12, i32 12, i32 8, i32 1, i32 4]], [4 x [17 x i32]] [[17 x i32] [i32 15, i32 15, i32 11, i32 8, i32 15, i32 11, i32 9, i32 8, i32 15, i32 11, i32 15, i32 11, i32 8, i32 13, i32 9, i32 5, i32 1], [17 x i32] [i32 0, i32 14, i32 15, i32 12, i32 10, i32 8, i32 14, i32 10, i32 14, i32 14, i32 10, i32 14, i32 10, i32 7, i32 12, i32 8, i32 4], [17 x i32] [i32 0, i32 0, i32 13, i32 14, i32 11, i32 9, i32 13, i32 9, i32 13, i32 10, i32 13, i32 9, i32 13, i32 9, i32 11, i32 7, i32 3], [17 x i32] [i32 0, i32 0, i32 0, i32 12, i32 11, i32 10, i32 9, i32 8, i32 13, i32 12, i32 12, i32 12, i32 8, i32 12, i32 10, i32 6, i32 2]]], align 4
@.str = private unnamed_addr constant [59 x i8] c"ERROR: (numcoeff,trailingones) not valid: vlc=%d (%d, %d)\0A\00", align 1
@writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab = internal constant <{ [4 x <{ i32, i32, i32, i32, i32, [12 x i32] }>], [4 x <{ [9 x i32], [8 x i32] }>], [4 x [17 x i32]] }> <{ [4 x <{ i32, i32, i32, i32, i32, [12 x i32] }>] [<{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 2, i32 6, i32 6, i32 6, i32 6, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 1, i32 6, i32 7, i32 8, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 0, i32 3, i32 7, i32 8, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 0, i32 0, i32 6, i32 7, [12 x i32] zeroinitializer }>], [4 x <{ [9 x i32], [8 x i32] }>] [<{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 1, i32 7, i32 7, i32 9, i32 9, i32 10, i32 11, i32 12, i32 13], [8 x i32] zeroinitializer }>, <{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 0, i32 2, i32 7, i32 7, i32 9, i32 10, i32 11, i32 12, i32 12], [8 x i32] zeroinitializer }>, <{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 0, i32 0, i32 3, i32 7, i32 7, i32 9, i32 10, i32 11, i32 12], [8 x i32] zeroinitializer }>, <{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 7, i32 10, i32 11], [8 x i32] zeroinitializer }>], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 2, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16]] }>, align 4
@writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab = internal constant <{ <{ <{ i32, i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }> }>, [4 x <{ [9 x i32], [8 x i32] }>], [4 x [17 x i32]] }> <{ <{ <{ i32, i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [13 x i32] }> }> <{ <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 1, i32 7, i32 4, i32 3, i32 2, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 1, i32 6, i32 3, i32 3, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 0, i32 1, i32 2, i32 2, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [13 x i32] }> <{ i32 0, i32 0, i32 0, i32 5, [13 x i32] zeroinitializer }> }>, [4 x <{ [9 x i32], [8 x i32] }>] [<{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 1, i32 15, i32 14, i32 7, i32 6, i32 7, i32 7, i32 7, i32 7], [8 x i32] zeroinitializer }>, <{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 0, i32 1, i32 13, i32 12, i32 5, i32 6, i32 6, i32 6, i32 5], [8 x i32] zeroinitializer }>, <{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 0, i32 0, i32 1, i32 11, i32 10, i32 4, i32 5, i32 5, i32 4], [8 x i32] zeroinitializer }>, <{ [9 x i32], [8 x i32] }> <{ [9 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 9, i32 8, i32 4, i32 4], [8 x i32] zeroinitializer }>], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 5, i32 7, i32 7, i32 7, i32 7, i32 15, i32 11, i32 8, i32 15, i32 11, i32 15, i32 11, i32 15, i32 11, i32 7, i32 4], [17 x i32] [i32 0, i32 1, i32 4, i32 6, i32 6, i32 6, i32 6, i32 14, i32 10, i32 14, i32 10, i32 14, i32 10, i32 1, i32 14, i32 10, i32 6], [17 x i32] [i32 0, i32 0, i32 1, i32 5, i32 5, i32 5, i32 5, i32 5, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 5], [17 x i32] [i32 0, i32 0, i32 0, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 12, i32 12, i32 8, i32 12, i32 8, i32 12, i32 8]] }>, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"ERROR: (numcoeff,trailingones) not valid: (%d, %d)\0A\00", align 1
@writeSyntaxElement_TotalZeros.lentab = internal constant <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }> }> <{ [16 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9], [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 0], [16 x i32] [i32 4, i32 3, i32 3, i32 3, i32 4, i32 4, i32 3, i32 3, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 0, i32 0], [16 x i32] [i32 5, i32 3, i32 4, i32 4, i32 3, i32 3, i32 3, i32 4, i32 3, i32 4, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 2, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 4, i32 5, i32 3, i32 2, i32 2, i32 3, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 6, i32 6, i32 4, i32 2, i32 2, i32 3, i32 2, i32 5], [8 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 5, i32 5, i32 3, i32 2, i32 2, i32 2, i32 4, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 4, i32 4, i32 3, i32 3, i32 1, i32 3, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 4, i32 4, i32 2, i32 1, i32 3, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 3, i32 3, i32 1, i32 2, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 2, i32 2, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 1, [14 x i32] zeroinitializer }> }>, align 4
@writeSyntaxElement_TotalZeros.codtab = internal constant <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }>, <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }> }> <{ [16 x i32] [i32 1, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1], [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 5, i32 4, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1, i32 0, i32 0], [16 x i32] [i32 5, i32 7, i32 6, i32 5, i32 4, i32 3, i32 4, i32 3, i32 2, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 7, i32 5, i32 4, i32 6, i32 5, i32 4, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 4, i32 3, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 5, i32 4, i32 3, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 2, i32 2, i32 1], [8 x i32] zeroinitializer }>, <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1], [8 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 0, i32 1, i32 1, i32 2, i32 1, i32 3, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 0, i32 1, i32 1, i32 1, i32 1, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 1, i32 1, i32 1, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 0, i32 1, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 0, i32 1, [14 x i32] zeroinitializer }> }>, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"ERROR: (TotalZeros) not valid: (%d)\0A\00", align 1
@writeSyntaxElement_TotalZerosChromaDC.lentab = internal constant <{ <{ <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, [12 x [16 x i32]] }>, <{ <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, [8 x [16 x i32]] }>, <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }> }> }> <{ <{ <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, [12 x [16 x i32]] }> <{ <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 1, i32 2, i32 3, i32 3, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 1, i32 2, i32 2, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 1, [14 x i32] zeroinitializer }>, [12 x [16 x i32]] zeroinitializer }>, <{ <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, [8 x [16 x i32]] }> <{ <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5], [8 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 3, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 3, i32 3, i32 2, i32 2, i32 3, i32 3, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 3, i32 2, i32 2, i32 2, i32 3, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 2, i32 2, i32 2, i32 2, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 2, i32 2, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 1, [14 x i32] zeroinitializer }>, [8 x [16 x i32]] zeroinitializer }>, <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }> }> <{ [16 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9], [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 0], [16 x i32] [i32 4, i32 3, i32 3, i32 3, i32 4, i32 4, i32 3, i32 3, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 0, i32 0], [16 x i32] [i32 5, i32 3, i32 4, i32 4, i32 3, i32 3, i32 3, i32 4, i32 3, i32 4, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 2, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 4, i32 5, i32 3, i32 2, i32 2, i32 3, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 6, i32 6, i32 4, i32 2, i32 2, i32 3, i32 2, i32 5], [8 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 5, i32 5, i32 3, i32 2, i32 2, i32 2, i32 4, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 4, i32 4, i32 3, i32 3, i32 1, i32 3, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 4, i32 4, i32 2, i32 1, i32 3, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 3, i32 3, i32 1, i32 2, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 2, i32 2, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 1, [14 x i32] zeroinitializer }> }> }>, align 4
@writeSyntaxElement_TotalZerosChromaDC.codtab = internal constant <{ <{ <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, <{ i32, [15 x i32] }>, [12 x [16 x i32]] }>, <{ <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, [8 x [16 x i32]] }>, <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }>, <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }> }> }> <{ <{ <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, <{ i32, [15 x i32] }>, [12 x [16 x i32]] }> <{ <{ i32, i32, i32, [13 x i32] }> <{ i32 1, i32 1, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 1, [14 x i32] zeroinitializer }>, <{ i32, [15 x i32] }> <{ i32 1, [15 x i32] zeroinitializer }>, [12 x [16 x i32]] zeroinitializer }>, <{ <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }>, [8 x [16 x i32]] }> <{ <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 1, i32 2, i32 3, i32 2, i32 3, i32 1, i32 1, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 0, i32 1, i32 1, i32 4, i32 5, i32 6, i32 7, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 0, i32 1, i32 1, i32 2, i32 6, i32 7, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 6, i32 0, i32 1, i32 2, i32 7, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 1, i32 2, i32 3, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 0, i32 1, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 0, i32 1, [14 x i32] zeroinitializer }>, [8 x [16 x i32]] zeroinitializer }>, <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }>, <{ [8 x i32], [8 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, [14 x i32] }> }> <{ [16 x i32] [i32 1, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1], [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 5, i32 4, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1, i32 0, i32 0], [16 x i32] [i32 5, i32 7, i32 6, i32 5, i32 4, i32 3, i32 4, i32 3, i32 2, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 7, i32 5, i32 4, i32 6, i32 5, i32 4, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 4, i32 3, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 5, i32 4, i32 3, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 2, i32 2, i32 1], [8 x i32] zeroinitializer }>, <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1], [8 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, [9 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 0, i32 1, i32 1, i32 2, i32 1, i32 3, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 0, i32 1, i32 1, i32 1, i32 1, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 0, i32 1, i32 1, i32 1, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 0, i32 1, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 0, i32 1, [14 x i32] zeroinitializer }> }> }>, align 4
@writeSyntaxElement_Run.lentab = internal constant <{ <{ i32, i32, [14 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, [16 x i32], [8 x [16 x i32]] }> <{ <{ i32, i32, [14 x i32] }> <{ i32 1, i32 1, [14 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 1, i32 2, i32 2, [13 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 2, i32 2, i32 2, i32 2, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 2, i32 2, i32 2, i32 3, i32 3, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, [10 x i32] }> <{ i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, [10 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, [9 x i32] zeroinitializer }>, [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 0], [8 x [16 x i32]] zeroinitializer }>, align 4
@writeSyntaxElement_Run.codtab = internal constant <{ <{ i32, [15 x i32] }>, <{ i32, i32, [14 x i32] }>, <{ i32, i32, i32, [13 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, i32, [11 x i32] }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, [16 x i32], [8 x [16 x i32]] }> <{ <{ i32, [15 x i32] }> <{ i32 1, [15 x i32] zeroinitializer }>, <{ i32, i32, [14 x i32] }> <{ i32 1, i32 1, [14 x i32] zeroinitializer }>, <{ i32, i32, i32, [13 x i32] }> <{ i32 3, i32 2, i32 1, [13 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 3, i32 2, i32 1, i32 1, [12 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, [11 x i32] }> <{ i32 3, i32 2, i32 3, i32 2, i32 1, [11 x i32] zeroinitializer }>, <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 3, i32 0, i32 1, i32 3, i32 2, i32 5, i32 4, [9 x i32] zeroinitializer }>, [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [8 x [16 x i32]] zeroinitializer }>, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"ERROR: (run) not valid: (%d)\0A\00", align 1
@stats = external global ptr, align 8
@color_formats = common dso_local global i32 0, align 4
@top_pic = common dso_local global ptr null, align 8
@bottom_pic = common dso_local global ptr null, align 8
@frame_pic = common dso_local global ptr null, align 8
@frame_pic_1 = common dso_local global ptr null, align 8
@frame_pic_2 = common dso_local global ptr null, align 8
@frame_pic_3 = common dso_local global ptr null, align 8
@frame_pic_si = common dso_local global ptr null, align 8
@Bit_Buffer = common dso_local global ptr null, align 8
@imgY_org = common dso_local global ptr null, align 8
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
@NCBP = internal constant <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }>, [48 x [2 x i8]] }> <{ <{ [16 x [2 x i8]], [32 x [2 x i8]] }> <{ [16 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\0A\01", [2 x i8] c"\0B\02", [2 x i8] c"\06\05", [2 x i8] c"\0C\03", [2 x i8] c"\07\06", [2 x i8] c"\0E\0E", [2 x i8] c"\02\0A", [2 x i8] c"\0D\04", [2 x i8] c"\0F\0F", [2 x i8] c"\08\07", [2 x i8] c"\03\0B", [2 x i8] c"\09\08", [2 x i8] c"\04\0C", [2 x i8] c"\05\0D", [2 x i8] c"\00\09"], [32 x [2 x i8]] zeroinitializer }>, [48 x [2 x i8]] [[2 x i8] c"\03\00", [2 x i8] c"\1D\02", [2 x i8] c"\1E\03", [2 x i8] c"\11\07", [2 x i8] c"\1F\04", [2 x i8] c"\12\08", [2 x i8] c"%\11", [2 x i8] c"\08\0D", [2 x i8] c" \05", [2 x i8] c"&\12", [2 x i8] c"\13\09", [2 x i8] c"\09\0E", [2 x i8] c"\14\0A", [2 x i8] c"\0A\0F", [2 x i8] c"\0B\10", [2 x i8] c"\02\0B", [2 x i8] c"\10\01", [2 x i8] c"! ", [2 x i8] c"\22!", [2 x i8] c"\15$", [2 x i8] c"#\22", [2 x i8] c"\16%", [2 x i8] c"',", [2 x i8] c"\04(", [2 x i8] c"$#", [2 x i8] c"(-", [2 x i8] c"\17&", [2 x i8] c"\05)", [2 x i8] c"\18'", [2 x i8] c"\06*", [2 x i8] c"\07+", [2 x i8] c"\01\13", [2 x i8] c")\06", [2 x i8] c"*\18", [2 x i8] c"+\19", [2 x i8] c"\19\14", [2 x i8] c",\1A", [2 x i8] c"\1A\15", [2 x i8] c"..", [2 x i8] c"\0C\1C", [2 x i8] c"-\1B", [2 x i8] c"//", [2 x i8] c"\1B\16", [2 x i8] c"\0D\1D", [2 x i8] c"\1C\17", [2 x i8] c"\0E\1E", [2 x i8] c"\0F\1F", [2 x i8] c"\00\0C"] }>, align 1

; Function Attrs: nounwind
define dso_local signext i32 @ue_v(ptr noundef %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca %struct.syntaxelement, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !8
  store ptr %2, ptr %6, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 40, ptr %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #6
  store ptr %7, ptr %8, align 8, !tbaa !11
  %9 = load i32, ptr %5, align 4, !tbaa !8
  %10 = load ptr, ptr %8, align 8, !tbaa !11
  %11 = getelementptr inbounds nuw %struct.syntaxelement, ptr %10, i32 0, i32 1
  store i32 %9, ptr %11, align 4, !tbaa !13
  %12 = load ptr, ptr %8, align 8, !tbaa !11
  %13 = getelementptr inbounds nuw %struct.syntaxelement, ptr %12, i32 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !15
  %14 = load ptr, ptr %8, align 8, !tbaa !11
  %15 = getelementptr inbounds nuw %struct.syntaxelement, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !13
  %17 = load ptr, ptr %8, align 8, !tbaa !11
  %18 = getelementptr inbounds nuw %struct.syntaxelement, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !15
  %20 = load ptr, ptr %8, align 8, !tbaa !11
  %21 = getelementptr inbounds nuw %struct.syntaxelement, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %8, align 8, !tbaa !11
  %23 = getelementptr inbounds nuw %struct.syntaxelement, ptr %22, i32 0, i32 4
  call void @ue_linfo(i32 noundef signext %16, i32 noundef signext %19, ptr noundef %21, ptr noundef %23)
  %24 = load ptr, ptr %8, align 8, !tbaa !11
  %25 = call signext i32 @symbol2uvlc(ptr noundef %24)
  %26 = load ptr, ptr %8, align 8, !tbaa !11
  %27 = load ptr, ptr %6, align 8, !tbaa !10
  call void @writeUVLC2buffer(ptr noundef %26, ptr noundef %27)
  %28 = load ptr, ptr %8, align 8, !tbaa !11
  %29 = getelementptr inbounds nuw %struct.syntaxelement, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr %7) #6
  ret i32 %30
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local void @ue_linfo(i32 noundef signext %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !8
  store i32 %1, ptr %6, align 4, !tbaa !8
  store ptr %2, ptr %7, align 8, !tbaa !17
  store ptr %3, ptr %8, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6
  %11 = load i32, ptr %5, align 4, !tbaa !8
  %12 = add nsw i32 %11, 1
  %13 = sdiv i32 %12, 2
  store i32 %13, ptr %10, align 4, !tbaa !8
  store i32 0, ptr %9, align 4, !tbaa !8
  br label %14

14:                                               ; preds = %25, %4
  %15 = load i32, ptr %9, align 4, !tbaa !8
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, ptr %10, align 4, !tbaa !8
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i1 [ false, %14 ], [ %19, %17 ]
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = load i32, ptr %10, align 4, !tbaa !8
  %24 = sdiv i32 %23, 2
  store i32 %24, ptr %10, align 4, !tbaa !8
  br label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %9, align 4, !tbaa !8
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %9, align 4, !tbaa !8
  br label %14, !llvm.loop !19

28:                                               ; preds = %20
  %29 = load i32, ptr %9, align 4, !tbaa !8
  %30 = mul nsw i32 2, %29
  %31 = add nsw i32 %30, 1
  %32 = load ptr, ptr %7, align 8, !tbaa !17
  store i32 %31, ptr %32, align 4, !tbaa !8
  %33 = load i32, ptr %5, align 4, !tbaa !8
  %34 = add nsw i32 %33, 1
  %35 = load i32, ptr %9, align 4, !tbaa !8
  %36 = shl i32 1, %35
  %37 = sub nsw i32 %34, %36
  %38 = load ptr, ptr %8, align 8, !tbaa !17
  store i32 %37, ptr %38, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @symbol2uvlc(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6
  %4 = load ptr, ptr %2, align 8, !tbaa !11
  %5 = getelementptr inbounds nuw %struct.syntaxelement, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !16
  %7 = sdiv i32 %6, 2
  store i32 %7, ptr %3, align 4, !tbaa !8
  %8 = load i32, ptr %3, align 4, !tbaa !8
  %9 = shl i32 1, %8
  %10 = load ptr, ptr %2, align 8, !tbaa !11
  %11 = getelementptr inbounds nuw %struct.syntaxelement, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !21
  %13 = load i32, ptr %3, align 4, !tbaa !8
  %14 = shl i32 1, %13
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %12, %15
  %17 = or i32 %9, %16
  %18 = load ptr, ptr %2, align 8, !tbaa !11
  %19 = getelementptr inbounds nuw %struct.syntaxelement, ptr %18, i32 0, i32 5
  store i32 %17, ptr %19, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6
  ret i32 0
}

; Function Attrs: nounwind
define dso_local void @writeUVLC2buffer(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6
  %7 = load ptr, ptr %3, align 8, !tbaa !11
  %8 = getelementptr inbounds nuw %struct.syntaxelement, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !16
  %10 = sub nsw i32 %9, 1
  %11 = shl i32 1, %10
  store i32 %11, ptr %6, align 4, !tbaa !8
  store i32 0, ptr %5, align 4, !tbaa !8
  br label %12

12:                                               ; preds = %67, %2
  %13 = load i32, ptr %5, align 4, !tbaa !8
  %14 = load ptr, ptr %3, align 8, !tbaa !11
  %15 = getelementptr inbounds nuw %struct.syntaxelement, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !16
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8, !tbaa !10
  %20 = getelementptr inbounds nuw %struct.Bitstream, ptr %19, i32 0, i32 2
  %21 = load i8, ptr %20, align 8, !tbaa !23
  %22 = zext i8 %21 to i32
  %23 = shl i32 %22, 1
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %20, align 8, !tbaa !23
  %25 = load ptr, ptr %3, align 8, !tbaa !11
  %26 = getelementptr inbounds nuw %struct.syntaxelement, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !22
  %28 = load i32, ptr %6, align 4, !tbaa !8
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %18
  %32 = load ptr, ptr %4, align 8, !tbaa !10
  %33 = getelementptr inbounds nuw %struct.Bitstream, ptr %32, i32 0, i32 2
  %34 = load i8, ptr %33, align 8, !tbaa !23
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, 1
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %33, align 8, !tbaa !23
  br label %38

38:                                               ; preds = %31, %18
  %39 = load ptr, ptr %4, align 8, !tbaa !10
  %40 = getelementptr inbounds nuw %struct.Bitstream, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !25
  %42 = add nsw i32 %41, -1
  store i32 %42, ptr %40, align 4, !tbaa !25
  %43 = load i32, ptr %6, align 4, !tbaa !8
  %44 = lshr i32 %43, 1
  store i32 %44, ptr %6, align 4, !tbaa !8
  %45 = load ptr, ptr %4, align 8, !tbaa !10
  %46 = getelementptr inbounds nuw %struct.Bitstream, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !25
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %38
  %50 = load ptr, ptr %4, align 8, !tbaa !10
  %51 = getelementptr inbounds nuw %struct.Bitstream, ptr %50, i32 0, i32 1
  store i32 8, ptr %51, align 4, !tbaa !25
  %52 = load ptr, ptr %4, align 8, !tbaa !10
  %53 = getelementptr inbounds nuw %struct.Bitstream, ptr %52, i32 0, i32 2
  %54 = load i8, ptr %53, align 8, !tbaa !23
  %55 = load ptr, ptr %4, align 8, !tbaa !10
  %56 = getelementptr inbounds nuw %struct.Bitstream, ptr %55, i32 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !26
  %58 = load ptr, ptr %4, align 8, !tbaa !10
  %59 = getelementptr inbounds nuw %struct.Bitstream, ptr %58, i32 0, i32 0
  %60 = load i32, ptr %59, align 8, !tbaa !27
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %59, align 8, !tbaa !27
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, ptr %57, i64 %62
  store i8 %54, ptr %63, align 1, !tbaa !28
  %64 = load ptr, ptr %4, align 8, !tbaa !10
  %65 = getelementptr inbounds nuw %struct.Bitstream, ptr %64, i32 0, i32 2
  store i8 0, ptr %65, align 8, !tbaa !23
  br label %66

66:                                               ; preds = %49, %38
  br label %67

67:                                               ; preds = %66
  %68 = load i32, ptr %5, align 4, !tbaa !8
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %5, align 4, !tbaa !8
  br label %12, !llvm.loop !29

70:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local signext i32 @se_v(ptr noundef %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca %struct.syntaxelement, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !8
  store ptr %2, ptr %6, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 40, ptr %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #6
  store ptr %7, ptr %8, align 8, !tbaa !11
  %9 = load i32, ptr %5, align 4, !tbaa !8
  %10 = load ptr, ptr %8, align 8, !tbaa !11
  %11 = getelementptr inbounds nuw %struct.syntaxelement, ptr %10, i32 0, i32 1
  store i32 %9, ptr %11, align 4, !tbaa !13
  %12 = load ptr, ptr %8, align 8, !tbaa !11
  %13 = getelementptr inbounds nuw %struct.syntaxelement, ptr %12, i32 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !15
  %14 = load ptr, ptr %8, align 8, !tbaa !11
  %15 = getelementptr inbounds nuw %struct.syntaxelement, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !13
  %17 = load ptr, ptr %8, align 8, !tbaa !11
  %18 = getelementptr inbounds nuw %struct.syntaxelement, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !15
  %20 = load ptr, ptr %8, align 8, !tbaa !11
  %21 = getelementptr inbounds nuw %struct.syntaxelement, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %8, align 8, !tbaa !11
  %23 = getelementptr inbounds nuw %struct.syntaxelement, ptr %22, i32 0, i32 4
  call void @se_linfo(i32 noundef signext %16, i32 noundef signext %19, ptr noundef %21, ptr noundef %23)
  %24 = load ptr, ptr %8, align 8, !tbaa !11
  %25 = call signext i32 @symbol2uvlc(ptr noundef %24)
  %26 = load ptr, ptr %8, align 8, !tbaa !11
  %27 = load ptr, ptr %6, align 8, !tbaa !10
  call void @writeUVLC2buffer(ptr noundef %26, ptr noundef %27)
  %28 = load ptr, ptr %8, align 8, !tbaa !11
  %29 = getelementptr inbounds nuw %struct.syntaxelement, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr %7) #6
  ret i32 %30
}

; Function Attrs: nounwind
define dso_local void @se_linfo(i32 noundef signext %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !8
  store i32 %1, ptr %6, align 4, !tbaa !8
  store ptr %2, ptr %7, align 8, !tbaa !17
  store ptr %3, ptr %8, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6
  store i32 0, ptr %11, align 4, !tbaa !8
  %13 = load i32, ptr %5, align 4, !tbaa !8
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 1, ptr %11, align 4, !tbaa !8
  br label %16

16:                                               ; preds = %15, %4
  %17 = load i32, ptr %5, align 4, !tbaa !8
  %18 = call signext i32 @iabs(i32 noundef signext %17)
  %19 = shl i32 %18, 1
  store i32 %19, ptr %10, align 4, !tbaa !8
  %20 = load i32, ptr %10, align 4, !tbaa !8
  %21 = sdiv i32 %20, 2
  store i32 %21, ptr %12, align 4, !tbaa !8
  store i32 0, ptr %9, align 4, !tbaa !8
  br label %22

22:                                               ; preds = %33, %16
  %23 = load i32, ptr %9, align 4, !tbaa !8
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, ptr %12, align 4, !tbaa !8
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = load i32, ptr %12, align 4, !tbaa !8
  %32 = sdiv i32 %31, 2
  store i32 %32, ptr %12, align 4, !tbaa !8
  br label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %9, align 4, !tbaa !8
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %9, align 4, !tbaa !8
  br label %22, !llvm.loop !30

36:                                               ; preds = %28
  %37 = load i32, ptr %9, align 4, !tbaa !8
  %38 = mul nsw i32 %37, 2
  %39 = add nsw i32 %38, 1
  %40 = load ptr, ptr %7, align 8, !tbaa !17
  store i32 %39, ptr %40, align 4, !tbaa !8
  %41 = load i32, ptr %10, align 4, !tbaa !8
  %42 = load i32, ptr %9, align 4, !tbaa !8
  %43 = shl i32 1, %42
  %44 = sub nsw i32 %41, %43
  %45 = load i32, ptr %11, align 4, !tbaa !8
  %46 = add nsw i32 %44, %45
  %47 = load ptr, ptr %8, align 8, !tbaa !17
  store i32 %46, ptr %47, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @u_1(ptr noundef %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca %struct.syntaxelement, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !8
  store ptr %2, ptr %6, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 40, ptr %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #6
  store ptr %7, ptr %8, align 8, !tbaa !11
  %9 = load i32, ptr %5, align 4, !tbaa !8
  %10 = load ptr, ptr %8, align 8, !tbaa !11
  %11 = getelementptr inbounds nuw %struct.syntaxelement, ptr %10, i32 0, i32 5
  store i32 %9, ptr %11, align 4, !tbaa !22
  %12 = load ptr, ptr %8, align 8, !tbaa !11
  %13 = getelementptr inbounds nuw %struct.syntaxelement, ptr %12, i32 0, i32 3
  store i32 1, ptr %13, align 4, !tbaa !16
  %14 = load i32, ptr %5, align 4, !tbaa !8
  %15 = load ptr, ptr %8, align 8, !tbaa !11
  %16 = getelementptr inbounds nuw %struct.syntaxelement, ptr %15, i32 0, i32 1
  store i32 %14, ptr %16, align 4, !tbaa !13
  %17 = load ptr, ptr %8, align 8, !tbaa !11
  %18 = load ptr, ptr %6, align 8, !tbaa !10
  call void @writeUVLC2buffer(ptr noundef %17, ptr noundef %18)
  %19 = load ptr, ptr %8, align 8, !tbaa !11
  %20 = getelementptr inbounds nuw %struct.syntaxelement, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr %7) #6
  ret i32 %21
}

; Function Attrs: nounwind
define dso_local signext i32 @u_v(i32 noundef signext %0, ptr noundef %1, i32 noundef signext %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca %struct.syntaxelement, align 8
  %10 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4, !tbaa !8
  store ptr %1, ptr %6, align 8, !tbaa !3
  store i32 %2, ptr %7, align 4, !tbaa !8
  store ptr %3, ptr %8, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 40, ptr %9) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #6
  store ptr %9, ptr %10, align 8, !tbaa !11
  %11 = load i32, ptr %7, align 4, !tbaa !8
  %12 = load ptr, ptr %10, align 8, !tbaa !11
  %13 = getelementptr inbounds nuw %struct.syntaxelement, ptr %12, i32 0, i32 5
  store i32 %11, ptr %13, align 4, !tbaa !22
  %14 = load i32, ptr %5, align 4, !tbaa !8
  %15 = load ptr, ptr %10, align 8, !tbaa !11
  %16 = getelementptr inbounds nuw %struct.syntaxelement, ptr %15, i32 0, i32 3
  store i32 %14, ptr %16, align 4, !tbaa !16
  %17 = load i32, ptr %7, align 4, !tbaa !8
  %18 = load ptr, ptr %10, align 8, !tbaa !11
  %19 = getelementptr inbounds nuw %struct.syntaxelement, ptr %18, i32 0, i32 1
  store i32 %17, ptr %19, align 4, !tbaa !13
  %20 = load ptr, ptr %10, align 8, !tbaa !11
  %21 = load ptr, ptr %8, align 8, !tbaa !10
  call void @writeUVLC2buffer(ptr noundef %20, ptr noundef %21)
  %22 = load ptr, ptr %10, align 8, !tbaa !11
  %23 = getelementptr inbounds nuw %struct.syntaxelement, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr %9) #6
  ret i32 %24
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @iabs(i32 noundef signext %0) #2 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !8
  %3 = load i32, ptr %2, align 4, !tbaa !8
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !tbaa !8
  %7 = sub nsw i32 0, %6
  br label %10

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4, !tbaa !8
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind
define dso_local void @cbp_linfo_intra(i32 noundef signext %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4, !tbaa !8
  store i32 %1, ptr %6, align 4, !tbaa !8
  store ptr %2, ptr %7, align 8, !tbaa !17
  store ptr %3, ptr %8, align 8, !tbaa !17
  %9 = load ptr, ptr @img, align 8, !tbaa !10
  %10 = getelementptr inbounds nuw %struct.ImageParameters, ptr %9, i32 0, i32 160
  %11 = load i32, ptr %10, align 8, !tbaa !31
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x [48 x [2 x i8]]], ptr @NCBP, i64 0, i64 %15
  %17 = load i32, ptr %5, align 4, !tbaa !8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [48 x [2 x i8]], ptr %16, i64 0, i64 %18
  %20 = getelementptr inbounds [2 x i8], ptr %19, i64 0, i64 0
  %21 = load i8, ptr %20, align 1, !tbaa !28
  %22 = zext i8 %21 to i32
  %23 = load i32, ptr %6, align 4, !tbaa !8
  %24 = load ptr, ptr %7, align 8, !tbaa !17
  %25 = load ptr, ptr %8, align 8, !tbaa !17
  call void @ue_linfo(i32 noundef signext %22, i32 noundef signext %23, ptr noundef %24, ptr noundef %25)
  ret void
}

; Function Attrs: nounwind
define dso_local void @cbp_linfo_inter(i32 noundef signext %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4, !tbaa !8
  store i32 %1, ptr %6, align 4, !tbaa !8
  store ptr %2, ptr %7, align 8, !tbaa !17
  store ptr %3, ptr %8, align 8, !tbaa !17
  %9 = load ptr, ptr @img, align 8, !tbaa !10
  %10 = getelementptr inbounds nuw %struct.ImageParameters, ptr %9, i32 0, i32 160
  %11 = load i32, ptr %10, align 8, !tbaa !31
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x [48 x [2 x i8]]], ptr @NCBP, i64 0, i64 %15
  %17 = load i32, ptr %5, align 4, !tbaa !8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [48 x [2 x i8]], ptr %16, i64 0, i64 %18
  %20 = getelementptr inbounds [2 x i8], ptr %19, i64 0, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !28
  %22 = zext i8 %21 to i32
  %23 = load i32, ptr %6, align 4, !tbaa !8
  %24 = load ptr, ptr %7, align 8, !tbaa !17
  %25 = load ptr, ptr %8, align 8, !tbaa !17
  call void @ue_linfo(i32 noundef signext %22, i32 noundef signext %23, ptr noundef %24, ptr noundef %25)
  ret void
}

; Function Attrs: nounwind
define dso_local void @levrun_linfo_c2x2(i32 noundef signext %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [2 x [2 x i32]], align 4
  %10 = alloca [4 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !8
  store i32 %1, ptr %6, align 4, !tbaa !8
  store ptr %2, ptr %7, align 8, !tbaa !17
  store ptr %3, ptr %8, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 16, ptr %9) #6
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 @__const.levrun_linfo_c2x2.NTAB, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %10) #6
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 @__const.levrun_linfo_c2x2.LEVRUN, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #6
  %17 = load i32, ptr %5, align 4, !tbaa !8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load ptr, ptr %7, align 8, !tbaa !17
  store i32 1, ptr %20, align 4, !tbaa !8
  store i32 1, ptr %16, align 4
  br label %84

21:                                               ; preds = %4
  store i32 0, ptr %14, align 4, !tbaa !8
  %22 = load i32, ptr %5, align 4, !tbaa !8
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1, ptr %14, align 4, !tbaa !8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, ptr %5, align 4, !tbaa !8
  %27 = call signext i32 @iabs(i32 noundef signext %26)
  store i32 %27, ptr %11, align 4, !tbaa !8
  %28 = load i32, ptr %11, align 4, !tbaa !8
  %29 = load i32, ptr %6, align 4, !tbaa !8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !8
  %33 = icmp sle i32 %28, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = load i32, ptr %11, align 4, !tbaa !8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x [2 x i32]], ptr %9, i64 0, i64 %37
  %39 = load i32, ptr %6, align 4, !tbaa !8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x i32], ptr %38, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !8
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %13, align 4, !tbaa !8
  br label %55

44:                                               ; preds = %25
  %45 = load i32, ptr %11, align 4, !tbaa !8
  %46 = load i32, ptr %6, align 4, !tbaa !8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !8
  %50 = sub nsw i32 %45, %49
  %51 = mul nsw i32 %50, 8
  %52 = load i32, ptr %6, align 4, !tbaa !8
  %53 = mul nsw i32 %52, 2
  %54 = add nsw i32 %51, %53
  store i32 %54, ptr %13, align 4, !tbaa !8
  br label %55

55:                                               ; preds = %44, %34
  %56 = load i32, ptr %13, align 4, !tbaa !8
  %57 = sdiv i32 %56, 2
  store i32 %57, ptr %15, align 4, !tbaa !8
  store i32 0, ptr %12, align 4, !tbaa !8
  br label %58

58:                                               ; preds = %69, %55
  %59 = load i32, ptr %12, align 4, !tbaa !8
  %60 = icmp slt i32 %59, 16
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, ptr %15, align 4, !tbaa !8
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ false, %58 ], [ %63, %61 ]
  br i1 %65, label %66, label %72

66:                                               ; preds = %64
  %67 = load i32, ptr %15, align 4, !tbaa !8
  %68 = sdiv i32 %67, 2
  store i32 %68, ptr %15, align 4, !tbaa !8
  br label %69

69:                                               ; preds = %66
  %70 = load i32, ptr %12, align 4, !tbaa !8
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %12, align 4, !tbaa !8
  br label %58, !llvm.loop !49

72:                                               ; preds = %64
  %73 = load i32, ptr %12, align 4, !tbaa !8
  %74 = mul nsw i32 2, %73
  %75 = add nsw i32 %74, 1
  %76 = load ptr, ptr %7, align 8, !tbaa !17
  store i32 %75, ptr %76, align 4, !tbaa !8
  %77 = load i32, ptr %13, align 4, !tbaa !8
  %78 = load i32, ptr %12, align 4, !tbaa !8
  %79 = shl i32 1, %78
  %80 = sub nsw i32 %77, %79
  %81 = load i32, ptr %14, align 4, !tbaa !8
  %82 = add nsw i32 %80, %81
  %83 = load ptr, ptr %8, align 8, !tbaa !17
  store i32 %82, ptr %83, align 4, !tbaa !8
  store i32 0, ptr %16, align 4
  br label %84

84:                                               ; preds = %72, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %9) #6
  %85 = load i32, ptr %16, align 4
  switch i32 %85, label %87 [
    i32 0, label %86
    i32 1, label %86
  ]

86:                                               ; preds = %84, %84
  ret void

87:                                               ; preds = %84
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind
define dso_local void @levrun_linfo_inter(i32 noundef signext %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [16 x i8], align 1
  %10 = alloca [4 x [10 x i8]], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !8
  store i32 %1, ptr %6, align 4, !tbaa !8
  store ptr %2, ptr %7, align 8, !tbaa !17
  store ptr %3, ptr %8, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 16, ptr %9) #6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 @__const.levrun_linfo_inter.LEVRUN, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr %10) #6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 @__const.levrun_linfo_inter.NTAB, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #6
  %17 = load i32, ptr %5, align 4, !tbaa !8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load ptr, ptr %7, align 8, !tbaa !17
  store i32 1, ptr %20, align 4, !tbaa !8
  store i32 1, ptr %16, align 4
  br label %88

21:                                               ; preds = %4
  %22 = load i32, ptr %5, align 4, !tbaa !8
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1, ptr %14, align 4, !tbaa !8
  br label %26

25:                                               ; preds = %21
  store i32 0, ptr %14, align 4, !tbaa !8
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, ptr %5, align 4, !tbaa !8
  %28 = call signext i32 @iabs(i32 noundef signext %27)
  store i32 %28, ptr %11, align 4, !tbaa !8
  %29 = load i32, ptr %11, align 4, !tbaa !8
  %30 = load i32, ptr %6, align 4, !tbaa !8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !28
  %34 = zext i8 %33 to i32
  %35 = icmp sle i32 %29, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %26
  %37 = load i32, ptr %11, align 4, !tbaa !8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x [10 x i8]], ptr %10, i64 0, i64 %39
  %41 = load i32, ptr %6, align 4, !tbaa !8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x i8], ptr %40, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !28
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %13, align 4, !tbaa !8
  br label %59

47:                                               ; preds = %26
  %48 = load i32, ptr %11, align 4, !tbaa !8
  %49 = load i32, ptr %6, align 4, !tbaa !8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [16 x i8], ptr %9, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !28
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %48, %53
  %55 = mul nsw i32 %54, 32
  %56 = load i32, ptr %6, align 4, !tbaa !8
  %57 = mul nsw i32 %56, 2
  %58 = add nsw i32 %55, %57
  store i32 %58, ptr %13, align 4, !tbaa !8
  br label %59

59:                                               ; preds = %47, %36
  %60 = load i32, ptr %13, align 4, !tbaa !8
  %61 = sdiv i32 %60, 2
  store i32 %61, ptr %15, align 4, !tbaa !8
  store i32 0, ptr %12, align 4, !tbaa !8
  br label %62

62:                                               ; preds = %73, %59
  %63 = load i32, ptr %12, align 4, !tbaa !8
  %64 = icmp slt i32 %63, 16
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, ptr %15, align 4, !tbaa !8
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i1 [ false, %62 ], [ %67, %65 ]
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = load i32, ptr %15, align 4, !tbaa !8
  %72 = sdiv i32 %71, 2
  store i32 %72, ptr %15, align 4, !tbaa !8
  br label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %12, align 4, !tbaa !8
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %12, align 4, !tbaa !8
  br label %62, !llvm.loop !50

76:                                               ; preds = %68
  %77 = load i32, ptr %12, align 4, !tbaa !8
  %78 = mul nsw i32 2, %77
  %79 = add nsw i32 %78, 1
  %80 = load ptr, ptr %7, align 8, !tbaa !17
  store i32 %79, ptr %80, align 4, !tbaa !8
  %81 = load i32, ptr %13, align 4, !tbaa !8
  %82 = load i32, ptr %12, align 4, !tbaa !8
  %83 = shl i32 1, %82
  %84 = sub nsw i32 %81, %83
  %85 = load i32, ptr %14, align 4, !tbaa !8
  %86 = add nsw i32 %84, %85
  %87 = load ptr, ptr %8, align 8, !tbaa !17
  store i32 %86, ptr %87, align 4, !tbaa !8
  store i32 0, ptr %16, align 4
  br label %88

88:                                               ; preds = %76, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %9) #6
  %89 = load i32, ptr %16, align 4
  switch i32 %89, label %91 [
    i32 0, label %90
    i32 1, label %90
  ]

90:                                               ; preds = %88, %88
  ret void

91:                                               ; preds = %88
  unreachable
}

; Function Attrs: nounwind
define dso_local void @writeSE_UVLC(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !51
  %5 = load ptr, ptr %3, align 8, !tbaa !11
  %6 = getelementptr inbounds nuw %struct.syntaxelement, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !13
  %8 = load ptr, ptr %3, align 8, !tbaa !11
  %9 = getelementptr inbounds nuw %struct.syntaxelement, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !15
  %11 = load ptr, ptr %3, align 8, !tbaa !11
  %12 = getelementptr inbounds nuw %struct.syntaxelement, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %3, align 8, !tbaa !11
  %14 = getelementptr inbounds nuw %struct.syntaxelement, ptr %13, i32 0, i32 4
  call void @ue_linfo(i32 noundef signext %7, i32 noundef signext %10, ptr noundef %12, ptr noundef %14)
  %15 = load ptr, ptr %3, align 8, !tbaa !11
  %16 = call signext i32 @symbol2uvlc(ptr noundef %15)
  %17 = load ptr, ptr %3, align 8, !tbaa !11
  %18 = load ptr, ptr %4, align 8, !tbaa !51
  %19 = getelementptr inbounds nuw %struct.datapartition, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %17, ptr noundef %20)
  %21 = load ptr, ptr %3, align 8, !tbaa !11
  %22 = getelementptr inbounds nuw %struct.syntaxelement, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 8, !tbaa !56
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8, !tbaa !51
  %27 = getelementptr inbounds nuw %struct.datapartition, ptr %26, i32 0, i32 0
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = getelementptr inbounds nuw %struct.Bitstream, ptr %28, i32 0, i32 10
  store i32 1, ptr %29, align 8, !tbaa !57
  br label %30

30:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeSE_SVLC(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !51
  %5 = load ptr, ptr %3, align 8, !tbaa !11
  %6 = getelementptr inbounds nuw %struct.syntaxelement, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !13
  %8 = load ptr, ptr %3, align 8, !tbaa !11
  %9 = getelementptr inbounds nuw %struct.syntaxelement, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !15
  %11 = load ptr, ptr %3, align 8, !tbaa !11
  %12 = getelementptr inbounds nuw %struct.syntaxelement, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %3, align 8, !tbaa !11
  %14 = getelementptr inbounds nuw %struct.syntaxelement, ptr %13, i32 0, i32 4
  call void @se_linfo(i32 noundef signext %7, i32 noundef signext %10, ptr noundef %12, ptr noundef %14)
  %15 = load ptr, ptr %3, align 8, !tbaa !11
  %16 = call signext i32 @symbol2uvlc(ptr noundef %15)
  %17 = load ptr, ptr %3, align 8, !tbaa !11
  %18 = load ptr, ptr %4, align 8, !tbaa !51
  %19 = getelementptr inbounds nuw %struct.datapartition, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %17, ptr noundef %20)
  %21 = load ptr, ptr %3, align 8, !tbaa !11
  %22 = getelementptr inbounds nuw %struct.syntaxelement, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 8, !tbaa !56
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8, !tbaa !51
  %27 = getelementptr inbounds nuw %struct.datapartition, ptr %26, i32 0, i32 0
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = getelementptr inbounds nuw %struct.Bitstream, ptr %28, i32 0, i32 10
  store i32 1, ptr %29, align 8, !tbaa !57
  br label %30

30:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeCBP_VLC(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #6
  %6 = load ptr, ptr @img, align 8, !tbaa !10
  %7 = getelementptr inbounds nuw %struct.ImageParameters, ptr %6, i32 0, i32 61
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = load ptr, ptr @img, align 8, !tbaa !10
  %10 = getelementptr inbounds nuw %struct.ImageParameters, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !59
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.macroblock, ptr %8, i64 %12
  store ptr %13, ptr %5, align 8, !tbaa !60
  %14 = load ptr, ptr %5, align 8, !tbaa !60
  %15 = getelementptr inbounds nuw %struct.macroblock, ptr %14, i32 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !61
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load ptr, ptr %5, align 8, !tbaa !60
  %20 = getelementptr inbounds nuw %struct.macroblock, ptr %19, i32 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %5, align 8, !tbaa !60
  %25 = getelementptr inbounds nuw %struct.macroblock, ptr %24, i32 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !61
  %27 = icmp eq i32 %26, 13
  br i1 %27, label %28, label %39

28:                                               ; preds = %23, %18, %2
  %29 = load ptr, ptr %3, align 8, !tbaa !11
  %30 = getelementptr inbounds nuw %struct.syntaxelement, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !13
  %32 = load ptr, ptr %3, align 8, !tbaa !11
  %33 = getelementptr inbounds nuw %struct.syntaxelement, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !15
  %35 = load ptr, ptr %3, align 8, !tbaa !11
  %36 = getelementptr inbounds nuw %struct.syntaxelement, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %3, align 8, !tbaa !11
  %38 = getelementptr inbounds nuw %struct.syntaxelement, ptr %37, i32 0, i32 4
  call void @cbp_linfo_intra(i32 noundef signext %31, i32 noundef signext %34, ptr noundef %36, ptr noundef %38)
  br label %50

39:                                               ; preds = %23
  %40 = load ptr, ptr %3, align 8, !tbaa !11
  %41 = getelementptr inbounds nuw %struct.syntaxelement, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !13
  %43 = load ptr, ptr %3, align 8, !tbaa !11
  %44 = getelementptr inbounds nuw %struct.syntaxelement, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !15
  %46 = load ptr, ptr %3, align 8, !tbaa !11
  %47 = getelementptr inbounds nuw %struct.syntaxelement, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %3, align 8, !tbaa !11
  %49 = getelementptr inbounds nuw %struct.syntaxelement, ptr %48, i32 0, i32 4
  call void @cbp_linfo_inter(i32 noundef signext %42, i32 noundef signext %45, ptr noundef %47, ptr noundef %49)
  br label %50

50:                                               ; preds = %39, %28
  %51 = load ptr, ptr %3, align 8, !tbaa !11
  %52 = call signext i32 @symbol2uvlc(ptr noundef %51)
  %53 = load ptr, ptr %3, align 8, !tbaa !11
  %54 = load ptr, ptr %4, align 8, !tbaa !51
  %55 = getelementptr inbounds nuw %struct.datapartition, ptr %54, i32 0, i32 0
  %56 = load ptr, ptr %55, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %53, ptr noundef %56)
  %57 = load ptr, ptr %3, align 8, !tbaa !11
  %58 = getelementptr inbounds nuw %struct.syntaxelement, ptr %57, i32 0, i32 0
  %59 = load i32, ptr %58, align 8, !tbaa !56
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %50
  %62 = load ptr, ptr %4, align 8, !tbaa !51
  %63 = getelementptr inbounds nuw %struct.datapartition, ptr %62, i32 0, i32 0
  %64 = load ptr, ptr %63, align 8, !tbaa !53
  %65 = getelementptr inbounds nuw %struct.Bitstream, ptr %64, i32 0, i32 10
  store i32 1, ptr %65, align 8, !tbaa !57
  br label %66

66:                                               ; preds = %61, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #6
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeIntraPredMode_CAVLC(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !51
  %5 = load ptr, ptr %3, align 8, !tbaa !11
  %6 = getelementptr inbounds nuw %struct.syntaxelement, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !13
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !11
  %11 = getelementptr inbounds nuw %struct.syntaxelement, ptr %10, i32 0, i32 3
  store i32 1, ptr %11, align 4, !tbaa !16
  %12 = load ptr, ptr %3, align 8, !tbaa !11
  %13 = getelementptr inbounds nuw %struct.syntaxelement, ptr %12, i32 0, i32 4
  store i32 1, ptr %13, align 8, !tbaa !21
  br label %22

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8, !tbaa !11
  %16 = getelementptr inbounds nuw %struct.syntaxelement, ptr %15, i32 0, i32 3
  store i32 4, ptr %16, align 4, !tbaa !16
  %17 = load ptr, ptr %3, align 8, !tbaa !11
  %18 = getelementptr inbounds nuw %struct.syntaxelement, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !13
  %20 = load ptr, ptr %3, align 8, !tbaa !11
  %21 = getelementptr inbounds nuw %struct.syntaxelement, ptr %20, i32 0, i32 4
  store i32 %19, ptr %21, align 8, !tbaa !21
  br label %22

22:                                               ; preds = %14, %9
  %23 = load ptr, ptr %3, align 8, !tbaa !11
  %24 = getelementptr inbounds nuw %struct.syntaxelement, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !21
  %26 = load ptr, ptr %3, align 8, !tbaa !11
  %27 = getelementptr inbounds nuw %struct.syntaxelement, ptr %26, i32 0, i32 5
  store i32 %25, ptr %27, align 4, !tbaa !22
  %28 = load ptr, ptr %3, align 8, !tbaa !11
  %29 = load ptr, ptr %4, align 8, !tbaa !51
  %30 = getelementptr inbounds nuw %struct.datapartition, ptr %29, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %28, ptr noundef %31)
  %32 = load ptr, ptr %3, align 8, !tbaa !11
  %33 = getelementptr inbounds nuw %struct.syntaxelement, ptr %32, i32 0, i32 0
  %34 = load i32, ptr %33, align 8, !tbaa !56
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %22
  %37 = load ptr, ptr %4, align 8, !tbaa !51
  %38 = getelementptr inbounds nuw %struct.datapartition, ptr %37, i32 0, i32 0
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  %40 = getelementptr inbounds nuw %struct.Bitstream, ptr %39, i32 0, i32 10
  store i32 1, ptr %40, align 8, !tbaa !57
  br label %41

41:                                               ; preds = %36, %22
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !10
  %5 = load ptr, ptr %3, align 8, !tbaa !11
  %6 = getelementptr inbounds nuw %struct.syntaxelement, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = load ptr, ptr %3, align 8, !tbaa !11
  %9 = getelementptr inbounds nuw %struct.syntaxelement, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = load ptr, ptr %3, align 8, !tbaa !11
  %12 = getelementptr inbounds nuw %struct.syntaxelement, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !15
  %14 = load ptr, ptr %3, align 8, !tbaa !11
  %15 = getelementptr inbounds nuw %struct.syntaxelement, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %3, align 8, !tbaa !11
  %17 = getelementptr inbounds nuw %struct.syntaxelement, ptr %16, i32 0, i32 4
  call void %7(i32 noundef signext %10, i32 noundef signext %13, ptr noundef %15, ptr noundef %17)
  %18 = load ptr, ptr %3, align 8, !tbaa !11
  %19 = call signext i32 @symbol2uvlc(ptr noundef %18)
  %20 = load ptr, ptr %3, align 8, !tbaa !11
  %21 = load ptr, ptr %4, align 8, !tbaa !10
  call void @writeUVLC2buffer(ptr noundef %20, ptr noundef %21)
  %22 = load ptr, ptr %3, align 8, !tbaa !11
  %23 = getelementptr inbounds nuw %struct.syntaxelement, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !16
  ret i32 %24
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !10
  %5 = load ptr, ptr %3, align 8, !tbaa !11
  %6 = load ptr, ptr %4, align 8, !tbaa !10
  call void @writeUVLC2buffer(ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %3, align 8, !tbaa !11
  %8 = getelementptr inbounds nuw %struct.syntaxelement, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !16
  ret i32 %9
}

; Function Attrs: nounwind
define dso_local void @writeSE_Flag(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !51
  %5 = load ptr, ptr %3, align 8, !tbaa !11
  %6 = getelementptr inbounds nuw %struct.syntaxelement, ptr %5, i32 0, i32 3
  store i32 1, ptr %6, align 4, !tbaa !16
  %7 = load ptr, ptr %3, align 8, !tbaa !11
  %8 = getelementptr inbounds nuw %struct.syntaxelement, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = and i32 %9, 1
  %11 = load ptr, ptr %3, align 8, !tbaa !11
  %12 = getelementptr inbounds nuw %struct.syntaxelement, ptr %11, i32 0, i32 5
  store i32 %10, ptr %12, align 4, !tbaa !22
  %13 = load ptr, ptr %3, align 8, !tbaa !11
  %14 = load ptr, ptr %4, align 8, !tbaa !51
  %15 = getelementptr inbounds nuw %struct.datapartition, ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %13, ptr noundef %16)
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeSE_invFlag(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !51
  %5 = load ptr, ptr %3, align 8, !tbaa !11
  %6 = getelementptr inbounds nuw %struct.syntaxelement, ptr %5, i32 0, i32 3
  store i32 1, ptr %6, align 4, !tbaa !16
  %7 = load ptr, ptr %3, align 8, !tbaa !11
  %8 = getelementptr inbounds nuw %struct.syntaxelement, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = and i32 %9, 1
  %11 = sub nsw i32 1, %10
  %12 = load ptr, ptr %3, align 8, !tbaa !11
  %13 = getelementptr inbounds nuw %struct.syntaxelement, ptr %12, i32 0, i32 5
  store i32 %11, ptr %13, align 4, !tbaa !22
  %14 = load ptr, ptr %3, align 8, !tbaa !11
  %15 = load ptr, ptr %4, align 8, !tbaa !51
  %16 = getelementptr inbounds nuw %struct.datapartition, ptr %15, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %14, ptr noundef %17)
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeSE_Dummy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !51
  %5 = load ptr, ptr %3, align 8, !tbaa !11
  %6 = getelementptr inbounds nuw %struct.syntaxelement, ptr %5, i32 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind
define dso_local void @writeSE_Fix(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !51
  %5 = load ptr, ptr %3, align 8, !tbaa !11
  %6 = load ptr, ptr %4, align 8, !tbaa !51
  %7 = getelementptr inbounds nuw %struct.datapartition, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %5, ptr noundef %8)
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @symbol2vlc(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6
  %4 = load ptr, ptr %2, align 8, !tbaa !11
  %5 = getelementptr inbounds nuw %struct.syntaxelement, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !16
  store i32 %6, ptr %3, align 4, !tbaa !8
  %7 = load ptr, ptr %2, align 8, !tbaa !11
  %8 = getelementptr inbounds nuw %struct.syntaxelement, ptr %7, i32 0, i32 5
  store i32 0, ptr %8, align 4, !tbaa !22
  br label %9

9:                                                ; preds = %13, %1
  %10 = load i32, ptr %3, align 4, !tbaa !8
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr %3, align 4, !tbaa !8
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8, !tbaa !11
  %15 = getelementptr inbounds nuw %struct.syntaxelement, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !22
  %17 = shl i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !22
  %18 = load ptr, ptr %2, align 8, !tbaa !11
  %19 = getelementptr inbounds nuw %struct.syntaxelement, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = load i32, ptr %3, align 4, !tbaa !8
  %22 = ashr i32 %20, %21
  %23 = and i32 1, %22
  %24 = load ptr, ptr %2, align 8, !tbaa !11
  %25 = getelementptr inbounds nuw %struct.syntaxelement, ptr %24, i32 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !22
  %27 = or i32 %26, %23
  store i32 %27, ptr %25, align 4, !tbaa !22
  br label %9, !llvm.loop !65

28:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_VLC(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !51
  %5 = load ptr, ptr %3, align 8, !tbaa !11
  %6 = getelementptr inbounds nuw %struct.syntaxelement, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !13
  %8 = load ptr, ptr %3, align 8, !tbaa !11
  %9 = getelementptr inbounds nuw %struct.syntaxelement, ptr %8, i32 0, i32 4
  store i32 %7, ptr %9, align 8, !tbaa !21
  %10 = load ptr, ptr %3, align 8, !tbaa !11
  %11 = getelementptr inbounds nuw %struct.syntaxelement, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !15
  %13 = load ptr, ptr %3, align 8, !tbaa !11
  %14 = getelementptr inbounds nuw %struct.syntaxelement, ptr %13, i32 0, i32 3
  store i32 %12, ptr %14, align 4, !tbaa !16
  %15 = load ptr, ptr %3, align 8, !tbaa !11
  %16 = call signext i32 @symbol2vlc(ptr noundef %15)
  %17 = load ptr, ptr %3, align 8, !tbaa !11
  %18 = load ptr, ptr %4, align 8, !tbaa !51
  %19 = getelementptr inbounds nuw %struct.datapartition, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %17, ptr noundef %20)
  %21 = load ptr, ptr %3, align 8, !tbaa !11
  %22 = getelementptr inbounds nuw %struct.syntaxelement, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 8, !tbaa !56
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8, !tbaa !51
  %27 = getelementptr inbounds nuw %struct.datapartition, ptr %26, i32 0, i32 0
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = getelementptr inbounds nuw %struct.Bitstream, ptr %28, i32 0, i32 10
  store i32 1, ptr %29, align 8, !tbaa !57
  br label %30

30:                                               ; preds = %25, %2
  %31 = load ptr, ptr %3, align 8, !tbaa !11
  %32 = getelementptr inbounds nuw %struct.syntaxelement, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !16
  ret i32 %33
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_NumCoeffTrailingOnes(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6
  %6 = load ptr, ptr %3, align 8, !tbaa !11
  %7 = getelementptr inbounds nuw %struct.syntaxelement, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !16
  store i32 %8, ptr %5, align 4, !tbaa !8
  %9 = load i32, ptr %5, align 4, !tbaa !8
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !tbaa !11
  %13 = getelementptr inbounds nuw %struct.syntaxelement, ptr %12, i32 0, i32 3
  store i32 6, ptr %13, align 4, !tbaa !16
  %14 = load ptr, ptr %3, align 8, !tbaa !11
  %15 = getelementptr inbounds nuw %struct.syntaxelement, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !13
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = load ptr, ptr %3, align 8, !tbaa !11
  %20 = getelementptr inbounds nuw %struct.syntaxelement, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !13
  %22 = sub nsw i32 %21, 1
  %23 = shl i32 %22, 2
  %24 = load ptr, ptr %3, align 8, !tbaa !11
  %25 = getelementptr inbounds nuw %struct.syntaxelement, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !15
  %27 = or i32 %23, %26
  %28 = load ptr, ptr %3, align 8, !tbaa !11
  %29 = getelementptr inbounds nuw %struct.syntaxelement, ptr %28, i32 0, i32 4
  store i32 %27, ptr %29, align 8, !tbaa !21
  br label %33

30:                                               ; preds = %11
  %31 = load ptr, ptr %3, align 8, !tbaa !11
  %32 = getelementptr inbounds nuw %struct.syntaxelement, ptr %31, i32 0, i32 4
  store i32 3, ptr %32, align 8, !tbaa !21
  br label %33

33:                                               ; preds = %30, %18
  br label %67

34:                                               ; preds = %2
  %35 = load i32, ptr %5, align 4, !tbaa !8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x [4 x [17 x i32]]], ptr @writeSyntaxElement_NumCoeffTrailingOnes.lentab, i64 0, i64 %36
  %38 = load ptr, ptr %3, align 8, !tbaa !11
  %39 = getelementptr inbounds nuw %struct.syntaxelement, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !15
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x [17 x i32]], ptr %37, i64 0, i64 %41
  %43 = load ptr, ptr %3, align 8, !tbaa !11
  %44 = getelementptr inbounds nuw %struct.syntaxelement, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !13
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [17 x i32], ptr %42, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !8
  %49 = load ptr, ptr %3, align 8, !tbaa !11
  %50 = getelementptr inbounds nuw %struct.syntaxelement, ptr %49, i32 0, i32 3
  store i32 %48, ptr %50, align 4, !tbaa !16
  %51 = load i32, ptr %5, align 4, !tbaa !8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x [4 x [17 x i32]]], ptr @writeSyntaxElement_NumCoeffTrailingOnes.codtab, i64 0, i64 %52
  %54 = load ptr, ptr %3, align 8, !tbaa !11
  %55 = getelementptr inbounds nuw %struct.syntaxelement, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !15
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x [17 x i32]], ptr %53, i64 0, i64 %57
  %59 = load ptr, ptr %3, align 8, !tbaa !11
  %60 = getelementptr inbounds nuw %struct.syntaxelement, ptr %59, i32 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !13
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [17 x i32], ptr %58, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !8
  %65 = load ptr, ptr %3, align 8, !tbaa !11
  %66 = getelementptr inbounds nuw %struct.syntaxelement, ptr %65, i32 0, i32 4
  store i32 %64, ptr %66, align 8, !tbaa !21
  br label %67

67:                                               ; preds = %34, %33
  %68 = load ptr, ptr %3, align 8, !tbaa !11
  %69 = getelementptr inbounds nuw %struct.syntaxelement, ptr %68, i32 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load i32, ptr %5, align 4, !tbaa !8
  %74 = load ptr, ptr %3, align 8, !tbaa !11
  %75 = getelementptr inbounds nuw %struct.syntaxelement, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !13
  %77 = load ptr, ptr %3, align 8, !tbaa !11
  %78 = getelementptr inbounds nuw %struct.syntaxelement, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !15
  %80 = call signext i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef signext %73, i32 noundef signext %76, i32 noundef signext %79)
  call void @exit(i32 noundef signext -1) #7
  unreachable

81:                                               ; preds = %67
  %82 = load ptr, ptr %3, align 8, !tbaa !11
  %83 = call signext i32 @symbol2vlc(ptr noundef %82)
  %84 = load ptr, ptr %3, align 8, !tbaa !11
  %85 = load ptr, ptr %4, align 8, !tbaa !51
  %86 = getelementptr inbounds nuw %struct.datapartition, ptr %85, i32 0, i32 0
  %87 = load ptr, ptr %86, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %84, ptr noundef %87)
  %88 = load ptr, ptr %3, align 8, !tbaa !11
  %89 = getelementptr inbounds nuw %struct.syntaxelement, ptr %88, i32 0, i32 0
  %90 = load i32, ptr %89, align 8, !tbaa !56
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %81
  %93 = load ptr, ptr %4, align 8, !tbaa !51
  %94 = getelementptr inbounds nuw %struct.datapartition, ptr %93, i32 0, i32 0
  %95 = load ptr, ptr %94, align 8, !tbaa !53
  %96 = getelementptr inbounds nuw %struct.Bitstream, ptr %95, i32 0, i32 10
  store i32 1, ptr %96, align 8, !tbaa !57
  br label %97

97:                                               ; preds = %92, %81
  %98 = load ptr, ptr %3, align 8, !tbaa !11
  %99 = getelementptr inbounds nuw %struct.syntaxelement, ptr %98, i32 0, i32 3
  %100 = load i32, ptr %99, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6
  ret i32 %100
}

declare signext i32 @printf(ptr noundef, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef signext) #5

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_NumCoeffTrailingOnesChromaDC(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6
  %6 = load ptr, ptr @img, align 8, !tbaa !10
  %7 = getelementptr inbounds nuw %struct.ImageParameters, ptr %6, i32 0, i32 160
  %8 = load i32, ptr %7, align 8, !tbaa !31
  %9 = sub nsw i32 %8, 1
  store i32 %9, ptr %5, align 4, !tbaa !8
  %10 = load i32, ptr %5, align 4, !tbaa !8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x [4 x [17 x i32]]], ptr @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab, i64 0, i64 %11
  %13 = load ptr, ptr %3, align 8, !tbaa !11
  %14 = getelementptr inbounds nuw %struct.syntaxelement, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x [17 x i32]], ptr %12, i64 0, i64 %16
  %18 = load ptr, ptr %3, align 8, !tbaa !11
  %19 = getelementptr inbounds nuw %struct.syntaxelement, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !13
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [17 x i32], ptr %17, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %24 = load ptr, ptr %3, align 8, !tbaa !11
  %25 = getelementptr inbounds nuw %struct.syntaxelement, ptr %24, i32 0, i32 3
  store i32 %23, ptr %25, align 4, !tbaa !16
  %26 = load i32, ptr %5, align 4, !tbaa !8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x [4 x [17 x i32]]], ptr @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab, i64 0, i64 %27
  %29 = load ptr, ptr %3, align 8, !tbaa !11
  %30 = getelementptr inbounds nuw %struct.syntaxelement, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !15
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x [17 x i32]], ptr %28, i64 0, i64 %32
  %34 = load ptr, ptr %3, align 8, !tbaa !11
  %35 = getelementptr inbounds nuw %struct.syntaxelement, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !13
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [17 x i32], ptr %33, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !8
  %40 = load ptr, ptr %3, align 8, !tbaa !11
  %41 = getelementptr inbounds nuw %struct.syntaxelement, ptr %40, i32 0, i32 4
  store i32 %39, ptr %41, align 8, !tbaa !21
  %42 = load ptr, ptr %3, align 8, !tbaa !11
  %43 = getelementptr inbounds nuw %struct.syntaxelement, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %2
  %47 = load ptr, ptr %3, align 8, !tbaa !11
  %48 = getelementptr inbounds nuw %struct.syntaxelement, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !13
  %50 = load ptr, ptr %3, align 8, !tbaa !11
  %51 = getelementptr inbounds nuw %struct.syntaxelement, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !15
  %53 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef signext %49, i32 noundef signext %52)
  call void @exit(i32 noundef signext -1) #7
  unreachable

54:                                               ; preds = %2
  %55 = load ptr, ptr %3, align 8, !tbaa !11
  %56 = call signext i32 @symbol2vlc(ptr noundef %55)
  %57 = load ptr, ptr %3, align 8, !tbaa !11
  %58 = load ptr, ptr %4, align 8, !tbaa !51
  %59 = getelementptr inbounds nuw %struct.datapartition, ptr %58, i32 0, i32 0
  %60 = load ptr, ptr %59, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %57, ptr noundef %60)
  %61 = load ptr, ptr %3, align 8, !tbaa !11
  %62 = getelementptr inbounds nuw %struct.syntaxelement, ptr %61, i32 0, i32 0
  %63 = load i32, ptr %62, align 8, !tbaa !56
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load ptr, ptr %4, align 8, !tbaa !51
  %67 = getelementptr inbounds nuw %struct.datapartition, ptr %66, i32 0, i32 0
  %68 = load ptr, ptr %67, align 8, !tbaa !53
  %69 = getelementptr inbounds nuw %struct.Bitstream, ptr %68, i32 0, i32 10
  store i32 1, ptr %69, align 8, !tbaa !57
  br label %70

70:                                               ; preds = %65, %54
  %71 = load ptr, ptr %3, align 8, !tbaa !11
  %72 = getelementptr inbounds nuw %struct.syntaxelement, ptr %71, i32 0, i32 3
  %73 = load i32, ptr %72, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6
  ret i32 %73
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_TotalZeros(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6
  %6 = load ptr, ptr %3, align 8, !tbaa !11
  %7 = getelementptr inbounds nuw %struct.syntaxelement, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !16
  store i32 %8, ptr %5, align 4, !tbaa !8
  %9 = load i32, ptr %5, align 4, !tbaa !8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [15 x [16 x i32]], ptr @writeSyntaxElement_TotalZeros.lentab, i64 0, i64 %10
  %12 = load ptr, ptr %3, align 8, !tbaa !11
  %13 = getelementptr inbounds nuw %struct.syntaxelement, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [16 x i32], ptr %11, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !8
  %18 = load ptr, ptr %3, align 8, !tbaa !11
  %19 = getelementptr inbounds nuw %struct.syntaxelement, ptr %18, i32 0, i32 3
  store i32 %17, ptr %19, align 4, !tbaa !16
  %20 = load i32, ptr %5, align 4, !tbaa !8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [15 x [16 x i32]], ptr @writeSyntaxElement_TotalZeros.codtab, i64 0, i64 %21
  %23 = load ptr, ptr %3, align 8, !tbaa !11
  %24 = getelementptr inbounds nuw %struct.syntaxelement, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !13
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i32], ptr %22, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %29 = load ptr, ptr %3, align 8, !tbaa !11
  %30 = getelementptr inbounds nuw %struct.syntaxelement, ptr %29, i32 0, i32 4
  store i32 %28, ptr %30, align 8, !tbaa !21
  %31 = load ptr, ptr %3, align 8, !tbaa !11
  %32 = getelementptr inbounds nuw %struct.syntaxelement, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load ptr, ptr %3, align 8, !tbaa !11
  %37 = getelementptr inbounds nuw %struct.syntaxelement, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !13
  %39 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef signext %38)
  call void @exit(i32 noundef signext -1) #7
  unreachable

40:                                               ; preds = %2
  %41 = load ptr, ptr %3, align 8, !tbaa !11
  %42 = call signext i32 @symbol2vlc(ptr noundef %41)
  %43 = load ptr, ptr %3, align 8, !tbaa !11
  %44 = load ptr, ptr %4, align 8, !tbaa !51
  %45 = getelementptr inbounds nuw %struct.datapartition, ptr %44, i32 0, i32 0
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %43, ptr noundef %46)
  %47 = load ptr, ptr %3, align 8, !tbaa !11
  %48 = getelementptr inbounds nuw %struct.syntaxelement, ptr %47, i32 0, i32 0
  %49 = load i32, ptr %48, align 8, !tbaa !56
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load ptr, ptr %4, align 8, !tbaa !51
  %53 = getelementptr inbounds nuw %struct.datapartition, ptr %52, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8, !tbaa !53
  %55 = getelementptr inbounds nuw %struct.Bitstream, ptr %54, i32 0, i32 10
  store i32 1, ptr %55, align 8, !tbaa !57
  br label %56

56:                                               ; preds = %51, %40
  %57 = load ptr, ptr %3, align 8, !tbaa !11
  %58 = getelementptr inbounds nuw %struct.syntaxelement, ptr %57, i32 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6
  ret i32 %59
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_TotalZerosChromaDC(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6
  %7 = load ptr, ptr @img, align 8, !tbaa !10
  %8 = getelementptr inbounds nuw %struct.ImageParameters, ptr %7, i32 0, i32 160
  %9 = load i32, ptr %8, align 8, !tbaa !31
  %10 = sub nsw i32 %9, 1
  store i32 %10, ptr %6, align 4, !tbaa !8
  %11 = load ptr, ptr %3, align 8, !tbaa !11
  %12 = getelementptr inbounds nuw %struct.syntaxelement, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !16
  store i32 %13, ptr %5, align 4, !tbaa !8
  %14 = load i32, ptr %6, align 4, !tbaa !8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x [15 x [16 x i32]]], ptr @writeSyntaxElement_TotalZerosChromaDC.lentab, i64 0, i64 %15
  %17 = load i32, ptr %5, align 4, !tbaa !8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [15 x [16 x i32]], ptr %16, i64 0, i64 %18
  %20 = load ptr, ptr %3, align 8, !tbaa !11
  %21 = getelementptr inbounds nuw %struct.syntaxelement, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !13
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [16 x i32], ptr %19, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !8
  %26 = load ptr, ptr %3, align 8, !tbaa !11
  %27 = getelementptr inbounds nuw %struct.syntaxelement, ptr %26, i32 0, i32 3
  store i32 %25, ptr %27, align 4, !tbaa !16
  %28 = load i32, ptr %6, align 4, !tbaa !8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x [15 x [16 x i32]]], ptr @writeSyntaxElement_TotalZerosChromaDC.codtab, i64 0, i64 %29
  %31 = load i32, ptr %5, align 4, !tbaa !8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [15 x [16 x i32]], ptr %30, i64 0, i64 %32
  %34 = load ptr, ptr %3, align 8, !tbaa !11
  %35 = getelementptr inbounds nuw %struct.syntaxelement, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !13
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [16 x i32], ptr %33, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !8
  %40 = load ptr, ptr %3, align 8, !tbaa !11
  %41 = getelementptr inbounds nuw %struct.syntaxelement, ptr %40, i32 0, i32 4
  store i32 %39, ptr %41, align 8, !tbaa !21
  %42 = load ptr, ptr %3, align 8, !tbaa !11
  %43 = getelementptr inbounds nuw %struct.syntaxelement, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %2
  %47 = load ptr, ptr %3, align 8, !tbaa !11
  %48 = getelementptr inbounds nuw %struct.syntaxelement, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !13
  %50 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef signext %49)
  call void @exit(i32 noundef signext -1) #7
  unreachable

51:                                               ; preds = %2
  %52 = load ptr, ptr %3, align 8, !tbaa !11
  %53 = call signext i32 @symbol2vlc(ptr noundef %52)
  %54 = load ptr, ptr %3, align 8, !tbaa !11
  %55 = load ptr, ptr %4, align 8, !tbaa !51
  %56 = getelementptr inbounds nuw %struct.datapartition, ptr %55, i32 0, i32 0
  %57 = load ptr, ptr %56, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %54, ptr noundef %57)
  %58 = load ptr, ptr %3, align 8, !tbaa !11
  %59 = getelementptr inbounds nuw %struct.syntaxelement, ptr %58, i32 0, i32 0
  %60 = load i32, ptr %59, align 8, !tbaa !56
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load ptr, ptr %4, align 8, !tbaa !51
  %64 = getelementptr inbounds nuw %struct.datapartition, ptr %63, i32 0, i32 0
  %65 = load ptr, ptr %64, align 8, !tbaa !53
  %66 = getelementptr inbounds nuw %struct.Bitstream, ptr %65, i32 0, i32 10
  store i32 1, ptr %66, align 8, !tbaa !57
  br label %67

67:                                               ; preds = %62, %51
  %68 = load ptr, ptr %3, align 8, !tbaa !11
  %69 = getelementptr inbounds nuw %struct.syntaxelement, ptr %68, i32 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6
  ret i32 %70
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_Run(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6
  %6 = load ptr, ptr %3, align 8, !tbaa !11
  %7 = getelementptr inbounds nuw %struct.syntaxelement, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !16
  store i32 %8, ptr %5, align 4, !tbaa !8
  %9 = load i32, ptr %5, align 4, !tbaa !8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [15 x [16 x i32]], ptr @writeSyntaxElement_Run.lentab, i64 0, i64 %10
  %12 = load ptr, ptr %3, align 8, !tbaa !11
  %13 = getelementptr inbounds nuw %struct.syntaxelement, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [16 x i32], ptr %11, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !8
  %18 = load ptr, ptr %3, align 8, !tbaa !11
  %19 = getelementptr inbounds nuw %struct.syntaxelement, ptr %18, i32 0, i32 3
  store i32 %17, ptr %19, align 4, !tbaa !16
  %20 = load i32, ptr %5, align 4, !tbaa !8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [15 x [16 x i32]], ptr @writeSyntaxElement_Run.codtab, i64 0, i64 %21
  %23 = load ptr, ptr %3, align 8, !tbaa !11
  %24 = getelementptr inbounds nuw %struct.syntaxelement, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !13
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i32], ptr %22, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %29 = load ptr, ptr %3, align 8, !tbaa !11
  %30 = getelementptr inbounds nuw %struct.syntaxelement, ptr %29, i32 0, i32 4
  store i32 %28, ptr %30, align 8, !tbaa !21
  %31 = load ptr, ptr %3, align 8, !tbaa !11
  %32 = getelementptr inbounds nuw %struct.syntaxelement, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load ptr, ptr %3, align 8, !tbaa !11
  %37 = getelementptr inbounds nuw %struct.syntaxelement, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !13
  %39 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef signext %38)
  call void @exit(i32 noundef signext -1) #7
  unreachable

40:                                               ; preds = %2
  %41 = load ptr, ptr %3, align 8, !tbaa !11
  %42 = call signext i32 @symbol2vlc(ptr noundef %41)
  %43 = load ptr, ptr %3, align 8, !tbaa !11
  %44 = load ptr, ptr %4, align 8, !tbaa !51
  %45 = getelementptr inbounds nuw %struct.datapartition, ptr %44, i32 0, i32 0
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %43, ptr noundef %46)
  %47 = load ptr, ptr %3, align 8, !tbaa !11
  %48 = getelementptr inbounds nuw %struct.syntaxelement, ptr %47, i32 0, i32 0
  %49 = load i32, ptr %48, align 8, !tbaa !56
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load ptr, ptr %4, align 8, !tbaa !51
  %53 = getelementptr inbounds nuw %struct.datapartition, ptr %52, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8, !tbaa !53
  %55 = getelementptr inbounds nuw %struct.Bitstream, ptr %54, i32 0, i32 10
  store i32 1, ptr %55, align 8, !tbaa !57
  br label %56

56:                                               ; preds = %51, %40
  %57 = load ptr, ptr %3, align 8, !tbaa !11
  %58 = getelementptr inbounds nuw %struct.syntaxelement, ptr %57, i32 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6
  ret i32 %59
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_Level_VLC1(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
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
  %17 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !11
  store ptr %1, ptr %6, align 8, !tbaa !51
  store i32 %2, ptr %7, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6
  %18 = load ptr, ptr %5, align 8, !tbaa !11
  %19 = getelementptr inbounds nuw %struct.syntaxelement, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !13
  store i32 %20, ptr %8, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6
  %21 = load i32, ptr %8, align 4, !tbaa !8
  %22 = call signext i32 @iabs(i32 noundef signext %21)
  store i32 %22, ptr %9, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6
  %23 = load i32, ptr %8, align 4, !tbaa !8
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  store i32 %26, ptr %10, align 4, !tbaa !8
  %27 = load i32, ptr %9, align 4, !tbaa !8
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %39

29:                                               ; preds = %3
  %30 = load i32, ptr %9, align 4, !tbaa !8
  %31 = mul nsw i32 %30, 2
  %32 = load i32, ptr %10, align 4, !tbaa !8
  %33 = add nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  %35 = load ptr, ptr %5, align 8, !tbaa !11
  %36 = getelementptr inbounds nuw %struct.syntaxelement, ptr %35, i32 0, i32 3
  store i32 %34, ptr %36, align 4, !tbaa !16
  %37 = load ptr, ptr %5, align 8, !tbaa !11
  %38 = getelementptr inbounds nuw %struct.syntaxelement, ptr %37, i32 0, i32 4
  store i32 1, ptr %38, align 8, !tbaa !21
  br label %115

39:                                               ; preds = %3
  %40 = load i32, ptr %9, align 4, !tbaa !8
  %41 = icmp slt i32 %40, 16
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load ptr, ptr %5, align 8, !tbaa !11
  %44 = getelementptr inbounds nuw %struct.syntaxelement, ptr %43, i32 0, i32 3
  store i32 19, ptr %44, align 4, !tbaa !16
  %45 = load i32, ptr %9, align 4, !tbaa !8
  %46 = sub nsw i32 %45, 8
  %47 = shl i32 %46, 1
  %48 = or i32 16, %47
  %49 = load i32, ptr %10, align 4, !tbaa !8
  %50 = or i32 %48, %49
  %51 = load ptr, ptr %5, align 8, !tbaa !11
  %52 = getelementptr inbounds nuw %struct.syntaxelement, ptr %51, i32 0, i32 4
  store i32 %50, ptr %52, align 8, !tbaa !21
  br label %114

53:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6
  store i32 28, ptr %11, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6
  store i32 15, ptr %12, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #6
  %54 = load i32, ptr %9, align 4, !tbaa !8
  %55 = sub nsw i32 %54, 16
  store i32 %55, ptr %16, align 4, !tbaa !8
  %56 = load i32, ptr %16, align 4, !tbaa !8
  %57 = icmp sgt i32 %56, 2048
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load i32, ptr %12, align 4, !tbaa !8
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %12, align 4, !tbaa !8
  br label %61

61:                                               ; preds = %68, %58
  %62 = load i32, ptr %16, align 4, !tbaa !8
  %63 = load i32, ptr %12, align 4, !tbaa !8
  %64 = sub nsw i32 %63, 3
  %65 = shl i32 1, %64
  %66 = sub nsw i32 %65, 4096
  %67 = icmp sgt i32 %62, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, ptr %12, align 4, !tbaa !8
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %12, align 4, !tbaa !8
  br label %61, !llvm.loop !66

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %53
  %73 = load i32, ptr %12, align 4, !tbaa !8
  %74 = sub nsw i32 %73, 15
  store i32 %74, ptr %14, align 4, !tbaa !8
  %75 = load i32, ptr %14, align 4, !tbaa !8
  %76 = shl i32 %75, 1
  %77 = load i32, ptr %11, align 4, !tbaa !8
  %78 = add nsw i32 %77, %76
  store i32 %78, ptr %11, align 4, !tbaa !8
  %79 = load i32, ptr %14, align 4, !tbaa !8
  %80 = shl i32 2048, %79
  %81 = sub nsw i32 %80, 2048
  store i32 %81, ptr %15, align 4, !tbaa !8
  %82 = load i32, ptr %14, align 4, !tbaa !8
  %83 = add nsw i32 12, %82
  %84 = shl i32 1, %83
  %85 = load i32, ptr %16, align 4, !tbaa !8
  %86 = shl i32 %85, 1
  %87 = or i32 %84, %86
  %88 = load i32, ptr %10, align 4, !tbaa !8
  %89 = or i32 %87, %88
  store i32 %89, ptr %13, align 4, !tbaa !8
  %90 = load i32, ptr %12, align 4, !tbaa !8
  %91 = icmp sgt i32 %90, 15
  br i1 %91, label %92, label %104

92:                                               ; preds = %72
  %93 = load i32, ptr %7, align 4, !tbaa !8
  %94 = icmp slt i32 %93, 100
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load ptr, ptr %5, align 8, !tbaa !11
  %97 = getelementptr inbounds nuw %struct.syntaxelement, ptr %96, i32 0, i32 3
  store i32 65535, ptr %97, align 4, !tbaa !16
  %98 = load i32, ptr %13, align 4, !tbaa !8
  %99 = load ptr, ptr %5, align 8, !tbaa !11
  %100 = getelementptr inbounds nuw %struct.syntaxelement, ptr %99, i32 0, i32 4
  store i32 %98, ptr %100, align 8, !tbaa !21
  %101 = load ptr, ptr %5, align 8, !tbaa !11
  %102 = getelementptr inbounds nuw %struct.syntaxelement, ptr %101, i32 0, i32 3
  %103 = load i32, ptr %102, align 4, !tbaa !16
  store i32 %103, ptr %4, align 4
  store i32 1, ptr %17, align 4
  br label %111

104:                                              ; preds = %92, %72
  %105 = load i32, ptr %11, align 4, !tbaa !8
  %106 = load ptr, ptr %5, align 8, !tbaa !11
  %107 = getelementptr inbounds nuw %struct.syntaxelement, ptr %106, i32 0, i32 3
  store i32 %105, ptr %107, align 4, !tbaa !16
  %108 = load i32, ptr %13, align 4, !tbaa !8
  %109 = load ptr, ptr %5, align 8, !tbaa !11
  %110 = getelementptr inbounds nuw %struct.syntaxelement, ptr %109, i32 0, i32 4
  store i32 %108, ptr %110, align 8, !tbaa !21
  store i32 0, ptr %17, align 4
  br label %111

111:                                              ; preds = %104, %95
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6
  %112 = load i32, ptr %17, align 4
  switch i32 %112, label %135 [
    i32 0, label %113
  ]

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113, %42
  br label %115

115:                                              ; preds = %114, %29
  %116 = load ptr, ptr %5, align 8, !tbaa !11
  %117 = call signext i32 @symbol2vlc(ptr noundef %116)
  %118 = load ptr, ptr %5, align 8, !tbaa !11
  %119 = load ptr, ptr %6, align 8, !tbaa !51
  %120 = getelementptr inbounds nuw %struct.datapartition, ptr %119, i32 0, i32 0
  %121 = load ptr, ptr %120, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %118, ptr noundef %121)
  %122 = load ptr, ptr %5, align 8, !tbaa !11
  %123 = getelementptr inbounds nuw %struct.syntaxelement, ptr %122, i32 0, i32 0
  %124 = load i32, ptr %123, align 8, !tbaa !56
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %115
  %127 = load ptr, ptr %6, align 8, !tbaa !51
  %128 = getelementptr inbounds nuw %struct.datapartition, ptr %127, i32 0, i32 0
  %129 = load ptr, ptr %128, align 8, !tbaa !53
  %130 = getelementptr inbounds nuw %struct.Bitstream, ptr %129, i32 0, i32 10
  store i32 1, ptr %130, align 8, !tbaa !57
  br label %131

131:                                              ; preds = %126, %115
  %132 = load ptr, ptr %5, align 8, !tbaa !11
  %133 = getelementptr inbounds nuw %struct.syntaxelement, ptr %132, i32 0, i32 3
  %134 = load i32, ptr %133, align 4, !tbaa !16
  store i32 %134, ptr %4, align 4
  store i32 1, ptr %17, align 4
  br label %135

135:                                              ; preds = %131, %111
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6
  %136 = load i32, ptr %4, align 4
  ret i32 %136
}

; Function Attrs: nounwind
define dso_local signext i32 @writeSyntaxElement_Level_VLCN(ptr noundef %0, i32 noundef signext %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store ptr %0, ptr %6, align 8, !tbaa !11
  store i32 %1, ptr %7, align 4, !tbaa !8
  store ptr %2, ptr %8, align 8, !tbaa !51
  store i32 %3, ptr %9, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #6
  %24 = load ptr, ptr %6, align 8, !tbaa !11
  %25 = getelementptr inbounds nuw %struct.syntaxelement, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !13
  store i32 %26, ptr %14, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #6
  %27 = load i32, ptr %14, align 4, !tbaa !8
  %28 = call signext i32 @iabs(i32 noundef signext %27)
  store i32 %28, ptr %15, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #6
  %29 = load i32, ptr %14, align 4, !tbaa !8
  %30 = icmp slt i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  store i32 %32, ptr %16, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #6
  %33 = load i32, ptr %7, align 4, !tbaa !8
  %34 = sub nsw i32 %33, 1
  store i32 %34, ptr %17, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #6
  %35 = load i32, ptr %17, align 4, !tbaa !8
  %36 = shl i32 15, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %18, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #6
  %38 = load i32, ptr %15, align 4, !tbaa !8
  %39 = sub nsw i32 %38, 1
  %40 = load i32, ptr %17, align 4, !tbaa !8
  %41 = ashr i32 %39, %40
  store i32 %41, ptr %19, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #6
  %42 = load i32, ptr %17, align 4, !tbaa !8
  %43 = shl i32 -1, %42
  %44 = xor i32 %43, -1
  store i32 %44, ptr %20, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #6
  %45 = load i32, ptr %15, align 4, !tbaa !8
  %46 = sub nsw i32 %45, 1
  %47 = load i32, ptr %20, align 4, !tbaa !8
  %48 = and i32 %46, %47
  store i32 %48, ptr %21, align 4, !tbaa !8
  %49 = load i32, ptr %15, align 4, !tbaa !8
  %50 = load i32, ptr %18, align 4, !tbaa !8
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %4
  %53 = load i32, ptr %19, align 4, !tbaa !8
  %54 = load i32, ptr %7, align 4, !tbaa !8
  %55 = add nsw i32 %53, %54
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %13, align 4, !tbaa !8
  %57 = load i32, ptr %17, align 4, !tbaa !8
  %58 = add nsw i32 %57, 1
  %59 = shl i32 1, %58
  %60 = load i32, ptr %21, align 4, !tbaa !8
  %61 = shl i32 %60, 1
  %62 = or i32 %59, %61
  %63 = load i32, ptr %16, align 4, !tbaa !8
  %64 = or i32 %62, %63
  store i32 %64, ptr %12, align 4, !tbaa !8
  br label %123

65:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #6
  %66 = load i32, ptr %15, align 4, !tbaa !8
  %67 = load i32, ptr %18, align 4, !tbaa !8
  %68 = sub nsw i32 %66, %67
  store i32 %68, ptr %22, align 4, !tbaa !8
  store i32 28, ptr %13, align 4, !tbaa !8
  store i32 15, ptr %19, align 4, !tbaa !8
  %69 = load i32, ptr %22, align 4, !tbaa !8
  %70 = icmp sgt i32 %69, 2048
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load i32, ptr %19, align 4, !tbaa !8
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %19, align 4, !tbaa !8
  br label %74

74:                                               ; preds = %81, %71
  %75 = load i32, ptr %22, align 4, !tbaa !8
  %76 = load i32, ptr %19, align 4, !tbaa !8
  %77 = sub nsw i32 %76, 3
  %78 = shl i32 1, %77
  %79 = sub nsw i32 %78, 4096
  %80 = icmp sgt i32 %75, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, ptr %19, align 4, !tbaa !8
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %19, align 4, !tbaa !8
  br label %74, !llvm.loop !67

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %65
  %86 = load i32, ptr %19, align 4, !tbaa !8
  %87 = sub nsw i32 %86, 15
  store i32 %87, ptr %10, align 4, !tbaa !8
  %88 = load i32, ptr %10, align 4, !tbaa !8
  %89 = shl i32 %88, 1
  %90 = load i32, ptr %13, align 4, !tbaa !8
  %91 = add nsw i32 %90, %89
  store i32 %91, ptr %13, align 4, !tbaa !8
  %92 = load i32, ptr %10, align 4, !tbaa !8
  %93 = shl i32 2048, %92
  %94 = sub nsw i32 %93, 2048
  store i32 %94, ptr %11, align 4, !tbaa !8
  %95 = load i32, ptr %10, align 4, !tbaa !8
  %96 = add nsw i32 12, %95
  %97 = shl i32 1, %96
  %98 = load i32, ptr %22, align 4, !tbaa !8
  %99 = load i32, ptr %11, align 4, !tbaa !8
  %100 = sub nsw i32 %98, %99
  %101 = shl i32 %100, 1
  %102 = or i32 %97, %101
  %103 = load i32, ptr %16, align 4, !tbaa !8
  %104 = or i32 %102, %103
  store i32 %104, ptr %12, align 4, !tbaa !8
  %105 = load i32, ptr %19, align 4, !tbaa !8
  %106 = icmp sgt i32 %105, 15
  br i1 %106, label %107, label %119

107:                                              ; preds = %85
  %108 = load i32, ptr %9, align 4, !tbaa !8
  %109 = icmp slt i32 %108, 100
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load ptr, ptr %6, align 8, !tbaa !11
  %112 = getelementptr inbounds nuw %struct.syntaxelement, ptr %111, i32 0, i32 3
  store i32 65535, ptr %112, align 4, !tbaa !16
  %113 = load i32, ptr %12, align 4, !tbaa !8
  %114 = load ptr, ptr %6, align 8, !tbaa !11
  %115 = getelementptr inbounds nuw %struct.syntaxelement, ptr %114, i32 0, i32 4
  store i32 %113, ptr %115, align 8, !tbaa !21
  %116 = load ptr, ptr %6, align 8, !tbaa !11
  %117 = getelementptr inbounds nuw %struct.syntaxelement, ptr %116, i32 0, i32 3
  %118 = load i32, ptr %117, align 4, !tbaa !16
  store i32 %118, ptr %5, align 4
  store i32 1, ptr %23, align 4
  br label %120

119:                                              ; preds = %107, %85
  store i32 0, ptr %23, align 4
  br label %120

120:                                              ; preds = %119, %110
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #6
  %121 = load i32, ptr %23, align 4
  switch i32 %121, label %149 [
    i32 0, label %122
  ]

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122, %52
  %124 = load i32, ptr %13, align 4, !tbaa !8
  %125 = load ptr, ptr %6, align 8, !tbaa !11
  %126 = getelementptr inbounds nuw %struct.syntaxelement, ptr %125, i32 0, i32 3
  store i32 %124, ptr %126, align 4, !tbaa !16
  %127 = load i32, ptr %12, align 4, !tbaa !8
  %128 = load ptr, ptr %6, align 8, !tbaa !11
  %129 = getelementptr inbounds nuw %struct.syntaxelement, ptr %128, i32 0, i32 4
  store i32 %127, ptr %129, align 8, !tbaa !21
  %130 = load ptr, ptr %6, align 8, !tbaa !11
  %131 = call signext i32 @symbol2vlc(ptr noundef %130)
  %132 = load ptr, ptr %6, align 8, !tbaa !11
  %133 = load ptr, ptr %8, align 8, !tbaa !51
  %134 = getelementptr inbounds nuw %struct.datapartition, ptr %133, i32 0, i32 0
  %135 = load ptr, ptr %134, align 8, !tbaa !53
  call void @writeUVLC2buffer(ptr noundef %132, ptr noundef %135)
  %136 = load ptr, ptr %6, align 8, !tbaa !11
  %137 = getelementptr inbounds nuw %struct.syntaxelement, ptr %136, i32 0, i32 0
  %138 = load i32, ptr %137, align 8, !tbaa !56
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %123
  %141 = load ptr, ptr %8, align 8, !tbaa !51
  %142 = getelementptr inbounds nuw %struct.datapartition, ptr %141, i32 0, i32 0
  %143 = load ptr, ptr %142, align 8, !tbaa !53
  %144 = getelementptr inbounds nuw %struct.Bitstream, ptr %143, i32 0, i32 10
  store i32 1, ptr %144, align 8, !tbaa !57
  br label %145

145:                                              ; preds = %140, %123
  %146 = load ptr, ptr %6, align 8, !tbaa !11
  %147 = getelementptr inbounds nuw %struct.syntaxelement, ptr %146, i32 0, i32 3
  %148 = load i32, ptr %147, align 4, !tbaa !16
  store i32 %148, ptr %5, align 4
  store i32 1, ptr %23, align 4
  br label %149

149:                                              ; preds = %145, %120
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6
  %150 = load i32, ptr %5, align 4
  ret i32 %150
}

; Function Attrs: nounwind
define dso_local void @writeVlcByteAlign(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !10
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  %4 = getelementptr inbounds nuw %struct.Bitstream, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !25
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %52

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !10
  %9 = getelementptr inbounds nuw %struct.Bitstream, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !23
  %11 = zext i8 %10 to i32
  %12 = load ptr, ptr %2, align 8, !tbaa !10
  %13 = getelementptr inbounds nuw %struct.Bitstream, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !25
  %15 = shl i32 %11, %14
  %16 = load ptr, ptr %2, align 8, !tbaa !10
  %17 = getelementptr inbounds nuw %struct.Bitstream, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !25
  %19 = sub nsw i32 8, %18
  %20 = ashr i32 255, %19
  %21 = or i32 %15, %20
  %22 = trunc i32 %21 to i8
  %23 = load ptr, ptr %2, align 8, !tbaa !10
  %24 = getelementptr inbounds nuw %struct.Bitstream, ptr %23, i32 0, i32 2
  store i8 %22, ptr %24, align 8, !tbaa !23
  %25 = load ptr, ptr %2, align 8, !tbaa !10
  %26 = getelementptr inbounds nuw %struct.Bitstream, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !25
  %28 = sext i32 %27 to i64
  %29 = load ptr, ptr @stats, align 8, !tbaa !10
  %30 = getelementptr inbounds nuw %struct.StatParameters, ptr %29, i32 0, i32 24
  %31 = load ptr, ptr @img, align 8, !tbaa !10
  %32 = getelementptr inbounds nuw %struct.ImageParameters, ptr %31, i32 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !68
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x i64], ptr %30, i64 0, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !69
  %37 = add nsw i64 %36, %28
  store i64 %37, ptr %35, align 8, !tbaa !69
  %38 = load ptr, ptr %2, align 8, !tbaa !10
  %39 = getelementptr inbounds nuw %struct.Bitstream, ptr %38, i32 0, i32 2
  %40 = load i8, ptr %39, align 8, !tbaa !23
  %41 = load ptr, ptr %2, align 8, !tbaa !10
  %42 = getelementptr inbounds nuw %struct.Bitstream, ptr %41, i32 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !26
  %44 = load ptr, ptr %2, align 8, !tbaa !10
  %45 = getelementptr inbounds nuw %struct.Bitstream, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 8, !tbaa !27
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !27
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, ptr %43, i64 %48
  store i8 %40, ptr %49, align 1, !tbaa !28
  %50 = load ptr, ptr %2, align 8, !tbaa !10
  %51 = getelementptr inbounds nuw %struct.Bitstream, ptr %50, i32 0, i32 1
  store i32 8, ptr %51, align 4, !tbaa !25
  br label %52

52:                                               ; preds = %7, %1
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
!10 = !{!5, !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS13syntaxelement", !5, i64 0}
!13 = !{!14, !9, i64 4}
!14 = !{!"syntaxelement", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !5, i64 32}
!15 = !{!14, !9, i64 8}
!16 = !{!14, !9, i64 12}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 int", !5, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!14, !9, i64 16}
!22 = !{!14, !9, i64 20}
!23 = !{!24, !6, i64 8}
!24 = !{!"", !9, i64 0, !9, i64 4, !6, i64 8, !9, i64 12, !9, i64 16, !6, i64 20, !6, i64 21, !9, i64 24, !9, i64 28, !4, i64 32, !9, i64 40}
!25 = !{!24, !9, i64 4}
!26 = !{!24, !4, i64 32}
!27 = !{!24, !9, i64 0}
!28 = !{!6, !6, i64 0}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = !{!32, !9, i64 15536}
!32 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !33, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !34, i64 128, !34, i64 136, !9, i64 144, !36, i64 152, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !9, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !38, i64 14160, !36, i64 14168, !36, i64 14176, !36, i64 14184, !38, i64 14192, !38, i64 14200, !5, i64 14208, !5, i64 14216, !40, i64 14224, !18, i64 14232, !18, i64 14240, !9, i64 14248, !9, i64 14252, !9, i64 14256, !9, i64 14260, !6, i64 14264, !9, i64 14328, !9, i64 14332, !9, i64 14336, !9, i64 14340, !9, i64 14344, !41, i64 14352, !9, i64 14360, !9, i64 14364, !9, i64 14368, !9, i64 14372, !42, i64 14376, !42, i64 14384, !42, i64 14392, !42, i64 14400, !6, i64 14408, !9, i64 14440, !9, i64 14444, !9, i64 14448, !9, i64 14452, !9, i64 14456, !9, i64 14460, !9, i64 14464, !9, i64 14468, !6, i64 14472, !9, i64 15240, !9, i64 15244, !9, i64 15248, !9, i64 15252, !9, i64 15256, !9, i64 15260, !9, i64 15264, !9, i64 15268, !9, i64 15272, !9, i64 15276, !9, i64 15280, !9, i64 15284, !9, i64 15288, !6, i64 15292, !9, i64 15296, !9, i64 15300, !6, i64 15304, !9, i64 15312, !9, i64 15316, !9, i64 15320, !9, i64 15324, !9, i64 15328, !9, i64 15332, !9, i64 15336, !9, i64 15340, !9, i64 15344, !9, i64 15348, !9, i64 15352, !9, i64 15356, !9, i64 15360, !9, i64 15364, !9, i64 15368, !9, i64 15372, !45, i64 15376, !9, i64 15384, !9, i64 15388, !9, i64 15392, !9, i64 15396, !9, i64 15400, !9, i64 15404, !9, i64 15408, !9, i64 15412, !9, i64 15416, !9, i64 15420, !9, i64 15424, !9, i64 15428, !9, i64 15432, !9, i64 15436, !9, i64 15440, !9, i64 15444, !9, i64 15448, !9, i64 15452, !9, i64 15456, !9, i64 15460, !9, i64 15464, !9, i64 15468, !9, i64 15472, !46, i64 15480, !47, i64 15488, !36, i64 15496, !46, i64 15504, !9, i64 15512, !9, i64 15516, !9, i64 15520, !9, i64 15524, !9, i64 15528, !9, i64 15532, !9, i64 15536, !9, i64 15540, !9, i64 15544, !9, i64 15548, !6, i64 15552, !6, i64 15576, !9, i64 15584, !9, i64 15588, !48, i64 15592, !9, i64 15596, !9, i64 15600, !9, i64 15604, !9, i64 15608, !9, i64 15612}
!33 = !{!"float", !6, i64 0}
!34 = !{!"p2 omnipotent char", !35, i64 0}
!35 = !{!"any p2 pointer", !5, i64 0}
!36 = !{!"p3 int", !37, i64 0}
!37 = !{!"any p3 pointer", !35, i64 0}
!38 = !{!"p4 int", !39, i64 0}
!39 = !{!"any p4 pointer", !37, i64 0}
!40 = !{!"p1 _ZTS10macroblock", !5, i64 0}
!41 = !{!"double", !6, i64 0}
!42 = !{!"p6 short", !43, i64 0}
!43 = !{!"any p6 pointer", !44, i64 0}
!44 = !{!"any p5 pointer", !39, i64 0}
!45 = !{!"p1 _ZTS18DecRefPicMarking_s", !5, i64 0}
!46 = !{!"p2 double", !35, i64 0}
!47 = !{!"p3 double", !37, i64 0}
!48 = !{!"short", !6, i64 0}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = !{!52, !52, i64 0}
!52 = !{!"p1 _ZTS13datapartition", !5, i64 0}
!53 = !{!54, !5, i64 0}
!54 = !{!"datapartition", !5, i64 0, !55, i64 8, !55, i64 56}
!55 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !4, i64 24, !18, i64 32, !9, i64 40, !9, i64 44}
!56 = !{!14, !9, i64 0}
!57 = !{!24, !9, i64 40}
!58 = !{!32, !40, i64 14224}
!59 = !{!32, !9, i64 12}
!60 = !{!40, !40, i64 0}
!61 = !{!62, !9, i64 72}
!62 = !{!"macroblock", !9, i64 0, !9, i64 4, !9, i64 8, !6, i64 12, !9, i64 20, !6, i64 24, !40, i64 56, !40, i64 64, !9, i64 72, !6, i64 76, !6, i64 332, !6, i64 348, !9, i64 364, !63, i64 368, !6, i64 376, !6, i64 392, !63, i64 408, !9, i64 416, !9, i64 420, !9, i64 424, !9, i64 428, !9, i64 432, !9, i64 436, !9, i64 440, !9, i64 444, !9, i64 448, !9, i64 452, !9, i64 456, !9, i64 460, !9, i64 464, !9, i64 468, !9, i64 472, !9, i64 476, !48, i64 480, !41, i64 488, !9, i64 496, !9, i64 500, !9, i64 504, !9, i64 508, !9, i64 512, !9, i64 516, !9, i64 520, !9, i64 524, !9, i64 528}
!63 = !{!"long long", !6, i64 0}
!64 = !{!14, !5, i64 32}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = !{!32, !9, i64 20}
!69 = !{!63, !63, i64 0}
