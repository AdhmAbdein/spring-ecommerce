FROM openjdk:17-jdk-slim

WORKDIR /app

COPY ./E-Commerce-Backend /app

EXPOSE 8009

CMD ["java", "-jar", "/app/E-Commerce-Backend/.mvn/wrappe/mraven-wrapper.jar"]

