// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.malformed_accept_with_payload_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'malformed_accept_with_payload_output.g.dart';

abstract class MalformedAcceptWithPayloadOutput
    with
        _i1.AWSEquatable<MalformedAcceptWithPayloadOutput>
    implements
        Built<MalformedAcceptWithPayloadOutput,
            MalformedAcceptWithPayloadOutputBuilder>,
        _i2.HasPayload<_i3.Uint8List> {
  factory MalformedAcceptWithPayloadOutput({_i3.Uint8List? payload}) {
    return _$MalformedAcceptWithPayloadOutput._(payload: payload);
  }

  factory MalformedAcceptWithPayloadOutput.build(
          [void Function(MalformedAcceptWithPayloadOutputBuilder) updates]) =
      _$MalformedAcceptWithPayloadOutput;

  const MalformedAcceptWithPayloadOutput._();

  /// Constructs a [MalformedAcceptWithPayloadOutput] from a [payload] and [response].
  factory MalformedAcceptWithPayloadOutput.fromResponse(
    _i3.Uint8List? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      MalformedAcceptWithPayloadOutput.build((b) {
        b.payload = payload;
      });

  static const List<_i2.SmithySerializer> serializers = [
    MalformedAcceptWithPayloadOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedAcceptWithPayloadOutputBuilder b) {}
  _i3.Uint8List? get payload;
  @override
  _i3.Uint8List? getPayload() => payload;
  @override
  List<Object?> get props => [payload];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedAcceptWithPayloadOutput');
    helper.add(
      'payload',
      payload,
    );
    return helper.toString();
  }
}

class MalformedAcceptWithPayloadOutputRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<_i3.Uint8List> {
  const MalformedAcceptWithPayloadOutputRestJson1Serializer()
      : super('MalformedAcceptWithPayloadOutput');

  @override
  Iterable<Type> get types => const [
        MalformedAcceptWithPayloadOutput,
        _$MalformedAcceptWithPayloadOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i3.Uint8List deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i3.Uint8List),
    ) as _i3.Uint8List);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is MalformedAcceptWithPayloadOutput
        ? object.getPayload()
        : (object as _i3.Uint8List?);
    return (serializers.serialize(
      payload!,
      specifiedType: const FullType(_i3.Uint8List),
    ) as Object);
  }
}
