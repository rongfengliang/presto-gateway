FROM azul/zulu-openjdk-alpine:8u222
LABEL AUTHOR="dalongrong"
LABEL EMAIL="1141591465@qq.com"
LABEL VERSION="1.6.1"
WORKDIR /
COPY gateway/target/gateway-1.6.1-jar-with-dependencies.jar /gateway.jar
COPY config.yml.template /config.yml.template
COPY entrtypoint.sh /entrtypoint.sh
RUN chmod +x /entrtypoint.sh
EXPOSE 8888 
ENTRYPOINT [ "/entrtypoint.sh"]