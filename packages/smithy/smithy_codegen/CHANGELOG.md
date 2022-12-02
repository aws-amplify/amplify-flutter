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
- fix(smithy): Nullable input token in `rebuildInput`
- fix(smithy): Partial response in S3 GetObject

### Features
- feat(smithy): Expose `nextContinuationToken` from `PaginatedResult`

## 0.2.0

### Breaking Changes
- feat(smithy)!: Remove built types from factory constructors

### Features
- feat(smithy): IDL 2.0
- feat(smithy): `@httpChecksum` trait

### Fixes
- fix(smithy_codegen): XML payloads

## 0.1.1

- Minor bug fixes and improvements

## 0.1.0

Initial release
