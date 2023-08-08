// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.attribute_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'attribute_type.g.dart';

/// Specifies whether the attribute is standard or custom.
abstract class AttributeType
    with _i1.AWSEquatable<AttributeType>
    implements Built<AttributeType, AttributeTypeBuilder> {
  /// Specifies whether the attribute is standard or custom.
  factory AttributeType({
    required String name,
    String? value,
  }) {
    return _$AttributeType._(
      name: name,
      value: value,
    );
  }

  /// Specifies whether the attribute is standard or custom.
  factory AttributeType.build([void Function(AttributeTypeBuilder) updates]) =
      _$AttributeType;

  const AttributeType._();

  static const List<_i2.SmithySerializer<AttributeType>> serializers = [
    AttributeTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttributeTypeBuilder b) {}

  /// The name of the attribute.
  String get name;

  /// The value of the attribute.
  String? get value;
  @override
  List<Object?> get props => [
        name,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttributeType')
      ..add(
        'name',
        name,
      )
      ..add(
        'value',
        '***SENSITIVE***',
      );
    return helper.toString();
  }
}

class AttributeTypeAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<AttributeType> {
  const AttributeTypeAwsJson11Serializer() : super('AttributeType');

  @override
  Iterable<Type> get types => const [
        AttributeType,
        _$AttributeType,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AttributeType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributeTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Value':
          result.value = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AttributeType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AttributeType(:name, :value) = object;
    result$.addAll([
      'Name',
      serializers.serialize(
        name,
        specifiedType: const FullType(String),
      ),
    ]);
    if (value != null) {
      result$
        ..add('Value')
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
