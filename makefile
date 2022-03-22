MCML_GPU: main.obj io.obj fiber.obj transport.obj header.h
	nvcc main.obj io.obj fiber.obj transport.obj -o MCML_GPU
io.obj:
	nvcc -c -std=c++11 io.cpp io.obj
%.obj: %.cu header.h
	nvcc -c -std=c++11  $<
clean:
	rm -rf main.obj io.obj fiber.obj transport.obj MCML_GPU

