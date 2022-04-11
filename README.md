<h1><b>Application CounterWebapp</b></h1>

<h2>We can use the Docker to deploy the application</h2>

The repository considts of the Dockerfile which contains commands to build the image and deploy the docker container.

<b>Steps</b>: 
  1) docker pull ubuntu:18.04
  2) docker build . -t app
  3) docker run -itd -p 80:8080 app
  4) Visit the browser where the appliocation is running at port 80
<b>    
 http://PublicIP:8080/CounterWebApp/
</b>
  


<h2>We can deploy the applcation with maven installed on the machine</h2>

<b>maven commands </b>:  mvn clean install tomcat7:run

this command will create an artifact and also deploy with tomcat, The pom.xml contains the tomcat plugins which is configured to port <b>9090</b>.
<b>
 http://PublicIP:9090/CounterWebApp/
</b>
