import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

class Equated with AWSEquatable<Equated> {
  Equated(this.a, this.b);

  final String a;
  final String b;

  @override
  List<Object?> get props => [a, b];
}

void main() {
  group('AWSEquatable', () {
    test('a == b', () {
      final a = Equated('a', 'b');
      final b = Equated('a', 'b');

      expect(a == b, isTrue);
    });

    test('a != b', () {
      final a = Equated('a', 'b');
      final b = Equated('b', 'a');

      expect(a == b, isFalse);
    });
  });
}
