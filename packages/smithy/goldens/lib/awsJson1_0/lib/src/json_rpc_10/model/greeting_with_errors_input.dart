// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i1.SmithySerializer<GreetingWithErrorsInput>> serializers =
      [GreetingWithErrorsInputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingWithErrorsInputBuilder b) {}
  String? get greeting;
  @override
  GreetingWithErrorsInput getPayload() => this;
  @override
  List<Object?> get props => [greeting];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GreetingWithErrorsInput')
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'greeting':
          result.greeting = (serializers.deserialize(
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
    GreetingWithErrorsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GreetingWithErrorsInput(:greeting) = object;
    if (greeting != null) {
      result$
        ..add('greeting')
        ..add(serializers.serialize(
          greeting,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
