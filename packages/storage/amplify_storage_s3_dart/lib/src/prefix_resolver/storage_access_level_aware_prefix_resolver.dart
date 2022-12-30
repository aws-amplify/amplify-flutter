// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:meta/meta.dart';

/// {@template amplify_storage_s3_dart.storage_access_level_aware_prefix_resolver}
/// The default Storage S3 plugin prefix resolver that resolves prefix according
/// to given [StorageAccessLevel] and currently signed user.
/// E.g.
/// * [StorageAccessLevel.guest] resolves `'public'`
/// * [StorageAccessLevel.protected] resolves `'protected/<userIdentityId>'`
/// * [StorageAccessLevel.private] resolves `'private/<userIdentityId>'`
/// {@endtemplate}
class StorageAccessLevelAwarePrefixResolver implements S3PrefixResolver {
  /// {@macro amplify_storage_s3_dart.storage_access_level_aware_prefix_resolver}
  StorageAccessLevelAwarePrefixResolver({
    required TokenIdentityAmplifyAuthProvider identityProvider,
    String? delimiter,
  })  : _delimiter = delimiter ?? '/',
        _identityProvider = identityProvider;

  final String _delimiter;
  final TokenIdentityAmplifyAuthProvider _identityProvider;

  /// Get the identityProvider
  @visibleForTesting
  TokenAmplifyAuthProvider get identityProvider => _identityProvider;

  @override
  Future<String> resolvePrefix({
    required StorageAccessLevel accessLevel,
    String? identityId,
  }) async {
    if (accessLevel == StorageAccessLevel.guest) {
      return '${accessLevel.defaultPrefix}$_delimiter';
    }

    final targetIdentityId =
        identityId ?? await _identityProvider.getIdentityId();

    return '${accessLevel.defaultPrefix}$_delimiter$targetIdentityId$_delimiter';
  }
}
