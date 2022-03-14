import 'package:smithy/ast.dart';
import 'package:test/test.dart';

final throwsInvalidUriPattern = throwsA(isA<InvalidUriPatternError>());

void main() {
  group('UriPattern', () {
    test('parses uri', () {
      const pattern = '/foo/baz/{bar}?bam=boo&heck';
      final uri = UriPattern.parse(pattern);
      final segment = Segment('bar', SegmentType.label);

      expect(pattern.toString(), equals(pattern));
      expect(uri.segments.length, equals(3));
      expect(uri.queryLiterals.length, equals(2));
      expect(
        uri.queryLiterals,
        equals({
          'bam': 'boo',
          'heck': '',
        }),
      );
      expect(uri.labels, contains(segment));
      expect(uri.getLabel('bar'), equals(segment));
    });

    test('computes hash and equals', () {
      const pattern = '/foo/{baz+}/?bam';
      final uri = UriPattern.parse(pattern);
      final uri2 = UriPattern.parse(pattern);

      expect(uri, equals(uri2));
      expect(uri.hashCode, equals(uri2.hashCode));
    });

    test('labels must start with a slash', () {
      expect(() => UriPattern.parse('foo'), throwsInvalidUriPattern);
    });

    test('labels must not end with question mark', () {
      expect(() => UriPattern.parse('/foo?'), throwsInvalidUriPattern);
    });

    test('patterns must not contain fragments', () {
      expect(() => UriPattern.parse('/foo#bam'), throwsInvalidUriPattern);
    });

    test('labels must not appear in query string', () {
      expect(
        () => UriPattern.parse('/baz?bam={boozled}'),
        throwsInvalidUriPattern,
      );
    });

    test('detects case insensitive duplicate query string literals', () {
      expect(
        () => UriPattern.parse('/foo?baz=bar&baz=bam'),
        throwsInvalidUriPattern,
      );
    });
  });
}
