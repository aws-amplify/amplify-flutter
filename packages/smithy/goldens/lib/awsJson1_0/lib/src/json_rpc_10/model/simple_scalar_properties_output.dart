// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_0_v1.json_rpc_10.model.simple_scalar_properties_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'simple_scalar_properties_output.g.dart';

abstract class SimpleScalarPropertiesOutput
    with
        _i1.AWSEquatable<SimpleScalarPropertiesOutput>
    implements
        Built<SimpleScalarPropertiesOutput,
            SimpleScalarPropertiesOutputBuilder> {
  factory SimpleScalarPropertiesOutput({
    double? floatValue,
    double? doubleValue,
  }) {
    return _$SimpleScalarPropertiesOutput._(
      floatValue: floatValue,
      doubleValue: doubleValue,
    );
  }

  factory SimpleScalarPropertiesOutput.build(
          [void Function(SimpleScalarPropertiesOutputBuilder) updates]) =
      _$SimpleScalarPropertiesOutput;

  const SimpleScalarPropertiesOutput._();

  /// Constructs a [SimpleScalarPropertiesOutput] from a [payload] and [response].
  factory SimpleScalarPropertiesOutput.fromResponse(
    SimpleScalarPropertiesOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<SimpleScalarPropertiesOutput>>
      serializers = [SimpleScalarPropertiesOutputAwsJson10Serializer()];

  double? get floatValue;
  double? get doubleValue;
  @override
  List<Object?> get props => [
        floatValue,
        doubleValue,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SimpleScalarPropertiesOutput')
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

class SimpleScalarPropertiesOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<SimpleScalarPropertiesOutput> {
  const SimpleScalarPropertiesOutputAwsJson10Serializer()
      : super('SimpleScalarPropertiesOutput');

  @override
  Iterable<Type> get types => const [
        SimpleScalarPropertiesOutput,
        _$SimpleScalarPropertiesOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  SimpleScalarPropertiesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleScalarPropertiesOutputBuilder();
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
    SimpleScalarPropertiesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SimpleScalarPropertiesOutput(:floatValue, :doubleValue) = object;
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
