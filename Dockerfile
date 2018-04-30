FROM ubuntu:16.04

RUN add-apt-repository ppa:webupd8team/java -y

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install oracle-java8-installer -y

RUN apt-get install  tree tar git wget maven -y

RUN mvn --version && java -version

EXPOSE 8080


#RUN cd /home/ && git clone https://github.com/saidimohamed/shopizer.git

RUN mkdir /home/test_spring/


COPY . /home/test_spring/

RUN chmod 777 /home/test_spring/start.sh


# Start Shopizer
CMD /home/test_spring/start.sh
