// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/src/prefix_resolver/storage_access_level_aware_prefix_resolver.dart';
import 'package:test/test.dart';

import '../test_utils/test_token_provider.dart';

void main() {
  group('StorageAccessLevelAwarePrefixResolver', () {
    final testTokenIdentityProvider = TestTokenIdentityProvider();

    test('should resolve correct prefix for `StorageAccessLevel.guest`',
        () async {
      final prefixResolver = StorageAccessLevelAwarePrefixResolver(
        identityProvider: testTokenIdentityProvider,
      );

      final result = await prefixResolver.resolvePrefix(
        accessLevel: StorageAccessLevel.guest,
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
        accessLevel: StorageAccessLevel.protected,
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
        accessLevel: StorageAccessLevel.protected,
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
        accessLevel: StorageAccessLevel.private,
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
        accessLevel: StorageAccessLevel.private,
      );

      expect(
        result,
        '${StorageAccessLevel.private.defaultPrefix}/$testIdentityId/',
      );
    });
  });
}
