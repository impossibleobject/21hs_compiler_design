; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %i = alloca i64
  %j = alloca i64
  %tmp = alloca i64
  %_a3833 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3833
  %_len3834 = alloca i64
  store i64 %len, i64* %_len3834
  store i64 1, i64* %i
  store i64 2, i64* %j
  br label %_start3838
_start3838:
  %_id3836 = load i64, i64* %i
  %_id3837 = load i64, i64* %_len3834
  %_bop3835 = icmp slt i64 %_id3836, %_id3837
  br i1 %_bop3835, label %_body3839, label %_end3840
_body3839:
  %_id3842 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3833
  %_id3844 = load i64, i64* %i
  %_bop3843 = sub i64 %_id3844, 1
  %_index_ptr3845 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3842, i32 0, i32 1, i64 %_bop3843
  %_idx_tmp3849 = load i64, i64* %_index_ptr3845
  %_id3846 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3833
  %_id3847 = load i64, i64* %i
  %_index_ptr3848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3846, i32 0, i32 1, i64 %_id3847
  %_idx_tmp3850 = load i64, i64* %_index_ptr3848
  %_bop3841 = icmp sle i64 %_idx_tmp3849, %_idx_tmp3850
  br i1 %_bop3841, label %_then3851, label %_else3852
_then3851:
  %_id3854 = load i64, i64* %j
  store i64 %_id3854, i64* %i
  %_id3856 = load i64, i64* %j
  %_bop3855 = add i64 %_id3856, 1
  store i64 %_bop3855, i64* %j
  br label %_end3853
_else3852:
  %_id3857 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3833
  %_id3859 = load i64, i64* %i
  %_bop3858 = sub i64 %_id3859, 1
  %_index_ptr3860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3857, i32 0, i32 1, i64 %_bop3858
  %_idx_tmp3861 = load i64, i64* %_index_ptr3860
  store i64 %_idx_tmp3861, i64* %tmp
  %_id3862 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3833
  %_id3863 = load i64, i64* %i
  %_index_ptr3864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3862, i32 0, i32 1, i64 %_id3863
  %_idx_tmp3865 = load i64, i64* %_index_ptr3864
  %_id3866 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3833
  %_id3868 = load i64, i64* %i
  %_bop3867 = sub i64 %_id3868, 1
  %_index_ptr3869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3866, i32 0, i32 1, i64 %_bop3867
  store i64 %_idx_tmp3865, i64* %_index_ptr3869
  %_id3870 = load i64, i64* %tmp
  %_id3871 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3833
  %_id3872 = load i64, i64* %i
  %_index_ptr3873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3871, i32 0, i32 1, i64 %_id3872
  store i64 %_id3870, i64* %_index_ptr3873
  %_id3875 = load i64, i64* %i
  %_bop3874 = sub i64 %_id3875, 1
  store i64 %_bop3874, i64* %i
  %_id3877 = load i64, i64* %i
  %_bop3876 = icmp eq i64 %_id3877, 0
  br i1 %_bop3876, label %_then3878, label %_else3879
_then3878:
  %_id3881 = load i64, i64* %j
  store i64 %_id3881, i64* %i
  %_id3883 = load i64, i64* %j
  %_bop3882 = add i64 %_id3883, 1
  store i64 %_bop3882, i64* %j
  br label %_end3880
_else3879:
  br label %_end3880
_end3880:
  br label %_end3853
_end3853:
  br label %_start3838
_end3840:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %arr = alloca { i64, [0 x i64] }*
  %len = alloca i64
  %i = alloca i64
  %_argc3806 = alloca i64
  store i64 %argc, i64* %_argc3806
  %_argv3807 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3807
  %_raw_array3808 = call i64* @oat_alloc_array(i64 8)
  %_array3809 = bitcast i64* %_raw_array3808 to { i64, [0 x i64] }*
  %_CArr_elem_73817 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3809, i32 0, i32 1, i32 7
  store i64 0, i64* %_CArr_elem_73817
  %_CArr_elem_63816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3809, i32 0, i32 1, i32 6
  store i64 2, i64* %_CArr_elem_63816
  %_CArr_elem_53815 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3809, i32 0, i32 1, i32 5
  store i64 99, i64* %_CArr_elem_53815
  %_CArr_elem_43814 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3809, i32 0, i32 1, i32 4
  store i64 30, i64* %_CArr_elem_43814
  %_CArr_elem_33813 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3809, i32 0, i32 1, i32 3
  store i64 65, i64* %_CArr_elem_33813
  %_CArr_elem_23812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3809, i32 0, i32 1, i32 2
  store i64 1, i64* %_CArr_elem_23812
  %_CArr_elem_13811 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3809, i32 0, i32 1, i32 1
  store i64 200, i64* %_CArr_elem_13811
  %_CArr_elem_03810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3809, i32 0, i32 1, i32 0
  store i64 5, i64* %_CArr_elem_03810
  store { i64, [0 x i64] }* %_array3809, { i64, [0 x i64] }** %arr
  store i64 8, i64* %len
  %_id3818 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_id3819 = load i64, i64* %len
  call void @gnomeSort({ i64, [0 x i64] }* %_id3818, i64 %_id3819)
  store i64 0, i64* %i
  br label %_start3823
_start3823:
  %_id3822 = load i64, i64* %i
  %_bop3821 = icmp slt i64 %_id3822, 8
  br i1 %_bop3821, label %_body3824, label %_end3825
_body3824:
  %_idx_tmp3829 = load i64, i64* %_index_ptr3828
  %_index_ptr3828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3826, i32 0, i32 1, i64 %_id3827
  %_id3827 = load i64, i64* %i
  %_id3826 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  call void @print_int(i64 %_idx_tmp3829)
  %_id3832 = load i64, i64* %i
  %_bop3831 = add i64 %_id3832, 1
  store i64 %_bop3831, i64* %i
  br label %_start3823
_end3825:
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
