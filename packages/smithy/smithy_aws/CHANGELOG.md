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
