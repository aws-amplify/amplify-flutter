// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'package:aft/src/commands/get_release_notes_command.dart';
import 'package:test/test.dart';

void main() {
  group('extractReleaseNotes - bracketed and v-prefix support', () {
    test('supports bracketed version headers like [1.0.0]', () {
      const md = '''
## [1.0.0]

- some notes

## [0.9.0]

- old notes
''';

      // Query with plain version matches bracketed header
      final result = extractReleaseNotes(md, '1.0.0');
      expect(result, isA<ReleaseNotesFound>());
      expect((result as ReleaseNotesFound).notes, '- some notes');
    });

    test('supports v-prefixed version headers like v1.0.0', () {
      const md = '''
## v1.0.0

- some notes

## v0.9.0

- old notes
''';

      // Query with plain version matches v-prefixed header
      final result = extractReleaseNotes(md, '1.0.0');
      expect(result, isA<ReleaseNotesFound>());
      expect((result as ReleaseNotesFound).notes, '- some notes');
    });

    test('handles UTF-8 BOM at start of file', () {
      // UTF-8 BOM is the character U+FEFF
      const md = '\uFEFF## 1.0.0\n\n- notes with BOM\n\n## 0.9.0\n\n- old\n';

      final result = extractReleaseNotes(md, '1.0.0');
      expect(result, isA<ReleaseNotesFound>());
      expect((result as ReleaseNotesFound).notes, '- notes with BOM');
    });

    test('handles bracketed version with date', () {
      const md = '''
## [1.0.0] - 2022-08-02

- dated release

## [0.9.0] - 2022-05-17

- older dated release
''';

      final result = extractReleaseNotes(md, '1.0.0');
      expect(result, isA<ReleaseNotesFound>());
      expect((result as ReleaseNotesFound).notes, '- dated release');
    });

    test('handles v-prefix with prerelease', () {
      const md = '''
## v1.0.0-beta.1

- beta notes

## v0.9.0

- stable notes
''';

      // Matches with plain version query
      var result = extractReleaseNotes(md, '1.0.0-beta.1');
      expect(result, isA<ReleaseNotesFound>());
      expect((result as ReleaseNotesFound).notes, '- beta notes');

      // Also matches the stable version
      result = extractReleaseNotes(md, '0.9.0');
      expect(result, isA<ReleaseNotesFound>());
      expect((result as ReleaseNotesFound).notes, '- stable notes');
    });

    test('duplicate version headers - first wins', () {
      const md = '''
## 1.0.0

- first occurrence

## 2.0.0

- middle

## 1.0.0

- second occurrence (duplicate!)
''';

      final result = extractReleaseNotes(md, '1.0.0');
      expect(result, isA<ReleaseNotesFound>());
      final notes = (result as ReleaseNotesFound).notes;
      expect(notes, '- first occurrence');
      expect(notes, isNot(contains('second')));
    });

    test('mixed decoration styles in same file', () {
      const md = '''
## [2.0.0]

- bracketed

## v1.5.0

- v-prefixed

## 1.0.0

- plain
''';

      // All should be queryable with plain version
      var result = extractReleaseNotes(md, '2.0.0');
      expect(result, isA<ReleaseNotesFound>());
      expect((result as ReleaseNotesFound).notes, '- bracketed');

      result = extractReleaseNotes(md, '1.5.0');
      expect(result, isA<ReleaseNotesFound>());
      expect((result as ReleaseNotesFound).notes, '- v-prefixed');

      result = extractReleaseNotes(md, '1.0.0');
      expect(result, isA<ReleaseNotesFound>());
      expect((result as ReleaseNotesFound).notes, '- plain');
    });

    test('does not strip v from middle of version', () {
      const md = '''
## 1.0.0v2

- weird version

## v1.0.0

- normal v-prefix
''';

      // Should match exactly
      var result = extractReleaseNotes(md, '1.0.0v2');
      expect(result, isA<ReleaseNotesFound>());
      expect((result as ReleaseNotesFound).notes, '- weird version');

      // v-prefix should be stripped
      result = extractReleaseNotes(md, '1.0.0');
      expect(result, isA<ReleaseNotesFound>());
      expect((result as ReleaseNotesFound).notes, '- normal v-prefix');
    });

    test('only strips square brackets from start and end', () {
      const md = '''
## [1.0.0]

- correct bracketing

## 1[.]0[.]0

- weird bracketing in middle
''';

      final result = extractReleaseNotes(md, '1.0.0');
      expect(result, isA<ReleaseNotesFound>());
      expect((result as ReleaseNotesFound).notes, '- correct bracketing');

      // Middle brackets should not be stripped
      final result2 = extractReleaseNotes(md, '1[.]0[.]0');
      expect(result2, isA<ReleaseNotesFound>());
      expect(
        (result2 as ReleaseNotesFound).notes,
        '- weird bracketing in middle',
      );
    });
  });
}
