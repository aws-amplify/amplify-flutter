## 0.6.0

### Breaking Changes
- feat(aws_common)!: Add credentials provider chain

## 0.5.1

### Features
- feat(aft): Generate AWS config ([#3424](https://github.com/aws-amplify/amplify-flutter/pull/3424))
- feat(logging): logger can register one plugin per type in a logger hierarchy ([#3173](https://github.com/aws-amplify/amplify-flutter/pull/3173))

## 0.5.0+3

- Minor bug fixes and improvements

## 0.5.0+2

### Fixes
- fix(core): Disallowed JS tearoff ([#3150](https://github.com/aws-amplify/amplify-flutter/pull/3150))

## 0.5.0+1

- Minor bug fixes and improvements

## 0.5.0

### Features
- Dart 3 support (must update Dart SDK constraint to `^3.0.0`)

## 0.4.2+5

### Fixes
- fix(repo): Flutter 3.3 support

## 0.4.2+4

- Minor bug fixes and improvements

## 0.4.2+3

- Minor bug fixes and improvements

## 0.4.2+2

### Fixes
- fix(http): Header casing in HTTP/2
- fix(sigv4): Query parameter encoding

## 0.4.2+1

### Fixes
- fix(aws_common): Explicitly serialize values
- fix(core): Refine `toJson` outputs when `createFactory = false`

## 0.4.2

### Features
- feat(aws_common): add openRead API for AWSFile

## 0.4.1+1

- Minor bug fixes and improvements

## 0.4.1

### Fixes
- fix(http): Cancel streamed responses ([#2545](https://github.com/aws-amplify/amplify-flutter/pull/2545))

### Features
- feat(analytics): Use indexedDB on Web ([#2600](https://github.com/aws-amplify/amplify-flutter/pull/2600))

## 0.4.0

### Fixes
- fix(aws_common): AWSFile contentType getter should not throw exception

## 0.3.5+1

- Minor bug fixes and improvements

## 0.3.5

- Minor bug fixes and improvements

## 0.3.4

### Features
- feat(aws_common): AWSFile basic mime type detection based on extension name
- feat(aws_common): allow specifying contentType initiating AWSFile

### Fixes
- fix(http): Synchronous cancellations on JS ([#2453](https://github.com/aws-amplify/amplify-flutter/pull/2453))

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
