// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.delete_integration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_integration_request.g.dart';

/// Represents a delete integration request.
abstract class DeleteIntegrationRequest
    with
        _i1.HttpInput<DeleteIntegrationRequestPayload>,
        _i2.AWSEquatable<DeleteIntegrationRequest>
    implements
        Built<DeleteIntegrationRequest, DeleteIntegrationRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteIntegrationRequestPayload> {
  /// Represents a delete integration request.
  factory DeleteIntegrationRequest({
    required String restApiId,
    required String resourceId,
    required String httpMethod,
  }) {
    return _$DeleteIntegrationRequest._(
      restApiId: restApiId,
      resourceId: resourceId,
      httpMethod: httpMethod,
    );
  }

  /// Represents a delete integration request.
  factory DeleteIntegrationRequest.build(
          [void Function(DeleteIntegrationRequestBuilder) updates]) =
      _$DeleteIntegrationRequest;

  const DeleteIntegrationRequest._();

  factory DeleteIntegrationRequest.fromRequest(
    DeleteIntegrationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteIntegrationRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['resourceId'] != null) {
          b.resourceId = labels['resourceId']!;
        }
        if (labels['httpMethod'] != null) {
          b.httpMethod = labels['httpMethod']!;
        }
      });

  static const List<_i1.SmithySerializer<DeleteIntegrationRequestPayload>>
      serializers = [DeleteIntegrationRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteIntegrationRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// Specifies a delete integration request's resource identifier.
  String get resourceId;

  /// Specifies a delete integration request's HTTP method.
  String get httpMethod;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'resourceId':
        return resourceId;
      case 'httpMethod':
        return httpMethod;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteIntegrationRequestPayload getPayload() =>
      DeleteIntegrationRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        resourceId,
        httpMethod,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteIntegrationRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'httpMethod',
        httpMethod,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteIntegrationRequestPayload
    with
        _i2.AWSEquatable<DeleteIntegrationRequestPayload>
    implements
        Built<DeleteIntegrationRequestPayload,
            DeleteIntegrationRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteIntegrationRequestPayload(
          [void Function(DeleteIntegrationRequestPayloadBuilder) updates]) =
      _$DeleteIntegrationRequestPayload;

  const DeleteIntegrationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteIntegrationRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteIntegrationRequestPayload');
    return helper.toString();
  }
}

class DeleteIntegrationRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteIntegrationRequestPayload> {
  const DeleteIntegrationRequestRestJson1Serializer()
      : super('DeleteIntegrationRequest');

  @override
  Iterable<Type> get types => const [
        DeleteIntegrationRequest,
        _$DeleteIntegrationRequest,
        DeleteIntegrationRequestPayload,
        _$DeleteIntegrationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteIntegrationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteIntegrationRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteIntegrationRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
