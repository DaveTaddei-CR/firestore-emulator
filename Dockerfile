FROM node:17-bullseye-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
apt-get install -y --no-install-recommends \
        openjdk-11-jre

RUN npm install -g firebase-tools

WORKDIR /app

CMD [ "firebase", "--project=test-app", "emulators:start" ]
