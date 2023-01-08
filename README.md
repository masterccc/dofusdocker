# Dockerdofus

This docker aims to run Dofus (https://www.dofus.com/) inside a docker container on Linux. 

I prefer run it inside a docker for the following reasons :

- Avoid running .exe files on my machine (because of Wine) in case of missclick
- Avoid making the system "dirty" with Wine installation (need to add 32 bits architecture)
- Avoid Dofus client to read files it doesn't need to read

## Know problems

* Need to click 3 times on "play" to play
* Need to remove somes .mp4 files to avoid cinematics bug
* Client crashes after period of time (restart is needed)
* Client randomly crashes at startup

## TODO

* Install Wine from Wine repo (newer version)
* Add sound support
* Make it more generic (currenty depend on specific path/username)