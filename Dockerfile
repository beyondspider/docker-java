FROM beyondspider/sshd:latest
MAINTAINER from www.beyondspider.com by admin (admin@beyondspider.com)

ADD https://download.beyondspider.com/docker/jdk-8u212-linux-x64.tar.gz /tmp/jdk-8u212-linux-x64.tar.gz
RUN mkdir -p /usr/local/java && \
    tar -xzvf /tmp/jdk-8u212-linux-x64.tar.gz -C /usr/local/java && \
    rm -rf /tmp/jdk-8u212-linux-x64.tar.gz

ENV JAVA_HOME /usr/local/java/jdk1.8.0_212
ENV PATH $JAVA_HOME/bin:$PATH
RUN echo "export $(cat /proc/1/environ |tr '\0' '\n' | xargs)" >> /etc/profile
