// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.update_endpoint_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_request.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_endpoint_request.g.dart';

abstract class UpdateEndpointRequest
    with
        _i1.HttpInput<_i2.EndpointRequest>,
        _i3.AWSEquatable<UpdateEndpointRequest>
    implements
        Built<UpdateEndpointRequest, UpdateEndpointRequestBuilder>,
        _i1.HasPayload<_i2.EndpointRequest> {
  factory UpdateEndpointRequest({
    required String applicationId,
    required String endpointId,
    required _i2.EndpointRequest endpointRequest,
  }) {
    return _$UpdateEndpointRequest._(
      applicationId: applicationId,
      endpointId: endpointId,
      endpointRequest: endpointRequest,
    );
  }

  factory UpdateEndpointRequest.build(
          [void Function(UpdateEndpointRequestBuilder) updates]) =
      _$UpdateEndpointRequest;

  const UpdateEndpointRequest._();

  factory UpdateEndpointRequest.fromRequest(
    _i2.EndpointRequest payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateEndpointRequest.build((b) {
        b.endpointRequest.replace(payload);
        if (labels['applicationId'] != null) {
          b.applicationId = labels['applicationId']!;
        }
        if (labels['endpointId'] != null) {
          b.endpointId = labels['endpointId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    UpdateEndpointRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateEndpointRequestBuilder b) {}

  /// The unique identifier for the application. This identifier is displayed as the **Project ID** on the Amazon Pinpoint console.
  String get applicationId;

  /// The unique identifier for the endpoint.
  String get endpointId;

  /// Specifies the channel type and other settings for an endpoint.
  _i2.EndpointRequest get endpointRequest;
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
  _i2.EndpointRequest getPayload() => endpointRequest;
  @override
  List<Object?> get props => [
        applicationId,
        endpointId,
        endpointRequest,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateEndpointRequest');
    helper.add(
      'applicationId',
      applicationId,
    );
    helper.add(
      'endpointId',
      endpointId,
    );
    helper.add(
      'endpointRequest',
      endpointRequest,
    );
    return helper.toString();
  }
}

class UpdateEndpointRequestRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.EndpointRequest> {
  const UpdateEndpointRequestRestJson1Serializer()
      : super('UpdateEndpointRequest');

  @override
  Iterable<Type> get types => const [
        UpdateEndpointRequest,
        _$UpdateEndpointRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i2.EndpointRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i2.EndpointRequest),
    ) as _i2.EndpointRequest);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is UpdateEndpointRequest
        ? object.getPayload()
        : (object as _i2.EndpointRequest);
    return (serializers.serialize(
      payload,
      specifiedType: const FullType(_i2.EndpointRequest),
    ) as Object);
  }
}
