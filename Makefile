BINARY_NAME = app
BINARY_DIR = bin
MAIN_PACKAGE = ./cmd/web
ADDRESS = :4040

.PHONY : default build fmt run 

default : run

fmt: 
	@go fmt ./...

build: fmt
	@go build -o $(BINARY_DIR)/$(BINARY_NAME) $(MAIN_PACKAGE)

run: build
	@$(BINARY_DIR)/$(BINARY_NAME) -addr=$(ADDRESS)