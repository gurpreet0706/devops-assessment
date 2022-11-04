FROM openjdk:8
ADD my-app/target/my-app-0.0.1-SNAPSHOT.jar my-app-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar","my-app-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080
