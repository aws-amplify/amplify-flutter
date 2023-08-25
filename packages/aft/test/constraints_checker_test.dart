// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';
import 'package:aft/src/constraints_checker.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';
import 'package:yaml_edit/yaml_edit.dart';

import 'common.dart';

void main() {
  group('GlobalConstraintsChecker', () {
    for (final action in ConstraintsAction.values) {
      test(
        'handles SDK constraints for preview Dart versions (${action.name})',
        () {
          final preReleaseConstraint = VersionConstraint.compatibleWith(
            Version(3, 2, 0, pre: '0'),
          );
          final actions = dummyPackage(
            'actions',
            publishable: false,
            sdkConstraint: preReleaseConstraint,
          );
          final amplifyFlutter = dummyPackage(
            'amplify_flutter',
            sdkConstraint: preReleaseConstraint,
          );
          final checker = GlobalConstraintChecker(
            action,
            const {},
            Environment(
              sdk: VersionConstraint.compatibleWith(Version(3, 0, 0)),
            ),
          );

          {
            expect(
              checker.checkConstraints(actions.key),
              isTrue,
              reason:
                  'Package is not publishable and can take a prerelease constraint '
                  'to leverage new Dart features',
            );
            expect(checker.mismatchedDependencies, isEmpty);
            expect(actions.key.pubspecInfo.pubspecYamlEditor.edits, isEmpty);
          }

          {
            switch (action) {
              case ConstraintsAction.apply || ConstraintsAction.update:
                expect(
                  checker.checkConstraints(amplifyFlutter.key),
                  isTrue,
                );
                expect(
                  amplifyFlutter.key.pubspecInfo.pubspecYamlEditor.edits.single,
                  isA<SourceEdit>().having(
                    (edit) => edit.replacement.trim(),
                    'replacement',
                    '^3.0.0',
                  ),
                );
                expect(checker.mismatchedDependencies, isEmpty);
              case ConstraintsAction.check:
                expect(
                  checker.checkConstraints(amplifyFlutter.key),
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
                  amplifyFlutter.key.pubspecInfo.pubspecYamlEditor.edits,
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
        () {
          final amplifyCore = dummyPackage(
            'amplify_core',
            version: Version(1, 0, 0),
          );
          final amplifyTest = dummyPackage(
            'amplify_test',
            publishable: false,
            deps: {
              // An outdated constraint
              amplifyCore.key: VersionConstraint.parse('<1.0.0'),
            },
          );
          final amplifyFlutter = dummyPackage(
            'amplify_flutter',
            version: Version(1, 0, 0),
            deps: {
              amplifyCore.key: VersionConstraint.parse('>=1.0.0 <1.1.0'),
            },
            devDeps: {
              amplifyTest.key: VersionConstraint.any,
            },
          );
          final repoGraph = Map.fromEntries([
            amplifyCore,
            amplifyFlutter,
            amplifyTest,
          ]);
          final constraintsChecker = PublishConstraintsChecker(
            action,
            repoGraph,
          );

          {
            expect(
              constraintsChecker.checkConstraints(amplifyCore.key),
              isTrue,
            );
          }

          {
            expect(
              constraintsChecker.checkConstraints(amplifyTest.key),
              isTrue,
              reason:
                  "amplify_test's constraint on amplify_core is fine by itself",
            );
          }

          {
            switch (action) {
              case ConstraintsAction.apply || ConstraintsAction.update:
                expect(
                  constraintsChecker.checkConstraints(amplifyFlutter.key),
                  isTrue,
                );
                expect(
                  amplifyTest.key.pubspecInfo.pubspecYamlEditor.edits.single,
                  isA<SourceEdit>().having(
                    (edit) => edit.replacement,
                    'replacement',
                    'any',
                  ),
                );
                expect(constraintsChecker.mismatchedDependencies, isEmpty);
              case ConstraintsAction.check:
                expect(
                  constraintsChecker.checkConstraints(amplifyFlutter.key),
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
                  amplifyTest.key.pubspecInfo.pubspecYamlEditor.edits,
                  isEmpty,
                );
            }
          }
        },
      );
    }
  });
}
