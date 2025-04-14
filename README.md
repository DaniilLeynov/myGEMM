clGEMM
=============
Comparison of GPU performance on different devices (StarFive Board and BananaPi Board) using various OpenCL kernel parameters.
This repo contains some files for YADRO 2025 Winter School.

To collect data, you can use pull_data.py. It forwards all build arguments to make.
	python3 pull_data.py <parameters>
 
For example:

	python3 pull_data.py ENABLE_CUDA=0


ENABLE_CUDA=0 is required if building without CUDA (default is ENABLE_CUDA=1).

The script will sequentially output experiment results in CSV format without a header. The header is as follows:

	backend,selected_kernel,work_group_size,cl_compiler_options,matrix_dimensions,elapsed_s


To save the data to a .csv file, redirect the output:

	python3 pull_data.py ENABLE_CUDA=0 > out.csv


To select kernels and work group sizes, modify the corresponding variables in pull_data.py (around line 70).

A small note on parameter selection: it appears that on most devices, kernels 1-2 do not work with wgs=32, only with wgs=16. Additionally, kernels > 3 may not work with small wgs < 8.

To automatically run the script 20 times for efficient data collection, use the script.sh script. There is no need to run the make file separately, as it will be executed automatically.

<h1>Comparison of Benchmark Results: IMG BXE-4-32 GPU (StarFive Board) vs. IMG BXE-2-32 GPU (BananaPi Board)</h1>

![image](https://github.com/user-attachments/assets/7220de25-1207-451b-8bc7-075afc713e1d)

![image](https://github.com/user-attachments/assets/cd00d2bd-1fe8-462a-b4ad-ba5217638205)








