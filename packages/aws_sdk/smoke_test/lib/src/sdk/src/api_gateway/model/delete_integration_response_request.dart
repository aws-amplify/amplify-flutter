// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.delete_integration_response_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_integration_response_request.g.dart';

/// Represents a delete integration response request.
abstract class DeleteIntegrationResponseRequest
    with
        _i1.HttpInput<DeleteIntegrationResponseRequestPayload>,
        _i2.AWSEquatable<DeleteIntegrationResponseRequest>
    implements
        Built<DeleteIntegrationResponseRequest,
            DeleteIntegrationResponseRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteIntegrationResponseRequestPayload> {
  /// Represents a delete integration response request.
  factory DeleteIntegrationResponseRequest({
    required String httpMethod,
    required String resourceId,
    required String restApiId,
    required String statusCode,
  }) {
    return _$DeleteIntegrationResponseRequest._(
      httpMethod: httpMethod,
      resourceId: resourceId,
      restApiId: restApiId,
      statusCode: statusCode,
    );
  }

  /// Represents a delete integration response request.
  factory DeleteIntegrationResponseRequest.build(
          [void Function(DeleteIntegrationResponseRequestBuilder) updates]) =
      _$DeleteIntegrationResponseRequest;

  const DeleteIntegrationResponseRequest._();

  factory DeleteIntegrationResponseRequest.fromRequest(
    DeleteIntegrationResponseRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteIntegrationResponseRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['resourceId'] != null) {
          b.resourceId = labels['resourceId']!;
        }
        if (labels['httpMethod'] != null) {
          b.httpMethod = labels['httpMethod']!;
        }
        if (labels['statusCode'] != null) {
          b.statusCode = labels['statusCode']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteIntegrationResponseRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteIntegrationResponseRequestBuilder b) {}

  /// Specifies a delete integration response request's HTTP method.
  String get httpMethod;

  /// Specifies a delete integration response request's resource identifier.
  String get resourceId;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// Specifies a delete integration response request's status code.
  String get statusCode;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'resourceId':
        return resourceId;
      case 'httpMethod':
        return httpMethod;
      case 'statusCode':
        return statusCode;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteIntegrationResponseRequestPayload getPayload() =>
      DeleteIntegrationResponseRequestPayload();
  @override
  List<Object?> get props => [
        httpMethod,
        resourceId,
        restApiId,
        statusCode,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteIntegrationResponseRequest');
    helper.add(
      'httpMethod',
      httpMethod,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'statusCode',
      statusCode,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteIntegrationResponseRequestPayload
    with
        _i2.AWSEquatable<DeleteIntegrationResponseRequestPayload>
    implements
        Built<DeleteIntegrationResponseRequestPayload,
            DeleteIntegrationResponseRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteIntegrationResponseRequestPayload(
      [void Function(DeleteIntegrationResponseRequestPayloadBuilder)
          updates]) = _$DeleteIntegrationResponseRequestPayload;

  const DeleteIntegrationResponseRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteIntegrationResponseRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteIntegrationResponseRequestPayload');
    return helper.toString();
  }
}

class DeleteIntegrationResponseRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<DeleteIntegrationResponseRequestPayload> {
  const DeleteIntegrationResponseRequestRestJson1Serializer()
      : super('DeleteIntegrationResponseRequest');

  @override
  Iterable<Type> get types => const [
        DeleteIntegrationResponseRequest,
        _$DeleteIntegrationResponseRequest,
        DeleteIntegrationResponseRequestPayload,
        _$DeleteIntegrationResponseRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteIntegrationResponseRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteIntegrationResponseRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
