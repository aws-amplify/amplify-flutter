import 'package:aft/src/changelog/commit_message.dart';
import 'package:test/test.dart';

void main() {
  group('CommitMessage', () {
    test('parses merge commits', () {
      final parsed = CommitMessage.parse(
        '',
        'Merge pull request #2407 from NikaHsn/chore/contributing-doc-fix',
        body: '',
        dateTime: DateTime.now(),
      );
      expect(parsed.type, CommitType.merge);
      expect(parsed.bumpType, isNull);
    });

    test('parses version commit', () {
      final parsed = CommitMessage.parse(
        '',
        'chore(version): Next version',
        body: '',
        dateTime: DateTime.now(),
      );
      expect(parsed.type, CommitType.version);
      expect(parsed.bumpType, isNull);
    });
  });
}
