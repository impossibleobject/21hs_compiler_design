; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a2134 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2134
  %_2137 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2134
  %_index_ptr2139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2137, i32 0, i32 1, i32 1
  %_2141 = load i64, i64* %_index_ptr2139
  ret i64 %_2141
}

define i64 @g(i64 %x) {
  %_x2097 = alloca i64
  store i64 %x, i64* %_x2097
  %_arr2098 = alloca { i64, [0 x i64] }*
  %_i2103 = alloca i64
  store { i64, [0 x i64] }* %_array2102, { i64, [0 x i64] }** %_arr2098
  %_raw_array2101 = call i64* @oat_alloc_array(i64 3)
  %_array2102 = bitcast i64* %_raw_array2101 to { i64, [0 x i64] }*
  store i64 0, i64* %_i2103
  br label %_start2109
_start2109:
  %_2107 = load i64, i64* %_i2103
  %_2105 = icmp slt i64 %_2107, 3
  br i1 %_2105, label %_body2110, label %_end2111
_body2110:
  %_2114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2098
  %_2116 = load i64, i64* %_i2103
  %_index_ptr2117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2114, i32 0, i32 1, i64 %_2116
  %_2120 = load i64, i64* %_x2097
  store i64 %_2120, i64* %_index_ptr2117
  %_2125 = load i64, i64* %_i2103
  %_2123 = add i64 %_2125, 1
  store i64 %_2123, i64* %_i2103
  br label %_start2109
_end2111:
  %_2129 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2098
  %_index_ptr2131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2129, i32 0, i32 1, i32 1
  %_2133 = load i64, i64* %_index_ptr2131
  ret i64 %_2133
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1978 = alloca i64
  store i64 %argc, i64* %_argc1978
  %_argv1979 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1979
  %_a1980 = alloca { i64, [0 x i64] }*
  %_i1985 = alloca i64
  %_arr2009 = alloca { i64, [0 x i64] }*
  %_i2014 = alloca i64
  %_arr02041 = alloca { i64, [0 x i64] }*
  %_i2046 = alloca i64
  store { i64, [0 x i64] }* %_array1984, { i64, [0 x i64] }** %_a1980
  %_raw_array1983 = call i64* @oat_alloc_array(i64 3)
  %_array1984 = bitcast i64* %_raw_array1983 to { i64, [0 x i64] }*
  store i64 0, i64* %_i1985
  br label %_start1991
_start1991:
  %_1989 = load i64, i64* %_i1985
  %_1987 = icmp slt i64 %_1989, 3
  br i1 %_1987, label %_body1992, label %_end1993
_body1992:
  %_1996 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1980
  %_1998 = load i64, i64* %_i1985
  %_index_ptr1999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1996, i32 0, i32 1, i64 %_1998
  %_2002 = load i64, i64* %_i1985
  store i64 %_2002, i64* %_index_ptr1999
  %_2007 = load i64, i64* %_i1985
  %_2005 = add i64 %_2007, 1
  store i64 %_2005, i64* %_i1985
  br label %_start1991
_end1993:
  store { i64, [0 x i64] }* %_array2013, { i64, [0 x i64] }** %_arr2009
  %_raw_array2012 = call i64* @oat_alloc_array(i64 4)
  %_array2013 = bitcast i64* %_raw_array2012 to { i64, [0 x i64] }*
  store i64 0, i64* %_i2014
  br label %_start2020
_start2020:
  %_2018 = load i64, i64* %_i2014
  %_2016 = icmp slt i64 %_2018, 4
  br i1 %_2016, label %_body2021, label %_end2022
_body2021:
  %_2025 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2009
  %_2027 = load i64, i64* %_i2014
  %_index_ptr2028 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2025, i32 0, i32 1, i64 %_2027
  %_2032 = load i64, i64* %_i2014
  %_2034 = load i64, i64* %_i2014
  %_2030 = mul i64 %_2032, %_2034
  store i64 %_2030, i64* %_index_ptr2028
  %_2039 = load i64, i64* %_i2014
  %_2037 = add i64 %_2039, 1
  store i64 %_2037, i64* %_i2014
  br label %_start2020
_end2022:
  store { i64, [0 x i64] }* %_array2045, { i64, [0 x i64] }** %_arr02041
  %_raw_array2044 = call i64* @oat_alloc_array(i64 3)
  %_array2045 = bitcast i64* %_raw_array2044 to { i64, [0 x i64] }*
  store i64 0, i64* %_i2046
  br label %_start2052
_start2052:
  %_2050 = load i64, i64* %_i2046
  %_2048 = icmp slt i64 %_2050, 3
  br i1 %_2048, label %_body2053, label %_end2054
_body2053:
  %_2057 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr02041
  %_2059 = load i64, i64* %_i2046
  %_index_ptr2060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2057, i32 0, i32 1, i64 %_2059
  %_2065 = load i64, i64* %_i2046
  %_2062 = mul i64 2, %_2065
  store i64 %_2062, i64* %_index_ptr2060
  %_2070 = load i64, i64* %_i2046
  %_2068 = add i64 %_2070, 1
  store i64 %_2068, i64* %_i2046
  br label %_start2052
_end2054:
  %_2077 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2009
  %_index_ptr2079 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2077, i32 0, i32 1, i32 3
  %_2087 = load i64, i64* %_index_ptr2079
  %_2083 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1980
  %_index_ptr2085 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_2083, i32 0, i32 1, i32 1
  %_2088 = load i64, i64* %_index_ptr2085
  %_2074 = add i64 %_2087, %_2088
  %_2091 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr02041
  %_retval2092 = call i64 @f({ i64, [0 x i64] }* %_2091)
  %_2073 = add i64 %_2074, %_retval2092
  %_retval2095 = call i64 @g(i64 4)
  %_2072 = add i64 %_2073, %_retval2095
  ret i64 %_2072
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
