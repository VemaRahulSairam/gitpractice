FROM ubuntu:16.04

ENV KAFKA_HOME /usr/local/kafka
ENV KAFKA_VER  kafka_2.13-3.5.1
ENV KAFKA_HEAP_OPTS -Xmx512M -Xms512M
ADD start-kafka.sh $KAFKA_HOME/

# install java + others
RUN apt-get update && apt-get install -y \
  wget \
  openjdk-8-jdk

# install kafka
RUN wget http://apache.cs.utah.edu/kafka/3.5.1/$KAFKA_VER.tgz &&  \
  mv $KAFKA_VER.tgz $KAFKA_HOME && \
  chmod 777 -R $KAFKA_HOME/. && \
  sed -i -e 's/\r$//' $KAFKA_HOME/start-kafka.sh

RUN tar -xvf $KAFKA_HOME/$KAFKA_VER.tgz -C $KAFKA_HOME

RUN chmod 777 -R $KAFKA_HOME/.

CMD $KAFKA_HOME/start-kafka.sh

#CMD ["./usr/local/kafka/start-kafka.sh"]

WORKDIR /app

# Copy the Spring Boot application JAR file into the container

COPY Kafkalogin-1-0.0.1-SNAPSHOT.jar /app
RUN chmod +x /app/Kafkalogin-1-0.0.1-SNAPSHOT.jar

# Expose the port your Spring Boot application is running on (change to the actual port number)

EXPOSE 8080

# Start the Spring Boot application

CMD ["java", "-jar", "/app/Kafkalogin-1-0.0.1-SNAPSHOT.jar"]
