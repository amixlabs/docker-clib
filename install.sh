#!/usr/bin/env bash

install_tools() {
  yum install -y \
    libcurl-devel \
    git \
    make \
    gcc
}

install_clib() {
  git clone https://github.com/clibs/clib.git /tmp/clib &&
  cd /tmp/clib &&
  make &&
  make install &&
  cd /tmp/ &&
  rm -rf /tmp/clib
}

main() {
  mkdir /wrk &&
  install_tools &&
  install_clib &&
  yum clean all
}

main "$@"
