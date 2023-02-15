FROM adoptopenjdk/openjdk11:latest
VOLUME /temp
COPY apiEncrypKey.jks /apiEncrypKey.jks
COPY target/ServiceRegstory-0.0.1-SNAPSHOT.jar ConfigServer.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "ConfigServer.jar"]