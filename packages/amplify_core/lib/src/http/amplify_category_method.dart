// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library;

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Identifies the [category] and [method] which originated an API call.
///
/// Captured by [AmplifyHttpClient] to inject into user agent headers.
mixin AmplifyCategoryMethod {
  /// The originating Amplify category.
  Category get category;

  /// The originating category method.
  String get method;

  /// The value to place in the user agent header.
  String get headerValue => '${category.name}/$method';

  @override
  String toString() => headerValue;
}

enum AuthCategoryMethod with AmplifyCategoryMethod {
  confirmResetPassword('1'),
  confirmSignIn('2'),
  confirmSignUp('3'),
  confirmUserAttribute('4'),
  deleteUser('5'),
  fetchAuthSession('6'),
  fetchDevices('7'),
  fetchUserAttributes('8'),
  forgetDevice('9'),
  getCurrentUser('10'),
  rememberDevice('11'),
  resendSignUpCode('12'),
  sendUserAttributeVerificationCode('13'),
  resetPassword('14'),
  signIn('15'),
  signInWithWebUI('16'),
  signOut('17'),
  signUp('18'),
  updatePassword('19'),
  updateUserAttribute('20'),
  updateUserAttributes('21'),
  federateToIdentityPool('48'),
  setMfaPreference('49'),
  getMfaPreference('50'),
  setUpTotp('51'),
  verifyTotpSetup('52');

  const AuthCategoryMethod(this.method);

  @override
  Category get category => Category.auth;

  @override
  final String method;
}

enum ApiCategoryMethod with AmplifyCategoryMethod {
  delete('22'),
  get('23'),
  head('24'),
  mutate('25'),
  patch('26'),
  put('27'),
  query('28'),
  subscribe('29'),
  post('54');

  const ApiCategoryMethod(this.method);

  @override
  Category get category => Category.api;

  @override
  final String method;
}

enum AnalyticsCategoryMethod with AmplifyCategoryMethod {
  disable('30'),
  enable('31'),
  flushEvents('32'),
  identifyUser('33'),
  recordEvent('34'),
  registerGlobalProperties('35'),
  unregisterGlobalProperties('36');

  const AnalyticsCategoryMethod(this.method);

  @override
  Category get category => Category.analytics;

  @override
  final String method;
}

enum StorageCategoryMethod with AmplifyCategoryMethod {
  copy('37'),
  downloadData('38'),
  downloadFile('39'),
  getProperties('40'),
  getUrl('41'),
  list('42'),
  move('43'),
  remove('44'),
  removeMany('45'),
  uploadData('46'),
  uploadFile('47');

  const StorageCategoryMethod(this.method);

  @override
  Category get category => Category.storage;

  @override
  final String method;
}

enum PushNotificationsCategoryMethod with AmplifyCategoryMethod {
  identifyUser('53'),
  launchNotification('55'),
  foregroundMessageReceived('56'),
  notificationOpened('57'),
  registerDevice('58');

  const PushNotificationsCategoryMethod(this.method);

  @override
  Category get category => Category.pushNotifications;

  @override
  final String method;
}

/// Identifies [fn] as originating from a call to [categoryMethod].
R identifyCall<R>(
  AmplifyCategoryMethod categoryMethod,
  R Function() fn,
) {
  return runZoned(
    fn,
    zoneValues: {
      // Don't override the current category method if we're currently
      // running in the context of one.
      //
      // This is because we want to capture the API which the developer
      // called even if that method calls further Amplify category methods.
      AmplifyCategoryMethod:
          Zone.current[AmplifyCategoryMethod] ?? categoryMethod,
    },
  );
}
