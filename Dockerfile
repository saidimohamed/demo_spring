FROM ubuntu:16.04

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install default-jdk tree tar git wget maven -y

RUN mvn --version

EXPOSE 8080


#RUN cd /home/ && git clone https://github.com/saidimohamed/shopizer.git

RUN mkdir /home/test_spring/


COPY . /home/test_spring/

RUN chmod 777 /home/test_spring/start.sh


# Start Shopizer
CMD /home/test_spring/start.sh
