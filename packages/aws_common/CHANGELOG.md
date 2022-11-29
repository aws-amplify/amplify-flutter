## 0.3.3

### Fixes
- fix(aws_common): AWSFile doc example

## 0.3.2

- Minor bug fixes and improvements

## 0.3.1

- Minor bug fixes and improvements

## 0.3.0

### Fixes
- fix(aws_common): fix HTTP cancel error/transform error ([#2294](https://github.com/aws-amplify/amplify-flutter/pull/2294))
- fix(common): Set contentLength to `-1` when unknown
- fix(common): staticInterop external member ([#2280](https://github.com/aws-amplify/amplify-flutter/pull/2280))

### Breaking Changes
- chore(common)!: Add `onCancel` to `AWSBaseHttpRequest.send`

### Features
- feat(core): AWS config file

## 0.2.4

### Features
- feat(http): Downgrade to HTTP/1.1 when possible ([#2243](https://github.com/aws-amplify/amplify-flutter/pull/2243))
- feat(smithy): IDL 2.0

### Fixes
- fix(http): `transformRequest` results in loop

## 0.2.3

### Fixes
- fix(aws): Cancellation of concurrent requests
- fix(aws_common): Case insentitive iteration

### Features
- feat(core): AWS HTTP

## 0.2.2

- Add `zAssertsEnabled` flag

## 0.2.1

- Fix package analysis issues

## 0.2.0

- Bump minimum Dart SDK to 2.17
- Consolidate `AWSHttpMethodHelper` into `AWSHttpMethod`
- Add `AWSDebuggable` mixin for debug-friendly `toString`
- Add `AWSLogger` class and utilities

## 0.1.0 (2022-05-17)

- Initial version.
