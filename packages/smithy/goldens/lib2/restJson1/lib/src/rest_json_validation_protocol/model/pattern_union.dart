// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_validation_protocol.model.pattern_union; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class PatternUnion extends _i1.SmithyUnion<PatternUnion> {
  const PatternUnion._();

  const factory PatternUnion.first(String first) = PatternUnionFirst;

  const factory PatternUnion.second(String second) = PatternUnionSecond;

  const factory PatternUnion.sdkUnknown(
    String name,
    Object value,
  ) = PatternUnionSdkUnknown;

  static const List<_i1.SmithySerializer<PatternUnion>> serializers = [
    PatternUnionRestJson1Serializer()
  ];

  String? get first => null;
  String? get second => null;
  @override
  Object get value => (first ?? second)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'PatternUnion');
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

final class PatternUnionFirst extends PatternUnion {
  const PatternUnionFirst(this.first) : super._();

  @override
  final String first;

  @override
  String get name => 'first';
}

final class PatternUnionSecond extends PatternUnion {
  const PatternUnionSecond(this.second) : super._();

  @override
  final String second;

  @override
  String get name => 'second';
}

final class PatternUnionSdkUnknown extends PatternUnion {
  const PatternUnionSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class PatternUnionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PatternUnion> {
  const PatternUnionRestJson1Serializer() : super('PatternUnion');

  @override
  Iterable<Type> get types => const [
        PatternUnion,
        PatternUnionFirst,
        PatternUnionSecond,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PatternUnion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'first':
        return PatternUnionFirst((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'second':
        return PatternUnionSecond((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
    }
    return PatternUnion.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PatternUnion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        PatternUnionFirst(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ),
        PatternUnionSecond(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ),
        PatternUnionSdkUnknown(:final value) => value,
      },
    ];
  }
}
