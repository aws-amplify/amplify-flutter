// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_usage_plan_key_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_usage_plan_key_request.g.dart';

/// The GET request to get a usage plan key of a given key identifier.
abstract class GetUsagePlanKeyRequest
    with
        _i1.HttpInput<GetUsagePlanKeyRequestPayload>,
        _i2.AWSEquatable<GetUsagePlanKeyRequest>
    implements
        Built<GetUsagePlanKeyRequest, GetUsagePlanKeyRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetUsagePlanKeyRequestPayload> {
  /// The GET request to get a usage plan key of a given key identifier.
  factory GetUsagePlanKeyRequest({
    required String usagePlanId,
    required String keyId,
  }) {
    return _$GetUsagePlanKeyRequest._(
      usagePlanId: usagePlanId,
      keyId: keyId,
    );
  }

  /// The GET request to get a usage plan key of a given key identifier.
  factory GetUsagePlanKeyRequest.build(
          [void Function(GetUsagePlanKeyRequestBuilder) updates]) =
      _$GetUsagePlanKeyRequest;

  const GetUsagePlanKeyRequest._();

  factory GetUsagePlanKeyRequest.fromRequest(
    GetUsagePlanKeyRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetUsagePlanKeyRequest.build((b) {
        if (labels['usagePlanId'] != null) {
          b.usagePlanId = labels['usagePlanId']!;
        }
        if (labels['keyId'] != null) {
          b.keyId = labels['keyId']!;
        }
      });

  static const List<_i1.SmithySerializer<GetUsagePlanKeyRequestPayload>>
      serializers = [GetUsagePlanKeyRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUsagePlanKeyRequestBuilder b) {}

  /// The Id of the UsagePlan resource representing the usage plan containing the to-be-retrieved UsagePlanKey resource representing a plan customer.
  String get usagePlanId;

  /// The key Id of the to-be-retrieved UsagePlanKey resource representing a plan customer.
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
  GetUsagePlanKeyRequestPayload getPayload() => GetUsagePlanKeyRequestPayload();
  @override
  List<Object?> get props => [
        usagePlanId,
        keyId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUsagePlanKeyRequest')
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
abstract class GetUsagePlanKeyRequestPayload
    with
        _i2.AWSEquatable<GetUsagePlanKeyRequestPayload>
    implements
        Built<GetUsagePlanKeyRequestPayload,
            GetUsagePlanKeyRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetUsagePlanKeyRequestPayload(
          [void Function(GetUsagePlanKeyRequestPayloadBuilder) updates]) =
      _$GetUsagePlanKeyRequestPayload;

  const GetUsagePlanKeyRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUsagePlanKeyRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUsagePlanKeyRequestPayload');
    return helper.toString();
  }
}

class GetUsagePlanKeyRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetUsagePlanKeyRequestPayload> {
  const GetUsagePlanKeyRequestRestJson1Serializer()
      : super('GetUsagePlanKeyRequest');

  @override
  Iterable<Type> get types => const [
        GetUsagePlanKeyRequest,
        _$GetUsagePlanKeyRequest,
        GetUsagePlanKeyRequestPayload,
        _$GetUsagePlanKeyRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetUsagePlanKeyRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetUsagePlanKeyRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetUsagePlanKeyRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
