// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';
import 'package:aft/src/changelog/commit_message.dart';
import 'package:aft/src/repo.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:test/test.dart';

import '../helpers/descriptors.dart' as d;

const _leaf = 'amplify_foundation_test';
const _dependent = 'amplify_consumer_test';

VersionConstraint _constraintOn(PackageInfo package, String dependency) {
  final pubspec = Pubspec.parse(
    package.pubspecInfo.pubspecYamlEditor.toString(),
  );
  final dep = pubspec.dependencies[dependency];
  return (dep as HostedDependency).version;
}

void main() {
  group('bumpVersion constraint cascade', () {
    late Repo repo;
    late PackageInfo leaf;
    late PackageInfo dependent;

    setUp(() async {
      repo = await d.repo([
        // Component-less, post-1.0 package (not in any component).
        d.package(_leaf, version: '1.2.3'),
        // First-party dependent pinning the leaf with a tight upper bound.
        d.package(
          _dependent,
          version: '1.0.0',
          dependencies: {_leaf: '>=1.2.0 <1.3.0'},
        ),
      ]).create();
      leaf = repo[_leaf];
      dependent = repo[_dependent];
      // Precondition: the leaf really is component-less.
      final component = repo.aftConfig.componentForPackage(_leaf);
      expect(repo.components.containsKey(component), isFalse);
    });

    test('minor bump out of range widens + patch-bumps the dependent', () {
      repo.bumpVersion(
        leaf,
        commit: CommitMessage.parse('0' * 40, 'feat: test', body: ''),
        type: VersionBumpType.nonBreaking,
        canBump: (_) => true,
        includeInChangelog: false,
      );

      expect(
        repo.versionChanges.proposedVersion(_leaf),
        Version(1, 3, 0),
        reason: 'post-1.0 feat is a minor bump',
      );
      expect(
        repo.versionChanges.proposedVersion(_dependent),
        Version(1, 0, 1),
        reason:
            'dependent is patch-bumped even though the leaf has no component',
      );
      expect(
        _constraintOn(dependent, _leaf),
        VersionConstraint.parse('>=1.3.0 <1.4.0'),
        reason: 'stranded constraint is widened to include the new version',
      );
    });

    test('patch bump in range leaves the dependent untouched', () {
      repo.bumpVersion(
        leaf,
        commit: CommitMessage.parse('0' * 40, 'fix: test', body: ''),
        type: VersionBumpType.patch,
        canBump: (_) => true,
        includeInChangelog: false,
      );

      expect(repo.versionChanges.proposedVersion(_leaf), Version(1, 2, 4));
      expect(
        repo.versionChanges.proposedVersion(_dependent),
        isNull,
        reason: 'in-range patch bump must not cascade',
      );
      expect(
        _constraintOn(dependent, _leaf),
        VersionConstraint.parse('>=1.2.0 <1.3.0'),
        reason: 'constraint already allows the new version',
      );
    });
  });
}
