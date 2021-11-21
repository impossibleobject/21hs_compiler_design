; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_str4019 = alloca i8*
  store i8* %str, i8** %_str4019
  %_start4020 = alloca i64
  store i64 %start, i64* %_start4020
  %_len4021 = alloca i64
  store i64 %len, i64* %_len4021
  %_arr4022 = alloca { i64, [0 x i64] }*
  %_r4027 = alloca { i64, [0 x i64] }*
  %_i4033 = alloca i64
  store { i64, [0 x i64] }* %_Call_retval4026, { i64, [0 x i64] }** %_arr4022
  %_id4025 = load i8*, i8** %_str4019
  %_Call_retval4026 = call { i64, [0 x i64] }* @array_of_string(i8* %_id4025)
  store { i64, [0 x i64] }* %_array4032, { i64, [0 x i64] }** %_r4027
  %_id4030 = load i64, i64* %_len4021
  %_raw_array4031 = call i64* @oat_alloc_array(i64 %_id4030)
  %_array4032 = bitcast i64* %_raw_array4031 to { i64, [0 x i64] }*
  store i64 0, i64* %_i4033
  br label %_start4041
_start4041:
  %_id4038 = load i64, i64* %_i4033
  %_id4040 = load i64, i64* %_len4021
  %_bop4036 = icmp slt i64 %_id4038, %_id4040
  br i1 %_bop4036, label %_body4042, label %_end4043
_body4042:
  %_id4046 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r4027
  %_id4048 = load i64, i64* %_i4033
  %_index_ptr4049 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4046, i32 0, i32 1, i64 %_id4048
  %_id4052 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4022
  %_id4056 = load i64, i64* %_i4033
  %_id4058 = load i64, i64* %_start4020
  %_bop4054 = add i64 %_id4056, %_id4058
  %_index_ptr4059 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4052, i32 0, i32 1, i64 %_bop4054
  store i64* %_index_ptr4059, i64** %_index_ptr4049
  %_id4065 = load i64, i64* %_i4033
  %_bop4063 = add i64 %_id4065, 1
  store i64 %_bop4063, i64* %_i4033
  br label %_start4041
_end4043:
  %_id4069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r4027
  %_Call_retval4070 = call i8* @string_of_array({ i64, [0 x i64] }* %_id4069)
  %_4071 = load i8, i8* %_Call_retval4070
  ret i8* %_4071
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4004 = alloca i64
  store i64 %argc, i64* %_argc4004
  %_argv4005 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4005
  %_Call_retval4015 = call i8* @sub(i8** %_index_ptr4012, i64 3, i64 5)
  %_id4010 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv4005
  %_index_ptr4012 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id4010, i32 0, i32 1, i32 1
  call void @print_string(i8* %_Call_retval4015)
  ret i64 0
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
