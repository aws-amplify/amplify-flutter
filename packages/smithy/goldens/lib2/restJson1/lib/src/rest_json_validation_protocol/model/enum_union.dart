// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.enum_union; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/enum_string.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;

abstract class EnumUnion extends _i1.SmithyUnion<EnumUnion> {
  const EnumUnion._();

  const factory EnumUnion.first(_i2.EnumString first) = EnumUnionFirst;

  const factory EnumUnion.second(_i2.EnumString second) = EnumUnionSecond;

  const factory EnumUnion.sdkUnknown(String name, Object value) =
      EnumUnionSdkUnknown;

  static const List<_i1.SmithySerializer<EnumUnion>> serializers = [
    EnumUnionRestJson1Serializer()
  ];

  _i2.EnumString? get first => null;
  _i2.EnumString? get second => null;
  @override
  Object get value => (first ?? second)!;
  @override
  T? when<T>(
      {T Function(_i2.EnumString)? first,
      T Function(_i2.EnumString)? second,
      T Function(String, Object)? sdkUnknown}) {
    if (this is EnumUnionFirst) {
      return first?.call((this as EnumUnionFirst).first);
    }
    if (this is EnumUnionSecond) {
      return second?.call((this as EnumUnionSecond).second);
    }
    return sdkUnknown?.call(name, value);
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'EnumUnion');
    if (first != null) {
      helper.add(r'first', first);
    }
    if (second != null) {
      helper.add(r'second', second);
    }
    return helper.toString();
  }
}

class EnumUnionFirst extends EnumUnion {
  const EnumUnionFirst(this.first) : super._();

  @override
  final _i2.EnumString first;

  @override
  String get name => 'first';
}

class EnumUnionSecond extends EnumUnion {
  const EnumUnionSecond(this.second) : super._();

  @override
  final _i2.EnumString second;

  @override
  String get name => 'second';
}

class EnumUnionSdkUnknown extends EnumUnion {
  const EnumUnionSdkUnknown(this.name, this.value) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class EnumUnionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<EnumUnion> {
  const EnumUnionRestJson1Serializer() : super('EnumUnion');

  @override
  Iterable<Type> get types => const [EnumUnion];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  EnumUnion deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'first':
        return EnumUnion.first((serializers.deserialize(value,
            specifiedType: const FullType(_i2.EnumString)) as _i2.EnumString));
      case 'second':
        return EnumUnion.second((serializers.deserialize(value,
            specifiedType: const FullType(_i2.EnumString)) as _i2.EnumString));
    }
    return EnumUnion.sdkUnknown(key, value);
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    (object as EnumUnion);
    return [
      object.name,
      object.when<Object?>(
          first: (_i2.EnumString first) => serializers.serialize(first,
              specifiedType: const FullType(_i2.EnumString)),
          second: (_i2.EnumString second) => serializers.serialize(second,
              specifiedType: const FullType(_i2.EnumString)),
          sdkUnknown: (String _, Object sdkUnknown) => sdkUnknown)!
    ];
  }
}
