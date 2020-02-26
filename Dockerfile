FROM openjdk:8
VOLUME /tmp
ADD ./target/servicio-producto.jar servicio-producto-image.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=dev","-Dspring.cloud.config.uri=http://config-server:8888","/servicio-producto-image.jar"]