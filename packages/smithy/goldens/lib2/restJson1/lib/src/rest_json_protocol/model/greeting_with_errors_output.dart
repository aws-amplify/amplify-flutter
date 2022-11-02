// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.greeting_with_errors_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'greeting_with_errors_output.g.dart';

abstract class GreetingWithErrorsOutput
    with _i1.AWSEquatable<GreetingWithErrorsOutput>
    implements
        Built<GreetingWithErrorsOutput, GreetingWithErrorsOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<GreetingWithErrorsOutputPayload> {
  factory GreetingWithErrorsOutput({String? greeting}) {
    return _$GreetingWithErrorsOutput._(greeting: greeting);
  }

  factory GreetingWithErrorsOutput.build(
          [void Function(GreetingWithErrorsOutputBuilder) updates]) =
      _$GreetingWithErrorsOutput;

  const GreetingWithErrorsOutput._();

  /// Constructs a [GreetingWithErrorsOutput] from a [payload] and [response].
  factory GreetingWithErrorsOutput.fromResponse(
    GreetingWithErrorsOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GreetingWithErrorsOutput.build((b) {
        if (response.headers['X-Greeting'] != null) {
          b.greeting = response.headers['X-Greeting']!;
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    GreetingWithErrorsOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingWithErrorsOutputBuilder b) {}
  String? get greeting;
  @override
  GreetingWithErrorsOutputPayload getPayload() =>
      GreetingWithErrorsOutputPayload();
  @override
  List<Object?> get props => [greeting];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GreetingWithErrorsOutput');
    helper.add(
      'greeting',
      greeting,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GreetingWithErrorsOutputPayload
    with
        _i1.AWSEquatable<GreetingWithErrorsOutputPayload>
    implements
        Built<GreetingWithErrorsOutputPayload,
            GreetingWithErrorsOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory GreetingWithErrorsOutputPayload(
          [void Function(GreetingWithErrorsOutputPayloadBuilder) updates]) =
      _$GreetingWithErrorsOutputPayload;

  const GreetingWithErrorsOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingWithErrorsOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GreetingWithErrorsOutputPayload');
    return helper.toString();
  }
}

class GreetingWithErrorsOutputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<GreetingWithErrorsOutputPayload> {
  const GreetingWithErrorsOutputRestJson1Serializer()
      : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types => const [
        GreetingWithErrorsOutput,
        _$GreetingWithErrorsOutput,
        GreetingWithErrorsOutputPayload,
        _$GreetingWithErrorsOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GreetingWithErrorsOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GreetingWithErrorsOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
