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

import 'package:aft/src/changelog/commit_message.dart';
import 'package:test/test.dart';

void main() {
  group('CommitMessage', () {
    test('parses merge commits', () {
      final parsed = CommitMessage.parse(
        'sha',
        'Merge pull request #1234 from user/chore/some-fix',
        body: '',
      );
      expect(
        parsed,
        isA<MergeCommitMessage>().having(
          (msg) => msg.taggedPr,
          'taggedPr',
          1234,
        ),
      );
      expect(parsed.bumpType, isNull);
    });

    group('VersionCommitMessage', () {
      test('parses version commit', () {
        final parsed = CommitMessage.parse(
          'sha',
          'chore(version): Next version',
          body: '',
        );
        expect(
          parsed,
          isA<VersionCommitMessage>().having(
            (msg) => msg.updatedComponents,
            'updatedComponents',
            isEmpty,
          ),
        );
        expect(parsed.bumpType, isNull);
      });

      test('parses updated components', () {
        final parsed = CommitMessage.parse(
          'sha',
          'chore(version): Next version',
          body: '''
New features
- a
- b
- c

Test-Trailer:123
Updated-Components:component_1,component_2
''',
        );
        expect(
          parsed,
          isA<VersionCommitMessage>().having(
            (msg) => msg.updatedComponents,
            'updatedComponents',
            unorderedEquals(['component_1', 'component_2']),
          ),
        );
      });
    });
  });
}
