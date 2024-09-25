.PHONY: build
build:
	podman build -t go-test .

.PHONY: run
run:
	podman run -p 3000:3000  go-test:latest

.PHONY: shell
shell:
	podman run -ti --entrypoint=/bin/sh go-test:latest

.PHONY: brun
brun: build run
