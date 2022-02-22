#!/bin/bash

echo "==> Installing AURhelpers..."
sh ./archAURhelpers.sh
echo "done"

echo "Installing Packages..."
sh ./archInstallPackages.sh
echo "done"
