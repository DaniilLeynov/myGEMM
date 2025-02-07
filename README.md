clGEMM
=============

This repo contains some files for YADRO 2025 Winter School.

Для сбора данных можно использовать pull_data.py. Он перенаправляет все аргументы для сборки в make.

	python3 pull_data.py <параметры>

Например,

	python3 pull_data.py ENABLE_CUDA=0


ENABLE_CUDA=0 нужно если собираем без CUDA, по умолчанию ENABLE_CUDA=1.

Скрипт будет последовательно выводить результаты экспериментов в формате CSV, но без заголовка. Сам же заголовок такой:

	backend,selected_kernel,work_group_size,cl_compiler_options,matrix_dimensions,elapsed_s


Чтобы записать данные в .csv файл, можно вывод перенаправить в, собственно, .csv файл.

	python3 pull_data.py ENABLE_CUDA=0 > out.csv


Для выбора ядер и work group size нужно изменить соответствующие переменные в pull_data.py (~70 строчка).

Небольшие заметка по поводу выбора параметров: похоже, что на большинстве устройств ядра 1-2 не работают с wgs 32, только с 16. Так же ядра > 3 могут не работать с маленьким wgs < 8.






<h1>Результаты тестов для GPU PowerVR B-Series BXE-4-32 на Плате StarFive </h1>

![image](https://github.com/user-attachments/assets/49c01e38-2cef-4229-b821-ccfb74c1fe63)

![image](https://github.com/user-attachments/assets/8556d79b-951a-401b-bdee-4acf6a8392a5)

![image](https://github.com/user-attachments/assets/b7309b6c-8cc7-413b-8971-72decf4f1bff)

![image](https://github.com/user-attachments/assets/96985a66-569b-4820-bc0b-374188fda10d)

![image](https://github.com/user-attachments/assets/8ea088ad-ecd5-4681-9766-54b3019e4d0d)

![image](https://github.com/user-attachments/assets/1fa67133-375e-43d1-9335-ed6ce93c4a59)


<h1>Результаты тестов для GPU PowerVR B-Series BXE-2-32 на Плате BananaPi </h1>

![image](https://github.com/user-attachments/assets/9dff69c3-746d-4e2e-90fc-3c968adadac1)

![image](https://github.com/user-attachments/assets/ba1fbafa-fcba-4829-97f4-cfee1fb1770f)








