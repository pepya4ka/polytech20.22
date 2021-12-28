#ifndef COURSE_PRJ_H_
#define COURSE_PRJ_H_

	#define SET_ZERO(x) x = 0
	#define SET_ZEROS(x, y, z) SET_ZERO(x); SET_ZERO(y); SET_ZERO(z); 

	typedef  unsigned char byte;
	typedef byte image_t;
	#define N 640
	#define M 480
	#define K 3
	void gauss_blur(image_t inImage[N][M], image_t kernel[K][K], image_t outImage[N][M]);
	image_t filter(image_t kernel[K][K], image_t window[K][K]);
#endif

