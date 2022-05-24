## 0.5.1 (2022-05-24)

- fix(api): OperationsManager crash (#1598)
- fix(api): support enums in query predicates for model helpers (#1595)
- fix(datastore): invalid model id field name implication (#1600)
- fix(datastore): update in memory sorts and filters for IDs (#1597) 
- Update pub.dev links

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
