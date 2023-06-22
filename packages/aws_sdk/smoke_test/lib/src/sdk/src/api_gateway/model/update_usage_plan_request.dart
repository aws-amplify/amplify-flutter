// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.update_usage_plan_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_usage_plan_request.g.dart';

/// The PATCH request to update a usage plan of a given plan Id.
abstract class UpdateUsagePlanRequest
    with
        _i1.HttpInput<UpdateUsagePlanRequestPayload>,
        _i2.AWSEquatable<UpdateUsagePlanRequest>
    implements
        Built<UpdateUsagePlanRequest, UpdateUsagePlanRequestBuilder>,
        _i1.HasPayload<UpdateUsagePlanRequestPayload> {
  /// The PATCH request to update a usage plan of a given plan Id.
  factory UpdateUsagePlanRequest({
    required String usagePlanId,
    List<_i3.PatchOperation>? patchOperations,
  }) {
    return _$UpdateUsagePlanRequest._(
      usagePlanId: usagePlanId,
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
    );
  }

  /// The PATCH request to update a usage plan of a given plan Id.
  factory UpdateUsagePlanRequest.build(
          [void Function(UpdateUsagePlanRequestBuilder) updates]) =
      _$UpdateUsagePlanRequest;

  const UpdateUsagePlanRequest._();

  factory UpdateUsagePlanRequest.fromRequest(
    UpdateUsagePlanRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateUsagePlanRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['usagePlanId'] != null) {
          b.usagePlanId = labels['usagePlanId']!;
        }
      });

  static const List<_i1.SmithySerializer<UpdateUsagePlanRequestPayload>>
      serializers = [UpdateUsagePlanRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateUsagePlanRequestBuilder b) {}

  /// The Id of the to-be-updated usage plan.
  String get usagePlanId;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
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
  UpdateUsagePlanRequestPayload getPayload() =>
      UpdateUsagePlanRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        usagePlanId,
        patchOperations,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateUsagePlanRequest')
      ..add(
        'usagePlanId',
        usagePlanId,
      )
      ..add(
        'patchOperations',
        patchOperations,
      );
    return helper.toString();
  }
}

@_i5.internal
abstract class UpdateUsagePlanRequestPayload
    with
        _i2.AWSEquatable<UpdateUsagePlanRequestPayload>
    implements
        Built<UpdateUsagePlanRequestPayload,
            UpdateUsagePlanRequestPayloadBuilder> {
  factory UpdateUsagePlanRequestPayload(
          [void Function(UpdateUsagePlanRequestPayloadBuilder) updates]) =
      _$UpdateUsagePlanRequestPayload;

  const UpdateUsagePlanRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateUsagePlanRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateUsagePlanRequestPayload')
      ..add(
        'patchOperations',
        patchOperations,
      );
    return helper.toString();
  }
}

class UpdateUsagePlanRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UpdateUsagePlanRequestPayload> {
  const UpdateUsagePlanRequestRestJson1Serializer()
      : super('UpdateUsagePlanRequest');

  @override
  Iterable<Type> get types => const [
        UpdateUsagePlanRequest,
        _$UpdateUsagePlanRequest,
        UpdateUsagePlanRequestPayload,
        _$UpdateUsagePlanRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateUsagePlanRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateUsagePlanRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'patchOperations':
          result.patchOperations.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.PatchOperation)],
            ),
          ) as _i4.BuiltList<_i3.PatchOperation>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateUsagePlanRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateUsagePlanRequestPayload(:patchOperations) = object;
    if (patchOperations != null) {
      result$
        ..add('patchOperations')
        ..add(serializers.serialize(
          patchOperations,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.PatchOperation)],
          ),
        ));
    }
    return result$;
  }
}
