FROM openjdk:8-jdk
LABEL Author="Jithin"
ARG ftpserver=https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar
ENV locallocation=/spring-petclinic-2.4.2.jar
EXPOSE 8080
CMD ["java", "-jar", ${locallocation} ]
