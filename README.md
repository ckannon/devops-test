# devops-test
A small sample spring-boot repo with to test Dev Ops Candidates


Update the file ./Dockerfile to be a "multi-stage" build that performs the following steps:

- build the java application (use maven)

- copy the resulting DevopsTest.jar file (from the target directory) into the docker container

- copy the start.sh script into the docker container

- by open port 8080 on the docker container so you can access the running application

- have the docker container start the 'start.sh' script by default when it runs

- open a pull request to this repository with the required changes to ./Dockerfile

The application will open port 8080 to HTTP traffic - test to make sure it works locally in your docker by going to http://localhost:8080/ (or whatever local port you map)

