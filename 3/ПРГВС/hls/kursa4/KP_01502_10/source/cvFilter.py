import numpy as np
import cv2

N = 640
M = 480
ddepth = -1
kernel = np.array([[1/16., 1/8., 1/16.], 
                    [1/8., 1/4., 1/8.],
                    [1/16., 1/8., 1/16.]])

def Filter(value):
    img = np.zeros((N, M), dtype=np.uint8)

    for i in range(N):
        for j in range(M):
            img[i][j] = value

    res = cv2.filter2D(src=img, ddepth=ddepth, kernel=kernel)
    
    for i in range(N):
        for j in range(M):
            if (i == 0 or j == 0 or i == (N-1) or j == (M-1)):
                res[i][j] = 0

    return np.uint8(res)


if __name__ == '__main__':
    setup_value = 16
    res = Filter(setup_value)
    with open('test{}_{}.txt'.format(N, setup_value), 'wb') as f:
        np.savetxt(f, res, fmt='%d')
    pass
