FROM node:5.2.0-wheezy
MAINTAINER Amulya Bhatia <amulya.bhatia@t-online.de>

# Install the required versions for ember, bower and phantomjs
RUN npm install -g ember-cli@1.13.13
RUN npm install -g bower@1.7.1
RUN npm install -g phantomjs@1.9.19

# Add the user 'ember' in the system and 
# create a directory(myapp) for code mounting in the home directory
RUN useradd -ms /bin/bash ember && \
    chown -R ember:ember /home/ember && \
    mkdir -p /home/ember/myapp

#Set 'ember' as the user for this image
USER ember
ENV HOME /home/ember

# Set myapp as the working directory
WORKDIR /home/ember/myapp

# Expose the ports for ember
EXPOSE 4200 35729

# Ember as the entry point
ENTRYPOINT ["/usr/local/bin/ember"]
CMD ["server"]
