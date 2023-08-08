## 0.3.1

### Fixes
- fix(storage): API doc errors

### Features
- feat(storage): using path style URLs when bucket name contains dots

## 0.3.0+1

- Minor bug fixes and improvements

## 0.3.0

### Features
- Dart 3 support (must update Dart SDK constraint to `^3.0.0`)

## 0.2.0+3

### Fixes
- fix(repo): Flutter 3.3 support
- fix(storage): API doc errors

## 0.2.0+2

### Fixes
- fix(storage): API doc errors

## 0.2.0+1

- Minor bug fixes and improvements

## 0.2.0

### Breaking Changes
- feat(storage)!: update upload APIs options to add metadata field ([#2815](https://github.com/aws-amplify/amplify-flutter/pull/2815))
- fix(storage)!: make S3Exception internal
- refactor(storage)!: rename checkObjectExistence to validateObjectExistence
- refactor(storage)!: simplify storage s3 exceptions throwing
- refactor(storage)!: storage category APIs to use category level plugin options ([#2754](https://github.com/aws-amplify/amplify-flutter/pull/2754))

### Fixes
- fix(storage): Use `reifyPluginOptions` as instance method
- fix(storage): add handling of AWSHttpException
- fix(storage): remove unnecessary exception for resuming a canceled task

### Features
- feat(storage): add generic StorageOperationCanceledException in core
- feat(storage): add handling of non-ascii object metadata values
- feat(storage): make access level optional for storage APIs ([#2793](https://github.com/aws-amplify/amplify-flutter/pull/2793))
- feat(storage): promote StorageTransferState to amplify_core

## 0.1.7+1

- Minor bug fixes and improvements

## 0.1.7

### Features
- feat(storage): optimize part size for multipart upload
- feat(storage): web implementation of transfer database using local storage ([#2631](https://github.com/aws-amplify/amplify-flutter/pull/2631))

### Fixes
- fix(storage): GetUrl signing

## 0.1.6

### Features
- feat(storage): enable pause and cancel APIs for download operations

## 0.1.5

### Fixes
- fix(storage): incorrect transferred bytes emitted from upload task

### Features
- feat(storage): allow configuring transfer acceleration

## 0.1.4+1

- Minor bug fixes and improvements

## 0.1.4

### Fixes
- fix(storage): Create a new credential scope for each presigned url

## 0.1.3

### Fixes
- fix(storage): adapt updated AWSFile.contentType getter
- fix(storage): use correct fallback contentType for upload

## 0.1.2

- Minor bug fixes and improvements

## 0.1.1

### Fixes
- fix(storage): add missing contentType uploading AWSFile < 5MB

## 0.1.0 (2022-11-15)

Initial developer preview release for all platforms.

### Developer Preview

The Amplify Flutter libraries are being rewritten in Dart. This version is part of our developer preview for all platforms and is **not** intended for production usage. Please follow our [Web](https://github.com/aws-amplify/amplify-flutter/issues/234) and [Desktop](https://github.com/aws-amplify/amplify-flutter/issues/133) support tickets to monitor the status of supported categories. We will be releasing Web and Desktop support for all Amplify categories incrementally.

For production use cases please use the latest, non-tagged versions of amplify-flutter packages from `pub.dev`. They offer a stable, production-ready experience for Android and iOS.
