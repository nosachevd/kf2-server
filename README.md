# kf2-server
Service for Killing Floor 2 server
kf2-server - Start/Stop the Killing Floor 2 server.

Custom service for UNIX based KF2 server, it will assist in start/stop and updating server to latest version.

Service has been tested on Amazon Linux.

Installation:
1.Place kf2-server file into /etc/init.d/ directory
2.Run command as root user: chkconfig --add kf2-server
3.Run command as root user: chkconfig kf2-server on

Usage:
$ sudo service kf2-server start   - Will start server
$ sudo service kf2-server restart - Will restart server
$ sudo service kf2-server stop    - Will stop server
$ sudo service kf2-server status  - Will provide info about state
$ sudo service kf2-server update  - Will stop, update to latest version and then start server
$ sudo service kf2-server info    - Will provide info about server 
