git clone https://github.com/pbuckley/containers-on-k8s.git

cd containers-on-k8s/ko/sample-go/

KO_DOCKER_REPO=ghcr.io/superorbital/my-app ko build --bare hello.go
