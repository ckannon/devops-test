FROM maven:3.5-jdk-8 as BUILD
COPY src /usr/src/DevopsTest/src
COPY pom.xml /usr/src/DevopsTest
RUN mvn -f /usr/src/DevopsTest/pom.xml clean package

FROM openjdk:8-jre
WORKDIR /root/
COPY --from=BUILD /usr/src/DevopsTest/target/DevopsTest.jar .
COPY start.sh .
EXPOSE 8080
#CMD ["java","-jar","DevopsTest.jar"]
ENTRYPOINT ["/root/start.sh"]
