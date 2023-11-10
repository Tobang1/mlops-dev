FROM alpine:latest
#update and upgrade the image
RUN apk update
RUN apk upgrade

# Install java and all dependencies
RUN apk add openjdk17

#Testthe javac is installed
RUN java --version
RUN javac --version

WORKDIR /app

COPY hello-world.java /app

RUN java hello-world.java
RUN  echo "docker build suceessfully"
# CMD [ "java", "sample"]



