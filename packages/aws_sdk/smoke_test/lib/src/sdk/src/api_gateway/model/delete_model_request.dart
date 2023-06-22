// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String restApiId,
    required String modelName,
  }) {
    return _$DeleteModelRequest._(
      restApiId: restApiId,
      modelName: modelName,
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

  static const List<_i1.SmithySerializer<DeleteModelRequestPayload>>
      serializers = [DeleteModelRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteModelRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name of the model to delete.
  String get modelName;
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
        restApiId,
        modelName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteModelRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'modelName',
        modelName,
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
    DeleteModelRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
