// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:io';

import 'package:aft/src/commands/get_release_notes_command.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

void main() {
  group('extractReleaseNotes', () {
    group('basic extraction', () {
      test('extracts the body of a single version, trimmed', () {
        const md = '''
## 2.10.1

### Fixes
- fix(auth): handle SMS_OTP challenge ([#6632](https://example.com))
- fix(graphql): keep type when parsing data ([#6657](https://example.com))

## 2.10.0

### Features
- feat(auth): passwordless login
''';

        final result = extractReleaseNotes(md, '2.10.1');
        expect(result, isA<ReleaseNotesFound>());
        final notes = (result as ReleaseNotesFound).notes;
        expect(notes, '''### Fixes
- fix(auth): handle SMS_OTP challenge ([#6632](https://example.com))
- fix(graphql): keep type when parsing data ([#6657](https://example.com))''');
      });

      test('extracts body with only a single bullet (no subsections)', () {
        const md = '''
## 1.2.3

- Minor bug fixes and improvements

## 1.2.2

### Fixes
- fix: something
''';

        final result = extractReleaseNotes(md, '1.2.3');
        expect(result, isA<ReleaseNotesFound>());
        expect(
          (result as ReleaseNotesFound).notes,
          '- Minor bug fixes and improvements',
        );
      });

      test('preserves blank lines between subsections in the body', () {
        const md = '''
## 1.0.0

### Features
- feat: a

### Fixes
- fix: b

## 0.9.0
''';

        final result = extractReleaseNotes(md, '1.0.0');
        expect(result, isA<ReleaseNotesFound>());
        expect(
          (result as ReleaseNotesFound).notes,
          '### Features\n- feat: a\n\n### Fixes\n- fix: b',
        );
      });

      test('preserves multi-line bullets and sub-bullets as-is', () {
        const md = '''
## 1.0.0

- parent bullet
  - nested bullet with
    continuation line
- another parent

## 0.9.0
''';

        final result = extractReleaseNotes(md, '1.0.0');
        expect(result, isA<ReleaseNotesFound>());
        expect(
          (result as ReleaseNotesFound).notes,
          '- parent bullet\n'
          '  - nested bullet with\n'
          '    continuation line\n'
          '- another parent',
        );
      });
    });

    group('version not found', () {
      test('returns ReleaseNotesVersionNotFound when no matching header', () {
        const md = '''
## 2.0.0

- something

## 1.0.0

- something else
''';

        expect(
          extractReleaseNotes(md, '99.99.99'),
          isA<ReleaseNotesVersionNotFound>(),
        );
      });

      test('empty changelog returns version not found', () {
        expect(
          extractReleaseNotes('', '1.0.0'),
          isA<ReleaseNotesVersionNotFound>(),
        );
      });

      test('no version headers at all returns version not found', () {
        const md = '# Changelog\n\nSome intro prose.\n';
        expect(
          extractReleaseNotes(md, '1.0.0'),
          isA<ReleaseNotesVersionNotFound>(),
        );
      });

      test('`## Unreleased` header does not match semver version', () {
        const md = '''
## Unreleased

- wip

## 1.0.0

- real notes
''';
        expect(
          extractReleaseNotes(md, '2.0.0'),
          isA<ReleaseNotesVersionNotFound>(),
        );
      });
    });

    group('empty section', () {
      test('version header immediately followed by next header', () {
        const md = '''
## 1.0.0
## 0.9.0

- notes
''';
        expect(extractReleaseNotes(md, '1.0.0'), isA<ReleaseNotesEmpty>());
      });

      test('section contains only blank lines', () {
        const md = '''
## 1.0.0


## 0.9.0

- notes
''';
        expect(extractReleaseNotes(md, '1.0.0'), isA<ReleaseNotesEmpty>());
      });

      test('section contains only whitespace-only lines', () {
        const md = '## 1.0.0\n   \n\t\n## 0.9.0\n- notes\n';
        expect(extractReleaseNotes(md, '1.0.0'), isA<ReleaseNotesEmpty>());
      });

      test('last version with empty body returns empty', () {
        const md = '## 1.0.0\n\n\n';
        expect(extractReleaseNotes(md, '1.0.0'), isA<ReleaseNotesEmpty>());
      });
    });

    group('last version in file', () {
      test('extracts to EOF when no trailing `## ` header', () {
        const md = '''
## 2.0.0

- newer

## 1.0.0

- first release
- second point''';

        final result = extractReleaseNotes(md, '1.0.0');
        expect(result, isA<ReleaseNotesFound>());
        expect(
          (result as ReleaseNotesFound).notes,
          '- first release\n- second point',
        );
      });

      test('extracts to EOF when file ends with trailing newlines', () {
        const md = '## 2.0.0\n\n- only\n\n\n';

        final result = extractReleaseNotes(md, '2.0.0');
        expect(result, isA<ReleaseNotesFound>());
        expect((result as ReleaseNotesFound).notes, '- only');
      });
    });

    group('out-of-order versions', () {
      test('scans whole file regardless of order', () {
        const md = '''
## 2.0.0

- newer notes

## 1.0.0

- older notes

## 2.5.0

- even newer notes
''';

        final result = extractReleaseNotes(md, '2.5.0');
        expect(result, isA<ReleaseNotesFound>());
        expect((result as ReleaseNotesFound).notes, '- even newer notes');
      });
    });

    group('fenced code blocks', () {
      test('ignores `## ` inside backtick-fenced code block', () {
        const md = '''
## 1.0.0

### Features

Example:

```markdown
## This is a heading inside a code block
And more content
```

More after the block.

## 0.9.0

- older
''';

        final result = extractReleaseNotes(md, '1.0.0');
        expect(result, isA<ReleaseNotesFound>());
        final notes = (result as ReleaseNotesFound).notes;
        expect(notes, contains('## This is a heading inside a code block'));
        expect(notes, contains('More after the block.'));
        expect(notes, isNot(contains('older')));
      });

      test('ignores `## ` inside tilde-fenced code block', () {
        const md = '''
## 1.0.0

~~~
## fake header
~~~

## 0.9.0
- older
''';

        final result = extractReleaseNotes(md, '1.0.0');
        expect(result, isA<ReleaseNotesFound>());
        expect((result as ReleaseNotesFound).notes, '~~~\n## fake header\n~~~');
      });

      test('handles backtick fences with language tag', () {
        const md = '''
## 1.0.0

```dart
// ## not a header
void main() {}
```

## 0.9.0
''';

        final result = extractReleaseNotes(md, '1.0.0');
        expect(result, isA<ReleaseNotesFound>());
        final notes = (result as ReleaseNotesFound).notes;
        expect(notes, contains('// ## not a header'));
        expect(notes, contains('void main() {}'));
      });
    });

    group('pre-release and build versions', () {
      test('matches `## 2.10.1-dev.0` exactly', () {
        const md = '''
## 2.10.1-dev.0

- dev notes

## 2.10.0

- stable notes
''';

        final result = extractReleaseNotes(md, '2.10.1-dev.0');
        expect(result, isA<ReleaseNotesFound>());
        expect((result as ReleaseNotesFound).notes, '- dev notes');

        // Querying the stable version must not match the prerelease.
        expect(
          extractReleaseNotes(md, '2.10.0'),
          isA<ReleaseNotesFound>().having(
            (r) => r.notes,
            'notes',
            '- stable notes',
          ),
        );
      });

      test('matches `## 1.0.0+1` build-metadata version', () {
        const md = '''
## 1.0.0+1

- rebuild notes

## 1.0.0

- original notes
''';

        final result = extractReleaseNotes(md, '1.0.0+1');
        expect(result, isA<ReleaseNotesFound>());
        expect((result as ReleaseNotesFound).notes, '- rebuild notes');
      });

      test('matches `## 2.0.0-beta.1` prerelease', () {
        const md = '## 2.0.0-beta.1\n\n- beta notes\n';
        final result = extractReleaseNotes(md, '2.0.0-beta.1');
        expect(result, isA<ReleaseNotesFound>());
        expect((result as ReleaseNotesFound).notes, '- beta notes');
      });

      test(
        'does not partial-match: querying 2.10.1 must not hit 2.10.1-dev.0',
        () {
          const md = '## 2.10.1-dev.0\n\n- dev\n';
          expect(
            extractReleaseNotes(md, '2.10.1'),
            isA<ReleaseNotesVersionNotFound>(),
          );
        },
      );
    });

    group('header variations', () {
      test('supports trailing date in header via first-token match', () {
        const md = '''
## 1.0.0 (2022-08-02)

- dated notes

## 0.9.0 - 2022-05-17

- another dated
''';

        expect(
          extractReleaseNotes(md, '1.0.0'),
          isA<ReleaseNotesFound>().having(
            (r) => r.notes,
            'notes',
            '- dated notes',
          ),
        );
        expect(
          extractReleaseNotes(md, '0.9.0'),
          isA<ReleaseNotesFound>().having(
            (r) => r.notes,
            'notes',
            '- another dated',
          ),
        );
      });

      test('tolerates trailing whitespace on the header line', () {
        const md = '## 1.2.3   \n\n- notes\n';
        final result = extractReleaseNotes(md, '1.2.3');
        expect(result, isA<ReleaseNotesFound>());
        expect((result as ReleaseNotesFound).notes, '- notes');
      });

      test('does NOT match `### 1.0.0` (wrong heading level)', () {
        const md = '### 1.0.0\n\n- nope\n';
        expect(
          extractReleaseNotes(md, '1.0.0'),
          isA<ReleaseNotesVersionNotFound>(),
        );
      });

      test('does NOT match `#1.0.0` (missing space)', () {
        const md = '##1.0.0\n\n- nope\n';
        expect(
          extractReleaseNotes(md, '1.0.0'),
          isA<ReleaseNotesVersionNotFound>(),
        );
      });
    });

    group('line endings', () {
      test('handles CRLF line endings', () {
        const md =
            '## 1.0.0\r\n\r\n- crlf notes\r\n\r\n## 0.9.0\r\n\r\n- old\r\n';
        final result = extractReleaseNotes(md, '1.0.0');
        expect(result, isA<ReleaseNotesFound>());
        expect((result as ReleaseNotesFound).notes, '- crlf notes');
      });

      test('handles LF line endings', () {
        const md = '## 1.0.0\n\n- lf notes\n\n## 0.9.0\n';
        final result = extractReleaseNotes(md, '1.0.0');
        expect(result, isA<ReleaseNotesFound>());
        expect((result as ReleaseNotesFound).notes, '- lf notes');
      });

      test('handles mixed CRLF/LF line endings', () {
        const md = '## 1.0.0\r\n\r\n- mixed\n\r\n## 0.9.0\n';
        final result = extractReleaseNotes(md, '1.0.0');
        expect(result, isA<ReleaseNotesFound>());
        expect((result as ReleaseNotesFound).notes, '- mixed');
      });
    });

    group('special characters in content', () {
      test('preserves shell-unfriendly characters unchanged', () {
        const md = r'''
## 1.0.0

- Update to `$NEW_VERSION`
- Fix "error" with 'quotes'
- Handles $variables and `backticks`

## 0.9.0
''';
        final result = extractReleaseNotes(md, '1.0.0');
        expect(result, isA<ReleaseNotesFound>());
        final notes = (result as ReleaseNotesFound).notes;
        expect(notes, contains(r'Update to `$NEW_VERSION`'));
        expect(notes, contains('"error" with \'quotes\''));
        expect(notes, contains(r'$variables and `backticks`'));
      });

      test('preserves unicode/emoji', () {
        const md = '''
## 1.0.0

- 🎉 celebrate
- 中文 characters
- café

## 0.9.0
''';
        final result = extractReleaseNotes(md, '1.0.0');
        expect(result, isA<ReleaseNotesFound>());
        final notes = (result as ReleaseNotesFound).notes;
        expect(notes, contains('🎉 celebrate'));
        expect(notes, contains('中文'));
        expect(notes, contains('café'));
      });
    });

    group('real fixtures', () {
      final fixturesDir = p.join(
        'test',
        'commands',
        'fixtures',
        'get_release_notes',
      );

      test('standard_changelog.md: extracts 2.10.1', () {
        final md = File(
          p.join(fixturesDir, 'standard_changelog.md'),
        ).readAsStringSync();
        final result = extractReleaseNotes(md, '2.10.1');
        expect(result, isA<ReleaseNotesFound>());
        final notes = (result as ReleaseNotesFound).notes;
        expect(notes, startsWith('### Fixes'));
        expect(notes, contains('fix(auth): handle SMS_OTP'));
        expect(notes, isNot(contains('## 2.10.0')));
      });

      test(
        'standard_changelog.md: extracts last version (no trailing header)',
        () {
          final md = File(
            p.join(fixturesDir, 'standard_changelog.md'),
          ).readAsStringSync();
          final result = extractReleaseNotes(md, '2.0.0');
          expect(result, isA<ReleaseNotesFound>());
          final notes = (result as ReleaseNotesFound).notes;
          expect(notes, contains('initial 2.0.0 release'));
        },
      );

      test('code_block_changelog.md: `## ` inside code block is ignored', () {
        final md = File(
          p.join(fixturesDir, 'code_block_changelog.md'),
        ).readAsStringSync();
        final result = extractReleaseNotes(md, '1.0.0');
        expect(result, isA<ReleaseNotesFound>());
        final notes = (result as ReleaseNotesFound).notes;
        expect(notes, contains('## This heading is inside a code block'));
        expect(notes, contains('After the code block'));
        expect(notes, isNot(contains('- older release')));
      });

      test('empty_section_changelog.md: empty section detected', () {
        final md = File(
          p.join(fixturesDir, 'empty_section_changelog.md'),
        ).readAsStringSync();
        expect(extractReleaseNotes(md, '1.0.0'), isA<ReleaseNotesEmpty>());
      });

      test('prerelease_changelog.md: extracts 1.0.0-next.0', () {
        final md = File(
          p.join(fixturesDir, 'prerelease_changelog.md'),
        ).readAsStringSync();
        final result = extractReleaseNotes(md, '1.0.0-next.0');
        expect(result, isA<ReleaseNotesFound>());
        expect(
          (result as ReleaseNotesFound).notes,
          contains('initial preview'),
        );
      });

      test('out_of_order_changelog.md: matches regardless of order', () {
        final md = File(
          p.join(fixturesDir, 'out_of_order_changelog.md'),
        ).readAsStringSync();
        final result = extractReleaseNotes(md, '1.5.0');
        expect(result, isA<ReleaseNotesFound>());
        expect((result as ReleaseNotesFound).notes, contains('late addition'));
      });
    });
  });

  group('GetReleaseNotesCommand (integration)', () {
    // Path to the aft entrypoint, resolved from the current working directory
    // (which is packages/aft when tests run).
    final aftEntrypoint = p.absolute('bin', 'aft.dart');
    final repoRoot = p.absolute('..', '..');

    Future<ProcessResult> runCommand(List<String> args) {
      return Process.run(Platform.resolvedExecutable, [
        'run',
        aftEntrypoint,
        ...args,
      ], workingDirectory: repoRoot);
    }

    /// Applies the documented awk one-liner
    /// `awk '/^Changelog:$/{f=1;next} f'` in pure Dart: drops every
    /// line up to and including the first `Changelog:` marker line, then
    /// returns the remaining lines joined with `\n`. Mirrors awk's behavior
    /// of always appending a trailing newline between printed lines but not
    /// after the last one (which matters for trailing-newline assertions).
    String stripChangelogMarker(String stdout) {
      final lines = stdout.split('\n');
      var markerIndex = -1;
      for (var i = 0; i < lines.length; i++) {
        if (lines[i] == 'Changelog:') {
          markerIndex = i;
          break;
        }
      }
      if (markerIndex < 0) {
        return '';
      }
      return lines.sublist(markerIndex + 1).join('\n');
    }

    test('exits 0 and prints notes for a real package/version', () async {
      final result = await runCommand([
        'get-release-notes',
        '--package',
        'amplify_core',
        '--version',
        '2.10.1',
      ]);
      expect(
        result.exitCode,
        0,
        reason: 'stdout=${result.stdout}\nstderr=${result.stderr}',
      );
      final stdout = result.stdout as String;
      // The success output is prefixed with a blank line and the
      // `Changelog:` marker, then the notes body.
      expect(stdout, startsWith('\nChangelog:\n'));
      expect(stdout, contains('### Fixes'));
      expect(stdout, contains('SMS_OTP'));
    });

    test('extracted output (via awk) contains only the notes', () async {
      final result = await runCommand([
        'get-release-notes',
        '--package',
        'amplify_core',
        '--version',
        '2.10.1',
      ]);
      expect(result.exitCode, 0);
      final extracted = stripChangelogMarker(result.stdout as String);
      expect(extracted, startsWith('### Fixes'));
      expect(extracted, contains('SMS_OTP'));
      // Marker itself must not appear in the extracted content.
      expect(extracted, isNot(contains('Changelog:')));
    });

    test('exits 2 when version is not in the CHANGELOG', () async {
      final result = await runCommand([
        'get-release-notes',
        '--package',
        'amplify_core',
        '--version',
        '99.99.99',
      ]);
      expect(result.exitCode, 2);
      expect(result.stderr, contains('version 99.99.99 not found'));
      // Error paths must never emit the marker on stdout.
      expect(result.stdout, isEmpty);
    });

    test('exits 1 when package does not exist', () async {
      final result = await runCommand([
        'get-release-notes',
        '--package',
        'does_not_exist_xyz',
        '--version',
        '1.0.0',
      ]);
      expect(result.exitCode, 1);
      expect(result.stderr, contains("package 'does_not_exist_xyz' not found"));
      expect(result.stdout, isEmpty);
    });
  });

  group('Changelog: marker semantics', () {
    test('releaseNotesMarker constant is exactly "Changelog:"', () {
      // Callers (awk one-liner, workflow YAML) rely on this exact string.
      expect(releaseNotesMarker, 'Changelog:');
    });

    test(
      "awk extraction preserves a literal 'Changelog:' line in the body",
      () {
        // Pure-Dart mirror of `awk '/^Changelog:$/{f=1;next} f'`.
        String awkExtract(String input) {
          final lines = input.split('\n');
          final buffer = <String>[];
          var found = false;
          for (final line in lines) {
            if (found) {
              buffer.add(line);
              continue;
            }
            if (line == 'Changelog:') {
              found = true;
            }
          }
          return buffer.join('\n');
        }

        // Simulate a command-produced stdout that itself contains a
        // literal `Changelog:` line inside the notes body. Only the FIRST
        // marker should be consumed; the second must survive.
        const raw =
            '\n'
            'Changelog:\n'
            '- intro bullet\n'
            'Changelog:\n'
            '- trailing bullet\n';
        final extracted = awkExtract(raw);
        expect(extracted, contains('Changelog:'));
        expect(extracted, contains('- intro bullet'));
        expect(extracted, contains('- trailing bullet'));
      },
    );
  });

  group('extractReleaseNotes is marker-free', () {
    // Regression guard: the pure extractor must NOT add the marker. That is
    // exclusively the CLI's job so extractReleaseNotes stays trivially
    // testable and reusable.
    test('returned notes never contain the Changelog: marker', () {
      const md = '''
## 1.0.0

### Fixes
- fix: something

## 0.9.0
- older
''';
      final result = extractReleaseNotes(md, '1.0.0');
      expect(result, isA<ReleaseNotesFound>());
      final notes = (result as ReleaseNotesFound).notes;
      expect(notes, isNot(contains('Changelog:')));
      expect(notes, isNot(startsWith('\n')));
    });
  });
}
