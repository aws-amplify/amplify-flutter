#!/bin/bash
set -e

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

PROJECT_DIR=$(mktemp -d)
echo "Building in $PROJECT_DIR"
cd $PROJECT_DIR

# generate
flutter create --project-name=amplified_todo .
flutter pub add amplify_flutter \
  amplify_datastore:^1.0.0-supports-only-mobile.0 \
  amplify_storage_s3 \
  amplify_analytics_pinpoint \
  amplify_auth_cognito \
  amplify_authenticator \
  amplify_api
# add test packages
flutter pub add --dev --sdk=flutter integration_test

# copy template files to newly generated app
cp -r $ROOT_DIR/canaries/lib .
cp $ROOT_DIR/build-support/dummy_amplifyconfiguration.dart lib/amplifyconfiguration.dart

# Android
sed -i '' -e "s/ext.kotlin_version = .*/ext.kotlin_version = \"1.8.21\"/" ./android/build.gradle
# TODO(khatruong2009): remove this line after the next stable release (3.22.0 or 4.0)
sed -i '' -e "s/minSdkVersion .*/minSdkVersion 24/" ./android/app/build.gradle
sed -i '' -e "s/minSdk .*/minSdk 24/" ./android/app/build.gradle
sed -i '' -e "s/compileSdkVersion .*/compileSdkVersion 33/" ./android/app/build.gradle
cat ./android/app/build.gradle
# iOS
sed -i '' -e "s/# platform .*/platform :ios, '13.0'/" ./ios/Podfile
cat ./ios/Podfile
pod repo update

flutter build $@
