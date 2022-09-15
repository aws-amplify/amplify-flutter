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
class StorageAccessLevelAwarePrefixResolver implements S3StoragePrefixResolver {
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
    required StorageAccessLevel storageAccessLevel,
    String? identityId,
  }) async {
    if (storageAccessLevel == StorageAccessLevel.guest) {
      return '${storageAccessLevel.defaultPrefix}$_delimiter';
    }

    final targetIdentityId =
        identityId ?? await _identityProvider.getIdentityId();

    return '${storageAccessLevel.defaultPrefix}$_delimiter$targetIdentityId$_delimiter';
  }
}
