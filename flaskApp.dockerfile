#Download base image ubuntu 18.04

FROM ubuntu:18.04

MAINTANER Justin Hagerty "Justinshagerty@gmail.com"

RUN apt-get update

RUN apt-get install apache2

RUN apt-get install python3

RUN apt-get install libapache2-mod-wsgi python-dev

RUN a2enmod wsgi

RUN cd /var/www 
 
RUN mkdir FlaskApp

RUN cd FlaskApp

RUN mkdir FlaskApp

RUN cd FlaskApp

RUN mkdir static templates

RUN apt-get install git

RUN git clone https://github.com/wheelsmanx/firstFlaskDeployment

RUN apt-get install python-pip

RUN  pip install virtualenv 

RUN virtualenv flaskEnv

RUN source venv/bin/activate 

RUN pip install Flask

RUN deactivate

RUN cp ./flaskApp.conf /etc/apache2/sites-available/FlaskApp.conf

RUN a2ensite FlaskApp

RUN cp ./flaskApp.wsgi ../flaskApp.wsgi

RUN a2dissite 000-default

RUN service apache2 restart 



