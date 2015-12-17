FROM node:5.2.0-wheezy
MAINTAINER Amulya Bhatia <amulya.bhatia@t-online.de>

RUN npm install -g ember-cli@1.13.13
RUN npm install -g bower@1.7.1
RUN npm install -g phantomjs@1.9.19

RUN useradd -ms /bin/bash ember && \
    chown -R ember:ember /home/ember && \
    mkdir -p /home/ember/myapp

USER ember
ENV HOME /home/ember

WORKDIR /home/ember/myapp

EXPOSE 4200 35729

ENTRYPOINT ["/usr/local/bin/ember"]
CMD ["server"]
