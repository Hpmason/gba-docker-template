ARG PROGRAM=game
FROM devkitpro/devkitarm:latest AS build-stage
WORKDIR /usr/src/${PROGRAM}
COPY . .
RUN make

FROM scratch AS export-stage
COPY --from=build-stage /usr/src/${PROGRAM}/${PROGRAM}.gba /