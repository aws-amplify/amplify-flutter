// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Note: This mixin is a stub
// This is only used if both dart.library.html and dart.library.io are not available
// See the implementations in the web/desktop dir which will be used on those platforms

import 'dart:async';

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

/// A mixin that implements the [SecureStorageInterface] for the target
/// platform.
///
/// Intended to be used in flutter packages like so
///
/// ```dart
/// class AmplifySecureStorageWebPlugin extends AmplifySecureStoragePlatform
///     with AmplifySecureStorageDartMixin { ... }
/// ```
mixin AmplifySecureStorageDartMixin on AmplifySecureStorageInterface
    implements SecureStorageInterface {
  @override
  FutureOr<void> write({required String key, required String value}) {
    throw UnimplementedError('write() has not been implemented.');
  }

  @override
  FutureOr<String?> read({required String key}) {
    throw UnimplementedError('read() has not been implemented.');
  }

  @override
  FutureOr<void> delete({required String key}) {
    throw UnimplementedError('delete() has not been implemented.');
  }

  @override
  FutureOr<void> removeAll() {
    throw UnimplementedError('removeAll() has not been implemented.');
  }
}
