// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_query_v1.query_protocol.model.greeting_with_errors_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'greeting_with_errors_output.g.dart';

abstract class GreetingWithErrorsOutput
    with _i1.AWSEquatable<GreetingWithErrorsOutput>
    implements
        Built<GreetingWithErrorsOutput, GreetingWithErrorsOutputBuilder> {
  factory GreetingWithErrorsOutput({String? greeting}) {
    return _$GreetingWithErrorsOutput._(greeting: greeting);
  }

  factory GreetingWithErrorsOutput.build(
          [void Function(GreetingWithErrorsOutputBuilder) updates]) =
      _$GreetingWithErrorsOutput;

  const GreetingWithErrorsOutput._();

  /// Constructs a [GreetingWithErrorsOutput] from a [payload] and [response].
  factory GreetingWithErrorsOutput.fromResponse(
    GreetingWithErrorsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    GreetingWithErrorsOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingWithErrorsOutputBuilder b) {}
  String? get greeting;
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

class GreetingWithErrorsOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<GreetingWithErrorsOutput> {
  const GreetingWithErrorsOutputAwsQuerySerializer()
      : super('GreetingWithErrorsOutput');

  @override
  Iterable<Type> get types => const [
        GreetingWithErrorsOutput,
        _$GreetingWithErrorsOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GreetingWithErrorsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GreetingWithErrorsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
    final payload = (object as GreetingWithErrorsOutput);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GreetingWithErrorsOutputResponse',
        _i2.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.greeting != null) {
      result
        ..add(const _i2.XmlElementName('greeting'))
        ..add(serializers.serialize(
          payload.greeting!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
