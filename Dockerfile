FROM ubuntu
MAINTAINER Tobias Overkamp <tov@nrw.net>
#RUN apt-get update && apt-get upgrade
RUN apt-get install ruby git

RUN git clone https://github.com/fenton42/docker-sinatra-hello-world
ADD . /opt/sinatra
RUN gem install bundler
EXPOSE 80
RUN cd /opt/sinatra && git pull && bundle install
CMD ["/usr/local/bin/foreman","start","-d","/opt/sinatra"]

