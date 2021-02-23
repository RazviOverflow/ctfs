FROM maven:3-jdk-11
COPY . /usr/src/
WORKDIR /usr/src/
RUN mvn clean package
CMD ["java", "-jar", "target/directory-1.0.jar"]