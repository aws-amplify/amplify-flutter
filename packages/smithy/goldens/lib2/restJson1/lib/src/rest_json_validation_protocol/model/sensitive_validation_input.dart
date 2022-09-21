// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.sensitive_validation_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'sensitive_validation_input.g.dart';

abstract class SensitiveValidationInput
    with
        _i1.HttpInput<SensitiveValidationInput>,
        _i2.AWSEquatable<SensitiveValidationInput>
    implements
        Built<SensitiveValidationInput, SensitiveValidationInputBuilder> {
  factory SensitiveValidationInput({String? string}) {
    return _$SensitiveValidationInput._(string: string);
  }

  factory SensitiveValidationInput.build(
          [void Function(SensitiveValidationInputBuilder) updates]) =
      _$SensitiveValidationInput;

  const SensitiveValidationInput._();

  factory SensitiveValidationInput.fromRequest(
    SensitiveValidationInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    SensitiveValidationInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SensitiveValidationInputBuilder b) {}
  String? get string;
  @override
  SensitiveValidationInput getPayload() => this;
  @override
  List<Object?> get props => [string];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SensitiveValidationInput');
    helper.add(
      'string',
      '***SENSITIVE***',
    );
    return helper.toString();
  }
}

class SensitiveValidationInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<SensitiveValidationInput> {
  const SensitiveValidationInputRestJson1Serializer()
      : super('SensitiveValidationInput');

  @override
  Iterable<Type> get types => const [
        SensitiveValidationInput,
        _$SensitiveValidationInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  SensitiveValidationInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SensitiveValidationInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'string':
          if (value != null) {
            result.string = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as SensitiveValidationInput);
    final result = <Object?>[];
    if (payload.string != null) {
      result
        ..add('string')
        ..add(serializers.serialize(
          payload.string!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
