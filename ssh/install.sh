#!/usr/bin/env bash

mkdir -p /home/blackbird/.config/systemd/user
stow --verbose=2 -t ~/.ssh ssh-config
stow --verbose=2 -t ~/.config/systemd/user ssh-agent
