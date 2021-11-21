; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_8174 = global i64 0
@_str8045 = global [1 x i8] c"\00"
@_str8010 = global [7 x i8] c"TOMATO\00"
@_str8014 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_i8028 = alloca i64
  store i64 %i, i64* %_i8028
  %_j8029 = alloca i64
  store i64 %j, i64* %_j8029
  %_a8030 = alloca i8*
  store i8* %a, i8** %_a8030
  %_b8031 = alloca i8*
  store i8* %b, i8** %_b8031
  %_a_chars8048 = alloca { i64, [0 x i64] }*
  %_b_chars8053 = alloca { i64, [0 x i64] }*
  %_last_char_a8058 = alloca i64*
  %_last_char_b8066 = alloca i64*
  %_prev_lcs8084 = alloca i8*
  %_next_char8112 = alloca i8*
  %_left_lcs8124 = alloca i8*
  %_right_lcs8137 = alloca i8*
  %_left_len8150 = alloca i64
  %_right_len8155 = alloca i64
  %_8035 = load i64, i64* %_i8028
  %_8033 = icmp slt i64 %_8035, 0
  %_8039 = load i64, i64* %_j8029
  %_8037 = icmp slt i64 %_8039, 0
  %_8032 = or i1 %_8033, %_8037
  br i1 %_8032, label %_then8041, label %_else8042
_then8041:
  %_8046 = getelementptr [1 x i8], [1 x i8]* @_str8045, i32 0, i32 0
  %_8047 = load i8, i8* %_8046
  ret i8* %_8047
_else8042:
  br label %_end8043
_end8043:
  store { i64, [0 x i64] }* %_retval8052, { i64, [0 x i64] }** %_a_chars8048
  %_8051 = load i8*, i8** %_a8030
  %_retval8052 = call { i64, [0 x i64] }* @array_of_string(i8* %_8051)
  store { i64, [0 x i64] }* %_retval8057, { i64, [0 x i64] }** %_b_chars8053
  %_8056 = load i8*, i8** %_b8031
  %_retval8057 = call { i64, [0 x i64] }* @array_of_string(i8* %_8056)
  store i64* %_index_ptr8064, i64** %_last_char_a8058
  %_8061 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars8048
  %_8063 = load i64, i64* %_i8028
  %_index_ptr8064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8061, i32 0, i32 1, i64 %_8063
  store i64* %_index_ptr8072, i64** %_last_char_b8066
  %_8069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars8053
  %_8071 = load i64, i64* %_j8029
  %_index_ptr8072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8069, i32 0, i32 1, i64 %_8071
  %_8076 = load i64*, i64** %_last_char_a8058
  %_8079 = load i64, i64* %_8076
  %_8078 = load i64*, i64** %_last_char_b8066
  %_8080 = load i64, i64* %_8078
  %_8074 = icmp eq i64 %_8079, %_8080
  br i1 %_8074, label %_then8081, label %_else8082
_then8081:
  store i8* %_retval8098, i8** %_prev_lcs8084
  %_8086 = sub i64 %_8088, 1
  %_8088 = load i64, i64* %_i8028
  %_8090 = sub i64 %_8092, 1
  %_8092 = load i64, i64* %_j8029
  %_8095 = load i8*, i8** %_a8030
  %_8097 = load i8*, i8** %_b8031
  %_retval8098 = call i8* @lcs(i64 %_8086, i64 %_8090, i8* %_8095, i8* %_8097)
  %_8101 = load { i64, [1 x i64] }, { i64, [1 x i64] }* @buf
  %_index_ptr8103 = getelementptr { i64, [1 x i64] }*, { i64, [1 x i64] }** %_8101, i32 0, i32 1, i32 0
  %_8107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars8048
  %_8109 = load i64, i64* %_i8028
  %_index_ptr8110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_8107, i32 0, i32 1, i64 %_8109
  store i64* %_index_ptr8110, i64** %_index_ptr8103
  store i8* %_retval8116, i8** %_next_char8112
  %_8115 = load { i64, [1 x i64] }, { i64, [1 x i64] }* @buf
  %_retval8116 = call i8* @string_of_array({ i64, [1 x i64] }** %_8115)
  %_8119 = load i8*, i8** %_prev_lcs8084
  %_8121 = load i8*, i8** %_next_char8112
  %_retval8122 = call i8* @string_cat(i8* %_8119, i8* %_8121)
  %_8123 = load i8, i8* %_retval8122
  ret i8* %_8123
_else8082:
  br label %_end8083
_end8083:
  store i8* %_retval8136, i8** %_left_lcs8124
  %_8127 = load i64, i64* %_i8028
  %_8128 = sub i64 %_8130, 1
  %_8130 = load i64, i64* %_j8029
  %_8133 = load i8*, i8** %_a8030
  %_8135 = load i8*, i8** %_b8031
  %_retval8136 = call i8* @lcs(i64 %_8127, i64 %_8128, i8* %_8133, i8* %_8135)
  store i8* %_retval8149, i8** %_right_lcs8137
  %_8139 = sub i64 %_8141, 1
  %_8141 = load i64, i64* %_i8028
  %_8144 = load i64, i64* %_j8029
  %_8146 = load i8*, i8** %_a8030
  %_8148 = load i8*, i8** %_b8031
  %_retval8149 = call i8* @lcs(i64 %_8139, i64 %_8144, i8* %_8146, i8* %_8148)
  store i64 %_retval8154, i64* %_left_len8150
  %_8153 = load i8*, i8** %_left_lcs8124
  %_retval8154 = call i64 @length_of_string(i8* %_8153)
  store i64 %_retval8159, i64* %_right_len8155
  %_8158 = load i8*, i8** %_right_lcs8137
  %_retval8159 = call i64 @length_of_string(i8* %_8158)
  %_8162 = load i64, i64* %_left_len8150
  %_8164 = load i64, i64* %_right_len8155
  %_8160 = icmp slt i64 %_8162, %_8164
  br i1 %_8160, label %_then8165, label %_else8166
_then8165:
  %_8169 = load i8*, i8** %_right_lcs8137
  %_8170 = load i8, i8* %_8169
  ret i8* %_8170
_else8166:
  %_8172 = load i8*, i8** %_left_lcs8124
  %_8173 = load i8, i8* %_8172
  ret i8* %_8173
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc8006 = alloca i64
  store i64 %argc, i64* %_argc8006
  %_argv8007 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv8007
  %_tomato8008 = alloca i8*
  %_orating8012 = alloca i8*
  store i8* %_8011, i8** %_tomato8008
  %_8011 = getelementptr [7 x i8], [7 x i8]* @_str8010, i32 0, i32 0
  store i8* %_8015, i8** %_orating8012
  %_8015 = getelementptr [8 x i8], [8 x i8]* @_str8014, i32 0, i32 0
  %_retval8024 = call i8* @lcs(i64 5, i64 6, i8* %_8021, i8* %_8023)
  %_8023 = load i8*, i8** %_orating8012
  %_8021 = load i8*, i8** %_tomato8008
  call void @print_string(i8* %_retval8024)
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
