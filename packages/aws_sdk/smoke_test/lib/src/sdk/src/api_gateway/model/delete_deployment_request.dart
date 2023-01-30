// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.delete_deployment_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_deployment_request.g.dart';

/// Requests API Gateway to delete a Deployment resource.
abstract class DeleteDeploymentRequest
    with
        _i1.HttpInput<DeleteDeploymentRequestPayload>,
        _i2.AWSEquatable<DeleteDeploymentRequest>
    implements
        Built<DeleteDeploymentRequest, DeleteDeploymentRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteDeploymentRequestPayload> {
  /// Requests API Gateway to delete a Deployment resource.
  factory DeleteDeploymentRequest({
    required String deploymentId,
    required String restApiId,
  }) {
    return _$DeleteDeploymentRequest._(
      deploymentId: deploymentId,
      restApiId: restApiId,
    );
  }

  /// Requests API Gateway to delete a Deployment resource.
  factory DeleteDeploymentRequest.build(
          [void Function(DeleteDeploymentRequestBuilder) updates]) =
      _$DeleteDeploymentRequest;

  const DeleteDeploymentRequest._();

  factory DeleteDeploymentRequest.fromRequest(
    DeleteDeploymentRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteDeploymentRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['deploymentId'] != null) {
          b.deploymentId = labels['deploymentId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteDeploymentRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteDeploymentRequestBuilder b) {}

  /// The identifier of the Deployment resource to delete.
  String get deploymentId;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'deploymentId':
        return deploymentId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteDeploymentRequestPayload getPayload() =>
      DeleteDeploymentRequestPayload();
  @override
  List<Object?> get props => [
        deploymentId,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteDeploymentRequest');
    helper.add(
      'deploymentId',
      deploymentId,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteDeploymentRequestPayload
    with
        _i2.AWSEquatable<DeleteDeploymentRequestPayload>
    implements
        Built<DeleteDeploymentRequestPayload,
            DeleteDeploymentRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteDeploymentRequestPayload(
          [void Function(DeleteDeploymentRequestPayloadBuilder) updates]) =
      _$DeleteDeploymentRequestPayload;

  const DeleteDeploymentRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteDeploymentRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteDeploymentRequestPayload');
    return helper.toString();
  }
}

class DeleteDeploymentRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteDeploymentRequestPayload> {
  const DeleteDeploymentRequestRestJson1Serializer()
      : super('DeleteDeploymentRequest');

  @override
  Iterable<Type> get types => const [
        DeleteDeploymentRequest,
        _$DeleteDeploymentRequest,
        DeleteDeploymentRequestPayload,
        _$DeleteDeploymentRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteDeploymentRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteDeploymentRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
