# Example docker setups for Polaric Server. 

Polaric Server can be run in Docker containers. Here are some suggested dockerfiles, etc. 
Feel free to test and modify for your own use. Feel free to suggest improvements to these examples or submit pull-requests. 

The backend (aprsd) and webapp2 are in two different containers. This is flexible, but you need to configure the containers accordingly to forward ports, etc. so that clients use the correct backend address. 

## webapp2

Basic container setup for polaric-webapp2 with Apache. Uses deb repository for installing. The most important config files can be edited and is copied into the container image during build. In addition the container can take one or three arguments to configure the use of a backend server. See config.js SERVER, WSPREFIX and AJAXPREFIX. 

For example, http://localhost:8081 will use port 8081 on localhost as the backend. 

The container will run an Apache webserver on port 80 in the container. 
http://localhost/aprs (possibly with another port number) to access the web app.

## aprsd

A very basic backend (aprsd) container. Its services will be on port 8081 in the container. 
You should configure the apsd with callsign, APRS-IS servers, etc. through the web-interface. 

The container will put app data /var/lib/polaric in a volume to allow Docker to preserve data between subsequent runs. 

## docker compose

A docker compose file has been added so it should be easier to deploy this solution. 
To build and deploy the aprsd and webapp2 container:

```sh
docker compose up
```
