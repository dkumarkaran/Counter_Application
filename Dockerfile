FROM ubuntu:18.04 as maven_builder
RUN apt update
RUN apt-get install openjdk-11-jdk -y
RUN apt-get install maven -y
RUN JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
RUN apt install git -y
RUN git clone https://github.com/dkumarkaran/Counter_Application.git
RUN cd Counter_Application && mvn clean install




FROM tomcat:8.0-alpine

COPY --from=maven_builder Counter_Application/target/CounterWebApp.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
