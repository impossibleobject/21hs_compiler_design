; generated from: hw5programs/compile_return_struct.oat
target triple = "x86_64-unknown-linux"
%Pair = type { i1, i1 }

define %Pair* @create_pair(i1 %_a6816, i1 %_b6813) {
  %_a6817 = alloca i1
  %_b6814 = alloca i1
  store i1 %_a6816, i1* %_a6817
  store i1 %_b6813, i1* %_b6814
  %_raw_struct6819 = call i64* @oat_malloc(i64 16)
  %_struct6820 = bitcast i64* %_raw_struct6819 to %Pair*
  %_a6821 = load i1, i1* %_a6817
  %_ind6822 = getelementptr %Pair, %Pair* %_struct6820, i32 0, i32 0
  store i1 %_a6821, i1* %_ind6822
  %_b6824 = load i1, i1* %_b6814
  %_ind6825 = getelementptr %Pair, %Pair* %_struct6820, i32 0, i32 1
  store i1 %_b6824, i1* %_ind6825
  ret %Pair* %_struct6820
}

define i64 @program(i64 %_argc6797, { i64, [0 x i8*] }* %_argv6794) {
  %_p6801 = alloca %Pair*
  %_result6800 = call %Pair* @create_pair(i1 1, i1 0)
  store %Pair* %_result6800, %Pair** %_p6801
  %_p6803 = load %Pair*, %Pair** %_p6801
  %_index6804 = getelementptr %Pair, %Pair* %_p6803, i32 0, i32 0
  %_proj6805 = load i1, i1* %_index6804
  %_p6806 = load %Pair*, %Pair** %_p6801
  %_index6807 = getelementptr %Pair, %Pair* %_p6806, i32 0, i32 1
  %_proj6808 = load i1, i1* %_index6807
  %_bop6809 = and i1 %_proj6805, %_proj6808
  br i1 %_bop6809, label %_then6812, label %_else6811
_else6811:
  ret i64 0
_merge6810:
  ret i64 0
_then6812:
  ret i64 1
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
