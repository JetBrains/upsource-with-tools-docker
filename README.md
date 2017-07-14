# Upsource with tools

This project contains a sample Dockerfile that declares an extended Upsource docker image with additional tools used for source code processing.

It is inherited from [jetbrains/upsource](https://hub.docker.com/r/jetbrains/upsource/) and contains the following tools:
- Node.js (latest LTS v6.x), 
- Yarn (latest stable)
- PHP (latest stable)
- Python 2.7.9 (part of the `openjdk:8` base image) 
- Python 3 (latest stable) with pip
- Android SDK Tools 25.2.5 + SDK platform 26 +  SDK build tools 26

For building the image you need to perform the following:

1. Choose [version](https://hub.docker.com/r/jetbrains/upsource/tags/) of base `jetbrains/upsource`
(referred to as `<version>` below)

2. `docker pull jetbrains/upsource:<version>`

3. Replace `@VERSION@` in Dockerfile with the `<version>` of [jetbrains/upsource](https://hub.docker.com/r/jetbrains/upsource/) base image you have chosen.

4. If Android projects will be added to your Upsource instance:
   - Copy under android-licenses folder all the files from $ANDROID_HOME/licenses folder located on your developer machine.
   - Add installation lines in Dockerfile for every Android SDK platform and build tools supported in you projects.
   OR remove all Android related lines from Dockerfile if your projects have nothing to do with Android.

5. Run the docker build command:
`docker build -t upsource-with-tools:<version>`
