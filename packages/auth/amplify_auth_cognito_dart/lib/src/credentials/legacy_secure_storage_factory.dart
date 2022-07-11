// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

/// {@template amplify_auth_cognito_dart.legacy_secure_storage_factory}
/// A factory for creating legacy secure storage instances.
/// {@endtemplate}
class LegacySecureStorageFactory {
  /// {@macro amplify_auth_cognito_dart.legacy_secure_storage_factory}
  LegacySecureStorageFactory();

  // ignore: avoid_field_initializers_in_const_classes
  final Map<String, SecureStorageInterface> _instances = {};

  /// Creates a legacy secure storage instance given a namespace,
  /// or returns it if it already exists.
  ///
  /// The namespace is used as the "service" on iOS and the key-value
  /// repository name on Android.
  SecureStorageInterface _get(String namespace) {
    if (_instances[namespace] != null) return _instances[namespace]!;
    final instance = AmplifySecureStorageDart(
      config: AmplifySecureStorageConfig.legacy(namespace: namespace),
    );
    _instances[namespace] = instance;
    return instance;
  }

  /// Returns the legacy User Pool Storage instance.
  SecureStorageInterface getUserPoolStorage(String bundleId) {
    return _get('$bundleId.AWSCognitoIdentityUserPool');
  }

  /// Returns the legacy Identity Pool Storage instance.
  SecureStorageInterface getIdentityPoolStorage(
    String bundleId,
    String identityPoolId,
  ) {
    return _get('$bundleId.AWSCognitoCredentialsProvider.$identityPoolId');
  }
}
