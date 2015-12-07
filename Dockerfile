FROM tronpaul/steamcmd
MAINTAINER Mark McGuire "mark.b.mcg@gmail.com"

ADD ./csgo_update.cmd /opt/steam/csgo_update.cmd
RUN /opt/steam/steamcmd.sh +runscript /opt/steam/csgo_update.cmd

ADD ./srcds_run_docker /srcds_run_docker
ENTRYPOINT ["/srcds_run_docker"]

EXPOSE 27015 27015/udp 27020 27020/udp

CMD ["/opt/steam/csgo/srcds_linux", "-game csgo", "-ip 0.0.0.0", "-port 27015", "-tickrate 128", "-usercon", "+sv_password changeme", "+rcon_password changeme", "+game_type 0", "+game_mode 1"]
