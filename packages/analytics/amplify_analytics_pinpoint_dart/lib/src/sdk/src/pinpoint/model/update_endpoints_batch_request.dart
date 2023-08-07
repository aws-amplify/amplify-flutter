// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.update_endpoints_batch_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_batch_request.dart';
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_endpoints_batch_request.g.dart';

abstract class UpdateEndpointsBatchRequest
    with
        _i1.HttpInput<EndpointBatchRequest>,
        _i2.AWSEquatable<UpdateEndpointsBatchRequest>
    implements
        Built<UpdateEndpointsBatchRequest, UpdateEndpointsBatchRequestBuilder>,
        _i1.HasPayload<EndpointBatchRequest> {
  factory UpdateEndpointsBatchRequest({
    required String applicationId,
    required EndpointBatchRequest endpointBatchRequest,
  }) {
    return _$UpdateEndpointsBatchRequest._(
      applicationId: applicationId,
      endpointBatchRequest: endpointBatchRequest,
    );
  }

  factory UpdateEndpointsBatchRequest.build(
          [void Function(UpdateEndpointsBatchRequestBuilder) updates]) =
      _$UpdateEndpointsBatchRequest;

  const UpdateEndpointsBatchRequest._();

  factory UpdateEndpointsBatchRequest.fromRequest(
    EndpointBatchRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateEndpointsBatchRequest.build((b) {
        b.endpointBatchRequest.replace(payload);
        if (labels['applicationId'] != null) {
          b.applicationId = labels['applicationId']!;
        }
      });

  static const List<_i1.SmithySerializer<EndpointBatchRequest>> serializers = [
    UpdateEndpointsBatchRequestRestJson1Serializer()
  ];

  /// The unique identifier for the application. This identifier is displayed as the **Project ID** on the Amazon Pinpoint console.
  String get applicationId;

  /// Specifies a batch of endpoints to create or update and the settings and attributes to set or change for each endpoint.
  EndpointBatchRequest get endpointBatchRequest;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'ApplicationId':
        return applicationId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  EndpointBatchRequest getPayload() => endpointBatchRequest;
  @override
  List<Object?> get props => [
        applicationId,
        endpointBatchRequest,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateEndpointsBatchRequest')
      ..add(
        'applicationId',
        applicationId,
      )
      ..add(
        'endpointBatchRequest',
        endpointBatchRequest,
      );
    return helper.toString();
  }
}

class UpdateEndpointsBatchRequestRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<EndpointBatchRequest> {
  const UpdateEndpointsBatchRequestRestJson1Serializer()
      : super('UpdateEndpointsBatchRequest');

  @override
  Iterable<Type> get types => const [
        UpdateEndpointsBatchRequest,
        _$UpdateEndpointsBatchRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  EndpointBatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(EndpointBatchRequest),
    ) as EndpointBatchRequest);
  }

  @override
  Object serialize(
    Serializers serializers,
    EndpointBatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(EndpointBatchRequest),
    )!;
  }
}
