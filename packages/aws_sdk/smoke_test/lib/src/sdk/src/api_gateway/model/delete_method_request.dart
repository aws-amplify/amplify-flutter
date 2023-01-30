// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.delete_method_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_method_request.g.dart';

/// Request to delete an existing Method resource.
abstract class DeleteMethodRequest
    with
        _i1.HttpInput<DeleteMethodRequestPayload>,
        _i2.AWSEquatable<DeleteMethodRequest>
    implements
        Built<DeleteMethodRequest, DeleteMethodRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteMethodRequestPayload> {
  /// Request to delete an existing Method resource.
  factory DeleteMethodRequest({
    required String httpMethod,
    required String resourceId,
    required String restApiId,
  }) {
    return _$DeleteMethodRequest._(
      httpMethod: httpMethod,
      resourceId: resourceId,
      restApiId: restApiId,
    );
  }

  /// Request to delete an existing Method resource.
  factory DeleteMethodRequest.build(
          [void Function(DeleteMethodRequestBuilder) updates]) =
      _$DeleteMethodRequest;

  const DeleteMethodRequest._();

  factory DeleteMethodRequest.fromRequest(
    DeleteMethodRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteMethodRequest.build((b) {
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

  static const List<_i1.SmithySerializer> serializers = [
    DeleteMethodRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteMethodRequestBuilder b) {}

  /// The HTTP verb of the Method resource.
  String get httpMethod;

  /// The Resource identifier for the Method resource.
  String get resourceId;

  /// The string identifier of the associated RestApi.
  String get restApiId;
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
  DeleteMethodRequestPayload getPayload() => DeleteMethodRequestPayload();
  @override
  List<Object?> get props => [
        httpMethod,
        resourceId,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteMethodRequest');
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
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteMethodRequestPayload
    with _i2.AWSEquatable<DeleteMethodRequestPayload>
    implements
        Built<DeleteMethodRequestPayload, DeleteMethodRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteMethodRequestPayload(
          [void Function(DeleteMethodRequestPayloadBuilder) updates]) =
      _$DeleteMethodRequestPayload;

  const DeleteMethodRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteMethodRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteMethodRequestPayload');
    return helper.toString();
  }
}

class DeleteMethodRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteMethodRequestPayload> {
  const DeleteMethodRequestRestJson1Serializer() : super('DeleteMethodRequest');

  @override
  Iterable<Type> get types => const [
        DeleteMethodRequest,
        _$DeleteMethodRequest,
        DeleteMethodRequestPayload,
        _$DeleteMethodRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteMethodRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteMethodRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
