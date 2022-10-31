// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.delete_usage_plan_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_usage_plan_request.g.dart';

/// The DELETE request to delete a usage plan of a given plan Id.
abstract class DeleteUsagePlanRequest
    with
        _i1.HttpInput<DeleteUsagePlanRequestPayload>,
        _i2.AWSEquatable<DeleteUsagePlanRequest>
    implements
        Built<DeleteUsagePlanRequest, DeleteUsagePlanRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteUsagePlanRequestPayload> {
  /// The DELETE request to delete a usage plan of a given plan Id.
  factory DeleteUsagePlanRequest({required String usagePlanId}) {
    return _$DeleteUsagePlanRequest._(usagePlanId: usagePlanId);
  }

  /// The DELETE request to delete a usage plan of a given plan Id.
  factory DeleteUsagePlanRequest.build(
          [void Function(DeleteUsagePlanRequestBuilder) updates]) =
      _$DeleteUsagePlanRequest;

  const DeleteUsagePlanRequest._();

  factory DeleteUsagePlanRequest.fromRequest(
    DeleteUsagePlanRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteUsagePlanRequest.build((b) {
        if (labels['usagePlanId'] != null) {
          b.usagePlanId = labels['usagePlanId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    DeleteUsagePlanRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteUsagePlanRequestBuilder b) {}

  /// The Id of the to-be-deleted usage plan.
  String get usagePlanId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'usagePlanId':
        return usagePlanId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteUsagePlanRequestPayload getPayload() => DeleteUsagePlanRequestPayload();
  @override
  List<Object?> get props => [usagePlanId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteUsagePlanRequest');
    helper.add(
      'usagePlanId',
      usagePlanId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteUsagePlanRequestPayload
    with
        _i2.AWSEquatable<DeleteUsagePlanRequestPayload>
    implements
        Built<DeleteUsagePlanRequestPayload,
            DeleteUsagePlanRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteUsagePlanRequestPayload(
          [void Function(DeleteUsagePlanRequestPayloadBuilder) updates]) =
      _$DeleteUsagePlanRequestPayload;

  const DeleteUsagePlanRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteUsagePlanRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteUsagePlanRequestPayload');
    return helper.toString();
  }
}

class DeleteUsagePlanRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteUsagePlanRequestPayload> {
  const DeleteUsagePlanRequestRestJson1Serializer()
      : super('DeleteUsagePlanRequest');

  @override
  Iterable<Type> get types => const [
        DeleteUsagePlanRequest,
        _$DeleteUsagePlanRequest,
        DeleteUsagePlanRequestPayload,
        _$DeleteUsagePlanRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteUsagePlanRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteUsagePlanRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
