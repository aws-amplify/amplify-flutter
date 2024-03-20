// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/types/storage/storage_path_with_identity_id.dart';
import 'package:meta/meta.dart';

/// {@template amplify_storage_s3_dart.path_resolver}
/// A class which resolves the full path of the S3 Object.
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
    String? identityId,
  }) async {
    final resolvedPath = switch (path) {
      final StoragePathWithIdentityId p => p.resolvePath(
          identityId: identityId ?? await _identityProvider.getIdentityId(),
        ),
      // ignore: invalid_use_of_internal_member
      _ => path.resolvePath()
    };
    if (!resolvedPath.startsWith('/')) {
      throw const StoragePathValidationException(
        'StoragePath must start with a leading "/"',
        recoverySuggestion: 'Update the provided path to include a leading "/"',
      );
    }
    return resolvedPath;
  }

  Future<List<String>> resolvePaths({
    required List<StoragePath> paths,
  }) async {
    final requiredIdentityId =
        paths.whereType<StoragePathWithIdentityId>().isNotEmpty;
    final identityId =
        requiredIdentityId ? await _identityProvider.getIdentityId() : null;
    return Future.wait(
      paths.map(
        (path) => resolvePath(
          path: path,
          identityId: identityId,
        ),
      ),
    );

    // final resolvedPath = switch (path) {
    //   final StoragePathWithIdentityId p =>
    //     p.resolvePath(identityId: await _identityProvider.getIdentityId()),
    //   // ignore: invalid_use_of_internal_member
    //   _ => path.resolvePath()
    // };
    // if (!resolvedPath.startsWith('/')) {
    //   throw const StoragePathValidationException(
    //     'StoragePath must start with a leading "/"',
    //     recoverySuggestion: 'Update the provided path to include a leading "/"',
    //   );
    // }
    // return resolvedPath;
  }
}
