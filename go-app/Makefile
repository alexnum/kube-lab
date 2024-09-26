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

.PHONY: send2k3s
send2k3s:
	podman save go-test:latest | sudo k3s ctr images import -
