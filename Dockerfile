FROM openjdk:17-jdk-slim-buster
RUN gradle clean build
WORKDIR /app
COPY build/libs/io.github.flaviolionelrita.lambdaorm-client-kotlin-lab.jar .
CMD ["java", "-jar", "io.github.flaviolionelrita.lambdaorm-client-kotlin-lab.jar"]