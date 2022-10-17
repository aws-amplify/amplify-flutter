// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.malformed_accept_with_generic_string_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'malformed_accept_with_generic_string_output.g.dart';

abstract class MalformedAcceptWithGenericStringOutput
    with
        _i1.AWSEquatable<MalformedAcceptWithGenericStringOutput>
    implements
        Built<MalformedAcceptWithGenericStringOutput,
            MalformedAcceptWithGenericStringOutputBuilder>,
        _i2.HasPayload<String> {
  factory MalformedAcceptWithGenericStringOutput({String? payload}) {
    return _$MalformedAcceptWithGenericStringOutput._(payload: payload);
  }

  factory MalformedAcceptWithGenericStringOutput.build(
      [void Function(MalformedAcceptWithGenericStringOutputBuilder)
          updates]) = _$MalformedAcceptWithGenericStringOutput;

  const MalformedAcceptWithGenericStringOutput._();

  /// Constructs a [MalformedAcceptWithGenericStringOutput] from a [payload] and [response].
  factory MalformedAcceptWithGenericStringOutput.fromResponse(
    String? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      MalformedAcceptWithGenericStringOutput.build((b) {
        b.payload = payload;
      });

  static const List<_i2.SmithySerializer> serializers = [
    MalformedAcceptWithGenericStringOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedAcceptWithGenericStringOutputBuilder b) {}
  String? get payload;
  @override
  String? getPayload() => payload;
  @override
  List<Object?> get props => [payload];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedAcceptWithGenericStringOutput');
    helper.add(
      'payload',
      payload,
    );
    return helper.toString();
  }
}

class MalformedAcceptWithGenericStringOutputRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<String> {
  const MalformedAcceptWithGenericStringOutputRestJson1Serializer()
      : super('MalformedAcceptWithGenericStringOutput');

  @override
  Iterable<Type> get types => const [
        MalformedAcceptWithGenericStringOutput,
        _$MalformedAcceptWithGenericStringOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  String deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(String),
    ) as String);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is MalformedAcceptWithGenericStringOutput
        ? object.getPayload()
        : (object as String?);
    return (serializers.serialize(
      payload!,
      specifiedType: const FullType(String),
    ) as Object);
  }
}
