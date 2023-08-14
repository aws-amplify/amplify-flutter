// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.attribute_boolean_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'attribute_boolean_value.g.dart';

/// Describes a value for a resource attribute that is a Boolean value.
abstract class AttributeBooleanValue
    with _i1.AWSEquatable<AttributeBooleanValue>
    implements Built<AttributeBooleanValue, AttributeBooleanValueBuilder> {
  /// Describes a value for a resource attribute that is a Boolean value.
  factory AttributeBooleanValue({bool? value}) {
    value ??= false;
    return _$AttributeBooleanValue._(value: value);
  }

  /// Describes a value for a resource attribute that is a Boolean value.
  factory AttributeBooleanValue.build(
          [void Function(AttributeBooleanValueBuilder) updates]) =
      _$AttributeBooleanValue;

  const AttributeBooleanValue._();

  static const List<_i2.SmithySerializer<AttributeBooleanValue>> serializers = [
    AttributeBooleanValueEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttributeBooleanValueBuilder b) {
    b.value = false;
  }

  /// The attribute value. The valid values are `true` or `false`.
  bool get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttributeBooleanValue')
      ..add(
        'value',
        value,
      );
    return helper.toString();
  }
}

class AttributeBooleanValueEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AttributeBooleanValue> {
  const AttributeBooleanValueEc2QuerySerializer()
      : super('AttributeBooleanValue');

  @override
  Iterable<Type> get types => const [
        AttributeBooleanValue,
        _$AttributeBooleanValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AttributeBooleanValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributeBooleanValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'value':
          result.value = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AttributeBooleanValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AttributeBooleanValueResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AttributeBooleanValue(:value) = object;
    result$
      ..add(const _i2.XmlElementName('Value'))
      ..add(serializers.serialize(
        value,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
