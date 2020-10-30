# amplify_datastore

Default plugin for the Amplify Flutter DataStore category

Visit our [Web Site](https://docs.amplify.aws/start/q/integration/flutter) to learn more about AWS Amplify.

## Development

### Build
To build this library for Android, do:
```console
flutter builder aar --no-profile
```

### Dependencies
If you are consuming a development version of the Amplify Android
library, familiarize yourself with its documentation on [Consuming
Development Versions of the
Framework](https://github.com/aws-amplify/amplify-android/blob/main/CONTRIBUTING.md#consuming-development-versions-of-the-framework).
You will need to checkout and build Amplify Android, and save artifacts
in your local maven repository.


Once you've done that, update the `./android/build.gradle` in this
project to include `mavenLocal()` to your repository specifications:
```gradle
buildscript {
    repositories {
        mavenLocal()
    }
}
rootProject.allprojects {
    repositories {
        mavenLocal()
    }
}
```

Refer to the local copies of the library that you built:
```gradle
    implementation "com.amplifyframework:aws-datastore:main"
    implementation "com.amplifyframework:aws-api-appsync:main"
```

