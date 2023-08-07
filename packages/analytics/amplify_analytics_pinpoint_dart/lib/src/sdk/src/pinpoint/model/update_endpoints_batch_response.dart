// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.update_endpoints_batch_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/message_body.dart';
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
        _i2.HasPayload<MessageBody> {
  factory UpdateEndpointsBatchResponse({required MessageBody messageBody}) {
    return _$UpdateEndpointsBatchResponse._(messageBody: messageBody);
  }

  factory UpdateEndpointsBatchResponse.build(
          [void Function(UpdateEndpointsBatchResponseBuilder) updates]) =
      _$UpdateEndpointsBatchResponse;

  const UpdateEndpointsBatchResponse._();

  /// Constructs a [UpdateEndpointsBatchResponse] from a [payload] and [response].
  factory UpdateEndpointsBatchResponse.fromResponse(
    MessageBody payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      UpdateEndpointsBatchResponse.build((b) {
        b.messageBody.replace(payload);
      });

  static const List<_i2.SmithySerializer<MessageBody>> serializers = [
    UpdateEndpointsBatchResponseRestJson1Serializer()
  ];

  /// Provides information about an API request or response.
  MessageBody get messageBody;
  @override
  MessageBody getPayload() => messageBody;
  @override
  List<Object?> get props => [messageBody];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateEndpointsBatchResponse')
      ..add(
        'messageBody',
        messageBody,
      );
    return helper.toString();
  }
}

class UpdateEndpointsBatchResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<MessageBody> {
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
  MessageBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(MessageBody),
    ) as MessageBody);
  }

  @override
  Object serialize(
    Serializers serializers,
    MessageBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(MessageBody),
    )!;
  }
}
