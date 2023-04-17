FROM weilbyte/box

#Install steamcmd

RUN apt update -y && apt install curl -y
WORKDIR /root/steam
RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
RUN export DEBUGGER="/usr/local/bin/box86"
ENV DEBUGGER "/usr/local/bin/box86"
RUN ./steamcmd.sh +@sSteamCmdForcePlatformBitness 64 +@sSteamCmdForcePlatformType linux +login anonymous +force_install_dir /root/server +app_update 996560 validate +quit

# Specific
EXPOSE 7777-7777/udp
WORKDIR /root
COPY init .
CMD ["/bin/bash", "/root/init"]
