

FROM openjdk:17-jdk-slim

WORKDIR /app

COPY ./mvnw .
COPY ./.mvn ./.mvn
COPY ./pom.xml .

COPY ./src ./src

# Build the application using the Maven wrapper
RUN ./mvnw clean package -DskipTests

EXPOSE 8009

CMD ["java", "-jar", "/app/target/E-Commerce-Backend-0.0.1-SNAPSHOT.jar"]
