// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_validation_protocol.model.foo_union; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class FooUnion extends _i1.SmithyUnion<FooUnion> {
  const FooUnion._();

  const factory FooUnion.string(String string) = FooUnionString;

  const factory FooUnion.integer(int integer) = FooUnionInteger;

  const factory FooUnion.sdkUnknown(
    String name,
    Object value,
  ) = FooUnionSdkUnknown;

  static const List<_i1.SmithySerializer<FooUnion>> serializers = [
    FooUnionRestJson1Serializer()
  ];

  String? get string => null;
  int? get integer => null;
  @override
  Object get value => (string ?? integer)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'FooUnion');
    if (string != null) {
      helper.add(
        r'string',
        string,
      );
    }
    if (integer != null) {
      helper.add(
        r'integer',
        integer,
      );
    }
    return helper.toString();
  }
}

final class FooUnionString extends FooUnion {
  const FooUnionString(this.string) : super._();

  @override
  final String string;

  @override
  String get name => 'string';
}

final class FooUnionInteger extends FooUnion {
  const FooUnionInteger(this.integer) : super._();

  @override
  final int integer;

  @override
  String get name => 'integer';
}

final class FooUnionSdkUnknown extends FooUnion {
  const FooUnionSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class FooUnionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<FooUnion> {
  const FooUnionRestJson1Serializer() : super('FooUnion');

  @override
  Iterable<Type> get types => const [
        FooUnion,
        FooUnionString,
        FooUnionInteger,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  FooUnion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'string':
        return FooUnionString((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'integer':
        return FooUnionInteger((serializers.deserialize(
          value,
          specifiedType: const FullType(int),
        ) as int));
    }
    return FooUnion.sdkUnknown(
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
    (object as FooUnion);
    return [
      object.name,
      switch (object) {
        FooUnionString(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ),
        FooUnionInteger(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(int),
        ),
        FooUnionSdkUnknown(:final value) => value,
      },
    ];
  }
}
