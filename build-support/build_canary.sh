#!/bin/bash
set -e

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

PROJECT_DIR=$(mktemp -d)
echo "Building in $PROJECT_DIR"
cd $PROJECT_DIR

# generate
flutter create --project-name=amplified_todo .
flutter pub add amplify_flutter \
  amplify_datastore \
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
sed -i '' -e "s/id \"com.android.application\" .*/id \"com.android.application\" version \"8.1.0\" apply false/" ./android/settings.gradle
sed -i '' -e "s/id \"org.jetbrains.kotlin.android\" .*/id \"org.jetbrains.kotlin.android\" version \"1.9.10\" apply false/" ./android/settings.gradle
cat ./android/settings.gradle

# TODO(khatruong2009): remove this line after the next stable release (3.22.0 or 4.0)
sed -i '' -e "s/minSdkVersion .*/minSdkVersion 24/" ./android/app/build.gradle
sed -i '' -e "s/minSdk .*/minSdk 24/" ./android/app/build.gradle
sed -i '' -e '/id "kotlin-android"/a\
id '\''kotlin-parcelize'\''' ./android/app/build.gradle
sed -i '' -e "s/compileSdk .*/compileSdk = 34/" ./android/app/build.gradle
sed -i '' -e "s/sourceCompatibility .*/sourceCompatibility = JavaVersion.VERSION_17/" ./android/app/build.gradle
sed -i '' -e "s/targetCompatibility .*/targetCompatibility = JavaVersion.VERSION_17/" ./android/app/build.gradle
# TODO(equartey): remove this line after the next stable release (3.22.0 or 4.0)
sed -i '' -e '/kotlinOptions {/,/}/ s/jvmTarget = .*/jvmTarget = '\''17'\''/' ./android/app/build.gradle
cat ./android/app/build.gradle

sed -i '' -e "s#distributionUrl=.*#distributionUrl=https\\://services.gradle.org/distributions/gradle-8.1-all.zip#" ./android/gradle/wrapper/gradle-wrapper.properties
cat ./android/gradle/wrapper/gradle-wrapper.properties

# iOS
sed -i '' -e "s/# platform .*/platform :ios, '13.0'/" ./ios/Podfile
cat ./ios/Podfile
pod repo update

flutter build $@
