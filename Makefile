
SHA=$(shell git rev-parse --short HEAD)
DIRTY=$(shell git diff --quiet || echo '-dirty')

build: 
	docker build . -t qiskit-demo:${SHA}${DIRTY}

run:
	docker run --rm -ti -p 8888:8888 qiskit-demo:${SHA}${DIRTY}

.PHONY: build run
