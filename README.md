# SMOO Capture The Flag
Capture The Flag in SMO 

## Credits
This game mode is based on the mod SMOO ([mod](https://github.com/CraftyBoss/SuperMarioOdysseyOnline), [server](https://github.com/Sanae6/SmoOnlineServer)) 
which was created by [CraftyBoss](https://github.com/CraftyBoss) and [Sanae6](https://github.com/Sanae6).

## Building Mod Client
Note: Only the docker build is supported

Pre-built binaries are available in the releases ([Latest Release](https://github.com/IcyIceberg/Smoo-CaptureTheFlag/releases))

Pre-reqs:
* Docker installed

To build for switch
```
cd mod
sudo ./docker-build.sh make clean
sudo ./docker-build.sh
```

To build for Ryujinx, run
```
cd mod
sudo ./docker-build.sh make clean
sudo ISEMU=1 ./docker-build.sh
```

To build for Yuzu, run
```
cd mod
sudo ./docker-build.sh make clean
sudo ISEMU=1 ./docker-build.sh make emu
```

If you're having issues, clean the build and start fresh by running
```
cd mod
sudo ./docker-build.sh make clean
```

## Running the Server
Note: Only the docker build is supported

Pre-reqs:
* Docker installed
* Docker-Compose installed

```
cd server
sudo ./docker-run.sh
```



## Playing CTF

Server command for starting a CTF game
```
ctf start 0 <RED_TEAM_NAMES_SEPARATED_BY_SPACE>
```

For example if you want two teams, Red Team=p1, p2 and Blue Team=p3, p4, use the following command
```
ctf start 0 p1 p2
```

Note: the first player is the team captain and are the one to place their team's flag

### Controls
* Enable CTF Game Mode - Hold L then press Dpad-Left
* Pickup/Drop flag - Hold ZL then Press ZR

Notes: 
* You can only place/drop your flag on your own team's side
* You can only pickup your opponent's flag. You are not allowed to pickup and move your own team's flag after it has been initially placed.


## Troubleshooting
Still work in progress as the mod isn't super stable right now
* Ensure you're connecting to a CTF SMOO server. The CTF game mode uses new packet types and requires a custom server (see server instructions below)
* Try starting with a fresh save file
* Ensure this is the only mod installed. Other mods, including another copy of SMOO will cause the game to crash.