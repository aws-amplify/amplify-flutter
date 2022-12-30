// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:test/test.dart';

void main() {
  group('PassThroughPrefixResolver', () {
    const prefixResolver = PassThroughPrefixResolver();
    for (final accessLevel in [
      StorageAccessLevel.guest,
      StorageAccessLevel.private,
      StorageAccessLevel.protected
    ]) {
      test('should resolve as empty string for $accessLevel', () async {
        final result = await prefixResolver.resolvePrefix(
          accessLevel: accessLevel,
        );

        expect(result, isEmpty);
      });
    }
  });
}
