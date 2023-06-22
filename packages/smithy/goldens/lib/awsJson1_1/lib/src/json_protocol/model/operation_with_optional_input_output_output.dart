// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_json1_1_v1.json_protocol.model.operation_with_optional_input_output_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'operation_with_optional_input_output_output.g.dart';

abstract class OperationWithOptionalInputOutputOutput
    with
        _i1.AWSEquatable<OperationWithOptionalInputOutputOutput>
    implements
        Built<OperationWithOptionalInputOutputOutput,
            OperationWithOptionalInputOutputOutputBuilder> {
  factory OperationWithOptionalInputOutputOutput({String? value}) {
    return _$OperationWithOptionalInputOutputOutput._(value: value);
  }

  factory OperationWithOptionalInputOutputOutput.build(
      [void Function(OperationWithOptionalInputOutputOutputBuilder)
          updates]) = _$OperationWithOptionalInputOutputOutput;

  const OperationWithOptionalInputOutputOutput._();

  /// Constructs a [OperationWithOptionalInputOutputOutput] from a [payload] and [response].
  factory OperationWithOptionalInputOutputOutput.fromResponse(
    OperationWithOptionalInputOutputOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<OperationWithOptionalInputOutputOutput>>
      serializers = [
    OperationWithOptionalInputOutputOutputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationWithOptionalInputOutputOutputBuilder b) {}
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('OperationWithOptionalInputOutputOutput')
          ..add(
            'value',
            value,
          );
    return helper.toString();
  }
}

class OperationWithOptionalInputOutputOutputAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<OperationWithOptionalInputOutputOutput> {
  const OperationWithOptionalInputOutputOutputAwsJson11Serializer()
      : super('OperationWithOptionalInputOutputOutput');

  @override
  Iterable<Type> get types => const [
        OperationWithOptionalInputOutputOutput,
        _$OperationWithOptionalInputOutputOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OperationWithOptionalInputOutputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperationWithOptionalInputOutputOutputBuilder();
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
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OperationWithOptionalInputOutputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final OperationWithOptionalInputOutputOutput(:value) = object;
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
