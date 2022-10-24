// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.update_endpoints_batch_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/message_body.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'update_endpoints_batch_response.g.dart';

abstract class UpdateEndpointsBatchResponse
    with
        _i1.AWSEquatable<UpdateEndpointsBatchResponse>
    implements
        Built<UpdateEndpointsBatchResponse,
            UpdateEndpointsBatchResponseBuilder>,
        _i2.HasPayload<_i3.MessageBody> {
  factory UpdateEndpointsBatchResponse({required _i3.MessageBody messageBody}) {
    return _$UpdateEndpointsBatchResponse._(messageBody: messageBody);
  }

  factory UpdateEndpointsBatchResponse.build(
          [void Function(UpdateEndpointsBatchResponseBuilder) updates]) =
      _$UpdateEndpointsBatchResponse;

  const UpdateEndpointsBatchResponse._();

  /// Constructs a [UpdateEndpointsBatchResponse] from a [payload] and [response].
  factory UpdateEndpointsBatchResponse.fromResponse(
    _i3.MessageBody payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      UpdateEndpointsBatchResponse.build((b) {
        b.messageBody.replace(payload);
      });

  static const List<_i2.SmithySerializer> serializers = [
    UpdateEndpointsBatchResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateEndpointsBatchResponseBuilder b) {}

  /// Provides information about an API request or response.
  _i3.MessageBody get messageBody;
  @override
  _i3.MessageBody getPayload() => messageBody;
  @override
  List<Object?> get props => [messageBody];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateEndpointsBatchResponse');
    helper.add(
      'messageBody',
      messageBody,
    );
    return helper.toString();
  }
}

class UpdateEndpointsBatchResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<_i3.MessageBody> {
  const UpdateEndpointsBatchResponseRestJson1Serializer()
      : super('UpdateEndpointsBatchResponse');

  @override
  Iterable<Type> get types => const [
        UpdateEndpointsBatchResponse,
        _$UpdateEndpointsBatchResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i3.MessageBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i3.MessageBody),
    ) as _i3.MessageBody);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is UpdateEndpointsBatchResponse
        ? object.getPayload()
        : (object as _i3.MessageBody);
    return (serializers.serialize(
      payload,
      specifiedType: const FullType(_i3.MessageBody),
    ) as Object);
  }
}
