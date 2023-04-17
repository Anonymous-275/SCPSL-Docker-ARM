# SCPSL-Docker-ARM

Docker file to build an image with steamcmd, box64, box86, and SCP secret laboratory server for ARM

image uses Weilbyte/box [here](https://github.com/Weilbyte/box)  as base, then installs steamcmd with the SCP Secret Laboratory server and exposes default port of 7777

The custom init.sh script launches the server

### Build

`sudo docker build --no-cache -f Dockerfile  -t scpsl-arm .`

then you should have an image with the tag scpsl-arm! Enjoy.
