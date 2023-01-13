// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/src/changelog/changelog.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';

void main() {
  group('Changelog', () {
    group('parses semver', () {
      final semverStrings = {
        '1.0.0': Version(1, 0, 0),
        'v1.0.0': Version(1, 0, 0),
        'v1.0.0 (08-02-2022)': Version(1, 0, 0),
        '1.0.0-tag.1': Version(1, 0, 0, pre: 'tag.1'),
        '1.0.0+1': Version(1, 0, 0, build: '1'),
        'NEXT': nextVersion,
      };

      for (final semver in semverStrings.entries) {
        test(semver.key, () {
          final changlog = Changelog.parse('## ${semver.key}');
          expect(changlog.versions.keys.single, semver.value);
        });
      }
    });
  });
}
