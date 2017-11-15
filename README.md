# Jenkins With Docker Example
An Jenkins setup with Docker to create DSL and Pipeline jobs

## Getting Started

### Create Docker Image

Create an image from Dockerfile. This Dockerfile will already update the OS and drop the image as a **jenkins** user

```
docker build -t jenkins-ci-docker .
```

### Run the image

Here we're associating the volume **/var/jenkins_home** inside the container with my current working directory (**${PWD})**

```
docker run -p 8080:8080 -p 50000:50000 -v ${PWD}/jenkins_home:/var/jenkins_home --name jenkins-ci -d jenkins-ci-docker
```

### Jenkins initial settings

By now, you should be able to open *http://localhost:8080/* and configure your Jenkins with default plugins