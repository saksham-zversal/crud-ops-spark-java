FROM gradle:8.5.0-jdk11 AS build
COPY . /src
WORKDIR /src
RUN gradle fatJar
FROM openjdk:11-jre-slim
EXPOSE 4567:4567
RUN mkdir /app
COPY --from=build /src/app/build/libs/app.jar /app/app.jar
ENTRYPOINT ["java","-jar","/app/app.jar"]
