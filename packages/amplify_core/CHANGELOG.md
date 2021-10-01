## 0.2.4 (2021-09-10)

### Fixes

- fix: CocoaPods relative import

## 0.2.3 (2021-09-09)

### Features

- feat(auth): add options to resendSignUpCode (#738)

### Chores

- chore: upgrade amplify-android 1.24.1 (#829)
- chore(analytics): Apply lints (#810)
- chore(api): Apply lints (#812)

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

### Chores

- chore: Null safety master rebase (#676)

## 0.1.6 (2021-06-23)

### Features

- feat: Add support of DataStore custom configuration (#610)

### Chores

- chore: add httpStatusCode property to ApiException when available from REST response (#590)

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
- fix: upgrade plugin_platform_interface (#447)

### Features

- feat(amplify_core): add ktlint to amplify_core android (#403)

## 0.1.0 (2021-02-15)

### Chores

- chore: Bump android version to 1.16.13 (#391)

## 0.0.2-dev.2 (2021-02-09)

### Chores

- chore: Introduce new AmplifyException type and Error utilities (#314)

### Bug Fixes

- fix: MissingPluginException when android app restarts (#345)

## 0.0.2-dev.1 (2021-01-25)

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

### Chore

- Updated amplify-android library version to v1.6.6
- Updated amplify-ios library version to v1.4.4

## 0.0.1-dev.3 (2020-10-08)

### Bug Fixes

- fix(amplify_core): tracks configuration for hot restart
- Update example podspecs
- chore: unify gradle versions across repo

## 0.0.1-dev.2 (2020-08-24)

### Bug Fixes

- Bump Android `core` dependency version to 1.1.3.

## 0.0.1-dev.1 (2020-08-17)

- Initial preview release.
