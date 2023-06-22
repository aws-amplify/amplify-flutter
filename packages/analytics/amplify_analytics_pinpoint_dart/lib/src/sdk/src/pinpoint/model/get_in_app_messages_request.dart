// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_analytics_pinpoint_dart.pinpoint.model.get_in_app_messages_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_in_app_messages_request.g.dart';

abstract class GetInAppMessagesRequest
    with
        _i1.HttpInput<GetInAppMessagesRequestPayload>,
        _i2.AWSEquatable<GetInAppMessagesRequest>
    implements
        Built<GetInAppMessagesRequest, GetInAppMessagesRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetInAppMessagesRequestPayload> {
  factory GetInAppMessagesRequest({
    required String applicationId,
    required String endpointId,
  }) {
    return _$GetInAppMessagesRequest._(
      applicationId: applicationId,
      endpointId: endpointId,
    );
  }

  factory GetInAppMessagesRequest.build(
          [void Function(GetInAppMessagesRequestBuilder) updates]) =
      _$GetInAppMessagesRequest;

  const GetInAppMessagesRequest._();

  factory GetInAppMessagesRequest.fromRequest(
    GetInAppMessagesRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetInAppMessagesRequest.build((b) {
        if (labels['applicationId'] != null) {
          b.applicationId = labels['applicationId']!;
        }
        if (labels['endpointId'] != null) {
          b.endpointId = labels['endpointId']!;
        }
      });

  static const List<_i1.SmithySerializer<GetInAppMessagesRequestPayload>>
      serializers = [GetInAppMessagesRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetInAppMessagesRequestBuilder b) {}

  /// The unique identifier for the application. This identifier is displayed as the **Project ID** on the Amazon Pinpoint console.
  String get applicationId;

  /// The unique identifier for the endpoint.
  String get endpointId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'ApplicationId':
        return applicationId;
      case 'EndpointId':
        return endpointId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetInAppMessagesRequestPayload getPayload() =>
      GetInAppMessagesRequestPayload();
  @override
  List<Object?> get props => [
        applicationId,
        endpointId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetInAppMessagesRequest')
      ..add(
        'applicationId',
        applicationId,
      )
      ..add(
        'endpointId',
        endpointId,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetInAppMessagesRequestPayload
    with
        _i2.AWSEquatable<GetInAppMessagesRequestPayload>
    implements
        Built<GetInAppMessagesRequestPayload,
            GetInAppMessagesRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetInAppMessagesRequestPayload(
          [void Function(GetInAppMessagesRequestPayloadBuilder) updates]) =
      _$GetInAppMessagesRequestPayload;

  const GetInAppMessagesRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetInAppMessagesRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetInAppMessagesRequestPayload');
    return helper.toString();
  }
}

class GetInAppMessagesRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetInAppMessagesRequestPayload> {
  const GetInAppMessagesRequestRestJson1Serializer()
      : super('GetInAppMessagesRequest');

  @override
  Iterable<Type> get types => const [
        GetInAppMessagesRequest,
        _$GetInAppMessagesRequest,
        GetInAppMessagesRequestPayload,
        _$GetInAppMessagesRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetInAppMessagesRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetInAppMessagesRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetInAppMessagesRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
