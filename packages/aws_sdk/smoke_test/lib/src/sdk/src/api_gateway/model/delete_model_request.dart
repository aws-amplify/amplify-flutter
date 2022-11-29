// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.delete_model_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_model_request.g.dart';

/// Request to delete an existing model in an existing RestApi resource.
abstract class DeleteModelRequest
    with
        _i1.HttpInput<DeleteModelRequestPayload>,
        _i2.AWSEquatable<DeleteModelRequest>
    implements
        Built<DeleteModelRequest, DeleteModelRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteModelRequestPayload> {
  /// Request to delete an existing model in an existing RestApi resource.
  factory DeleteModelRequest({
    required String modelName,
    required String restApiId,
  }) {
    return _$DeleteModelRequest._(
      modelName: modelName,
      restApiId: restApiId,
    );
  }

  /// Request to delete an existing model in an existing RestApi resource.
  factory DeleteModelRequest.build(
          [void Function(DeleteModelRequestBuilder) updates]) =
      _$DeleteModelRequest;

  const DeleteModelRequest._();

  factory DeleteModelRequest.fromRequest(
    DeleteModelRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteModelRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['modelName'] != null) {
          b.modelName = labels['modelName']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteModelRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteModelRequestBuilder b) {}

  /// The name of the model to delete.
  String get modelName;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'modelName':
        return modelName;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteModelRequestPayload getPayload() => DeleteModelRequestPayload();
  @override
  List<Object?> get props => [
        modelName,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteModelRequest');
    helper.add(
      'modelName',
      modelName,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteModelRequestPayload
    with _i2.AWSEquatable<DeleteModelRequestPayload>
    implements
        Built<DeleteModelRequestPayload, DeleteModelRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteModelRequestPayload(
          [void Function(DeleteModelRequestPayloadBuilder) updates]) =
      _$DeleteModelRequestPayload;

  const DeleteModelRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteModelRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteModelRequestPayload');
    return helper.toString();
  }
}

class DeleteModelRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteModelRequestPayload> {
  const DeleteModelRequestRestJson1Serializer() : super('DeleteModelRequest');

  @override
  Iterable<Type> get types => const [
        DeleteModelRequest,
        _$DeleteModelRequest,
        DeleteModelRequestPayload,
        _$DeleteModelRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteModelRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteModelRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
