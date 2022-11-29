// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    List<_i3.PatchOperation>? patchOperations,
    required String usagePlanId,
  }) {
    return _$UpdateUsagePlanRequest._(
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
      usagePlanId: usagePlanId,
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

  static const List<_i1.SmithySerializer> serializers = [
    UpdateUsagePlanRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateUsagePlanRequestBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;

  /// The Id of the to-be-updated usage plan.
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
  UpdateUsagePlanRequestPayload getPayload() =>
      UpdateUsagePlanRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        patchOperations,
        usagePlanId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateUsagePlanRequest');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    helper.add(
      'usagePlanId',
      usagePlanId,
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
    final helper = newBuiltValueToStringHelper('UpdateUsagePlanRequestPayload');
    helper.add(
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
      switch (key) {
        case 'patchOperations':
          if (value != null) {
            result.patchOperations.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.PatchOperation)],
              ),
            ) as _i4.BuiltList<_i3.PatchOperation>));
          }
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
    final payload = object is UpdateUsagePlanRequest
        ? object.getPayload()
        : (object as UpdateUsagePlanRequestPayload);
    final result = <Object?>[];
    if (payload.patchOperations != null) {
      result
        ..add('patchOperations')
        ..add(serializers.serialize(
          payload.patchOperations!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.PatchOperation)],
          ),
        ));
    }
    return result;
  }
}
