## 0.7.1

- Minor bug fixes and improvements

## 0.7.0

### Breaking Changes
- feat!: remove error match on http status code ([#4750](https://github.com/aws-amplify/amplify-flutter/pull/4750))

## 0.6.3

### Features
- feat: update `built_value` version constraint ([#4634](https://github.com/aws-amplify/amplify-flutter/pull/4634))
- feat: update plus plugins version ([#4619](https://github.com/aws-amplify/amplify-flutter/pull/4619))

## 0.6.2

### Fixes
- fix: Bumped built_value to ">=8.6.0 <8.9.0" and built_value_generator to 8.8.1
- fix: Bumped path to ">=1.8.0 <2.0.0"
- fix: uncaught exception in smithy code ([#4369](https://github.com/aws-amplify/amplify-flutter/pull/4369))

## 0.6.1

- Minor bug fixes and improvements

## 0.6.0

### Breaking Changes
- fix(smithy_aws)!: do not sign optional requests

## 0.5.1

### Features
- feat(smithy): `ec2Query` protocol

## 0.5.0+4

- Minor bug fixes and improvements

## 0.5.0+3

- Minor bug fixes and improvements

## 0.5.0+2

- Minor bug fixes and improvements

## 0.5.0+1

- Minor bug fixes and improvements

## 0.5.0

### Features
- Dart 3 support (must update Dart SDK constraint to `^3.0.0`)
- feat(smithy): `awsQuery` protocol support

## 0.4.1+5

### Fixes
- fix(repo): Flutter 3.3 support

## 0.4.1+4

- Minor bug fixes and improvements

## 0.4.1+3

- Minor bug fixes and improvements

## 0.4.1+2

- Minor bug fixes and improvements

## 0.4.1+1

- Minor bug fixes and improvements

## 0.4.1

### Features
- feat(smithy_aws): add copyWith to S3ClientConfig

## 0.4.0

- Minor bug fixes and improvements

## 0.3.2

- Minor bug fixes and improvements

## 0.3.1

- Minor bug fixes and improvements

## 0.3.0

### Breaking Changes
- chore(common)!: Add `onCancel` to `AWSBaseHttpRequest.send`
- chore(smithy)!: Use base requests in `HttpRequestInterceptor`
- feat(smithy)!: Cancelable operations
- refactor(smithy)!: Use base HTTP response type

### Fixes
- fix(smithy): Add check for 2xx errors in S3 client
- fix(smithy): Incorrect port/scheme
- fix(smithy): Partial response in S3 GetObject
- fix(smithy): Propagate cancellation

## 0.2.0

### Breaking Changes
- feat(smithy)!: Remove built types from factory constructors

### Features
- feat(smithy): `@httpChecksum` trait

## 0.1.2

- Minor bug fixes and improvements

## 0.1.1

- Fix package analysis issues

## 0.1.0

- Initial version.
