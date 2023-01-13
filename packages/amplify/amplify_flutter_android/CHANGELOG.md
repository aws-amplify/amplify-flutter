## 1.0.0-next.3

- Minor bug fixes and improvements

## 1.0.0-next.2

- Minor bug fixes and improvements

## 1.0.0-next.1+1

- Minor bug fixes and improvements

## 1.0.0-next.1

- Minor bug fixes and improvements

## 1.0.0-next.0 (2022-08-02)

Initial developer preview release for all platforms.

### Developer Preview

The Amplify Flutter libraries are being rewritten in Dart. This version is part of our developer preview for all platforms and is **not** intended for production usage. Please follow our [Web](https://github.com/aws-amplify/amplify-flutter/issues/234) and [Desktop](https://github.com/aws-amplify/amplify-flutter/issues/133) support tickets to monitor the status of supported categories. We will be releasing Web and Desktop support for all Amplify categories incrementally.

For production use cases please use the latest, non-tagged versions of amplify-flutter packages from `pub.dev`. They offer a stable, production-ready experience for Android and iOS.

## 0.5.0 (2022-05-17)

### Breaking Changes

- break: adds deleteUser support for Android (#1540)
- feat(auth): enables custom auth flows (#1444)

- **Auth**: Auth API Changes

- The `Auth.deleteUser` API is now functional on both Android and iOS platforms. Previsiously, this API would throw an exception on the Android platform. Now, the user will be deleted.

- Custom Auth flows are now available with passwordless logins. To support this change, the password attribute is now optional in the `Auth.signIn` API. While this should not prove breaking in most cases, we are calling it out since it alters a very commonly used API.

  **How to Migrate:**

  - Ensure that you are only invoking the `Auth.deleteUser` API when you want the user to be deleted, and do not rely on library to throw an exception on the Android platform.

  - Pass null to the Auth.signIn API only for passwordless login, using Cognito Custom Auth flows.

### Features

- feat(datastore): Custom Conflict Handler (#1254)
- feat(datastore): emit subscriptionDataProcessed and syncReceived events (#1351)
- feat(datastore): Multi-auth (#1478)
- feat: AWS Signature V4 library (#1456)

### Fixes

- fix: support lists for .contains query predicate in observeQuery (#1233)
- fix(auth): Fix FlutterAuthProvider.kt (#1505)
- fix(core): Update QueryPagination page field to default to 0 (#1533)
- fix(authenticator): Fix confirm password validator (#1542)
- fix(aws_signature_v4): Various fixes (#1572)

### Chores

- chore(amplify_api): federated plugin (#1410)
- chore(amplify_flutter): migrate amplify_flutter to federated plugin (#1450)
- chore: make example Android Apps runnable with API 32+ (#1474)
- chore(auth): Templatize and update exception comments (#1476)
- chore(ci): Bump Xcode version
- chore: update android compileSdkVersion to 31
- chore: upgrade gradle plugin to 7.1.2
- chore: enable android codebase linter checks
- chore: replace 0.4.2-1 with 0.4.3 due to melos limitation (#1496)
- chore(aws): Bump min SDK version (#1551)
- chore: Lint fixes (#1471)
- chore(authenticator): Fix failing integration tests (#1545)
- chore(aws_signature_v4): Update README (#1559)
- chore(aws_signature_v4): Update user agent header name (#1561)
- chore(aws_common): Crypto-secure UUID (#1573)
- chore: enable dependabot (#1568)
- chore: Flutter 3 fixes (#1580)
- chore: bump amplify-android version to 1.35.3 (#1586)
- chore: downgrade amplify-android to 1.33.0 (#1591)

## 0.4.5 (2022-04-13)

-fix: bumps ios version and bumps api AuthProvider timeout (#1526)

## 0.4.4 (2022-04-06)

- fix(api): JNI issues (#1509)

## 0.4.3 (2022-04-02)

## 0.4.2 (2022-03-24)

## 0.4.1

- Initial release
