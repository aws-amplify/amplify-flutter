## 0.4.5 (2022-04-13)

## 0.4.4 (2022-04-06)

## 0.4.3 (2022-04-02)

- chore: bump amplify-ios to 1.22.3

## 0.4.2 (2022-03-24)

- chore: enable query predicate integration tests for float values (#1454)
- chore: bump amplify-android to 1.32.1 (#1448)
- chore: bump amplify-ios to 1.22.0 (#1468)

## 0.4.1 (2022-02-28)

- fix: delete default predicate causes deletion failure (#1409)
- fix: observe may receive duplicate events in Android (#1339)

## 0.4.0 (2022-02-17)

- feat(datastore): Add QueryPredicate to Save/Delete (#1336)
- feat(datastore): Add QueryPredicate to Observe (#1332)
- fix(datastore): DataTime value comparison is inaccurate (#1326)
- chore: bump Kotlin version to 1.6.10 (#1346)
- chore(datastore): Export hub event types (#1330)
- fix(datastore): Hub memory usage (#1201)
- feat(datastore): Add QueryPredicate.all (#1310)
- chore(datastore): update integration tests schema (#1308)

### Breaking Changes

- If your app has a dependency on Kotlin, the value of `ext.kotlin_version` set in `android/build.gradle` must be 1.5.31 or greater (1.6.10 recommended)

## 0.3.2 (2022-01-21)

- chore: bump amplify-android to 1.31.2

## 0.3.1 (2022-01-20)

- chore: bump amplify-ios to 1.18.3

## 0.3.0 (2022-01-20)

This version requires version `>=7.6.10` of `@aws-amplify/cli`. You can install the latest version by running the command:

```
npm install -g @aws-amplify/cli
```

and to regenerate models, run the following command:

```
amplify codegen models
```

### Breaking Changes

- `ModelProvider` and `ModelField` interface changes

  **How to Migrate:**

  - Install the required version of `@aws-amplify/cli` described at the beginning of this section
  - Run `amplify codegen models` to regenerate models

- This version introduces a breaking change to Android Apps as an existing bug writes `Double` and `Boolean` values as `TEXT` in local SQLite database. The fix corrects this behavior. Hence, directly applying this fix may raise SQL error while reading from and writing to local database.

  **How to Migrate:**

  Invoke [`Amplify.DataStore.clear()`](https://docs.amplify.aws/lib/datastore/sync/q/platform/flutter/#clear-local-data) on App start after upgrading to the latest version of Amplify Flutter. This API clears and recreates local database table with correct schema.

  NOTE: Data stored in local database and not synced to cloud will be lost, as [local migration is not supported](https://docs.amplify.aws/lib/datastore/schema-updates/q/platform/flutter/#local-migrations).

### Features

- feat(datastore): Add CustomType functionality (#847)
- feat(datastore): Add ModelField ReadOnly support (#599)

### Fixes

- fix(datastore): configure function triggers initial sync unexpectedly (#986)
- fix(datastore): fix error map from ios (#1126)
- break(datastore): cannot saving boolean as integer in SQLite (#895)

## 0.2.10 (2021-11-23)

## 0.2.9 (2021-11-17)

- chore: upgrade amplify-android to 1.28.3-rc

## 0.2.8 (2021-11-12)

### Fixes

- fix(datastore): (Android) Fix DataStore release mode crash (#1064)

## 0.2.7 (2021-11-08)

### Chores

- chore: Bump Amplify iOS to 1.15.5

### Fixes

- fix(datastore): Temporal date/time query predicates
- fix(datastore): Android TemporalTime Save Issue

## 0.2.6 (2021-10-25)

### Fixes

- fix(datastore): Re-emit events on hot restart

### Features

- feat(datastore): Add observeQuery API

## 0.2.5 (2021-10-14)

### Fixes

- fix(datastore): Sync issues with owner-based auth
- fix(datastore): Ensure attaching nested model schema
- fix(datastore): Timeout period not increasing
- fix(datastore): Remove default pagination behavior on iOS

## 0.2.4 (2021-09-10)

### Fixes

- fix: CocoaPods relative import

## 0.2.3 (2021-09-09)

### Features

- feat(auth): OIDC/Lambda Support (#777)
- feat(datastore): Add start and stop APIs (#811)
- feat(auth): add options to resendSignUpCode (#738)

### Fixes

- fix(amplify_datastore): iOS json deserialization (#806)
- fix(amplify_datastore): Better loggin on unhandled DataStoreHubEvent (#647)
- fix(amplify_datastore): return null for list field in nested model (#843)
- fix(amplify_datastore): fix ios schema change bug (#439)

### Chores

- chore: upgrade amplify-android 1.24.1 (#829)

### Tests

- test(amplify_datastore): add local integration tests for datastore (#831)

## 0.2.2 (2021-08-04)

### Features

- feat: Populate belongs-to nested models (#658)

### Fixes

- fix: Query nested model causes column not found sql error (#761)

## 0.2.1 (2021-07-27)

### Features

- feat: Selective Sync (#703)

### Chores

- chore: upgrade amplify-android to 1.20.1 (#710)
- chore: enable formatting in CI w/ code changes (#570)
- chore: make SubscriptionEvent directly available via datastore plugin by adding to publicTypes in interface (#728)
- chore: add integration tests for datastore (#753)

## 0.2.0 (2021-06-30)

### Breaking Changes

- The previously deprecated configureModelProvider function has been removed.

### Features

- feat: Null safety datastore (#649)
- feat: Null safety core (#492)

### Bug Fixes

- fix(amplify_datstore): mprovider compile issue (#681)
- fix(amplify_datastore): HubEvent null check (#670)

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

## 0.1.3 (2021-04-21)

## 0.1.2 (2021-04-16)

### Bug Fixes

- fix: handle hot restart (#491)

## 0.1.1 (2021-03-29)

### Chores

- chore: remove upper constraints for flutter 2.0 (#479)

### Bug Fixes

- fix(amplify_datastore): avoid tearing down iOS subscription after clear() (#399)
- fix: Move AddPlugin from Register to MethodChannel (#411)
- fix: upgrade melos (#436)
- fix: upgrade plugin_platform_interface (#447)

## 0.1.0 (2021-02-15)

### Chores

- chore: Bump android version to 1.16.13 (#391)

### Bug Fixes

- fix: Save enum lists properly in iOS (#374)

## 0.0.2-dev.2 (2021-02-09)

### Chores

- chore: Update Readme (#358)
- chore: Don't add API plugin by default for DataStore (#350)
- chore: Introduce new Temporal types (Date, DateTime, Time, Timestamp) for Dart codegen models (#307)
- chore: Refactor error handling to use the new DatastoreException types (#329)
- chore: Updated amplify-android version 1.6.10 (#332)
- chore: Remove adding API plugin by default (#350)

### Bug Fixes

- fix: MissingPluginException when android app restarts (#345)
- fix: Fix minor error handling in dart code (#356)
- fix: Export datastore types (#357)
- fix: Save lists properly in iOS for all types (#364)

## 0.0.2-dev.1 (2021-01-25)

### Chores

- chore: Refactor Hub streams (#262)
- chore: Refactor amplify_core into amplify_flutter (#273)
- chore: Add a new amplify_core package for base types and utilities (#275)
- fix: Send null instead of empty string for nullable enum (#301)

## 0.0.1-dev.6 (2021-01-04)

### Bug Fixes

- fix: fix relative path for coverage.gradle to be local to the package (#293)

## 0.0.1-dev.5 (2020-12-31)

### Chores

- chore(amplify_datastore) Update readme of the sample app (#238)
- chore: Updated amplify-android version 1.6.8. (#261)
- chore: add some missing headers on kotlin files (#269)

### Bug Fixes

- fix(amplify_datastore) Update sample app to match the new model codegen (#237)
- fix(amplify_datastore): Handle optional nullable enum types in parser (#254)

## 0.0.1-dev.4 (2020-12-03)

- Initial preview release of DataStore plugin.
