; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_str_arr3678 = global [2 x i8] c" \00"
@_str_arr3684 = global [2 x i8] c"	\00"

define i64 @program(i64 %_argc3874, { i64, [0 x i8*] }* %_argv3871) {
  %_a3899 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b3939 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c3967 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3877 = call i64* @oat_alloc_array(i64 2)
  %_array3878 = bitcast i64* %_raw_array3877 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3879 = call i64* @oat_alloc_array(i64 3)
  %_array3880 = bitcast i64* %_raw_array3879 to { i64, [0 x i64] }*
  %_ind3881 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3880, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3881
  %_ind3883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3880, i32 0, i32 1, i32 1
  store i64 3, i64* %_ind3883
  %_ind3885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3880, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind3885
  %_ind3887 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3878, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3880, { i64, [0 x i64] }** %_ind3887
  %_raw_array3889 = call i64* @oat_alloc_array(i64 3)
  %_array3890 = bitcast i64* %_raw_array3889 to { i64, [0 x i64] }*
  %_ind3891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3890, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3891
  %_ind3893 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3890, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3893
  %_ind3895 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3890, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3895
  %_ind3897 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3878, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3890, { i64, [0 x i64] }** %_ind3897
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3878, { i64, [0 x { i64, [0 x i64] }*] }** %_a3899
  %_raw_array3901 = call i64* @oat_alloc_array(i64 3)
  %_array3902 = bitcast i64* %_raw_array3901 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3903 = call i64* @oat_alloc_array(i64 4)
  %_array3904 = bitcast i64* %_raw_array3903 to { i64, [0 x i64] }*
  %_ind3905 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3904, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3905
  %_ind3907 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3904, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3907
  %_ind3909 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3904, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind3909
  %_ind3911 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3904, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind3911
  %_ind3913 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3902, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3904, { i64, [0 x i64] }** %_ind3913
  %_raw_array3915 = call i64* @oat_alloc_array(i64 4)
  %_array3916 = bitcast i64* %_raw_array3915 to { i64, [0 x i64] }*
  %_ind3917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3916, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3917
  %_ind3919 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3916, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3919
  %_ind3921 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3916, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind3921
  %_ind3923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3916, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind3923
  %_ind3925 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3902, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3916, { i64, [0 x i64] }** %_ind3925
  %_raw_array3927 = call i64* @oat_alloc_array(i64 4)
  %_array3928 = bitcast i64* %_raw_array3927 to { i64, [0 x i64] }*
  %_ind3929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3928, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind3929
  %_ind3931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3928, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3931
  %_ind3933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3928, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3933
  %_ind3935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3928, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind3935
  %_ind3937 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3902, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3928, { i64, [0 x i64] }** %_ind3937
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3902, { i64, [0 x { i64, [0 x i64] }*] }** %_b3939
  %_raw_array3941 = call i64* @oat_alloc_array(i64 2)
  %_array3942 = bitcast i64* %_raw_array3941 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3943 = call i64* @oat_alloc_array(i64 4)
  %_array3944 = bitcast i64* %_raw_array3943 to { i64, [0 x i64] }*
  %_ind3945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3944, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3945
  %_ind3947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3944, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3947
  %_ind3949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3944, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3949
  %_ind3951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3944, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3951
  %_ind3953 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3942, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3944, { i64, [0 x i64] }** %_ind3953
  %_raw_array3955 = call i64* @oat_alloc_array(i64 4)
  %_array3956 = bitcast i64* %_raw_array3955 to { i64, [0 x i64] }*
  %_ind3957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3957
  %_ind3959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3959
  %_ind3961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3961
  %_ind3963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3956, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3963
  %_ind3965 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3942, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3956, { i64, [0 x i64] }** %_ind3965
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3942, { i64, [0 x { i64, [0 x i64] }*] }** %_c3967
  %_c3969 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3967
  %_b3970 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3939
  %_a3971 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3899
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a3971, { i64, [0 x { i64, [0 x i64] }*] }* %_b3970, { i64, [0 x { i64, [0 x i64] }*] }* %_c3969)
  %_c3973 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3967
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c3973, i64 2)
  %_c3975 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3967
  %_b3976 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3939
  %_a3977 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3899
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a3977, { i64, [0 x { i64, [0 x i64] }*] }* %_b3976, { i64, [0 x { i64, [0 x i64] }*] }* %_c3975)
  %_c3979 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3967
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c3979, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a13792, { i64, [0 x { i64, [0 x i64] }*] }* %_a23789, { i64, [0 x { i64, [0 x i64] }*] }* %_a33786) {
  %_a13793 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23790 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33787 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3795 = alloca i64
  %_j3802 = alloca i64
  %_k3809 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13792, { i64, [0 x { i64, [0 x i64] }*] }** %_a13793
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23789, { i64, [0 x { i64, [0 x i64] }*] }** %_a23790
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33786, { i64, [0 x { i64, [0 x i64] }*] }** %_a33787
  store i64 0, i64* %_i3795
  br label %_cond3801
_body3800:
  store i64 0, i64* %_j3802
  br label %_cond3808
_body3807:
  store i64 0, i64* %_k3809
  br label %_cond3815
_body3814:
  %_a33816 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33787
  %_i3817 = load i64, i64* %_i3795
  %_tmp3819 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a33816 to i64*
  call void @oat_assert_array_length(i64* %_tmp3819, i64 %_i3817)
  %_index_ptr3820 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33816, i32 0, i32 1, i64 %_i3817
  %_index3821 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3820
  %_j3822 = load i64, i64* %_j3802
  %_tmp3824 = bitcast { i64, [0 x i64] }* %_index3821 to i64*
  call void @oat_assert_array_length(i64* %_tmp3824, i64 %_j3822)
  %_index_ptr3825 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3821, i32 0, i32 1, i64 %_j3822
  %_a33826 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33787
  %_i3827 = load i64, i64* %_i3795
  %_tmp3829 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a33826 to i64*
  call void @oat_assert_array_length(i64* %_tmp3829, i64 %_i3827)
  %_index_ptr3830 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33826, i32 0, i32 1, i64 %_i3827
  %_index3831 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3830
  %_j3832 = load i64, i64* %_j3802
  %_tmp3834 = bitcast { i64, [0 x i64] }* %_index3831 to i64*
  call void @oat_assert_array_length(i64* %_tmp3834, i64 %_j3832)
  %_index_ptr3835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3831, i32 0, i32 1, i64 %_j3832
  %_index3836 = load i64, i64* %_index_ptr3835
  %_a13837 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13793
  %_i3838 = load i64, i64* %_i3795
  %_tmp3840 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a13837 to i64*
  call void @oat_assert_array_length(i64* %_tmp3840, i64 %_i3838)
  %_index_ptr3841 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13837, i32 0, i32 1, i64 %_i3838
  %_index3842 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3841
  %_k3843 = load i64, i64* %_k3809
  %_tmp3845 = bitcast { i64, [0 x i64] }* %_index3842 to i64*
  call void @oat_assert_array_length(i64* %_tmp3845, i64 %_k3843)
  %_index_ptr3846 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3842, i32 0, i32 1, i64 %_k3843
  %_index3847 = load i64, i64* %_index_ptr3846
  %_a23848 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23790
  %_k3849 = load i64, i64* %_k3809
  %_tmp3851 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a23848 to i64*
  call void @oat_assert_array_length(i64* %_tmp3851, i64 %_k3849)
  %_index_ptr3852 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23848, i32 0, i32 1, i64 %_k3849
  %_index3853 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3852
  %_j3854 = load i64, i64* %_j3802
  %_tmp3856 = bitcast { i64, [0 x i64] }* %_index3853 to i64*
  call void @oat_assert_array_length(i64* %_tmp3856, i64 %_j3854)
  %_index_ptr3857 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3853, i32 0, i32 1, i64 %_j3854
  %_index3858 = load i64, i64* %_index_ptr3857
  %_bop3859 = mul i64 %_index3847, %_index3858
  %_bop3860 = add i64 %_index3836, %_bop3859
  store i64 %_bop3860, i64* %_index_ptr3825
  %_k3862 = load i64, i64* %_k3809
  %_bop3863 = add i64 %_k3862, 1
  store i64 %_bop3863, i64* %_k3809
  br label %_cond3815
_cond3801:
  %_i3797 = load i64, i64* %_i3795
  %_bop3798 = icmp slt i64 %_i3797, 2
  br i1 %_bop3798, label %_body3800, label %_post3799
_cond3808:
  %_j3804 = load i64, i64* %_j3802
  %_bop3805 = icmp slt i64 %_j3804, 4
  br i1 %_bop3805, label %_body3807, label %_post3806
_cond3815:
  %_k3811 = load i64, i64* %_k3809
  %_bop3812 = icmp slt i64 %_k3811, 3
  br i1 %_bop3812, label %_body3814, label %_post3813
_post3799:
  ret void
_post3806:
  %_i3868 = load i64, i64* %_i3795
  %_bop3869 = add i64 %_i3868, 1
  store i64 %_bop3869, i64* %_i3795
  br label %_cond3801
_post3813:
  %_j3865 = load i64, i64* %_j3802
  %_bop3866 = add i64 %_j3865, 1
  store i64 %_bop3866, i64* %_j3802
  br label %_cond3808
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a13747, { i64, [0 x { i64, [0 x i64] }*] }* %_a23744, { i64, [0 x { i64, [0 x i64] }*] }* %_a33741) {
  %_a13748 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23745 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33742 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3750 = alloca i64
  %_j3757 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13747, { i64, [0 x { i64, [0 x i64] }*] }** %_a13748
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23744, { i64, [0 x { i64, [0 x i64] }*] }** %_a23745
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33741, { i64, [0 x { i64, [0 x i64] }*] }** %_a33742
  store i64 0, i64* %_i3750
  br label %_cond3756
_body3755:
  store i64 0, i64* %_j3757
  br label %_cond3763
_body3762:
  %_a33764 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33742
  %_i3765 = load i64, i64* %_i3750
  %_tmp3767 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a33764 to i64*
  call void @oat_assert_array_length(i64* %_tmp3767, i64 %_i3765)
  %_index_ptr3768 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33764, i32 0, i32 1, i64 %_i3765
  %_index3769 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3768
  %_j3770 = load i64, i64* %_j3757
  %_tmp3772 = bitcast { i64, [0 x i64] }* %_index3769 to i64*
  call void @oat_assert_array_length(i64* %_tmp3772, i64 %_j3770)
  %_index_ptr3773 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3769, i32 0, i32 1, i64 %_j3770
  %_j3774 = load i64, i64* %_j3757
  %_i3775 = load i64, i64* %_i3750
  %_a23776 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23745
  %_a13777 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13748
  %_result3778 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13777, { i64, [0 x { i64, [0 x i64] }*] }* %_a23776, i64 %_i3775, i64 %_j3774)
  store i64 %_result3778, i64* %_index_ptr3773
  %_j3780 = load i64, i64* %_j3757
  %_bop3781 = add i64 %_j3780, 1
  store i64 %_bop3781, i64* %_j3757
  br label %_cond3763
