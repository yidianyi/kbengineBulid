FROME yidianyi/ubuntu16.04
USER root
#RUN groupadd -r docker -g 14433 && \
#useradd -u 14431 -r -g swuser -d <homedir> -s /sbin/nologin -c "Docker image user" docker && \
#chown -R docker:docker <homedir>
RUN apt update
RUN apt install -y git 
RUN apt install -y make
RUN apt install -y libssl-dev
RUN apt install -y gcc
RUn apt install -y g++
RUN apt install -y libmysqld-dev

RUN git clone https://github.com/kbengine/kbengine.git

VOLUME ["/kbengine"]

CMD ["sh", "/build.sh"]

#USER docker
