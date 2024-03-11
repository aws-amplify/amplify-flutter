// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_storage_s3_dart.path_resolver}
/// Defines the interface of a S3 path resolver.
/// {@endtemplate}
@internal
class S3PathResolver {
  /// {@macro amplify_storage_s3_dart.path_resolver}
  const S3PathResolver({
    required TokenIdentityAmplifyAuthProvider identityProvider,
  }) : _identityProvider = identityProvider;

  final TokenIdentityAmplifyAuthProvider _identityProvider;

  /// Get the identityProvider
  @visibleForTesting
  TokenAmplifyAuthProvider get identityProvider => _identityProvider;

  /// Resolve the full path.
  Future<String> resolvePath({
    required StoragePath path,
  }) async {
    switch (path) {
      // ignore: invalid_use_of_internal_member
      case final StoragePathFromString p:
        return p.resolvePath();
      // ignore: invalid_use_of_internal_member
      case final StoragePathWithIdentityId p:
        final id = await _identityProvider.getIdentityId();
        return p.resolvePath(id: id);
      default:
        throw UnknownException(
          'Unhandled StoragePath type: ${path.runtimeType}',
        );
    }
  }
}
