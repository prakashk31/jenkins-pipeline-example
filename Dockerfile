FROM openjdk:11-jre-slim
COPY --from=build /var/lib/jenkins/workspace/demopipelinetask/my-app/target/my-app-1.0-SNAPSHOT.jar /usr/local/lib/demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]