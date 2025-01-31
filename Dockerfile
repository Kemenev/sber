FROM alpine/java:21-jdk  
ARG JAR_FILE=build/libs/demo-0.0.1-SNAPSHOT.jar  
WORKDIR /app  
COPY ${JAR_FILE} app.jar  
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"] 