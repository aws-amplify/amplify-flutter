// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_validation_protocol.model.enum_union; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/enum_string.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;

sealed class EnumUnion extends _i1.SmithyUnion<EnumUnion> {
  const EnumUnion._();

  const factory EnumUnion.first(_i2.EnumString first) = EnumUnionFirst;

  const factory EnumUnion.second(_i2.EnumString second) = EnumUnionSecond;

  const factory EnumUnion.sdkUnknown(
    String name,
    Object value,
  ) = EnumUnionSdkUnknown;

  static const List<_i1.SmithySerializer<EnumUnion>> serializers = [
    EnumUnionRestJson1Serializer()
  ];

  _i2.EnumString? get first => null;
  _i2.EnumString? get second => null;
  @override
  Object get value => (first ?? second)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'EnumUnion');
    if (first != null) {
      helper.add(
        r'first',
        first,
      );
    }
    if (second != null) {
      helper.add(
        r'second',
        second,
      );
    }
    return helper.toString();
  }
}

final class EnumUnionFirst extends EnumUnion {
  const EnumUnionFirst(this.first) : super._();

  @override
  final _i2.EnumString first;

  @override
  String get name => 'first';
}

final class EnumUnionSecond extends EnumUnion {
  const EnumUnionSecond(this.second) : super._();

  @override
  final _i2.EnumString second;

  @override
  String get name => 'second';
}

final class EnumUnionSdkUnknown extends EnumUnion {
  const EnumUnionSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class EnumUnionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<EnumUnion> {
  const EnumUnionRestJson1Serializer() : super('EnumUnion');

  @override
  Iterable<Type> get types => const [
        EnumUnion,
        EnumUnionFirst,
        EnumUnionSecond,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  EnumUnion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'first':
        return EnumUnionFirst((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.EnumString),
        ) as _i2.EnumString));
      case 'second':
        return EnumUnionSecond((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.EnumString),
        ) as _i2.EnumString));
    }
    return EnumUnion.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    (object as EnumUnion);
    return [
      object.name,
      switch (object) {
        EnumUnionFirst(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(_i2.EnumString),
        ),
        EnumUnionSecond(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(_i2.EnumString),
        ),
        EnumUnionSdkUnknown(:final value) => value,
      },
    ];
  }
}
