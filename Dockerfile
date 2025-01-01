

FROM openjdk:17-jdk-slim

WORKDIR /app

COPY ./E-Commerce-Backend/mvnw .
COPY ./E-Commerce-Backend/.mvn ./.mvn
COPY ./E-Commerce-Backend/pom.xml .
COPY ./E-Commerce-Backend/src ./src

# Build the application using the Maven wrapper
RUN ./mvnw clean package -DskipTests

EXPOSE 8009

CMD ["java", "-jar", "/app/target/E-Commerce-Backend-0.0.1-SNAPSHOT.jar"]
