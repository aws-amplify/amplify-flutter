## 0.0.1-dev.4 (2020-12-03)

### Bug Fixes

* Updated amplify-android library version to v1.6.6
* Updated amplify-ios library version to v1.4.4
* Fixed bugs preventing guest credentials from being provided from native code to Dart
* Fixed bugs preventing session tokens from being provided from native code to Dart (#178).
* Fixed bugs preventing user pool tokens from being provided from native code to Dart when configuration includes Cognito User Pools without Cogito Identity Pools (#148 & #163).

## 0.0.1-dev.3 (2020-10-08)

### Bug Fixes

* fix(amplify_auth_cognito): throw error in iOS for unconfirmed user signin
* fix(amplify_auth_cognito): returns AuthError instead of missing method error
* feat(amplify_auth_cognito): iOS unit tests
* fix(amplify_auth_cognito): fix example app Podfile
* feat(amplify_auth_cognito): integration test initial pass
* fix(amplify_auth_cognito): truncates android resendsignup response
* Update example podspecs
* fix(amplify_auth_cognito): event stream destruction
* chore: unify gradle versions across repo

## 0.0.1-dev.2 (2020-08-24)

### Features

* Add `getCurrentUser` method.

### Bug Fixes

* Bump Android `aws-auth-cognito` dependency version to 1.1.3.

## 0.0.1-dev.1 (2020-08-17)

* Initial preview release.
