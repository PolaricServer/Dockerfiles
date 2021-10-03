# Example docker setups for Polaric Server. 

Polaric Server can be run in Docker containers. Here are some suggested dockerfiles, etc. 
Feel free to test and modify. Feel free to suggest improvements to these or submit pull-requests. 

## webapp2

Basic container setup for polaric-webapp2 with Apache. Uses deb repository for installing. The most important config files can be edited and is copied into the container image during build. In addition the container can take one or three arguments to configure the backend server. See config.js SERVER, WSPREFIX and AJAXPREFIX. 


