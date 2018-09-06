#!/usr/bin/env bash

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

user () {
  printf "\r  [ \033[0;33m??\033[0m ] $1\n"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

# info "This is info"
# user "This is user"
# success "This is success"
# fail "This is fail"
info "Linking files"
./link_files.sh
info "Adding source script to .bashrc"
echo source ~/dotfiles/source_files.sh >> ~/.bashrc

info "Sourcing .bashrc"
source ~/.bashrc
success "Install complete"
