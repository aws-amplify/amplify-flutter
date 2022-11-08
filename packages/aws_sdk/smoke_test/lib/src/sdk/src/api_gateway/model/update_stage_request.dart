// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.update_stage_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_stage_request.g.dart';

/// Requests API Gateway to change information about a Stage resource.
abstract class UpdateStageRequest
    with
        _i1.HttpInput<UpdateStageRequestPayload>,
        _i2.AWSEquatable<UpdateStageRequest>
    implements
        Built<UpdateStageRequest, UpdateStageRequestBuilder>,
        _i1.HasPayload<UpdateStageRequestPayload> {
  /// Requests API Gateway to change information about a Stage resource.
  factory UpdateStageRequest({
    List<_i3.PatchOperation>? patchOperations,
    required String restApiId,
    required String stageName,
  }) {
    return _$UpdateStageRequest._(
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
      restApiId: restApiId,
      stageName: stageName,
    );
  }

  /// Requests API Gateway to change information about a Stage resource.
  factory UpdateStageRequest.build(
          [void Function(UpdateStageRequestBuilder) updates]) =
      _$UpdateStageRequest;

  const UpdateStageRequest._();

  factory UpdateStageRequest.fromRequest(
    UpdateStageRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateStageRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['stageName'] != null) {
          b.stageName = labels['stageName']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    UpdateStageRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateStageRequestBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name of the Stage resource to change information about.
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
  UpdateStageRequestPayload getPayload() => UpdateStageRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        patchOperations,
        restApiId,
        stageName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateStageRequest');
    helper.add(
      'patchOperations',
      patchOperations,
    );
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

@_i5.internal
abstract class UpdateStageRequestPayload
    with _i2.AWSEquatable<UpdateStageRequestPayload>
    implements
        Built<UpdateStageRequestPayload, UpdateStageRequestPayloadBuilder> {
  factory UpdateStageRequestPayload(
          [void Function(UpdateStageRequestPayloadBuilder) updates]) =
      _$UpdateStageRequestPayload;

  const UpdateStageRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateStageRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateStageRequestPayload');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

class UpdateStageRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UpdateStageRequestPayload> {
  const UpdateStageRequestRestJson1Serializer() : super('UpdateStageRequest');

  @override
  Iterable<Type> get types => const [
        UpdateStageRequest,
        _$UpdateStageRequest,
        UpdateStageRequestPayload,
        _$UpdateStageRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateStageRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateStageRequestPayloadBuilder();
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
    final payload = object is UpdateStageRequest
        ? object.getPayload()
        : (object as UpdateStageRequestPayload);
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
