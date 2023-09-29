// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft_common/aft_common.dart';
import 'package:aft_common/descriptors.dart' as d;
import 'package:built_collection/built_collection.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';

void main() {
  group('Deputy', () {
    test('create', () async {
      await expectLater(Deputy.create(), completes);
    });

    test('scanAndUpdate', () async {
      final repo = await d.repo([
        d.package(
          'local_a',
          dependencies: {'third_party_a': '1.0.0'},
        ),
      ]).create();
      final deputy = Deputy(
        repo: repo,
        versionResolver: MockVersionResolver({
          'third_party_a': '1.1.0',
        }),
      );
      final updates = await deputy.scanForUpdates();
      expect(updates, isNotNull);
      expect(
        updates!.keys.single,
        'third_party_a',
        reason: 'Only "third_party_a" should be updated',
      );
      await updates.updatePubspecs();
      await d.repo([
        d.package(
          'local_a',
          dependencies: {'third_party_a': '1.1.0'},
        ),
      ]).validate();
    });

    test('groups', () async {
      final repo = await d.repo([
        d.package(
          'local_a',
          dependencies: {
            // ab group
            'third_party_a': '1.0.0',
            'third_party_b': '1.0.0',

            // c group
            'third_party_c': '1.0.0',

            // not updated
            'third_party_d': '1.0.0',
          },
        ),
      ]).create();
      const abGroupName = 'ab';
      const abGroup = {'third_party_a', 'third_party_b'};
      const cGroupName = 'third_party_c';
      const cGroup = {'third_party_c'};
      final deputy = Deputy(
        dependencyGroups: BuiltSetMultimap({
          abGroupName: abGroup,
        }),
        repo: repo,
        versionResolver: MockVersionResolver({
          'third_party_a': '1.1.0',
          'third_party_b': '1.1.0',
          'third_party_c': '1.1.0',
          'third_party_d': '1.0.0',
        }),
      );
      final updates = await deputy.scanForUpdates();
      expect(updates, isNotNull);

      expect(
        updates!.keys,
        unorderedEquals([abGroupName, cGroupName]),
        reason: 'The third party group should be bundled together. '
            'third_party_c should be in its own group. '
            'third_party_d should not be included.',
      );
      expect(
        updates.values,
        unorderedEquals([
          isA<DependencyGroupUpdate>()
              .having(
                (group) => group.groupName,
                'groupName',
                abGroupName,
              )
              .having(
                (group) => group.dependencies.toSet(),
                'dependencies',
                abGroup,
              )
              .having(
                (group) => group.updatedConstraints.toMap(),
                'updatedConstraints',
                equals({
                  'third_party_a': VersionConstraint.parse('1.1.0'),
                  'third_party_b': VersionConstraint.parse('1.1.0'),
                }),
              )
              .having(
                (group) => group.updates.keys,
                'updates',
                unorderedEquals(abGroup),
              ),
          isA<DependencyGroupUpdate>()
              .having(
                (group) => group.groupName,
                'groupName',
                cGroupName,
              )
              .having(
                (group) => group.dependencies.toSet(),
                'dependencies',
                cGroup,
              )
              .having(
                (group) => group.updatedConstraints.toMap(),
                'updatedConstraints',
                equals({
                  'third_party_c': VersionConstraint.parse('1.1.0'),
                }),
              )
              .having(
                (group) => group.updates.keys,
                'updates',
                unorderedEquals(cGroup),
              ),
        ]),
      );
      await updates.updatePubspecs();
      await d.repo([
        d.package(
          'local_a',
          dependencies: {
            'third_party_a': '1.1.0',
            'third_party_b': '1.1.0',
            'third_party_c': '1.1.0',
            'third_party_d': '1.0.0',
          },
        ),
      ]).validate();
    });

    // This test's goal is to verify that dependencies on the doNotBump
    // list are ignored when running Deputy. If they are part of a
    // group, then every other package in the group should be updated.
    // If they are not part of a group, then they should not form an
    // update group and should be completely ignored.
    test('doNotBump', () async {
      final repo = await d.repo([
        d.pubspec('''
name: amplify_flutter_repo

environment:
  sdk: ^3.0.0
  flutter: ">=3.10.0"

dependencies:
  code_builder: 4.6.0
  dart_style: 2.3.2
  xml: 6.3.0

aft:
  doNotBump:
    - dart_style
    - xml
'''),
        d.package(
          'local_a',
          dependencies: {
            // codegen group
            'code_builder': '4.6.0',
            'dart_style': '2.3.2',

            // another do-not-bump dep
            'xml': '6.3.0',
          },
        ),
      ]).create();
      const codegenGroupName = 'code_generation';
      const codegenGroup = {'code_builder', 'dart_style'};
      final deputy = Deputy(
        dependencyGroups: BuiltSetMultimap({
          codegenGroupName: codegenGroup,
        }),
        repo: repo,
        versionResolver: MockVersionResolver({
          'code_builder': '4.7.0',
          'dart_style': '2.3.3',
          'xml': '6.4.0',
        }),
      );
      final updates = await deputy.scanForUpdates();
      expect(updates, isNotNull);
      expect(
        updates!.keys,
        unorderedEquals([codegenGroupName]),
        reason: 'Only the codegen group should be in the update map. '
            'xml should not have been included since its on the doNotBump list.',
      );
      expect(
        updates.values.single,
        isA<DependencyGroupUpdate>()
            .having(
              (group) => group.groupName,
              'groupName',
              codegenGroupName,
            )
            .having(
              (group) => group.dependencies.toSet(),
              'dependencies',
              equals(codegenGroup),
            )
            .having(
              (group) => group.updatedConstraints.toMap(),
              'updatedConstraints',
              // xml should not be included
              equals({
                'code_builder': VersionConstraint.parse('4.7.0'),
              }),
            )
            .having(
              (group) => group.updates.keys,
              'updates',
              // xml should not be included
              unorderedEquals(['code_builder']),
            ),
      );
      await updates.updatePubspecs();
      await d.repo([
        d.pubspec('''
name: amplify_flutter_repo

environment:
  sdk: ^3.0.0
  flutter: ">=3.10.0"

dependencies:
  code_builder: 4.7.0
  dart_style: 2.3.2
  xml: 6.3.0

aft:
  doNotBump:
    - dart_style
    - xml
'''),
        d.package(
          'local_a',
          dependencies: {
            // Only code_builder should have been bumped.
            'code_builder': '4.7.0',
            'dart_style': '2.3.2',
            'xml': '6.3.0',
          },
        ),
      ]).validate();
    });
  });
}

final class MockVersionResolver implements VersionResolver {
  MockVersionResolver(Map<String, String> versions)
      : versions = versions.map(
          (name, spec) => MapEntry(name, Version.parse(spec)),
        );

  final Map<String, Version> versions;

  @override
  Version? latestVersion(String dependency) {
    return versions[dependency];
  }
}
