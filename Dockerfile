# Todo
# - Install wine from wine repos (more recent)
# - Try install pulseaudio

FROM debian:latest
RUN dpkg --add-architecture i386
RUN apt update
RUN apt install -y xdg-utils fuse libglib2.0-0 libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 openssl libgtk-3-0 libgbm1 libasound2 wine32 alsa-utils alsa-oss libasound2 apulse
RUN useradd -m -s /bin/bash -G audio -p $(openssl passwd -1 user) user
USER user
CMD exec /bin/sh -c "trap : TERM INT; sleep 9999999999d & wait"
#CMD ["/bin/sh"]
#ENTRYPOINT ["/bin/sh"]
