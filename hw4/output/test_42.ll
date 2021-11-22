; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_id2017 = load i64, i64* @a
  %_bop2016 = add i64 %_id2017, 1
  store i64 %_bop2016, i64* @a
  %_id2018 = load i64, i64* @a
  ret i64 %_id2018
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1997 = alloca i64
  store i64 %argc, i64* %_argc1997
  %_argv1998 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1998
  %_b1999 = alloca { i64, [0 x i64] }*
  %_Call_retval2000 = call i64 @f()
  %_raw_array2001 = call i64* @oat_alloc_array(i64 %_Call_retval2000)
  %_array2002 = bitcast i64* %_raw_array2001 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2002, { i64, [0 x i64] }** %_b1999
  %_id2003 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1999
  %_index_ptr2004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2003, i32 0, i32 1, i32 0
  store i64 0, i64* %_index_ptr2004
  %_id2005 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1999
  %_index_ptr2006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2005, i32 0, i32 1, i32 1
  store i64 1, i64* %_index_ptr2006
  %_id2009 = load i64, i64* @a
  %_id2010 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1999
  %_index_ptr2011 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2010, i32 0, i32 1, i32 0
  %_idx_tmp2012 = load i64, i64* %_index_ptr2011
  %_bop2008 = add i64 %_id2009, %_idx_tmp2012
  %_id2013 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1999
  %_index_ptr2014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2013, i32 0, i32 1, i32 1
  %_idx_tmp2015 = load i64, i64* %_index_ptr2014
  %_bop2007 = add i64 %_bop2008, %_idx_tmp2015
  ret i64 %_bop2007
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
