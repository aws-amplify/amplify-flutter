## 0.2.10 (2021-11-23)

## 0.2.9 (2021-11-17)

## 0.2.8 (2021-11-12)

### Fixes

- fix(datastore): (Android) Fix DataStore release mode crash (#1064)

## 0.2.7 (2021-11-08)

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

- feat(datastore): Add start and stop APIs (#811)

## 0.2.2 (2021-08-04)

### Features

- feat: Populate belongs-to nested models (#658)

### Fixes

- fix: Query nested model causes column not found sql error (#761)

## 0.2.1 (2021-07-27)

### Features

- feat: Selective Sync (#703)

### Bug Fixes

- fix: not serializing enum type in a predicate (#726)

### Chores

- chore: enable formatting in CI w/ code changes (#570)
- chore: make SubscriptionEvent directly available via datastore plugin by adding to publicTypes in interface (#728)

## 0.2.0 (2021-06-30)

### Features

- feat: Null safety datastore (#649)
- feat: Null safety core (#492)

### Bug Fixes

- fix(amplify_datastore_plugin_interface): Fix enum string function (#687)
- fix: Null safety master fixes pr (#614)

### Chores

- chore: Null safety master rebase (#676)

## 0.1.6 (2021-06-23)

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

- fix: Move AddPlugin from Register to MethodChannel (#411)
- fix: upgrade uuid (#448)

## 0.1.0 (2021-02-15)

### Chores

- chore: Release 0.1.0

## 0.0.2-dev.2 (2021-02-09)

### Chores

- chore: Introduce new Temporal types (Date, DateTime, Time, Timestamp) for Dart codegen models (#307)
- chore: Refactor error handling to use the new DatastoreException types (#329)
- chore: Updated amplify-android version 1.6.10 (#332)
- chore: Remove adding API plugin by default (#350)

### Bug Fixes

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
