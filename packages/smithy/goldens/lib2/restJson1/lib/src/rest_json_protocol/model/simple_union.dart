// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.rest_json_protocol.model.simple_union; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class SimpleUnion extends _i1.SmithyUnion<SimpleUnion> {
  const SimpleUnion._();

  const factory SimpleUnion.int$(int int$) = SimpleUnionInt$;

  const factory SimpleUnion.string(String string) = SimpleUnionString$;

  const factory SimpleUnion.sdkUnknown(
    String name,
    Object value,
  ) = SimpleUnionSdkUnknown$;

  static const List<_i1.SmithySerializer<SimpleUnion>> serializers = [
    SimpleUnionRestJson1Serializer()
  ];

  int? get int$ => null;

  String? get string => null;

  @override
  Object get value => (int$ ?? string)!;

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'SimpleUnion');
    if (int$ != null) {
      helper.add(
        r'int$',
        int$,
      );
    }
    if (string != null) {
      helper.add(
        r'string',
        string,
      );
    }
    return helper.toString();
  }
}

final class SimpleUnionInt$ extends SimpleUnion {
  const SimpleUnionInt$(this.int$) : super._();

  @override
  final int int$;

  @override
  String get name => 'int';
}

final class SimpleUnionString$ extends SimpleUnion {
  const SimpleUnionString$(this.string) : super._();

  @override
  final String string;

  @override
  String get name => 'string';
}

final class SimpleUnionSdkUnknown$ extends SimpleUnion {
  const SimpleUnionSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class SimpleUnionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<SimpleUnion> {
  const SimpleUnionRestJson1Serializer() : super('SimpleUnion');

  @override
  Iterable<Type> get types => const [
        SimpleUnion,
        SimpleUnionInt$,
        SimpleUnionString$,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  SimpleUnion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'int':
        return SimpleUnionInt$((serializers.deserialize(
          value,
          specifiedType: const FullType(int),
        ) as int));
      case 'string':
        return SimpleUnionString$((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
    }
    return SimpleUnion.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SimpleUnion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        SimpleUnionInt$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(int),
          ),
        SimpleUnionString$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(String),
          ),
        SimpleUnionSdkUnknown$(:final value) => value,
      },
    ];
  }
}
