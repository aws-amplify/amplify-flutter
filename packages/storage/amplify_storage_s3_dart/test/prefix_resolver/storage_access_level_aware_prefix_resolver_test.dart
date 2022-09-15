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
import 'package:amplify_storage_s3_dart/src/prefix_resolver/storage_access_level_aware_prefix_resolver.dart';
import 'package:test/test.dart';

import '../utils/test_token_provider.dart';

void main() {
  group('StorageAccessLevelAwarePrefixResolver', () {
    final testTokenIdentityProvider = TestTokenIdentityProvider();

    test('should resolve correct prefix for `StorageAccessLevel.guest`',
        () async {
      final prefixResolver = StorageAccessLevelAwarePrefixResolver(
        identityProvider: testTokenIdentityProvider,
      );

      final result = await prefixResolver.resolvePrefix(
        storageAccessLevel: StorageAccessLevel.guest,
      );

      expect(result, '${StorageAccessLevel.guest.defaultPrefix}/');
    });

    test(
        'should resolve correct prefix for `StorageAccessLevel.protected` with a custom delimiter',
        () async {
      const delimiter = '(fancySlash)';
      final prefixResolver = StorageAccessLevelAwarePrefixResolver(
        delimiter: delimiter,
        identityProvider: testTokenIdentityProvider,
      );

      final result = await prefixResolver.resolvePrefix(
        storageAccessLevel: StorageAccessLevel.protected,
      );

      expect(
        result,
        '${StorageAccessLevel.protected.defaultPrefix}$delimiter${await testTokenIdentityProvider.getIdentityId()}$delimiter',
      );
    });

    test(
        'should resolve correct prefix for `StorageAccessLevel.protected` with supplied `identityId`',
        () async {
      const testIdentityId = 'custom-id-123';
      final prefixResolver = StorageAccessLevelAwarePrefixResolver(
        identityProvider: testTokenIdentityProvider,
      );

      final result = await prefixResolver.resolvePrefix(
        identityId: testIdentityId,
        storageAccessLevel: StorageAccessLevel.protected,
      );

      expect(
        result,
        '${StorageAccessLevel.protected.defaultPrefix}/$testIdentityId/',
      );
    });

    test('should resolve correct prefix for `StorageAccessLevel.private`',
        () async {
      final prefixResolver = StorageAccessLevelAwarePrefixResolver(
        identityProvider: testTokenIdentityProvider,
      );

      final result = await prefixResolver.resolvePrefix(
        storageAccessLevel: StorageAccessLevel.private,
      );

      expect(
        result,
        '${StorageAccessLevel.private.defaultPrefix}/${await testTokenIdentityProvider.getIdentityId()}/',
      );
    });

    test(
        'should resolve correct prefix for `StorageAccessLevel.private` with supplied `identityId`',
        () async {
      const testIdentityId = 'custom-id-123';
      final prefixResolver = StorageAccessLevelAwarePrefixResolver(
        identityProvider: testTokenIdentityProvider,
      );

      final result = await prefixResolver.resolvePrefix(
        identityId: testIdentityId,
        storageAccessLevel: StorageAccessLevel.private,
      );

      expect(
        result,
        '${StorageAccessLevel.private.defaultPrefix}/$testIdentityId/',
      );
    });
  });
}
