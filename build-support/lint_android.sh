#!/bin/bash

cd android

# Run in background to prevent Melos from hanging
./gradlew lint --quiet --console plain &