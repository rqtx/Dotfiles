#!/bin/bash

echo "==> Installing AURhelpers..."
sh ./AURhelpers.sh
echo "done"

echo "Installing Packages..."
sh ./installPackages.sh
echo "done"
