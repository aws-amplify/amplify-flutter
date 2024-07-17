## 0.4.3

- Minor bug fixes and improvements

## 0.4.2

### Features
- feat: Support Amplify Gen 2 outputs ([#5073](https://github.com/aws-amplify/amplify-flutter/pull/5073))

## 0.4.1

- Minor bug fixes and improvements
  
## 0.4.0

### Breaking Changes
- feat!: use plugin options for optional plugin parameters ([#4762](https://github.com/aws-amplify/amplify-flutter/pull/4762))

## 0.3.8

### Features
- feat: update `built_value` version constraint ([#4634](https://github.com/aws-amplify/amplify-flutter/pull/4634))
- feat: update plus plugins version ([#4619](https://github.com/aws-amplify/amplify-flutter/pull/4619))

## 0.3.7

- Minor bug fixes and improvements

## 0.3.6

### Fixes
- fix: Bumped built_value to ">=8.6.0 <8.9.0" and built_value_generator to 8.8.1
- fix: Bumped drift to ">=2.14.0 <2.15.0" and drift_dev to ">=2.14.0 <2.15.0".
- fix: Bumped path to ">=1.8.0 <2.0.0"

## 0.3.5

- Minor bug fixes and improvements

## 0.3.4

- Minor bug fixes and improvements

## 0.3.3

### Fixes
- fix(analytics): allow nullable userProfile

## 0.3.2

### Fixes
- fix(analytics): event client flush events to do not discard events from cache on auth exception ([#3999](https://github.com/aws-amplify/amplify-flutter/pull/3999))
- fix: catch and log updateEndpoint error during configure ([#3985](https://github.com/aws-amplify/amplify-flutter/pull/3985))

## 0.3.1

- Minor bug fixes and improvements

## 0.3.0+7

### Fixes
- fix(analytics): AWSPinpointUserProfile Added null check for user attributes ([#3598](https://github.com/aws-amplify/amplify-flutter/pull/3598))

## 0.3.0+6

- Minor bug fixes and improvements

## 0.3.0+5

- Minor bug fixes and improvements

## 0.3.0+4

- Minor bug fixes and improvements

## 0.3.0+3

- Minor bug fixes and improvements

## 0.3.0+2

### Fixes
- fix(analytics): Disallowed unauth access

## 0.3.0+1

- Minor bug fixes and improvements

## 0.3.0

### Features
- Dart 3 support (must update Dart SDK constraint to `^3.0.0`)

## 0.2.0+3

### Fixes
- fix(repo): Flutter 3.3 support

## 0.2.0+2

- Minor bug fixes and improvements

## 0.2.0+1

- Minor bug fixes and improvements

## 0.2.0

### Breaking Changes
- chore(analytics)!: Remove Analytics Prefix ([#2753](https://github.com/aws-amplify/amplify-flutter/pull/2753))
- chore(analytics)!: export endpointManager, redo exports

## 0.1.4+3

### Fixes
- fix(analytics): event retry logic & max fail tries ([#2713](https://github.com/aws-amplify/amplify-flutter/pull/2713))

## 0.1.4+2

- Minor bug fixes and improvements

## 0.1.4+1

- Minor bug fixes and improvements

## 0.1.4

### Features
- feat(analytics): Use indexedDB on Web ([#2600](https://github.com/aws-amplify/amplify-flutter/pull/2600))

## 0.1.3

### Features
- feat(analytics): Legacy data migration of Pinpoint Endpoint ID ([#2489](https://github.com/aws-amplify/amplify-flutter/pull/2489))

## 0.1.2+1

- Minor bug fixes and improvements

## 0.1.2

- Minor bug fixes and improvements

## 0.1.1

- Minor bug fixes and improvements

## 0.1.0 (2022-11-15)

Initial developer preview release for all platforms.

### Developer Preview

The Amplify Flutter libraries are being rewritten in Dart. This version is part of our developer preview for all platforms and is **not** intended for production usage. Please follow our [Web](https://github.com/aws-amplify/amplify-flutter/issues/234) and [Desktop](https://github.com/aws-amplify/amplify-flutter/issues/133) support tickets to monitor the status of supported categories. We will be releasing Web and Desktop support for all Amplify categories incrementally.

For production use cases please use the latest, non-tagged versions of amplify-flutter packages from `pub.dev`. They offer a stable, production-ready experience for Android and iOS.
