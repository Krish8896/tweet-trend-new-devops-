FROM openjdk:17
ADD /jarstaging/com/valaxy/demo-workshop/2.1.3/demo-workshop-2.1.3.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
