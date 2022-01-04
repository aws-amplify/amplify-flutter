import 'package:built_value/serializer.dart';

class BigIntSerializer implements PrimitiveSerializer<BigInt> {
  const BigIntSerializer._(this._asNum);

  /// Serializes [BigInt] types as a [num].
  static const asNum = BigIntSerializer._(true);

  /// Serializes [BigInt] types as a base-10 [String].
  static const asString = BigIntSerializer._(false);

  final bool _asNum;

  // [BigInt] has a private implementation type; register it via [BigInt.zero].
  @override
  Iterable<Type> get types => [BigInt, BigInt.zero.runtimeType];

  @override
  final String wireName = 'BigInt';

  @override
  Object serialize(Serializers serializers, BigInt bigInt,
      {FullType specifiedType = FullType.unspecified}) {
    if (_asNum) {
      return bigInt.toInt();
    }
    return bigInt.toString();
  }

  @override
  BigInt deserialize(Serializers serializers, Object? serialized,
      {FullType specifiedType = FullType.unspecified}) {
    if (_asNum) {
      return BigInt.from(serialized as num);
    }
    return BigInt.parse(serialized as String);
  }
}
