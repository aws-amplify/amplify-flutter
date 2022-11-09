## 0.6.10 (2022-11-09)

## 0.6.9 (2022-10-12)

- feat(storage) : Support custom prefix (#2071)
- fix(storage): Custom Prefix Android (#2142)

## 0.6.8 (2022-09-19)

- fix(storage): Download to existing file (#2116)

- chore(storage): Update dependencies (#2116)
- chore(storage): Download to temp file (#2116)

## 0.6.7 (2022-09-07)

## 0.6.6 (2022-08-16)

## 0.6.5 (2022-07-28)

- chore: bump amplify-android dep to 1.36.5
- fix(storage): Amplify transfer service is running ([#1916](https://github.com/aws-amplify/amplify-flutter/issues/1916))
- fix(storage): ForegroundServiceDidNotStartInTimeException ([#1935](https://github.com/aws-amplify/amplify-flutter/issues/1935))

## 0.6.4 (2022-07-25)

- This release resolves an [issue](https://github.com/aws-amplify/amplify-flutter/issues/1916) in which storage operations were causing a persistent notification reading 'Amplify transfer service is running'. The underlying amplify-android library will now dismiss this notification once the transfer service finishes.

- chore: bump amplify-android dep to 1.36.4 ([#1918](https://github.com/aws-amplify/amplify-flutter/pull/1918))

## 0.6.3 (2022-07-21)

- fix(storage): throw pluginNotAddedException when storage plugin not c... ([#1903](https://github.com/aws-amplify/amplify-flutter/pull/1903))

## 0.6.2 (2022-07-14)

- chore: add meta to storage deps ([#1856](https://github.com/aws-amplify/amplify-flutter/pull/1856))

## 0.6.1 (2022-06-30)

## 0.6.0 (2022-06-20)

- Bump minimum Dart SDK to 2.15

## 0.5.1 (2022-05-24)

- Update pub.dev links

## 0.5.0 (2022-05-17)

### Chores

- chore: make example Android Apps runnable with API 32+ (#1474)
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

- chore: federated plugin (#1407)

## 0.4.1 (2022-02-28)

## 0.4.0 (2022-02-17)

- chore: bump Kotlin version to 1.6.10 (#1346)

### Breaking Changes

- If your app has a dependency on Kotlin, the value of `ext.kotlin_version` set in `android/build.gradle` must be 1.5.31 or greater (1.6.10 recommended)

## 0.3.2 (2022-01-21)

- chore: bump amplify-android to 1.31.2

## 0.3.1 (2022-01-20)

- chore: bump amplify-ios to 1.18.3

## 0.3.0 (2022-01-20)

## 0.2.10 (2021-11-23)

## 0.2.9 (2021-11-17)

- chore: upgrade amplify-android to 1.28.3-rc

## 0.2.8 (2021-11-12)

### Fixes

- fix(storage): DateTime formatting and parsing (#1044, #1062)
- fix(storage): Storage.list crash on null "options" (#1061)

## 0.2.7 (2021-11-08)

### Chores

- chore: Bump Amplify iOS to 1.15.5

## 0.2.6 (2021-10-25)

### Features

- feat(storage): Upload/download progress listener

## 0.2.5 (2021-10-14)

## 0.2.4 (2021-09-10)

### Fixes

- fix: CocoaPods relative import

## 0.2.3 (2021-09-09)

### Features

- feat(auth): OIDC/Lambda Support (#777)
- feat(auth): add options to resendSignUpCode (#738)

### Chores

- chore: upgrade amplify-android 1.24.1 (#829)

## 0.2.2 (2021-08-04)

## 0.2.1 (2021-07-27)

### Chores

- chore: upgrade amplify-android to 1.20.1 (#710)
- chore: enable formatting in CI w/ code changes (#570)
- chore: add storage integration tests and update example app (#734)

## 0.2.0 (2021-06-30)

### Features

- feat(amplify_storage_s3): Null safety (#485)
- feat: Null safety core (#492)

### Bug Fixes

- fix: Null safety master fixes pr (#614)

### Chores

- chore: Null safety master rebase (#676)

## 0.1.6 (2021-06-23)

### Features

- feat: add updateUserAttributes (batch) (#601)

### Fixes

- fix: amplify-ios version bump (#648)
- fix: adds userAttributes to confirmSignIn (#607)
- fix: Add clientMetadata to confirmSignUp API options (#619)

### Chores

- chore: upgrade amplify-android to 1.19.0 (#650)
- chore(amplify_storage_s3): remove check for duplicate error in Storage (#618)
- chore: pin Amplify iOS to '~> 1.9.2' (#589)

## 0.1.5 (2021-05-17)

## 0.1.4 (2021-04-27)

## 0.1.3 (2021-04-21)

## 0.1.2 (2021-04-16)

### Bug Fixes

- fix: handle hot restart (#491)

## 0.1.1 (2021-03-29)

### Bug Fixes

- fix: Move AddPlugin from Register to MethodChannel (#411)
- fix: upgrade plugin_platform_interface (#447)
- fix: Send only one error response when S3 download fails #456

## 0.1.0 (2021-02-15)

### Chores

- chore: Bump android version to 1.16.13 (#391)

### Bug Fixes

- fix: Allow path to be null for Storage.list() in Android (#384)

## 0.0.2-dev.2 (2021-02-09)

### Chores

- chore: Updated amplify-android version 1.6.10 (#332)
- chore: Refactor error handling to use the new StorageException types (#341)

### Bug Fixes

- fix: MissingPluginException when android app restarts (#345)

## 0.0.2-dev.1 (2021-01-25)

### Chores

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

- Update example podspecs
- chore: unify gradle versions across repo

## 0.0.1-dev.2 (2020-08-24)

### Bug Fixes

- Bump Android `aws-storage-s3` dependency version to 1.1.3.

## 0.0.1-dev.1 (2020-08-17)

- Initial preview release.
