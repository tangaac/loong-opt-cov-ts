; ModuleID = './MultiSource/Applications/d/CMakeFiles/make_dparser.dir/grammar.g.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/d/grammar.g.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.SB_uint8 = type { ptr, [4 x ptr] }
%struct.SB_trans_uint8 = type { [4 x ptr] }
%struct.D_ParseNode = type { i32, %struct.d_loc_t, ptr, ptr, ptr, ptr, ptr, %struct.ParseNode_User }
%struct.d_loc_t = type { ptr, ptr, i32, i32, i32 }
%struct.ParseNode_User = type { ptr, ptr, ptr, i32 }
%struct.Grammar = type { ptr, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.Code, ptr, i32, %struct.anon.2, %struct.anon.3, ptr, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.0 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.1 = type { i32, i32, ptr, [3 x ptr] }
%struct.Code = type { ptr, i32 }
%struct.anon.2 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.3 = type { i32, i32, ptr, [3 x ptr] }
%struct.Production = type { ptr, i32, %struct.anon.4, i32, i8, ptr, [8 x ptr], [8 x ptr], ptr, ptr, ptr, ptr }
%struct.anon.4 = type { i32, i32, ptr, [3 x ptr] }
%struct.Rule = type { i32, ptr, i32, i32, i32, i32, %struct.anon.5, ptr, %struct.Code, %struct.Code, %struct.anon.6, i32, ptr }
%struct.anon.5 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.6 = type { i32, i32, ptr, [3 x ptr] }
%struct.Elem = type { i32, i32, ptr, %union.anon }
%union.anon = type { %struct.Unresolved }
%struct.Unresolved = type { ptr, i32 }
%struct.Term = type { i32, i32, i32, i32, i32, ptr, i32, i8, ptr }

@d_reduction_0_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 0, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_1_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 1, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_2_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 2, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_3_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 3, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_4_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 3, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_5_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 4, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_6_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 5, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_7_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 5, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_8_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 6, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_9_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 6, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_10_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 7, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_7_10_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_11_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 3, i16 7, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_7_11_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_12_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 4, i16 7, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_7_12_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_13_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 3, i16 7, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_14_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 7, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_7_14_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_15_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 4, i16 7, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_7_15_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_16_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 8, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_17_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 8, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_18_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 9, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_19_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 9, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_20_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 10, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_21_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 10, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_22_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 11, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_23_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 11, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_11_23_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_24_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 12, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_12_24_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_25_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 12, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_12_25_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_26_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 12, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_12_26_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_27_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 12, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_12_27_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_28_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 12, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_12_28_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_29_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 13, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_13_29_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_30_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 13, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_13_30_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_31_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 13, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_13_31_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_32_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 13, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_13_32_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_33_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 13, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_13_33_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_34_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 13, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_13_34_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_35_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 13, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_13_35_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_36_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 13, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_13_36_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_37_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 14, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_14_37_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_38_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 4, i16 15, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_40_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 15, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_41_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 16, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_16_41_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_42_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 17, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_17_42_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_43_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 18, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_45_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 19, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_46_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 20, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_47_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 20, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_48_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 21, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_49_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 4, i16 22, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_22_49_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_50_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 23, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_51_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 23, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_52_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 24, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_53_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 24, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_54_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 3, i16 25, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_55_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 26, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_56_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 26, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_57_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 27, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_58_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 27, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_59_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 28, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_60_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 29, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_61_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 29, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_62_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 30, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_30_62_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_63_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 31, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_31_63_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_64_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 31, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_31_64_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_65_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 31, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_31_65_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_66_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 3, i16 31, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_31_66_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_67_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 4, i16 31, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_31_67_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_68_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 32, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_69_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 32, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_70_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 33, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_71_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 33, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_33_71_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_72_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 33, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_33_72_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_73_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 34, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_34_73_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@.str = private unnamed_addr constant [34 x i8] c"terminal priority on non-terminal\00", align 1
@d_reduction_74_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 35, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_35_74_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"ignore-case (/i) on non-terminal\00", align 1
@d_reduction_75_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 35, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_35_75_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_76_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 35, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_35_76_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_77_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 35, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_35_77_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_78_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 35, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_35_78_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_79_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 36, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_80_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 37, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_37_80_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_81_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 37, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_37_81_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_82_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 37, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_37_82_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_83_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 37, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_37_83_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_84_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 37, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_37_84_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_85_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 37, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_37_85_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_86_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 37, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_37_86_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_87_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 37, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_37_87_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_88_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 37, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_37_88_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_89_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 37, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_37_89_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_90_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 38, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_38_90_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_91_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 3, i16 39, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_92_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 40, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_93_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 40, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_94_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 41, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_95_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 41, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_96_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 42, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_97_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 42, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_98_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 43, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_43_98_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_99_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 44, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_44_99_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_100_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 3, i16 45, [4 x i8] zeroinitializer, ptr null, ptr @d_final_reduction_code_45_100_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_101_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 3, i16 46, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_102_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 47, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_103_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 47, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_104_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 3, i16 48, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_105_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 49, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_106_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 49, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_107_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 3, i16 50, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_110_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 50, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_115_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 51, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_116_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 51, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_117_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 52, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_118_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 52, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_119_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 2, i16 53, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_120_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 0, i16 53, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_121_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 54, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_122_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 55, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_123_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 56, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_124_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 57, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_125_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 58, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_128_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 59, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_129_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 60, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_reduction_130_dparser_gram = dso_local global { i16, i16, [4 x i8], ptr, ptr, i16, i16, i32, i32, i32, i32, [4 x i8], ptr } { i16 1, i16 61, [4 x i8] zeroinitializer, ptr null, ptr null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_0_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 62, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_1_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 63, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_2_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 64, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_3_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 65, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_4_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 66, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_5_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 67, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_6_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 68, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_7_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 69, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_8_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 70, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_9_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 71, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_10_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 72, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_11_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 73, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_12_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 74, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_13_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 75, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_14_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 76, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_15_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 77, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_16_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 78, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_17_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 79, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_18_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 80, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_19_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 81, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_20_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 82, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_21_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 83, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_22_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 84, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_23_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 85, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_24_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 86, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_25_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 87, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_26_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 88, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_27_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 89, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_28_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 90, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_29_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 91, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_30_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 92, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_31_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 93, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_32_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 94, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_33_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 95, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_34_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 96, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_35_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 97, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_36_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 98, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_37_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 99, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_38_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 100, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_39_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 101, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_40_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 102, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_41_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 103, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_42_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 104, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_43_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 105, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_44_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 106, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_45_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 107, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_46_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 108, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_47_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 109, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_48_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 110, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_49_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 111, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_50_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 112, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_51_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 113, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_52_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 114, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_53_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 115, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_54_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 116, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_55_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 117, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_56_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 118, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_57_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 119, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_58_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 120, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_59_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 121, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_60_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 122, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_61_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 123, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_62_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 124, i8 0, i8 0, i32 0, i32 -1, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_63_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 125, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_64_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 126, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shift_65_dparser_gram = dso_local global { i16, i8, i8, i32, i32, [4 x i8], ptr } { i16 127, i8 0, i8 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null }, align 8
@d_shifts_3_dparser_gram = dso_local global [10 x ptr] [ptr @d_shift_0_dparser_gram, ptr @d_shift_2_dparser_gram, ptr @d_shift_4_dparser_gram, ptr @d_shift_6_dparser_gram, ptr @d_shift_7_dparser_gram, ptr @d_shift_23_dparser_gram, ptr @d_shift_27_dparser_gram, ptr @d_shift_49_dparser_gram, ptr @d_shift_62_dparser_gram, ptr null], align 8
@d_accepts_diff_3_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_3_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_27_dparser_gram, ptr null], align 8
@d_accepts_diff_3_dparser_gram = dso_local global [2 x ptr] [ptr @d_accepts_diff_3_0_dparser_gram, ptr @d_accepts_diff_3_1_dparser_gram], align 8
@d_scanner_3_0_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00", align 1
@d_accepts_diff_3_0_0_dparser_gram = dso_local global [64 x i8] zeroinitializer, align 1
@d_scanner_3_0_1_dparser_gram = dso_local global [64 x i8] c"\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\00\00\00\00\05\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\06\00\00\00\00", align 1
@d_scanner_3_0_2_dparser_gram = dso_local global [64 x i8] zeroinitializer, align 1
@d_scanner_3_1_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\00", align 1
@d_shift_3_2_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_23_dparser_gram, ptr null], align 8
@d_scanner_3_3_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\04\04\04\04\04\04\04\04\00\00\00\00\00\00", align 1
@d_scanner_3_3_1_dparser_gram = dso_local global [64 x i8] c"\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\00\00\00\00\04\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\00\00\00\00\00", align 1
@d_shift_3_3_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_62_dparser_gram, ptr null], align 8
@d_accepts_diff_3_4_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00", align 1
@d_accepts_diff_3_4_1_dparser_gram = dso_local global [64 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00", align 1
@d_shift_3_4_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_27_dparser_gram, ptr null], align 8
@d_shift_3_5_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_49_dparser_gram, ptr null], align 8
@d_scanner_3_6_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\09\00\00\00\00\00\00\00\00\00\00\00\0A\00\00\0B\0C", [11 x i8] zeroinitializer }>, align 1
@d_scanner_3_7_1_dparser_gram = dso_local global <{ [36 x i8], [28 x i8] }> <{ [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0D", [28 x i8] zeroinitializer }>, align 1
@d_scanner_3_8_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0E", [26 x i8] zeroinitializer }>, align 1
@d_scanner_3_9_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0F", [30 x i8] zeroinitializer }>, align 1
@d_scanner_3_10_1_dparser_gram = dso_local global <{ [36 x i8], [28 x i8] }> <{ [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10", [28 x i8] zeroinitializer }>, align 1
@d_scanner_3_11_1_dparser_gram = dso_local global <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11", [16 x i8] zeroinitializer }>, align 1
@d_scanner_3_12_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12", [11 x i8] zeroinitializer }>, align 1
@d_scanner_3_13_1_dparser_gram = dso_local global <{ [36 x i8], [28 x i8] }> <{ [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\13", [28 x i8] zeroinitializer }>, align 1
@d_scanner_3_14_1_dparser_gram = dso_local global <{ [52 x i8], [12 x i8] }> <{ [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14", [12 x i8] zeroinitializer }>, align 1
@d_scanner_3_15_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15", [30 x i8] zeroinitializer }>, align 1
@d_scanner_3_16_1_dparser_gram = dso_local global <{ [44 x i8], [20 x i8] }> <{ [44 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16", [20 x i8] zeroinitializer }>, align 1
@d_scanner_3_17_1_dparser_gram = dso_local global <{ [42 x i8], [22 x i8] }> <{ [42 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\17", [22 x i8] zeroinitializer }>, align 1
@d_scanner_3_18_1_dparser_gram = dso_local global <{ [45 x i8], [19 x i8] }> <{ [45 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18", [19 x i8] zeroinitializer }>, align 1
@d_scanner_3_19_1_dparser_gram = dso_local global <{ [52 x i8], [12 x i8] }> <{ [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19", [12 x i8] zeroinitializer }>, align 1
@d_scanner_3_20_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A", [17 x i8] zeroinitializer }>, align 1
@d_scanner_3_21_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1B", [26 x i8] zeroinitializer }>, align 1
@d_scanner_3_22_1_dparser_gram = dso_local global <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1C", [16 x i8] zeroinitializer }>, align 1
@d_scanner_3_23_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1D", [30 x i8] zeroinitializer }>, align 1
@d_shift_3_24_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_7_dparser_gram, ptr null], align 8
@d_scanner_3_25_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1E", [17 x i8] zeroinitializer }>, align 1
@d_scanner_3_26_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1F", [17 x i8] zeroinitializer }>, align 1
@d_scanner_3_27_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 ", [17 x i8] zeroinitializer }>, align 1
@d_scanner_3_28_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!", [13 x i8] zeroinitializer }>, align 1
@d_scanner_3_29_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\22", [26 x i8] zeroinitializer }>, align 1
@d_shift_3_30_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_4_dparser_gram, ptr null], align 8
@d_scanner_3_31_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00#\00\00", align 1
@d_scanner_3_32_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00$", [26 x i8] zeroinitializer }>, align 1
@d_scanner_3_33_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00%", [13 x i8] zeroinitializer }>, align 1
@d_shift_3_34_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_6_dparser_gram, ptr null], align 8
@d_shift_3_35_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_2_dparser_gram, ptr null], align 8
@d_shift_3_36_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_0_dparser_gram, ptr null], align 8
@d_shifts_4_dparser_gram = dso_local global [11 x ptr] [ptr @d_shift_31_dparser_gram, ptr @d_shift_49_dparser_gram, ptr @d_shift_51_dparser_gram, ptr @d_shift_59_dparser_gram, ptr @d_shift_60_dparser_gram, ptr @d_shift_61_dparser_gram, ptr @d_shift_62_dparser_gram, ptr @d_shift_63_dparser_gram, ptr @d_shift_64_dparser_gram, ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_4_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_4_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_59_dparser_gram, ptr null], align 8
@d_accepts_diff_4_2_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_4_dparser_gram = dso_local global [3 x ptr] [ptr @d_accepts_diff_4_0_dparser_gram, ptr @d_accepts_diff_4_1_dparser_gram, ptr @d_accepts_diff_4_2_dparser_gram], align 8
@d_scanner_4_0_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\03\02\02\02\02\04\05\00\02\02\02\06\02\02\07\08\08\08\08\08\08\08\08\08\02\02\02\02\02\02", align 1
@d_scanner_4_0_1_dparser_gram = dso_local global [64 x i8] c"\02\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\02\00\02\0B\02\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0C\02\00\02\00", align 1
@d_shift_4_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_59_dparser_gram, ptr null], align 8
@d_scanner_4_2_0_dparser_gram = dso_local global [64 x i8] c"\00\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 1
@d_scanner_4_2_1_dparser_gram = dso_local global [64 x i8] c"\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 1
@d_scanner_4_2_2_dparser_gram = dso_local global [64 x i8] c"\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 1
@d_scanner_4_3_0_dparser_gram = dso_local global [64 x i8] c"\00\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\11\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10", align 1
@d_scanner_4_3_1_dparser_gram = dso_local global [64 x i8] c"\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\12\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10", align 1
@d_scanner_4_3_2_dparser_gram = dso_local global [64 x i8] c"\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10", align 1
@d_shift_4_4_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_31_dparser_gram, ptr null], align 8
@d_scanner_4_5_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\08\08\08\08\08\08\08\08\08\00\00\00\00\00\00", align 1
@d_shift_4_5_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_59_dparser_gram, ptr null], align 8
@d_scanner_4_6_0_dparser_gram = dso_local global <{ [56 x i8], [8 x i8] }> <{ [56 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\13\13\13\13\13\13\13\13", [8 x i8] zeroinitializer }>, align 1
@d_scanner_4_6_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\14\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\14\00\00\16\00\00\00\00\00\00\00", align 1
@d_accepts_diff_4_6_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", align 1
@d_shift_4_6_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_scanner_4_7_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\08\08\00\00\00\00\00\00", align 1
@d_scanner_4_7_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\00\17", [10 x i8] zeroinitializer }>, align 1
@d_shift_4_7_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_63_dparser_gram, ptr null], align 8
@d_scanner_4_8_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\09\09\09\09\09\09\09\09\09\00\00\00\00\00\00", align 1
@d_scanner_4_8_1_dparser_gram = dso_local global [64 x i8] c"\00\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\00\00\00\00\09\00\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\00\00\00\00\00", align 1
@d_shift_4_9_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_51_dparser_gram, ptr null], align 8
@d_shift_4_10_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_59_dparser_gram, ptr null], align 8
@d_shift_4_13_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_61_dparser_gram, ptr null], align 8
@d_scanner_4_14_0_dparser_gram = dso_local global [64 x i8] c"\00\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 1
@d_scanner_4_14_1_dparser_gram = dso_local global [64 x i8] c"\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 1
@d_shift_4_16_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_60_dparser_gram, ptr null], align 8
@d_scanner_4_17_0_dparser_gram = dso_local global [64 x i8] c"\00\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19", align 1
@d_scanner_4_17_1_dparser_gram = dso_local global [64 x i8] c"\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19", align 1
@d_scanner_4_18_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\14", [10 x i8] zeroinitializer }>, align 1
@d_shift_4_18_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_shift_4_19_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_scanner_4_20_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\00\00\00\00\00\00", align 1
@d_scanner_4_20_1_dparser_gram = dso_local global <{ [39 x i8], [25 x i8] }> <{ [39 x i8] c"\00\1A\1A\1A\1A\1A\1A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\1A\1A\1A\1A\1A", [25 x i8] zeroinitializer }>, align 1
@d_shift_4_22_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_63_dparser_gram, ptr null], align 8
@d_scanner_4_25_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\1A\1A\1A\1A\1A\1A\00\00\00\00\00\1B\00\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00\00\00\00\00\1A\1A\1A\1A\1A\1A\00\00\00\00\00\1B\00\00\00\00\00\00\00\00\1B", [10 x i8] zeroinitializer }>, align 1
@d_shift_4_25_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_64_dparser_gram, ptr null], align 8
@d_shift_4_26_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_64_dparser_gram, ptr null], align 8
@d_shifts_5_dparser_gram = dso_local global [9 x ptr] [ptr @d_shift_14_dparser_gram, ptr @d_shift_15_dparser_gram, ptr @d_shift_16_dparser_gram, ptr @d_shift_17_dparser_gram, ptr @d_shift_18_dparser_gram, ptr @d_shift_19_dparser_gram, ptr @d_shift_20_dparser_gram, ptr @d_shift_21_dparser_gram, ptr null], align 8
@d_accepts_diff_5_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_5_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_5_0_dparser_gram], align 8
@d_scanner_5_0_1_dparser_gram = dso_local global <{ [56 x i8], [8 x i8] }> <{ [56 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\04\05\00\00\06", [8 x i8] zeroinitializer }>, align 1
@d_scanner_5_1_1_dparser_gram = dso_local global <{ [45 x i8], [19 x i8] }> <{ [45 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07", [19 x i8] zeroinitializer }>, align 1
@d_scanner_5_2_1_dparser_gram = dso_local global <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08", [16 x i8] zeroinitializer }>, align 1
@d_scanner_5_3_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B", [10 x i8] zeroinitializer }>, align 1
@d_scanner_5_4_1_dparser_gram = dso_local global <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C", [16 x i8] zeroinitializer }>, align 1
@d_scanner_5_5_1_dparser_gram = dso_local global <{ [41 x i8], [23 x i8] }> <{ [41 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0D", [23 x i8] zeroinitializer }>, align 1
@d_scanner_5_6_1_dparser_gram = dso_local global <{ [45 x i8], [19 x i8] }> <{ [45 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0E", [19 x i8] zeroinitializer }>, align 1
@d_scanner_5_7_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0F", [17 x i8] zeroinitializer }>, align 1
@d_scanner_5_8_1_dparser_gram = dso_local global <{ [55 x i8], [9 x i8] }> <{ [55 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10", [9 x i8] zeroinitializer }>, align 1
@d_scanner_5_9_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11", [11 x i8] zeroinitializer }>, align 1
@d_scanner_5_10_1_dparser_gram = dso_local global <{ [35 x i8], [29 x i8] }> <{ [35 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12", [29 x i8] zeroinitializer }>, align 1
@d_scanner_5_11_1_dparser_gram = dso_local global <{ [44 x i8], [20 x i8] }> <{ [44 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\13", [20 x i8] zeroinitializer }>, align 1
@d_scanner_5_12_1_dparser_gram = dso_local global <{ [42 x i8], [22 x i8] }> <{ [42 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14", [22 x i8] zeroinitializer }>, align 1
@d_scanner_5_13_1_dparser_gram = dso_local global <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15", [32 x i8] zeroinitializer }>, align 1
@d_scanner_5_14_1_dparser_gram = dso_local global <{ [40 x i8], [24 x i8] }> <{ [40 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16", [24 x i8] zeroinitializer }>, align 1
@d_scanner_5_15_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\17", [26 x i8] zeroinitializer }>, align 1
@d_scanner_5_16_1_dparser_gram = dso_local global <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18", [32 x i8] zeroinitializer }>, align 1
@d_scanner_5_17_1_dparser_gram = dso_local global <{ [49 x i8], [15 x i8] }> <{ [49 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19", [15 x i8] zeroinitializer }>, align 1
@d_scanner_5_18_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A", [26 x i8] zeroinitializer }>, align 1
@d_scanner_5_19_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1B", [11 x i8] zeroinitializer }>, align 1
@d_scanner_5_20_1_dparser_gram = dso_local global <{ [52 x i8], [12 x i8] }> <{ [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1C\00\00\00\00\00\1D", [12 x i8] zeroinitializer }>, align 1
@d_scanner_5_21_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1E", [26 x i8] zeroinitializer }>, align 1
@d_scanner_5_22_1_dparser_gram = dso_local global <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1F", [32 x i8] zeroinitializer }>, align 1
@d_scanner_5_23_1_dparser_gram = dso_local global <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 ", [16 x i8] zeroinitializer }>, align 1
@d_scanner_5_24_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!", [30 x i8] zeroinitializer }>, align 1
@d_scanner_5_25_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\22", [17 x i8] zeroinitializer }>, align 1
@d_scanner_5_26_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00#", [26 x i8] zeroinitializer }>, align 1
@d_scanner_5_27_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00$", [30 x i8] zeroinitializer }>, align 1
@d_scanner_5_28_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00%", [10 x i8] zeroinitializer }>, align 1
@d_scanner_5_29_1_dparser_gram = dso_local global <{ [52 x i8], [12 x i8] }> <{ [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00&", [12 x i8] zeroinitializer }>, align 1
@d_scanner_5_30_1_dparser_gram = dso_local global <{ [49 x i8], [15 x i8] }> <{ [49 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00'", [15 x i8] zeroinitializer }>, align 1
@d_scanner_5_31_1_dparser_gram = dso_local global <{ [49 x i8], [15 x i8] }> <{ [49 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00(", [15 x i8] zeroinitializer }>, align 1
@d_scanner_5_32_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00)", [13 x i8] zeroinitializer }>, align 1
@d_scanner_5_33_1_dparser_gram = dso_local global <{ [42 x i8], [22 x i8] }> <{ [42 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*", [22 x i8] zeroinitializer }>, align 1
@d_scanner_5_34_1_dparser_gram = dso_local global <{ [52 x i8], [12 x i8] }> <{ [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00+", [12 x i8] zeroinitializer }>, align 1
@d_scanner_5_35_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00,", [11 x i8] zeroinitializer }>, align 1
@d_scanner_5_36_1_dparser_gram = dso_local global <{ [35 x i8], [29 x i8] }> <{ [35 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00-", [29 x i8] zeroinitializer }>, align 1
@d_scanner_5_37_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00.", [11 x i8] zeroinitializer }>, align 1
@d_scanner_5_38_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00/", [30 x i8] zeroinitializer }>, align 1
@d_scanner_5_39_1_dparser_gram = dso_local global <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\000", [32 x i8] zeroinitializer }>, align 1
@d_scanner_5_40_1_dparser_gram = dso_local global <{ [52 x i8], [12 x i8] }> <{ [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\001", [12 x i8] zeroinitializer }>, align 1
@d_scanner_5_41_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\002\00\00\00\00\00", align 1
@d_scanner_5_42_1_dparser_gram = dso_local global <{ [49 x i8], [15 x i8] }> <{ [49 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\003", [15 x i8] zeroinitializer }>, align 1
@d_scanner_5_43_1_dparser_gram = dso_local global <{ [36 x i8], [28 x i8] }> <{ [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\004", [28 x i8] zeroinitializer }>, align 1
@d_scanner_5_44_1_dparser_gram = dso_local global <{ [49 x i8], [15 x i8] }> <{ [49 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\005", [15 x i8] zeroinitializer }>, align 1
@d_scanner_5_45_1_dparser_gram = dso_local global <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\006", [32 x i8] zeroinitializer }>, align 1
@d_scanner_5_46_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\007", [13 x i8] zeroinitializer }>, align 1
@d_scanner_5_47_1_dparser_gram = dso_local global <{ [49 x i8], [15 x i8] }> <{ [49 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\008", [15 x i8] zeroinitializer }>, align 1
@d_scanner_5_48_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\009", [26 x i8] zeroinitializer }>, align 1
@d_scanner_5_49_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00:", [26 x i8] zeroinitializer }>, align 1
@d_scanner_5_50_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00;", [30 x i8] zeroinitializer }>, align 1
@d_scanner_5_51_1_dparser_gram = dso_local global <{ [41 x i8], [23 x i8] }> <{ [41 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00<", [23 x i8] zeroinitializer }>, align 1
@d_scanner_5_52_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00=", [30 x i8] zeroinitializer }>, align 1
@d_scanner_5_53_1_dparser_gram = dso_local global <{ [46 x i8], [18 x i8] }> <{ [46 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00>", [18 x i8] zeroinitializer }>, align 1
@d_scanner_5_54_1_dparser_gram = dso_local global <{ [52 x i8], [12 x i8] }> <{ [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00?", [12 x i8] zeroinitializer }>, align 1
@d_scanner_5_55_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@", [13 x i8] zeroinitializer }>, align 1
@d_scanner_5_56_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00A", [13 x i8] zeroinitializer }>, align 1
@d_shift_5_57_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_14_dparser_gram, ptr null], align 8
@d_scanner_5_58_1_dparser_gram = dso_local global <{ [36 x i8], [28 x i8] }> <{ [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00B", [28 x i8] zeroinitializer }>, align 1
@d_scanner_5_59_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00C", [26 x i8] zeroinitializer }>, align 1
@d_scanner_5_60_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00D", [13 x i8] zeroinitializer }>, align 1
@d_scanner_5_61_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00E", [30 x i8] zeroinitializer }>, align 1
@d_scanner_5_62_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00F", [26 x i8] zeroinitializer }>, align 1
@d_scanner_5_63_1_dparser_gram = dso_local global <{ [42 x i8], [22 x i8] }> <{ [42 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00G", [22 x i8] zeroinitializer }>, align 1
@d_shift_5_64_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_20_dparser_gram, ptr null], align 8
@d_scanner_5_65_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00H", [26 x i8] zeroinitializer }>, align 1
@d_scanner_5_66_1_dparser_gram = dso_local global <{ [52 x i8], [12 x i8] }> <{ [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00I", [12 x i8] zeroinitializer }>, align 1
@d_scanner_5_67_1_dparser_gram = dso_local global <{ [52 x i8], [12 x i8] }> <{ [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00J", [12 x i8] zeroinitializer }>, align 1
@d_scanner_5_68_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00K", [11 x i8] zeroinitializer }>, align 1
@d_scanner_5_69_1_dparser_gram = dso_local global <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00L", [32 x i8] zeroinitializer }>, align 1
@d_scanner_5_70_1_dparser_gram = dso_local global <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00M", [16 x i8] zeroinitializer }>, align 1
@d_shift_5_71_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_16_dparser_gram, ptr null], align 8
@d_shift_5_72_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_17_dparser_gram, ptr null], align 8
@d_scanner_5_73_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00N", [26 x i8] zeroinitializer }>, align 1
@d_scanner_5_74_1_dparser_gram = dso_local global <{ [36 x i8], [28 x i8] }> <{ [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00O", [28 x i8] zeroinitializer }>, align 1
@d_scanner_5_75_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00P", [11 x i8] zeroinitializer }>, align 1
@d_scanner_5_76_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00Q", [13 x i8] zeroinitializer }>, align 1
@d_scanner_5_77_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00R", [13 x i8] zeroinitializer }>, align 1
@d_scanner_5_78_1_dparser_gram = dso_local global <{ [41 x i8], [23 x i8] }> <{ [41 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00S", [23 x i8] zeroinitializer }>, align 1
@d_scanner_5_79_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00T", [13 x i8] zeroinitializer }>, align 1
@d_scanner_5_80_1_dparser_gram = dso_local global <{ [42 x i8], [22 x i8] }> <{ [42 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00U", [22 x i8] zeroinitializer }>, align 1
@d_scanner_5_81_1_dparser_gram = dso_local global <{ [52 x i8], [12 x i8] }> <{ [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00V", [12 x i8] zeroinitializer }>, align 1
@d_shift_5_82_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_15_dparser_gram, ptr null], align 8
@d_scanner_5_83_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00W", [26 x i8] zeroinitializer }>, align 1
@d_scanner_5_84_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00X", [11 x i8] zeroinitializer }>, align 1
@d_shift_5_85_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_19_dparser_gram, ptr null], align 8
@d_scanner_5_86_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00Y", [26 x i8] zeroinitializer }>, align 1
@d_scanner_5_87_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00Z\00\00\00\00\00\00", align 1
@d_shift_5_88_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_21_dparser_gram, ptr null], align 8
@d_scanner_5_89_1_dparser_gram = dso_local global <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00[", [32 x i8] zeroinitializer }>, align 1
@d_scanner_5_90_1_dparser_gram = dso_local global <{ [39 x i8], [25 x i8] }> <{ [39 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\\", [25 x i8] zeroinitializer }>, align 1
@d_scanner_5_91_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00]", [13 x i8] zeroinitializer }>, align 1
@d_scanner_5_92_1_dparser_gram = dso_local global <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00^", [16 x i8] zeroinitializer }>, align 1
@d_scanner_5_93_1_dparser_gram = dso_local global <{ [46 x i8], [18 x i8] }> <{ [46 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00_", [18 x i8] zeroinitializer }>, align 1
@d_scanner_5_94_1_dparser_gram = dso_local global <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00`", [32 x i8] zeroinitializer }>, align 1
@d_scanner_5_95_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00a", [13 x i8] zeroinitializer }>, align 1
@d_scanner_5_96_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00b", [10 x i8] zeroinitializer }>, align 1
@d_scanner_5_97_1_dparser_gram = dso_local global <{ [45 x i8], [19 x i8] }> <{ [45 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00c", [19 x i8] zeroinitializer }>, align 1
@d_scanner_5_98_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00d", [26 x i8] zeroinitializer }>, align 1
@d_shift_5_99_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_18_dparser_gram, ptr null], align 8
@d_shifts_6_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_62_dparser_gram, ptr null], align 8
@d_accepts_diff_6_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_6_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_6_0_dparser_gram], align 8
@d_scanner_6_0_1_dparser_gram = dso_local global [64 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\00\00\00\00\02\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\00\00\00\00\00", align 1
@d_scanner_6_1_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\00\00\00\00\00\00", align 1
@d_accepts_diff_8_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_8_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_8_0_dparser_gram], align 8
@d_shifts_13_dparser_gram = dso_local global [4 x ptr] [ptr @d_shift_23_dparser_gram, ptr @d_shift_27_dparser_gram, ptr @d_shift_62_dparser_gram, ptr null], align 8
@d_accepts_diff_13_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_13_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_27_dparser_gram, ptr null], align 8
@d_accepts_diff_13_dparser_gram = dso_local global [2 x ptr] [ptr @d_accepts_diff_13_0_dparser_gram, ptr @d_accepts_diff_13_1_dparser_gram], align 8
@d_scanner_13_0_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00", align 1
@d_scanner_13_0_1_dparser_gram = dso_local global [64 x i8] c"\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\00\00\00\04\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\00\00\00\00", align 1
@d_scanner_13_2_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\03\03\03\03\03\03\03\03\03\00\00\00\00\00\00", align 1
@d_scanner_13_2_1_dparser_gram = dso_local global [64 x i8] c"\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\00\00\00\03\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\00\00\00\00", align 1
@d_shifts_17_dparser_gram = dso_local global [3 x ptr] [ptr @d_shift_22_dparser_gram, ptr @d_shift_26_dparser_gram, ptr null], align 8
@d_accepts_diff_17_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_17_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_22_dparser_gram, ptr null], align 8
@d_accepts_diff_17_dparser_gram = dso_local global [2 x ptr] [ptr @d_accepts_diff_17_0_dparser_gram, ptr @d_accepts_diff_17_1_dparser_gram], align 8
@d_scanner_17_0_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00", align 1
@d_scanner_17_1_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00", align 1
@d_accepts_diff_17_1_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00", align 1
@d_shift_17_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_22_dparser_gram, ptr null], align 8
@d_scanner_17_2_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00", align 1
@d_shift_17_3_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_26_dparser_gram, ptr null], align 8
@d_shifts_30_dparser_gram = dso_local global [12 x ptr] [ptr @d_shift_1_dparser_gram, ptr @d_shift_31_dparser_gram, ptr @d_shift_49_dparser_gram, ptr @d_shift_51_dparser_gram, ptr @d_shift_59_dparser_gram, ptr @d_shift_60_dparser_gram, ptr @d_shift_61_dparser_gram, ptr @d_shift_62_dparser_gram, ptr @d_shift_63_dparser_gram, ptr @d_shift_64_dparser_gram, ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_30_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_30_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_59_dparser_gram, ptr null], align 8
@d_accepts_diff_30_2_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_30_dparser_gram = dso_local global [3 x ptr] [ptr @d_accepts_diff_30_0_dparser_gram, ptr @d_accepts_diff_30_1_dparser_gram, ptr @d_accepts_diff_30_2_dparser_gram], align 8
@d_scanner_30_0_1_dparser_gram = dso_local global [64 x i8] c"\02\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\02\00\02\0B\02\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0C\02\0D\02\00", align 1
@d_scanner_30_2_0_dparser_gram = dso_local global [64 x i8] c"\00\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E", align 1
@d_scanner_30_2_1_dparser_gram = dso_local global [64 x i8] c"\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\10\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E", align 1
@d_scanner_30_2_2_dparser_gram = dso_local global [64 x i8] c"\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E", align 1
@d_scanner_30_3_0_dparser_gram = dso_local global [64 x i8] c"\00\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\12\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11", align 1
@d_scanner_30_3_1_dparser_gram = dso_local global [64 x i8] c"\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\13\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11", align 1
@d_scanner_30_3_2_dparser_gram = dso_local global [64 x i8] c"\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11", align 1
@d_scanner_30_6_0_dparser_gram = dso_local global <{ [56 x i8], [8 x i8] }> <{ [56 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\14\14\14\14\14\14\14", [8 x i8] zeroinitializer }>, align 1
@d_scanner_30_6_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\15\00\00\16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\15\00\00\17\00\00\00\00\00\00\00", align 1
@d_scanner_30_7_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\18", [10 x i8] zeroinitializer }>, align 1
@d_shift_30_12_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_1_dparser_gram, ptr null], align 8
@d_scanner_30_18_0_dparser_gram = dso_local global [64 x i8] c"\00\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A", align 1
@d_scanner_30_18_1_dparser_gram = dso_local global [64 x i8] c"\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A", align 1
@d_scanner_30_19_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\15", [10 x i8] zeroinitializer }>, align 1
@d_scanner_30_21_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\00\00\00\00\00\00", align 1
@d_scanner_30_21_1_dparser_gram = dso_local global <{ [39 x i8], [25 x i8] }> <{ [39 x i8] c"\00\1B\1B\1B\1B\1B\1B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1B\1B\1B\1B\1B\1B", [25 x i8] zeroinitializer }>, align 1
@d_scanner_30_26_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\1B\1B\1B\1B\1B\1B\00\00\00\00\00\1C\00\00\00\00\00\00\00\00\1C\00\00\00\00\00\00\00\00\00\00\00\1B\1B\1B\1B\1B\1B\00\00\00\00\00\1C\00\00\00\00\00\00\00\00\1C", [10 x i8] zeroinitializer }>, align 1
@d_shifts_49_dparser_gram = dso_local global [3 x ptr] [ptr @d_shift_1_dparser_gram, ptr @d_shift_62_dparser_gram, ptr null], align 8
@d_accepts_diff_49_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_49_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_49_0_dparser_gram], align 8
@d_scanner_49_0_1_dparser_gram = dso_local global [64 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\00\00\00\00\02\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\00\00\03\00\00", align 1
@d_shifts_52_dparser_gram = dso_local global [6 x ptr] [ptr @d_shift_9_dparser_gram, ptr @d_shift_10_dparser_gram, ptr @d_shift_11_dparser_gram, ptr @d_shift_12_dparser_gram, ptr @d_shift_13_dparser_gram, ptr null], align 8
@d_accepts_diff_52_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_52_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_52_0_dparser_gram], align 8
@d_scanner_52_0_1_dparser_gram = dso_local global <{ [49 x i8], [15 x i8] }> <{ [49 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\03\00\00\04", [15 x i8] zeroinitializer }>, align 1
@d_scanner_52_1_1_dparser_gram = dso_local global <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05", [16 x i8] zeroinitializer }>, align 1
@d_scanner_52_2_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06", [30 x i8] zeroinitializer }>, align 1
@d_scanner_52_3_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\00\00\08", [13 x i8] zeroinitializer }>, align 1
@d_scanner_52_4_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09", [13 x i8] zeroinitializer }>, align 1
@d_scanner_52_5_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A", [17 x i8] zeroinitializer }>, align 1
@d_scanner_52_6_1_dparser_gram = dso_local global <{ [52 x i8], [12 x i8] }> <{ [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B", [12 x i8] zeroinitializer }>, align 1
@d_scanner_52_7_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C", [26 x i8] zeroinitializer }>, align 1
@d_scanner_52_8_1_dparser_gram = dso_local global <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0D", [32 x i8] zeroinitializer }>, align 1
@d_scanner_52_9_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0E", [10 x i8] zeroinitializer }>, align 1
@d_scanner_52_10_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0F", [11 x i8] zeroinitializer }>, align 1
@d_scanner_52_11_1_dparser_gram = dso_local global <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10", [16 x i8] zeroinitializer }>, align 1
@d_scanner_52_12_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12", [10 x i8] zeroinitializer }>, align 1
@d_scanner_52_13_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\13", [30 x i8] zeroinitializer }>, align 1
@d_scanner_52_14_1_dparser_gram = dso_local global <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14", [16 x i8] zeroinitializer }>, align 1
@d_scanner_52_15_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15", [13 x i8] zeroinitializer }>, align 1
@d_scanner_52_16_1_dparser_gram = dso_local global <{ [45 x i8], [19 x i8] }> <{ [45 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16", [19 x i8] zeroinitializer }>, align 1
@d_scanner_52_17_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\17", [17 x i8] zeroinitializer }>, align 1
@d_scanner_52_19_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19", [13 x i8] zeroinitializer }>, align 1
@d_scanner_52_20_1_dparser_gram = dso_local global <{ [37 x i8], [27 x i8] }> <{ [37 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A", [27 x i8] zeroinitializer }>, align 1
@d_scanner_52_21_1_dparser_gram = dso_local global <{ [45 x i8], [19 x i8] }> <{ [45 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1B", [19 x i8] zeroinitializer }>, align 1
@d_scanner_52_22_1_dparser_gram = dso_local global <{ [37 x i8], [27 x i8] }> <{ [37 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1C", [27 x i8] zeroinitializer }>, align 1
@d_shift_52_23_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_11_dparser_gram, ptr null], align 8
@d_scanner_52_24_1_dparser_gram = dso_local global <{ [37 x i8], [27 x i8] }> <{ [37 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1D", [27 x i8] zeroinitializer }>, align 1
@d_shift_52_26_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_12_dparser_gram, ptr null], align 8
@d_scanner_52_27_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1F", [26 x i8] zeroinitializer }>, align 1
@d_scanner_52_28_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 ", [26 x i8] zeroinitializer }>, align 1
@d_scanner_52_30_1_dparser_gram = dso_local global <{ [39 x i8], [25 x i8] }> <{ [39 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\22", [25 x i8] zeroinitializer }>, align 1
@d_scanner_52_31_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00#", [13 x i8] zeroinitializer }>, align 1
@d_shift_52_32_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_9_dparser_gram, ptr null], align 8
@d_scanner_52_33_1_dparser_gram = dso_local global <{ [42 x i8], [22 x i8] }> <{ [42 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00$", [22 x i8] zeroinitializer }>, align 1
@d_shift_52_34_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_10_dparser_gram, ptr null], align 8
@d_scanner_52_35_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00%", [17 x i8] zeroinitializer }>, align 1
@d_scanner_52_36_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00&", [26 x i8] zeroinitializer }>, align 1
@d_scanner_52_37_1_dparser_gram = dso_local global <{ [37 x i8], [27 x i8] }> <{ [37 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00'", [27 x i8] zeroinitializer }>, align 1
@d_shift_52_38_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_13_dparser_gram, ptr null], align 8
@d_accepts_diff_53_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_53_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_59_dparser_gram, ptr null], align 8
@d_accepts_diff_53_2_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_53_dparser_gram = dso_local global [3 x ptr] [ptr @d_accepts_diff_53_0_dparser_gram, ptr @d_accepts_diff_53_1_dparser_gram, ptr @d_accepts_diff_53_2_dparser_gram], align 8
@d_shifts_55_dparser_gram = dso_local global [7 x ptr] [ptr @d_shift_0_dparser_gram, ptr @d_shift_2_dparser_gram, ptr @d_shift_4_dparser_gram, ptr @d_shift_6_dparser_gram, ptr @d_shift_7_dparser_gram, ptr @d_shift_49_dparser_gram, ptr null], align 8
@d_accepts_diff_55_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_55_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_55_0_dparser_gram], align 8
@d_scanner_55_0_0_dparser_gram = dso_local global <{ [37 x i8], [27 x i8] }> <{ [37 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02", [27 x i8] zeroinitializer }>, align 1
@d_scanner_55_0_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00", align 1
@d_scanner_55_1_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00", align 1
@d_scanner_55_3_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\00\00\06\00\00\00\00\00\00\00\00\00\00\00\07\00\00\08\09", [11 x i8] zeroinitializer }>, align 1
@d_scanner_55_4_1_dparser_gram = dso_local global <{ [36 x i8], [28 x i8] }> <{ [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A", [28 x i8] zeroinitializer }>, align 1
@d_scanner_55_5_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B", [26 x i8] zeroinitializer }>, align 1
@d_scanner_55_6_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C", [30 x i8] zeroinitializer }>, align 1
@d_scanner_55_8_1_dparser_gram = dso_local global <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0E", [16 x i8] zeroinitializer }>, align 1
@d_scanner_55_11_1_dparser_gram = dso_local global <{ [52 x i8], [12 x i8] }> <{ [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11", [12 x i8] zeroinitializer }>, align 1
@d_scanner_55_12_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12", [30 x i8] zeroinitializer }>, align 1
@d_scanner_55_15_1_dparser_gram = dso_local global <{ [45 x i8], [19 x i8] }> <{ [45 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15", [19 x i8] zeroinitializer }>, align 1
@d_scanner_55_16_1_dparser_gram = dso_local global <{ [52 x i8], [12 x i8] }> <{ [52 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16", [12 x i8] zeroinitializer }>, align 1
@d_scanner_55_18_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18", [26 x i8] zeroinitializer }>, align 1
@d_scanner_55_19_1_dparser_gram = dso_local global <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19", [16 x i8] zeroinitializer }>, align 1
@d_scanner_55_20_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A", [30 x i8] zeroinitializer }>, align 1
@d_scanner_55_22_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1B", [17 x i8] zeroinitializer }>, align 1
@d_scanner_55_23_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1C", [17 x i8] zeroinitializer }>, align 1
@d_scanner_55_24_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1D", [17 x i8] zeroinitializer }>, align 1
@d_scanner_55_25_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1E", [13 x i8] zeroinitializer }>, align 1
@d_scanner_55_28_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00", align 1
@d_scanner_55_29_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!", [26 x i8] zeroinitializer }>, align 1
@d_scanner_55_30_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\22", [13 x i8] zeroinitializer }>, align 1
@d_shifts_59_dparser_gram = dso_local global [12 x ptr] [ptr @d_shift_31_dparser_gram, ptr @d_shift_32_dparser_gram, ptr @d_shift_49_dparser_gram, ptr @d_shift_51_dparser_gram, ptr @d_shift_59_dparser_gram, ptr @d_shift_60_dparser_gram, ptr @d_shift_61_dparser_gram, ptr @d_shift_62_dparser_gram, ptr @d_shift_63_dparser_gram, ptr @d_shift_64_dparser_gram, ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_59_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_59_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_59_dparser_gram, ptr null], align 8
@d_accepts_diff_59_2_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_59_dparser_gram = dso_local global [3 x ptr] [ptr @d_accepts_diff_59_0_dparser_gram, ptr @d_accepts_diff_59_1_dparser_gram, ptr @d_accepts_diff_59_2_dparser_gram], align 8
@d_scanner_59_0_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\03\02\02\02\02\04\05\06\02\02\02\07\02\02\08\09\09\09\09\09\09\09\09\09\02\02\02\02\02\02", align 1
@d_scanner_59_0_1_dparser_gram = dso_local global [64 x i8] c"\02\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\02\00\02\0C\02\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0D\02\00\02\00", align 1
@d_shift_59_5_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_32_dparser_gram, ptr null], align 8
@d_scanner_59_6_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\09\09\09\09\09\09\09\09\09\00\00\00\00\00\00", align 1
@d_scanner_59_9_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\00\00\00\00\00\00", align 1
@d_scanner_59_9_1_dparser_gram = dso_local global [64 x i8] c"\00\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\00\00\00\00\0A\00\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\00\00\00\00\00", align 1
@d_accepts_diff_60_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_60_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_59_dparser_gram, ptr null], align 8
@d_accepts_diff_60_2_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_60_dparser_gram = dso_local global [3 x ptr] [ptr @d_accepts_diff_60_0_dparser_gram, ptr @d_accepts_diff_60_1_dparser_gram, ptr @d_accepts_diff_60_2_dparser_gram], align 8
@d_shifts_61_dparser_gram = dso_local global [12 x ptr] [ptr @d_shift_31_dparser_gram, ptr @d_shift_49_dparser_gram, ptr @d_shift_51_dparser_gram, ptr @d_shift_52_dparser_gram, ptr @d_shift_59_dparser_gram, ptr @d_shift_60_dparser_gram, ptr @d_shift_61_dparser_gram, ptr @d_shift_62_dparser_gram, ptr @d_shift_63_dparser_gram, ptr @d_shift_64_dparser_gram, ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_61_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_61_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_61_2_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_59_dparser_gram, ptr null], align 8
@d_accepts_diff_61_dparser_gram = dso_local global [3 x ptr] [ptr @d_accepts_diff_61_0_dparser_gram, ptr @d_accepts_diff_61_1_dparser_gram, ptr @d_accepts_diff_61_2_dparser_gram], align 8
@d_scanner_61_0_1_dparser_gram = dso_local global [64 x i8] c"\02\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\02\0B\02\0C\02\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0D\02\00\02\00", align 1
@d_accepts_diff_61_5_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\00\00\00\00\00\00", align 1
@d_accepts_diff_61_6_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", align 1
@d_shift_61_10_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_52_dparser_gram, ptr null], align 8
@d_accepts_diff_61_11_1_dparser_gram = dso_local global [64 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\00\00\00\00\02\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\00\00\00\00\00", align 1
@d_accepts_diff_64_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_64_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_64_0_dparser_gram], align 8
@d_shifts_72_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_1_dparser_gram, ptr null], align 8
@d_accepts_diff_72_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_72_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_72_0_dparser_gram], align 8
@d_scanner_72_0_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00", align 1
@d_accepts_diff_73_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_73_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_73_0_dparser_gram], align 8
@d_shifts_77_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_23_dparser_gram, ptr null], align 8
@d_accepts_diff_77_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_77_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_77_0_dparser_gram], align 8
@d_accepts_diff_80_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_80_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_80_0_dparser_gram], align 8
@d_shifts_92_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_28_dparser_gram, ptr null], align 8
@d_accepts_diff_92_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_92_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_92_0_dparser_gram], align 8
@d_scanner_92_0_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00", align 1
@d_shift_92_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_28_dparser_gram, ptr null], align 8
@d_shifts_95_dparser_gram = dso_local global [8 x ptr] [ptr @d_shift_29_dparser_gram, ptr @d_shift_31_dparser_gram, ptr @d_shift_49_dparser_gram, ptr @d_shift_51_dparser_gram, ptr @d_shift_60_dparser_gram, ptr @d_shift_61_dparser_gram, ptr @d_shift_62_dparser_gram, ptr null], align 8
@d_accepts_diff_95_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_95_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_95_0_dparser_gram], align 8
@d_scanner_95_0_0_dparser_gram = dso_local global <{ [41 x i8], [23 x i8] }> <{ [41 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\03\00\00\04\05", [23 x i8] zeroinitializer }>, align 1
@d_scanner_95_0_1_dparser_gram = dso_local global [64 x i8] c"\00\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\00\00\00\06\00\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\08\00\00\00\00", align 1
@d_scanner_95_1_0_dparser_gram = dso_local global [64 x i8] c"\00\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09", align 1
@d_scanner_95_1_1_dparser_gram = dso_local global [64 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09", align 1
@d_scanner_95_1_2_dparser_gram = dso_local global [64 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09", align 1
@d_scanner_95_2_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C\00\00\00\00", align 1
@d_scanner_95_3_0_dparser_gram = dso_local global [64 x i8] c"\00\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 1
@d_scanner_95_5_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\06\06\06\06\06\06\06\06\06\00\00\00\00\00\00", align 1
@d_scanner_95_5_1_dparser_gram = dso_local global [64 x i8] c"\00\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\00\00\00\00\06\00\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\00\00\00\00\00", align 1
@d_scanner_95_10_0_dparser_gram = dso_local global [64 x i8] c"\00\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10", align 1
@d_scanner_95_14_0_dparser_gram = dso_local global [64 x i8] c"\00\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12", align 1
@d_scanner_95_14_1_dparser_gram = dso_local global [64 x i8] c"\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12", align 1
@d_scanner_95_18_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14", [30 x i8] zeroinitializer }>, align 1
@d_scanner_95_19_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15", [17 x i8] zeroinitializer }>, align 1
@d_shift_95_20_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_29_dparser_gram, ptr null], align 8
@d_shifts_99_dparser_gram = dso_local global [12 x ptr] [ptr @d_shift_38_dparser_gram, ptr @d_shift_39_dparser_gram, ptr @d_shift_40_dparser_gram, ptr @d_shift_41_dparser_gram, ptr @d_shift_42_dparser_gram, ptr @d_shift_43_dparser_gram, ptr @d_shift_44_dparser_gram, ptr @d_shift_45_dparser_gram, ptr @d_shift_46_dparser_gram, ptr @d_shift_47_dparser_gram, ptr @d_shift_51_dparser_gram, ptr null], align 8
@d_accepts_diff_99_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_99_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_99_0_dparser_gram], align 8
@d_scanner_99_0_1_dparser_gram = dso_local global <{ [28 x i8], [36 x i8] }> <{ [28 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03", [36 x i8] zeroinitializer }>, align 1
@d_scanner_99_1_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\05\00\00\00\00\00\06\00\00\07", [10 x i8] zeroinitializer }>, align 1
@d_scanner_99_3_1_dparser_gram = dso_local global <{ [42 x i8], [22 x i8] }> <{ [42 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08", [22 x i8] zeroinitializer }>, align 1
@d_scanner_99_4_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09", [26 x i8] zeroinitializer }>, align 1
@d_scanner_99_5_1_dparser_gram = dso_local global <{ [42 x i8], [22 x i8] }> <{ [42 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A", [22 x i8] zeroinitializer }>, align 1
@d_scanner_99_6_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B", [17 x i8] zeroinitializer }>, align 1
@d_scanner_99_7_1_dparser_gram = dso_local global <{ [47 x i8], [17 x i8] }> <{ [47 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C", [17 x i8] zeroinitializer }>, align 1
@d_scanner_99_8_1_dparser_gram = dso_local global <{ [39 x i8], [25 x i8] }> <{ [39 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0D", [25 x i8] zeroinitializer }>, align 1
@d_scanner_99_9_1_dparser_gram = dso_local global <{ [40 x i8], [24 x i8] }> <{ [40 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0E", [24 x i8] zeroinitializer }>, align 1
@d_scanner_99_11_1_dparser_gram = dso_local global <{ [34 x i8], [30 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10", [30 x i8] zeroinitializer }>, align 1
@d_scanner_99_13_1_dparser_gram = dso_local global <{ [41 x i8], [23 x i8] }> <{ [41 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12", [23 x i8] zeroinitializer }>, align 1
@d_scanner_99_14_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\13", [13 x i8] zeroinitializer }>, align 1
@d_scanner_99_15_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14", [13 x i8] zeroinitializer }>, align 1
@d_shift_99_16_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_47_dparser_gram, ptr null], align 8
@d_scanner_99_17_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15", [11 x i8] zeroinitializer }>, align 1
@d_scanner_99_18_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00", align 1
@d_scanner_99_19_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\00\00", align 1
@d_shift_99_20_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_46_dparser_gram, ptr null], align 8
@d_scanner_99_22_1_dparser_gram = dso_local global <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19", [32 x i8] zeroinitializer }>, align 1
@d_scanner_99_23_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00\00\1B\00\00\1C", [13 x i8] zeroinitializer }>, align 1
@d_scanner_99_24_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1D\00\00\1E\00\00\1F", [13 x i8] zeroinitializer }>, align 1
@d_scanner_99_26_1_dparser_gram = dso_local global <{ [49 x i8], [15 x i8] }> <{ [49 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!", [15 x i8] zeroinitializer }>, align 1
@d_scanner_99_27_1_dparser_gram = dso_local global <{ [42 x i8], [22 x i8] }> <{ [42 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\22", [22 x i8] zeroinitializer }>, align 1
@d_scanner_99_29_1_dparser_gram = dso_local global <{ [49 x i8], [15 x i8] }> <{ [49 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00$", [15 x i8] zeroinitializer }>, align 1
@d_scanner_99_30_1_dparser_gram = dso_local global <{ [42 x i8], [22 x i8] }> <{ [42 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00%", [22 x i8] zeroinitializer }>, align 1
@d_scanner_99_31_1_dparser_gram = dso_local global <{ [39 x i8], [25 x i8] }> <{ [39 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00&", [25 x i8] zeroinitializer }>, align 1
@d_scanner_99_32_1_dparser_gram = dso_local global <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00'", [32 x i8] zeroinitializer }>, align 1
@d_scanner_99_33_1_dparser_gram = dso_local global <{ [40 x i8], [24 x i8] }> <{ [40 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00(", [24 x i8] zeroinitializer }>, align 1
@d_scanner_99_34_1_dparser_gram = dso_local global <{ [39 x i8], [25 x i8] }> <{ [39 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00)", [25 x i8] zeroinitializer }>, align 1
@d_scanner_99_35_1_dparser_gram = dso_local global <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*", [32 x i8] zeroinitializer }>, align 1
@d_scanner_99_36_1_dparser_gram = dso_local global <{ [40 x i8], [24 x i8] }> <{ [40 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00+", [24 x i8] zeroinitializer }>, align 1
@d_scanner_99_38_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00-\00\00\00\00\00.", [13 x i8] zeroinitializer }>, align 1
@d_scanner_99_39_1_dparser_gram = dso_local global <{ [41 x i8], [23 x i8] }> <{ [41 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00/", [23 x i8] zeroinitializer }>, align 1
@d_scanner_99_40_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\000", [11 x i8] zeroinitializer }>, align 1
@d_scanner_99_41_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\001\00\00\00\00\002", [13 x i8] zeroinitializer }>, align 1
@d_scanner_99_42_1_dparser_gram = dso_local global <{ [41 x i8], [23 x i8] }> <{ [41 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\003", [23 x i8] zeroinitializer }>, align 1
@d_shift_99_43_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_43_dparser_gram, ptr null], align 8
@d_scanner_99_44_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\004", [26 x i8] zeroinitializer }>, align 1
@d_scanner_99_45_1_dparser_gram = dso_local global <{ [42 x i8], [22 x i8] }> <{ [42 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\005", [22 x i8] zeroinitializer }>, align 1
@d_scanner_99_46_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\006", [11 x i8] zeroinitializer }>, align 1
@d_shift_99_47_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_45_dparser_gram, ptr null], align 8
@d_scanner_99_48_1_dparser_gram = dso_local global <{ [38 x i8], [26 x i8] }> <{ [38 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\007", [26 x i8] zeroinitializer }>, align 1
@d_scanner_99_49_1_dparser_gram = dso_local global <{ [42 x i8], [22 x i8] }> <{ [42 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\008", [22 x i8] zeroinitializer }>, align 1
@d_scanner_99_50_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\009", [11 x i8] zeroinitializer }>, align 1
@d_scanner_99_51_1_dparser_gram = dso_local global <{ [39 x i8], [25 x i8] }> <{ [39 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00:", [25 x i8] zeroinitializer }>, align 1
@d_scanner_99_52_1_dparser_gram = dso_local global <{ [40 x i8], [24 x i8] }> <{ [40 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00;", [24 x i8] zeroinitializer }>, align 1
@d_shift_99_53_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_42_dparser_gram, ptr null], align 8
@d_scanner_99_54_1_dparser_gram = dso_local global <{ [39 x i8], [25 x i8] }> <{ [39 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00<", [25 x i8] zeroinitializer }>, align 1
@d_scanner_99_55_1_dparser_gram = dso_local global <{ [40 x i8], [24 x i8] }> <{ [40 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00=", [24 x i8] zeroinitializer }>, align 1
@d_shift_99_56_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_44_dparser_gram, ptr null], align 8
@d_scanner_99_57_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00>", [11 x i8] zeroinitializer }>, align 1
@d_scanner_99_58_1_dparser_gram = dso_local global <{ [41 x i8], [23 x i8] }> <{ [41 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00?", [23 x i8] zeroinitializer }>, align 1
@d_scanner_99_59_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@", [11 x i8] zeroinitializer }>, align 1
@d_scanner_99_60_1_dparser_gram = dso_local global <{ [41 x i8], [23 x i8] }> <{ [41 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00A", [23 x i8] zeroinitializer }>, align 1
@d_shift_99_61_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_39_dparser_gram, ptr null], align 8
@d_scanner_99_62_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00B", [11 x i8] zeroinitializer }>, align 1
@d_shift_99_63_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_41_dparser_gram, ptr null], align 8
@d_scanner_99_64_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00C", [11 x i8] zeroinitializer }>, align 1
@d_shift_99_65_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_38_dparser_gram, ptr null], align 8
@d_shift_99_66_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_40_dparser_gram, ptr null], align 8
@d_accepts_diff_100_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_100_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_59_dparser_gram, ptr null], align 8
@d_accepts_diff_100_2_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_100_dparser_gram = dso_local global [3 x ptr] [ptr @d_accepts_diff_100_0_dparser_gram, ptr @d_accepts_diff_100_1_dparser_gram, ptr @d_accepts_diff_100_2_dparser_gram], align 8
@d_shifts_123_dparser_gram = dso_local global [4 x ptr] [ptr @d_shift_63_dparser_gram, ptr @d_shift_64_dparser_gram, ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_123_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_123_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_123_dparser_gram = dso_local global [2 x ptr] [ptr @d_accepts_diff_123_0_dparser_gram, ptr @d_accepts_diff_123_1_dparser_gram], align 8
@d_scanner_123_0_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\03\04\04\04\04\04\04\04\04\04\00\00\00\00\00\00", align 1
@d_scanner_123_1_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\04\04\04\04\04\04\04\04\04\00\00\00\00\00\00", align 1
@d_scanner_123_2_0_dparser_gram = dso_local global <{ [56 x i8], [8 x i8] }> <{ [56 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\05\05\05\05\05\05\05", [8 x i8] zeroinitializer }>, align 1
@d_scanner_123_2_1_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\06\00\00\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\06\00\00\08\00\00\00\00\00\00\00", align 1
@d_scanner_123_3_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\09", [10 x i8] zeroinitializer }>, align 1
@d_scanner_123_4_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\06", [10 x i8] zeroinitializer }>, align 1
@d_scanner_123_6_1_dparser_gram = dso_local global <{ [39 x i8], [25 x i8] }> <{ [39 x i8] c"\00\0A\0A\0A\0A\0A\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\0A\0A\0A\0A\0A", [25 x i8] zeroinitializer }>, align 1
@d_scanner_123_9_1_dparser_gram = dso_local global <{ [54 x i8], [10 x i8] }> <{ [54 x i8] c"\00\0A\0A\0A\0A\0A\0A\00\00\00\00\00\0B\00\00\00\00\00\00\00\00\0B\00\00\00\00\00\00\00\00\00\00\00\0A\0A\0A\0A\0A\0A\00\00\00\00\00\0B\00\00\00\00\00\00\00\00\0B", [10 x i8] zeroinitializer }>, align 1
@d_shifts_125_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_49_dparser_gram, ptr null], align 8
@d_accepts_diff_125_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_125_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_125_0_dparser_gram], align 8
@d_accepts_diff_128_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_128_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_59_dparser_gram, ptr null], align 8
@d_accepts_diff_128_2_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_128_dparser_gram = dso_local global [3 x ptr] [ptr @d_accepts_diff_128_0_dparser_gram, ptr @d_accepts_diff_128_1_dparser_gram, ptr @d_accepts_diff_128_2_dparser_gram], align 8
@d_accepts_diff_131_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_131_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_131_2_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_59_dparser_gram, ptr null], align 8
@d_accepts_diff_131_dparser_gram = dso_local global [3 x ptr] [ptr @d_accepts_diff_131_0_dparser_gram, ptr @d_accepts_diff_131_1_dparser_gram, ptr @d_accepts_diff_131_2_dparser_gram], align 8
@d_shifts_132_dparser_gram = dso_local global [6 x ptr] [ptr @d_shift_33_dparser_gram, ptr @d_shift_34_dparser_gram, ptr @d_shift_35_dparser_gram, ptr @d_shift_36_dparser_gram, ptr @d_shift_37_dparser_gram, ptr null], align 8
@d_accepts_diff_132_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_132_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_132_0_dparser_gram], align 8
@d_scanner_132_0_0_dparser_gram = dso_local global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\03\04\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06", align 1
@d_scanner_132_1_1_dparser_gram = dso_local global <{ [53 x i8], [11 x i8] }> <{ [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07", [11 x i8] zeroinitializer }>, align 1
@d_shift_132_2_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_36_dparser_gram, ptr null], align 8
@d_shift_132_3_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_37_dparser_gram, ptr null], align 8
@d_shift_132_5_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_35_dparser_gram, ptr null], align 8
@d_shift_132_7_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_34_dparser_gram, ptr null], align 8
@d_scanner_132_8_1_dparser_gram = dso_local global <{ [51 x i8], [13 x i8] }> <{ [51 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A", [13 x i8] zeroinitializer }>, align 1
@d_scanner_132_9_1_dparser_gram = dso_local global <{ [46 x i8], [18 x i8] }> <{ [46 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B", [18 x i8] zeroinitializer }>, align 1
@d_shift_132_10_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_33_dparser_gram, ptr null], align 8
@d_accepts_diff_133_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_133_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_133_0_dparser_gram], align 8
@d_shifts_141_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_32_dparser_gram, ptr null], align 8
@d_accepts_diff_141_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_141_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_141_0_dparser_gram], align 8
@d_scanner_141_0_0_dparser_gram = dso_local global <{ [42 x i8], [22 x i8] }> <{ [42 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02", [22 x i8] zeroinitializer }>, align 1
@d_accepts_diff_144_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_144_1_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_65_dparser_gram, ptr null], align 8
@d_accepts_diff_144_dparser_gram = dso_local global [2 x ptr] [ptr @d_accepts_diff_144_0_dparser_gram, ptr @d_accepts_diff_144_1_dparser_gram], align 8
@d_accepts_diff_151_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_151_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_151_0_dparser_gram], align 8
@d_shifts_155_dparser_gram = dso_local global [2 x ptr] [ptr @d_shift_22_dparser_gram, ptr null], align 8
@d_accepts_diff_155_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_155_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_155_0_dparser_gram], align 8
@d_accepts_diff_156_0_dparser_gram = dso_local global [1 x ptr] zeroinitializer, align 8
@d_accepts_diff_156_dparser_gram = dso_local global [1 x ptr] [ptr @d_accepts_diff_156_0_dparser_gram], align 8
@d_scanner_3_dparser_gram = dso_local global [37 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_0_dparser_gram, ptr @d_scanner_3_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_1_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_2_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_3_dparser_gram, [4 x ptr] [ptr @d_scanner_3_3_0_dparser_gram, ptr @d_scanner_3_3_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_4_dparser_gram, [4 x ptr] [ptr @d_scanner_3_3_0_dparser_gram, ptr @d_scanner_3_3_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_5_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_6_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_7_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_8_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_9_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_10_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_11_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_12_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_13_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_14_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_15_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_16_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_17_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_18_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_19_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_20_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_21_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_22_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_23_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_24_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_25_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_26_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_27_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_28_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_29_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_30_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_31_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_32_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_33_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_34_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_35_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_36_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_3_dparser_gram = dso_local global [37 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_4_0_dparser_gram, ptr @d_accepts_diff_3_4_1_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_4_dparser_gram = dso_local global [27 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_0_0_dparser_gram, ptr @d_scanner_4_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_10_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_2_0_dparser_gram, ptr @d_scanner_4_2_1_dparser_gram, ptr @d_scanner_4_2_2_dparser_gram, ptr @d_scanner_4_2_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_3_0_dparser_gram, ptr @d_scanner_4_3_1_dparser_gram, ptr @d_scanner_4_3_2_dparser_gram, ptr @d_scanner_4_3_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_4_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_10_dparser_gram, [4 x ptr] [ptr @d_scanner_4_5_0_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_4_6_0_dparser_gram, ptr @d_scanner_4_6_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_22_dparser_gram, [4 x ptr] [ptr @d_scanner_4_7_0_dparser_gram, ptr @d_scanner_4_7_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_3_dparser_gram, [4 x ptr] [ptr @d_scanner_4_8_0_dparser_gram, ptr @d_scanner_4_8_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_9_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_10_dparser_gram, [4 x ptr] [ptr @d_scanner_4_8_0_dparser_gram, ptr @d_scanner_4_8_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_5_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_2_0_dparser_gram, ptr @d_scanner_4_2_1_dparser_gram, ptr @d_scanner_4_2_2_dparser_gram, ptr @d_scanner_4_2_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_13_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_14_0_dparser_gram, ptr @d_scanner_4_14_1_dparser_gram, ptr @d_scanner_4_14_1_dparser_gram, ptr @d_scanner_4_14_1_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_3_0_dparser_gram, ptr @d_scanner_4_3_1_dparser_gram, ptr @d_scanner_4_3_2_dparser_gram, ptr @d_scanner_4_3_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_16_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_17_0_dparser_gram, ptr @d_scanner_4_17_1_dparser_gram, ptr @d_scanner_4_17_1_dparser_gram, ptr @d_scanner_4_17_1_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_4_6_0_dparser_gram, ptr @d_scanner_4_18_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_20_0_dparser_gram, ptr @d_scanner_4_20_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_20_0_dparser_gram, ptr @d_scanner_4_20_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_22_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_2_0_dparser_gram, ptr @d_scanner_4_2_1_dparser_gram, ptr @d_scanner_4_2_2_dparser_gram, ptr @d_scanner_4_2_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_3_0_dparser_gram, ptr @d_scanner_4_3_1_dparser_gram, ptr @d_scanner_4_3_2_dparser_gram, ptr @d_scanner_4_3_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_26_dparser_gram, [4 x ptr] [ptr @d_scanner_4_20_0_dparser_gram, ptr @d_scanner_4_25_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_26_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_4_dparser_gram = dso_local global [27 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_4_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_4_6_1_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_4_0_dparser_gram, ptr @d_accepts_diff_3_4_1_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_5_dparser_gram = dso_local global [100 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_1_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_2_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_3_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_4_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_5_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_6_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_7_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_8_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_9_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_10_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_11_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_12_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_13_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_14_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_15_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_16_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_17_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_18_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_19_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_20_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_21_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_22_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_23_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_24_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_25_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_26_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_27_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_28_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_29_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_30_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_31_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_32_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_33_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_34_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_35_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_36_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_37_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_38_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_39_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_40_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_41_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_42_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_43_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_44_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_45_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_46_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_47_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_48_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_49_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_50_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_51_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_52_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_53_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_54_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_55_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_56_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_5_57_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_58_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_59_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_60_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_61_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_62_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_63_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_5_64_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_65_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_66_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_67_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_68_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_69_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_70_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_5_71_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_5_72_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_73_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_74_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_75_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_76_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_77_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_78_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_79_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_80_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_81_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_5_82_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_83_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_84_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_5_85_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_86_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_87_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_5_88_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_89_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_90_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_91_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_92_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_93_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_94_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_95_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_96_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_97_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_98_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_5_99_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_5_dparser_gram = dso_local global [100 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_6_dparser_gram = dso_local global [2 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_6_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_3_dparser_gram, [4 x ptr] [ptr @d_scanner_6_1_0_dparser_gram, ptr @d_scanner_6_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_6_dparser_gram = dso_local global [2 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_13_dparser_gram = dso_local global [4 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_13_0_0_dparser_gram, ptr @d_scanner_13_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_2_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_3_dparser_gram, [4 x ptr] [ptr @d_scanner_13_2_0_dparser_gram, ptr @d_scanner_13_2_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_4_dparser_gram, [4 x ptr] [ptr @d_scanner_13_2_0_dparser_gram, ptr @d_scanner_13_2_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_13_dparser_gram = dso_local global [4 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_4_0_dparser_gram, ptr @d_accepts_diff_3_4_1_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_17_dparser_gram = dso_local global [4 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_17_0_0_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_17_1_dparser_gram, [4 x ptr] [ptr @d_scanner_17_1_0_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_17_2_0_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_17_3_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_17_dparser_gram = dso_local global [4 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_17_1_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_30_dparser_gram = dso_local global [28 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_0_0_dparser_gram, ptr @d_scanner_30_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_10_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_2_0_dparser_gram, ptr @d_scanner_30_2_1_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_3_0_dparser_gram, ptr @d_scanner_30_3_1_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_4_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_10_dparser_gram, [4 x ptr] [ptr @d_scanner_4_5_0_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_30_6_0_dparser_gram, ptr @d_scanner_30_6_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_22_dparser_gram, [4 x ptr] [ptr @d_scanner_4_7_0_dparser_gram, ptr @d_scanner_30_7_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_3_dparser_gram, [4 x ptr] [ptr @d_scanner_4_8_0_dparser_gram, ptr @d_scanner_4_8_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_9_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_10_dparser_gram, [4 x ptr] [ptr @d_scanner_4_8_0_dparser_gram, ptr @d_scanner_4_8_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_5_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_30_12_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_2_0_dparser_gram, ptr @d_scanner_30_2_1_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_13_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_17_0_dparser_gram, ptr @d_scanner_4_17_1_dparser_gram, ptr @d_scanner_4_17_1_dparser_gram, ptr @d_scanner_4_17_1_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_3_0_dparser_gram, ptr @d_scanner_30_3_1_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_16_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_18_0_dparser_gram, ptr @d_scanner_30_18_1_dparser_gram, ptr @d_scanner_30_18_1_dparser_gram, ptr @d_scanner_30_18_1_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_30_6_0_dparser_gram, ptr @d_scanner_30_19_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_21_0_dparser_gram, ptr @d_scanner_30_21_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_21_0_dparser_gram, ptr @d_scanner_30_21_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_22_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_2_0_dparser_gram, ptr @d_scanner_30_2_1_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_3_0_dparser_gram, ptr @d_scanner_30_3_1_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_26_dparser_gram, [4 x ptr] [ptr @d_scanner_30_21_0_dparser_gram, ptr @d_scanner_30_26_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_26_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_30_dparser_gram = dso_local global [28 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_4_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_4_6_1_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_4_0_dparser_gram, ptr @d_accepts_diff_3_4_1_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_49_dparser_gram = dso_local global [3 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_49_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_3_dparser_gram, [4 x ptr] [ptr @d_scanner_6_1_0_dparser_gram, ptr @d_scanner_6_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_30_12_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_49_dparser_gram = dso_local global [3 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_52_dparser_gram = dso_local global [39 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_1_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_2_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_3_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_4_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_5_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_6_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_7_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_8_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_9_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_10_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_11_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_12_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_13_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_14_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_15_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_16_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_17_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_18_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_19_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_20_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_21_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_22_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_52_23_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_24_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_21_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_52_26_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_27_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_28_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_28_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_30_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_31_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_52_32_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_33_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_52_34_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_35_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_36_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_37_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_52_38_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_52_dparser_gram = dso_local global [39 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_55_dparser_gram = dso_local global [34 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_55_0_0_dparser_gram, ptr @d_scanner_55_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_1_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_5_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_3_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_4_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_5_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_6_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_7_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_8_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_10_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_10_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_11_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_12_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_11_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_12_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_15_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_16_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_17_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_18_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_19_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_20_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_24_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_22_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_23_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_24_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_25_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_27_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_30_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_28_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_29_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_30_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_34_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_35_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_36_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_55_dparser_gram = dso_local global [34 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_59_dparser_gram = dso_local global [28 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_59_0_0_dparser_gram, ptr @d_scanner_59_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_10_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_2_0_dparser_gram, ptr @d_scanner_30_2_1_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_3_0_dparser_gram, ptr @d_scanner_30_3_1_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_4_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_59_5_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_10_dparser_gram, [4 x ptr] [ptr @d_scanner_59_6_0_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_30_6_0_dparser_gram, ptr @d_scanner_30_6_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_22_dparser_gram, [4 x ptr] [ptr @d_scanner_4_8_0_dparser_gram, ptr @d_scanner_30_7_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_3_dparser_gram, [4 x ptr] [ptr @d_scanner_59_9_0_dparser_gram, ptr @d_scanner_59_9_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_9_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_10_dparser_gram, [4 x ptr] [ptr @d_scanner_59_9_0_dparser_gram, ptr @d_scanner_59_9_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_5_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_2_0_dparser_gram, ptr @d_scanner_30_2_1_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_13_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_17_0_dparser_gram, ptr @d_scanner_4_17_1_dparser_gram, ptr @d_scanner_4_17_1_dparser_gram, ptr @d_scanner_4_17_1_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_3_0_dparser_gram, ptr @d_scanner_30_3_1_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_16_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_18_0_dparser_gram, ptr @d_scanner_30_18_1_dparser_gram, ptr @d_scanner_30_18_1_dparser_gram, ptr @d_scanner_30_18_1_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_30_6_0_dparser_gram, ptr @d_scanner_30_19_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_21_0_dparser_gram, ptr @d_scanner_30_21_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_21_0_dparser_gram, ptr @d_scanner_30_21_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_22_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_2_0_dparser_gram, ptr @d_scanner_30_2_1_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_3_0_dparser_gram, ptr @d_scanner_30_3_1_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_26_dparser_gram, [4 x ptr] [ptr @d_scanner_30_21_0_dparser_gram, ptr @d_scanner_30_26_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_26_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_59_dparser_gram = dso_local global [28 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_4_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_4_6_1_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_4_0_dparser_gram, ptr @d_accepts_diff_3_4_1_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_61_dparser_gram = dso_local global [28 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_0_0_dparser_gram, ptr @d_scanner_61_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_10_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_2_0_dparser_gram, ptr @d_scanner_30_2_1_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_3_0_dparser_gram, ptr @d_scanner_30_3_1_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_4_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_10_dparser_gram, [4 x ptr] [ptr @d_scanner_4_5_0_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_30_6_0_dparser_gram, ptr @d_scanner_30_6_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_22_dparser_gram, [4 x ptr] [ptr @d_scanner_4_7_0_dparser_gram, ptr @d_scanner_30_7_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_3_dparser_gram, [4 x ptr] [ptr @d_scanner_4_8_0_dparser_gram, ptr @d_scanner_4_8_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_9_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_61_10_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_10_dparser_gram, [4 x ptr] [ptr @d_scanner_4_8_0_dparser_gram, ptr @d_scanner_4_8_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_5_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_2_0_dparser_gram, ptr @d_scanner_30_2_1_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_13_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_4_17_0_dparser_gram, ptr @d_scanner_4_17_1_dparser_gram, ptr @d_scanner_4_17_1_dparser_gram, ptr @d_scanner_4_17_1_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_3_0_dparser_gram, ptr @d_scanner_30_3_1_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_16_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_18_0_dparser_gram, ptr @d_scanner_30_18_1_dparser_gram, ptr @d_scanner_30_18_1_dparser_gram, ptr @d_scanner_30_18_1_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_30_6_0_dparser_gram, ptr @d_scanner_30_19_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_21_0_dparser_gram, ptr @d_scanner_30_21_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_21_0_dparser_gram, ptr @d_scanner_30_21_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_22_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_2_0_dparser_gram, ptr @d_scanner_30_2_1_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram, ptr @d_scanner_30_2_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_30_3_0_dparser_gram, ptr @d_scanner_30_3_1_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram, ptr @d_scanner_30_3_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_26_dparser_gram, [4 x ptr] [ptr @d_scanner_30_21_0_dparser_gram, ptr @d_scanner_30_26_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_26_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_61_dparser_gram = dso_local global [28 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_61_5_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_61_6_1_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_61_5_0_dparser_gram, ptr @d_accepts_diff_61_11_1_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_72_dparser_gram = dso_local global [2 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_72_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_30_12_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_72_dparser_gram = dso_local global [2 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_77_dparser_gram = dso_local global [2 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_13_0_0_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_2_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_77_dparser_gram = dso_local global [2 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_92_dparser_gram = dso_local global [2 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_92_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_92_1_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_92_dparser_gram = dso_local global [2 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_95_dparser_gram = dso_local global [21 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_95_0_0_dparser_gram, ptr @d_scanner_95_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_95_1_0_dparser_gram, ptr @d_scanner_95_1_1_dparser_gram, ptr @d_scanner_95_1_2_dparser_gram, ptr @d_scanner_95_1_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_95_2_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_95_3_0_dparser_gram, ptr @d_scanner_4_2_1_dparser_gram, ptr @d_scanner_4_2_2_dparser_gram, ptr @d_scanner_4_2_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_4_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_3_dparser_gram, [4 x ptr] [ptr @d_scanner_95_5_0_dparser_gram, ptr @d_scanner_95_5_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_9_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_5_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_95_1_0_dparser_gram, ptr @d_scanner_95_1_1_dparser_gram, ptr @d_scanner_95_1_2_dparser_gram, ptr @d_scanner_95_1_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_13_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_95_10_0_dparser_gram, ptr @d_scanner_4_3_2_dparser_gram, ptr @d_scanner_4_3_2_dparser_gram, ptr @d_scanner_4_3_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_55_11_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_95_3_0_dparser_gram, ptr @d_scanner_4_2_1_dparser_gram, ptr @d_scanner_4_2_2_dparser_gram, ptr @d_scanner_4_2_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_16_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_95_14_0_dparser_gram, ptr @d_scanner_95_14_1_dparser_gram, ptr @d_scanner_95_14_1_dparser_gram, ptr @d_scanner_95_14_1_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_95_1_0_dparser_gram, ptr @d_scanner_95_1_1_dparser_gram, ptr @d_scanner_95_1_2_dparser_gram, ptr @d_scanner_95_1_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_13_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_95_3_0_dparser_gram, ptr @d_scanner_4_2_1_dparser_gram, ptr @d_scanner_4_2_2_dparser_gram, ptr @d_scanner_4_2_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_95_18_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_95_19_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_95_20_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_95_dparser_gram = dso_local global [21 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_99_dparser_gram = dso_local global [67 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_55_0_0_dparser_gram, ptr @d_scanner_99_0_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_1_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_9_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_3_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_4_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_5_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_6_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_7_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_8_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_9_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_9_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_11_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_9_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_13_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_14_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_15_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_99_16_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_17_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_18_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_19_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_99_20_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_16_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_22_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_23_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_24_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_52_28_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_26_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_27_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_26_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_29_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_30_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_31_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_32_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_33_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_34_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_35_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_36_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_5_35_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_38_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_39_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_40_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_41_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_42_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_99_43_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_44_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_45_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_46_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_99_47_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_48_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_49_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_50_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_51_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_52_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_99_53_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_54_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_55_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_99_56_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_57_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_58_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_59_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_60_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_99_61_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_62_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_99_63_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_64_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_99_65_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_99_66_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_99_dparser_gram = dso_local global [67 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_123_dparser_gram = dso_local global [11 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_123_0_0_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_123_1_0_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_123_2_0_dparser_gram, ptr @d_scanner_123_2_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_22_dparser_gram, [4 x ptr] [ptr @d_scanner_3_3_0_dparser_gram, ptr @d_scanner_123_3_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_123_2_0_dparser_gram, ptr @d_scanner_123_4_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_19_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_59_9_0_dparser_gram, ptr @d_scanner_123_6_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_59_9_0_dparser_gram, ptr @d_scanner_123_6_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_22_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_26_dparser_gram, [4 x ptr] [ptr @d_scanner_59_9_0_dparser_gram, ptr @d_scanner_123_9_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_4_26_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_123_dparser_gram = dso_local global [11 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_61_6_1_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_125_dparser_gram = dso_local global [2 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_13_0_0_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_3_5_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_125_dparser_gram = dso_local global [2 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_132_dparser_gram = dso_local global [11 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_132_0_0_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_132_1_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_132_2_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_132_3_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_3_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_132_5_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_99_4_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_132_7_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_132_8_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_132_9_1_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_132_10_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_132_dparser_gram = dso_local global [11 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_141_dparser_gram = dso_local global [2 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_141_0_0_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_59_5_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_141_dparser_gram = dso_local global [2 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_scanner_155_dparser_gram = dso_local global [2 x %struct.SB_uint8] [%struct.SB_uint8 { ptr null, [4 x ptr] [ptr @d_scanner_17_0_0_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }, %struct.SB_uint8 { ptr @d_shift_17_1_dparser_gram, [4 x ptr] [ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram, ptr @d_scanner_3_0_2_dparser_gram] }], align 8
@d_transition_155_dparser_gram = dso_local global [2 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }, %struct.SB_trans_uint8 { [4 x ptr] [ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram, ptr @d_accepts_diff_3_0_0_dparser_gram] }], align 8
@d_goto_valid_0_dparser_gram = dso_local global <{ i8, [15 x i8] }> <{ i8 70, [15 x i8] zeroinitializer }>, align 1
@d_reductions_0_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_9_dparser_gram], align 8
@d_reductions_2_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_1_dparser_gram], align 8
@d_goto_valid_3_dparser_gram = dso_local global [16 x i8] c"\98\80\06\00\00@\00B5\00 \02\00\80\00\10", align 1
@d_goto_valid_4_dparser_gram = dso_local global [16 x i8] c"\00\04\00\00\00\00\C4?\00\00\00 \00\80\02\FE", align 1
@d_goto_valid_5_dparser_gram = dso_local global [16 x i8] c"\00 \00\00\00\00\00\00\00\F0\0F\00\00\00\00\00", align 1
@d_goto_valid_6_dparser_gram = dso_local global [16 x i8] c"\00A\00\00\00\00\00\02\00\00\00\00\00\00\00\10", align 1
@d_reductions_7_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_14_dparser_gram], align 8
@d_goto_valid_8_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\10", align 1
@d_reductions_9_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_40_dparser_gram], align 8
@d_reductions_10_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_43_dparser_gram], align 8
@d_goto_valid_11_dparser_gram = dso_local global <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 0, i8 0, i8 0, i8 0, i8 -128, [10 x i8] zeroinitializer }>, align 1
@d_reductions_11_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_103_dparser_gram], align 8
@d_reductions_12_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_124_dparser_gram], align 8
@d_goto_valid_13_dparser_gram = dso_local global [16 x i8] c"\10\80\06\00\00\00\00\02\00\00 \02\00\00\00\10", align 1
@d_reductions_13_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_2_dparser_gram], align 8
@d_reductions_14_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_4_dparser_gram], align 8
@d_reductions_15_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_8_dparser_gram], align 8
@d_goto_valid_16_dparser_gram = dso_local global <{ i8, [15 x i8] }> <{ i8 32, [15 x i8] zeroinitializer }>, align 1
@d_reductions_16_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_7_dparser_gram], align 8
@d_right_epsilon_hints_16_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 55, [4 x i8] zeroinitializer, ptr @d_reduction_5_dparser_gram }], align 8
@d_goto_valid_17_dparser_gram = dso_local global [16 x i8] c"\00\00\01\00\00\00\00\00\00\00\10\01\00\00\00\00", align 1
@d_reductions_18_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_42_dparser_gram], align 8
@d_reductions_19_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_10_dparser_gram], align 8
@d_reductions_20_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_43_dparser_gram], align 8
@d_goto_valid_21_dparser_gram = dso_local global <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 32, [9 x i8] zeroinitializer }>, align 1
@d_reductions_21_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_120_dparser_gram], align 8
@d_goto_valid_22_dparser_gram = dso_local global <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, [9 x i8] zeroinitializer }>, align 1
@d_reductions_22_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_116_dparser_gram], align 8
@d_goto_valid_23_dparser_gram = dso_local global <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, [9 x i8] zeroinitializer }>, align 1
@d_reductions_23_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_118_dparser_gram], align 8
@d_reductions_24_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_121_dparser_gram], align 8
@d_reductions_25_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_122_dparser_gram], align 8
@d_reductions_26_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_123_dparser_gram], align 8
@d_reductions_27_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_128_dparser_gram], align 8
@d_reductions_28_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_129_dparser_gram], align 8
@d_reductions_29_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_130_dparser_gram], align 8
@d_goto_valid_30_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00\00\C4\BF\00\00\00 \00\80\02\FE", align 1
@d_reductions_31_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_21_dparser_gram], align 8
@d_reductions_32_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_110_dparser_gram], align 8
@d_reductions_33_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_110_dparser_gram], align 8
@d_reductions_34_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_110_dparser_gram], align 8
@d_reductions_35_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_110_dparser_gram], align 8
@d_reductions_36_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_110_dparser_gram], align 8
@d_reductions_37_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_125_dparser_gram], align 8
@d_reductions_38_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_125_dparser_gram], align 8
@d_reductions_39_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_125_dparser_gram], align 8
@d_reductions_40_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_29_dparser_gram], align 8
@d_reductions_41_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_30_dparser_gram], align 8
@d_reductions_42_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_31_dparser_gram], align 8
@d_reductions_43_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_32_dparser_gram], align 8
@d_reductions_44_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_33_dparser_gram], align 8
@d_reductions_45_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_34_dparser_gram], align 8
@d_reductions_46_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_35_dparser_gram], align 8
@d_reductions_47_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_36_dparser_gram], align 8
@d_goto_valid_48_dparser_gram = dso_local global <{ i8, i8, [14 x i8] }> <{ i8 0, i8 2, [14 x i8] zeroinitializer }>, align 1
@d_reductions_48_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_19_dparser_gram], align 8
@d_goto_valid_49_dparser_gram = dso_local global [16 x i8] c"\00@\00\00\00\00\00\82\00\00\00\00\00\00\00\10", align 1
@d_reductions_50_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_17_dparser_gram], align 8
@d_reductions_51_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_37_dparser_gram], align 8
@d_goto_valid_52_dparser_gram = dso_local global [16 x i8] c"\00\18\00\00\00\00\00\00\80\0F\00\00\00\00\00\00", align 1
@d_reductions_52_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_22_dparser_gram], align 8
@d_goto_valid_53_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00\00\C4\BF\00\00\00 \00\80\02\FE", align 1
@d_reductions_54_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_3_dparser_gram], align 8
@d_goto_valid_55_dparser_gram = dso_local global [16 x i8] c"\80\00\00\00\00@\00@5\00\00\00\00\80\00\00", align 1
@d_reductions_55_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_5_dparser_gram], align 8
@d_goto_valid_56_dparser_gram = dso_local global <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 72, i8 64, [12 x i8] zeroinitializer }>, align 1
@d_reductions_56_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_62_dparser_gram], align 8
@d_right_epsilon_hints_56_dparser_gram = dso_local global [2 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 1, i16 92, [4 x i8] zeroinitializer, ptr @d_reduction_45_dparser_gram }, { i16, i16, [4 x i8], ptr } { i16 3, i16 124, [4 x i8] zeroinitializer, ptr @d_reduction_49_dparser_gram }], align 8
@d_reductions_57_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_41_dparser_gram], align 8
@d_goto_valid_58_dparser_gram = dso_local global <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 72, i8 64, [12 x i8] zeroinitializer }>, align 1
@d_reductions_58_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_62_dparser_gram], align 8
@d_right_epsilon_hints_58_dparser_gram = dso_local global [2 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 1, i16 92, [4 x i8] zeroinitializer, ptr @d_reduction_45_dparser_gram }, { i16, i16, [4 x i8], ptr } { i16 3, i16 124, [4 x i8] zeroinitializer, ptr @d_reduction_49_dparser_gram }], align 8
@d_goto_valid_59_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00\00\C4?\00\00\00`\00\80\02\FE", align 1
@d_goto_valid_60_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00\00\C4\BF\00\00\00 \00\80\02\FE", align 1
@d_goto_valid_61_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00\00\C4?\00\00\00 \00\80\06\FE", align 1
@d_reductions_62_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_11_dparser_gram], align 8
@d_reductions_63_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_20_dparser_gram], align 8
@d_goto_valid_64_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00\00\00\82\00\00\00\00\00\00\00\10", align 1
@d_reductions_65_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_13_dparser_gram], align 8
@d_reductions_66_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_16_dparser_gram], align 8
@d_reductions_67_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_24_dparser_gram], align 8
@d_reductions_68_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_25_dparser_gram], align 8
@d_reductions_69_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_26_dparser_gram], align 8
@d_reductions_70_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_27_dparser_gram], align 8
@d_reductions_71_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_28_dparser_gram], align 8
@d_goto_valid_72_dparser_gram = dso_local global <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\80", [8 x i8] zeroinitializer }>, align 1
@d_goto_valid_73_dparser_gram = dso_local global [16 x i8] c"\00\18\00\00\00\00\00\00\80\0F\00\00\00\00\00\00", align 1
@d_reductions_73_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_22_dparser_gram], align 8
@d_right_epsilon_hints_73_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 90, [4 x i8] zeroinitializer, ptr @d_reduction_23_dparser_gram }], align 8
@d_reductions_74_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_101_dparser_gram], align 8
@d_reductions_75_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_102_dparser_gram], align 8
@d_reductions_76_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_6_dparser_gram], align 8
@d_goto_valid_77_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00", align 1
@d_goto_valid_78_dparser_gram = dso_local global <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 0, i8 16, [13 x i8] zeroinitializer }>, align 1
@d_reductions_78_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_47_dparser_gram], align 8
@d_right_epsilon_hints_78_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 92, [4 x i8] zeroinitializer, ptr @d_reduction_45_dparser_gram }], align 8
@d_goto_valid_79_dparser_gram = dso_local global <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 0, i8 11, [12 x i8] zeroinitializer }>, align 1
@d_reductions_79_dparser_gram = dso_local global [2 x ptr] [ptr @d_reduction_53_dparser_gram, ptr @d_reduction_58_dparser_gram], align 8
@d_right_epsilon_hints_79_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 2, i16 124, [4 x i8] zeroinitializer, ptr @d_reduction_49_dparser_gram }], align 8
@d_goto_valid_80_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00", align 1
@d_reductions_81_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_107_dparser_gram], align 8
@d_reductions_82_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_119_dparser_gram], align 8
@d_reductions_83_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_107_dparser_gram], align 8
@d_reductions_84_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_115_dparser_gram], align 8
@d_reductions_85_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_107_dparser_gram], align 8
@d_reductions_86_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_117_dparser_gram], align 8
@d_reductions_87_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_12_dparser_gram], align 8
@d_reductions_88_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_18_dparser_gram], align 8
@d_reductions_89_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_15_dparser_gram], align 8
@d_reductions_90_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_23_dparser_gram], align 8
@d_reductions_91_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_38_dparser_gram], align 8
@d_goto_valid_92_dparser_gram = dso_local global [16 x i8] c"\00\00 \00\00\00\00\00\00\00\00\04\00\00\00\00", align 1
@d_reductions_92_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_45_dparser_gram], align 8
@d_goto_valid_93_dparser_gram = dso_local global <{ i8, i8, i8, [13 x i8] }> <{ i8 0, i8 0, i8 -128, [13 x i8] zeroinitializer }>, align 1
@d_reductions_93_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_51_dparser_gram], align 8
@d_right_epsilon_hints_93_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 1, i16 124, [4 x i8] zeroinitializer, ptr @d_reduction_49_dparser_gram }], align 8
@d_reductions_94_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_52_dparser_gram], align 8
@d_goto_valid_95_dparser_gram = dso_local global [16 x i8] c"\00\00\00\90\02@\81\03\00\00\00(\00\80\02\1C", align 1
@d_reductions_96_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_38_dparser_gram], align 8
@d_goto_valid_97_dparser_gram = dso_local global <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 64, i8 64, [12 x i8] zeroinitializer }>, align 1
@d_reductions_97_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_62_dparser_gram], align 8
@d_right_epsilon_hints_97_dparser_gram = dso_local global [2 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 111, [4 x i8] zeroinitializer, ptr @d_reduction_48_dparser_gram }, { i16, i16, [4 x i8], ptr } { i16 3, i16 124, [4 x i8] zeroinitializer, ptr @d_reduction_49_dparser_gram }], align 8
@d_reductions_98_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_46_dparser_gram], align 8
@d_goto_valid_99_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\B0\0C\01\00\00\00\00\00\F0?\02\00", align 1
@d_reductions_99_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_97_dparser_gram], align 8
@d_right_epsilon_hints_99_dparser_gram = dso_local global [2 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 124, [4 x i8] zeroinitializer, ptr @d_reduction_49_dparser_gram }, { i16, i16, [4 x i8], ptr } { i16 2, i16 151, [4 x i8] zeroinitializer, ptr @d_reduction_91_dparser_gram }], align 8
@d_goto_valid_100_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\01\00\C4?\00\00\00 \00\80\02\FE", align 1
@d_goto_valid_101_dparser_gram = dso_local global <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 0, i8 0, i8 0, i8 0, i8 4, [11 x i8] zeroinitializer }>, align 1
@d_reductions_101_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_73_dparser_gram], align 8
@d_goto_valid_102_dparser_gram = dso_local global <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, [9 x i8] zeroinitializer }>, align 1
@d_reductions_102_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_106_dparser_gram], align 8
@d_reductions_103_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_57_dparser_gram], align 8
@d_goto_valid_104_dparser_gram = dso_local global <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 0, i8 4, [12 x i8] zeroinitializer }>, align 1
@d_reductions_104_dparser_gram = dso_local global [2 x ptr] [ptr @d_reduction_56_dparser_gram, ptr @d_reduction_70_dparser_gram], align 8
@d_right_epsilon_hints_104_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 132, [4 x i8] zeroinitializer, ptr @d_reduction_54_dparser_gram }], align 8
@d_goto_valid_105_dparser_gram = dso_local global <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 0, i8 32, [12 x i8] zeroinitializer }>, align 1
@d_reductions_105_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_61_dparser_gram], align 8
@d_right_epsilon_hints_105_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 133, [4 x i8] zeroinitializer, ptr @d_reduction_59_dparser_gram }], align 8
@d_reductions_106_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_72_dparser_gram], align 8
@d_reductions_107_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_71_dparser_gram], align 8
@d_reductions_108_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_63_dparser_gram], align 8
@d_reductions_109_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_64_dparser_gram], align 8
@d_reductions_110_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_65_dparser_gram], align 8
@d_reductions_111_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_48_dparser_gram], align 8
@d_reductions_112_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_80_dparser_gram], align 8
@d_reductions_113_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_81_dparser_gram], align 8
@d_reductions_114_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_82_dparser_gram], align 8
@d_reductions_115_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_83_dparser_gram], align 8
@d_reductions_116_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_84_dparser_gram], align 8
@d_reductions_117_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_85_dparser_gram], align 8
@d_reductions_118_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_86_dparser_gram], align 8
@d_reductions_119_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_87_dparser_gram], align 8
@d_reductions_120_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_88_dparser_gram], align 8
@d_reductions_121_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_89_dparser_gram], align 8
@d_reductions_122_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_50_dparser_gram], align 8
@d_goto_valid_123_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00@\00\00<\00\00\00\00\00\00\00\E0", align 1
@d_reductions_124_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_49_dparser_gram], align 8
@d_goto_valid_125_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00R\00\00\00\00\00\00\00\80\00\00", align 1
@d_reductions_125_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_95_dparser_gram], align 8
@d_right_epsilon_hints_125_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 1, i16 151, [4 x i8] zeroinitializer, ptr @d_reduction_91_dparser_gram }], align 8
@d_reductions_126_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_96_dparser_gram], align 8
@d_reductions_127_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_98_dparser_gram], align 8
@d_goto_valid_128_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00\00\C4\BF\00\00\00 \00\80\02\FE", align 1
@d_reductions_129_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_69_dparser_gram], align 8
@d_goto_valid_130_dparser_gram = dso_local global <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 72, i8 64, [12 x i8] zeroinitializer }>, align 1
@d_reductions_130_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_62_dparser_gram], align 8
@d_right_epsilon_hints_130_dparser_gram = dso_local global [2 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 1, i16 92, [4 x i8] zeroinitializer, ptr @d_reduction_45_dparser_gram }, { i16, i16, [4 x i8], ptr } { i16 3, i16 124, [4 x i8] zeroinitializer, ptr @d_reduction_49_dparser_gram }], align 8
@d_goto_valid_131_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00\00\C4?\00\00\00 \00\80\06\FE", align 1
@d_goto_valid_132_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\08\00\00\00\00\00\00\80\0F\00\00\00", align 1
@d_reductions_132_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_54_dparser_gram], align 8
@d_goto_valid_133_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\08\00\00\00\00\00\00\80\0F\00\00\00", align 1
@d_reductions_133_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_59_dparser_gram], align 8
@d_reductions_134_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_79_dparser_gram], align 8
@d_reductions_135_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_90_dparser_gram], align 8
@d_goto_valid_136_dparser_gram = dso_local global <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, [10 x i8] zeroinitializer }>, align 1
@d_reductions_136_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_93_dparser_gram], align 8
@d_right_epsilon_hints_136_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 151, [4 x i8] zeroinitializer, ptr @d_reduction_91_dparser_gram }], align 8
@d_reductions_137_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_94_dparser_gram], align 8
@d_reductions_138_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_99_dparser_gram], align 8
@d_reductions_139_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_66_dparser_gram], align 8
@d_reductions_140_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_68_dparser_gram], align 8
@d_goto_valid_141_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\00", align 1
@d_reductions_142_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_104_dparser_gram], align 8
@d_reductions_143_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_105_dparser_gram], align 8
@d_goto_valid_144_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00\00\00<\00\00\00\00\00\00\00\E0", align 1
@d_reductions_145_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_75_dparser_gram], align 8
@d_reductions_146_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_76_dparser_gram], align 8
@d_reductions_147_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_77_dparser_gram], align 8
@d_reductions_148_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_78_dparser_gram], align 8
@d_reductions_149_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_55_dparser_gram], align 8
@d_reductions_150_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_60_dparser_gram], align 8
@d_goto_valid_151_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00 \00\02\00\00\00\00\00\00\00\10", align 1
@d_reductions_151_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_91_dparser_gram], align 8
@d_reductions_152_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_67_dparser_gram], align 8
@d_reductions_153_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_74_dparser_gram], align 8
@d_reductions_154_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_92_dparser_gram], align 8
@d_goto_valid_155_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00", align 1
@d_goto_valid_156_dparser_gram = dso_local global [16 x i8] c"\00\00\00\00\00@\00\00\00\00\00\00\00\80\00\00", align 1
@d_reductions_157_dparser_gram = dso_local global [1 x ptr] [ptr @d_reduction_100_dparser_gram], align 8
@d_gotos_dparser_gram = dso_local global [547 x i16] [i16 2, i16 3, i16 14, i16 15, i16 31, i16 4, i16 16, i16 49, i16 54, i16 50, i16 56, i16 53, i16 60, i16 55, i16 17, i16 51, i16 18, i16 19, i16 59, i16 61, i16 62, i16 65, i16 78, i16 90, i16 17, i16 79, i16 18, i16 19, i16 92, i16 89, i16 93, i16 81, i16 97, i16 80, i16 79, i16 88, i16 67, i16 99, i16 100, i16 73, i16 74, i16 131, i16 80, i16 132, i16 32, i16 20, i16 133, i16 134, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 21, i16 152, i16 52, i16 94, i16 95, i16 5, i16 96, i16 6, i16 153, i16 7, i16 21, i16 8, i16 9, i16 157, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 13, i16 52, i16 142, i16 112, i16 0, i16 79, i16 10, i16 66, i16 57, i16 22, i16 11, i16 80, i16 58, i16 80, i16 137, i16 0, i16 10, i16 138, i16 13, i16 139, i16 11, i16 68, i16 69, i16 70, i16 71, i16 72, i16 158, i16 23, i16 98, i16 24, i16 0, i16 77, i16 12, i16 0, i16 0, i16 0, i16 0, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 0, i16 13, i16 150, i16 13, i16 0, i16 0, i16 0, i16 0, i16 64, i16 0, i16 155, i16 13, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 0, i16 63, i16 156, i16 0, i16 13, i16 76, i16 20, i16 0, i16 0, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 0, i16 75, i16 0, i16 12, i16 0, i16 5, i16 0, i16 6, i16 151, i16 7, i16 12, i16 8, i16 9, i16 83, i16 22, i16 0, i16 0, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 145, i16 146, i16 147, i16 148, i16 149, i16 0, i16 22, i16 23, i16 0, i16 24, i16 0, i16 0, i16 0, i16 154, i16 38, i16 39, i16 40, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 23, i16 0, i16 24, i16 13, i16 0, i16 12, i16 0, i16 22, i16 82, i16 135, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 91, i16 74, i16 145, i16 146, i16 147, i16 148, i16 149, i16 0, i16 23, i16 0, i16 24, i16 0, i16 136, i16 38, i16 39, i16 40, i16 0, i16 0, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 85, i16 0, i16 0, i16 0, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 0, i16 84, i16 28, i16 29, i16 30, i16 87, i16 0, i16 0, i16 0, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 68, i16 69, i16 70, i16 71, i16 72, i16 0, i16 0, i16 0, i16 22, i16 0, i16 123, i16 124, i16 0, i16 125, i16 0, i16 0, i16 126, i16 127, i16 0, i16 28, i16 29, i16 30, i16 128, i16 0, i16 0, i16 22, i16 23, i16 0, i16 24, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 23, i16 104, i16 24, i16 86, i16 105, i16 0, i16 106, i16 0, i16 0, i16 0, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 0, i16 0, i16 107, i16 0, i16 108, i16 0, i16 0, i16 129, i16 0, i16 0, i16 0, i16 109, i16 110, i16 111, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 0, i16 130, i16 0, i16 103, i16 0, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 141, i16 101, i16 0, i16 102, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 0, i16 140, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 12, i16 22, i16 103, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 26, i16 27, i16 13, i16 0, i16 0, i16 0, i16 0, i16 0, i16 23, i16 0, i16 24, i16 22, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 0, i16 0, i16 0, i16 0, i16 23, i16 0, i16 24, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 144, i16 0, i16 0, i16 0, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 22, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 23, i16 0, i16 24, i16 143, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30], align 2
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c";\00", align 1
@d_error_recovery_hints_3_dparser_gram = dso_local global [2 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 7, [4 x i8] zeroinitializer, ptr @.str.2 }, { i16, i16, [4 x i8], ptr } { i16 0, i16 15, [4 x i8] zeroinitializer, ptr @.str.3 }], align 8
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@d_error_recovery_hints_4_dparser_gram = dso_local global [3 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 7, [4 x i8] zeroinitializer, ptr @.str.2 }, { i16, i16, [4 x i8], ptr } { i16 0, i16 50, [4 x i8] zeroinitializer, ptr @.str.4 }, { i16, i16, [4 x i8], ptr } { i16 0, i16 50, [4 x i8] zeroinitializer, ptr @.str.5 }], align 8
@d_error_recovery_hints_5_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 1, i16 7, [4 x i8] zeroinitializer, ptr @.str.2 }], align 8
@d_error_recovery_hints_11_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 1, i16 46, [4 x i8] zeroinitializer, ptr @.str.2 }], align 8
@d_error_recovery_hints_13_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 15, [4 x i8] zeroinitializer, ptr @.str.3 }], align 8
@d_error_recovery_hints_17_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 1, i16 15, [4 x i8] zeroinitializer, ptr @.str.3 }], align 8
@d_error_recovery_hints_21_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 1, i16 50, [4 x i8] zeroinitializer, ptr @.str.4 }], align 8
@d_error_recovery_hints_22_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 1, i16 50, [4 x i8] zeroinitializer, ptr @.str.2 }], align 8
@d_error_recovery_hints_23_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 1, i16 50, [4 x i8] zeroinitializer, ptr @.str.5 }], align 8
@d_error_recovery_hints_48_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 2, i16 7, [4 x i8] zeroinitializer, ptr @.str.2 }], align 8
@d_error_recovery_hints_53_dparser_gram = dso_local global [3 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 46, [4 x i8] zeroinitializer, ptr @.str.2 }, { i16, i16, [4 x i8], ptr } { i16 0, i16 50, [4 x i8] zeroinitializer, ptr @.str.4 }, { i16, i16, [4 x i8], ptr } { i16 0, i16 50, [4 x i8] zeroinitializer, ptr @.str.5 }], align 8
@d_error_recovery_hints_55_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 7, [4 x i8] zeroinitializer, ptr @.str.2 }], align 8
@d_error_recovery_hints_56_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 2, i16 15, [4 x i8] zeroinitializer, ptr @.str.3 }], align 8
@d_error_recovery_hints_59_dparser_gram = dso_local global [3 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 50, [4 x i8] zeroinitializer, ptr @.str.4 }, { i16, i16, [4 x i8], ptr } { i16 0, i16 50, [4 x i8] zeroinitializer, ptr @.str.5 }, { i16, i16, [4 x i8], ptr } { i16 0, i16 50, [4 x i8] zeroinitializer, ptr @.str.2 }], align 8
@d_error_recovery_hints_62_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 3, i16 7, [4 x i8] zeroinitializer, ptr @.str.2 }], align 8
@d_error_recovery_hints_74_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 3, i16 46, [4 x i8] zeroinitializer, ptr @.str.2 }], align 8
@d_error_recovery_hints_77_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 3, i16 15, [4 x i8] zeroinitializer, ptr @.str.3 }], align 8
@d_error_recovery_hints_81_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 3, i16 50, [4 x i8] zeroinitializer, ptr @.str.4 }], align 8
@d_error_recovery_hints_83_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 3, i16 50, [4 x i8] zeroinitializer, ptr @.str.2 }], align 8
@d_error_recovery_hints_85_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 3, i16 50, [4 x i8] zeroinitializer, ptr @.str.5 }], align 8
@d_error_recovery_hints_87_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 4, i16 7, [4 x i8] zeroinitializer, ptr @.str.2 }], align 8
@d_error_recovery_hints_91_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 4, i16 15, [4 x i8] zeroinitializer, ptr @.str.3 }], align 8
@d_error_recovery_hints_95_dparser_gram = dso_local global [3 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 31, [4 x i8] zeroinitializer, ptr @.str.2 }, { i16, i16, [4 x i8], ptr } { i16 0, i16 31, [4 x i8] zeroinitializer, ptr @.str.4 }, { i16, i16, [4 x i8], ptr } { i16 0, i16 48, [4 x i8] zeroinitializer, ptr @.str.5 }], align 8
@d_error_recovery_hints_99_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 48, [4 x i8] zeroinitializer, ptr @.str.5 }], align 8
@d_error_recovery_hints_100_dparser_gram = dso_local global [3 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 31, [4 x i8] zeroinitializer, ptr @.str.2 }, { i16, i16, [4 x i8], ptr } { i16 0, i16 50, [4 x i8] zeroinitializer, ptr @.str.4 }, { i16, i16, [4 x i8], ptr } { i16 0, i16 50, [4 x i8] zeroinitializer, ptr @.str.5 }], align 8
@d_error_recovery_hints_101_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 1, i16 31, [4 x i8] zeroinitializer, ptr @.str.4 }], align 8
@d_error_recovery_hints_102_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 1, i16 48, [4 x i8] zeroinitializer, ptr @.str.5 }], align 8
@d_error_recovery_hints_125_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 46, [4 x i8] zeroinitializer, ptr @.str.2 }], align 8
@d_error_recovery_hints_130_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 2, i16 31, [4 x i8] zeroinitializer, ptr @.str.4 }], align 8
@d_error_recovery_hints_131_dparser_gram = dso_local global [3 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 0, i16 48, [4 x i8] zeroinitializer, ptr @.str.5 }, { i16, i16, [4 x i8], ptr } { i16 0, i16 50, [4 x i8] zeroinitializer, ptr @.str.4 }, { i16, i16, [4 x i8], ptr } { i16 0, i16 50, [4 x i8] zeroinitializer, ptr @.str.2 }], align 8
@d_error_recovery_hints_139_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 3, i16 31, [4 x i8] zeroinitializer, ptr @.str.2 }], align 8
@d_error_recovery_hints_141_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 3, i16 31, [4 x i8] zeroinitializer, ptr @.str.4 }], align 8
@d_error_recovery_hints_142_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 3, i16 48, [4 x i8] zeroinitializer, ptr @.str.5 }], align 8
@d_error_recovery_hints_152_dparser_gram = dso_local global [1 x { i16, i16, [4 x i8], ptr }] [{ i16, i16, [4 x i8], ptr } { i16 4, i16 31, [4 x i8] zeroinitializer, ptr @.str.4 }], align 8
@d_states_dparser_gram = dso_local global [158 x { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_0_dparser_gram, i32 1, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_0_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 1, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_2_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_3_dparser_gram, i32 1, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_3_dparser_gram }, ptr @d_shifts_3_dparser_gram, ptr null, ptr @d_scanner_3_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_3_dparser_gram, ptr @d_accepts_diff_3_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_4_dparser_gram, i32 6, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_4_dparser_gram }, ptr @d_shifts_4_dparser_gram, ptr null, ptr @d_scanner_4_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_4_dparser_gram, ptr @d_accepts_diff_4_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_5_dparser_gram, i32 6, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_5_dparser_gram }, ptr @d_shifts_5_dparser_gram, ptr null, ptr @d_scanner_5_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_5_dparser_gram, ptr @d_accepts_diff_5_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_6_dparser_gram, i32 -1, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_5_dparser_gram }, ptr @d_shifts_6_dparser_gram, ptr null, ptr @d_scanner_6_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_6_dparser_gram, ptr @d_accepts_diff_6_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_7_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_8_dparser_gram, i32 46, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_5_dparser_gram }, ptr @d_shifts_6_dparser_gram, ptr null, ptr @d_scanner_6_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_6_dparser_gram, ptr @d_accepts_diff_6_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_9_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_10_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_11_dparser_gram, i32 39, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_11_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_11_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_12_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_13_dparser_gram, i32 -9, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_13_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_13_dparser_gram }, ptr @d_shifts_13_dparser_gram, ptr null, ptr @d_scanner_13_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_13_dparser_gram, ptr @d_accepts_diff_13_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_14_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_15_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_16_dparser_gram, i32 -5, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_16_dparser_gram }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_right_epsilon_hints_16_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_17_dparser_gram, i32 -2, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_17_dparser_gram }, ptr @d_shifts_17_dparser_gram, ptr null, ptr @d_scanner_17_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_17_dparser_gram, ptr @d_accepts_diff_17_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_18_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_19_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_20_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_21_dparser_gram, i32 41, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_21_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_21_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_22_dparser_gram, i32 32, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_22_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_22_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_23_dparser_gram, i32 32, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_23_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_23_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_24_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_25_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_26_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_27_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_28_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_29_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_30_dparser_gram, i32 -80, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_4_dparser_gram }, ptr @d_shifts_30_dparser_gram, ptr null, ptr @d_scanner_30_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_30_dparser_gram, ptr @d_accepts_diff_30_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_31_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_32_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_33_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_34_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_35_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_36_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_37_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_38_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_39_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_40_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_41_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_42_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_43_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_44_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_45_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_46_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_47_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_48_dparser_gram, i32 -12, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_48_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_48_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_49_dparser_gram, i32 -22, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_48_dparser_gram }, ptr @d_shifts_49_dparser_gram, ptr null, ptr @d_scanner_49_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_49_dparser_gram, ptr @d_accepts_diff_49_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_50_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_51_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_52_dparser_gram, i32 -28, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_52_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_48_dparser_gram }, ptr @d_shifts_52_dparser_gram, ptr null, ptr @d_scanner_52_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_52_dparser_gram, ptr @d_accepts_diff_52_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_53_dparser_gram, i32 -97, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_53_dparser_gram }, ptr @d_shifts_30_dparser_gram, ptr null, ptr @d_scanner_30_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_30_dparser_gram, ptr @d_accepts_diff_30_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_54_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_55_dparser_gram, i32 -102, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_55_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_55_dparser_gram }, ptr @d_shifts_55_dparser_gram, ptr null, ptr @d_scanner_55_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_55_dparser_gram, ptr @d_accepts_diff_55_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_56_dparser_gram, i32 -3, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_56_dparser_gram }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @d_right_epsilon_hints_56_dparser_gram }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_56_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_57_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_58_dparser_gram, i32 -12, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_58_dparser_gram }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @d_right_epsilon_hints_58_dparser_gram }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_56_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_59_dparser_gram, i32 -122, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_59_dparser_gram }, ptr @d_shifts_59_dparser_gram, ptr null, ptr @d_scanner_59_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_59_dparser_gram, ptr @d_accepts_diff_59_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_60_dparser_gram, i32 -200, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_59_dparser_gram }, ptr @d_shifts_30_dparser_gram, ptr null, ptr @d_scanner_30_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_30_dparser_gram, ptr @d_accepts_diff_30_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_61_dparser_gram, i32 -217, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_59_dparser_gram }, ptr @d_shifts_61_dparser_gram, ptr null, ptr @d_scanner_61_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_61_dparser_gram, ptr @d_accepts_diff_61_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_62_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_62_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_63_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_64_dparser_gram, i32 28, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_62_dparser_gram }, ptr @d_shifts_49_dparser_gram, ptr null, ptr @d_scanner_49_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_49_dparser_gram, ptr @d_accepts_diff_49_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_65_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_62_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_66_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_67_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_68_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_69_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_70_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_71_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_72_dparser_gram, i32 40, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_62_dparser_gram }, ptr @d_shifts_72_dparser_gram, ptr null, ptr @d_scanner_72_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_72_dparser_gram, ptr @d_accepts_diff_72_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_73_dparser_gram, i32 -214, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_73_dparser_gram }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_right_epsilon_hints_73_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, ptr @d_shifts_52_dparser_gram, ptr null, ptr @d_scanner_52_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_52_dparser_gram, ptr @d_accepts_diff_52_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_74_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_74_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_75_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_76_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_77_dparser_gram, i32 57, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_77_dparser_gram }, ptr @d_shifts_77_dparser_gram, ptr null, ptr @d_scanner_77_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_77_dparser_gram, ptr @d_accepts_diff_77_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_78_dparser_gram, i32 -10, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_78_dparser_gram }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_right_epsilon_hints_78_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_79_dparser_gram, i32 -35, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @d_reductions_79_dparser_gram }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_right_epsilon_hints_79_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_80_dparser_gram, i32 53, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_77_dparser_gram }, ptr @d_shifts_77_dparser_gram, ptr null, ptr @d_scanner_77_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_77_dparser_gram, ptr @d_accepts_diff_77_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_81_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_81_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_82_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_83_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_83_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_84_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_85_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_85_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_86_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_87_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_87_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_88_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_89_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_87_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_90_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_91_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_91_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_92_dparser_gram, i32 -16, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_92_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr @d_shifts_92_dparser_gram, ptr null, ptr @d_scanner_92_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_92_dparser_gram, ptr @d_accepts_diff_92_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_93_dparser_gram, i32 -15, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_93_dparser_gram }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_right_epsilon_hints_93_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_94_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_95_dparser_gram, i32 -301, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_95_dparser_gram }, ptr @d_shifts_95_dparser_gram, ptr null, ptr @d_scanner_95_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_95_dparser_gram, ptr @d_accepts_diff_95_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_96_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_91_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_97_dparser_gram, i32 -59, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_97_dparser_gram }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @d_right_epsilon_hints_97_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_98_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_99_dparser_gram, i32 -259, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_99_dparser_gram }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @d_right_epsilon_hints_99_dparser_gram }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_99_dparser_gram }, ptr @d_shifts_99_dparser_gram, ptr null, ptr @d_scanner_99_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_99_dparser_gram, ptr @d_accepts_diff_99_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_100_dparser_gram, i32 -320, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_100_dparser_gram }, ptr @d_shifts_4_dparser_gram, ptr null, ptr @d_scanner_4_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_4_dparser_gram, ptr @d_accepts_diff_4_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_101_dparser_gram, i32 -7, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_101_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_101_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_102_dparser_gram, i32 6, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_102_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_102_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_103_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_104_dparser_gram, i32 -20, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @d_reductions_104_dparser_gram }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_right_epsilon_hints_104_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_105_dparser_gram, i32 -18, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_105_dparser_gram }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_right_epsilon_hints_105_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_106_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_107_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_108_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_109_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_110_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_111_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_112_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_113_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_114_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_115_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_116_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_117_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_118_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_119_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_120_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_121_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_122_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_123_dparser_gram, i32 -179, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr @d_shifts_123_dparser_gram, ptr null, ptr @d_scanner_123_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_123_dparser_gram, ptr @d_accepts_diff_123_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_124_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_125_dparser_gram, i32 -51, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_125_dparser_gram }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_right_epsilon_hints_125_dparser_gram }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_125_dparser_gram }, ptr @d_shifts_125_dparser_gram, ptr null, ptr @d_scanner_125_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_125_dparser_gram, ptr @d_accepts_diff_125_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_126_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_127_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_128_dparser_gram, i32 -341, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_100_dparser_gram }, ptr @d_shifts_30_dparser_gram, ptr null, ptr @d_scanner_30_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_30_dparser_gram, ptr @d_accepts_diff_30_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_129_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_130_dparser_gram, i32 -61, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_130_dparser_gram }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @d_right_epsilon_hints_130_dparser_gram }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_130_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_131_dparser_gram, i32 -419, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_131_dparser_gram }, ptr @d_shifts_61_dparser_gram, ptr null, ptr @d_scanner_61_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_61_dparser_gram, ptr @d_accepts_diff_61_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_132_dparser_gram, i32 -89, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_132_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr @d_shifts_132_dparser_gram, ptr null, ptr @d_scanner_132_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_132_dparser_gram, ptr @d_accepts_diff_132_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_133_dparser_gram, i32 -132, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_133_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr @d_shifts_132_dparser_gram, ptr null, ptr @d_scanner_132_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_132_dparser_gram, ptr @d_accepts_diff_132_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_134_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_135_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_136_dparser_gram, i32 -17, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_136_dparser_gram }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_right_epsilon_hints_136_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_137_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_138_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_139_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_139_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_140_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_141_dparser_gram, i32 30, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_141_dparser_gram }, ptr @d_shifts_141_dparser_gram, ptr null, ptr @d_scanner_141_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_141_dparser_gram, ptr @d_accepts_diff_141_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_142_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_142_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_143_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_144_dparser_gram, i32 -139, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr @d_shifts_123_dparser_gram, ptr null, ptr @d_scanner_123_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_123_dparser_gram, ptr @d_accepts_diff_123_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_145_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_146_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_147_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_148_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_149_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_150_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_151_dparser_gram, i32 -87, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_151_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr @d_shifts_6_dparser_gram, ptr null, ptr @d_scanner_6_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_6_dparser_gram, ptr @d_accepts_diff_6_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_152_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_152_dparser_gram }, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_153_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_154_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_155_dparser_gram, i32 15, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr @d_shifts_155_dparser_gram, ptr null, ptr @d_scanner_155_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_155_dparser_gram, ptr @d_accepts_diff_155_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr @d_goto_valid_156_dparser_gram, i32 -58, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_error_recovery_hints_125_dparser_gram }, ptr @d_shifts_125_dparser_gram, ptr null, ptr @d_scanner_125_dparser_gram, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr @d_transition_125_dparser_gram, ptr @d_accepts_diff_125_dparser_gram, i32 -1, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, { i32, [4 x i8], ptr }, ptr, ptr, ptr, i8, i8, i8, [5 x i8], ptr, ptr, i32, [4 x i8] } { ptr null, i32 -2147483647, [4 x i8] zeroinitializer, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @d_reductions_157_dparser_gram }, { i32, [4 x i8], ptr } zeroinitializer, { i32, [4 x i8], ptr } zeroinitializer, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }], align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"0 Start\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"1 Start\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"grammar\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"grammar.6\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"grammar.4\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"grammar.4.5\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"grammar.3\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"global_code\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"global_code.10\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"global_code.9\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"global_code.8\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"pass_types\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"pass_type\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"declarationtype\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"token_identifier\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"production\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"regex_production\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"production_name\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"production_name.18\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"rules\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"rules.21\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"rules.20\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"rule\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"rule.29\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"rule.28\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"rule.23\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"rule.23.27\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"rule.23.26\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"rule.23.24\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"rule.23.24.25\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"new_rule\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"simple_element\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"simple_element.32\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"new_subrule\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"element_modifier\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"rule_modifier\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"rule_assoc\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"rule_priority\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"rule_code\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"rule_code.42\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"rule_code.41\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"rule_code.40\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"speculative_code\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"final_code\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"pass_code\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"curly_code\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"curly_code.47\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"bracket_code\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"bracket_code.49\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"balanced_code\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"balanced_code.53\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"balanced_code.52\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"balanced_code.51\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"decimalint\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"hexint\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"octalint\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"${scanner\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"${declare\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"${token\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"${action}\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"${pass\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"preorder\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"postorder\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"for_all\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"for_undefined\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"tokenize\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"longest_match\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"whitespace\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"all_matches\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"set_op_priority_from_rule\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"all_subparsers\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"subparser\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"save_parse_tree\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"::=\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"${scan\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"$term\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"/i\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"$unary_op_right\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"$unary_op_left\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"$binary_op_right\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"$binary_op_left\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"$unary_right\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"$unary_left\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"$binary_right\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"$binary_left\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"$right\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"$left\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.109 = private unnamed_addr constant [32 x i8] c"[!~`@#$%^&*\\\\-_+=|:;\\\\\\\\<,>.?/]\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"'([^'\\\\\\\\]|\\\\\\\\[^])*'\00", align 1
@.str.111 = private unnamed_addr constant [25 x i8] c"\\\22([^\\\22\\\\\\\\]|\\\\\\\\[^])*\\\22\00", align 1
@.str.112 = private unnamed_addr constant [23 x i8] c"[a-zA-Z_][a-zA-Z_0-9]*\00", align 1
@.str.113 = private unnamed_addr constant [21 x i8] c"-?[1-9][0-9]*[uUlL]?\00", align 1
@.str.114 = private unnamed_addr constant [29 x i8] c"-?(0x|0X)[0-9a-fA-F]+[uUlL]?\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"-?0[0-7]*[uUlL]?\00", align 1
@d_symbols_dparser_gram = dso_local global [128 x { i32, [4 x i8], ptr, i32, [4 x i8] }] [{ i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.6, i32 7, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.7, i32 7, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.8, i32 7, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.9, i32 9, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.10, i32 9, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.11, i32 11, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.12, i32 9, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.13, i32 11, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.14, i32 14, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.15, i32 13, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.16, i32 13, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.17, i32 10, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.18, i32 9, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.19, i32 15, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.20, i32 16, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.21, i32 10, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.22, i32 16, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.23, i32 15, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.24, i32 18, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.25, i32 5, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.26, i32 8, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.27, i32 8, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.28, i32 4, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.29, i32 7, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.30, i32 7, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.31, i32 7, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.32, i32 10, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.33, i32 10, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.34, i32 10, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.35, i32 13, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.36, i32 8, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.37, i32 14, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.38, i32 17, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.39, i32 7, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.40, i32 11, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.41, i32 16, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.42, i32 13, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.43, i32 10, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.44, i32 13, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.45, i32 9, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.46, i32 12, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.47, i32 12, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.48, i32 12, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.49, i32 16, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.50, i32 10, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.51, i32 9, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.52, i32 10, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.53, i32 13, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.54, i32 12, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.55, i32 15, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.56, i32 13, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.57, i32 16, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.58, i32 16, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 2, [4 x i8] zeroinitializer, ptr @.str.59, i32 16, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.60, i32 7, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.61, i32 6, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.62, i32 5, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.63, i32 10, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.64, i32 7, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.65, i32 10, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.66, i32 6, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.67, i32 8, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.68, i32 9, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.2, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.69, i32 9, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.2, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.70, i32 7, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.2, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.71, i32 9, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.72, i32 6, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.2, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.73, i32 8, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.74, i32 9, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.75, i32 6, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.76, i32 7, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.77, i32 13, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.78, i32 8, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.79, i32 13, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.80, i32 10, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.81, i32 11, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.82, i32 25, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.83, i32 14, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.84, i32 9, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.85, i32 15, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.86, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.3, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.3, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.3, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.87, i32 3, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.88, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.89, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.90, i32 6, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.2, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.91, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.4, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.92, i32 5, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.93, i32 2, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.94, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.95, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.96, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.97, i32 15, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.98, i32 14, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.99, i32 16, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.100, i32 15, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.101, i32 12, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.102, i32 11, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.103, i32 13, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.104, i32 12, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.105, i32 6, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.106, i32 5, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.86, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.107, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.2, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.108, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.5, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.91, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.4, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.108, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.5, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.107, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.2, i32 1, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @.str.109, i32 37, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @.str.110, i32 29, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @.str.111, i32 38, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @.str.112, i32 22, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @.str.113, i32 20, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @.str.114, i32 28, [4 x i8] zeroinitializer }, { i32, [4 x i8], ptr, i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer, ptr @.str.115, i32 16, [4 x i8] zeroinitializer }], align 8
@parser_tables_dparser_gram = dso_local global { i32, [4 x i8], ptr, ptr, i32, i32, ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { i32 158, [4 x i8] zeroinitializer, ptr @d_states_dparser_gram, ptr @d_gotos_dparser_gram, i32 0, i32 128, ptr @d_symbols_dparser_gram, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_7_10_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = load ptr, ptr %7, align 8, !tbaa !7
  %18 = getelementptr inbounds ptr, ptr %17, i64 0
  %19 = load ptr, ptr %18, align 8, !tbaa !3
  %20 = load i32, ptr %9, align 4, !tbaa !9
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds nuw %struct.d_loc_t, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  %27 = load ptr, ptr %7, align 8, !tbaa !7
  %28 = getelementptr inbounds ptr, ptr %27, i64 0
  %29 = load ptr, ptr %28, align 8, !tbaa !3
  %30 = load i32, ptr %9, align 4, !tbaa !9
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  %33 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !24
  %35 = getelementptr inbounds i8, ptr %34, i64 -1
  %36 = load ptr, ptr %7, align 8, !tbaa !7
  %37 = getelementptr inbounds ptr, ptr %36, i64 0
  %38 = load ptr, ptr %37, align 8, !tbaa !3
  %39 = load i32, ptr %9, align 4, !tbaa !9
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %38, i64 %40
  %42 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %41, i32 0, i32 1
  %43 = getelementptr inbounds nuw %struct.d_loc_t, ptr %42, i32 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !25
  call void @add_global_code(ptr noundef %16, ptr noundef %26, ptr noundef %35, i32 noundef signext %44)
  ret i32 0
}

declare void @add_global_code(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_7_11_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %7, align 8, !tbaa !7
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !3
  %14 = load i32, ptr %9, align 4, !tbaa !9
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  %17 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %16, i32 0, i32 1
  %18 = getelementptr inbounds nuw %struct.d_loc_t, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = load ptr, ptr %7, align 8, !tbaa !7
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !3
  %23 = load i32, ptr %9, align 4, !tbaa !9
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  %26 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !24
  %28 = call ptr @dup_str(ptr noundef %19, ptr noundef %27)
  %29 = load ptr, ptr %6, align 8, !tbaa !3
  %30 = load i32, ptr %9, align 4, !tbaa !9
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  %33 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %32, i32 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !13
  %35 = getelementptr inbounds nuw %struct.Grammar, ptr %34, i32 0, i32 4
  %36 = getelementptr inbounds nuw %struct.Code, ptr %35, i32 0, i32 0
  store ptr %28, ptr %36, align 8, !tbaa !26
  %37 = load ptr, ptr %7, align 8, !tbaa !7
  %38 = getelementptr inbounds ptr, ptr %37, i64 0
  %39 = load ptr, ptr %38, align 8, !tbaa !3
  %40 = load i32, ptr %9, align 4, !tbaa !9
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %39, i64 %41
  %43 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %42, i32 0, i32 1
  %44 = getelementptr inbounds nuw %struct.d_loc_t, ptr %43, i32 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !25
  %46 = load ptr, ptr %6, align 8, !tbaa !3
  %47 = load i32, ptr %9, align 4, !tbaa !9
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %46, i64 %48
  %50 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %49, i32 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !13
  %52 = getelementptr inbounds nuw %struct.Grammar, ptr %51, i32 0, i32 4
  %53 = getelementptr inbounds nuw %struct.Code, ptr %52, i32 0, i32 1
  store i32 %45, ptr %53, align 8, !tbaa !40
  ret i32 0
}

declare ptr @dup_str(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_7_12_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %14 = load ptr, ptr %7, align 8, !tbaa !7
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !3
  %17 = load i32, ptr %9, align 4, !tbaa !9
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  %20 = call signext i32 @d_get_number_of_children(ptr noundef %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %64, label %22

22:                                               ; preds = %5
  %23 = load ptr, ptr %6, align 8, !tbaa !3
  %24 = load i32, ptr %9, align 4, !tbaa !9
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %23, i64 %25
  %27 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %26, i32 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !13
  %29 = load ptr, ptr %7, align 8, !tbaa !7
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !3
  %32 = load i32, ptr %9, align 4, !tbaa !9
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %31, i64 %33
  %35 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %34, i32 0, i32 1
  %36 = getelementptr inbounds nuw %struct.d_loc_t, ptr %35, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8, !tbaa !23
  %38 = load ptr, ptr %7, align 8, !tbaa !7
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !3
  %41 = load i32, ptr %9, align 4, !tbaa !9
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %40, i64 %42
  %44 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !24
  %46 = load ptr, ptr %7, align 8, !tbaa !7
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !3
  %49 = load i32, ptr %9, align 4, !tbaa !9
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %48, i64 %50
  %52 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %51, i32 0, i32 7
  %53 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %52, i32 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !41
  %55 = load ptr, ptr %7, align 8, !tbaa !7
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !3
  %58 = load i32, ptr %9, align 4, !tbaa !9
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %57, i64 %59
  %61 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %60, i32 0, i32 1
  %62 = getelementptr inbounds nuw %struct.d_loc_t, ptr %61, i32 0, i32 4
  %63 = load i32, ptr %62, align 8, !tbaa !25
  call void @add_declaration(ptr noundef %28, ptr noundef %37, ptr noundef %45, i32 noundef signext %54, i32 noundef signext %63)
  br label %115

64:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #3
  %65 = load ptr, ptr %7, align 8, !tbaa !7
  %66 = getelementptr inbounds ptr, ptr %65, i64 2
  %67 = load ptr, ptr %66, align 8, !tbaa !3
  %68 = load i32, ptr %9, align 4, !tbaa !9
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %67, i64 %69
  %71 = call signext i32 @d_get_number_of_children(ptr noundef %70)
  store i32 %71, ptr %12, align 4, !tbaa !9
  store i32 0, ptr %11, align 4, !tbaa !9
  br label %72

72:                                               ; preds = %111, %64
  %73 = load i32, ptr %11, align 4, !tbaa !9
  %74 = load i32, ptr %12, align 4, !tbaa !9
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %114

76:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #3
  %77 = load ptr, ptr %7, align 8, !tbaa !7
  %78 = getelementptr inbounds ptr, ptr %77, i64 2
  %79 = load ptr, ptr %78, align 8, !tbaa !3
  %80 = load i32, ptr %9, align 4, !tbaa !9
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %79, i64 %81
  %83 = load i32, ptr %11, align 4, !tbaa !9
  %84 = call ptr @d_get_child(ptr noundef %82, i32 noundef signext %83)
  store ptr %84, ptr %13, align 8, !tbaa !42
  %85 = load ptr, ptr %6, align 8, !tbaa !3
  %86 = load i32, ptr %9, align 4, !tbaa !9
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %85, i64 %87
  %89 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %88, i32 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !13
  %91 = load ptr, ptr %13, align 8, !tbaa !42
  %92 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %91, i32 0, i32 1
  %93 = getelementptr inbounds nuw %struct.d_loc_t, ptr %92, i32 0, i32 0
  %94 = load ptr, ptr %93, align 8, !tbaa !23
  %95 = load ptr, ptr %13, align 8, !tbaa !42
  %96 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !24
  %98 = load ptr, ptr %7, align 8, !tbaa !7
  %99 = getelementptr inbounds ptr, ptr %98, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !3
  %101 = load i32, ptr %9, align 4, !tbaa !9
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %100, i64 %102
  %104 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %103, i32 0, i32 7
  %105 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %104, i32 0, i32 3
  %106 = load i32, ptr %105, align 8, !tbaa !41
  %107 = load ptr, ptr %13, align 8, !tbaa !42
  %108 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %107, i32 0, i32 1
  %109 = getelementptr inbounds nuw %struct.d_loc_t, ptr %108, i32 0, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !25
  call void @add_declaration(ptr noundef %90, ptr noundef %94, ptr noundef %97, i32 noundef signext %106, i32 noundef signext %110)
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #3
  br label %111

111:                                              ; preds = %76
  %112 = load i32, ptr %11, align 4, !tbaa !9
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %11, align 4, !tbaa !9
  br label %72, !llvm.loop !44

114:                                              ; preds = %72
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #3
  br label %115

115:                                              ; preds = %114, %22
  ret i32 0
}

declare signext i32 @d_get_number_of_children(ptr noundef) #1

declare void @add_declaration(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

declare ptr @d_get_child(ptr noundef, i32 noundef signext) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_7_14_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 26
  %18 = load i32, ptr %17, align 8, !tbaa !46
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !46
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_7_15_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = load ptr, ptr %7, align 8, !tbaa !7
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !3
  %20 = load i32, ptr %9, align 4, !tbaa !9
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds nuw %struct.d_loc_t, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = load ptr, ptr %7, align 8, !tbaa !7
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !3
  %29 = load i32, ptr %9, align 4, !tbaa !9
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !24
  %34 = load ptr, ptr %7, align 8, !tbaa !7
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !3
  %37 = load i32, ptr %9, align 4, !tbaa !9
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %36, i64 %38
  %40 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %39, i32 0, i32 7
  %41 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !41
  %43 = load ptr, ptr %7, align 8, !tbaa !7
  %44 = getelementptr inbounds ptr, ptr %43, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !3
  %46 = load i32, ptr %9, align 4, !tbaa !9
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  %49 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %48, i32 0, i32 1
  %50 = getelementptr inbounds nuw %struct.d_loc_t, ptr %49, i32 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !25
  call void @add_pass(ptr noundef %16, ptr noundef %25, ptr noundef %33, i32 noundef signext %42, i32 noundef signext %51)
  ret i32 0
}

declare void @add_pass(ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_11_23_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %7, align 8, !tbaa !7
  %12 = getelementptr inbounds ptr, ptr %11, i64 0
  %13 = load ptr, ptr %12, align 8, !tbaa !3
  %14 = load i32, ptr %9, align 4, !tbaa !9
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  %17 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %16, i32 0, i32 7
  %18 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !41
  %20 = load ptr, ptr %7, align 8, !tbaa !7
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !3
  %23 = load i32, ptr %9, align 4, !tbaa !9
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  %26 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %25, i32 0, i32 7
  %27 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !41
  %29 = or i32 %19, %28
  %30 = load ptr, ptr %6, align 8, !tbaa !3
  %31 = load i32, ptr %9, align 4, !tbaa !9
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %30, i64 %32
  %34 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %33, i32 0, i32 7
  %35 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %34, i32 0, i32 3
  store i32 %29, ptr %35, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_12_24_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !41
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_12_25_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !41
  %18 = or i32 %17, 2
  store i32 %18, ptr %16, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_12_26_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !41
  %18 = or i32 %17, 4
  store i32 %18, ptr %16, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_12_27_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !41
  %18 = or i32 %17, 8
  store i32 %18, ptr %16, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_12_28_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !41
  %18 = or i32 %17, 16
  store i32 %18, ptr %16, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_13_29_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %15, i32 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_13_30_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %15, i32 0, i32 3
  store i32 1, ptr %16, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_13_31_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %15, i32 0, i32 3
  store i32 6, ptr %16, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_13_32_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %15, i32 0, i32 3
  store i32 2, ptr %16, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_13_33_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %15, i32 0, i32 3
  store i32 3, ptr %16, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_13_34_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %15, i32 0, i32 3
  store i32 4, ptr %16, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_13_35_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %15, i32 0, i32 3
  store i32 5, ptr %16, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_13_36_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 7
  %16 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %15, i32 0, i32 3
  store i32 7, ptr %16, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_14_37_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = load ptr, ptr %7, align 8, !tbaa !7
  %18 = getelementptr inbounds ptr, ptr %17, i64 0
  %19 = load ptr, ptr %18, align 8, !tbaa !3
  %20 = load i32, ptr %9, align 4, !tbaa !9
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds nuw %struct.d_loc_t, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = load ptr, ptr %7, align 8, !tbaa !7
  %27 = getelementptr inbounds ptr, ptr %26, i64 0
  %28 = load ptr, ptr %27, align 8, !tbaa !3
  %29 = load i32, ptr %9, align 4, !tbaa !9
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !24
  call void @new_token(ptr noundef %16, ptr noundef %25, ptr noundef %33)
  ret i32 0
}

declare void @new_token(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_16_41_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 23
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = getelementptr inbounds nuw %struct.Production, ptr %18, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, -2
  %22 = or i8 %21, 1
  store i8 %22, ptr %19, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_17_42_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = load ptr, ptr %7, align 8, !tbaa !7
  %18 = getelementptr inbounds ptr, ptr %17, i64 0
  %19 = load ptr, ptr %18, align 8, !tbaa !3
  %20 = load i32, ptr %9, align 4, !tbaa !9
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds nuw %struct.d_loc_t, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = load ptr, ptr %7, align 8, !tbaa !7
  %27 = getelementptr inbounds ptr, ptr %26, i64 0
  %28 = load ptr, ptr %27, align 8, !tbaa !3
  %29 = load i32, ptr %9, align 4, !tbaa !9
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !24
  %34 = call ptr @dup_str(ptr noundef %25, ptr noundef %33)
  %35 = call ptr @new_production(ptr noundef %16, ptr noundef %34)
  %36 = load ptr, ptr %6, align 8, !tbaa !3
  %37 = load i32, ptr %9, align 4, !tbaa !9
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %36, i64 %38
  %40 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %39, i32 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !13
  %42 = getelementptr inbounds nuw %struct.Grammar, ptr %41, i32 0, i32 23
  store ptr %35, ptr %42, align 8, !tbaa !47
  ret i32 0
}

declare ptr @new_production(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_22_49_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  br label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 8, !tbaa !3
  %13 = load i32, ptr %9, align 4, !tbaa !9
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  %16 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds nuw %struct.Grammar, ptr %17, i32 0, i32 23
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds nuw %struct.Production, ptr %19, i32 0, i32 2
  %21 = getelementptr inbounds nuw %struct.anon.4, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = icmp ne ptr %22, null
  br i1 %23, label %68, label %24

24:                                               ; preds = %11
  %25 = load ptr, ptr %6, align 8, !tbaa !3
  %26 = load i32, ptr %9, align 4, !tbaa !9
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %25, i64 %27
  %29 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !13
  %31 = getelementptr inbounds nuw %struct.Grammar, ptr %30, i32 0, i32 24
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = load ptr, ptr %6, align 8, !tbaa !3
  %34 = load i32, ptr %9, align 4, !tbaa !9
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %33, i64 %35
  %37 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %36, i32 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !13
  %39 = getelementptr inbounds nuw %struct.Grammar, ptr %38, i32 0, i32 23
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = getelementptr inbounds nuw %struct.Production, ptr %40, i32 0, i32 2
  %42 = getelementptr inbounds nuw %struct.anon.4, ptr %41, i32 0, i32 3
  %43 = getelementptr inbounds [3 x ptr], ptr %42, i64 0, i64 0
  %44 = load ptr, ptr %6, align 8, !tbaa !3
  %45 = load i32, ptr %9, align 4, !tbaa !9
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  %48 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %47, i32 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !13
  %50 = getelementptr inbounds nuw %struct.Grammar, ptr %49, i32 0, i32 23
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = getelementptr inbounds nuw %struct.Production, ptr %51, i32 0, i32 2
  %53 = getelementptr inbounds nuw %struct.anon.4, ptr %52, i32 0, i32 2
  store ptr %43, ptr %53, align 8, !tbaa !48
  %54 = load ptr, ptr %6, align 8, !tbaa !3
  %55 = load i32, ptr %9, align 4, !tbaa !9
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %54, i64 %56
  %58 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %57, i32 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !13
  %60 = getelementptr inbounds nuw %struct.Grammar, ptr %59, i32 0, i32 23
  %61 = load ptr, ptr %60, align 8, !tbaa !47
  %62 = getelementptr inbounds nuw %struct.Production, ptr %61, i32 0, i32 2
  %63 = getelementptr inbounds nuw %struct.anon.4, ptr %62, i32 0, i32 0
  %64 = load i32, ptr %63, align 8, !tbaa !55
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 8, !tbaa !55
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds nuw ptr, ptr %43, i64 %66
  store ptr %32, ptr %67, align 8, !tbaa !56
  br label %208

68:                                               ; preds = %11
  %69 = load ptr, ptr %6, align 8, !tbaa !3
  %70 = load i32, ptr %9, align 4, !tbaa !9
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %69, i64 %71
  %73 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %72, i32 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !13
  %75 = getelementptr inbounds nuw %struct.Grammar, ptr %74, i32 0, i32 23
  %76 = load ptr, ptr %75, align 8, !tbaa !47
  %77 = getelementptr inbounds nuw %struct.Production, ptr %76, i32 0, i32 2
  %78 = getelementptr inbounds nuw %struct.anon.4, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !48
  %80 = load ptr, ptr %6, align 8, !tbaa !3
  %81 = load i32, ptr %9, align 4, !tbaa !9
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %80, i64 %82
  %84 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %83, i32 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !13
  %86 = getelementptr inbounds nuw %struct.Grammar, ptr %85, i32 0, i32 23
  %87 = load ptr, ptr %86, align 8, !tbaa !47
  %88 = getelementptr inbounds nuw %struct.Production, ptr %87, i32 0, i32 2
  %89 = getelementptr inbounds nuw %struct.anon.4, ptr %88, i32 0, i32 3
  %90 = getelementptr inbounds [3 x ptr], ptr %89, i64 0, i64 0
  %91 = icmp eq ptr %79, %90
  br i1 %91, label %92, label %140

92:                                               ; preds = %68
  %93 = load ptr, ptr %6, align 8, !tbaa !3
  %94 = load i32, ptr %9, align 4, !tbaa !9
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %93, i64 %95
  %97 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %96, i32 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !13
  %99 = getelementptr inbounds nuw %struct.Grammar, ptr %98, i32 0, i32 23
  %100 = load ptr, ptr %99, align 8, !tbaa !47
  %101 = getelementptr inbounds nuw %struct.Production, ptr %100, i32 0, i32 2
  %102 = getelementptr inbounds nuw %struct.anon.4, ptr %101, i32 0, i32 0
  %103 = load i32, ptr %102, align 8, !tbaa !55
  %104 = icmp ult i32 %103, 3
  br i1 %104, label %105, label %139

105:                                              ; preds = %92
  %106 = load ptr, ptr %6, align 8, !tbaa !3
  %107 = load i32, ptr %9, align 4, !tbaa !9
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %106, i64 %108
  %110 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %109, i32 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !13
  %112 = getelementptr inbounds nuw %struct.Grammar, ptr %111, i32 0, i32 24
  %113 = load ptr, ptr %112, align 8, !tbaa !54
  %114 = load ptr, ptr %6, align 8, !tbaa !3
  %115 = load i32, ptr %9, align 4, !tbaa !9
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %114, i64 %116
  %118 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %117, i32 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !13
  %120 = getelementptr inbounds nuw %struct.Grammar, ptr %119, i32 0, i32 23
  %121 = load ptr, ptr %120, align 8, !tbaa !47
  %122 = getelementptr inbounds nuw %struct.Production, ptr %121, i32 0, i32 2
  %123 = getelementptr inbounds nuw %struct.anon.4, ptr %122, i32 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !48
  %125 = load ptr, ptr %6, align 8, !tbaa !3
  %126 = load i32, ptr %9, align 4, !tbaa !9
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, ptr %125, i64 %127
  %129 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %128, i32 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !13
  %131 = getelementptr inbounds nuw %struct.Grammar, ptr %130, i32 0, i32 23
  %132 = load ptr, ptr %131, align 8, !tbaa !47
  %133 = getelementptr inbounds nuw %struct.Production, ptr %132, i32 0, i32 2
  %134 = getelementptr inbounds nuw %struct.anon.4, ptr %133, i32 0, i32 0
  %135 = load i32, ptr %134, align 8, !tbaa !55
  %136 = add i32 %135, 1
  store i32 %136, ptr %134, align 8, !tbaa !55
  %137 = zext i32 %135 to i64
  %138 = getelementptr inbounds nuw ptr, ptr %124, i64 %137
  store ptr %113, ptr %138, align 8, !tbaa !56
  br label %208

139:                                              ; preds = %92
  br label %189

140:                                              ; preds = %68
  %141 = load ptr, ptr %6, align 8, !tbaa !3
  %142 = load i32, ptr %9, align 4, !tbaa !9
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, ptr %141, i64 %143
  %145 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %144, i32 0, i32 6
  %146 = load ptr, ptr %145, align 8, !tbaa !13
  %147 = getelementptr inbounds nuw %struct.Grammar, ptr %146, i32 0, i32 23
  %148 = load ptr, ptr %147, align 8, !tbaa !47
  %149 = getelementptr inbounds nuw %struct.Production, ptr %148, i32 0, i32 2
  %150 = getelementptr inbounds nuw %struct.anon.4, ptr %149, i32 0, i32 0
  %151 = load i32, ptr %150, align 8, !tbaa !55
  %152 = and i32 %151, 7
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %188

154:                                              ; preds = %140
  %155 = load ptr, ptr %6, align 8, !tbaa !3
  %156 = load i32, ptr %9, align 4, !tbaa !9
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %155, i64 %157
  %159 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %158, i32 0, i32 6
  %160 = load ptr, ptr %159, align 8, !tbaa !13
  %161 = getelementptr inbounds nuw %struct.Grammar, ptr %160, i32 0, i32 24
  %162 = load ptr, ptr %161, align 8, !tbaa !54
  %163 = load ptr, ptr %6, align 8, !tbaa !3
  %164 = load i32, ptr %9, align 4, !tbaa !9
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %163, i64 %165
  %167 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %166, i32 0, i32 6
  %168 = load ptr, ptr %167, align 8, !tbaa !13
  %169 = getelementptr inbounds nuw %struct.Grammar, ptr %168, i32 0, i32 23
  %170 = load ptr, ptr %169, align 8, !tbaa !47
  %171 = getelementptr inbounds nuw %struct.Production, ptr %170, i32 0, i32 2
  %172 = getelementptr inbounds nuw %struct.anon.4, ptr %171, i32 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !48
  %174 = load ptr, ptr %6, align 8, !tbaa !3
  %175 = load i32, ptr %9, align 4, !tbaa !9
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %174, i64 %176
  %178 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %177, i32 0, i32 6
  %179 = load ptr, ptr %178, align 8, !tbaa !13
  %180 = getelementptr inbounds nuw %struct.Grammar, ptr %179, i32 0, i32 23
  %181 = load ptr, ptr %180, align 8, !tbaa !47
  %182 = getelementptr inbounds nuw %struct.Production, ptr %181, i32 0, i32 2
  %183 = getelementptr inbounds nuw %struct.anon.4, ptr %182, i32 0, i32 0
  %184 = load i32, ptr %183, align 8, !tbaa !55
  %185 = add i32 %184, 1
  store i32 %185, ptr %183, align 8, !tbaa !55
  %186 = zext i32 %184 to i64
  %187 = getelementptr inbounds nuw ptr, ptr %173, i64 %186
  store ptr %162, ptr %187, align 8, !tbaa !56
  br label %208

188:                                              ; preds = %140
  br label %189

189:                                              ; preds = %188, %139
  br label %190

190:                                              ; preds = %189
  %191 = load ptr, ptr %6, align 8, !tbaa !3
  %192 = load i32, ptr %9, align 4, !tbaa !9
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %191, i64 %193
  %195 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %194, i32 0, i32 6
  %196 = load ptr, ptr %195, align 8, !tbaa !13
  %197 = getelementptr inbounds nuw %struct.Grammar, ptr %196, i32 0, i32 23
  %198 = load ptr, ptr %197, align 8, !tbaa !47
  %199 = getelementptr inbounds nuw %struct.Production, ptr %198, i32 0, i32 2
  %200 = load ptr, ptr %6, align 8, !tbaa !3
  %201 = load i32, ptr %9, align 4, !tbaa !9
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, ptr %200, i64 %202
  %204 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %203, i32 0, i32 6
  %205 = load ptr, ptr %204, align 8, !tbaa !13
  %206 = getelementptr inbounds nuw %struct.Grammar, ptr %205, i32 0, i32 24
  %207 = load ptr, ptr %206, align 8, !tbaa !54
  call void @vec_add_internal(ptr noundef %199, ptr noundef %207)
  br label %208

208:                                              ; preds = %190, %154, %105, %24
  ret i32 0
}

declare void @vec_add_internal(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_30_62_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = load ptr, ptr %6, align 8, !tbaa !3
  %18 = load i32, ptr %9, align 4, !tbaa !9
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %17, i64 %19
  %21 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = getelementptr inbounds nuw %struct.Grammar, ptr %22, i32 0, i32 23
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = call ptr @new_rule(ptr noundef %16, ptr noundef %24)
  %26 = load ptr, ptr %6, align 8, !tbaa !3
  %27 = load i32, ptr %9, align 4, !tbaa !9
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  %30 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  %32 = getelementptr inbounds nuw %struct.Grammar, ptr %31, i32 0, i32 24
  store ptr %25, ptr %32, align 8, !tbaa !54
  ret i32 0
}

declare ptr @new_rule(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_31_63_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = load ptr, ptr %7, align 8, !tbaa !7
  %18 = getelementptr inbounds ptr, ptr %17, i64 0
  %19 = load ptr, ptr %18, align 8, !tbaa !3
  %20 = load i32, ptr %9, align 4, !tbaa !9
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds nuw %struct.d_loc_t, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = load ptr, ptr %7, align 8, !tbaa !7
  %27 = getelementptr inbounds ptr, ptr %26, i64 0
  %28 = load ptr, ptr %27, align 8, !tbaa !3
  %29 = load i32, ptr %9, align 4, !tbaa !9
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !24
  %34 = load ptr, ptr %6, align 8, !tbaa !3
  %35 = load i32, ptr %9, align 4, !tbaa !9
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %34, i64 %36
  %38 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = getelementptr inbounds nuw %struct.Grammar, ptr %39, i32 0, i32 24
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = call ptr @new_string(ptr noundef %16, ptr noundef %25, ptr noundef %33, ptr noundef %41)
  %43 = load ptr, ptr %6, align 8, !tbaa !3
  %44 = load i32, ptr %9, align 4, !tbaa !9
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  %47 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %46, i32 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = getelementptr inbounds nuw %struct.Grammar, ptr %48, i32 0, i32 25
  store ptr %42, ptr %49, align 8, !tbaa !57
  ret i32 0
}

declare ptr @new_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_31_64_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = load ptr, ptr %7, align 8, !tbaa !7
  %18 = getelementptr inbounds ptr, ptr %17, i64 0
  %19 = load ptr, ptr %18, align 8, !tbaa !3
  %20 = load i32, ptr %9, align 4, !tbaa !9
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds nuw %struct.d_loc_t, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = load ptr, ptr %7, align 8, !tbaa !7
  %27 = getelementptr inbounds ptr, ptr %26, i64 0
  %28 = load ptr, ptr %27, align 8, !tbaa !3
  %29 = load i32, ptr %9, align 4, !tbaa !9
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !24
  %34 = load ptr, ptr %6, align 8, !tbaa !3
  %35 = load i32, ptr %9, align 4, !tbaa !9
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %34, i64 %36
  %38 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = getelementptr inbounds nuw %struct.Grammar, ptr %39, i32 0, i32 24
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = call ptr @new_string(ptr noundef %16, ptr noundef %25, ptr noundef %33, ptr noundef %41)
  %43 = load ptr, ptr %6, align 8, !tbaa !3
  %44 = load i32, ptr %9, align 4, !tbaa !9
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  %47 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %46, i32 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = getelementptr inbounds nuw %struct.Grammar, ptr %48, i32 0, i32 25
  store ptr %42, ptr %49, align 8, !tbaa !57
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_31_65_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %7, align 8, !tbaa !7
  %12 = getelementptr inbounds ptr, ptr %11, i64 0
  %13 = load ptr, ptr %12, align 8, !tbaa !3
  %14 = load i32, ptr %9, align 4, !tbaa !9
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  %17 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %16, i32 0, i32 1
  %18 = getelementptr inbounds nuw %struct.d_loc_t, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = load ptr, ptr %7, align 8, !tbaa !7
  %21 = getelementptr inbounds ptr, ptr %20, i64 0
  %22 = load ptr, ptr %21, align 8, !tbaa !3
  %23 = load i32, ptr %9, align 4, !tbaa !9
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  %26 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !24
  %28 = load ptr, ptr %6, align 8, !tbaa !3
  %29 = load i32, ptr %9, align 4, !tbaa !9
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %31, i32 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !13
  %34 = getelementptr inbounds nuw %struct.Grammar, ptr %33, i32 0, i32 24
  %35 = load ptr, ptr %34, align 8, !tbaa !54
  %36 = call ptr @new_ident(ptr noundef %19, ptr noundef %27, ptr noundef %35)
  %37 = load ptr, ptr %6, align 8, !tbaa !3
  %38 = load i32, ptr %9, align 4, !tbaa !9
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %37, i64 %39
  %41 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %40, i32 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !13
  %43 = getelementptr inbounds nuw %struct.Grammar, ptr %42, i32 0, i32 25
  store ptr %36, ptr %43, align 8, !tbaa !57
  ret i32 0
}

declare ptr @new_ident(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_31_66_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = load ptr, ptr %7, align 8, !tbaa !7
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !3
  %20 = load i32, ptr %9, align 4, !tbaa !9
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds nuw %struct.d_loc_t, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = load ptr, ptr %7, align 8, !tbaa !7
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !3
  %29 = load i32, ptr %9, align 4, !tbaa !9
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !24
  %34 = load ptr, ptr %6, align 8, !tbaa !3
  %35 = load i32, ptr %9, align 4, !tbaa !9
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %34, i64 %36
  %38 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = getelementptr inbounds nuw %struct.Grammar, ptr %39, i32 0, i32 24
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = call ptr @new_code(ptr noundef %16, ptr noundef %25, ptr noundef %33, ptr noundef %41)
  %43 = load ptr, ptr %6, align 8, !tbaa !3
  %44 = load i32, ptr %9, align 4, !tbaa !9
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  %47 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %46, i32 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = getelementptr inbounds nuw %struct.Grammar, ptr %48, i32 0, i32 25
  store ptr %42, ptr %49, align 8, !tbaa !57
  ret i32 0
}

declare ptr @new_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_31_67_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 23
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = load ptr, ptr %7, align 8, !tbaa !7
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !3
  %22 = load i32, ptr %9, align 4, !tbaa !9
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  %25 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %24, i32 0, i32 7
  %26 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = call ptr @new_elem_nterm(ptr noundef %18, ptr noundef %27)
  %29 = load ptr, ptr %6, align 8, !tbaa !3
  %30 = load i32, ptr %9, align 4, !tbaa !9
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  %33 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %32, i32 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !13
  %35 = getelementptr inbounds nuw %struct.Grammar, ptr %34, i32 0, i32 25
  store ptr %28, ptr %35, align 8, !tbaa !57
  %36 = load ptr, ptr %7, align 8, !tbaa !7
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !3
  %39 = load i32, ptr %9, align 4, !tbaa !9
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %38, i64 %40
  %42 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %41, i32 0, i32 7
  %43 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %42, i32 0, i32 0
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  %45 = load ptr, ptr %6, align 8, !tbaa !3
  %46 = load i32, ptr %9, align 4, !tbaa !9
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  %49 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !13
  %51 = getelementptr inbounds nuw %struct.Grammar, ptr %50, i32 0, i32 23
  store ptr %44, ptr %51, align 8, !tbaa !47
  %52 = load ptr, ptr %7, align 8, !tbaa !7
  %53 = getelementptr inbounds ptr, ptr %52, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !3
  %55 = load i32, ptr %9, align 4, !tbaa !9
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %54, i64 %56
  %58 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %57, i32 0, i32 7
  %59 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !58
  %61 = load ptr, ptr %6, align 8, !tbaa !3
  %62 = load i32, ptr %9, align 4, !tbaa !9
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %61, i64 %63
  %65 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %64, i32 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !13
  %67 = getelementptr inbounds nuw %struct.Grammar, ptr %66, i32 0, i32 24
  store ptr %60, ptr %67, align 8, !tbaa !54
  br label %68

68:                                               ; preds = %5
  %69 = load ptr, ptr %6, align 8, !tbaa !3
  %70 = load i32, ptr %9, align 4, !tbaa !9
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %69, i64 %71
  %73 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %72, i32 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !13
  %75 = getelementptr inbounds nuw %struct.Grammar, ptr %74, i32 0, i32 24
  %76 = load ptr, ptr %75, align 8, !tbaa !54
  %77 = getelementptr inbounds nuw %struct.Rule, ptr %76, i32 0, i32 6
  %78 = getelementptr inbounds nuw %struct.anon.5, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !60
  %80 = icmp ne ptr %79, null
  br i1 %80, label %125, label %81

81:                                               ; preds = %68
  %82 = load ptr, ptr %6, align 8, !tbaa !3
  %83 = load i32, ptr %9, align 4, !tbaa !9
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %82, i64 %84
  %86 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %85, i32 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !13
  %88 = getelementptr inbounds nuw %struct.Grammar, ptr %87, i32 0, i32 25
  %89 = load ptr, ptr %88, align 8, !tbaa !57
  %90 = load ptr, ptr %6, align 8, !tbaa !3
  %91 = load i32, ptr %9, align 4, !tbaa !9
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %90, i64 %92
  %94 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %93, i32 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !13
  %96 = getelementptr inbounds nuw %struct.Grammar, ptr %95, i32 0, i32 24
  %97 = load ptr, ptr %96, align 8, !tbaa !54
  %98 = getelementptr inbounds nuw %struct.Rule, ptr %97, i32 0, i32 6
  %99 = getelementptr inbounds nuw %struct.anon.5, ptr %98, i32 0, i32 3
  %100 = getelementptr inbounds [3 x ptr], ptr %99, i64 0, i64 0
  %101 = load ptr, ptr %6, align 8, !tbaa !3
  %102 = load i32, ptr %9, align 4, !tbaa !9
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, ptr %101, i64 %103
  %105 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %104, i32 0, i32 6
  %106 = load ptr, ptr %105, align 8, !tbaa !13
  %107 = getelementptr inbounds nuw %struct.Grammar, ptr %106, i32 0, i32 24
  %108 = load ptr, ptr %107, align 8, !tbaa !54
  %109 = getelementptr inbounds nuw %struct.Rule, ptr %108, i32 0, i32 6
  %110 = getelementptr inbounds nuw %struct.anon.5, ptr %109, i32 0, i32 2
  store ptr %100, ptr %110, align 8, !tbaa !60
  %111 = load ptr, ptr %6, align 8, !tbaa !3
  %112 = load i32, ptr %9, align 4, !tbaa !9
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, ptr %111, i64 %113
  %115 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %114, i32 0, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !13
  %117 = getelementptr inbounds nuw %struct.Grammar, ptr %116, i32 0, i32 24
  %118 = load ptr, ptr %117, align 8, !tbaa !54
  %119 = getelementptr inbounds nuw %struct.Rule, ptr %118, i32 0, i32 6
  %120 = getelementptr inbounds nuw %struct.anon.5, ptr %119, i32 0, i32 0
  %121 = load i32, ptr %120, align 8, !tbaa !66
  %122 = add i32 %121, 1
  store i32 %122, ptr %120, align 8, !tbaa !66
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds nuw ptr, ptr %100, i64 %123
  store ptr %89, ptr %124, align 8, !tbaa !67
  br label %265

125:                                              ; preds = %68
  %126 = load ptr, ptr %6, align 8, !tbaa !3
  %127 = load i32, ptr %9, align 4, !tbaa !9
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %126, i64 %128
  %130 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %129, i32 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !13
  %132 = getelementptr inbounds nuw %struct.Grammar, ptr %131, i32 0, i32 24
  %133 = load ptr, ptr %132, align 8, !tbaa !54
  %134 = getelementptr inbounds nuw %struct.Rule, ptr %133, i32 0, i32 6
  %135 = getelementptr inbounds nuw %struct.anon.5, ptr %134, i32 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !60
  %137 = load ptr, ptr %6, align 8, !tbaa !3
  %138 = load i32, ptr %9, align 4, !tbaa !9
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, ptr %137, i64 %139
  %141 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %140, i32 0, i32 6
  %142 = load ptr, ptr %141, align 8, !tbaa !13
  %143 = getelementptr inbounds nuw %struct.Grammar, ptr %142, i32 0, i32 24
  %144 = load ptr, ptr %143, align 8, !tbaa !54
  %145 = getelementptr inbounds nuw %struct.Rule, ptr %144, i32 0, i32 6
  %146 = getelementptr inbounds nuw %struct.anon.5, ptr %145, i32 0, i32 3
  %147 = getelementptr inbounds [3 x ptr], ptr %146, i64 0, i64 0
  %148 = icmp eq ptr %136, %147
  br i1 %148, label %149, label %197

149:                                              ; preds = %125
  %150 = load ptr, ptr %6, align 8, !tbaa !3
  %151 = load i32, ptr %9, align 4, !tbaa !9
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, ptr %150, i64 %152
  %154 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %153, i32 0, i32 6
  %155 = load ptr, ptr %154, align 8, !tbaa !13
  %156 = getelementptr inbounds nuw %struct.Grammar, ptr %155, i32 0, i32 24
  %157 = load ptr, ptr %156, align 8, !tbaa !54
  %158 = getelementptr inbounds nuw %struct.Rule, ptr %157, i32 0, i32 6
  %159 = getelementptr inbounds nuw %struct.anon.5, ptr %158, i32 0, i32 0
  %160 = load i32, ptr %159, align 8, !tbaa !66
  %161 = icmp ult i32 %160, 3
  br i1 %161, label %162, label %196

162:                                              ; preds = %149
  %163 = load ptr, ptr %6, align 8, !tbaa !3
  %164 = load i32, ptr %9, align 4, !tbaa !9
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %163, i64 %165
  %167 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %166, i32 0, i32 6
  %168 = load ptr, ptr %167, align 8, !tbaa !13
  %169 = getelementptr inbounds nuw %struct.Grammar, ptr %168, i32 0, i32 25
  %170 = load ptr, ptr %169, align 8, !tbaa !57
  %171 = load ptr, ptr %6, align 8, !tbaa !3
  %172 = load i32, ptr %9, align 4, !tbaa !9
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, ptr %171, i64 %173
  %175 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %174, i32 0, i32 6
  %176 = load ptr, ptr %175, align 8, !tbaa !13
  %177 = getelementptr inbounds nuw %struct.Grammar, ptr %176, i32 0, i32 24
  %178 = load ptr, ptr %177, align 8, !tbaa !54
  %179 = getelementptr inbounds nuw %struct.Rule, ptr %178, i32 0, i32 6
  %180 = getelementptr inbounds nuw %struct.anon.5, ptr %179, i32 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !60
  %182 = load ptr, ptr %6, align 8, !tbaa !3
  %183 = load i32, ptr %9, align 4, !tbaa !9
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %182, i64 %184
  %186 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %185, i32 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !13
  %188 = getelementptr inbounds nuw %struct.Grammar, ptr %187, i32 0, i32 24
  %189 = load ptr, ptr %188, align 8, !tbaa !54
  %190 = getelementptr inbounds nuw %struct.Rule, ptr %189, i32 0, i32 6
  %191 = getelementptr inbounds nuw %struct.anon.5, ptr %190, i32 0, i32 0
  %192 = load i32, ptr %191, align 8, !tbaa !66
  %193 = add i32 %192, 1
  store i32 %193, ptr %191, align 8, !tbaa !66
  %194 = zext i32 %192 to i64
  %195 = getelementptr inbounds nuw ptr, ptr %181, i64 %194
  store ptr %170, ptr %195, align 8, !tbaa !67
  br label %265

196:                                              ; preds = %149
  br label %246

197:                                              ; preds = %125
  %198 = load ptr, ptr %6, align 8, !tbaa !3
  %199 = load i32, ptr %9, align 4, !tbaa !9
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, ptr %198, i64 %200
  %202 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %201, i32 0, i32 6
  %203 = load ptr, ptr %202, align 8, !tbaa !13
  %204 = getelementptr inbounds nuw %struct.Grammar, ptr %203, i32 0, i32 24
  %205 = load ptr, ptr %204, align 8, !tbaa !54
  %206 = getelementptr inbounds nuw %struct.Rule, ptr %205, i32 0, i32 6
  %207 = getelementptr inbounds nuw %struct.anon.5, ptr %206, i32 0, i32 0
  %208 = load i32, ptr %207, align 8, !tbaa !66
  %209 = and i32 %208, 7
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %245

211:                                              ; preds = %197
  %212 = load ptr, ptr %6, align 8, !tbaa !3
  %213 = load i32, ptr %9, align 4, !tbaa !9
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, ptr %212, i64 %214
  %216 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %215, i32 0, i32 6
  %217 = load ptr, ptr %216, align 8, !tbaa !13
  %218 = getelementptr inbounds nuw %struct.Grammar, ptr %217, i32 0, i32 25
  %219 = load ptr, ptr %218, align 8, !tbaa !57
  %220 = load ptr, ptr %6, align 8, !tbaa !3
  %221 = load i32, ptr %9, align 4, !tbaa !9
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, ptr %220, i64 %222
  %224 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %223, i32 0, i32 6
  %225 = load ptr, ptr %224, align 8, !tbaa !13
  %226 = getelementptr inbounds nuw %struct.Grammar, ptr %225, i32 0, i32 24
  %227 = load ptr, ptr %226, align 8, !tbaa !54
  %228 = getelementptr inbounds nuw %struct.Rule, ptr %227, i32 0, i32 6
  %229 = getelementptr inbounds nuw %struct.anon.5, ptr %228, i32 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !60
  %231 = load ptr, ptr %6, align 8, !tbaa !3
  %232 = load i32, ptr %9, align 4, !tbaa !9
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, ptr %231, i64 %233
  %235 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %234, i32 0, i32 6
  %236 = load ptr, ptr %235, align 8, !tbaa !13
  %237 = getelementptr inbounds nuw %struct.Grammar, ptr %236, i32 0, i32 24
  %238 = load ptr, ptr %237, align 8, !tbaa !54
  %239 = getelementptr inbounds nuw %struct.Rule, ptr %238, i32 0, i32 6
  %240 = getelementptr inbounds nuw %struct.anon.5, ptr %239, i32 0, i32 0
  %241 = load i32, ptr %240, align 8, !tbaa !66
  %242 = add i32 %241, 1
  store i32 %242, ptr %240, align 8, !tbaa !66
  %243 = zext i32 %241 to i64
  %244 = getelementptr inbounds nuw ptr, ptr %230, i64 %243
  store ptr %219, ptr %244, align 8, !tbaa !67
  br label %265

245:                                              ; preds = %197
  br label %246

246:                                              ; preds = %245, %196
  br label %247

247:                                              ; preds = %246
  %248 = load ptr, ptr %6, align 8, !tbaa !3
  %249 = load i32, ptr %9, align 4, !tbaa !9
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, ptr %248, i64 %250
  %252 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %251, i32 0, i32 6
  %253 = load ptr, ptr %252, align 8, !tbaa !13
  %254 = getelementptr inbounds nuw %struct.Grammar, ptr %253, i32 0, i32 24
  %255 = load ptr, ptr %254, align 8, !tbaa !54
  %256 = getelementptr inbounds nuw %struct.Rule, ptr %255, i32 0, i32 6
  %257 = load ptr, ptr %6, align 8, !tbaa !3
  %258 = load i32, ptr %9, align 4, !tbaa !9
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, ptr %257, i64 %259
  %261 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %260, i32 0, i32 6
  %262 = load ptr, ptr %261, align 8, !tbaa !13
  %263 = getelementptr inbounds nuw %struct.Grammar, ptr %262, i32 0, i32 25
  %264 = load ptr, ptr %263, align 8, !tbaa !57
  call void @vec_add_internal(ptr noundef %256, ptr noundef %264)
  br label %265

265:                                              ; preds = %247, %211, %162, %81
  ret i32 0
}

declare ptr @new_elem_nterm(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_33_71_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #3
  %13 = load ptr, ptr %6, align 8, !tbaa !3
  %14 = load i32, ptr %9, align 4, !tbaa !9
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  %17 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = call ptr @new_internal_production(ptr noundef %18, ptr noundef null)
  store ptr %19, ptr %11, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #3
  %20 = load ptr, ptr %6, align 8, !tbaa !3
  %21 = load i32, ptr %9, align 4, !tbaa !9
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  %24 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = load ptr, ptr %11, align 8, !tbaa !68
  %27 = call ptr @new_rule(ptr noundef %25, ptr noundef %26)
  store ptr %27, ptr %12, align 8, !tbaa !56
  br label %28

28:                                               ; preds = %5
  %29 = load ptr, ptr %11, align 8, !tbaa !68
  %30 = getelementptr inbounds nuw %struct.Production, ptr %29, i32 0, i32 2
  %31 = getelementptr inbounds nuw %struct.anon.4, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = icmp ne ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %12, align 8, !tbaa !56
  %36 = load ptr, ptr %11, align 8, !tbaa !68
  %37 = getelementptr inbounds nuw %struct.Production, ptr %36, i32 0, i32 2
  %38 = getelementptr inbounds nuw %struct.anon.4, ptr %37, i32 0, i32 3
  %39 = getelementptr inbounds [3 x ptr], ptr %38, i64 0, i64 0
  %40 = load ptr, ptr %11, align 8, !tbaa !68
  %41 = getelementptr inbounds nuw %struct.Production, ptr %40, i32 0, i32 2
  %42 = getelementptr inbounds nuw %struct.anon.4, ptr %41, i32 0, i32 2
  store ptr %39, ptr %42, align 8, !tbaa !48
  %43 = load ptr, ptr %11, align 8, !tbaa !68
  %44 = getelementptr inbounds nuw %struct.Production, ptr %43, i32 0, i32 2
  %45 = getelementptr inbounds nuw %struct.anon.4, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 8, !tbaa !55
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !55
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds nuw ptr, ptr %39, i64 %48
  store ptr %35, ptr %49, align 8, !tbaa !56
  br label %107

50:                                               ; preds = %28
  %51 = load ptr, ptr %11, align 8, !tbaa !68
  %52 = getelementptr inbounds nuw %struct.Production, ptr %51, i32 0, i32 2
  %53 = getelementptr inbounds nuw %struct.anon.4, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = load ptr, ptr %11, align 8, !tbaa !68
  %56 = getelementptr inbounds nuw %struct.Production, ptr %55, i32 0, i32 2
  %57 = getelementptr inbounds nuw %struct.anon.4, ptr %56, i32 0, i32 3
  %58 = getelementptr inbounds [3 x ptr], ptr %57, i64 0, i64 0
  %59 = icmp eq ptr %54, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %50
  %61 = load ptr, ptr %11, align 8, !tbaa !68
  %62 = getelementptr inbounds nuw %struct.Production, ptr %61, i32 0, i32 2
  %63 = getelementptr inbounds nuw %struct.anon.4, ptr %62, i32 0, i32 0
  %64 = load i32, ptr %63, align 8, !tbaa !55
  %65 = icmp ult i32 %64, 3
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load ptr, ptr %12, align 8, !tbaa !56
  %68 = load ptr, ptr %11, align 8, !tbaa !68
  %69 = getelementptr inbounds nuw %struct.Production, ptr %68, i32 0, i32 2
  %70 = getelementptr inbounds nuw %struct.anon.4, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = load ptr, ptr %11, align 8, !tbaa !68
  %73 = getelementptr inbounds nuw %struct.Production, ptr %72, i32 0, i32 2
  %74 = getelementptr inbounds nuw %struct.anon.4, ptr %73, i32 0, i32 0
  %75 = load i32, ptr %74, align 8, !tbaa !55
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 8, !tbaa !55
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds nuw ptr, ptr %71, i64 %77
  store ptr %67, ptr %78, align 8, !tbaa !56
  br label %107

79:                                               ; preds = %60
  br label %101

80:                                               ; preds = %50
  %81 = load ptr, ptr %11, align 8, !tbaa !68
  %82 = getelementptr inbounds nuw %struct.Production, ptr %81, i32 0, i32 2
  %83 = getelementptr inbounds nuw %struct.anon.4, ptr %82, i32 0, i32 0
  %84 = load i32, ptr %83, align 8, !tbaa !55
  %85 = and i32 %84, 7
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load ptr, ptr %12, align 8, !tbaa !56
  %89 = load ptr, ptr %11, align 8, !tbaa !68
  %90 = getelementptr inbounds nuw %struct.Production, ptr %89, i32 0, i32 2
  %91 = getelementptr inbounds nuw %struct.anon.4, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !48
  %93 = load ptr, ptr %11, align 8, !tbaa !68
  %94 = getelementptr inbounds nuw %struct.Production, ptr %93, i32 0, i32 2
  %95 = getelementptr inbounds nuw %struct.anon.4, ptr %94, i32 0, i32 0
  %96 = load i32, ptr %95, align 8, !tbaa !55
  %97 = add i32 %96, 1
  store i32 %97, ptr %95, align 8, !tbaa !55
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds nuw ptr, ptr %92, i64 %98
  store ptr %88, ptr %99, align 8, !tbaa !56
  br label %107

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100, %79
  br label %102

102:                                              ; preds = %101
  %103 = load ptr, ptr %11, align 8, !tbaa !68
  %104 = getelementptr inbounds nuw %struct.Production, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %12, align 8, !tbaa !56
  call void @vec_add_internal(ptr noundef %104, ptr noundef %105)
  br label %106

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %106, %87, %66, %34
  %108 = load ptr, ptr %7, align 8, !tbaa !7
  %109 = getelementptr inbounds ptr, ptr %108, i64 0
  %110 = load ptr, ptr %109, align 8, !tbaa !3
  %111 = load i32, ptr %9, align 4, !tbaa !9
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %110, i64 %112
  %114 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %113, i32 0, i32 1
  %115 = getelementptr inbounds nuw %struct.d_loc_t, ptr %114, i32 0, i32 0
  %116 = load ptr, ptr %115, align 8, !tbaa !23
  %117 = getelementptr inbounds i8, ptr %116, i64 1
  %118 = load ptr, ptr %7, align 8, !tbaa !7
  %119 = getelementptr inbounds ptr, ptr %118, i64 0
  %120 = load ptr, ptr %119, align 8, !tbaa !3
  %121 = load i32, ptr %9, align 4, !tbaa !9
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %120, i64 %122
  %124 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !24
  %126 = getelementptr inbounds i8, ptr %125, i64 -1
  %127 = call ptr @dup_str(ptr noundef %117, ptr noundef %126)
  %128 = load ptr, ptr %12, align 8, !tbaa !56
  %129 = getelementptr inbounds nuw %struct.Rule, ptr %128, i32 0, i32 8
  %130 = getelementptr inbounds nuw %struct.Code, ptr %129, i32 0, i32 0
  store ptr %127, ptr %130, align 8, !tbaa !69
  %131 = load ptr, ptr %7, align 8, !tbaa !7
  %132 = getelementptr inbounds ptr, ptr %131, i64 0
  %133 = load ptr, ptr %132, align 8, !tbaa !3
  %134 = load i32, ptr %9, align 4, !tbaa !9
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, ptr %133, i64 %135
  %137 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %136, i32 0, i32 1
  %138 = getelementptr inbounds nuw %struct.d_loc_t, ptr %137, i32 0, i32 4
  %139 = load i32, ptr %138, align 8, !tbaa !25
  %140 = load ptr, ptr %12, align 8, !tbaa !56
  %141 = getelementptr inbounds nuw %struct.Rule, ptr %140, i32 0, i32 8
  %142 = getelementptr inbounds nuw %struct.Code, ptr %141, i32 0, i32 1
  store i32 %139, ptr %142, align 8, !tbaa !70
  %143 = load ptr, ptr %11, align 8, !tbaa !68
  %144 = load ptr, ptr %6, align 8, !tbaa !3
  %145 = load i32, ptr %9, align 4, !tbaa !9
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, ptr %144, i64 %146
  %148 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %147, i32 0, i32 6
  %149 = load ptr, ptr %148, align 8, !tbaa !13
  %150 = getelementptr inbounds nuw %struct.Grammar, ptr %149, i32 0, i32 24
  %151 = load ptr, ptr %150, align 8, !tbaa !54
  %152 = call ptr @new_elem_nterm(ptr noundef %143, ptr noundef %151)
  %153 = load ptr, ptr %6, align 8, !tbaa !3
  %154 = load i32, ptr %9, align 4, !tbaa !9
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, ptr %153, i64 %155
  %157 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %156, i32 0, i32 6
  %158 = load ptr, ptr %157, align 8, !tbaa !13
  %159 = getelementptr inbounds nuw %struct.Grammar, ptr %158, i32 0, i32 25
  store ptr %152, ptr %159, align 8, !tbaa !57
  br label %160

160:                                              ; preds = %107
  %161 = load ptr, ptr %6, align 8, !tbaa !3
  %162 = load i32, ptr %9, align 4, !tbaa !9
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, ptr %161, i64 %163
  %165 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %164, i32 0, i32 6
  %166 = load ptr, ptr %165, align 8, !tbaa !13
  %167 = getelementptr inbounds nuw %struct.Grammar, ptr %166, i32 0, i32 24
  %168 = load ptr, ptr %167, align 8, !tbaa !54
  %169 = getelementptr inbounds nuw %struct.Rule, ptr %168, i32 0, i32 6
  %170 = getelementptr inbounds nuw %struct.anon.5, ptr %169, i32 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !60
  %172 = icmp ne ptr %171, null
  br i1 %172, label %217, label %173

173:                                              ; preds = %160
  %174 = load ptr, ptr %6, align 8, !tbaa !3
  %175 = load i32, ptr %9, align 4, !tbaa !9
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %174, i64 %176
  %178 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %177, i32 0, i32 6
  %179 = load ptr, ptr %178, align 8, !tbaa !13
  %180 = getelementptr inbounds nuw %struct.Grammar, ptr %179, i32 0, i32 25
  %181 = load ptr, ptr %180, align 8, !tbaa !57
  %182 = load ptr, ptr %6, align 8, !tbaa !3
  %183 = load i32, ptr %9, align 4, !tbaa !9
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %182, i64 %184
  %186 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %185, i32 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !13
  %188 = getelementptr inbounds nuw %struct.Grammar, ptr %187, i32 0, i32 24
  %189 = load ptr, ptr %188, align 8, !tbaa !54
  %190 = getelementptr inbounds nuw %struct.Rule, ptr %189, i32 0, i32 6
  %191 = getelementptr inbounds nuw %struct.anon.5, ptr %190, i32 0, i32 3
  %192 = getelementptr inbounds [3 x ptr], ptr %191, i64 0, i64 0
  %193 = load ptr, ptr %6, align 8, !tbaa !3
  %194 = load i32, ptr %9, align 4, !tbaa !9
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, ptr %193, i64 %195
  %197 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %196, i32 0, i32 6
  %198 = load ptr, ptr %197, align 8, !tbaa !13
  %199 = getelementptr inbounds nuw %struct.Grammar, ptr %198, i32 0, i32 24
  %200 = load ptr, ptr %199, align 8, !tbaa !54
  %201 = getelementptr inbounds nuw %struct.Rule, ptr %200, i32 0, i32 6
  %202 = getelementptr inbounds nuw %struct.anon.5, ptr %201, i32 0, i32 2
  store ptr %192, ptr %202, align 8, !tbaa !60
  %203 = load ptr, ptr %6, align 8, !tbaa !3
  %204 = load i32, ptr %9, align 4, !tbaa !9
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, ptr %203, i64 %205
  %207 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %206, i32 0, i32 6
  %208 = load ptr, ptr %207, align 8, !tbaa !13
  %209 = getelementptr inbounds nuw %struct.Grammar, ptr %208, i32 0, i32 24
  %210 = load ptr, ptr %209, align 8, !tbaa !54
  %211 = getelementptr inbounds nuw %struct.Rule, ptr %210, i32 0, i32 6
  %212 = getelementptr inbounds nuw %struct.anon.5, ptr %211, i32 0, i32 0
  %213 = load i32, ptr %212, align 8, !tbaa !66
  %214 = add i32 %213, 1
  store i32 %214, ptr %212, align 8, !tbaa !66
  %215 = zext i32 %213 to i64
  %216 = getelementptr inbounds nuw ptr, ptr %192, i64 %215
  store ptr %181, ptr %216, align 8, !tbaa !67
  br label %358

217:                                              ; preds = %160
  %218 = load ptr, ptr %6, align 8, !tbaa !3
  %219 = load i32, ptr %9, align 4, !tbaa !9
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, ptr %218, i64 %220
  %222 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %221, i32 0, i32 6
  %223 = load ptr, ptr %222, align 8, !tbaa !13
  %224 = getelementptr inbounds nuw %struct.Grammar, ptr %223, i32 0, i32 24
  %225 = load ptr, ptr %224, align 8, !tbaa !54
  %226 = getelementptr inbounds nuw %struct.Rule, ptr %225, i32 0, i32 6
  %227 = getelementptr inbounds nuw %struct.anon.5, ptr %226, i32 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !60
  %229 = load ptr, ptr %6, align 8, !tbaa !3
  %230 = load i32, ptr %9, align 4, !tbaa !9
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, ptr %229, i64 %231
  %233 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %232, i32 0, i32 6
  %234 = load ptr, ptr %233, align 8, !tbaa !13
  %235 = getelementptr inbounds nuw %struct.Grammar, ptr %234, i32 0, i32 24
  %236 = load ptr, ptr %235, align 8, !tbaa !54
  %237 = getelementptr inbounds nuw %struct.Rule, ptr %236, i32 0, i32 6
  %238 = getelementptr inbounds nuw %struct.anon.5, ptr %237, i32 0, i32 3
  %239 = getelementptr inbounds [3 x ptr], ptr %238, i64 0, i64 0
  %240 = icmp eq ptr %228, %239
  br i1 %240, label %241, label %289

241:                                              ; preds = %217
  %242 = load ptr, ptr %6, align 8, !tbaa !3
  %243 = load i32, ptr %9, align 4, !tbaa !9
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, ptr %242, i64 %244
  %246 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %245, i32 0, i32 6
  %247 = load ptr, ptr %246, align 8, !tbaa !13
  %248 = getelementptr inbounds nuw %struct.Grammar, ptr %247, i32 0, i32 24
  %249 = load ptr, ptr %248, align 8, !tbaa !54
  %250 = getelementptr inbounds nuw %struct.Rule, ptr %249, i32 0, i32 6
  %251 = getelementptr inbounds nuw %struct.anon.5, ptr %250, i32 0, i32 0
  %252 = load i32, ptr %251, align 8, !tbaa !66
  %253 = icmp ult i32 %252, 3
  br i1 %253, label %254, label %288

254:                                              ; preds = %241
  %255 = load ptr, ptr %6, align 8, !tbaa !3
  %256 = load i32, ptr %9, align 4, !tbaa !9
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, ptr %255, i64 %257
  %259 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %258, i32 0, i32 6
  %260 = load ptr, ptr %259, align 8, !tbaa !13
  %261 = getelementptr inbounds nuw %struct.Grammar, ptr %260, i32 0, i32 25
  %262 = load ptr, ptr %261, align 8, !tbaa !57
  %263 = load ptr, ptr %6, align 8, !tbaa !3
  %264 = load i32, ptr %9, align 4, !tbaa !9
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, ptr %263, i64 %265
  %267 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %266, i32 0, i32 6
  %268 = load ptr, ptr %267, align 8, !tbaa !13
  %269 = getelementptr inbounds nuw %struct.Grammar, ptr %268, i32 0, i32 24
  %270 = load ptr, ptr %269, align 8, !tbaa !54
  %271 = getelementptr inbounds nuw %struct.Rule, ptr %270, i32 0, i32 6
  %272 = getelementptr inbounds nuw %struct.anon.5, ptr %271, i32 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !60
  %274 = load ptr, ptr %6, align 8, !tbaa !3
  %275 = load i32, ptr %9, align 4, !tbaa !9
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, ptr %274, i64 %276
  %278 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %277, i32 0, i32 6
  %279 = load ptr, ptr %278, align 8, !tbaa !13
  %280 = getelementptr inbounds nuw %struct.Grammar, ptr %279, i32 0, i32 24
  %281 = load ptr, ptr %280, align 8, !tbaa !54
  %282 = getelementptr inbounds nuw %struct.Rule, ptr %281, i32 0, i32 6
  %283 = getelementptr inbounds nuw %struct.anon.5, ptr %282, i32 0, i32 0
  %284 = load i32, ptr %283, align 8, !tbaa !66
  %285 = add i32 %284, 1
  store i32 %285, ptr %283, align 8, !tbaa !66
  %286 = zext i32 %284 to i64
  %287 = getelementptr inbounds nuw ptr, ptr %273, i64 %286
  store ptr %262, ptr %287, align 8, !tbaa !67
  br label %358

288:                                              ; preds = %241
  br label %338

289:                                              ; preds = %217
  %290 = load ptr, ptr %6, align 8, !tbaa !3
  %291 = load i32, ptr %9, align 4, !tbaa !9
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, ptr %290, i64 %292
  %294 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %293, i32 0, i32 6
  %295 = load ptr, ptr %294, align 8, !tbaa !13
  %296 = getelementptr inbounds nuw %struct.Grammar, ptr %295, i32 0, i32 24
  %297 = load ptr, ptr %296, align 8, !tbaa !54
  %298 = getelementptr inbounds nuw %struct.Rule, ptr %297, i32 0, i32 6
  %299 = getelementptr inbounds nuw %struct.anon.5, ptr %298, i32 0, i32 0
  %300 = load i32, ptr %299, align 8, !tbaa !66
  %301 = and i32 %300, 7
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %337

303:                                              ; preds = %289
  %304 = load ptr, ptr %6, align 8, !tbaa !3
  %305 = load i32, ptr %9, align 4, !tbaa !9
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, ptr %304, i64 %306
  %308 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %307, i32 0, i32 6
  %309 = load ptr, ptr %308, align 8, !tbaa !13
  %310 = getelementptr inbounds nuw %struct.Grammar, ptr %309, i32 0, i32 25
  %311 = load ptr, ptr %310, align 8, !tbaa !57
  %312 = load ptr, ptr %6, align 8, !tbaa !3
  %313 = load i32, ptr %9, align 4, !tbaa !9
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, ptr %312, i64 %314
  %316 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %315, i32 0, i32 6
  %317 = load ptr, ptr %316, align 8, !tbaa !13
  %318 = getelementptr inbounds nuw %struct.Grammar, ptr %317, i32 0, i32 24
  %319 = load ptr, ptr %318, align 8, !tbaa !54
  %320 = getelementptr inbounds nuw %struct.Rule, ptr %319, i32 0, i32 6
  %321 = getelementptr inbounds nuw %struct.anon.5, ptr %320, i32 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !60
  %323 = load ptr, ptr %6, align 8, !tbaa !3
  %324 = load i32, ptr %9, align 4, !tbaa !9
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, ptr %323, i64 %325
  %327 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %326, i32 0, i32 6
  %328 = load ptr, ptr %327, align 8, !tbaa !13
  %329 = getelementptr inbounds nuw %struct.Grammar, ptr %328, i32 0, i32 24
  %330 = load ptr, ptr %329, align 8, !tbaa !54
  %331 = getelementptr inbounds nuw %struct.Rule, ptr %330, i32 0, i32 6
  %332 = getelementptr inbounds nuw %struct.anon.5, ptr %331, i32 0, i32 0
  %333 = load i32, ptr %332, align 8, !tbaa !66
  %334 = add i32 %333, 1
  store i32 %334, ptr %332, align 8, !tbaa !66
  %335 = zext i32 %333 to i64
  %336 = getelementptr inbounds nuw ptr, ptr %322, i64 %335
  store ptr %311, ptr %336, align 8, !tbaa !67
  br label %358

337:                                              ; preds = %289
  br label %338

338:                                              ; preds = %337, %288
  br label %339

339:                                              ; preds = %338
  %340 = load ptr, ptr %6, align 8, !tbaa !3
  %341 = load i32, ptr %9, align 4, !tbaa !9
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, ptr %340, i64 %342
  %344 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %343, i32 0, i32 6
  %345 = load ptr, ptr %344, align 8, !tbaa !13
  %346 = getelementptr inbounds nuw %struct.Grammar, ptr %345, i32 0, i32 24
  %347 = load ptr, ptr %346, align 8, !tbaa !54
  %348 = getelementptr inbounds nuw %struct.Rule, ptr %347, i32 0, i32 6
  %349 = load ptr, ptr %6, align 8, !tbaa !3
  %350 = load i32, ptr %9, align 4, !tbaa !9
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, ptr %349, i64 %351
  %353 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %352, i32 0, i32 6
  %354 = load ptr, ptr %353, align 8, !tbaa !13
  %355 = getelementptr inbounds nuw %struct.Grammar, ptr %354, i32 0, i32 25
  %356 = load ptr, ptr %355, align 8, !tbaa !57
  call void @vec_add_internal(ptr noundef %348, ptr noundef %356)
  br label %357

357:                                              ; preds = %339
  br label %358

358:                                              ; preds = %357, %303, %254, %173
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #3
  ret i32 0
}

declare ptr @new_internal_production(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_33_72_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #3
  %13 = load ptr, ptr %6, align 8, !tbaa !3
  %14 = load i32, ptr %9, align 4, !tbaa !9
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  %17 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = call ptr @new_internal_production(ptr noundef %18, ptr noundef null)
  store ptr %19, ptr %11, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #3
  %20 = load ptr, ptr %6, align 8, !tbaa !3
  %21 = load i32, ptr %9, align 4, !tbaa !9
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  %24 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = load ptr, ptr %11, align 8, !tbaa !68
  %27 = call ptr @new_rule(ptr noundef %25, ptr noundef %26)
  store ptr %27, ptr %12, align 8, !tbaa !56
  br label %28

28:                                               ; preds = %5
  %29 = load ptr, ptr %11, align 8, !tbaa !68
  %30 = getelementptr inbounds nuw %struct.Production, ptr %29, i32 0, i32 2
  %31 = getelementptr inbounds nuw %struct.anon.4, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = icmp ne ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %12, align 8, !tbaa !56
  %36 = load ptr, ptr %11, align 8, !tbaa !68
  %37 = getelementptr inbounds nuw %struct.Production, ptr %36, i32 0, i32 2
  %38 = getelementptr inbounds nuw %struct.anon.4, ptr %37, i32 0, i32 3
  %39 = getelementptr inbounds [3 x ptr], ptr %38, i64 0, i64 0
  %40 = load ptr, ptr %11, align 8, !tbaa !68
  %41 = getelementptr inbounds nuw %struct.Production, ptr %40, i32 0, i32 2
  %42 = getelementptr inbounds nuw %struct.anon.4, ptr %41, i32 0, i32 2
  store ptr %39, ptr %42, align 8, !tbaa !48
  %43 = load ptr, ptr %11, align 8, !tbaa !68
  %44 = getelementptr inbounds nuw %struct.Production, ptr %43, i32 0, i32 2
  %45 = getelementptr inbounds nuw %struct.anon.4, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 8, !tbaa !55
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !55
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds nuw ptr, ptr %39, i64 %48
  store ptr %35, ptr %49, align 8, !tbaa !56
  br label %107

50:                                               ; preds = %28
  %51 = load ptr, ptr %11, align 8, !tbaa !68
  %52 = getelementptr inbounds nuw %struct.Production, ptr %51, i32 0, i32 2
  %53 = getelementptr inbounds nuw %struct.anon.4, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = load ptr, ptr %11, align 8, !tbaa !68
  %56 = getelementptr inbounds nuw %struct.Production, ptr %55, i32 0, i32 2
  %57 = getelementptr inbounds nuw %struct.anon.4, ptr %56, i32 0, i32 3
  %58 = getelementptr inbounds [3 x ptr], ptr %57, i64 0, i64 0
  %59 = icmp eq ptr %54, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %50
  %61 = load ptr, ptr %11, align 8, !tbaa !68
  %62 = getelementptr inbounds nuw %struct.Production, ptr %61, i32 0, i32 2
  %63 = getelementptr inbounds nuw %struct.anon.4, ptr %62, i32 0, i32 0
  %64 = load i32, ptr %63, align 8, !tbaa !55
  %65 = icmp ult i32 %64, 3
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load ptr, ptr %12, align 8, !tbaa !56
  %68 = load ptr, ptr %11, align 8, !tbaa !68
  %69 = getelementptr inbounds nuw %struct.Production, ptr %68, i32 0, i32 2
  %70 = getelementptr inbounds nuw %struct.anon.4, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = load ptr, ptr %11, align 8, !tbaa !68
  %73 = getelementptr inbounds nuw %struct.Production, ptr %72, i32 0, i32 2
  %74 = getelementptr inbounds nuw %struct.anon.4, ptr %73, i32 0, i32 0
  %75 = load i32, ptr %74, align 8, !tbaa !55
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 8, !tbaa !55
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds nuw ptr, ptr %71, i64 %77
  store ptr %67, ptr %78, align 8, !tbaa !56
  br label %107

79:                                               ; preds = %60
  br label %101

80:                                               ; preds = %50
  %81 = load ptr, ptr %11, align 8, !tbaa !68
  %82 = getelementptr inbounds nuw %struct.Production, ptr %81, i32 0, i32 2
  %83 = getelementptr inbounds nuw %struct.anon.4, ptr %82, i32 0, i32 0
  %84 = load i32, ptr %83, align 8, !tbaa !55
  %85 = and i32 %84, 7
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load ptr, ptr %12, align 8, !tbaa !56
  %89 = load ptr, ptr %11, align 8, !tbaa !68
  %90 = getelementptr inbounds nuw %struct.Production, ptr %89, i32 0, i32 2
  %91 = getelementptr inbounds nuw %struct.anon.4, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !48
  %93 = load ptr, ptr %11, align 8, !tbaa !68
  %94 = getelementptr inbounds nuw %struct.Production, ptr %93, i32 0, i32 2
  %95 = getelementptr inbounds nuw %struct.anon.4, ptr %94, i32 0, i32 0
  %96 = load i32, ptr %95, align 8, !tbaa !55
  %97 = add i32 %96, 1
  store i32 %97, ptr %95, align 8, !tbaa !55
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds nuw ptr, ptr %92, i64 %98
  store ptr %88, ptr %99, align 8, !tbaa !56
  br label %107

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100, %79
  br label %102

102:                                              ; preds = %101
  %103 = load ptr, ptr %11, align 8, !tbaa !68
  %104 = getelementptr inbounds nuw %struct.Production, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %12, align 8, !tbaa !56
  call void @vec_add_internal(ptr noundef %104, ptr noundef %105)
  br label %106

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %106, %87, %66, %34
  %108 = load ptr, ptr %7, align 8, !tbaa !7
  %109 = getelementptr inbounds ptr, ptr %108, i64 0
  %110 = load ptr, ptr %109, align 8, !tbaa !3
  %111 = load i32, ptr %9, align 4, !tbaa !9
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %110, i64 %112
  %114 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %113, i32 0, i32 1
  %115 = getelementptr inbounds nuw %struct.d_loc_t, ptr %114, i32 0, i32 0
  %116 = load ptr, ptr %115, align 8, !tbaa !23
  %117 = getelementptr inbounds i8, ptr %116, i64 1
  %118 = load ptr, ptr %7, align 8, !tbaa !7
  %119 = getelementptr inbounds ptr, ptr %118, i64 0
  %120 = load ptr, ptr %119, align 8, !tbaa !3
  %121 = load i32, ptr %9, align 4, !tbaa !9
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %120, i64 %122
  %124 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !24
  %126 = getelementptr inbounds i8, ptr %125, i64 -1
  %127 = call ptr @dup_str(ptr noundef %117, ptr noundef %126)
  %128 = load ptr, ptr %12, align 8, !tbaa !56
  %129 = getelementptr inbounds nuw %struct.Rule, ptr %128, i32 0, i32 9
  %130 = getelementptr inbounds nuw %struct.Code, ptr %129, i32 0, i32 0
  store ptr %127, ptr %130, align 8, !tbaa !71
  %131 = load ptr, ptr %7, align 8, !tbaa !7
  %132 = getelementptr inbounds ptr, ptr %131, i64 0
  %133 = load ptr, ptr %132, align 8, !tbaa !3
  %134 = load i32, ptr %9, align 4, !tbaa !9
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, ptr %133, i64 %135
  %137 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %136, i32 0, i32 1
  %138 = getelementptr inbounds nuw %struct.d_loc_t, ptr %137, i32 0, i32 4
  %139 = load i32, ptr %138, align 8, !tbaa !25
  %140 = load ptr, ptr %12, align 8, !tbaa !56
  %141 = getelementptr inbounds nuw %struct.Rule, ptr %140, i32 0, i32 9
  %142 = getelementptr inbounds nuw %struct.Code, ptr %141, i32 0, i32 1
  store i32 %139, ptr %142, align 8, !tbaa !72
  %143 = load ptr, ptr %11, align 8, !tbaa !68
  %144 = load ptr, ptr %6, align 8, !tbaa !3
  %145 = load i32, ptr %9, align 4, !tbaa !9
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, ptr %144, i64 %146
  %148 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %147, i32 0, i32 6
  %149 = load ptr, ptr %148, align 8, !tbaa !13
  %150 = getelementptr inbounds nuw %struct.Grammar, ptr %149, i32 0, i32 24
  %151 = load ptr, ptr %150, align 8, !tbaa !54
  %152 = call ptr @new_elem_nterm(ptr noundef %143, ptr noundef %151)
  %153 = load ptr, ptr %6, align 8, !tbaa !3
  %154 = load i32, ptr %9, align 4, !tbaa !9
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, ptr %153, i64 %155
  %157 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %156, i32 0, i32 6
  %158 = load ptr, ptr %157, align 8, !tbaa !13
  %159 = getelementptr inbounds nuw %struct.Grammar, ptr %158, i32 0, i32 25
  store ptr %152, ptr %159, align 8, !tbaa !57
  br label %160

160:                                              ; preds = %107
  %161 = load ptr, ptr %6, align 8, !tbaa !3
  %162 = load i32, ptr %9, align 4, !tbaa !9
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, ptr %161, i64 %163
  %165 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %164, i32 0, i32 6
  %166 = load ptr, ptr %165, align 8, !tbaa !13
  %167 = getelementptr inbounds nuw %struct.Grammar, ptr %166, i32 0, i32 24
  %168 = load ptr, ptr %167, align 8, !tbaa !54
  %169 = getelementptr inbounds nuw %struct.Rule, ptr %168, i32 0, i32 6
  %170 = getelementptr inbounds nuw %struct.anon.5, ptr %169, i32 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !60
  %172 = icmp ne ptr %171, null
  br i1 %172, label %217, label %173

173:                                              ; preds = %160
  %174 = load ptr, ptr %6, align 8, !tbaa !3
  %175 = load i32, ptr %9, align 4, !tbaa !9
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %174, i64 %176
  %178 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %177, i32 0, i32 6
  %179 = load ptr, ptr %178, align 8, !tbaa !13
  %180 = getelementptr inbounds nuw %struct.Grammar, ptr %179, i32 0, i32 25
  %181 = load ptr, ptr %180, align 8, !tbaa !57
  %182 = load ptr, ptr %6, align 8, !tbaa !3
  %183 = load i32, ptr %9, align 4, !tbaa !9
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %182, i64 %184
  %186 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %185, i32 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !13
  %188 = getelementptr inbounds nuw %struct.Grammar, ptr %187, i32 0, i32 24
  %189 = load ptr, ptr %188, align 8, !tbaa !54
  %190 = getelementptr inbounds nuw %struct.Rule, ptr %189, i32 0, i32 6
  %191 = getelementptr inbounds nuw %struct.anon.5, ptr %190, i32 0, i32 3
  %192 = getelementptr inbounds [3 x ptr], ptr %191, i64 0, i64 0
  %193 = load ptr, ptr %6, align 8, !tbaa !3
  %194 = load i32, ptr %9, align 4, !tbaa !9
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, ptr %193, i64 %195
  %197 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %196, i32 0, i32 6
  %198 = load ptr, ptr %197, align 8, !tbaa !13
  %199 = getelementptr inbounds nuw %struct.Grammar, ptr %198, i32 0, i32 24
  %200 = load ptr, ptr %199, align 8, !tbaa !54
  %201 = getelementptr inbounds nuw %struct.Rule, ptr %200, i32 0, i32 6
  %202 = getelementptr inbounds nuw %struct.anon.5, ptr %201, i32 0, i32 2
  store ptr %192, ptr %202, align 8, !tbaa !60
  %203 = load ptr, ptr %6, align 8, !tbaa !3
  %204 = load i32, ptr %9, align 4, !tbaa !9
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, ptr %203, i64 %205
  %207 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %206, i32 0, i32 6
  %208 = load ptr, ptr %207, align 8, !tbaa !13
  %209 = getelementptr inbounds nuw %struct.Grammar, ptr %208, i32 0, i32 24
  %210 = load ptr, ptr %209, align 8, !tbaa !54
  %211 = getelementptr inbounds nuw %struct.Rule, ptr %210, i32 0, i32 6
  %212 = getelementptr inbounds nuw %struct.anon.5, ptr %211, i32 0, i32 0
  %213 = load i32, ptr %212, align 8, !tbaa !66
  %214 = add i32 %213, 1
  store i32 %214, ptr %212, align 8, !tbaa !66
  %215 = zext i32 %213 to i64
  %216 = getelementptr inbounds nuw ptr, ptr %192, i64 %215
  store ptr %181, ptr %216, align 8, !tbaa !67
  br label %358

217:                                              ; preds = %160
  %218 = load ptr, ptr %6, align 8, !tbaa !3
  %219 = load i32, ptr %9, align 4, !tbaa !9
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, ptr %218, i64 %220
  %222 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %221, i32 0, i32 6
  %223 = load ptr, ptr %222, align 8, !tbaa !13
  %224 = getelementptr inbounds nuw %struct.Grammar, ptr %223, i32 0, i32 24
  %225 = load ptr, ptr %224, align 8, !tbaa !54
  %226 = getelementptr inbounds nuw %struct.Rule, ptr %225, i32 0, i32 6
  %227 = getelementptr inbounds nuw %struct.anon.5, ptr %226, i32 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !60
  %229 = load ptr, ptr %6, align 8, !tbaa !3
  %230 = load i32, ptr %9, align 4, !tbaa !9
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, ptr %229, i64 %231
  %233 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %232, i32 0, i32 6
  %234 = load ptr, ptr %233, align 8, !tbaa !13
  %235 = getelementptr inbounds nuw %struct.Grammar, ptr %234, i32 0, i32 24
  %236 = load ptr, ptr %235, align 8, !tbaa !54
  %237 = getelementptr inbounds nuw %struct.Rule, ptr %236, i32 0, i32 6
  %238 = getelementptr inbounds nuw %struct.anon.5, ptr %237, i32 0, i32 3
  %239 = getelementptr inbounds [3 x ptr], ptr %238, i64 0, i64 0
  %240 = icmp eq ptr %228, %239
  br i1 %240, label %241, label %289

241:                                              ; preds = %217
  %242 = load ptr, ptr %6, align 8, !tbaa !3
  %243 = load i32, ptr %9, align 4, !tbaa !9
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, ptr %242, i64 %244
  %246 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %245, i32 0, i32 6
  %247 = load ptr, ptr %246, align 8, !tbaa !13
  %248 = getelementptr inbounds nuw %struct.Grammar, ptr %247, i32 0, i32 24
  %249 = load ptr, ptr %248, align 8, !tbaa !54
  %250 = getelementptr inbounds nuw %struct.Rule, ptr %249, i32 0, i32 6
  %251 = getelementptr inbounds nuw %struct.anon.5, ptr %250, i32 0, i32 0
  %252 = load i32, ptr %251, align 8, !tbaa !66
  %253 = icmp ult i32 %252, 3
  br i1 %253, label %254, label %288

254:                                              ; preds = %241
  %255 = load ptr, ptr %6, align 8, !tbaa !3
  %256 = load i32, ptr %9, align 4, !tbaa !9
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, ptr %255, i64 %257
  %259 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %258, i32 0, i32 6
  %260 = load ptr, ptr %259, align 8, !tbaa !13
  %261 = getelementptr inbounds nuw %struct.Grammar, ptr %260, i32 0, i32 25
  %262 = load ptr, ptr %261, align 8, !tbaa !57
  %263 = load ptr, ptr %6, align 8, !tbaa !3
  %264 = load i32, ptr %9, align 4, !tbaa !9
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, ptr %263, i64 %265
  %267 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %266, i32 0, i32 6
  %268 = load ptr, ptr %267, align 8, !tbaa !13
  %269 = getelementptr inbounds nuw %struct.Grammar, ptr %268, i32 0, i32 24
  %270 = load ptr, ptr %269, align 8, !tbaa !54
  %271 = getelementptr inbounds nuw %struct.Rule, ptr %270, i32 0, i32 6
  %272 = getelementptr inbounds nuw %struct.anon.5, ptr %271, i32 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !60
  %274 = load ptr, ptr %6, align 8, !tbaa !3
  %275 = load i32, ptr %9, align 4, !tbaa !9
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, ptr %274, i64 %276
  %278 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %277, i32 0, i32 6
  %279 = load ptr, ptr %278, align 8, !tbaa !13
  %280 = getelementptr inbounds nuw %struct.Grammar, ptr %279, i32 0, i32 24
  %281 = load ptr, ptr %280, align 8, !tbaa !54
  %282 = getelementptr inbounds nuw %struct.Rule, ptr %281, i32 0, i32 6
  %283 = getelementptr inbounds nuw %struct.anon.5, ptr %282, i32 0, i32 0
  %284 = load i32, ptr %283, align 8, !tbaa !66
  %285 = add i32 %284, 1
  store i32 %285, ptr %283, align 8, !tbaa !66
  %286 = zext i32 %284 to i64
  %287 = getelementptr inbounds nuw ptr, ptr %273, i64 %286
  store ptr %262, ptr %287, align 8, !tbaa !67
  br label %358

288:                                              ; preds = %241
  br label %338

289:                                              ; preds = %217
  %290 = load ptr, ptr %6, align 8, !tbaa !3
  %291 = load i32, ptr %9, align 4, !tbaa !9
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, ptr %290, i64 %292
  %294 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %293, i32 0, i32 6
  %295 = load ptr, ptr %294, align 8, !tbaa !13
  %296 = getelementptr inbounds nuw %struct.Grammar, ptr %295, i32 0, i32 24
  %297 = load ptr, ptr %296, align 8, !tbaa !54
  %298 = getelementptr inbounds nuw %struct.Rule, ptr %297, i32 0, i32 6
  %299 = getelementptr inbounds nuw %struct.anon.5, ptr %298, i32 0, i32 0
  %300 = load i32, ptr %299, align 8, !tbaa !66
  %301 = and i32 %300, 7
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %337

303:                                              ; preds = %289
  %304 = load ptr, ptr %6, align 8, !tbaa !3
  %305 = load i32, ptr %9, align 4, !tbaa !9
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, ptr %304, i64 %306
  %308 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %307, i32 0, i32 6
  %309 = load ptr, ptr %308, align 8, !tbaa !13
  %310 = getelementptr inbounds nuw %struct.Grammar, ptr %309, i32 0, i32 25
  %311 = load ptr, ptr %310, align 8, !tbaa !57
  %312 = load ptr, ptr %6, align 8, !tbaa !3
  %313 = load i32, ptr %9, align 4, !tbaa !9
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, ptr %312, i64 %314
  %316 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %315, i32 0, i32 6
  %317 = load ptr, ptr %316, align 8, !tbaa !13
  %318 = getelementptr inbounds nuw %struct.Grammar, ptr %317, i32 0, i32 24
  %319 = load ptr, ptr %318, align 8, !tbaa !54
  %320 = getelementptr inbounds nuw %struct.Rule, ptr %319, i32 0, i32 6
  %321 = getelementptr inbounds nuw %struct.anon.5, ptr %320, i32 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !60
  %323 = load ptr, ptr %6, align 8, !tbaa !3
  %324 = load i32, ptr %9, align 4, !tbaa !9
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, ptr %323, i64 %325
  %327 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %326, i32 0, i32 6
  %328 = load ptr, ptr %327, align 8, !tbaa !13
  %329 = getelementptr inbounds nuw %struct.Grammar, ptr %328, i32 0, i32 24
  %330 = load ptr, ptr %329, align 8, !tbaa !54
  %331 = getelementptr inbounds nuw %struct.Rule, ptr %330, i32 0, i32 6
  %332 = getelementptr inbounds nuw %struct.anon.5, ptr %331, i32 0, i32 0
  %333 = load i32, ptr %332, align 8, !tbaa !66
  %334 = add i32 %333, 1
  store i32 %334, ptr %332, align 8, !tbaa !66
  %335 = zext i32 %333 to i64
  %336 = getelementptr inbounds nuw ptr, ptr %322, i64 %335
  store ptr %311, ptr %336, align 8, !tbaa !67
  br label %358

337:                                              ; preds = %289
  br label %338

338:                                              ; preds = %337, %288
  br label %339

339:                                              ; preds = %338
  %340 = load ptr, ptr %6, align 8, !tbaa !3
  %341 = load i32, ptr %9, align 4, !tbaa !9
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, ptr %340, i64 %342
  %344 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %343, i32 0, i32 6
  %345 = load ptr, ptr %344, align 8, !tbaa !13
  %346 = getelementptr inbounds nuw %struct.Grammar, ptr %345, i32 0, i32 24
  %347 = load ptr, ptr %346, align 8, !tbaa !54
  %348 = getelementptr inbounds nuw %struct.Rule, ptr %347, i32 0, i32 6
  %349 = load ptr, ptr %6, align 8, !tbaa !3
  %350 = load i32, ptr %9, align 4, !tbaa !9
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, ptr %349, i64 %351
  %353 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %352, i32 0, i32 6
  %354 = load ptr, ptr %353, align 8, !tbaa !13
  %355 = getelementptr inbounds nuw %struct.Grammar, ptr %354, i32 0, i32 25
  %356 = load ptr, ptr %355, align 8, !tbaa !57
  call void @vec_add_internal(ptr noundef %348, ptr noundef %356)
  br label %357

357:                                              ; preds = %339
  br label %358

358:                                              ; preds = %357, %303, %254, %173
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_34_73_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 23
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = load ptr, ptr %6, align 8, !tbaa !3
  %20 = load i32, ptr %9, align 4, !tbaa !9
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %22, i32 0, i32 7
  %24 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %23, i32 0, i32 0
  store ptr %18, ptr %24, align 8, !tbaa !59
  %25 = load ptr, ptr %6, align 8, !tbaa !3
  %26 = load i32, ptr %9, align 4, !tbaa !9
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %25, i64 %27
  %29 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !13
  %31 = getelementptr inbounds nuw %struct.Grammar, ptr %30, i32 0, i32 24
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = load ptr, ptr %6, align 8, !tbaa !3
  %34 = load i32, ptr %9, align 4, !tbaa !9
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %33, i64 %35
  %37 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %36, i32 0, i32 7
  %38 = getelementptr inbounds nuw %struct.ParseNode_User, ptr %37, i32 0, i32 1
  store ptr %32, ptr %38, align 8, !tbaa !58
  %39 = load ptr, ptr %6, align 8, !tbaa !3
  %40 = load i32, ptr %9, align 4, !tbaa !9
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %39, i64 %41
  %43 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %42, i32 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !13
  %45 = load ptr, ptr %6, align 8, !tbaa !3
  %46 = load i32, ptr %9, align 4, !tbaa !9
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  %49 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !13
  %51 = getelementptr inbounds nuw %struct.Grammar, ptr %50, i32 0, i32 23
  %52 = load ptr, ptr %51, align 8, !tbaa !47
  %53 = call ptr @new_internal_production(ptr noundef %44, ptr noundef %52)
  %54 = load ptr, ptr %6, align 8, !tbaa !3
  %55 = load i32, ptr %9, align 4, !tbaa !9
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %54, i64 %56
  %58 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %57, i32 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !13
  %60 = getelementptr inbounds nuw %struct.Grammar, ptr %59, i32 0, i32 23
  store ptr %53, ptr %60, align 8, !tbaa !47
  %61 = load ptr, ptr %6, align 8, !tbaa !3
  %62 = load i32, ptr %9, align 4, !tbaa !9
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %61, i64 %63
  %65 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %64, i32 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !13
  %67 = load ptr, ptr %6, align 8, !tbaa !3
  %68 = load i32, ptr %9, align 4, !tbaa !9
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %67, i64 %69
  %71 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %70, i32 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !13
  %73 = getelementptr inbounds nuw %struct.Grammar, ptr %72, i32 0, i32 23
  %74 = load ptr, ptr %73, align 8, !tbaa !47
  %75 = call ptr @new_rule(ptr noundef %66, ptr noundef %74)
  %76 = load ptr, ptr %6, align 8, !tbaa !3
  %77 = load i32, ptr %9, align 4, !tbaa !9
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %76, i64 %78
  %80 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %79, i32 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !13
  %82 = getelementptr inbounds nuw %struct.Grammar, ptr %81, i32 0, i32 24
  store ptr %75, ptr %82, align 8, !tbaa !54
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_35_74_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds nuw %struct.Elem, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8, !tbaa !73
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  call void (ptr, ...) @d_fail(ptr noundef @.str)
  br label %23

23:                                               ; preds = %22, %5
  %24 = load ptr, ptr %7, align 8, !tbaa !7
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !3
  %27 = load i32, ptr %9, align 4, !tbaa !9
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  %30 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %29, i32 0, i32 1
  %31 = getelementptr inbounds nuw %struct.d_loc_t, ptr %30, i32 0, i32 0
  %32 = load ptr, ptr %31, align 8, !tbaa !23
  %33 = call i64 @strtol(ptr noundef %32, ptr noundef null, i32 noundef signext 0) #3
  %34 = trunc i64 %33 to i32
  %35 = load ptr, ptr %6, align 8, !tbaa !3
  %36 = load i32, ptr %9, align 4, !tbaa !9
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  %39 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %38, i32 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !13
  %41 = getelementptr inbounds nuw %struct.Grammar, ptr %40, i32 0, i32 25
  %42 = load ptr, ptr %41, align 8, !tbaa !57
  %43 = getelementptr inbounds nuw %struct.Elem, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !75
  %45 = getelementptr inbounds nuw %struct.Term, ptr %44, i32 0, i32 2
  store i32 %34, ptr %45, align 8, !tbaa !76
  ret i32 0
}

declare void @d_fail(ptr noundef, ...) #1

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef signext) #0

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_35_75_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds nuw %struct.Elem, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8, !tbaa !73
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  call void (ptr, ...) @d_fail(ptr noundef @.str.1)
  br label %23

23:                                               ; preds = %22, %5
  %24 = load ptr, ptr %6, align 8, !tbaa !3
  %25 = load i32, ptr %9, align 4, !tbaa !9
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %24, i64 %26
  %28 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %27, i32 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = getelementptr inbounds nuw %struct.Grammar, ptr %29, i32 0, i32 25
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = getelementptr inbounds nuw %struct.Elem, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !75
  %34 = getelementptr inbounds nuw %struct.Term, ptr %33, i32 0, i32 7
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, -9
  %37 = or i8 %36, 8
  store i8 %37, ptr %34, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_35_76_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  call void @conditional_EBNF(ptr noundef %16)
  ret i32 0
}

declare void @conditional_EBNF(ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_35_77_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  call void @star_EBNF(ptr noundef %16)
  ret i32 0
}

declare void @star_EBNF(ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_35_78_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  call void @plus_EBNF(ptr noundef %16)
  ret i32 0
}

declare void @plus_EBNF(ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_37_80_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 3
  store i32 10, ptr %19, align 4, !tbaa !78
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_37_81_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 3
  store i32 9, ptr %19, align 4, !tbaa !78
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_37_82_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 3
  store i32 18, ptr %19, align 4, !tbaa !78
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_37_83_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 3
  store i32 17, ptr %19, align 4, !tbaa !78
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_37_84_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 5
  store i32 10, ptr %19, align 4, !tbaa !79
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_37_85_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 5
  store i32 9, ptr %19, align 4, !tbaa !79
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_37_86_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 5
  store i32 18, ptr %19, align 4, !tbaa !79
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_37_87_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 5
  store i32 17, ptr %19, align 4, !tbaa !79
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_37_88_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 5
  store i32 6, ptr %19, align 4, !tbaa !79
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_37_89_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 5
  store i32 5, ptr %19, align 4, !tbaa !79
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_38_90_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.Grammar, ptr %16, i32 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds nuw %struct.Rule, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !78
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %5
  %23 = load ptr, ptr %7, align 8, !tbaa !7
  %24 = getelementptr inbounds ptr, ptr %23, i64 0
  %25 = load ptr, ptr %24, align 8, !tbaa !3
  %26 = load i32, ptr %9, align 4, !tbaa !9
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %25, i64 %27
  %29 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %28, i32 0, i32 1
  %30 = getelementptr inbounds nuw %struct.d_loc_t, ptr %29, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8, !tbaa !23
  %32 = call i64 @strtol(ptr noundef %31, ptr noundef null, i32 noundef signext 0) #3
  %33 = trunc i64 %32 to i32
  %34 = load ptr, ptr %6, align 8, !tbaa !3
  %35 = load i32, ptr %9, align 4, !tbaa !9
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %34, i64 %36
  %38 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = getelementptr inbounds nuw %struct.Grammar, ptr %39, i32 0, i32 24
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = getelementptr inbounds nuw %struct.Rule, ptr %41, i32 0, i32 2
  store i32 %33, ptr %42, align 8, !tbaa !80
  br label %64

43:                                               ; preds = %5
  %44 = load ptr, ptr %7, align 8, !tbaa !7
  %45 = getelementptr inbounds ptr, ptr %44, i64 0
  %46 = load ptr, ptr %45, align 8, !tbaa !3
  %47 = load i32, ptr %9, align 4, !tbaa !9
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %46, i64 %48
  %50 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %49, i32 0, i32 1
  %51 = getelementptr inbounds nuw %struct.d_loc_t, ptr %50, i32 0, i32 0
  %52 = load ptr, ptr %51, align 8, !tbaa !23
  %53 = call i64 @strtol(ptr noundef %52, ptr noundef null, i32 noundef signext 0) #3
  %54 = trunc i64 %53 to i32
  %55 = load ptr, ptr %6, align 8, !tbaa !3
  %56 = load i32, ptr %9, align 4, !tbaa !9
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %55, i64 %57
  %59 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %58, i32 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !13
  %61 = getelementptr inbounds nuw %struct.Grammar, ptr %60, i32 0, i32 24
  %62 = load ptr, ptr %61, align 8, !tbaa !54
  %63 = getelementptr inbounds nuw %struct.Rule, ptr %62, i32 0, i32 4
  store i32 %54, ptr %63, align 8, !tbaa !81
  br label %64

64:                                               ; preds = %43, %22
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_43_98_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %7, align 8, !tbaa !7
  %12 = getelementptr inbounds ptr, ptr %11, i64 0
  %13 = load ptr, ptr %12, align 8, !tbaa !3
  %14 = load i32, ptr %9, align 4, !tbaa !9
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  %17 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %16, i32 0, i32 1
  %18 = getelementptr inbounds nuw %struct.d_loc_t, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  %21 = load ptr, ptr %7, align 8, !tbaa !7
  %22 = getelementptr inbounds ptr, ptr %21, i64 0
  %23 = load ptr, ptr %22, align 8, !tbaa !3
  %24 = load i32, ptr %9, align 4, !tbaa !9
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %23, i64 %25
  %27 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !24
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = call ptr @dup_str(ptr noundef %20, ptr noundef %29)
  %31 = load ptr, ptr %6, align 8, !tbaa !3
  %32 = load i32, ptr %9, align 4, !tbaa !9
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %31, i64 %33
  %35 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = getelementptr inbounds nuw %struct.Grammar, ptr %36, i32 0, i32 24
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = getelementptr inbounds nuw %struct.Rule, ptr %38, i32 0, i32 8
  %40 = getelementptr inbounds nuw %struct.Code, ptr %39, i32 0, i32 0
  store ptr %30, ptr %40, align 8, !tbaa !69
  %41 = load ptr, ptr %7, align 8, !tbaa !7
  %42 = getelementptr inbounds ptr, ptr %41, i64 0
  %43 = load ptr, ptr %42, align 8, !tbaa !3
  %44 = load i32, ptr %9, align 4, !tbaa !9
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  %47 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %46, i32 0, i32 1
  %48 = getelementptr inbounds nuw %struct.d_loc_t, ptr %47, i32 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !25
  %50 = load ptr, ptr %6, align 8, !tbaa !3
  %51 = load i32, ptr %9, align 4, !tbaa !9
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %50, i64 %52
  %54 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !13
  %56 = getelementptr inbounds nuw %struct.Grammar, ptr %55, i32 0, i32 24
  %57 = load ptr, ptr %56, align 8, !tbaa !54
  %58 = getelementptr inbounds nuw %struct.Rule, ptr %57, i32 0, i32 8
  %59 = getelementptr inbounds nuw %struct.Code, ptr %58, i32 0, i32 1
  store i32 %49, ptr %59, align 8, !tbaa !70
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_44_99_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %7, align 8, !tbaa !7
  %12 = getelementptr inbounds ptr, ptr %11, i64 0
  %13 = load ptr, ptr %12, align 8, !tbaa !3
  %14 = load i32, ptr %9, align 4, !tbaa !9
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  %17 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %16, i32 0, i32 1
  %18 = getelementptr inbounds nuw %struct.d_loc_t, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  %21 = load ptr, ptr %7, align 8, !tbaa !7
  %22 = getelementptr inbounds ptr, ptr %21, i64 0
  %23 = load ptr, ptr %22, align 8, !tbaa !3
  %24 = load i32, ptr %9, align 4, !tbaa !9
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %23, i64 %25
  %27 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !24
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = call ptr @dup_str(ptr noundef %20, ptr noundef %29)
  %31 = load ptr, ptr %6, align 8, !tbaa !3
  %32 = load i32, ptr %9, align 4, !tbaa !9
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %31, i64 %33
  %35 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = getelementptr inbounds nuw %struct.Grammar, ptr %36, i32 0, i32 24
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = getelementptr inbounds nuw %struct.Rule, ptr %38, i32 0, i32 9
  %40 = getelementptr inbounds nuw %struct.Code, ptr %39, i32 0, i32 0
  store ptr %30, ptr %40, align 8, !tbaa !71
  %41 = load ptr, ptr %7, align 8, !tbaa !7
  %42 = getelementptr inbounds ptr, ptr %41, i64 0
  %43 = load ptr, ptr %42, align 8, !tbaa !3
  %44 = load i32, ptr %9, align 4, !tbaa !9
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  %47 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %46, i32 0, i32 1
  %48 = getelementptr inbounds nuw %struct.d_loc_t, ptr %47, i32 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !25
  %50 = load ptr, ptr %6, align 8, !tbaa !3
  %51 = load i32, ptr %9, align 4, !tbaa !9
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %50, i64 %52
  %54 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !13
  %56 = getelementptr inbounds nuw %struct.Grammar, ptr %55, i32 0, i32 24
  %57 = load ptr, ptr %56, align 8, !tbaa !54
  %58 = getelementptr inbounds nuw %struct.Rule, ptr %57, i32 0, i32 9
  %59 = getelementptr inbounds nuw %struct.Code, ptr %58, i32 0, i32 1
  store i32 %49, ptr %59, align 8, !tbaa !72
  ret i32 0
}

; Function Attrs: nounwind
define dso_local signext i32 @d_final_reduction_code_45_100_dparser_gram(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %2, ptr %8, align 4, !tbaa !9
  store i32 %3, ptr %9, align 4, !tbaa !9
  store ptr %4, ptr %10, align 8, !tbaa !11
  %11 = load ptr, ptr %6, align 8, !tbaa !3
  %12 = load i32, ptr %9, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = load ptr, ptr %6, align 8, !tbaa !3
  %18 = load i32, ptr %9, align 4, !tbaa !9
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %17, i64 %19
  %21 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = getelementptr inbounds nuw %struct.Grammar, ptr %22, i32 0, i32 24
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = load ptr, ptr %7, align 8, !tbaa !7
  %26 = getelementptr inbounds ptr, ptr %25, i64 0
  %27 = load ptr, ptr %26, align 8, !tbaa !3
  %28 = load i32, ptr %9, align 4, !tbaa !9
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %27, i64 %29
  %31 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %30, i32 0, i32 1
  %32 = getelementptr inbounds nuw %struct.d_loc_t, ptr %31, i32 0, i32 0
  %33 = load ptr, ptr %32, align 8, !tbaa !23
  %34 = load ptr, ptr %7, align 8, !tbaa !7
  %35 = getelementptr inbounds ptr, ptr %34, i64 0
  %36 = load ptr, ptr %35, align 8, !tbaa !3
  %37 = load i32, ptr %9, align 4, !tbaa !9
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %36, i64 %38
  %40 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !24
  %42 = load ptr, ptr %7, align 8, !tbaa !7
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !3
  %45 = load i32, ptr %9, align 4, !tbaa !9
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  %48 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %47, i32 0, i32 1
  %49 = getelementptr inbounds nuw %struct.d_loc_t, ptr %48, i32 0, i32 0
  %50 = load ptr, ptr %49, align 8, !tbaa !23
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  %52 = load ptr, ptr %7, align 8, !tbaa !7
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !3
  %55 = load i32, ptr %9, align 4, !tbaa !9
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %54, i64 %56
  %58 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !24
  %60 = getelementptr inbounds i8, ptr %59, i64 -1
  %61 = load ptr, ptr %7, align 8, !tbaa !7
  %62 = getelementptr inbounds ptr, ptr %61, i64 0
  %63 = load ptr, ptr %62, align 8, !tbaa !3
  %64 = load i32, ptr %9, align 4, !tbaa !9
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %63, i64 %65
  %67 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %66, i32 0, i32 1
  %68 = getelementptr inbounds nuw %struct.d_loc_t, ptr %67, i32 0, i32 4
  %69 = load i32, ptr %68, align 8, !tbaa !25
  %70 = load ptr, ptr %7, align 8, !tbaa !7
  %71 = getelementptr inbounds ptr, ptr %70, i64 2
  %72 = load ptr, ptr %71, align 8, !tbaa !3
  %73 = load i32, ptr %9, align 4, !tbaa !9
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %72, i64 %74
  %76 = getelementptr inbounds nuw %struct.D_ParseNode, ptr %75, i32 0, i32 1
  %77 = getelementptr inbounds nuw %struct.d_loc_t, ptr %76, i32 0, i32 4
  %78 = load i32, ptr %77, align 8, !tbaa !25
  call void @add_pass_code(ptr noundef %16, ptr noundef %24, ptr noundef %33, ptr noundef %41, ptr noundef %51, ptr noundef %60, i32 noundef signext %69, i32 noundef signext %78)
  ret i32 0
}

declare void @add_pass_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext) #1

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any p2 pointer", !4, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8D_Parser", !4, i64 0}
!13 = !{!14, !18, i64 72}
!14 = !{!"D_ParseNode", !10, i64 0, !15, i64 8, !16, i64 40, !16, i64 48, !17, i64 56, !4, i64 64, !18, i64 72, !19, i64 80}
!15 = !{!"d_loc_t", !16, i64 0, !16, i64 8, !10, i64 16, !10, i64 20, !10, i64 24}
!16 = !{!"p1 omnipotent char", !4, i64 0}
!17 = !{!"p1 _ZTS7D_Scope", !4, i64 0}
!18 = !{!"p1 _ZTS7Grammar", !4, i64 0}
!19 = !{!"ParseNode_User", !20, i64 0, !21, i64 8, !22, i64 16, !10, i64 24}
!20 = !{!"p1 _ZTS10Production", !4, i64 0}
!21 = !{!"p1 _ZTS4Rule", !4, i64 0}
!22 = !{!"p1 _ZTS4Elem", !4, i64 0}
!23 = !{!14, !16, i64 8}
!24 = !{!14, !16, i64 40}
!25 = !{!14, !10, i64 32}
!26 = !{!27, !16, i64 128}
!27 = !{!"Grammar", !16, i64 0, !28, i64 8, !30, i64 48, !32, i64 88, !34, i64 128, !35, i64 144, !10, i64 152, !36, i64 160, !38, i64 200, !16, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !5, i64 276, !10, i64 532, !10, i64 536, !10, i64 540, !10, i64 544, !10, i64 548, !20, i64 552, !21, i64 560, !22, i64 568, !10, i64 576, !10, i64 580, !10, i64 584, !10, i64 588}
!28 = !{!"", !10, i64 0, !10, i64 4, !29, i64 8, !5, i64 16}
!29 = !{!"p2 _ZTS10Production", !8, i64 0}
!30 = !{!"", !10, i64 0, !10, i64 4, !31, i64 8, !5, i64 16}
!31 = !{!"p2 _ZTS4Term", !8, i64 0}
!32 = !{!"", !10, i64 0, !10, i64 4, !33, i64 8, !5, i64 16}
!33 = !{!"p2 _ZTS5State", !8, i64 0}
!34 = !{!"Code", !16, i64 0, !10, i64 8}
!35 = !{!"p1 _ZTS4Code", !4, i64 0}
!36 = !{!"", !10, i64 0, !10, i64 4, !37, i64 8, !5, i64 16}
!37 = !{!"p2 _ZTS11Declaration", !8, i64 0}
!38 = !{!"", !10, i64 0, !10, i64 4, !39, i64 8, !5, i64 16}
!39 = !{!"p2 _ZTS6D_Pass", !8, i64 0}
!40 = !{!27, !10, i64 136}
!41 = !{!14, !10, i64 104}
!42 = !{!43, !43, i64 0}
!43 = !{!"p1 _ZTS11D_ParseNode", !4, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!27, !10, i64 576}
!47 = !{!27, !20, i64 552}
!48 = !{!49, !51, i64 24}
!49 = !{!"Production", !16, i64 0, !10, i64 8, !50, i64 16, !10, i64 56, !10, i64 60, !10, i64 60, !10, i64 60, !21, i64 64, !5, i64 72, !5, i64 136, !52, i64 200, !22, i64 208, !53, i64 216, !20, i64 224}
!50 = !{!"", !10, i64 0, !10, i64 4, !51, i64 8, !5, i64 16}
!51 = !{!"p2 _ZTS4Rule", !8, i64 0}
!52 = !{!"p1 _ZTS5State", !4, i64 0}
!53 = !{!"p1 _ZTS4Term", !4, i64 0}
!54 = !{!27, !21, i64 560}
!55 = !{!49, !10, i64 16}
!56 = !{!21, !21, i64 0}
!57 = !{!27, !22, i64 568}
!58 = !{!14, !21, i64 88}
!59 = !{!14, !20, i64 80}
!60 = !{!61, !63, i64 40}
!61 = !{!"Rule", !10, i64 0, !20, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !62, i64 32, !22, i64 72, !34, i64 80, !34, i64 96, !64, i64 112, !10, i64 152, !21, i64 160}
!62 = !{!"", !10, i64 0, !10, i64 4, !63, i64 8, !5, i64 16}
!63 = !{!"p2 _ZTS4Elem", !8, i64 0}
!64 = !{!"", !10, i64 0, !10, i64 4, !65, i64 8, !5, i64 16}
!65 = !{!"p2 _ZTS4Code", !8, i64 0}
!66 = !{!61, !10, i64 32}
!67 = !{!22, !22, i64 0}
!68 = !{!20, !20, i64 0}
!69 = !{!61, !16, i64 80}
!70 = !{!61, !10, i64 88}
!71 = !{!61, !16, i64 96}
!72 = !{!61, !10, i64 104}
!73 = !{!74, !10, i64 0}
!74 = !{!"Elem", !10, i64 0, !10, i64 4, !21, i64 8, !5, i64 16}
!75 = !{!5, !5, i64 0}
!76 = !{!77, !10, i64 8}
!77 = !{!"Term", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !16, i64 24, !10, i64 32, !10, i64 36, !10, i64 36, !20, i64 40}
!78 = !{!61, !10, i64 20}
!79 = !{!61, !10, i64 28}
!80 = !{!61, !10, i64 16}
!81 = !{!61, !10, i64 24}
