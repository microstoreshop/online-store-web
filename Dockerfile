FROM ibmjava:8-sfj
MAINTAINER IBM Java engineering at IBM Cloud

COPY target/online-store-web-0.0.1-SNAPSHOT.jar /app.jar

ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
