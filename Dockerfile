FROM debian:bookworm-slim

RUN echo 'deb http://deb.debian.org/debian bookworm main contrib' > /etc/apt/sources.list

RUN apt update \
    && apt install -y wget \
    zsh \
    git \
    vim \
    libauthen-ntlm-perl \
    libcgi-pm-perl \
    libcrypt-openssl-rsa-perl \
    libdata-uniqid-perl \
    libencode-imaputf7-perl \
    libfile-copy-recursive-perl \
    libfile-tail-perl \
    libio-socket-inet6-perl \
    libio-socket-ssl-perl \
    libio-tee-perl \
    libhtml-parser-perl \
    libjson-webtoken-perl \
    libmail-imapclient-perl \
    libparse-recdescent-perl \
    libproc-processtable-perl \
    libmodule-scandeps-perl \
    libreadonly-perl \
    libregexp-common-perl \
    libsys-meminfo-perl \
    libterm-readkey-perl \
    libtest-mockobject-perl \
    libtest-pod-perl \
    libunicode-string-perl \
    liburi-perl \
    libwww-perl \
    libtest-nowarnings-perl \
    libtest-deep-perl \
    libtest-warn-perl \
    libnet-server-perl \
    make \
    time \
    cpanminus

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

RUN wget -N https://raw.githubusercontent.com/imapsync/imapsync/master/imapsync

RUN chmod +x imapsync

ENTRYPOINT ["tail", "-f", "/dev/null"]
