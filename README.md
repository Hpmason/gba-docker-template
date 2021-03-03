# GBA Docker template
GBA game template to give consistent compiling across OS. This also removes a lot of the setup on your host machine.
Template taken from https://github.com/devkitPro/gba-examples repo
## Build
```
docker build -o out .
```
This will output the gba game to `/out` under the `${PROGRAM}.gba` with `${PROGRAM}` being the `ARG` set in the Dockerfile.
Default path being `/out/game.gba`