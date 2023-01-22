.PHONY: build layer clean
.DEFAULT: all

all: build layer clean

build:
	docker build -t lambda-layer .

layer:
	docker create --name dummy lambda-layer
	docker cp dummy:/app/python-layer.zip python-layer.zip
	docker rm -f dummy

clean:
	docker rmi lambda-layer

