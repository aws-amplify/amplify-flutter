#!/bin/bash
set -e

# clean
ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
PROJECT_DIR=$(mktemp -d)
cd $PROJECT_DIR

# generate
flutter create --project-name=amplified_todo .
flutter pub add amplify_flutter && \
  flutter pub add amplify_datastore:^1.0.0-supports-only-mobile.0 && \
  flutter pub add amplify_storage_s3 && \
  flutter pub add amplify_analytics_pinpoint && \
  flutter pub add amplify_auth_cognito && \
  flutter pub add amplify_api
# add test packages
flutter pub add dev:integration_test:'{"sdk":"flutter"}' dev:flutter_test:'{"sdk":"flutter"}'
flutter pub upgrade --major-versions

# copy template files to newly generated app
cp -r $ROOT_DIR/canaries/integration_test .
cp -r $ROOT_DIR/canaries/lib .

# Android
sed -i'' -e "s/minSdkVersion .*/minSdkVersion 24/" ./android/app/build.gradle && cat ./android/app/build.gradle
# iOS
sed -i'' -e "s/# platform .*/platform :ios, '13.0'/" ./ios/Podfile && cat ./ios/Podfile

if [[ -n "$CI" ]]; then
    echo "projectDir=$PROJECT_DIR" >> "$GITHUB_OUTPUT"
fi
