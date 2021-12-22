; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %_x4932, i64 %_y4929) {
  %_x4933 = alloca i64
  %_y4930 = alloca i64
  store i64 %_x4932, i64* %_x4933
  store i64 %_y4929, i64* %_y4930
  %_x4935 = load i64, i64* %_x4933
  %_y4936 = load i64, i64* %_y4930
  %_bop4937 = icmp eq i64 %_x4935, %_y4936
  br i1 %_bop4937, label %_then4941, label %_else4940
_else4940:
  br label %_merge4939
_else4946:
  br label %_merge4945
_else4952:
  br label %_merge4951
_else4972:
  %_y4965 = load i64, i64* %_y4930
  %_bop4966 = lshr i64 %_y4965, 1
  %_x4967 = load i64, i64* %_x4933
  %_bop4968 = lshr i64 %_x4967, 1
  %_result4969 = call i64 @binary_gcd(i64 %_bop4968, i64 %_bop4966)
  %_bop4970 = shl i64 %_result4969, 1
  ret i64 %_bop4970
_else4975:
  br label %_merge4974
_else4986:
  br label %_merge4985
_else4998:
  br label %_merge4997
_merge4939:
  %_x4942 = load i64, i64* %_x4933
  %_bop4943 = icmp eq i64 %_x4942, 0
  br i1 %_bop4943, label %_then4947, label %_else4946
_merge4945:
  %_y4948 = load i64, i64* %_y4930
  %_bop4949 = icmp eq i64 %_y4948, 0
  br i1 %_bop4949, label %_then4953, label %_else4952
_merge4951:
  %_x4954 = load i64, i64* %_x4933
  %_unop4955 = xor i64 %_x4954, -1
  %_bop4956 = and i64 %_unop4955, 1
  %_bop4957 = icmp eq i64 %_bop4956, 1
  br i1 %_bop4957, label %_then4976, label %_else4975
_merge4971:
  br label %_merge4974
_merge4974:
  %_y4977 = load i64, i64* %_y4930
  %_unop4978 = xor i64 %_y4977, -1
  %_bop4979 = and i64 %_unop4978, 1
  %_bop4980 = icmp eq i64 %_bop4979, 1
  br i1 %_bop4980, label %_then4987, label %_else4986
_merge4985:
  %_x4988 = load i64, i64* %_x4933
  %_y4989 = load i64, i64* %_y4930
  %_bop4990 = icmp sgt i64 %_x4988, %_y4989
  br i1 %_bop4990, label %_then4999, label %_else4998
_merge4997:
  %_x5000 = load i64, i64* %_x4933
  %_y5001 = load i64, i64* %_y4930
  %_x5002 = load i64, i64* %_x4933
  %_bop5003 = sub i64 %_y5001, %_x5002
  %_bop5004 = lshr i64 %_bop5003, 1
  %_result5005 = call i64 @binary_gcd(i64 %_bop5004, i64 %_x5000)
  ret i64 %_result5005
_then4941:
  %_x4938 = load i64, i64* %_x4933
  ret i64 %_x4938
_then4947:
  %_y4944 = load i64, i64* %_y4930
  ret i64 %_y4944
_then4953:
  %_x4950 = load i64, i64* %_x4933
  ret i64 %_x4950
_then4973:
  %_y4961 = load i64, i64* %_y4930
  %_x4962 = load i64, i64* %_x4933
  %_bop4963 = lshr i64 %_x4962, 1
  %_result4964 = call i64 @binary_gcd(i64 %_bop4963, i64 %_y4961)
  ret i64 %_result4964
_then4976:
  %_y4958 = load i64, i64* %_y4930
  %_bop4959 = and i64 %_y4958, 1
  %_bop4960 = icmp eq i64 %_bop4959, 1
  br i1 %_bop4960, label %_then4973, label %_else4972
_then4987:
  %_y4981 = load i64, i64* %_y4930
  %_bop4982 = lshr i64 %_y4981, 1
  %_x4983 = load i64, i64* %_x4933
  %_result4984 = call i64 @binary_gcd(i64 %_x4983, i64 %_bop4982)
  ret i64 %_result4984
_then4999:
  %_y4991 = load i64, i64* %_y4930
  %_x4992 = load i64, i64* %_x4933
  %_y4993 = load i64, i64* %_y4930
  %_bop4994 = sub i64 %_x4992, %_y4993
  %_bop4995 = lshr i64 %_bop4994, 1
  %_result4996 = call i64 @binary_gcd(i64 %_bop4995, i64 %_y4991)
  ret i64 %_result4996
}

define i64 @program(i64 %_argc4919, { i64, [0 x i8*] }* %_argv4916) {
  %_x4922 = alloca i64
  %_y4924 = alloca i64
  store i64 21, i64* %_x4922
  store i64 15, i64* %_y4924
  %_y4926 = load i64, i64* %_y4924
  %_x4927 = load i64, i64* %_x4922
  %_result4928 = call i64 @binary_gcd(i64 %_x4927, i64 %_y4926)
  ret i64 %_result4928
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
