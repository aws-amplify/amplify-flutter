// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.delete_method_response_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_method_response_request.g.dart';

/// A request to delete an existing MethodResponse resource.
abstract class DeleteMethodResponseRequest
    with
        _i1.HttpInput<DeleteMethodResponseRequestPayload>,
        _i2.AWSEquatable<DeleteMethodResponseRequest>
    implements
        Built<DeleteMethodResponseRequest, DeleteMethodResponseRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteMethodResponseRequestPayload> {
  /// A request to delete an existing MethodResponse resource.
  factory DeleteMethodResponseRequest({
    required String restApiId,
    required String resourceId,
    required String httpMethod,
    required String statusCode,
  }) {
    return _$DeleteMethodResponseRequest._(
      restApiId: restApiId,
      resourceId: resourceId,
      httpMethod: httpMethod,
      statusCode: statusCode,
    );
  }

  /// A request to delete an existing MethodResponse resource.
  factory DeleteMethodResponseRequest.build(
          [void Function(DeleteMethodResponseRequestBuilder) updates]) =
      _$DeleteMethodResponseRequest;

  const DeleteMethodResponseRequest._();

  factory DeleteMethodResponseRequest.fromRequest(
    DeleteMethodResponseRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteMethodResponseRequest.build((b) {
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

  static const List<_i1.SmithySerializer<DeleteMethodResponseRequestPayload>>
      serializers = [DeleteMethodResponseRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteMethodResponseRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The Resource identifier for the MethodResponse resource.
  String get resourceId;

  /// The HTTP verb of the Method resource.
  String get httpMethod;

  /// The status code identifier for the MethodResponse resource.
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
  DeleteMethodResponseRequestPayload getPayload() =>
      DeleteMethodResponseRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        resourceId,
        httpMethod,
        statusCode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteMethodResponseRequest')
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
      )
      ..add(
        'statusCode',
        statusCode,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteMethodResponseRequestPayload
    with
        _i2.AWSEquatable<DeleteMethodResponseRequestPayload>
    implements
        Built<DeleteMethodResponseRequestPayload,
            DeleteMethodResponseRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteMethodResponseRequestPayload(
          [void Function(DeleteMethodResponseRequestPayloadBuilder) updates]) =
      _$DeleteMethodResponseRequestPayload;

  const DeleteMethodResponseRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteMethodResponseRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteMethodResponseRequestPayload');
    return helper.toString();
  }
}

class DeleteMethodResponseRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteMethodResponseRequestPayload> {
  const DeleteMethodResponseRequestRestJson1Serializer()
      : super('DeleteMethodResponseRequest');

  @override
  Iterable<Type> get types => const [
        DeleteMethodResponseRequest,
        _$DeleteMethodResponseRequest,
        DeleteMethodResponseRequestPayload,
        _$DeleteMethodResponseRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteMethodResponseRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteMethodResponseRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteMethodResponseRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
