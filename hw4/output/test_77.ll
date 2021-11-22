; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb1984 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %str = alloca i8*
  %arr = alloca { i64, [0 x i64] }*
  %s = alloca i64
  %i = alloca i64
  %_argc1981 = alloca i64
  store i64 %argc, i64* %_argc1981
  %_argv1982 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1982
  %_cstr_loc1983 = getelementptr [6 x i8], [6 x i8]* @_cstr_glb1984, i32 0, i32 0
  store i8* %_cstr_loc1983, i8** %str
  %_id1985 = load i8*, i8** %str
  %_Call_retval1986 = call { i64, [0 x i64] }* @array_of_string(i8* %_id1985)
  store { i64, [0 x i64] }* %_Call_retval1986, { i64, [0 x i64] }** %arr
  store i64 0, i64* %s
  store i64 0, i64* %i
  br label %_start1989
_start1989:
  %_id1988 = load i64, i64* %i
  %_bop1987 = icmp slt i64 %_id1988, 5
  br i1 %_bop1987, label %_body1990, label %_end1991
_body1990:
  %_id1993 = load i64, i64* %s
  %_id1994 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_id1995 = load i64, i64* %i
  %_index_ptr1996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1994, i32 0, i32 1, i64 %_id1995
  %_idx_tmp1997 = load i64, i64* %_index_ptr1996
  %_bop1992 = add i64 %_id1993, %_idx_tmp1997
  store i64 %_bop1992, i64* %s
  %_id1999 = load i64, i64* %i
  %_bop1998 = add i64 %_id1999, 1
  store i64 %_bop1998, i64* %i
  br label %_start1989
_end1991:
  %_id2000 = load i64, i64* %s
  ret i64 %_id2000
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
