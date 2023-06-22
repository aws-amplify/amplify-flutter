// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.delete_resource_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_resource_request.g.dart';

/// Request to delete a Resource.
abstract class DeleteResourceRequest
    with
        _i1.HttpInput<DeleteResourceRequestPayload>,
        _i2.AWSEquatable<DeleteResourceRequest>
    implements
        Built<DeleteResourceRequest, DeleteResourceRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteResourceRequestPayload> {
  /// Request to delete a Resource.
  factory DeleteResourceRequest({
    required String restApiId,
    required String resourceId,
  }) {
    return _$DeleteResourceRequest._(
      restApiId: restApiId,
      resourceId: resourceId,
    );
  }

  /// Request to delete a Resource.
  factory DeleteResourceRequest.build(
          [void Function(DeleteResourceRequestBuilder) updates]) =
      _$DeleteResourceRequest;

  const DeleteResourceRequest._();

  factory DeleteResourceRequest.fromRequest(
    DeleteResourceRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteResourceRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['resourceId'] != null) {
          b.resourceId = labels['resourceId']!;
        }
      });

  static const List<_i1.SmithySerializer<DeleteResourceRequestPayload>>
      serializers = [DeleteResourceRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteResourceRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The identifier of the Resource resource.
  String get resourceId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'resourceId':
        return resourceId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteResourceRequestPayload getPayload() => DeleteResourceRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        resourceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteResourceRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'resourceId',
        resourceId,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteResourceRequestPayload
    with
        _i2.AWSEquatable<DeleteResourceRequestPayload>
    implements
        Built<DeleteResourceRequestPayload,
            DeleteResourceRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteResourceRequestPayload(
          [void Function(DeleteResourceRequestPayloadBuilder) updates]) =
      _$DeleteResourceRequestPayload;

  const DeleteResourceRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteResourceRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteResourceRequestPayload');
    return helper.toString();
  }
}

class DeleteResourceRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteResourceRequestPayload> {
  const DeleteResourceRequestRestJson1Serializer()
      : super('DeleteResourceRequest');

  @override
  Iterable<Type> get types => const [
        DeleteResourceRequest,
        _$DeleteResourceRequest,
        DeleteResourceRequestPayload,
        _$DeleteResourceRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteResourceRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteResourceRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteResourceRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
