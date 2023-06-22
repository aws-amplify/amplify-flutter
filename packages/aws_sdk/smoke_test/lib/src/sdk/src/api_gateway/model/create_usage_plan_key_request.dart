// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.create_usage_plan_key_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'create_usage_plan_key_request.g.dart';

/// The POST request to create a usage plan key for adding an existing API key to a usage plan.
abstract class CreateUsagePlanKeyRequest
    with
        _i1.HttpInput<CreateUsagePlanKeyRequestPayload>,
        _i2.AWSEquatable<CreateUsagePlanKeyRequest>
    implements
        Built<CreateUsagePlanKeyRequest, CreateUsagePlanKeyRequestBuilder>,
        _i1.HasPayload<CreateUsagePlanKeyRequestPayload> {
  /// The POST request to create a usage plan key for adding an existing API key to a usage plan.
  factory CreateUsagePlanKeyRequest({
    required String usagePlanId,
    required String keyId,
    required String keyType,
  }) {
    return _$CreateUsagePlanKeyRequest._(
      usagePlanId: usagePlanId,
      keyId: keyId,
      keyType: keyType,
    );
  }

  /// The POST request to create a usage plan key for adding an existing API key to a usage plan.
  factory CreateUsagePlanKeyRequest.build(
          [void Function(CreateUsagePlanKeyRequestBuilder) updates]) =
      _$CreateUsagePlanKeyRequest;

  const CreateUsagePlanKeyRequest._();

  factory CreateUsagePlanKeyRequest.fromRequest(
    CreateUsagePlanKeyRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CreateUsagePlanKeyRequest.build((b) {
        b.keyId = payload.keyId;
        b.keyType = payload.keyType;
        if (labels['usagePlanId'] != null) {
          b.usagePlanId = labels['usagePlanId']!;
        }
      });

  static const List<_i1.SmithySerializer<CreateUsagePlanKeyRequestPayload>>
      serializers = [CreateUsagePlanKeyRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateUsagePlanKeyRequestBuilder b) {}

  /// The Id of the UsagePlan resource representing the usage plan containing the to-be-created UsagePlanKey resource representing a plan customer.
  String get usagePlanId;

  /// The identifier of a UsagePlanKey resource for a plan customer.
  String get keyId;

  /// The type of a UsagePlanKey resource for a plan customer.
  String get keyType;
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
  CreateUsagePlanKeyRequestPayload getPayload() =>
      CreateUsagePlanKeyRequestPayload((b) {
        b.keyId = keyId;
        b.keyType = keyType;
      });
  @override
  List<Object?> get props => [
        usagePlanId,
        keyId,
        keyType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateUsagePlanKeyRequest')
      ..add(
        'usagePlanId',
        usagePlanId,
      )
      ..add(
        'keyId',
        keyId,
      )
      ..add(
        'keyType',
        keyType,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class CreateUsagePlanKeyRequestPayload
    with
        _i2.AWSEquatable<CreateUsagePlanKeyRequestPayload>
    implements
        Built<CreateUsagePlanKeyRequestPayload,
            CreateUsagePlanKeyRequestPayloadBuilder> {
  factory CreateUsagePlanKeyRequestPayload(
          [void Function(CreateUsagePlanKeyRequestPayloadBuilder) updates]) =
      _$CreateUsagePlanKeyRequestPayload;

  const CreateUsagePlanKeyRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateUsagePlanKeyRequestPayloadBuilder b) {}

  /// The identifier of a UsagePlanKey resource for a plan customer.
  String get keyId;

  /// The type of a UsagePlanKey resource for a plan customer.
  String get keyType;
  @override
  List<Object?> get props => [
        keyId,
        keyType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateUsagePlanKeyRequestPayload')
          ..add(
            'keyId',
            keyId,
          )
          ..add(
            'keyType',
            keyType,
          );
    return helper.toString();
  }
}

class CreateUsagePlanKeyRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<CreateUsagePlanKeyRequestPayload> {
  const CreateUsagePlanKeyRequestRestJson1Serializer()
      : super('CreateUsagePlanKeyRequest');

  @override
  Iterable<Type> get types => const [
        CreateUsagePlanKeyRequest,
        _$CreateUsagePlanKeyRequest,
        CreateUsagePlanKeyRequestPayload,
        _$CreateUsagePlanKeyRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateUsagePlanKeyRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateUsagePlanKeyRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'keyId':
          result.keyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'keyType':
          result.keyType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateUsagePlanKeyRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateUsagePlanKeyRequestPayload(:keyId, :keyType) = object;
    result$.addAll([
      'keyId',
      serializers.serialize(
        keyId,
        specifiedType: const FullType(String),
      ),
      'keyType',
      serializers.serialize(
        keyType,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
