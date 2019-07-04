FROM beyondspider/sshd:latest
MAINTAINER from www.beyondspider.com by admin (admin@beyondspider.com)

ENV JAVA_HOME /usr/local/java/jdk1.8.0_212
ENV PATH $JAVA_HOME/bin:$PATH

RUN mkdir -p /usr/local/java && \
    curl -Ls "https://download.beyondspider.com/docker/jdk-8u212-linux-x64.tar.gz" | tar -xzv -C /usr/local/java --no-same-owner

RUN echo "export $(cat /proc/1/environ |tr '\0' '\n' | xargs)" >> /etc/profile
