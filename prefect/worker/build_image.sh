#!/bin/bash
#This script is just for test purposes. Use a container registry in real scenarios!

podman build -t test_worker .
podman save test_worker:latest | sudo k3s ctr images import -
