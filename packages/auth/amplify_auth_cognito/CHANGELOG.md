## 1.4.1

### Fixes
- fix(auth): Crash with EXC_BAD_ACCESS ([#3657](https://github.com/aws-amplify/amplify-flutter/pull/3657))
- fix(auth): Custom auth with device tracking, no SRP ([#3652](https://github.com/aws-amplify/amplify-flutter/pull/3652))
- fix(auth): Uncaught Hosted UI cancellation ([#3686](https://github.com/aws-amplify/amplify-flutter/pull/3686))

## 1.4.0

### Features
- feat(auth): TOTP MFA
- feat(authenticator): TOTP MFA ([#3609](https://github.com/aws-amplify/amplify-flutter/pull/3609))

## 1.3.3

### Fixes
- fix(auth): Pass `deviceKey` in custom auth challenge

## 1.3.2

- Minor bug fixes and improvements

## 1.3.1

### Fixes
- fix(auth): Android Hosted UI flakiness

## 1.3.0

### Features
- feat(auth): Enable ASF

## 1.2.1

- Minor bug fixes and improvements

## 1.2.0

### Fixes
- fix(auth): Attribute key equality ([#3136](https://github.com/aws-amplify/amplify-flutter/pull/3136))
- fix(auth): `signOut` after user deletion ([#3162](https://github.com/aws-amplify/amplify-flutter/pull/3162))

## 1.1.1

### Fixes
- fix(auth): remove duplicate continuation call for hosted UI ([#3112](https://github.com/aws-amplify/amplify-flutter/pull/3112))
- fix: suppress browser on sign out when preferPrivateSession is true ([#3099](https://github.com/aws-amplify/amplify-flutter/pull/3099))
- fix(auth): User attribute serialization

## 1.1.0

### Features
- Dart 3 support (must update Dart SDK constraint to `^3.0.0`)

## 1.0.1

### Fixes
- fix(repo): Flutter 3.3 support

## 1.0.0

We are thrilled to release version 1.0 of the Amplify Flutter libraries!

This release introduces a full rewrite of the Amplify libraries in Dart, allowing you to build AWS cloud-connected
applications on every platform Flutter supports (iOS, Android, Web, macOS, Windows, and Linux).

If you've been using v0 in production, you can now safely migrate to v1. Check out our 
[migration guide](https://docs.amplify.aws/lib/project-setup/upgrade-guide/q/platform/flutter/) for 
more information.

As always, you can find us on [GitHub](https://github.com/aws-amplify/amplify-flutter/) and 
[Discord](https://discord.gg/jWVbPfC) to answer any questions.

### New Features in the Auth category

* `fetchAuthSession` now supports a `forceRefresh` parameter which, when passed, will refresh User Pool tokens and AWS credentials regardless if they’ve expired.
* The result of `Amplify.Auth.signUp` now provides the user ID of the created user. Previously this was only available after signing in.
* Custom OAuth providers are now configurable when signing in via Hosted UI.
* A new `federateToIdentityPool` API has been added to the Cognito plugin which allows federating directly into an Identity Pool to receive AWS credentials using a third-party identity provider (IdP) token.
    * **Note:** Since this method is only available on the Cognito plugin, it must be called directly on the plugin. The Cognito plugin can be retrieved by calling `Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey)` anytime after configuration.
    * This method prevents usage of any User Pool-related methods. It should only be used in scenarios where you need AWS credentials and already have a mechanism for retrieving OIDC tokens from a third-party IdP.

### Bug Fixes

The following issues have been fixed in this release:

- Users getting session expired right after sign in ([#1271](https://github.com/aws-amplify/amplify-flutter/issues/1271))
- Inconsistent/Incorrect behavior when fetching auth session without internet access ([#760](https://github.com/aws-amplify/amplify-flutter/issues/760))
- Amplify.Auth.updateUserAttribute crashes app ([#2361](https://github.com/aws-amplify/amplify-flutter/issues/2361))
- Support user migration lambda function trigger & USER_PASSWORD authentication type ([#442](https://github.com/aws-amplify/amplify-flutter/issues/442))
- Custom Auth Flow with passwordless login ([#2393](https://github.com/aws-amplify/amplify-flutter/issues/2393))
- Error while getting the getCurrentUser if mobile is connected to network without internet ([#2292](https://github.com/aws-amplify/amplify-flutter/issues/2292))
- NotAuthorizedException exception message are different on android and iOS ([#2231](https://github.com/aws-amplify/amplify-flutter/issues/2231))
- AuthException/CustomTabsNotSupportedException when default browser does not support custom tabs ([#1830](https://github.com/aws-amplify/amplify-flutter/issues/1830))
- Auth Fetch Auth Session fail after relogin ([#1438](https://github.com/aws-amplify/amplify-flutter/issues/1438))
- Not getting lamda exceptions for social login ([#1279](https://github.com/aws-amplify/amplify-flutter/issues/1279))
- Username from Auth.getCurrentUser has inconsistent casing on iOS and Android ([#723](https://github.com/aws-amplify/amplify-flutter/issues/723))
- UpdateUserAttributeResult.isUpdated is true on Android but false on iOS if the attribute requires confirmation ([#609](https://github.com/aws-amplify/amplify-flutter/issues/609))
- Generic AuthException is thrown when the device does not have chrome installed ([#587](https://github.com/aws-amplify/amplify-flutter/issues/587))
- isSignUpComplete returns True in android even if the user has not been confirmed. In iOS it doesn't. ([#581](https://github.com/aws-amplify/amplify-flutter/issues/581))
- Username is cached for use in confirmPassword on Android ([#464](https://github.com/aws-amplify/amplify-flutter/issues/464))
- Remove browser redirection after signOut() in app using social sign in ([#401](https://github.com/aws-amplify/amplify-flutter/issues/401))
- Force token refresh ([#299](https://github.com/aws-amplify/amplify-flutter/issues/299))
- Amplify.Auth.getCurrentUser() return different platform results when using email based auth ([#201](https://github.com/aws-amplify/amplify-flutter/issues/201))

## 1.0.0-next.8+1

- Minor bug fixes and improvements

## 1.0.0-next.8

### Breaking Changes
- chore(auth)!: send Pinpoint Endpoint id to Cognito
- refactor(auth)!: Remove generic types ([#2804](https://github.com/aws-amplify/amplify-flutter/pull/2804))

### Fixes
- fix(auth): Always allow repeated `confirmSignIn` attempts
- fix(auth): Process sign-in events once

## 1.0.0-next.7

### Breaking Changes
- refactor(auth)!: Plugin options ([#2691](https://github.com/aws-amplify/amplify-flutter/pull/2691))

## 1.0.0-next.6

### Fixes
- fix(auth): Await `signInUri` in Hosted UI platform ([#2706](https://github.com/aws-amplify/amplify-flutter/pull/2706))

## 1.0.0-next.5+1

- Minor bug fixes and improvements

## 1.0.0-next.5

### Breaking Changes
- refactor(auth)!: Make attribute update step an enum
- refactor(auth)!: Make reset password step an enum
- refactor(auth)!: Make sign-in step an enum
- refactor(auth)!: Make sign-up step an enum
- refactor(auth)!: Remove category->plugin indirection for `getPlugin`
- refactor(auth)!: State machine facade ([#2482](https://github.com/aws-amplify/amplify-flutter/pull/2482))

## 1.0.0-next.4

### Breaking Changes
- fix(auth)!: Fetch Auth Session offline behavior ([#2585](https://github.com/aws-amplify/amplify-flutter/pull/2585))

### Fixes
- fix(auth): SessionExpired Auth Hub event ([#2609](https://github.com/aws-amplify/amplify-flutter/pull/2609))

## 1.0.0-next.3

### Breaking Changes
- chore(auth)!: Remove `isPreferPrivateSession` from `CognitoSignOutWithWebUIOptions` ([#2538](https://github.com/aws-amplify/amplify-flutter/pull/2538))
- refactor(auth)!: Align exception types
- refactor(auth)!: Remove intermediate request types ([#2475](https://github.com/aws-amplify/amplify-flutter/pull/2475))
- refactor(core)!: Migrate exception types

## 1.0.0-next.2+1

### Fixes
- fix(auth): Add `no-store` cache control header

## 1.0.0-next.2

### Fixes
- fix(auth): Can't resubmit verification code ([#2468](https://github.com/aws-amplify/amplify-flutter/pull/2468))

### Breaking Changes
- chore(auth)!: Make sign in result's `nextStep` non-null ([#2462](https://github.com/aws-amplify/amplify-flutter/pull/2462))

### Features
- feat(auth): Add user ID to `CognitoSignUpResult` ([#2437](https://github.com/aws-amplify/amplify-flutter/pull/2437))

## 1.0.0-next.1+1

- Minor bug fixes and improvements

## 1.0.0-next.1

- Minor bug fixes and improvements

## 1.0.0-next.0+7

### Fixes
- fix(auth): Support Cognito proxies

### Features
- feat(auth): SignInDetails

## 1.0.0-next.0+6

### Fixes
- fix(auth): Retain unauthenticated identities
- fix(auth, secure_storage): update generated java pigeon code ([#2184](https://github.com/aws-amplify/amplify-flutter/pull/2184))

### Features
- feat(auth): Federated sign-in

## 1.0.0-next.0+5

### Features
- feat(auth): Multiple plugin registration
- feat(auth): migrate legacy credentials on Android ([#2004](https://github.com/aws-amplify/amplify-flutter/pull/2004))
- feat(secure_storage): handle package uninstall/re-install on Linux and Windows ([#2044](https://github.com/aws-amplify/amplify-flutter/pull/2044))
- feat(secure_storage): remove items on re-install for iOS & MacOS ([#2118](https://github.com/aws-amplify/amplify-flutter/pull/2118))

### Fixes
- fix(auth): Erase plugin interface input types

## 1.0.0-next.0+4

- Bump `amplify_auth_cognito_dart` dependency

## 1.0.0-next.0+3

- fix(auth): Multi-auth DataStore bindings ([#2012](https://github.com/aws-amplify/amplify-flutter/pull/2012))
- fix(auth): Remember device metadata ([#2010](https://github.com/aws-amplify/amplify-flutter/pull/2010))
- fix(auth): Hosted UI task continuation ([#2017](https://github.com/aws-amplify/amplify-flutter/pull/2017))
- fix(auth): Hosted UI server contention ([#2002](https://github.com/aws-amplify/amplify-flutter/pull/2002))

## 1.0.0-next.0+2

- Fix package analysis issues

## 1.0.0-next.0+1

- Fix package analysis issues

## 1.0.0-next.0 (2022-08-02)

Initial developer preview release for all platforms.

### Developer Preview

The Amplify Flutter libraries are being rewritten in Dart. This version is part of our developer preview for all platforms and is **not** intended for production usage. Please follow our [Web](https://github.com/aws-amplify/amplify-flutter/issues/234) and [Desktop](https://github.com/aws-amplify/amplify-flutter/issues/133) support tickets to monitor the status of supported categories. We will be releasing Web and Desktop support for all Amplify categories incrementally.

For production use cases please use the latest, non-tagged versions of amplify-flutter packages from `pub.dev`. They offer a stable, production-ready experience for Android and iOS.

## 0.5.0 (2022-05-17)

### Chores

- chore: make example Android Apps runnable with API 32+ (#1474)
- chore(auth): Templatize and update exception comments (#1476)
- chore: update android compileSdkVersion to 31
- chore: upgrade gradle plugin to 7.1.2
- chore: enable android codebase linter checks
- chore: replace 0.4.2-1 with 0.4.3 due to melos limitation (#1496)
- chore: Lint fixes (#1471)
- chore: Flutter 3 fixes (#1580)

## 0.4.5 (2022-04-13)

-fix: bumps ios version and bumps api AuthProvider timeout (#1526)

## 0.4.4 (2022-04-06)

## 0.4.3 (2022-04-02)

## 0.4.2 (2022-03-24)

- chore: fix pubspec urls (#1424)
- chore: federated plugin (#1349)

## 0.4.1 (2022-02-28)

- chore: adds API for auth integ tests + minor fixes (#1302)

## 0.4.0 (2022-02-17)

- chore: bump Kotlin version to 1.6.10 (#1346)

### Breaking Changes

- If your app has a dependency on Kotlin, the value of `ext.kotlin_version` set in `android/build.gradle` must be 1.5.31 or greater (1.6.10 recommended)

## 0.3.2 (2022-01-21)

- feat: add deleteUser API for iOS
- chore: bump amplify-android to 1.31.2

## 0.3.1 (2022-01-20)

- chore: bump amplify-ios to 1.18.3

## 0.3.0 (2022-01-20)

### Breaking Changes

- The amplify_auth_cognito fetchAuthSession API will throw a SignedOutException when the user has not signed in, and a SessionExpiredException when the tokens have expired.
- The amplify_auth_cognito getCurrentUser API will return an AuthUser if the user is still authenticated but the session has expired.

### Fixes

- fix(amplify_auth_cognito): throw SignedOutException (#893)
- fix(amplify_auth_cognito): fixes getCurrentUser disparity (#894)
- fix(amplify_auth_cognito): remove int.parse from AuthUserAttribute (#1169)

## 0.2.10 (2021-11-23)

### Fixes

- fix(auth): Fix coroutines crash (#1132)
- fix(auth): Remove duplicate AtomicResult (#1133)

## 0.2.9 (2021-11-17)

- chore: upgrade amplify-android to 1.28.3-rc

## 0.2.8 (2021-11-12)

### Fixes

- fix(auth): (Android) Dropped exceptions in hosted UI cause `signInWithWebUI` to not return (#1015)

## 0.2.7 (2021-11-08)

### Chores

- chore: Bump Amplify iOS to 1.15.5

## 0.2.6 (2021-10-25)

## 0.2.5 (2021-10-14)

### Fixes

- fix(auth): Add global sign out
- fix(auth): Support `preferPrivateSession` flag

## 0.2.4 (2021-09-10)

### Fixes

- fix: CocoaPods relative import

## 0.2.3 (2021-09-09)

### Features

- feat(auth): OIDC/Lambda Support (#777)
- feat(auth): add options to updateAttribute, updateAttributes, resendUserAttributeConfirmationCode (#775)
- feat(auth): add support for options to resetPassword, confirmResetPassword (#743)
- feat(auth): add options to resendSignUpCode (#738)

### Chores

- chore: upgrade amplify-android 1.24.1 (#829)

## 0.2.2 (2021-08-04)

### Features

- feat: enables clientMetadata for signUp (#713)
- feat: Auth Devices API (#735)

## 0.2.1 (2021-07-27)

### Bug Fixes

- fix: handle new hosted ui android activity (#706)
- fix: handle missing or empty signUpOptions (#627)
- fix: handle InvalidStateException (#625)

### Chores

- chore: upgrade amplify-android to 1.20.1 (#710)
- chore: user attributes/sign up docs (#697)
- chore: enable formatting in CI w/ code changes (#570)
- chore: integration tests for user attributes (#640)
- chore: add integration test coverage for auth (#724)

## 0.2.0 (2021-06-30)

### Breaking Changes

- AuthCodeDeliveryDetails are now nullable within the nextStep member of the CognitoSignInResult, CognitoSignUpResult, and CognitoResetPasswordResult classes.
- AWSCredentials and AWSCognitoUserPoolTokens are now nullable within the CognitoAuthSession class.

### Features

- feat: Null Safety Auth (#536)
- feat: Null safety core (#492)

### Bug Fixes

- fix: uses nextStep helper for signInResult on Android (#689)
- fix(amplify_auth_cognito): update user attribute serialization (#684)
- fix(amplify_auth_cognito): Remove use of TypeToken (#683)
- fix(auth_auth_cognito): Type mismatch: inferred type (#653)
- fix: Null safety master fixes pr (#614)
- fix(amplify_auth_cognito): fixes auth null safety issues #613

### Chores

- chore: Null safety master rebase (#676)

## 0.1.6 (2021-06-23)

### Features

- feat: add updateUserAttributes (batch) (#601)

### Bug Fixes

- fix: amplify-ios version bump (#648)
- fix: adds userAttributes to confirmSignIn (#607)
- fix(amplify_auth_cognito): iOS/Android user attribute inconsistencies (#620)
- fix: Add clientMetadata to confirmSignUp API options (#619)
- fix: address issue #577 by changing iOS error to UserNotConfirmedException (#583)

### Chores

- chore: upgrade amplify-android to 1.19.0 (#650)
- chore: foundation for integration tests and basic auth suite with signIn and signOut (#568)
- chore: pin Amplify iOS to '~> 1.9.2' (#589)

## 0.1.5 (2021-05-17)

### Features

- feat: add user attribute auth methods `updateUserAttribute`, `confirmUserAttribute`, `resendUserAttributeConfirmationCode` (#533)

### Bug Fixes

- fix: pass additionalInfo to `AuthNextSignUpStep` (#545)

## 0.1.4 (2021-04-27)

### Bug Fixes

- fix: Remove logging of unhandled Hub auth events (#517)
- fix: Confirm sign in options (#538)

## 0.1.3 (2021-04-21)

### Bug Fixes

- fix(amplify_auth_cognito): SignInOptions and ClientMetadata (#519)
- fix: handle LimitExceededException on Android (#522)

## 0.1.2 (2021-04-16)

### Bug Fixes

- fix: handle hot restart (#491)

## 0.1.1 (2021-03-29)

### Bug Fixes

- fix: Move AddPlugin from Register to MethodChannel (#411)
- fix: upgrade plugin_platform_interface (#447)
- fix: upgrade uuid (#448)
- fix: call return in addPlugin (#478)

## 0.1.0 (2021-02-15)

### Features

- feat: sign in with apple (#378)

### Chores

- chore: Bump android version to 1.16.13 (#391)

### Bug Fixes

- fix: force signOut when signedIn (#369)
- fix: android throws SessionExpiredException instead of SignedOutException (#372)
- fix: fix compile issue with newer gradle plugin (#381)
- fix: deprecate globalSignOut; simple user check upon Android signIn (#386)

## 0.0.2-dev.2 (2021-02-09)

### Features

- feat: Add support for fetchUserAttributes (#343)

### Chores

- chore: Refactor error handling to use the new AuthException types (#322)
- chore: Updated amplify-android version 1.6.10 (#332)

### Bug Fixes

- fix: MissingPluginException when android app restarts (#345)
- fix: force user attribute to be string (#362)

## 0.0.2-dev.1 (2021-01-25)

### Features

- feature: Amplify Auth Hosted UI (#309)

### Chores

- chore: Refactor Hub streams (#262)
- chore: Refactor amplify_core into amplify_flutter (#273)
- chore: Add a new amplify_core package for base types and utilities (#275)

## 0.0.1-dev.6 (2021-01-04)

### Bug Fixes

- fix: fix relative path for coverage.gradle to be local to the package (#293)

## 0.0.1-dev.5 (2020-12-31)

### Chores

- chore: Updated amplify-android version 1.6.8. (#261)
- chore: add some missing headers on kotlin files (#269)

## 0.0.1-dev.4 (2020-12-03)

### Bug Fixes

- Updated amplify-android library version to v1.6.6
- Updated amplify-ios library version to v1.4.4
- Fixed bugs preventing guest credentials from being provided from native code to Dart
- Fixed bugs preventing session tokens from being provided from native code to Dart (#178).
- Fixed bugs preventing user pool tokens from being provided from native code to Dart when configuration includes Cognito User Pools without Cogito Identity Pools (#148 & #163).

## 0.0.1-dev.3 (2020-10-08)

### Bug Fixes

- fix(amplify_auth_cognito): throw error in iOS for unconfirmed user signin
- fix(amplify_auth_cognito): returns AuthError instead of missing method error
- feat(amplify_auth_cognito): iOS unit tests
- fix(amplify_auth_cognito): fix example app Podfile
- feat(amplify_auth_cognito): integration test initial pass
- fix(amplify_auth_cognito): truncates android resendsignup response
- Update example podspecs
- fix(amplify_auth_cognito): event stream destruction
- chore: unify gradle versions across repo

## 0.0.1-dev.2 (2020-08-24)

### Features

- Add `getCurrentUser` method.

### Bug Fixes

- Bump Android `aws-auth-cognito` dependency version to 1.1.3.

## 0.0.1-dev.1 (2020-08-17)

- Initial preview release.
