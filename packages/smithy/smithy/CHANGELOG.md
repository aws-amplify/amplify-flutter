## 0.7.8

- Minor bug fixes and improvements

## 0.7.7

### Chores
- chore(all): Bump Dart SDK to 3.8.0 ([#6165](https://github.com/aws-amplify/amplify-flutter/pull/6165))

## 0.7.6

- Minor bug fixes and improvements

## 0.7.5

### Chores
- chore(all): Bump Dart SDK to 3.7.0 ([#6026](https://github.com/aws-amplify/amplify-flutter/pull/6026))

## 0.7.4

- Minor bug fixes and improvements

## 0.7.3

- Minor bug fixes and improvements

## 0.7.2

### Chores
- chore: bump json_annotation dependency to v4.9

## 0.7.1

- Minor bug fixes and improvements

## 0.7.0

### Breaking Changes
- feat!: remove error match on http status code ([#4750](https://github.com/aws-amplify/amplify-flutter/pull/4750))

## 0.6.4

### Features
- feat: update `built_value` version constraint ([#4634](https://github.com/aws-amplify/amplify-flutter/pull/4634))
- feat: update plus plugins version ([#4619](https://github.com/aws-amplify/amplify-flutter/pull/4619))

## 0.6.3

### Fixes
- fix: Bumped built_value to ">=8.6.0 <8.9.0" and built_value_generator to 8.8.1
- fix: Bumped path to ">=1.8.0 <2.0.0"
- fix: uncaught exception in smithy code ([#4369](https://github.com/aws-amplify/amplify-flutter/pull/4369))

## 0.6.2

- Minor bug fixes and improvements

## 0.6.1

- Minor bug fixes and improvements

## 0.6.0

### Fixes
- fix(smithy): defines Output type to fix beta tests ([#3963](https://github.com/aws-amplify/amplify-flutter/pull/3963))

### Breaking Changes
- fix(smithy_aws)!: do not sign optional requests

## 0.5.2

- Minor bug fixes and improvements

## 0.5.1

### Features
- feat(smithy): `ec2Query` protocol

## 0.5.0+4

- Minor bug fixes and improvements

## 0.5.0+3

### Fixes
- fix(analytics): Disallowed unauth access

## 0.5.0+2

- Minor bug fixes and improvements

## 0.5.0+1

- Minor bug fixes and improvements

## 0.5.0

### Features
- Dart 3 support (must update Dart SDK constraint to `^3.0.0`)
- feat(smithy): `awsQuery` protocol support

## 0.4.0+8

### Fixes
- fix(repo): Flutter 3.3 support

## 0.4.0+7

- Minor bug fixes and improvements

## 0.4.0+6

- Minor bug fixes and improvements

## 0.4.0+5

- Minor bug fixes and improvements

## 0.4.0+4

### Fixes
- fix(smithy): Handle uncaught exception ([#2720](https://github.com/aws-amplify/amplify-flutter/pull/2720))

## 0.4.0+3

- Minor bug fixes and improvements

## 0.4.0+2

### Fixes
- fix(http): Cancel streamed responses ([#2545](https://github.com/aws-amplify/amplify-flutter/pull/2545))

## 0.4.0+1

### Features
- feat(smithy_aws): add copyWith to S3ClientConfig

## 0.4.0

### Breaking Changes
- feat(aft)!: Add plugins to SDK generation

### Fixes
- fix(smithy): Retry behavior

## 0.3.2

### Features
- feat(smithy): Add `intEnum` support
- feat(smithy): Custom interceptor support

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
- fix(smithy): Default long ([#2278](https://github.com/aws-amplify/amplify-flutter/pull/2278))
- fix(smithy): Ensure baseClient's can transform request/response
- fix(smithy): Incorrect port/scheme
- fix(smithy): Nullable input token in `rebuildInput`
- fix(smithy): Only use explicit ports
- fix(smithy): Partial response in S3 GetObject
- fix(smithy): Progress listeners used after close
- fix(smithy): Propagate cancellation

### Features
- feat(smithy): Expose `nextContinuationToken` from `PaginatedResult`

## 0.2.0

### Breaking Changes
- feat(smithy)!: Remove built types from factory constructors

### Fixes
- fix(storage): Temporary build fix

### Features
- feat(smithy): IDL 2.0
- feat(smithy): `@httpChecksum` trait

## 0.1.1

- Minor bug fixes and improvements

## 0.1.0

- Initial version.
