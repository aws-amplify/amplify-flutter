// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';
import 'package:aft/src/constraints_checker.dart';
import 'package:aft/src/repo.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';
import 'package:yaml_edit/yaml_edit.dart';

import 'helpers/descriptors.dart' as d;

extension on Repo {
  PackageInfo get amplifyCore => this['amplify_core'];
  PackageInfo get amplifyFlutter => this['amplify_flutter'];
  PackageInfo get amplifyTest => this['amplify_test'];
}

void main() {
  group('GlobalConstraintsChecker', () {
    for (final action in ConstraintsAction.values) {
      test(
        'handles SDK constraints for preview Dart versions (${action.name})',
        () async {
          const preReleaseConstraint = '^3.2.0-0';
          final actions = await d
              .package(
                'actions',
                publishable: false,
                sdkConstraint: preReleaseConstraint,
              )
              .create();
          final amplifyFlutter = await d
              .package(
                'amplify_flutter',
                sdkConstraint: preReleaseConstraint,
              )
              .create();
          final checker = GlobalConstraintChecker(
            action,
            const {},
            Environment(
              sdk: VersionConstraint.compatibleWith(Version(3, 0, 0)),
            ),
          );

          {
            expect(
              checker.checkConstraints(actions),
              isTrue,
              reason:
                  'Package is not publishable and can take a prerelease constraint '
                  'to leverage new Dart features',
            );
            expect(checker.mismatchedDependencies, isEmpty);
            expect(actions.pubspecInfo.pubspecYamlEditor.edits, isEmpty);
          }

          {
            switch (action) {
              case ConstraintsAction.apply || ConstraintsAction.update:
                expect(
                  checker.checkConstraints(amplifyFlutter),
                  isTrue,
                );
                expect(
                  amplifyFlutter.pubspecInfo.pubspecYamlEditor.edits.single,
                  isA<SourceEdit>().having(
                    (edit) => edit.replacement.trim(),
                    'replacement',
                    '^3.0.0',
                  ),
                );
                expect(checker.mismatchedDependencies, isEmpty);
              case ConstraintsAction.check:
                expect(
                  checker.checkConstraints(amplifyFlutter),
                  isFalse,
                  reason:
                      'Package is publishable and must match the global SDK constraint',
                );
                expect(
                  checker.mismatchedDependencies.single,
                  isA<MismatchedDependency>()
                      .having(
                        (err) => err.package.name,
                        'packageName',
                        'amplify_flutter',
                      )
                      .having(
                        (err) => err.dependencyName,
                        'dependencyName',
                        'sdk',
                      ),
                );
                expect(
                  amplifyFlutter.pubspecInfo.pubspecYamlEditor.edits,
                  isEmpty,
                );
            }
          }
        },
      );
    }
  });

  group('PublishConstraintsChecker', () {
    for (final action in ConstraintsAction.values) {
      final result = switch (action) {
        ConstraintsAction.check => 'fails',
        ConstraintsAction.apply => 'applies',
        ConstraintsAction.update => 'updates',
      };
      test(
        '$result when a direct dep and transitive dev dep conflict '
        'for a published package',
        () async {
          final repo = await d.repo([
            d.package('amplify_core', version: '1.0.0'),
            d.package(
              'amplify_test',
              publishable: false,
              dependencies: {
                // An outdated constraint
                'amplify_core': '<1.0.0',
              },
            ),
            d.package(
              'amplify_flutter',
              version: '1.0.0',
              dependencies: {
                'amplify_core': '>=1.0.0 <1.1.0',
              },
              devDependencies: {
                'amplify_test': {
                  'path': '../amplify_test',
                },
              },
            ),
          ]).create();
          final constraintsChecker = PublishConstraintsChecker(
            action,
            repo.getPackageGraph(includeDevDependencies: true),
          );

          {
            expect(
              constraintsChecker.checkConstraints(repo.amplifyCore),
              isTrue,
            );
          }

          {
            expect(
              constraintsChecker.checkConstraints(repo.amplifyTest),
              isTrue,
              reason:
                  "amplify_test's constraint on amplify_core is fine by itself",
            );
          }

          {
            switch (action) {
              case ConstraintsAction.apply || ConstraintsAction.update:
                expect(
                  constraintsChecker.checkConstraints(repo.amplifyFlutter),
                  isTrue,
                );
                expect(
                  repo.amplifyTest.pubspecInfo.pubspecYamlEditor.edits.single,
                  isA<SourceEdit>().having(
                    (edit) => edit.replacement,
                    'replacement',
                    'any',
                  ),
                );
                expect(constraintsChecker.mismatchedDependencies, isEmpty);
              case ConstraintsAction.check:
                expect(
                  constraintsChecker.checkConstraints(repo.amplifyFlutter),
                  isFalse,
                  reason:
                      'The constraint amplify_test has on amplify_core would '
                      "cause a publish error since it conflicts with amplify_flutter's "
                      'direct constraint',
                );
                expect(
                  constraintsChecker.mismatchedDependencies.single,
                  isA<MismatchedDependency>()
                      .having(
                        (err) => err.package.name,
                        'packageName',
                        'amplify_test',
                      )
                      .having(
                        (err) => err.dependencyName,
                        'dependencyName',
                        'amplify_core',
                      ),
                );
                expect(
                  repo.amplifyTest.pubspecInfo.pubspecYamlEditor.edits,
                  isEmpty,
                );
            }
          }
        },
      );

      test(
          '$result when a published package lists an unpublished package '
          'as a hosted dependency', () async {
        final repo = await d.repo([
          d.package('amplify_test', publishable: false),
          d.package(
            'amplify_core',
            version: '1.0.0',
            devDependencies: {
              'amplify_test': 'any',
            },
          ),
        ]).create();

        final constraintsChecker = PublishConstraintsChecker(
          action,
          repo.getPackageGraph(includeDevDependencies: true),
        );

        switch (action) {
          case ConstraintsAction.apply || ConstraintsAction.update:
            expect(
              constraintsChecker.checkConstraints(repo.amplifyCore),
              isTrue,
            );
            expect(
              repo.amplifyCore.pubspecInfo.pubspecYamlEditor.edits.single,
              isA<SourceEdit>().having(
                (edit) => edit.replacement,
                'replacement',
                '{path: ../amplify_test}',
              ),
            );
            expect(constraintsChecker.mismatchedDependencies, isEmpty);
          case ConstraintsAction.check:
            expect(
              constraintsChecker.checkConstraints(repo.amplifyCore),
              isFalse,
              reason: 'The constraint amplify_core has on amplify_test would '
                  'cause a publish error since amplify_test cannot be retrieved '
                  "from pub.dev (it's unpublished)",
            );
            expect(
              constraintsChecker.mismatchedDependencies.single,
              isA<MismatchedDependency>()
                  .having(
                    (err) => err.package.name,
                    'packageName',
                    'amplify_core',
                  )
                  .having(
                    (err) => err.dependencyName,
                    'dependencyName',
                    'amplify_test',
                  ),
            );
            expect(
              repo.amplifyTest.pubspecInfo.pubspecYamlEditor.edits,
              isEmpty,
            );
        }
      });
    }
  });
}
