#!/bin/bash

cd packages || exit

passed_plugins=()
failed_plugins=()
skipped_plugins=()

set +e
set -o pipefail

for plugin_dir in */; do
    cd "$plugin_dir" || exit
    plugin=$(basename "$plugin_dir")
    case $1 in
        ios)
            echo "=== Collecting ios coverage for $plugin ==="
            bash ../../build-support/codecov.sh -F iOSUnitTests -J $plugin
            ;;
        flutter)
            echo "=== Collecting flutter coverage for $plugin ==="
            ;;
        android)
            echo "=== Collecting android coverage for $plugin ==="
            ;;
    esac
    cd ..
    echo
done

echo "=== Code Coverage complete ==="
echo

cd ..

set -e

exit 0
