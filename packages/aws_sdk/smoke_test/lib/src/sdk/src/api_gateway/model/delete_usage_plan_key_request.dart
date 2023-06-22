// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.delete_usage_plan_key_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_usage_plan_key_request.g.dart';

/// The DELETE request to delete a usage plan key and remove the underlying API key from the associated usage plan.
abstract class DeleteUsagePlanKeyRequest
    with
        _i1.HttpInput<DeleteUsagePlanKeyRequestPayload>,
        _i2.AWSEquatable<DeleteUsagePlanKeyRequest>
    implements
        Built<DeleteUsagePlanKeyRequest, DeleteUsagePlanKeyRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteUsagePlanKeyRequestPayload> {
  /// The DELETE request to delete a usage plan key and remove the underlying API key from the associated usage plan.
  factory DeleteUsagePlanKeyRequest({
    required String usagePlanId,
    required String keyId,
  }) {
    return _$DeleteUsagePlanKeyRequest._(
      usagePlanId: usagePlanId,
      keyId: keyId,
    );
  }

  /// The DELETE request to delete a usage plan key and remove the underlying API key from the associated usage plan.
  factory DeleteUsagePlanKeyRequest.build(
          [void Function(DeleteUsagePlanKeyRequestBuilder) updates]) =
      _$DeleteUsagePlanKeyRequest;

  const DeleteUsagePlanKeyRequest._();

  factory DeleteUsagePlanKeyRequest.fromRequest(
    DeleteUsagePlanKeyRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteUsagePlanKeyRequest.build((b) {
        if (labels['usagePlanId'] != null) {
          b.usagePlanId = labels['usagePlanId']!;
        }
        if (labels['keyId'] != null) {
          b.keyId = labels['keyId']!;
        }
      });

  static const List<_i1.SmithySerializer<DeleteUsagePlanKeyRequestPayload>>
      serializers = [DeleteUsagePlanKeyRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteUsagePlanKeyRequestBuilder b) {}

  /// The Id of the UsagePlan resource representing the usage plan containing the to-be-deleted UsagePlanKey resource representing a plan customer.
  String get usagePlanId;

  /// The Id of the UsagePlanKey resource to be deleted.
  String get keyId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'usagePlanId':
        return usagePlanId;
      case 'keyId':
        return keyId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteUsagePlanKeyRequestPayload getPayload() =>
      DeleteUsagePlanKeyRequestPayload();
  @override
  List<Object?> get props => [
        usagePlanId,
        keyId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteUsagePlanKeyRequest')
      ..add(
        'usagePlanId',
        usagePlanId,
      )
      ..add(
        'keyId',
        keyId,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteUsagePlanKeyRequestPayload
    with
        _i2.AWSEquatable<DeleteUsagePlanKeyRequestPayload>
    implements
        Built<DeleteUsagePlanKeyRequestPayload,
            DeleteUsagePlanKeyRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteUsagePlanKeyRequestPayload(
          [void Function(DeleteUsagePlanKeyRequestPayloadBuilder) updates]) =
      _$DeleteUsagePlanKeyRequestPayload;

  const DeleteUsagePlanKeyRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteUsagePlanKeyRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteUsagePlanKeyRequestPayload');
    return helper.toString();
  }
}

class DeleteUsagePlanKeyRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DeleteUsagePlanKeyRequestPayload> {
  const DeleteUsagePlanKeyRequestRestJson1Serializer()
      : super('DeleteUsagePlanKeyRequest');

  @override
  Iterable<Type> get types => const [
        DeleteUsagePlanKeyRequest,
        _$DeleteUsagePlanKeyRequest,
        DeleteUsagePlanKeyRequestPayload,
        _$DeleteUsagePlanKeyRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteUsagePlanKeyRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteUsagePlanKeyRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteUsagePlanKeyRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
