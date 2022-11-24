// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.get_endpoint_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_endpoint_request.g.dart';

abstract class GetEndpointRequest
    with
        _i1.HttpInput<GetEndpointRequestPayload>,
        _i2.AWSEquatable<GetEndpointRequest>
    implements
        Built<GetEndpointRequest, GetEndpointRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetEndpointRequestPayload> {
  factory GetEndpointRequest({
    required String applicationId,
    required String endpointId,
  }) {
    return _$GetEndpointRequest._(
      applicationId: applicationId,
      endpointId: endpointId,
    );
  }

  factory GetEndpointRequest.build(
          [void Function(GetEndpointRequestBuilder) updates]) =
      _$GetEndpointRequest;

  const GetEndpointRequest._();

  factory GetEndpointRequest.fromRequest(
    GetEndpointRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetEndpointRequest.build((b) {
        if (labels['applicationId'] != null) {
          b.applicationId = labels['applicationId']!;
        }
        if (labels['endpointId'] != null) {
          b.endpointId = labels['endpointId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetEndpointRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetEndpointRequestBuilder b) {}

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
  GetEndpointRequestPayload getPayload() => GetEndpointRequestPayload();
  @override
  List<Object?> get props => [
        applicationId,
        endpointId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetEndpointRequest');
    helper.add(
      'applicationId',
      applicationId,
    );
    helper.add(
      'endpointId',
      endpointId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetEndpointRequestPayload
    with _i2.AWSEquatable<GetEndpointRequestPayload>
    implements
        Built<GetEndpointRequestPayload, GetEndpointRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetEndpointRequestPayload(
          [void Function(GetEndpointRequestPayloadBuilder) updates]) =
      _$GetEndpointRequestPayload;

  const GetEndpointRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetEndpointRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetEndpointRequestPayload');
    return helper.toString();
  }
}

class GetEndpointRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetEndpointRequestPayload> {
  const GetEndpointRequestRestJson1Serializer() : super('GetEndpointRequest');

  @override
  Iterable<Type> get types => const [
        GetEndpointRequest,
        _$GetEndpointRequest,
        GetEndpointRequestPayload,
        _$GetEndpointRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetEndpointRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetEndpointRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
