## gcloud-pubsub-emulator-docker
PubSub emulator for Google Cloud

# Supported tags and respective `Dockerfile` links

-	[`198.0.0`, `198.0`, `198`, `latest` (*Dockerfile*)](https://github.com/SweetIQ/gcloud-pubsub-emulator-docker/blob/master/Dockerfile)

# How to use this image
Ensure that the environment variable `PUBSUB_EMULATOR_HOST` where you are connecting to pub sub is set to the address of the emulator, and that PUBSUB_PROJECT_ID is set.
e.g.
```bash
export PUBSUB_EMULATOR_HOST=localhost:8085
export PUBSUB_PROJECT_ID=pubsub-demo
docker run -p 8085:8085 gcloud-pubsub-emulator-docker
```

Then you may connect to the emulator using one of the client libraries as if you were connecting to the actual service.
