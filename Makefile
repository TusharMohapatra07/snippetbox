.DEFAULT_GOAL := run
.PHONY : run build vet fmt execute
fmt: 
	go fmt ./...
vet: fmt
	go vet ./...
run: vet
	go run .
build: vet
	go build -o build/app
execute: build
	./build/app