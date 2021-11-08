## 0.3.0-rc.2 (2021-11-08)

## 0.3.0-rc.1 (2021-09-24)

### Breaking Changes

- The amplify_auth_cognito fetchAuthSession API will throw a SignedOutException when the user has not signed in, and a SessionExpiredException when the tokens have expired.
- The amplify_auth_cognito getCurrentUser API will return an AuthUser if the user is still authenticated but the session has expired.

### Fixes

- break(amplify_auth_cognito): throw SignedOutException (#893)
- break(amplify_auth_cognito): fixes getCurrentUser disparity (#894)

## 0.2.6 (2021-10-25)

## 0.2.5 (2021-10-14)

### Fixes
- fix(auth): Add global sign out
- fix(auth): Support `preferPrivateSession` flag

## 0.2.4 (2021-09-10)

### Fixes

- fix: CocoaPods relative import

## 0.2.3 (2021-09-09)

### Features

- feat(auth): OIDC/Lambda Support (#777)
- feat(auth): add options to updateAttribute, updateAttributes, resendUserAttributeConfirmationCode (#775)
- feat(auth): add support for options to resetPassword, confirmResetPassword (#743)
- feat(auth): add options to resendSignUpCode (#738)

### Chores

- chore: upgrade amplify-android 1.24.1 (#829)

## 0.2.2 (2021-08-04)

### Features

- feat: enables clientMetadata for signUp (#713)
- feat: Auth Devices API (#735)

## 0.2.1 (2021-07-27)

### Bug Fixes

- fix: handle new hosted ui android activity (#706)
- fix: handle missing or empty signUpOptions (#627)
- fix: handle InvalidStateException (#625)

### Chores

- chore: upgrade amplify-android to 1.20.1 (#710)
- chore: user attributes/sign up docs (#697)
- chore: enable formatting in CI w/ code changes (#570)
- chore: integration tests for user attributes (#640)
- chore: add integration test coverage for auth (#724)

## 0.2.0 (2021-06-30)

### Breaking Changes

- AuthCodeDeliveryDetails are now nullable within the nextStep member of the CognitoSignInResult, CognitoSignUpResult, and CognitoResetPasswordResult classes.
- AWSCredentials and AWSCognitoUserPoolTokens are now nullable within the CognitoAuthSession class.

### Features

- feat: Null Safety Auth (#536)
- feat: Null safety core (#492)

### Bug Fixes

- fix: uses nextStep helper for signInResult on Android (#689)
- fix(amplify_auth_cognito): update user attribute serialization (#684)
- fix(amplify_auth_cognito): Remove use of TypeToken (#683)
- fix(auth_auth_cognito): Type mismatch: inferred type (#653)
- fix: Null safety master fixes pr (#614)
- fix(amplify_auth_cognito): fixes auth null safety issues #613

### Chores

- chore: Null safety master rebase (#676)

## 0.1.6 (2021-06-23)

### Features

- feat: add updateUserAttributes (batch) (#601)

### Bug Fixes

- fix: amplify-ios version bump (#648)
- fix: adds userAttributes to confirmSignIn (#607)
- fix(amplify_auth_cognito): iOS/Android user attribute inconsistencies (#620)
- fix: Add clientMetadata to confirmSignUp API options (#619)
- fix: address issue #577 by changing iOS error to UserNotConfirmedException (#583)

### Chores

- chore: upgrade amplify-android to 1.19.0 (#650)
- chore: foundation for integration tests and basic auth suite with signIn and signOut (#568)
- chore: pin Amplify iOS to '~> 1.9.2' (#589)

## 0.1.5 (2021-05-17)

### Features

- feat: add user attribute auth methods `updateUserAttribute`, `confirmUserAttribute`, `resendUserAttributeConfirmationCode` (#533)

### Bug Fixes

- fix: pass additionalInfo to `AuthNextSignUpStep` (#545)

## 0.1.4 (2021-04-27)

### Bug Fixes

- fix: Remove logging of unhandled Hub auth events (#517)
- fix: Confirm sign in options (#538)

## 0.1.3 (2021-04-21)

### Bug Fixes

- fix(amplify_auth_cognito): SignInOptions and ClientMetadata (#519)
- fix: handle LimitExceededException on Android (#522)

## 0.1.2 (2021-04-16)

### Bug Fixes

- fix: handle hot restart (#491)

## 0.1.1 (2021-03-29)

### Bug Fixes

- fix: Move AddPlugin from Register to MethodChannel (#411)
- fix: upgrade plugin_platform_interface (#447)
- fix: upgrade uuid (#448)
- fix: call return in addPlugin (#478)

## 0.1.0 (2021-02-15)

### Features

- feat: sign in with apple (#378)

### Chores

- chore: Bump android version to 1.16.13 (#391)

### Bug Fixes

- fix: force signOut when signedIn (#369)
- fix: android throws SessionExpiredException instead of SignedOutException (#372)
- fix: fix compile issue with newer gradle plugin (#381)
- fix: deprecate globalSignOut; simple user check upon Android signIn (#386)

## 0.0.2-dev.2 (2021-02-09)

### Features

- feat: Add support for fetchUserAttributes (#343)

### Chores

- chore: Refactor error handling to use the new AuthException types (#322)
- chore: Updated amplify-android version 1.6.10 (#332)

### Bug Fixes

- fix: MissingPluginException when android app restarts (#345)
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

- Updated amplify-android library version to v1.6.6
- Updated amplify-ios library version to v1.4.4
- Fixed bugs preventing guest credentials from being provided from native code to Dart
- Fixed bugs preventing session tokens from being provided from native code to Dart (#178).
- Fixed bugs preventing user pool tokens from being provided from native code to Dart when configuration includes Cognito User Pools without Cogito Identity Pools (#148 & #163).

## 0.0.1-dev.3 (2020-10-08)

### Bug Fixes

- fix(amplify_auth_cognito): throw error in iOS for unconfirmed user signin
- fix(amplify_auth_cognito): returns AuthError instead of missing method error
- feat(amplify_auth_cognito): iOS unit tests
- fix(amplify_auth_cognito): fix example app Podfile
- feat(amplify_auth_cognito): integration test initial pass
- fix(amplify_auth_cognito): truncates android resendsignup response
- Update example podspecs
- fix(amplify_auth_cognito): event stream destruction
- chore: unify gradle versions across repo

## 0.0.1-dev.2 (2020-08-24)

### Features

- Add `getCurrentUser` method.

### Bug Fixes

- Bump Android `aws-auth-cognito` dependency version to 1.1.3.

## 0.0.1-dev.1 (2020-08-17)

- Initial preview release.
