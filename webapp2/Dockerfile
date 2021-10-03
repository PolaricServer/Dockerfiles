FROM debian

RUN apt-get update && apt-get install -y apt-utils ca-certificates

RUN apt-get update && apt-get install -y gnupg2 dirmngr wget virt-what 

RUN echo "deb http://aprs.no/debian-rep binary-dev/" >> /etc/apt/sources.list
    
RUN wget http://keys.openpgp.org//vks/v1/by-keyid/89E7229CFFD59B2F

RUN gpg --recv-keys 89E7229CFFD59B2F && \
    gpg --export --armor 3E61003E24632585EB3DFE3D89E7229CFFD59B2F | apt-key add -

ARG DOCKER_BUILD=true
RUN apt-get update && apt-get install -y --no-install-recommends polaric-webapp2

COPY ./startup.sh / 
COPY ./config.js /etc/polaric-webapp2
COPY ./mapcache.xml /etc/polaric-wepapp2
COPY ./aprs.conf /etc/apache2/sites-available

EXPOSE 80
    
VOLUME ["/var/lib/polaric", "/var/log/apache2"]

ENTRYPOINT ["/startup.sh"]
