// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_json1_1_v2.json_protocol.model.simple_scalar_properties_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'simple_scalar_properties_input_output.g.dart';

abstract class SimpleScalarPropertiesInputOutput
    with
        _i1.HttpInput<SimpleScalarPropertiesInputOutput>,
        _i2.AWSEquatable<SimpleScalarPropertiesInputOutput>
    implements
        Built<SimpleScalarPropertiesInputOutput,
            SimpleScalarPropertiesInputOutputBuilder> {
  factory SimpleScalarPropertiesInputOutput({
    double? floatValue,
    double? doubleValue,
  }) {
    return _$SimpleScalarPropertiesInputOutput._(
      floatValue: floatValue,
      doubleValue: doubleValue,
    );
  }

  factory SimpleScalarPropertiesInputOutput.build(
          [void Function(SimpleScalarPropertiesInputOutputBuilder) updates]) =
      _$SimpleScalarPropertiesInputOutput;

  const SimpleScalarPropertiesInputOutput._();

  factory SimpleScalarPropertiesInputOutput.fromRequest(
    SimpleScalarPropertiesInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [SimpleScalarPropertiesInputOutput] from a [payload] and [response].
  factory SimpleScalarPropertiesInputOutput.fromResponse(
    SimpleScalarPropertiesInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<SimpleScalarPropertiesInputOutput>>
      serializers = [SimpleScalarPropertiesInputOutputAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleScalarPropertiesInputOutputBuilder b) {}
  double? get floatValue;
  double? get doubleValue;
  @override
  SimpleScalarPropertiesInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        floatValue,
        doubleValue,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SimpleScalarPropertiesInputOutput')
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

class SimpleScalarPropertiesInputOutputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<SimpleScalarPropertiesInputOutput> {
  const SimpleScalarPropertiesInputOutputAwsJson11Serializer()
      : super('SimpleScalarPropertiesInputOutput');

  @override
  Iterable<Type> get types => const [
        SimpleScalarPropertiesInputOutput,
        _$SimpleScalarPropertiesInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  SimpleScalarPropertiesInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleScalarPropertiesInputOutputBuilder();
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
    SimpleScalarPropertiesInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SimpleScalarPropertiesInputOutput(:floatValue, :doubleValue) = object;
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
