## 1.0.0-next.0+4

- Minor bug fixes and improvements

## 1.0.0-next.0+3

### Features
- feat(authenticator): handle `AuthHubEventType.signedIn` ([#2049](https://github.com/aws-amplify/amplify-flutter/pull/2049))
- feat(secure_storage): handle package uninstall/re-install on Linux and Windows ([#2044](https://github.com/aws-amplify/amplify-flutter/pull/2044))
- feat(secure_storage): remove items on re-install for iOS & MacOS ([#2118](https://github.com/aws-amplify/amplify-flutter/pull/2118))

## 1.0.0-next.0+2

- Fix package analysis issue

## 1.0.0-next.0+1

- Fix package analysis issue

## 1.0.0-next.0 (2022-08-02)

Initial developer preview release for all platforms.

### Developer Preview

The Amplify Flutter libraries are being rewritten in Dart. This version is part of our developer preview for all platforms and is **not** intended for production usage. Please follow our [Web](https://github.com/aws-amplify/amplify-flutter/issues/234) and [Desktop](https://github.com/aws-amplify/amplify-flutter/issues/133) support tickets to monitor the status of supported categories. We will be releasing Web and Desktop support for all Amplify categories incrementally.

For production use cases please use the latest, non-tagged versions of amplify-flutter packages from `pub.dev`. They offer a stable, production-ready experience for Android and iOS.

## 0.1.1 (2022-05-17)

### Features

- feat(auth): enables custom auth flows (#1444)

### Fixes

- fix(authenticator): Fix confirm password validator (#1542)

### Chores

- chore(authenticator): Fix failing integration tests (#1545)

## 0.1.0 (2022-02-24)

- Initial stable release of the amplify_authenticator package. See https://ui.docs.amplify.aws/components/authenticator?platform=flutter to get started.
