FROM openjdk:8
LABEL Author="Jithin"
ARG ftpserver=https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar
ENV locallocation='/spring-petclinic-2.4.2.jar' 
ENV javapath='/usr/local/openjdk-8/bin/'  
ADD  ${ftpserver} ${locallocation}
EXPOSE 8080
WORKDIR ${javapath}
CMD [ "java" , "-jar", "/spring-petclinic-2.4.2.jar" ]
