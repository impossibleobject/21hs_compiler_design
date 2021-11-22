; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc832 = alloca i64
  store i64 %argc, i64* %_argc832
  %_argv833 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv833
  %_raw_array834 = call i64* @oat_alloc_array(i64 3)
  %_array835 = bitcast i64* %_raw_array834 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array854 = call i64* @oat_alloc_array(i64 2)
  %_array855 = bitcast i64* %_raw_array854 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array860 = call i64* @oat_alloc_array(i64 2)
  %_array861 = bitcast i64* %_raw_array860 to { i64, [0 x i64] }*
  %_CArr_elem_1863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array861, i32 0, i32 1, i32 1
  store i64 40, i64* %_CArr_elem_1863
  %_CArr_elem_0862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array861, i32 0, i32 1, i32 0
  store i64 30, i64* %_CArr_elem_0862
  %_CArr_elem_1865 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array855, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array861, { i64, [0 x i64] }** %_CArr_elem_1865
  %_raw_array856 = call i64* @oat_alloc_array(i64 2)
  %_array857 = bitcast i64* %_raw_array856 to { i64, [0 x i64] }*
  %_CArr_elem_1859 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array857, i32 0, i32 1, i32 1
  store i64 20, i64* %_CArr_elem_1859
  %_CArr_elem_0858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array857, i32 0, i32 1, i32 0
  store i64 10, i64* %_CArr_elem_0858
  %_CArr_elem_0864 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array855, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array857, { i64, [0 x i64] }** %_CArr_elem_0864
  %_CArr_elem_2868 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array835, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array855, { i64, [0 x { i64, [0 x i64] }*] }** %_CArr_elem_2868
  %_raw_array848 = call i64* @oat_alloc_array(i64 1)
  %_array849 = bitcast i64* %_raw_array848 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array850 = call i64* @oat_alloc_array(i64 1)
  %_array851 = bitcast i64* %_raw_array850 to { i64, [0 x i64] }*
  %_CArr_elem_0852 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array851, i32 0, i32 1, i32 0
  store i64 5, i64* %_CArr_elem_0852
  %_CArr_elem_0853 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array849, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array851, { i64, [0 x i64] }** %_CArr_elem_0853
  %_CArr_elem_1867 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array835, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array849, { i64, [0 x { i64, [0 x i64] }*] }** %_CArr_elem_1867
  %_raw_array836 = call i64* @oat_alloc_array(i64 2)
  %_array837 = bitcast i64* %_raw_array836 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array842 = call i64* @oat_alloc_array(i64 2)
  %_array843 = bitcast i64* %_raw_array842 to { i64, [0 x i64] }*
  %_CArr_elem_1845 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array843, i32 0, i32 1, i32 1
  store i64 4, i64* %_CArr_elem_1845
  %_CArr_elem_0844 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array843, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_0844
  %_CArr_elem_1847 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array837, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array843, { i64, [0 x i64] }** %_CArr_elem_1847
  %_raw_array838 = call i64* @oat_alloc_array(i64 2)
  %_array839 = bitcast i64* %_raw_array838 to { i64, [0 x i64] }*
  %_CArr_elem_1841 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array839, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1841
  %_CArr_elem_0840 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array839, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0840
  %_CArr_elem_0846 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array837, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array839, { i64, [0 x i64] }** %_CArr_elem_0846
  %_CArr_elem_0866 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array835, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array837, { i64, [0 x { i64, [0 x i64] }*] }** %_CArr_elem_0866
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array835, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_id869 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_index_ptr870 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_id869, i32 0, i32 1, i32 2
  %_idx_tmp871 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_index_ptr870
  %_index_ptr872 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_idx_tmp871, i32 0, i32 1, i32 0
  %_idx_tmp873 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr872
  %_index_ptr874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp873, i32 0, i32 1, i32 1
  %_idx_tmp875 = load i64, i64* %_index_ptr874
  ret i64 %_idx_tmp875
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
