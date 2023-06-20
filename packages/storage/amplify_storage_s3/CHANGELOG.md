## 1.2.0

### Features
- feat(storage): using path style URLs when bucket name contains dots

## 1.1.1

- Minor bug fixes and improvements

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

### New Features in the Storage Category

* In-flight download and upload operations are now fully controllable.
    * NOTE: Downloading and uploading in the background is not yet supported.
* The `list` API now supports pagination.
* The new APIs `uploadData` and `downloadData` provide flexibility when dealing with data stored in memory.
    * `uploadData` supports uploading from various data formats such as raw bytes, JSON, strings, Data URLs, and more.
* The new API `getProperties` allows retrieving S3 object metadata without downloading the object. 
* New `copy`, `move`, and `removeMany` APIs now support better control of your files.
* Prefix customization is now supported.

### Bug Fixes

The following issues have been fixed in this release:

- When amplify storage upload start, we see an allow push notifications dialog on Android ([#2643](https://github.com/aws-amplify/amplify-flutter/issues/2643))
- Inconsistent Network Timeout between iOS and Android ([#774](https://github.com/aws-amplify/amplify-flutter/issues/774))
- S3 bucket only returning 1000 files ([#991](https://github.com/aws-amplify/amplify-flutter/issues/991))
- Returned value from Storage.downloadFile function do not resolve when is called with a expired session ([#926](https://github.com/aws-amplify/amplify-flutter/issues/926))

## 1.0.0-next.8+1

- Minor bug fixes and improvements

## 1.0.0-next.8

### Breaking Changes
- feat(storage)!: update upload APIs options to add metadata field ([#2815](https://github.com/aws-amplify/amplify-flutter/pull/2815))
- refactor(storage)!: rename checkObjectExistence to validateObjectExistence
- refactor(storage)!: storage category APIs to use category level plugin options ([#2754](https://github.com/aws-amplify/amplify-flutter/pull/2754))

### Features
- feat(storage): add handling of non-ascii object metadata values

## 1.0.0-next.7

- Minor bug fixes and improvements

## 1.0.0-next.6

### Features
- feat(storage): optimize part size for multipart upload
- feat(storage): web implementation of transfer database using local storage ([#2631](https://github.com/aws-amplify/amplify-flutter/pull/2631))

### Fixes
- fix(storage): GetUrl signing

## 1.0.0-next.5

- Minor bug fixes and improvements

## 1.0.0-next.4

- Minor bug fixes and improvements

## 1.0.0-next.3

### Fixes
- fix(storage): update expected exception types in integ tests

## 1.0.0-next.2+1

### Fixes
- fix(storage): Create a new credential scope for each presigned url

## 1.0.0-next.2

### Fixes
- fix(storage): adapt updated AWSFile.contentType getter
- fix(storage): use correct fallback contentType for upload

## 1.0.0-next.1+2

- Minor bug fixes and improvements

## 1.0.0-next.1+1

- Minor bug fixes and improvements

## 1.0.0-next.1

### Breaking Changes

Initial preview release of the Dart rewrite!

See our [docs](https://docs.amplify.aws/lib/q/platform/flutter/) for guides on how to migrate to this new version.

- chore(storage): migrate interface and setup basic packages 

### Features
- feat(storage): add custom prefix resolver support

## 1.0.0-next.0+4

- Minor bug fixes and improvements

## 1.0.0-next.0+3

- Minor bug fixes and improvements

## 1.0.0-next.0+2

- Minor bug fixes and improvements

## 1.0.0-next.0+1

- Minor bug fixes and improvements

## 1.0.0-next.0 (2022-08-02)

Initial developer preview release for all platforms.

### Developer Preview

The Amplify Flutter libraries are being rewritten in Dart. This version is part of our developer preview for all platforms and is **not** intended for production usage. Please follow our [Web](https://github.com/aws-amplify/amplify-flutter/issues/234) and [Desktop](https://github.com/aws-amplify/amplify-flutter/issues/133) support tickets to monitor the status of supported categories. We will be releasing Web and Desktop support for all Amplify categories incrementally.

For production use cases please use the latest, non-tagged versions of amplify-flutter packages from `pub.dev`. They offer a stable, production-ready experience for Android and iOS.

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
