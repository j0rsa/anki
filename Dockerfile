FROM dorowu/ubuntu-desktop-lxde-vnc:focal

RUN apt update &&\
    apt install libxcb-xinerama0 libxcb-icccm4 libxcb-image0 \
    libxcb-keysyms1 libxcb-randr0 \
    libxcb-render-util0 libxcb-xkb1 libxkbcommon-x11-0 -y &&\
    wget -O- https://github.com/ankitects/anki/releases/download/2.1.49/anki-2.1.49-linux.tar.bz2 | tar xj &&\
    cd anki-2.1.49-linux &&\
    ./install.sh