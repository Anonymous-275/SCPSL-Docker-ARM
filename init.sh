#!/bin/bash

export templdpath="${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="${BOX64_LD_LIBRARY_PATH}"
export SteamAppId=996560
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
export DEBUGGER="/usr/local/bin/box64"

cd /root/server

cp -r /data/Synapse .

echo "Starting server"

exec box64 ./LocalAdmin 7777
