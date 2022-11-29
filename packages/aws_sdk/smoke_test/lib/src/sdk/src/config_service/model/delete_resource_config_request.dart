// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.delete_resource_config_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_resource_config_request.g.dart';

abstract class DeleteResourceConfigRequest
    with
        _i1.HttpInput<DeleteResourceConfigRequest>,
        _i2.AWSEquatable<DeleteResourceConfigRequest>
    implements
        Built<DeleteResourceConfigRequest, DeleteResourceConfigRequestBuilder> {
  factory DeleteResourceConfigRequest({
    required String resourceId,
    required String resourceType,
  }) {
    return _$DeleteResourceConfigRequest._(
      resourceId: resourceId,
      resourceType: resourceType,
    );
  }

  factory DeleteResourceConfigRequest.build(
          [void Function(DeleteResourceConfigRequestBuilder) updates]) =
      _$DeleteResourceConfigRequest;

  const DeleteResourceConfigRequest._();

  factory DeleteResourceConfigRequest.fromRequest(
    DeleteResourceConfigRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteResourceConfigRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteResourceConfigRequestBuilder b) {}

  /// Unique identifier of the resource.
  String get resourceId;

  /// The type of the resource.
  String get resourceType;
  @override
  DeleteResourceConfigRequest getPayload() => this;
  @override
  List<Object?> get props => [
        resourceId,
        resourceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteResourceConfigRequest');
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class DeleteResourceConfigRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DeleteResourceConfigRequest> {
  const DeleteResourceConfigRequestAwsJson11Serializer()
      : super('DeleteResourceConfigRequest');

  @override
  Iterable<Type> get types => const [
        DeleteResourceConfigRequest,
        _$DeleteResourceConfigRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteResourceConfigRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteResourceConfigRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DeleteResourceConfigRequest);
    final result = <Object?>[
      'ResourceId',
      serializers.serialize(
        payload.resourceId,
        specifiedType: const FullType(String),
      ),
      'ResourceType',
      serializers.serialize(
        payload.resourceType,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
