FROM alpine:3.12
LABEL author="fazenda"
LABEL project="doom3-dhewm3"

RUN [ "apk", "add", "--no-cache", \
    "cmake=3.17.2-r0", \
    "g++=9.3.0-r2", \
    "gcc=9.3.0-r2", \
    "libjpeg-turbo-dev=2.0.5-r0", \
    "libvorbis=1.3.6-r2", \
    "libogg-dev=1.3.4-r0", \
    "libvorbis-dev=1.3.6-r2", \
    "m4=1.4.18-r1", \
    "make=4.3-r0", \
    "mesa-dev=20.0.7-r0", \
    "libcurl=7.69.1-r1", \
    "openal-soft-dev=1.20.1-r1", \
    "sdl2-dev=2.0.12-r1", \
    "zlib-dev=1.2.11-r3" \
]

COPY base base
COPY neo neo
COPY COPYING.txt COPYING.txt
COPY README.md README.md

RUN [ "cmake", "neo" ]
RUN [ "make" ]
