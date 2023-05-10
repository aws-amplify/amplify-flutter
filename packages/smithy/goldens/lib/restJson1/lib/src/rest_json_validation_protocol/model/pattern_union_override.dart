// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_validation_protocol.model.pattern_union_override; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class PatternUnionOverride
    extends _i1.SmithyUnion<PatternUnionOverride> {
  const PatternUnionOverride._();

  const factory PatternUnionOverride.first(String first) =
      PatternUnionOverrideFirst;

  const factory PatternUnionOverride.second(String second) =
      PatternUnionOverrideSecond;

  const factory PatternUnionOverride.sdkUnknown(
    String name,
    Object value,
  ) = PatternUnionOverrideSdkUnknown;

  static const List<_i1.SmithySerializer<PatternUnionOverride>> serializers = [
    PatternUnionOverrideRestJson1Serializer()
  ];

  String? get first => null;
  String? get second => null;
  @override
  Object get value => (first ?? second)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'PatternUnionOverride');
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

final class PatternUnionOverrideFirst extends PatternUnionOverride {
  const PatternUnionOverrideFirst(this.first) : super._();

  @override
  final String first;

  @override
  String get name => 'first';
}

final class PatternUnionOverrideSecond extends PatternUnionOverride {
  const PatternUnionOverrideSecond(this.second) : super._();

  @override
  final String second;

  @override
  String get name => 'second';
}

final class PatternUnionOverrideSdkUnknown extends PatternUnionOverride {
  const PatternUnionOverrideSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class PatternUnionOverrideRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PatternUnionOverride> {
  const PatternUnionOverrideRestJson1Serializer()
      : super('PatternUnionOverride');

  @override
  Iterable<Type> get types => const [
        PatternUnionOverride,
        PatternUnionOverrideFirst,
        PatternUnionOverrideSecond,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PatternUnionOverride deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'first':
        return PatternUnionOverrideFirst((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'second':
        return PatternUnionOverrideSecond((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
    }
    return PatternUnionOverride.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PatternUnionOverride object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        PatternUnionOverrideFirst(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ),
        PatternUnionOverrideSecond(:final value) => serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ),
        PatternUnionOverrideSdkUnknown(:final value) => value,
      },
    ];
  }
}
