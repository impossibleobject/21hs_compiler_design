; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_id2019 = load i64, i64* @a
  %_bop2018 = add i64 %_id2019, 1
  store i64 %_bop2018, i64* @a
  %_id2020 = load i64, i64* @a
  ret i64 %_id2020
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2001 = alloca { i64, [0 x i64] }*
  %_argc1999 = alloca i64
  store i64 %argc, i64* %_argc1999
  %_argv2000 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2000
  %_Call_retval2002 = call i64 @f()
  %_raw_array2003 = call i64* @oat_alloc_array(i64 %_Call_retval2002)
  %_array2004 = bitcast i64* %_raw_array2003 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2004, { i64, [0 x i64] }** %_b2001
  %_id2005 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2001
  %_index_ptr2006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2005, i32 0, i32 1, i32 0
  store i64 0, i64* %_index_ptr2006
  %_id2007 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2001
  %_index_ptr2008 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2007, i32 0, i32 1, i32 1
  store i64 1, i64* %_index_ptr2008
  %_id2011 = load i64, i64* @a
  %_id2012 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2001
  %_index_ptr2013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2012, i32 0, i32 1, i32 0
  %_idx_tmp2014 = load i64, i64* %_index_ptr2013
  %_bop2010 = add i64 %_id2011, %_idx_tmp2014
  %_id2015 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2001
  %_index_ptr2016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2015, i32 0, i32 1, i32 1
  %_idx_tmp2017 = load i64, i64* %_index_ptr2016
  %_bop2009 = add i64 %_bop2010, %_idx_tmp2017
  ret i64 %_bop2009
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
