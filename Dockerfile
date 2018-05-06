FROM openjdk:8-jre-alpine3.7

ENV CLOUDSDK_CORE_DISABLE_PROMPTS 1
ENV HOST_PORT 8042

RUN apk add --no-cache python curl bash
RUN curl https://sdk.cloud.google.com | bash
RUN /root/google-cloud-sdk/bin/gcloud components install -q pubsub-emulator beta

RUN mkdir /data

CMD /root/google-cloud-sdk/bin/gcloud beta emulators pubsub start --data-dir /data --host-port "0.0.0.0:${HOST_PORT}"

EXPOSE 8042
