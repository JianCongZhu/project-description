# PASCAL GT1080 and Volta
CUDA_ARCH=-gencode arch=compute_61,code=sm_61 -gencode arch=compute_70,code=sm_70 -gencode arch=compute_80,code=sm_80 

CC = /usr/local/cuda-11.0/bin/nvcc -ccbin g++
CFLAGS = -m64 ${CUDA_ARCH}

SRCS = 3D.cu 

OBJS = 3D.o 
TARGET = 3D

all: $(TARGET)

$(TARGET): $(OBJS)
	/usr/local/cuda-11.0/bin/nvcc -ccbin g++ -m64 ${CUDA_ARCH} -o 3D 3D.o libwb/libwb.so -std=c++11

%.o: %.cu my_timer.h
	/usr/local/cuda-11.0/bin/nvcc -ccbin g++ -m64 ${CUDA_ARCH} -o imgBlur.o -c imgBlur.cu -std=c++11

clean:
	rm -f $(OBJS) $(TARGET)

#test input image size: 3840 x 2160
run: imgBlur
	./imgBlur -e golden_output.ppm -i input.ppm -o output.ppm -t image

clean:
	rm -rf *.o imgBlur output.ppm *~
