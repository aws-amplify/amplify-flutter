// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft_common/aft_common.dart';
import 'package:aft_common/descriptors.dart' as d;
import 'package:aws_common/aws_common.dart';
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
            'third_party_a': '1.0.0',
            'third_party_b': '1.0.0',
            'third_party_c': '1.0.0',
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
        }),
      );
      final updates = await deputy.scanForUpdates();
      expect(updates, isNotNull);

      expect(
        updates!.keys,
        unorderedEquals([abGroupName, cGroupName]),
        reason: 'The third party group should be bundled together. '
            'third_party_c should be in its own group.',
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
          },
        ),
      ]).validate();
    });
  });
}

final class MockVersionResolver extends VersionResolver {
  MockVersionResolver(Map<String, String> versions)
      : versions = versions.map(
          (name, spec) => MapEntry(name, Version.parse(spec)),
        ),
        super(logger: AWSLogger().createChild('MockVersionResolver'));

  final Map<String, Version> versions;

  @override
  Version? latestVersion(String package) {
    return versions[package];
  }
}
