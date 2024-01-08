k create secret generic dockerconfigjson --from-file=/tmp/config.json -o yaml --dry-run=client | kubectl apply -f -
k create -f builder-pod.yml

## exec into pod

git clone https://github.com/GoogleCloudPlatform/buildpack-samples.git

cd buildpack-samples/sample-go

CNB_PLATFORM_API=0.12 /cnb/lifecycle/creator -app $(pwd) -run-image gcr.io/buildpacks/google-22/run ghcr.io/superorbital/cnb-example-go:latest


