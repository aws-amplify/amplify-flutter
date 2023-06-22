// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_analytics_pinpoint_dart.pinpoint.model.get_in_app_messages_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/in_app_messages_response.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_in_app_messages_response.g.dart';

abstract class GetInAppMessagesResponse
    with _i1.AWSEquatable<GetInAppMessagesResponse>
    implements
        Built<GetInAppMessagesResponse, GetInAppMessagesResponseBuilder>,
        _i2.HasPayload<_i3.InAppMessagesResponse> {
  factory GetInAppMessagesResponse(
      {required _i3.InAppMessagesResponse inAppMessagesResponse}) {
    return _$GetInAppMessagesResponse._(
        inAppMessagesResponse: inAppMessagesResponse);
  }

  factory GetInAppMessagesResponse.build(
          [void Function(GetInAppMessagesResponseBuilder) updates]) =
      _$GetInAppMessagesResponse;

  const GetInAppMessagesResponse._();

  /// Constructs a [GetInAppMessagesResponse] from a [payload] and [response].
  factory GetInAppMessagesResponse.fromResponse(
    _i3.InAppMessagesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetInAppMessagesResponse.build((b) {
        b.inAppMessagesResponse.replace(payload);
      });

  static const List<_i2.SmithySerializer<_i3.InAppMessagesResponse>>
      serializers = [GetInAppMessagesResponseRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetInAppMessagesResponseBuilder b) {}

  /// Get in-app messages response object.
  _i3.InAppMessagesResponse get inAppMessagesResponse;
  @override
  _i3.InAppMessagesResponse getPayload() => inAppMessagesResponse;
  @override
  List<Object?> get props => [inAppMessagesResponse];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetInAppMessagesResponse')
      ..add(
        'inAppMessagesResponse',
        inAppMessagesResponse,
      );
    return helper.toString();
  }
}

class GetInAppMessagesResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<_i3.InAppMessagesResponse> {
  const GetInAppMessagesResponseRestJson1Serializer()
      : super('GetInAppMessagesResponse');

  @override
  Iterable<Type> get types => const [
        GetInAppMessagesResponse,
        _$GetInAppMessagesResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i3.InAppMessagesResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i3.InAppMessagesResponse),
    ) as _i3.InAppMessagesResponse);
  }

  @override
  Object serialize(
    Serializers serializers,
    _i3.InAppMessagesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(_i3.InAppMessagesResponse),
    )!;
  }
}
