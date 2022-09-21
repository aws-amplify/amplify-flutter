// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library aws_json1_0_v1.json_rpc_10.model.greeting_with_errors_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'greeting_with_errors_input.g.dart';

abstract class GreetingWithErrorsInput
    with
        _i1.HttpInput<GreetingWithErrorsInput>,
        _i2.AWSEquatable<GreetingWithErrorsInput>
    implements Built<GreetingWithErrorsInput, GreetingWithErrorsInputBuilder> {
  factory GreetingWithErrorsInput({String? greeting}) {
    return _$GreetingWithErrorsInput._(greeting: greeting);
  }

  factory GreetingWithErrorsInput.build(
          [void Function(GreetingWithErrorsInputBuilder) updates]) =
      _$GreetingWithErrorsInput;

  const GreetingWithErrorsInput._();

  factory GreetingWithErrorsInput.fromRequest(
    GreetingWithErrorsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GreetingWithErrorsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingWithErrorsInputBuilder b) {}
  String? get greeting;
  @override
  GreetingWithErrorsInput getPayload() => this;
  @override
  List<Object?> get props => [greeting];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GreetingWithErrorsInput');
    helper.add(
      'greeting',
      greeting,
    );
    return helper.toString();
  }
}

class GreetingWithErrorsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<GreetingWithErrorsInput> {
  const GreetingWithErrorsInputAwsJson10Serializer()
      : super('GreetingWithErrorsInput');

  @override
  Iterable<Type> get types => const [
        GreetingWithErrorsInput,
        _$GreetingWithErrorsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  GreetingWithErrorsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GreetingWithErrorsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'greeting':
          if (value != null) {
            result.greeting = (serializers.deserialize(
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
    final payload = (object as GreetingWithErrorsInput);
    final result = <Object?>[];
    if (payload.greeting != null) {
      result
        ..add('greeting')
        ..add(serializers.serialize(
          payload.greeting!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