_cond3756:
  %_i3752 = load i64, i64* %_i3750
  %_bop3753 = icmp slt i64 %_i3752, 2
  br i1 %_bop3753, label %_body3755, label %_post3754
_cond3763:
  %_j3759 = load i64, i64* %_j3757
  %_bop3760 = icmp slt i64 %_j3759, 4
  br i1 %_bop3760, label %_body3762, label %_post3761
_post3754:
  ret void
_post3761:
  %_i3783 = load i64, i64* %_i3750
  %_bop3784 = add i64 %_i3783, 1
  store i64 %_bop3784, i64* %_i3750
  br label %_cond3756
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13699, { i64, [0 x { i64, [0 x i64] }*] }* %_a23696, i64 %_row3693, i64 %_col3690) {
  %_a13700 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23697 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3694 = alloca i64
  %_col3691 = alloca i64
  %_sum3702 = alloca i64
  %_k3704 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13699, { i64, [0 x { i64, [0 x i64] }*] }** %_a13700
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23696, { i64, [0 x { i64, [0 x i64] }*] }** %_a23697
  store i64 %_row3693, i64* %_row3694
  store i64 %_col3690, i64* %_col3691
  store i64 0, i64* %_sum3702
  store i64 0, i64* %_k3704
  br label %_cond3710
_body3709:
  %_sum3711 = load i64, i64* %_sum3702
  %_a13712 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13700
  %_row3713 = load i64, i64* %_row3694
  %_tmp3715 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a13712 to i64*
  call void @oat_assert_array_length(i64* %_tmp3715, i64 %_row3713)
  %_index_ptr3716 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13712, i32 0, i32 1, i64 %_row3713
  %_index3717 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3716
  %_k3718 = load i64, i64* %_k3704
  %_tmp3720 = bitcast { i64, [0 x i64] }* %_index3717 to i64*
  call void @oat_assert_array_length(i64* %_tmp3720, i64 %_k3718)
  %_index_ptr3721 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3717, i32 0, i32 1, i64 %_k3718
  %_index3722 = load i64, i64* %_index_ptr3721
  %_a23723 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23697
  %_k3724 = load i64, i64* %_k3704
  %_tmp3726 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_a23723 to i64*
  call void @oat_assert_array_length(i64* %_tmp3726, i64 %_k3724)
  %_index_ptr3727 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23723, i32 0, i32 1, i64 %_k3724
  %_index3728 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3727
  %_col3729 = load i64, i64* %_col3691
  %_tmp3731 = bitcast { i64, [0 x i64] }* %_index3728 to i64*
  call void @oat_assert_array_length(i64* %_tmp3731, i64 %_col3729)
  %_index_ptr3732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3728, i32 0, i32 1, i64 %_col3729
  %_index3733 = load i64, i64* %_index_ptr3732
  %_bop3734 = mul i64 %_index3722, %_index3733
  %_bop3735 = add i64 %_sum3711, %_bop3734
  store i64 %_bop3735, i64* %_sum3702
  %_k3737 = load i64, i64* %_k3704
  %_bop3738 = add i64 %_k3737, 1
  store i64 %_bop3738, i64* %_k3704
  br label %_cond3710
_cond3710:
  %_k3706 = load i64, i64* %_k3704
  %_bop3707 = icmp slt i64 %_k3706, 3
  br i1 %_bop3707, label %_body3709, label %_post3708
_post3708:
  %_sum3740 = load i64, i64* %_sum3702
  ret i64 %_sum3740
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_ar3648, i64 %_n3645) {
  %_ar3649 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3646 = alloca i64
  %_i3651 = alloca i64
  %_j3659 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_ar3648, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3649
  store i64 %_n3645, i64* %_n3646
  store i64 0, i64* %_i3651
  br label %_cond3658
_body3657:
  store i64 0, i64* %_j3659
  br label %_cond3665
_body3664:
  %_ar3666 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3649
  %_i3667 = load i64, i64* %_i3651
  %_tmp3669 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_ar3666 to i64*
  call void @oat_assert_array_length(i64* %_tmp3669, i64 %_i3667)
  %_index_ptr3670 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_ar3666, i32 0, i32 1, i64 %_i3667
  %_index3671 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3670
  %_j3672 = load i64, i64* %_j3659
  %_tmp3674 = bitcast { i64, [0 x i64] }* %_index3671 to i64*
  call void @oat_assert_array_length(i64* %_tmp3674, i64 %_j3672)
  %_index_ptr3675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3671, i32 0, i32 1, i64 %_j3672
  %_index3676 = load i64, i64* %_index_ptr3675
  call void @print_int(i64 %_index3676)
  %_str3679 = getelementptr [2 x i8], [2 x i8]* @_str_arr3678, i32 0, i32 0
  call void @print_string(i8* %_str3679)
  %_j3681 = load i64, i64* %_j3659
  %_bop3682 = add i64 %_j3681, 1
  store i64 %_bop3682, i64* %_j3659
  br label %_cond3665
_cond3658:
  %_i3653 = load i64, i64* %_i3651
  %_n3654 = load i64, i64* %_n3646
  %_bop3655 = icmp slt i64 %_i3653, %_n3654
  br i1 %_bop3655, label %_body3657, label %_post3656
_cond3665:
  %_j3661 = load i64, i64* %_j3659
  %_bop3662 = icmp slt i64 %_j3661, 4
  br i1 %_bop3662, label %_body3664, label %_post3663
_post3656:
  ret void
_post3663:
  %_str3685 = getelementptr [2 x i8], [2 x i8]* @_str_arr3684, i32 0, i32 0
  call void @print_string(i8* %_str3685)
  %_i3687 = load i64, i64* %_i3651
  %_bop3688 = add i64 %_i3687, 1
  store i64 %_bop3688, i64* %_i3651
  br label %_cond3658
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
