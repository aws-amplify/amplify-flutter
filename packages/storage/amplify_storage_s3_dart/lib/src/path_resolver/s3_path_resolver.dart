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

  /// Resolve the full path.
  Future<String> resolvePath({
    required StoragePath path,
  }) async {
    final resolvedPath = await switch (path) {
      // ignore: invalid_use_of_internal_member
      final StoragePathFromString p => p.resolvePath(),
      // ignore: invalid_use_of_internal_member
      final StoragePathWithIdentityId p =>
        p.resolvePath(id: await _identityProvider.getIdentityId()),
      _ => throw UnknownException(
          'Unhandled StoragePath type: ${path.runtimeType}',
        )
    };
    if (!resolvedPath.startsWith('/')) {
      throw const StoragePathValidationException(
        'StoragePath must start with a leading "/"',
        recoverySuggestion: 'Update the provided path to include a leading "/"',
      );
    }
    return resolvedPath;
  }
}
