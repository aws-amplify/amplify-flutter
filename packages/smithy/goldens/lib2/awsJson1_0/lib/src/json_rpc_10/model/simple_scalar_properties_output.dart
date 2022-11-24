// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library aws_json1_0_v2.json_rpc_10.model.simple_scalar_properties_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
    double? doubleValue,
    double? floatValue,
  }) {
    return _$SimpleScalarPropertiesOutput._(
      doubleValue: doubleValue,
      floatValue: floatValue,
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

  static const List<_i2.SmithySerializer> serializers = [
    SimpleScalarPropertiesOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimpleScalarPropertiesOutputBuilder b) {}
  double? get doubleValue;
  double? get floatValue;
  @override
  List<Object?> get props => [
        doubleValue,
        floatValue,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SimpleScalarPropertiesOutput');
    helper.add(
      'doubleValue',
      doubleValue,
    );
    helper.add(
      'floatValue',
      floatValue,
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
      switch (key) {
        case 'doubleValue':
          if (value != null) {
            result.doubleValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'floatValue':
          if (value != null) {
            result.floatValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as SimpleScalarPropertiesOutput);
    final result = <Object?>[];
    if (payload.doubleValue != null) {
      result
        ..add('doubleValue')
        ..add(serializers.serialize(
          payload.doubleValue!,
          specifiedType: const FullType(double),
        ));
    }
    if (payload.floatValue != null) {
      result
        ..add('floatValue')
        ..add(serializers.serialize(
          payload.floatValue!,
          specifiedType: const FullType(double),
        ));
    }
    return result;
  }
}
