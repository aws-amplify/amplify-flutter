// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';
import 'package:test/test.dart';

import '../repo_state.g.dart';

void main() {
  Matcher matchesPackagePaths(List<String> paths) => unorderedEquals(
        paths.map((path) => repoState.rootDirectory.resolve(path).path),
      );

  group('PackageSelector', () {
    group('packageOrComponent', () {
      test('matches component', () {
        const componentSelector = PackageSelector.packageOrComponent(
          'Secure Storage',
        );
        expect(
          componentSelector.allPaths(repoState),
          matchesPackagePaths([
            'packages/secure_storage/amplify_secure_storage',
            'packages/secure_storage/amplify_secure_storage_dart',
          ]),
        );
      });

      test('matches package path', () {
        const nameSelector = PackageSelector.packageOrComponent('**example');
        expect(
          nameSelector.allPaths(repoState),
          matchesPackagePaths([
            'packages/amplify/amplify_flutter/example',
            'packages/amplify/amplify_flutter_ios/example',
            'packages/amplify_datastore/example',
            'packages/amplify_native_legacy_wrapper/example',
            'packages/analytics/amplify_analytics_pinpoint/example',
            'packages/api/amplify_api/example',
            'packages/auth/amplify_auth_cognito/example',
            'packages/auth/amplify_auth_cognito_dart/example',
            'packages/authenticator/amplify_authenticator/example',
            'packages/aws_signature_v4/example',
            'packages/common/amplify_db_common/example',
            'packages/common/amplify_db_common_dart/example',
            'packages/example_common/example',
            'packages/notifications/push/amplify_push_notifications_pinpoint/example',
            'packages/secure_storage/amplify_secure_storage/example',
            'packages/secure_storage/amplify_secure_storage_dart/example',
            'packages/storage/amplify_storage_s3/example',
            'packages/storage/amplify_storage_s3_dart/example',
          ]),
        );
      });

      test('matches package name (not in path)', () {
        const nameSelector = PackageSelector.packageOrComponent('infra');
        expect(
          nameSelector.allPaths(repoState),
          matchesPackagePaths([
            'infra',
          ]),
        );
      });

      test('matches glob', () {
        const nameSelector = PackageSelector.packageOrComponent('*secure*');
        expect(
          nameSelector.allPaths(repoState),
          matchesPackagePaths([
            'packages/secure_storage/amplify_secure_storage',
            'packages/secure_storage/amplify_secure_storage/example',
            'packages/secure_storage/amplify_secure_storage_dart',
            'packages/secure_storage/amplify_secure_storage_dart/example',
            'packages/secure_storage/amplify_secure_storage_test',
          ]),
        );
      });
    });

    group('and', () {
      test('dev + ex + test = none', () {
        const andSelector = PackageSelector.and([
          PackageSelector.development(),
          PackageSelector.example(),
          PackageSelector.test(),
        ]);
        expect(
          andSelector.allPaths(repoState),
          isEmpty,
          reason: 'dev, example, and test are all mutually exclusive',
        );
      });
    });

    group('or', () {
      test('dev + ex + test = all', () {
        const orSelector = PackageSelector.or([
          PackageSelector.development(),
          PackageSelector.example(),
          PackageSelector.test(),
        ]);
        const allSelector = PackageSelector.all();
        expect(
          orSelector.allPaths(repoState),
          unorderedEquals(allSelector.allPaths(repoState)),
          reason: 'packages are either dev, example, or test',
        );
      });
    });

    test('complex', () {
      // Selects all non-Auth iOS Flutter examples, i.e. all Flutter examples
      // which are not Android and not Auth-related.
      final selector = PackageSelector(
        include: const PackageSelector.and([
          PackageSelector.flutter(),
          PackageSelector.example(),
        ]),
        exclude: const PackageSelector.or([
          PackageSelector.packageOrComponent('**auth**'),
          PackageSelector.packageOrComponent('**_android**'),
        ]),
      );
      expect(
        selector.allPaths(repoState),
        matchesPackagePaths([
          'packages/amplify/amplify_flutter/example',
          'packages/amplify/amplify_flutter_ios/example',
          'packages/amplify_core/doc',
          'packages/amplify_datastore/example',
          'packages/amplify_native_legacy_wrapper/example',
          'packages/analytics/amplify_analytics_pinpoint/example',
          'packages/api/amplify_api/example',
          'packages/common/amplify_db_common/example',
          'packages/notifications/push/amplify_push_notifications_pinpoint/example',
          'packages/secure_storage/amplify_secure_storage/example',
          'packages/storage/amplify_storage_s3/example',
        ]),
      );
    });
  });
}
