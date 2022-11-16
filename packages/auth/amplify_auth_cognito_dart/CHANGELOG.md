## 0.2.3

- Minor bug fixes and improvements

## 0.2.2

### Fixes
- fix(auth): Support Cognito proxies

### Features
- feat(auth): SignInDetails

## 0.2.1

### Fixes
- fix(auth): Add serializers to `SrpDevicePasswordVerifierWorker` ([#2255](https://github.com/aws-amplify/amplify-flutter/pull/2255))
- fix(auth): Device credential caching ([#2256](https://github.com/aws-amplify/amplify-flutter/pull/2256))

## 0.2.0

### Fixes
- fix(auth): Opt-in device tracking
- fix(auth): Retain unauthenticated identities

### Features
- feat(auth): Federated sign-in

## 0.1.6

### Features
- feat(auth): Force refresh
- feat(auth): Multiple plugin registration
- feat(secure_storage): remove items on re-install for iOS & MacOS ([#2118](https://github.com/aws-amplify/amplify-flutter/pull/2118))

### Fixes
- fix(auth): Erase plugin interface input types

## 0.1.5

- fix: CognitoDeviceSecrets attempts to build without secrets ([#2021](https://github.com/aws-amplify/amplify-flutter/pull/2021))

## 0.1.4

- fix: Regenerate workers

## 0.1.3

- fix: Bump `aws_common` dependency

## 0.1.2

- fix(auth): Multi-auth DataStore bindings ([#2012](https://github.com/aws-amplify/amplify-flutter/pull/2012))
- fix(auth): Remember device metadata ([#2010](https://github.com/aws-amplify/amplify-flutter/pull/2010))
- fix(auth): Hosted UI task continuation ([#2017](https://github.com/aws-amplify/amplify-flutter/pull/2017))
- fix(auth): Hosted UI server contention ([#2002](https://github.com/aws-amplify/amplify-flutter/pull/2002))

## 0.1.1

- Fix package analysis issues

## 0.1.0 (2022-08-02)

Initial developer preview release for all platforms.

### Developer Preview

The Amplify Flutter libraries are being rewritten in Dart. This version is part of our developer preview for all platforms and is **not** intended for production usage. Please follow our [Web](https://github.com/aws-amplify/amplify-flutter/issues/234) and [Desktop](https://github.com/aws-amplify/amplify-flutter/issues/133) support tickets to monitor the status of supported categories. We will be releasing Web and Desktop support for all Amplify categories incrementally.

For production use cases please use the latest, non-tagged versions of amplify-flutter packages from `pub.dev`. They offer a stable, production-ready experience for Android and iOS.
