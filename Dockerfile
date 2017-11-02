FROM ubuntu
#VOLUME /opt/tools/jdk8.0/    /opt/java
#VOLUME /opt/tools/mvn/  /opt/mvn
ENV  PATH /opt/java/bin:$PATH
ENV  PATH /opt/mvn/bin:$PATH
RUN  source /etc/profile
RUN ls -l
RUN echo $PATH
ADD target/*.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]

