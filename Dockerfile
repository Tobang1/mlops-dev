FROM alpine:latest
#update and upgrade the image
RUN apk update
RUN apk upgrade

# Install java
RUN apk add openjdk17

# Install Python
RUN apk add python3

#Test the pip3 is installed
RUN python3 --version

#Testthe javac is installed
RUN java --version
RUN javac --version

WORKDIR /app

COPY . /app

RUN java hello-world.java
RUN  echo "docker build suceessfully"
# CMD [ "java", "sample"]



