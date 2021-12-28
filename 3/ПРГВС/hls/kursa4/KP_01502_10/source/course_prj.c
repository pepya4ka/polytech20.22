#include <stdio.h>
#include "course_prj.h"

/**
 * Функция filter - выполняет операцию свертки над двумя массивами
 * Аргументы: kernel - ядро свертки размером KxK, содержит коэффициенты
 * 			  window - окно изображения размером KxK, содержит элементы части изображения
 * Возвращает результат операции свертки - скаляр типа image_t
 */
image_t filter(image_t kernel[K][K], image_t window[K][K]) {

	int result = 0; // переменная - результат операции свертки

	row_loop: for (int i = 0; i < K; i++) {
		col_loop: for (int j = 0; j < K; j++) {
			result = result + window[i][j] * kernel[i][j];
		}
	}
	
	// делим на 16, так как в ядре Гаусса хранится только числитель
	return (result / 16);
}

/**
 * Функция gauss_blur - выполняет фильтрацию изображения заданным ядром и записывает
 * 						результат в выходной массив
 * Аргументы: kernel - ядро свертки размером KxK, содержит коэффициенты
 * 			  inImage - изображение размером NxM, содержит значения интенсивности входного изображения
 * 			  outImage - изображение размером NxM, содержит значения интенсивности выходного изображения
 */
void gauss_blur(image_t inImage[N][M], image_t gauss_kernel[K][K], image_t outImage[N][M])
{

	image_t window[K][K];
	image_t kernel[K][K];

	// сохраняем ядро в локальное хранилище
	for (int i = 0; i < K; i++) {
		for (int j = 0; j < K; j++) {
			kernel[i][j] = gauss_kernel[i][j];
		}
	}

	image_t part_buffer[2][M];
 // промежуточный буфер для сохранения данных локально
	L2: for(int row = 0; row < N + 1; row++) {
		L1: for(int col = 0; col < M + 1; col++) {
			image_t pixel = 0;

			if(row < N && col < M) {
				pixel = inImage[row][col];
			}

			// сдвигающее окно - считываем предыдущие данные, без считывания из входного массива
			for(int i = 0; i < 3; i++) {
				window[i][0] = window[i][1];
				window[i][1] = window[i][2];
			}

			// считываем предыдущие данные из локального буфера, без считывания из входного массива
			if(col < M) {
				window[0][2] = part_buffer[0][col];
				window[1][2] = part_buffer[0][col] = part_buffer[1][col];
				window[2][2] = part_buffer[1][col] = pixel;
			}
			
			// проверка границ изображения
			if(row >= 1 && col >= 1) {
				int outrow = row - 1;
				int outcol = col - 1;
				// если на границе изображения, то результат равен нулю, иначе выполняем свертку
				// и записываем в выходной массив
				if(outrow == 0 || outcol == 0 || outrow == (N-1) || outcol == (M-1)) {
					outImage[outrow][outcol] = 0;
				} else {
					outImage[outrow][outcol] = filter(kernel, window);
				}
			}

		}
	}
	
}
