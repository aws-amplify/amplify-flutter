// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.resource_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_value_type.dart'
    as _i2;

part 'resource_value.g.dart';

/// The dynamic value of the resource.
abstract class ResourceValue
    with _i1.AWSEquatable<ResourceValue>
    implements Built<ResourceValue, ResourceValueBuilder> {
  /// The dynamic value of the resource.
  factory ResourceValue({required _i2.ResourceValueType value}) {
    return _$ResourceValue._(value: value);
  }

  /// The dynamic value of the resource.
  factory ResourceValue.build([void Function(ResourceValueBuilder) updates]) =
      _$ResourceValue;

  const ResourceValue._();

  static const List<_i3.SmithySerializer<ResourceValue>> serializers = [
    ResourceValueAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceValueBuilder b) {}

  /// The value is a resource ID.
  _i2.ResourceValueType get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceValue')
      ..add(
        'value',
        value,
      );
    return helper.toString();
  }
}

class ResourceValueAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ResourceValue> {
  const ResourceValueAwsJson11Serializer() : super('ResourceValue');

  @override
  Iterable<Type> get types => const [
        ResourceValue,
        _$ResourceValue,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Value':
          result.value = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ResourceValueType),
          ) as _i2.ResourceValueType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResourceValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ResourceValue(:value) = object;
    result$.addAll([
      'Value',
      serializers.serialize(
        value,
        specifiedType: const FullType(_i2.ResourceValueType),
      ),
    ]);
    return result$;
  }
}
