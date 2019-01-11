FROM ubuntu
RUN apt-get update
RUN apt-get install git -y
RUN mkdir /git
WORKDIR /git
COPY ./cmd.sh /task/cmd.sh
RUN chmod 777 /task/cmd.sh
RUN users
CMD /task/cmd.sh
ENTRYPOINT /bin/sh
