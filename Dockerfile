FROM openjdk:8-jdk
LABEL Author="Jithin"
ARG ftpserver=https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar
ENV locallocation=/spring-petclinic-2.4.2.jar
ADD  ${ftpserver} ${locallocation}
EXPOSE 8080
CMD ["/usr/local/openjdk-8/bin/java", "-jar", ${locallocation} ]
