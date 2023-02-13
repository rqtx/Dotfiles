#!/usr/bin/env bash

stow --verbose=2 -t ~/.ssh ssh-config
stow --verbose=2 -t ~/.config/systemd/user ssh-agent
