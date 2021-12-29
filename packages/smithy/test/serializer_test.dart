import 'dart:typed_data';

import 'package:smithy/smithy.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Serializer', () {
    test('Blob', () {
      final blob = Uint8List.fromList([1, 2, 3, 4]);
      const json = '[1,2,3,4]';

      expect(blobSerializer.serialize(blob), equals(json));
      expect(blobSerializer.deserialize(json), equals(blob));

      expect(blobSerializer.serialize(null), equals(null));
      expect(blobSerializer.deserialize(null), equals(null));
    });
  });

  group('Int64', () {
    test('null', () {
      expect(int64Serializer.serialize(null), equals(null));
      expect(int64Serializer.deserialize(null), equals(null));
    });

    test('MAX_VALUE', () {
      final int64 = Int64.MAX_VALUE;
      const json = '9223372036854775807';

      expect(int64Serializer.serialize(int64), equals(json));
      expect(int64Serializer.deserialize(json), equals(int64));
    });

    test('MIN_VALUE', () {
      final int64 = Int64.MIN_VALUE;
      const json = '-9223372036854775808';

      expect(int64Serializer.serialize(int64), equals(json));
      expect(int64Serializer.deserialize(json), equals(int64));
    });
  });
}
