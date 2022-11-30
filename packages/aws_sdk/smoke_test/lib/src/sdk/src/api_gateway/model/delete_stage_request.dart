// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.delete_stage_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_stage_request.g.dart';

/// Requests API Gateway to delete a Stage resource.
abstract class DeleteStageRequest
    with
        _i1.HttpInput<DeleteStageRequestPayload>,
        _i2.AWSEquatable<DeleteStageRequest>
    implements
        Built<DeleteStageRequest, DeleteStageRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteStageRequestPayload> {
  /// Requests API Gateway to delete a Stage resource.
  factory DeleteStageRequest({
    required String restApiId,
    required String stageName,
  }) {
    return _$DeleteStageRequest._(
      restApiId: restApiId,
      stageName: stageName,
    );
  }

  /// Requests API Gateway to delete a Stage resource.
  factory DeleteStageRequest.build(
          [void Function(DeleteStageRequestBuilder) updates]) =
      _$DeleteStageRequest;

  const DeleteStageRequest._();

  factory DeleteStageRequest.fromRequest(
    DeleteStageRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteStageRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['stageName'] != null) {
          b.stageName = labels['stageName']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteStageRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteStageRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name of the Stage resource to delete.
  String get stageName;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'stageName':
        return stageName;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteStageRequestPayload getPayload() => DeleteStageRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        stageName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteStageRequest');
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'stageName',
      stageName,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteStageRequestPayload
    with _i2.AWSEquatable<DeleteStageRequestPayload>
    implements
        Built<DeleteStageRequestPayload, DeleteStageRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteStageRequestPayload(
          [void Function(DeleteStageRequestPayloadBuilder) updates]) =
      _$DeleteStageRequestPayload;

  const DeleteStageRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteStageRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteStageRequestPayload');
    return helper.toString();
  }
}

class DeleteStageRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteStageRequestPayload> {
  const DeleteStageRequestRestJson1Serializer() : super('DeleteStageRequest');

  @override
  Iterable<Type> get types => const [
        DeleteStageRequest,
        _$DeleteStageRequest,
        DeleteStageRequestPayload,
        _$DeleteStageRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteStageRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteStageRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
