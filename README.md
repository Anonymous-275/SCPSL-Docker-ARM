# SCPSL-Docker-ARM
Docker file to build an image with steamcmd, box64, box86, and SCP secret laboratory server for ARM

image uses https://github.com/Weilbyte/box as base, then installs steamcmd with the app and exposes default port
there is a custom init script that then launches the server

to build simply run

sudo docker build --no-cache -f SCPSL.Dockerfile  -t scpsl-arm .

then you should have an image with the tag scpsl-arm! Enjoy.
