// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/types/storage/storage_path_from_identity_id.dart';
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

  Future<String> _getIdentityId() async {
    try {
      return await _identityProvider.getIdentityId();
    } on Exception catch (e) {
      if (e is SessionExpiredException || e is AuthNotAuthorizedException) {
        throw StorageAccessDeniedException(
          'Unable to fetch the identity Id. This can occur when a user is not '
          'authenticated and the Identity Pool does not allow unauthenticated sessions. '
          'See underlyingException for more info.',
          underlyingException: e,
        );
      }
      throw UnknownException(
        'An unknown error occurred while fetching the identity Id. '
        'See underlyingException for more info.',
        underlyingException: e,
      );
    }
  }

  /// Resolves the given [path].
  ///
  /// Returns a string which is the S3 Object Key.
  ///
  /// When [path] is a [StoragePathFromIdentityId], the current user's identity
  /// Id will be fetched in order to build the path.
  Future<String> resolvePath({
    required StoragePath path,
    String? identityId,
  }) async {
    final resolvedPath = switch (path) {
      // ignore: invalid_use_of_internal_member
      final StoragePathFromIdentityId p => p.resolvePath(
          identityId: identityId ?? await _getIdentityId(),
        ),
      // ignore: invalid_use_of_internal_member
      _ => path.resolvePath()
    };
    if (resolvedPath.isEmpty) {
      throw const StoragePathValidationException(
        'StoragePath cannot be empty',
      );
    }
    if (resolvedPath.startsWith('/')) {
      throw const StoragePathValidationException(
        'StoragePath cannot start with a leading "/"',
        recoverySuggestion: 'Remove the leading "/" from the StoragePath',
      );
    }
    return resolvedPath;
  }

  /// Resolves multiple [StoragePath] objects.
  ///
  /// This method will only fetch the current user's identityId one time.
  Future<List<String>> resolvePaths({
    required List<StoragePath> paths,
  }) async {
    final requiresIdentityId =
        paths.whereType<StoragePathFromIdentityId>().isNotEmpty;
    final identityId = requiresIdentityId ? await _getIdentityId() : null;
    return Future.wait(
      paths.map(
        (path) => resolvePath(
          path: path,
          identityId: identityId,
        ),
      ),
    );
  }
}
