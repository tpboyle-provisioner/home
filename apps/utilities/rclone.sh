#!/bin/bash


# INTERFACE

ensure_rclone_is_provisioned () {
  if ! rclone_is_installed; then
    install_rclone
  fi
}


# IMPLEMENTATION

rclone_is_installed () {
  command -v rclone &> /dev/null
}

install_rclone () {
  echo "Installing rclone..."
  curl https://rclone.org/install.sh | sudo bash
}

