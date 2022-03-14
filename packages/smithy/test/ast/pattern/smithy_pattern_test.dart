import 'package:smithy/ast.dart';
import 'package:test/test.dart';

final throwsInvalidPattern = throwsA(isA<InvalidPatternError>());

void main() {
  SmithyPattern parse(String uri, {bool allowGreedyLabels = true}) =>
      SmithyPattern(
        uri,
        uri.split('/').sublist(1).map(Segment.parse).toList(),
        allowsGreedyLabels: allowGreedyLabels,
      );

  group('SmithyPatternTest', () {
    test('parses greedy labels', () {
      const target = '/foo/baz/{bar+}';
      final pattern = parse(target);
      expect(pattern.toString(), equals(target));
      expect(
        pattern.greedyLabel,
        equals(Segment('bar', SegmentType.greedyLabel)),
      );
    });

    test('computes hash and equals', () {
      const target = '/foo';
      final pattern = parse(target);
      final pattern2 = parse(target);

      expect(pattern, equals(pattern2));
      expect(pattern.hashCode, equals(pattern2.hashCode));
    });

    test('labels are case insensitive', () {
      const target = '/foo/{baz}';
      final pattern = parse(target);
      final segment = Segment('baz', SegmentType.label);

      expect(pattern.getLabel('baz'), equals(segment));
      expect(pattern.getLabel('BAZ'), equals(segment));
    });

    test('labels must not include empty segments', () {
      const target = '//baz';
      expect(() => parse(target), throwsInvalidPattern);
    });

    test('labels must not be repeated', () {
      const target = '/{foo}/{Foo}';
      expect(() => parse(target), throwsInvalidPattern);
    });

    test('restricts greedy labels', () {
      const target = '/foo/{baz+}';
      expect(
        () => parse(target, allowGreedyLabels: false),
        throwsInvalidPattern,
      );
    });

    test('no more than one greedy label', () {
      const target = '/{foo+}/{baz+}';
      expect(() => parse(target), throwsInvalidPattern);
    });

    test('greedy labels must be last in pattern', () {
      const target = '/{foo+}/{baz}';
      expect(() => parse(target), throwsInvalidPattern);
    });

    test('no empty labels', () {
      const target = '/{}';
      expect(() => parse(target), throwsInvalidPattern);
    });

    test('labels must span entire segment', () {
      const target = '/{foo}baz';
      expect(() => parse(target), throwsInvalidPattern);
    });
  });
}
