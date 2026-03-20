#!/bin/bash

# Created by Piotr Kurzynoga @ Oracle Czech Republic.
# Last Updated: March 2026
# Copyright (c) 2026, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v1.0 as shown at https://oss.oracle.com/licenses/upl.

# Helper function
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Install Postgres if not present (psql)
if command_exists psql; then
  echo "psql client is installed."
else
  echo "Installing psql"
  sudo yum install -y postgresql
fi

# Install Unzip if not present
if command_exists unzip; then
  echo "Unazip is already installed."
else
  echo "Installing Unzip..."
  sudo yum install -y unzip
fi

#Fetch the latest dataset
wget http://data.pid.cz/PID_GTFS.zip

#Unpack it
unzip -o "PID_GTFS.zip" -d transport_data

#Remove the zip
rm PID_GTFS.zip

#Cleanup the folder
find transport_data -maxdepth 1 -type f ! -name "stop_times.txt" ! -name "routes.txt" ! -name "stops.txt" -delete
