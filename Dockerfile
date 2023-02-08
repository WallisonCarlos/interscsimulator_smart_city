FROM erlang:20

RUN ls

RUN apt update && apt install -y \
  make \
  uuid-runtime

RUN apt-get update && \
    apt-get install -y default-jre && \
    apt-get install -y openjdk-11-jdk && \
    apt-get update && \
    apt-get -y install openssh-server

RUN hostname

RUN cat /etc/hosts

RUN apt-get -y install gcc

RUN apt-get install -y htop

RUN apt-get install -y nano

RUN apt-get install -y tmux

ADD . /src

RUN cd /src && make all

RUN cd /src/erlsom && make all

RUN cd /src/mock-simulators/smart_city_model/src && make all

CMD [ "make", "smart_city_run", "CMD_LINE_OPT='--batch'" ]