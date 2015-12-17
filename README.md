# Docker-ember
Docker with ember setup

Node version: 5.2.0  
Ember-cli: 1.13.13  
Bower: 1.7.1  
Phantomjs: 1.9.19

Default command: ember server

## Build Docker Image
docker build -t <Imagename:Tag> .

## Use it with Docker-Compose
For Example: In docker-compose.yml

ember:  
&nbsp;&nbsp;&nbsp;&nbsp;image: <Imagename:Tag>  
&nbsp;&nbsp;&nbsp;&nbsp;volumes:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- .:/home/ember/myapp  
  
npm:  
&nbsp;&nbsp;&nbsp;&nbsp;entrypoint: ['/usr/local/bin/npm']  
  
bower:  
&nbsp;&nbsp;&nbsp;&nbsp;entrypoint: ['/usr/local/bin/bower']  
  
server:  
&nbsp;&nbsp;&nbsp;&nbsp;command: server  
&nbsp;&nbsp;&nbsp;&nbsp;ports:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- "4200:4200"  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- "35729:35729"  

##Run with Docker-Compose
 Ember : docker-compose run --rm -d ember --version  
 Npm : docker-compose run --rm -d npm --version  
 Bower : docker-compose run --rm -d bower --version   
  
 You can also write bash scripts to run the tools, so that you don't have to write "docker-compose run --rm -d" all the time
