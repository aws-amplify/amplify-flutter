## 0.11.3

- Minor bug fixes and improvements

## 0.11.2

### Features
- feat: Support Amplify Gen 2 outputs ([#5073](https://github.com/aws-amplify/amplify-flutter/pull/5073))

## 0.11.1

- Minor bug fixes and improvements

## 0.11.0

### Breaking Changes
- chore!: remove deprecated auth types ([#4764](https://github.com/aws-amplify/amplify-flutter/pull/4764))
- fix!: regenerate cognito sdks to update signup operation for adding limit exceeded exception ([#4781](https://github.com/aws-amplify/amplify-flutter/pull/4781))

### Fixes
- fix: map Lambda exceptions correctly ([#4804](https://github.com/aws-amplify/amplify-flutter/pull/4804))

## 0.10.13

### Features
- feat: update `built_value` version constraint ([#4634](https://github.com/aws-amplify/amplify-flutter/pull/4634))
- feat: update plus plugins version ([#4619](https://github.com/aws-amplify/amplify-flutter/pull/4619))

## 0.10.12

### Fixes
- fix(auth): Allow retries with verifyTotpSetup() ([#4532](https://github.com/aws-amplify/amplify-flutter/pull/4532))
- fix(auth): device metadata migration ([#4503](https://github.com/aws-amplify/amplify-flutter/pull/4503))
- fix(auth): verifyTotp throw EnableSoftwareTokenMfaException ([#4558](https://github.com/aws-amplify/amplify-flutter/pull/4558))

## 0.10.11

- This version was retracted to avoid a breaking change introduced in ([#4532](https://github.com/aws-amplify/amplify-flutter/pull/4532))

## 0.10.10

- Minor bug fixes and improvements

## 0.10.9

### Fixes
- fix(auth): forget local device only if matches ([#4060](https://github.com/aws-amplify/amplify-flutter/pull/4060))
- fix: Bumped built_value to ">=8.6.0 <8.9.0" and built_value_generator to 8.8.1
- fix: Bumped path to ">=1.8.0 <2.0.0"

## 0.10.8

- Minor bug fixes and improvements

## 0.10.7

- Minor bug fixes and improvements

## 0.10.6

### Fixes
- fix(auth): use loadCredentials to check login state

### Features
- feat: rename sendUserAttributeVerificationCode ([#3759](https://github.com/aws-amplify/amplify-flutter/pull/3759))

## 0.10.5

- Minor bug fixes and improvements

## 0.10.4

- Minor bug fixes and improvements

## 0.10.3+1

### Fixes
- fix(auth): Crash with EXC_BAD_ACCESS ([#3657](https://github.com/aws-amplify/amplify-flutter/pull/3657))
- fix(auth): Custom auth with device tracking, no SRP ([#3652](https://github.com/aws-amplify/amplify-flutter/pull/3652))
- fix(auth): Uncaught Hosted UI cancellation ([#3686](https://github.com/aws-amplify/amplify-flutter/pull/3686))

## 0.10.3

### Fixes
- fix(auth): SDK exception mapping

### Features
- feat(auth): TOTP MFA

## 0.10.2+3

### Fixes
- fix(auth): Pass `deviceKey` in custom auth challenge

## 0.10.2+2

- Minor bug fixes and improvements

## 0.10.2+1

### Fixes
- fix(auth): Remove `nonce` usage ([#3321](https://github.com/aws-amplify/amplify-flutter/pull/3321))
- perf(auth): Fetch auth session ([#3510](https://github.com/aws-amplify/amplify-flutter/pull/3510))

## 0.10.2

### Features
- feat(auth): Enable ASF

### Fixes
- fix(codegen): Mark Cognito map as sparse ([#3386](https://github.com/aws-amplify/amplify-flutter/pull/3386))

## 0.10.1+1

- Minor bug fixes and improvements

## 0.10.1

### Fixes
- fix(auth): `signOut` after user deletion ([#3162](https://github.com/aws-amplify/amplify-flutter/pull/3162))

## 0.10.0+1

### Fixes
- fix(auth): User attribute serialization

## 0.10.0

### Features
- Dart 3 support (must update Dart SDK constraint to `^3.0.0`)

### Fixes
- fix(auth): Fetch AWS credentials after Hosted UI login ([#2956](https://github.com/aws-amplify/amplify-flutter/pull/2956))
- fix(auth): Transform network exceptions ([#2967](https://github.com/aws-amplify/amplify-flutter/pull/2967))

## 0.9.0+3

### Fixes
- fix(repo): Flutter 3.3 support
- fix: convert AuthUserAttributeKey in updateUserAttributes

## 0.9.0+2

- Minor bug fixes and improvements

## 0.9.0+1

### Fixes
- fix(auth): Cancel sign in ([#2840](https://github.com/aws-amplify/amplify-flutter/pull/2840))

## 0.9.0

### Breaking Changes
- chore(auth)!: send Pinpoint Endpoint id to Cognito
- refactor(auth)!: Remove generic types ([#2804](https://github.com/aws-amplify/amplify-flutter/pull/2804))

### Fixes
- fix(auth): Always allow repeated `confirmSignIn` attempts
- fix(auth): Client secret support
- fix(auth): Process sign-in events once
- fix(auth): User pool-only support
- fix(smithy): Add missing `@optionalAuth` traits

## 0.8.0

### Breaking Changes
- refactor(auth)!: Plugin options ([#2691](https://github.com/aws-amplify/amplify-flutter/pull/2691))

### Fixes
- fix(auth): Always pass client metadata

## 0.7.0

### Fixes
- fix(auth): Transform session expired exceptions ([#2688](https://github.com/aws-amplify/amplify-flutter/pull/2688))

### Breaking Changes
- chore(auth)!: Chain stack traces in state machine

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
