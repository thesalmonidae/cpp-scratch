.DEFAULT_GOAL := help

.PHONY: help

help:
	@grep -E '^[a-zA-Z\/_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n\n", $$1, $$2}'

build/binary: ## Build static standalone binary from C++ code
	g++ -static hello.cpp -o hello

build/docker: ## Build Docker image from scratch
	docker build . -t cpp-scratch:latest

run/docker: ## Run C++ executable
	docker run -it --rm cpp-scratch:latest
