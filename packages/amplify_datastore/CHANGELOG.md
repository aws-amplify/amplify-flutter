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
