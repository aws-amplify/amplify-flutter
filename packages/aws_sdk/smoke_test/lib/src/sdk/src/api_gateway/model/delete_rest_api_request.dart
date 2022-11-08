// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.delete_rest_api_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_rest_api_request.g.dart';

/// Request to delete the specified API from your collection.
abstract class DeleteRestApiRequest
    with
        _i1.HttpInput<DeleteRestApiRequestPayload>,
        _i2.AWSEquatable<DeleteRestApiRequest>
    implements
        Built<DeleteRestApiRequest, DeleteRestApiRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteRestApiRequestPayload> {
  /// Request to delete the specified API from your collection.
  factory DeleteRestApiRequest({required String restApiId}) {
    return _$DeleteRestApiRequest._(restApiId: restApiId);
  }

  /// Request to delete the specified API from your collection.
  factory DeleteRestApiRequest.build(
          [void Function(DeleteRestApiRequestBuilder) updates]) =
      _$DeleteRestApiRequest;

  const DeleteRestApiRequest._();

  factory DeleteRestApiRequest.fromRequest(
    DeleteRestApiRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteRestApiRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteRestApiRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteRestApiRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteRestApiRequestPayload getPayload() => DeleteRestApiRequestPayload();
  @override
  List<Object?> get props => [restApiId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteRestApiRequest');
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteRestApiRequestPayload
    with _i2.AWSEquatable<DeleteRestApiRequestPayload>
    implements
        Built<DeleteRestApiRequestPayload, DeleteRestApiRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteRestApiRequestPayload(
          [void Function(DeleteRestApiRequestPayloadBuilder) updates]) =
      _$DeleteRestApiRequestPayload;

  const DeleteRestApiRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteRestApiRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteRestApiRequestPayload');
    return helper.toString();
  }
}

class DeleteRestApiRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteRestApiRequestPayload> {
  const DeleteRestApiRequestRestJson1Serializer()
      : super('DeleteRestApiRequest');

  @override
  Iterable<Type> get types => const [
        DeleteRestApiRequest,
        _$DeleteRestApiRequest,
        DeleteRestApiRequestPayload,
        _$DeleteRestApiRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteRestApiRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteRestApiRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
