 COMPOSE_JAR_NAME=docker-compose-executor-0.0.1-SNAPSHOT-jar-with-dependencies.jar
  COMPOSE_CLASS_NAME=com.paypal.mesos.executor.App
  java -cp ${COMPOSE_JAR_NAME} ${COMPOSE_CLASS_NAME}
