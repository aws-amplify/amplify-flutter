#!/bin/bash

# Runs through each plugin in packages/ and 
# runs a `flutter pub get` in each package directory
echo "Initializing Plugins and Examples..."
for d in ./packages/* ; do (cd "$d" && flutter pub get); done