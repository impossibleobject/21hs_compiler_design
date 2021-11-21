; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a2189 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2189
  %_id2192 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2189
  %_index_ptr2194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2192, i32 0, i32 1, i32 1
  %_2195 = load i64, i64* %_index_ptr2194
  ret i64 %_2195
}

define i64 @g(i64 %x) {
  %_x2152 = alloca i64
  store i64 %x, i64* %_x2152
  %_arr2153 = alloca { i64, [0 x i64] }*
  %_i2158 = alloca i64
  store { i64, [0 x i64] }* %_array2157, { i64, [0 x i64] }** %_arr2153
  %_raw_array2156 = call i64* @oat_alloc_array(i64 3)
  %_array2157 = bitcast i64* %_raw_array2156 to { i64, [0 x i64] }*
  store i64 0, i64* %_i2158
  br label %_start2165
_start2165:
  %_id2163 = load i64, i64* %_i2158
  %_bop2161 = icmp slt i64 %_id2163, 3
  br i1 %_bop2161, label %_body2166, label %_end2167
_body2166:
  %_id2170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2153
  %_id2172 = load i64, i64* %_i2158
  %_index_ptr2173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2170, i32 0, i32 1, i64 %_id2172
  %_id2175 = load i64, i64* %_x2152
  store i64 %_id2175, i64* %_index_ptr2173
  %_id2181 = load i64, i64* %_i2158
  %_bop2179 = add i64 %_id2181, 1
  store i64 %_bop2179, i64* %_i2158
  br label %_start2165
_end2167:
  %_id2185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2153
  %_index_ptr2187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2185, i32 0, i32 1, i32 1
  %_2188 = load i64, i64* %_index_ptr2187
  ret i64 %_2188
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2027 = alloca i64
  store i64 %argc, i64* %_argc2027
  %_argv2028 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2028
  %_a2029 = alloca { i64, [0 x i64] }*
  %_i2034 = alloca i64
  %_arr2059 = alloca { i64, [0 x i64] }*
  %_i2064 = alloca i64
  %_arr02093 = alloca { i64, [0 x i64] }*
  %_i2098 = alloca i64
  store { i64, [0 x i64] }* %_array2033, { i64, [0 x i64] }** %_a2029
  %_raw_array2032 = call i64* @oat_alloc_array(i64 3)
  %_array2033 = bitcast i64* %_raw_array2032 to { i64, [0 x i64] }*
  store i64 0, i64* %_i2034
  br label %_start2041
_start2041:
  %_id2039 = load i64, i64* %_i2034
  %_bop2037 = icmp slt i64 %_id2039, 3
  br i1 %_bop2037, label %_body2042, label %_end2043
_body2042:
  %_id2046 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2029
  %_id2048 = load i64, i64* %_i2034
  %_index_ptr2049 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2046, i32 0, i32 1, i64 %_id2048
  %_id2051 = load i64, i64* %_i2034
  store i64 %_id2051, i64* %_index_ptr2049
  %_id2057 = load i64, i64* %_i2034
  %_bop2055 = add i64 %_id2057, 1
  store i64 %_bop2055, i64* %_i2034
  br label %_start2041
_end2043:
  store { i64, [0 x i64] }* %_array2063, { i64, [0 x i64] }** %_arr2059
  %_raw_array2062 = call i64* @oat_alloc_array(i64 4)
  %_array2063 = bitcast i64* %_raw_array2062 to { i64, [0 x i64] }*
  store i64 0, i64* %_i2064
  br label %_start2071
_start2071:
  %_id2069 = load i64, i64* %_i2064
  %_bop2067 = icmp slt i64 %_id2069, 4
  br i1 %_bop2067, label %_body2072, label %_end2073
_body2072:
  %_id2076 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2059
  %_id2078 = load i64, i64* %_i2064
  %_index_ptr2079 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2076, i32 0, i32 1, i64 %_id2078
  %_id2083 = load i64, i64* %_i2064
  %_id2085 = load i64, i64* %_i2064
  %_bop2081 = mul i64 %_id2083, %_id2085
  store i64 %_bop2081, i64* %_index_ptr2079
  %_id2091 = load i64, i64* %_i2064
  %_bop2089 = add i64 %_id2091, 1
  store i64 %_bop2089, i64* %_i2064
  br label %_start2071
_end2073:
  store { i64, [0 x i64] }* %_array2097, { i64, [0 x i64] }** %_arr02093
  %_raw_array2096 = call i64* @oat_alloc_array(i64 3)
  %_array2097 = bitcast i64* %_raw_array2096 to { i64, [0 x i64] }*
  store i64 0, i64* %_i2098
  br label %_start2105
_start2105:
  %_id2103 = load i64, i64* %_i2098
  %_bop2101 = icmp slt i64 %_id2103, 3
  br i1 %_bop2101, label %_body2106, label %_end2107
_body2106:
  %_id2110 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr02093
  %_id2112 = load i64, i64* %_i2098
  %_index_ptr2113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2110, i32 0, i32 1, i64 %_id2112
  %_id2118 = load i64, i64* %_i2098
  %_bop2115 = mul i64 2, %_id2118
  store i64 %_bop2115, i64* %_index_ptr2113
  %_id2124 = load i64, i64* %_i2098
  %_bop2122 = add i64 %_id2124, 1
  store i64 %_bop2122, i64* %_i2098
  br label %_start2105
_end2107:
  %_id2134 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2059
  %_index_ptr2136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2134, i32 0, i32 1, i32 3
  %_2142 = load i64, i64* %_index_ptr2136
  %_id2139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2029
  %_index_ptr2141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2139, i32 0, i32 1, i32 1
  %_2143 = load i64, i64* %_index_ptr2141
  %_bop2131 = add i64 %_2142, %_2143
  %_id2146 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr02093
  %_Call_retval2147 = call i64 @f({ i64, [0 x i64] }* %_id2146)
  %_bop2129 = add i64 %_bop2131, %_Call_retval2147
  %_Call_retval2150 = call i64 @g(i64 4)
  %_bop2127 = add i64 %_bop2129, %_Call_retval2150
  ret i64 %_bop2127
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
