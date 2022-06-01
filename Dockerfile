FROM maven:3-jdk-8 AS stage1 
RUN git clone https://github.com/jithinchacko/game-of-life.git && cd game-of-life && mvn package 

FROM tomcat:8 
COPY --from=stage1 /game-of-life/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war 
EXPOSE 8080
