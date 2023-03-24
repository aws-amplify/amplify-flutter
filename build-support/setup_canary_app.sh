#!/bin/bash

brew install gnu-sed

# clean
rm -rf amplified_todo

# generate 
flutter create amplified_todo
cd amplified_todo
sed -i -e "s/minSdkVersion .*/minSdkVersion 21/" ./android/app/build.gradle && cat ./android/app/build.gradle
flutter pub add amplify_flutter && flutter pub add amplify_datastore && flutter pub add amplify_storage_s3 && flutter pub add amplify_analytics_pinpoint && flutter pub add amplify_auth_cognito && flutter pub add amplify_api
# add integration test package
sed -i -e "s/dev_dependencies:/dev_dependencies:\n  integration_test:\n    sdk: flutter/" ./pubspec.yaml && cat ./pubspec.yaml
flutter pub upgrade --major-versions

# copy template files to newly generated app
cp -r ../template/integration_test .
cp -r ../template/lib .
cp lib/dummy_amplifyconfiguration.dart lib/amplifyconfiguration.dart

# run test
flutter test --no-pub integration_test/main_test.dart -d sdk
