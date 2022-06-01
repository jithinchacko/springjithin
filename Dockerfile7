FROM maven:3-jdk-8 AS stage1 
RUN git clone https://github.com/jithinchacko/spring-petclinic.git && cd spring-petclinic && mvn package 


FROM openjdk:8
COPY --from=stage1 /spring-petclinic/target/spring-petclinic-2.4.0.BUILD-SNAPSHOT.jar /spring-petclinic.jar  
EXPOSE 8080
CMD ["java", "-jar", "/spring-petclinic.jar"]
