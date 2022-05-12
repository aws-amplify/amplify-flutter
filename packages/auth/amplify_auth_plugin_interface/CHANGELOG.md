## 0.5.0 (2022-05-12)

## 0.4.5 (2022-04-13)

-fix: bumps ios version and bumps api AuthProvider timeout (#1526)

## 0.4.4 (2022-04-06)

## 0.4.3 (2022-04-02)

## 0.4.2 (2022-03-24)

## 0.4.1 (2022-02-28)

## 0.4.0 (2022-02-17)

## 0.3.2 (2022-01-21)

- feat: add deleteUser API for iOS
- chore: bump amplify-android to 1.31.2

## 0.3.1 (2022-01-20)

- chore: bump amplify-ios to 1.18.3

## 0.3.0 (2022-01-20)

### Fixes

- fix(amplify_auth_cognito): remove int.parse from AuthUserAttribute (#1169)

## 0.2.10 (2021-11-23)

### Fixes

- fix(auth): Fix coroutines crash (#1132)
- fix(auth): Remove duplicate AtomicResult (#1133)

## 0.2.9 (2021-11-17)

## 0.2.8 (2021-11-12)

### Fixes

- fix(auth): (Android) Dropped exceptions in hosted UI cause `signInWithWebUI` to not return (#1015)

## 0.2.7 (2021-11-08)

## 0.2.6 (2021-10-25)

## 0.2.5 (2021-10-14)

### Fixes

- fix(auth): Add global sign out
- fix(auth): Support `preferPrivateSession` flag

## 0.2.4 (2021-09-10)

### Fixes

- fix: CocoaPods relative import

## 0.2.3 (2021-09-09)

- feat(auth): add options to updateAttribute, updateAttributes, resendUserAttributeConfirmationCode (#775)
- feat(auth): add support for options to resetPassword, confirmResetPassword (#743)
- feat(auth): add options to resendSignUpCode (#738)

## 0.2.2 (2021-09-09)

### Features

- feat(auth): add options to resendSignUpCode (#738)

## 0.2.2 (2021-08-04)

### Features

- feat: enables clientMetadata for signUp (#713)
- feat: Auth Devices API (#735)

## 0.2.1 (2021-07-27)

### Bug Fixes

- fix: handle missing or empty signUpOptions (#627)
- fix: handle InvalidStateException (#625)

### Chores

- chore: user attributes/sign up docs (#697)
- chore: enable formatting in CI w/ code changes (#570)

## 0.2.0 (2021-06-30)

### Features

- feat: Null Safety Auth (#536)
- feat: Null safety core (#492)

### Bug Fixes

- fix: uses nextStep helper for signInResult on Android (#689)

### Chores

- chore: Null safety master rebase (#676)

## 0.1.6 (2021-06-23)

## 0.1.5 (2021-05-17)

## 0.1.4 (2021-04-27)

### Bug Fixes

- fix: Confirm sign in options (#538)

## 0.1.3 (2021-04-21)

## 0.1.2 (2021-04-16)

### Bug Fixes

- fix: handle hot restart (#491)

## 0.1.1 (2021-03-29)

### Bug Fixes

- fix: Move AddPlugin from Register to MethodChannel (#411)

## 0.1.0 (2021-02-15)

### Features

- feat: sign in with apple (#378)

## 0.0.2-dev.2 (2021-02-09)

### Features

- feat: Add support for fetchUserAttributes (#343)

### Chores

- chore: Refactor error handling to use the new AuthException types (#322)
- chore: Updated amplify-android version 1.6.10 (#332)

### Bug Fixes

- fix: force user attribute to be string (#362)

## 0.0.2-dev.1 (2021-01-25)

### Features

- feature: Amplify Auth Hosted UI (#309)

### Chores

- chore: Refactor Hub streams (#262)
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

### Bug Fixes

- Fixed bugs preventing guest credentials from being provided from native code to Dart
- Fixed bugs preventing session tokens from being provided from native code to Dart (#178).
- Fixed bugs preventing user pool tokens from being provided from native code to Dart when configuration includes Cognito User Pools without Cogito Identity Pools (#148 & #163).

## 0.0.1-dev.3 (2020-10-08)

### Bug Fixes

- Update example podspecs
- chore: unify gradle versions across repo

## 0.0.1-dev.2 (2020-08-24)

### Features

- Add `getCurrentUser` method.

## 0.0.1-dev.1 (2020-08-17)

- Initial preview release.
