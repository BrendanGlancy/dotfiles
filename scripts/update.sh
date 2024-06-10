##!/bin/bash
set -e

# Set colors for output
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
NC='\033[0m' # No Color


# function to update and upgrade
update_upgrade() {
  echo "Updating and upgrading system and installing dependencies..."
  sudo apt-get update
  sudo apt-get upgrade -y
  sudo apt-get install -y build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake git cmake libuv1-dev libmicrohttpd-dev libssl-dev jq
  sudo apt-get install -y software-properties-common
  sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
  sudo apt-get update
  sudo apt-get upgrade -y
}


# Function to update the distribution and upgrade
update_dist_upgrade() {
  echo "Updating the distribution and upgrading system..."
  sudo apt-get dist-upgrade
}

# Function to clean
clean() {
  echo "Cleaning up..."
  sudo apt-get autoremove -y
  sudo apt-get autoclean
  sudo apt-get clean
}

# Main function prompt the user to see if they want to update the distribution and call the all other functions
main() {
  echo "Do you want to update the distribution and upgrade the system? (y/n)"
  read -r response
  if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    update_dist_upgrade
    update_upgrade
    clean
  elif [[ $response =~ ^([nN][oO]|[nN])$ ]]; then
    echo "Skipping dist update..."
    update_upgrade
    clean
  else
    echo "Exiting..."
  fi
}

# Call the main function
main

exit 0!/bin/bash
set -e

# Set colors for output
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
NC='\033[0m' # No Color


# function to update and upgrade
update_upgrade() {
  echo "Updating and upgrading system and installing dependencies..."
  sudo apt-get update
  sudo apt-get upgrade -y
  sudo apt-get install -y build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake git cmake libuv1-dev libmicrohttpd-dev libssl-dev jq
  sudo apt-get install -y software-properties-common
  sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
  sudo apt-get update
  sudo apt-get upgrade -y
}


# Function to update the distribution and upgrade
update_dist_upgrade() {
  echo "Updating the distribution and upgrading system..."
  sudo apt-get dist-upgrade
}

# Function to clean
clean() {
  echo "Cleaning up..."
  sudo apt-get autoremove -y
  sudo apt-get autoclean
  sudo apt-get clean
}

# Main function prompt the user to see if they want to update the distribution and call the all other functions
main() {
  echo "Do you want to update the distribution and upgrade the system? (y/n)"
  read -r response
  if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    update_dist_upgrade
    update_upgrade
    clean
  elif [[ $response =~ ^([nN][oO]|[nN])$ ]]; then
    echo "Skipping dist update..."
    update_upgrade
    clean
  else
    echo "Exiting..."
  fi
}

# Call the main function
main

exit 0
