FROM devkitpro/devkitarm:latest AS build-stage
WORKDIR /usr/src/game
COPY . .
RUN make

FROM scratch AS export-stage
COPY --from=build-stage /usr/src/game/game.gba /