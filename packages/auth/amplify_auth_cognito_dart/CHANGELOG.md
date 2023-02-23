## 0.6.0+1

- Minor bug fixes and improvements

## 0.6.0

### Breaking Changes
- chore(auth)!: Change `AuthCodeDeliveryDetails.attributeKey` to be of type `AuthUserAttributeKey`
- refactor(auth)!: Make attribute update step an enum
- refactor(auth)!: Make reset password step an enum
- refactor(auth)!: Make sign-in step an enum
- refactor(auth)!: Make sign-up step an enum
- refactor(auth)!: Remove category->plugin indirection for `getPlugin`
- refactor(auth)!: State machine facade ([#2482](https://github.com/aws-amplify/amplify-flutter/pull/2482))

### Fixes
- fix(auth): Device tracking with alias
- fix(auth): Retry sign-in on `ResourceNotFoundException` for device tracking
- fix(auth): `federateToIdentityPool` discrepancies

## 0.5.0

### Fixes
- fix(auth): Clear credentials before redirect on Web ([#2603](https://github.com/aws-amplify/amplify-flutter/pull/2603))
- fix(auth): Refresh token in non-state machine calls ([#2572](https://github.com/aws-amplify/amplify-flutter/pull/2572))
- fix(auth): SessionExpired Auth Hub event ([#2609](https://github.com/aws-amplify/amplify-flutter/pull/2609))

### Breaking Changes
- fix(auth)!: Fetch Auth Session offline behavior ([#2585](https://github.com/aws-amplify/amplify-flutter/pull/2585))

## 0.4.0

### Breaking Changes
- chore(auth)!: Remove `isPreferPrivateSession` from `CognitoSignOutWithWebUIOptions` ([#2538](https://github.com/aws-amplify/amplify-flutter/pull/2538))
- refactor(auth)!: Align exception types
- refactor(auth)!: Make SRP failures errors
- refactor(auth)!: Remove intermediate request types ([#2475](https://github.com/aws-amplify/amplify-flutter/pull/2475))

## 0.3.1

### Fixes
- fix(auth): Add `no-store` cache control header

## 0.3.0

### Fixes
- fix(auth): Can't resubmit verification code ([#2468](https://github.com/aws-amplify/amplify-flutter/pull/2468))
- fix(auth): globalSignOut failure case

### Breaking Changes
- chore(auth)!: Make sign in result's `nextStep` non-null ([#2462](https://github.com/aws-amplify/amplify-flutter/pull/2462))
- feat(auth)!: Support partial sign out cases ([#2436](https://github.com/aws-amplify/amplify-flutter/pull/2436))

### Features
- feat(auth): Add user ID to `CognitoSignUpResult` ([#2437](https://github.com/aws-amplify/amplify-flutter/pull/2437))

## 0.2.5

### Fixes
- fix(auth): Refresh tokens when either access or ID token expires ([#2401](https://github.com/aws-amplify/amplify-flutter/pull/2401))

## 0.2.4

### Fixes
- revert(auth): "fix(auth): Retain unauthenticated identities" ([#2376](https://github.com/aws-amplify/amplify-flutter/pull/2376))

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
