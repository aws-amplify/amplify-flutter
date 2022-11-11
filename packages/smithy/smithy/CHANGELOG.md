## 0.3.0

### Breaking Changes
- chore(smithy)!: Use base requests in `HttpRequestInterceptor`
- feat(smithy)!: Cancelable operations
- refactor(smithy)!: Use base HTTP response type

### Fixes
- fix(smithy): Ensure baseClient's can transform request/response
- fix(smithy): Only use explicit ports
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
