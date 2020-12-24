#!/bin/zsh
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

apt update
apt install -y \
    imagemagick ffmpeg libpq-dev libxml2-dev libxslt1-dev file git-core \
    g++ libprotobuf-dev protobuf-compiler pkg-config nodejs gcc autoconf \
    bison build-essential libssl-dev libyaml-dev libreadline6-dev \
    zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev \
    nginx redis-server redis-tools postgresql postgresql-contrib \
    certbot python3-certbot-nginx yarn libidn11-dev libicu-dev libjemalloc-dev
