#!/bin/bash

set -e

dart pub get
dart run build_runner build --delete-conflicting-outputs
dart test $@
