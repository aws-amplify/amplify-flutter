import 'package:test/test.dart';
import 'package:collection/collection.dart';

enum MyEnum { a, b, c }

extension MyEnumX on MyEnum {
  String get value {
    switch (this) {
      case MyEnum.a:
        return 'A';
      case MyEnum.b:
        return 'B';
      case MyEnum.c:
        return 'C';
    }
  }
}

extension MyEnumListX on List<MyEnum> {
  MyEnum? byValue(String value) => firstWhereOrNull((el) => el.value == value);
}

void main() {
  group('Enum', () {
    test('name', () {
      final a = MyEnum.a;

      expect(a.name, equals('a'));
      expect(MyEnum.values.byName('a'), equals(a));
    });

    test('value', () {
      final a = MyEnum.a;

      expect(a.value, equals('A'));
      expect(MyEnum.values.byValue('A'), equals(a));
    });
  });
}
