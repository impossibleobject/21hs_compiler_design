; generated from: hw5programs/compile_global_struct_fptr.oat
target triple = "x86_64-unknown-linux"
%Color = type { i64, i64, i64, %Color* (%Color*)* }

@c = global %Color* @_global_struct7176
@_global_struct7176 = global %Color { i64 10, i64 20, i64 30, %Color* (%Color*)* @rot }

define %Color* @rot(%Color* %_c17177) {
  %_c17178 = alloca %Color*
  %_c27202 = alloca %Color*
  store %Color* %_c17177, %Color** %_c17178
  %_raw_struct7180 = call i64* @oat_malloc(i64 32)
  %_struct7181 = bitcast i64* %_raw_struct7180 to %Color*
  %_c17182 = load %Color*, %Color** %_c17178
  %_index7183 = getelementptr %Color, %Color* %_c17182, i32 0, i32 1
  %_proj7184 = load i64, i64* %_index7183
  %_ind7185 = getelementptr %Color, %Color* %_struct7181, i32 0, i32 0
  store i64 %_proj7184, i64* %_ind7185
  %_c17187 = load %Color*, %Color** %_c17178
  %_index7188 = getelementptr %Color, %Color* %_c17187, i32 0, i32 2
  %_proj7189 = load i64, i64* %_index7188
  %_ind7190 = getelementptr %Color, %Color* %_struct7181, i32 0, i32 1
  store i64 %_proj7189, i64* %_ind7190
  %_c17192 = load %Color*, %Color** %_c17178
  %_index7193 = getelementptr %Color, %Color* %_c17192, i32 0, i32 0
  %_proj7194 = load i64, i64* %_index7193
  %_ind7195 = getelementptr %Color, %Color* %_struct7181, i32 0, i32 2
  store i64 %_proj7194, i64* %_ind7195
  %_c17197 = load %Color*, %Color** %_c17178
  %_index7198 = getelementptr %Color, %Color* %_c17197, i32 0, i32 3
  %_proj7199 = load %Color* (%Color*)*, %Color* (%Color*)** %_index7198
  %_ind7200 = getelementptr %Color, %Color* %_struct7181, i32 0, i32 3
  store %Color* (%Color*)* %_proj7199, %Color* (%Color*)** %_ind7200
  store %Color* %_struct7181, %Color** %_c27202
  %_c27204 = load %Color*, %Color** %_c27202
  ret %Color* %_c27204
}

define i64 @program(i64 %_argc7166, { i64, [0 x i8*] }* %_argv7163) {
  %_c7169 = load %Color*, %Color** @c
  %_index7170 = getelementptr %Color, %Color* %_c7169, i32 0, i32 3
  %_proj7171 = load %Color* (%Color*)*, %Color* (%Color*)** %_index7170
  %_c7172 = load %Color*, %Color** @c
  %_result7173 = call %Color* %_proj7171(%Color* %_c7172)
  %_index7174 = getelementptr %Color, %Color* %_result7173, i32 0, i32 0
  %_proj7175 = load i64, i64* %_index7174
  ret i64 %_proj7175
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
