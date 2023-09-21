// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft_common/aft_common.dart';
import 'package:aft_common/descriptors.dart' as d;
import 'package:test/test.dart';

void main() async {
  late AftConfig repoState;

  Matcher matchesPackagePaths(List<String> paths) => unorderedEquals(
        paths.map((path) => repoState.rootDirectory.resolve(path).path),
      );

  group('PackageSelector', () {
    setUpAll(() async {
      final repo = await d.repo([
        d.package('infra'),
        d.dir('packages', [
          d.dir('amplify', [
            d.package(
              'amplify_flutter',
              dependencies: {
                'flutter': {
                  'sdk': 'flutter',
                },
              },
              contents: [
                d.package(
                  'amplify_flutter_example',
                  dependencies: {
                    'flutter': {
                      'sdk': 'flutter',
                    },
                  },
                  directory: 'example',
                ),
              ],
            ),
          ]),
          d.package('amplify_core'),
          d.dir('auth', [
            d.package(
              'amplify_auth_cognito',
              dependencies: {
                'flutter': {
                  'sdk': 'flutter',
                },
              },
              contents: [
                d.package(
                  'amplify_auth_cognito_example',
                  dependencies: {
                    'flutter': {
                      'sdk': 'flutter',
                    },
                  },
                  directory: 'example',
                ),
              ],
            ),
            d.package(
              'amplify_auth_cognito_dart',
              contents: [
                d.package(
                  'amplify_auth_cognito_dart_example',
                  directory: 'example',
                ),
              ],
            ),
            d.package('amplify_auth_cognito_test'),
          ]),
          d.dir('secure_storage', [
            d.package(
              'amplify_secure_storage',
              dependencies: {
                'flutter': {
                  'sdk': 'flutter',
                },
              },
              contents: [
                d.package(
                  'amplify_secure_storage_example',
                  dependencies: {
                    'flutter': {
                      'sdk': 'flutter',
                    },
                  },
                  directory: 'example',
                ),
              ],
            ),
            d.package(
              'amplify_secure_storage_dart',
              contents: [
                d.package(
                  'amplify_secure_storage_dart_example',
                  directory: 'example',
                ),
              ],
            ),
            d.package('amplify_secure_storage_test'),
          ]),
        ]),
      ]).create();
      repoState = repo.aftConfig;
    });

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
            'packages/auth/amplify_auth_cognito/example',
            'packages/auth/amplify_auth_cognito_dart/example',
            'packages/secure_storage/amplify_secure_storage/example',
            'packages/secure_storage/amplify_secure_storage_dart/example',
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
          'packages/secure_storage/amplify_secure_storage/example',
        ]),
      );
    });
  });
}
