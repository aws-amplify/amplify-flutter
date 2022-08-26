// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
