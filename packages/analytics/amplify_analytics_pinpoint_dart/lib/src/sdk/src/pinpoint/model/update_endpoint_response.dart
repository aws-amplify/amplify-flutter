// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_analytics_pinpoint_dart.pinpoint.model.update_endpoint_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/message_body.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'update_endpoint_response.g.dart';

abstract class UpdateEndpointResponse
    with _i1.AWSEquatable<UpdateEndpointResponse>
    implements
        Built<UpdateEndpointResponse, UpdateEndpointResponseBuilder>,
        _i2.HasPayload<_i3.MessageBody> {
  factory UpdateEndpointResponse({required _i3.MessageBody messageBody}) {
    return _$UpdateEndpointResponse._(messageBody: messageBody);
  }

  factory UpdateEndpointResponse.build(
          [void Function(UpdateEndpointResponseBuilder) updates]) =
      _$UpdateEndpointResponse;

  const UpdateEndpointResponse._();

  /// Constructs a [UpdateEndpointResponse] from a [payload] and [response].
  factory UpdateEndpointResponse.fromResponse(
    _i3.MessageBody payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      UpdateEndpointResponse.build((b) {
        b.messageBody.replace(payload);
      });

  static const List<_i2.SmithySerializer<_i3.MessageBody>> serializers = [
    UpdateEndpointResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateEndpointResponseBuilder b) {}

  /// Provides information about an API request or response.
  _i3.MessageBody get messageBody;
  @override
  _i3.MessageBody getPayload() => messageBody;
  @override
  List<Object?> get props => [messageBody];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateEndpointResponse')
      ..add(
        'messageBody',
        messageBody,
      );
    return helper.toString();
  }
}

class UpdateEndpointResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<_i3.MessageBody> {
  const UpdateEndpointResponseRestJson1Serializer()
      : super('UpdateEndpointResponse');

  @override
  Iterable<Type> get types => const [
        UpdateEndpointResponse,
        _$UpdateEndpointResponse,
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
    _i3.MessageBody object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(_i3.MessageBody),
    )!;
  }
}
