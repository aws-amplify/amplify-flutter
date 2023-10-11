## 1.4.1

### Fixes
- fix(auth): Crash with EXC_BAD_ACCESS ([#3657](https://github.com/aws-amplify/amplify-flutter/pull/3657))
- fix(auth): Custom auth with device tracking, no SRP ([#3652](https://github.com/aws-amplify/amplify-flutter/pull/3652))
- fix(auth): Uncaught Hosted UI cancellation ([#3686](https://github.com/aws-amplify/amplify-flutter/pull/3686))
- fix: removed trailing slash at the end of uri ([#3626](https://github.com/aws-amplify/amplify-flutter/pull/3626))

## 1.4.0

### Features
- feat(auth): TOTP MFA
- feat(authenticator): TOTP MFA ([#3609](https://github.com/aws-amplify/amplify-flutter/pull/3609))

### Fixes
- fix(analytics): AWSPinpointUserProfile Added null check for user attributes ([#3598](https://github.com/aws-amplify/amplify-flutter/pull/3598))
- fix(auth): SDK exception mapping
- fix(datastore): Use platform thread ([#3607](https://github.com/aws-amplify/amplify-flutter/pull/3607))

## 1.3.3

### Fixes
- fix(auth): Pass `deviceKey` in custom auth challenge
- fix(push): Deserialization from platform maps ([#3557](https://github.com/aws-amplify/amplify-flutter/pull/3557))

## 1.3.2

### Fixes
- fix(core): Cross-zone completion
- fix(datastore): Custom list serde ([#3544](https://github.com/aws-amplify/amplify-flutter/pull/3544))

## 1.3.1

### Fixes
- fix(auth): Android Hosted UI flakiness
- fix(datastore): hot restart ([#3497](https://github.com/aws-amplify/amplify-flutter/pull/3497))
- fix(datastore): make event history list thread safe ([#3509](https://github.com/aws-amplify/amplify-flutter/pull/3509))
- fix(push): Incorrect handling of simple alert ([#3502](https://github.com/aws-amplify/amplify-flutter/pull/3502))

## 1.3.0

### Features
- feat(auth): Enable ASF
- feat(datastore): Adds DataStoreHubEventType to DataStoreHubEvents ([#3454](https://github.com/aws-amplify/amplify-flutter/pull/3454))
- feat(logging): logger can register one plugin per type in a logger hierarchy ([#3173](https://github.com/aws-amplify/amplify-flutter/pull/3173))
- feat(storage): example app ([#3359](https://github.com/aws-amplify/amplify-flutter/pull/3359))

## 1.2.1

### Fixes
- fix(analytics): Disallowed unauth access
- fix(storage): list options pageSize and nextToken params got lost ([#3291](https://github.com/aws-amplify/amplify-flutter/pull/3291))

## 1.2.0

### Fixes
- fix(auth): Attribute key equality ([#3136](https://github.com/aws-amplify/amplify-flutter/pull/3136))
- fix(auth): `signOut` after user deletion ([#3162](https://github.com/aws-amplify/amplify-flutter/pull/3162))

### Features
- feat(storage): using path style URLs when bucket name contains dots

## 1.1.1

### Fixes
- fix(auth): remove duplicate continuation call for hosted UI ([#3112](https://github.com/aws-amplify/amplify-flutter/pull/3112))
- fix(datastore): support nested predicates for observe and observeQuery ([#3029](https://github.com/aws-amplify/amplify-flutter/pull/3029))
- fix: suppress browser on sign out when preferPrivateSession is true ([#3099](https://github.com/aws-amplify/amplify-flutter/pull/3099))
- fix(auth): User attribute serialization

## 1.1.0

### Features
- Dart 3 support (must update Dart SDK constraint to `^3.0.0`)
- feat(core): add granular model read operations ([#2611](https://github.com/aws-amplify/amplify-flutter/pull/2611))

### Fixes
- fix(notifications): configure call hangs on Flutter app hot restart ([#3013](https://github.com/aws-amplify/amplify-flutter/pull/3013))
- fix(repo): AGP 8.0 compatibility ([#2942](https://github.com/aws-amplify/amplify-flutter/pull/2942))
- fix: wait for addPlugin prior to configuration ([#3018](https://github.com/aws-amplify/amplify-flutter/pull/3018))

## 1.0.1

### Fixes
- fix(repo): Flutter 3.3 support
- fix: convert AuthUserAttributeKey in updateUserAttributes

## 1.0.0

We are thrilled to release version 1.0 of the Amplify Flutter libraries!

This release introduces a full rewrite of the Amplify libraries in Dart, allowing you to build AWS cloud-connected
applications on every platform Flutter supports (iOS, Android, Web, macOS, Windows, and Linux).

If you've been using v0 in production, you can now safely migrate to v1. Check out our 
[migration guide](https://docs.amplify.aws/lib/project-setup/upgrade-guide/q/platform/flutter/) for 
more information.

As always, you can find us on [GitHub](https://github.com/aws-amplify/amplify-flutter/) and 
[Discord](https://discord.gg/jWVbPfC) to answer any questions.

## 1.0.0-next.8+1

### Features
- feat(notifications): implement push notification Flutter iOS module ([#2707](https://github.com/aws-amplify/amplify-flutter/pull/2707))
- feat(notifications): killed state notification handling and Analytics integration ([#2747](https://github.com/aws-amplify/amplify-flutter/pull/2747))
- feat(push): interfaces, category function and types added for push

### Fixes
- fix(core): formatting issues in notifications data types
- fix(notifications): Analytics naming updates, Android test fixes and token received bug fix ([#2824](https://github.com/aws-amplify/amplify-flutter/pull/2824))
- fix(notifications): analyzer reported issues
- fix(notifications): correct rebased codebase
- fix(notifications): killed state behavior correction, no longer calls lib/main.dart ([#2759](https://github.com/aws-amplify/amplify-flutter/pull/2759))
- fix(notifications): the luanch notification should be nullified on some occasions
- fix(notifications): type casting error and clean up example app ([#2817](https://github.com/aws-amplify/amplify-flutter/pull/2817))

## 1.0.0-next.8

### Breaking Changes
- chore(analytics)!: Remove Analytics Prefix ([#2753](https://github.com/aws-amplify/amplify-flutter/pull/2753))
- chore(analytics)!: export endpointManager, redo exports
- chore(auth)!: send Pinpoint Endpoint id to Cognito
- feat(storage)!: update upload APIs options to add metadata field ([#2815](https://github.com/aws-amplify/amplify-flutter/pull/2815))
- refactor(auth)!: Remove generic types ([#2804](https://github.com/aws-amplify/amplify-flutter/pull/2804))
- refactor(core)!: Dependency management
- refactor(storage)!: rename checkObjectExistence to validateObjectExistence
- refactor(storage)!: storage category APIs to use category level plugin options ([#2754](https://github.com/aws-amplify/amplify-flutter/pull/2754))
- chore(secure_storage)!: add factory constructor, mark AmplifySecureStorage as internal ([#2607](https://github.com/aws-amplify/amplify-flutter/pull/2607))

### Fixes
- fix(api): Auth provider registration
- fix(api): Include owner field in selection set ([#2795](https://github.com/aws-amplify/amplify-flutter/pull/2795))
- fix(api): Support model definition target name ([#2814](https://github.com/aws-amplify/amplify-flutter/pull/2814))
- fix(auth): Always allow repeated `confirmSignIn` attempts
- fix(auth): Process sign-in events once
- fix(secure_storage): resolve conflict with win32 package ([#2829](https://github.com/aws-amplify/amplify-flutter/pull/2829))

### Features
- feat(storage): add generic StorageOperationCanceledException in core
- feat(storage): add handling of non-ascii object metadata values
- feat(storage): make access level optional for storage APIs ([#2793](https://github.com/aws-amplify/amplify-flutter/pull/2793))
- feat(storage): promote StorageTransferState to amplify_core

## 1.0.0-next.7

### Breaking Changes
- chore(datastore)!: Reorganize + import cleanup ([#2760](https://github.com/aws-amplify/amplify-flutter/pull/2760))
- refactor(auth)!: Plugin options ([#2691](https://github.com/aws-amplify/amplify-flutter/pull/2691))

### Fixes
- fix(android): Bump Amplify Android to 2.4.1
- fix(core): Refine `toJson` outputs when `createFactory = false`
- fix(datastore): support use of java8 features in the example App
- fix(ios): Bump Amplify iOS to 1.29.1

## 1.0.0-next.6

### Breaking Changes
- chore(core)!: Chain stack traces for state machines
- feat(api)!: custom primary key support for GraphQL model helpers ([#2606](https://github.com/aws-amplify/amplify-flutter/pull/2606))

### Fixes
- fix(auth): Await `signInUri` in Hosted UI platform ([#2706](https://github.com/aws-amplify/amplify-flutter/pull/2706))

## 1.0.0-next.5+1

- Minor bug fixes and improvements

## 1.0.0-next.5

### Breaking Changes
- chore(auth)!: Change `AuthCodeDeliveryDetails.attributeKey` to be of type `AuthUserAttributeKey`
- refactor(auth)!: Make attribute update step an enum
- refactor(auth)!: Make reset password step an enum
- refactor(auth)!: Make sign-in step an enum
- refactor(auth)!: Make sign-up step an enum
- refactor(auth)!: Remove category->plugin indirection for `getPlugin`
- refactor(auth)!: State machine facade ([#2482](https://github.com/aws-amplify/amplify-flutter/pull/2482))

### Features
- feat(analytics): Use indexedDB on Web ([#2600](https://github.com/aws-amplify/amplify-flutter/pull/2600))
- feat(storage): enable pause and cancel APIs for download operations

### Fixes
- fix(api): Web Socket Multiple Requests Synchronously ([#2567](https://github.com/aws-amplify/amplify-flutter/pull/2567))
- fix(auth): `federateToIdentityPool` discrepancies

## 1.0.0-next.4

### Breaking Changes
- fix(auth)!: Fetch Auth Session offline behavior ([#2585](https://github.com/aws-amplify/amplify-flutter/pull/2585))

### Fixes
- fix(api): do not include null values in ModelMutations.create ([#2504](https://github.com/aws-amplify/amplify-flutter/pull/2504))
- fix(api): model helpers use targetNames in schemas with CPK enabled ([#2559](https://github.com/aws-amplify/amplify-flutter/pull/2559))
- fix(auth): SessionExpired Auth Hub event ([#2609](https://github.com/aws-amplify/amplify-flutter/pull/2609))
- fix(datastore): prevent unhandled exception crashing App rebuilding sync expression

### Features
- feat(analytics): Legacy data migration of Pinpoint Endpoint ID ([#2489](https://github.com/aws-amplify/amplify-flutter/pull/2489))

## 1.0.0-next.3

### Breaking Changes
- chore(auth)!: Remove `isPreferPrivateSession` from `CognitoSignOutWithWebUIOptions` ([#2538](https://github.com/aws-amplify/amplify-flutter/pull/2538))
- refactor(auth)!: Align exception types
- refactor(auth)!: Remove intermediate request types ([#2475](https://github.com/aws-amplify/amplify-flutter/pull/2475))
- refactor(core)!: Migrate exception types

### Fixes
- fix(analytics): Secure storage on Android ([#2530](https://github.com/aws-amplify/amplify-flutter/pull/2530))
- fix(api): SubscriptionDataPayload error decoding type fix ([#2483](https://github.com/aws-amplify/amplify-flutter/pull/2483))
- fix(api): improve GQL subscription error visibility/recovery ([#2507](https://github.com/aws-amplify/amplify-flutter/pull/2507))
- fix(api): prevent GQL subscription race condition error after shutdown ([#2494](https://github.com/aws-amplify/amplify-flutter/pull/2494))
- fix(storage): update expected exception types in integ tests

## 1.0.0-next.2

### Breaking Changes
- chore(auth)!: Make sign in result's `nextStep` non-null ([#2462](https://github.com/aws-amplify/amplify-flutter/pull/2462))
- feat(api)!: Web Socket State Machine  ([#2458](https://github.com/aws-amplify/amplify-flutter/pull/2458))
- feat(auth)!: Support partial sign out cases ([#2436](https://github.com/aws-amplify/amplify-flutter/pull/2436))

### Fixes
- fix(api): support multiple belongsTo ([#2087](https://github.com/aws-amplify/amplify-flutter/pull/2087))
- fix(auth): Can't resubmit verification code ([#2468](https://github.com/aws-amplify/amplify-flutter/pull/2468))

### Features
- feat(auth): Add user ID to `CognitoSignUpResult` ([#2437](https://github.com/aws-amplify/amplify-flutter/pull/2437))

## 1.0.0-next.1+1

### Fixes
- fix(core): Configure all plugins

## 1.0.0-next.1

### Breaking Changes

Three new categories have added support for Web + Desktop: API, Storage, and Analytics!

See our [docs](https://docs.amplify.aws/lib/q/platform/flutter/) for guides on how to migrate to these new versions.

- chore(api,core): change API types ([#2148](https://github.com/aws-amplify/amplify-flutter/pull/2148))
- chore(storage): migrate interface and setup basic packages 

### Features
- feat(api): GraphQL Custom Request Headers ([#1938](https://github.com/aws-amplify/amplify-flutter/pull/1938))
- feat(api): Subscription Reconnection ([#2074](https://github.com/aws-amplify/amplify-flutter/pull/2074))
- feat(api): authorizationMode property for GraphQLRequest ([#2143](https://github.com/aws-amplify/amplify-flutter/pull/2143))
- feat(core): add AWSFile cross platform file abstraction
- feat(storage): add custom prefix resolver support
- feat(storage): cancel SmithyOperation on upload file pause and cancel
- feat(storage): expose operation control APIs for upload data operation
- feat(storage): revise list API interface and add excludeSubPaths parameter

### Fixes
- fix(api): correct subscription error handling ([#2179](https://github.com/aws-amplify/amplify-flutter/pull/2179))
- fix(api): fix model helper util on web ([#2270](https://github.com/aws-amplify/amplify-flutter/pull/2270))

## 1.0.0-next.0+5

### Features
- feat(auth): SignInDetails

### Fixes
- fix(auth): Support Cognito proxies
- fix(authenticator): Configuration error handling
- fix(authenticator): remove unnecessary assertion in PendingVerificationCheckState constructor ([#2325](https://github.com/aws-amplify/amplify-flutter/pull/2325))

## 1.0.0-next.0+4

- Minor bug fixes and improvements

## 1.0.0-next.0+3

- Minor bug fixes and improvements

## 1.0.0-next.0+2

- Minor bug fixes and improvements

## 1.0.0-next.0+1

- Fix package analysis issues

## 1.0.0-next.0 (2022-08-02)

Initial developer preview release for all platforms.

### Developer Preview

The Amplify Flutter libraries are being rewritten in Dart. This version is part of our developer preview for all platforms and is **not** intended for production usage. Please follow our [Web](https://github.com/aws-amplify/amplify-flutter/issues/234) and [Desktop](https://github.com/aws-amplify/amplify-flutter/issues/133) support tickets to monitor the status of supported categories. We will be releasing Web and Desktop support for all Amplify categories incrementally.

For production use cases please use the latest, non-tagged versions of amplify-flutter packages from `pub.dev`. They offer a stable, production-ready experience for Android and iOS.

## 0.5.0 (2022-05-17)

### Breaking Changes

- **Auth**: Auth API Changes

  - Previously, the [`Amplify.Auth.deleteUser`](https://docs.amplify.aws/lib/auth/delete_user/q/platform/flutter/) API would throw `UnimplementedException` when it was called on Android platform. When this release, this API becomes functional and will delete currently signed in user on Android platform.
  
    **How to Migrate:**

    - Remove unwanted calls of the `Amplify.Auth.deleteUser` API, if you were handling the `UnimplementedException` exception for Android

  - Custom Auth flows are now available with passwordless logins. To support this change, the password attribute is now optional in the `Auth.signIn` API. While this should not prove breaking in most cases, we are calling it out since it alters a very commonly used API.

    **How to Migrate:**

    - Pass null to the `Auth.signIn` API only for passwordless login, using Cognito Custom Auth flows

### Features

- feat(auth): add deleteUser support for Android (#1540)
- feat(auth): enables custom auth flows (#1444)
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
- chore: enable dependabot (#1568)
- chore: Flutter 3 fixes (#1580)
- chore: bump amplify-android version to 1.35.3 (#1586)
- chore: downgrade amplify-android to 1.33.0 (#1591)

## 0.4.5 (2022-04-13)

-fix: bumps ios version and bumps api AuthProvider timeout (#1526)

## 0.4.4 (2022-04-06)

- fix(api): JNI issues (#1509)

## 0.4.3 (2022-04-02)

- chore: bump amplify-ios to 1.22.3

## 0.4.2 (2022-03-24)

- fix(api): model helpers query predicates correctly translates query by associated id (#1417)
- chore(api): support decoding custom list request (#1420)

- chore(datastore): enable query predicate integration tests for float values (#1454)

- chore(analytics): switch to federated plugins (#1378)
- fix(analytics): adds flutter sdk to example apps (#1465)

- chore(auth): fix pubspec urls (#1424)
- chore(auth): federated plugin (#1349)

- chore(storage): federated plugin (#1407)

- chore: bump amplify-android to 1.32.1 (#1448)
- chore: bump amplify-ios to 1.22.0 (#1468)

## 0.4.1 (2022-02-28)

- fix: Export category interfaces

## 0.4.0 (2022-02-17)

- chore(flutter): Fix AtomicResultTest (#1363)
- fix(amplify_flutter): updates for latest flutter and dart versions #1333
- feat(amplify_flutter): allow customers to override AmplifyClass methods #1325
- fix(flutter): Password settings parsing #1323
- chore: bump Kotlin version to 1.6.10 (#1346)

### Breaking Changes

- If your app has a dependency on Kotlin, the value of `ext.kotlin_version` set in `android/build.gradle` must be 1.5.31 or greater (1.6.10 recommended)

## 0.3.2 (2022-01-21)

- chore: bump amplify-android to 1.31.2

## 0.3.1 (2022-01-20)

- chore: bump amplify-ios to 1.18.3

## 0.3.0 (2022-01-20)

### Breaking Changes

- **Flutter**: Linting & clean up (#1202)

  **How to Migrate:**

  - Update all imports of `import 'package:amplify_flutter/amplify.dart';` to import `'package:amplify_flutter/amplify_flutter.dart';`

- **API**: This version changes GraphQL subscription interface to use Streams. See the [amplify_api](https://pub.dev/packages/amplify_api) page for additional information.

- **Auth**: The `fetchAuthSession` API will throw a SignedOutException when the user has not signed in, and a SessionExpiredException when the tokens have expired.
- **Auth**: The `getCurrentUser` API will return an AuthUser if the user is still authenticated but the session has expired.

- **DataStore**: `ModelProvider` and `ModelField` interface changes

  **How to Migrate:**

  - Install the required version of `@aws-amplify/cli` as described on the [amplify_datastore](https://pub.dev/packages/amplify_datastore) page
  - Run `amplify codegen models` to regenerate models

- **DataStore**: This version introduces a breaking change to Android Apps as an existing bug writes `Double` and `Boolean` values as `TEXT` in local SQLite database. The fix corrects this behavior. Hence, directly applying this fix may raise SQL error while reading from and writing to local database.

  **How to Migrate:**

  Invoke [`Amplify.DataStore.clear()`](https://docs.amplify.aws/lib/datastore/sync/q/platform/flutter/#clear-local-data) on App start after upgrading to the latest version of Amplify Flutter. This API clears and recreates local database table with correct schema.

  NOTE: Data stored in local database and not synced to cloud will be lost, as [local migration is not supported](https://docs.amplify.aws/lib/datastore/schema-updates/q/platform/flutter/#local-migrations).

### Features

- [Amplify Authenticator](https://pub.dev/packages/amplify_authenticator) preview release!
- New `AmplifyConfig` type for fully-typed configurations
- feat(api): GraphQL Subscription Stream (#905)
- feat(datastore): Add CustomType functionality (#847)
- feat(datastore): Add ModelField ReadOnly support (#599)

### Fixes

- fix(api): remove tabs from graphql document strings in android (#1178)
- fix(api): OIDC Fixes for REST/GraphQL
- fix(auth): throw SignedOutException (#893)
- fix(auth): fixes getCurrentUser disparity (#894)
- fix(auth): remove int.parse from AuthUserAttribute (#1169)
- fix(datastore): configure function triggers initial sync unexpectedly (#986)
- fix(datastore): fix error map from ios (#1126)
- break(datastore): cannot saving boolean as integer in SQLite (#895)

### Chores

- chore(core): Linting & clean up (#1202)
- chore(core): Add copyWith helpers (#1235)

## 0.2.10 (2021-11-23)

### Fixes

- fix(auth): Fix coroutines crash (#1132)
- fix(auth): Remove duplicate AtomicResult (#1133)

## 0.2.9 (2021-11-17)

- chore: upgrade amplify-android to 1.28.3-rc

## 0.2.8 (2021-11-12)

### Fixes

- fix(api): "Reply already submitted" crashes (#1058)
- fix(auth): (Android) Dropped exceptions in hosted UI cause `signInWithWebUI` to not return (#1015)
- fix(datastore): (Android) Fix DataStore release mode crash (#1064)
- fix(storage): DateTime formatting and parsing (#1044, #1062)
- fix(storage): Storage.list crash on null "options" (#1061)

## 0.2.7 (2021-11-08)

### Chores

- chore: Bump Amplify iOS to 1.15.5

### Fixes

- fix(api): Fix OIDC/Lambda in REST/GraphQL on Android
- fix(datastore): Temporal date/time query predicates
- fix(datastore): Android TemporalTime Save Issue

## 0.2.6 (2021-10-25)

### Fixes

- fix(datastore): Re-emit events on hot restart

### Features

- feat(datastore): Add observeQuery API
- feat(storage): Upload/download progress listener

## 0.2.5 (2021-10-14)

### Fixes

- fix(datastore): Sync issues with owner-based auth
- fix(datastore): Ensure attaching nested model schema
- fix(datastore): Timeout period not increasing
- fix(datastore): Remove default pagination behavior on iOS
- fix(api): OIDC/Lambda changes for DataStore
- fix(auth): Add global sign out
- fix(auth): Support `preferPrivateSession` flag

## 0.2.4 (2021-09-10)

### Fixes

- fix: CocoaPods relative import

## 0.2.3 (2021-09-09)

### Features

- feat(auth): add options to updateAttribute, updateAttributes, resendUserAttributeConfirmationCode (#775)
- feat(auth): add support for options to resetPassword, confirmResetPassword (#743)
- feat(auth): add options to resendSignUpCode (#738)

### Chores

- chore: upgrade amplify-android 1.24.1 (#829)

### Fixes

- fix(api): OIDC/Lambda Fixes (#862)

## 0.2.2 (2021-08-04)

### Features

- feat(auth): enables clientMetadata for signUp (#713)
- feat(auth): Auth Devices API (#735)
- feat(datastore): Populate belongs-to nested models (#658)

### Fixes

- fix(analytics): Session start not triggered on Android devices (#764)
- fix(api): prevent some fatal REST errors in Android (#661)
- fix(datastore): Query nested model causes column not found sql error (#761)

### Chores

- chore(api): add support for apiName to GraphQL requests (#553)

## 0.2.1 (2021-07-27)

### Chores

- chore: upgrade amplify-android to 1.20.1 (#710)
- chore: enable formatting in CI w/ code changes (#570)

## 0.2.0 (2021-06-30)

### Features

- feat: Null Safety Auth (#536)
- feat: Null safety core (#492)

### Bug Fixes

- fix: Null safety master fixes pr (#614)

### Chores

- chore: Null safety master rebase (#676)

## 0.1.6 (2021-06-23)

### Features

- feat: Add support of DataStore custom configuration (#610)
- feat: add updateUserAttributes (batch) (#601)

### Fixes

- fix: amplify-ios version bump (#648)
- fix: adds userAttributes to confirmSignIn (#607)
- fix: Add clientMetadata to confirmSignUp API options (#619)

### Chores

- chore: upgrade amplify-android to 1.19.0 (#650)
- chore: pin Amplify iOS to '~> 1.9.2' (#589)

## 0.1.5 (2021-05-17)

## 0.1.4 (2021-04-27)

### Bug Fixes

- fix: swallows exception on hot restart (#527)

## 0.1.3 (2021-04-21)

## 0.1.2 (2021-04-16)

### Bug Fixes

- fix: handle hot restart (#491)

## 0.1.1 (2021-03-29)

### Chores

- chore: remove upper constraints for flutter 2.0 (#479)
- chore(amplify_flutter): Add isConfigured API to Amplify (#452)

### Bug Fixes

- fix: Move AddPlugin from Register to MethodChannel (#411)
- fix: upgrade plugin_platform_interface (#447)

## 0.1.0 (2021-02-15)

### Chores

- chore: Bump android version to 1.16.13 (#391)

### Bug Fixes

- fix(amplify_api): Add @required annotation for subscribe callbacks (#392)

## 0.0.2-dev.2 (2021-02-09)

### Features

- feat: Implement the GraphQL Subscribe API (#338)

### Chores

- chore: Don't add API plugin by default for DataStore (#350)
- chore: Introduce new Temporal types (Date, DateTime, Time, Timestamp) for Dart codegen models (#307)
- chore: Updated amplify-android version 1.6.10 (#332)
- chore: Refactor error handling to use the new AmplifyException types (#314)

### Bug Fixes

- fix: MissingPluginException when android app restarts (#345)
- fix: Provide better error messages when configure() fails due to plugin's configuration not present (#355)

## 0.0.2-dev.1 (2021-01-25)

### Features

- feature: Amplify Auth Hosted UI (#309)

### Chore

- New package forked from amplify_core:0.0.1-dev.5 to provide top level Amplify facade APIs
