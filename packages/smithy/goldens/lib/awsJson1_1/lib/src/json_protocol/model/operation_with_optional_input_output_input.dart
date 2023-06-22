// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_json1_1_v1.json_protocol.model.operation_with_optional_input_output_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'operation_with_optional_input_output_input.g.dart';

abstract class OperationWithOptionalInputOutputInput
    with
        _i1.HttpInput<OperationWithOptionalInputOutputInput>,
        _i2.AWSEquatable<OperationWithOptionalInputOutputInput>
    implements
        Built<OperationWithOptionalInputOutputInput,
            OperationWithOptionalInputOutputInputBuilder> {
  factory OperationWithOptionalInputOutputInput({String? value}) {
    return _$OperationWithOptionalInputOutputInput._(value: value);
  }

  factory OperationWithOptionalInputOutputInput.build(
      [void Function(OperationWithOptionalInputOutputInputBuilder)
          updates]) = _$OperationWithOptionalInputOutputInput;

  const OperationWithOptionalInputOutputInput._();

  factory OperationWithOptionalInputOutputInput.fromRequest(
    OperationWithOptionalInputOutputInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<OperationWithOptionalInputOutputInput>>
      serializers = [
    OperationWithOptionalInputOutputInputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationWithOptionalInputOutputInputBuilder b) {}
  String? get value;
  @override
  OperationWithOptionalInputOutputInput getPayload() => this;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('OperationWithOptionalInputOutputInput')
          ..add(
            'value',
            value,
          );
    return helper.toString();
  }
}

class OperationWithOptionalInputOutputInputAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<OperationWithOptionalInputOutputInput> {
  const OperationWithOptionalInputOutputInputAwsJson11Serializer()
      : super('OperationWithOptionalInputOutputInput');

  @override
  Iterable<Type> get types => const [
        OperationWithOptionalInputOutputInput,
        _$OperationWithOptionalInputOutputInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OperationWithOptionalInputOutputInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperationWithOptionalInputOutputInputBuilder();
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
    OperationWithOptionalInputOutputInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final OperationWithOptionalInputOutputInput(:value) = object;
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
