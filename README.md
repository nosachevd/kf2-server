
# Service for Killing Floor 2 server
### kf2-server
Custom service for RHEL(CentOS) 6, it will assist in start/stop and updating server to latest version.
Service has been tested on **Amazon Linux**.

#### Installation:

 1. Place kf2-server file into **/etc/init.d/** directory
 2. Run command as root user: **chkconfig --add kf2-server**
 3. Run command as root user: **chkconfig kf2-server on**

#### Usage:

    $ sudo service kf2-server start - To start server
    $ sudo service kf2-server restart - To restart server
    $ sudo service kf2-server stop - To stop server
    $ sudo service kf2-server status - To provide info about current state
    $ sudo service kf2-server update - To stop, update to latest version and then start server
    $ sudo service kf2-server info - To provide info about server
### device_mapper.sh
Custom script which will create LVM if needed.
#### Usage:
Run script with next positional parameters:

 - **DEVICE_NAME** - path to device(without */dev/* part)
 - **DEVICE_OWNER** - user which shoud be own mount directory
 - **VG_NAME** - name of VG
 - **MOUNT_PATH** - path to mount point
  
Example:

    ./device_mapper.sh xvdc kf2-admin kf2-server /kf2-server
