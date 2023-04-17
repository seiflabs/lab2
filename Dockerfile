FROM openjdk:11
WORKDIR /usr/src/app
COPY . .
EXPOSE 8081
CMD [ "java", "-jar", "target/login-1.0-SNAPSHOT.jar" ]

