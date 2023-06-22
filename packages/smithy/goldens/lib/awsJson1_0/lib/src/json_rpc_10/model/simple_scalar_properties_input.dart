// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_json1_0_v1.json_rpc_10.model.simple_scalar_properties_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'simple_scalar_properties_input.g.dart';

abstract class SimpleScalarPropertiesInput
    with
        _i1.HttpInput<SimpleScalarPropertiesInput>,
        _i2.AWSEquatable<SimpleScalarPropertiesInput>
    implements
        Built<SimpleScalarPropertiesInput, SimpleScalarPropertiesInputBuilder> {
  factory SimpleScalarPropertiesInput({
    double? floatValue,
    double? doubleValue,
  }) {
    return _$SimpleScalarPropertiesInput._(
      floatValue: floatValue,
      doubleValue: doubleValue,
    );
  }

  factory SimpleScalarPropertiesInput.build(
          [void Function(SimpleScalarPropertiesInputBuilder) updates]) =
      _$SimpleScalarPropertiesInput;

  const SimpleScalarPropertiesInput._();

  factory SimpleScalarPropertiesInput.fromRequest(
    SimpleScalarPropertiesInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<SimpleScalarPropertiesInput>>
      serializers = [SimpleScalarPropertiesInputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleScalarPropertiesInputBuilder b) {}
  double? get floatValue;
  double? get doubleValue;
  @override
  SimpleScalarPropertiesInput getPayload() => this;
  @override
  List<Object?> get props => [
        floatValue,
        doubleValue,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SimpleScalarPropertiesInput')
      ..add(
        'floatValue',
        floatValue,
      )
      ..add(
        'doubleValue',
        doubleValue,
      );
    return helper.toString();
  }
}

class SimpleScalarPropertiesInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<SimpleScalarPropertiesInput> {
  const SimpleScalarPropertiesInputAwsJson10Serializer()
      : super('SimpleScalarPropertiesInput');

  @override
  Iterable<Type> get types => const [
        SimpleScalarPropertiesInput,
        _$SimpleScalarPropertiesInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  SimpleScalarPropertiesInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleScalarPropertiesInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'floatValue':
          result.floatValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'doubleValue':
          result.doubleValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SimpleScalarPropertiesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SimpleScalarPropertiesInput(:floatValue, :doubleValue) = object;
    if (floatValue != null) {
      result$
        ..add('floatValue')
        ..add(serializers.serialize(
          floatValue,
          specifiedType: const FullType(double),
        ));
    }
    if (doubleValue != null) {
      result$
        ..add('doubleValue')
        ..add(serializers.serialize(
          doubleValue,
          specifiedType: const FullType(double),
        ));
    }
    return result$;
  }
}
