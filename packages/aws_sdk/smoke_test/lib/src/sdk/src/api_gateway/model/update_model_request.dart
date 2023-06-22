// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.update_model_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_model_request.g.dart';

/// Request to update an existing model in an existing RestApi resource.
abstract class UpdateModelRequest
    with
        _i1.HttpInput<UpdateModelRequestPayload>,
        _i2.AWSEquatable<UpdateModelRequest>
    implements
        Built<UpdateModelRequest, UpdateModelRequestBuilder>,
        _i1.HasPayload<UpdateModelRequestPayload> {
  /// Request to update an existing model in an existing RestApi resource.
  factory UpdateModelRequest({
    required String restApiId,
    required String modelName,
    List<_i3.PatchOperation>? patchOperations,
  }) {
    return _$UpdateModelRequest._(
      restApiId: restApiId,
      modelName: modelName,
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
    );
  }

  /// Request to update an existing model in an existing RestApi resource.
  factory UpdateModelRequest.build(
          [void Function(UpdateModelRequestBuilder) updates]) =
      _$UpdateModelRequest;

  const UpdateModelRequest._();

  factory UpdateModelRequest.fromRequest(
    UpdateModelRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateModelRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['modelName'] != null) {
          b.modelName = labels['modelName']!;
        }
      });

  static const List<_i1.SmithySerializer<UpdateModelRequestPayload>>
      serializers = [UpdateModelRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateModelRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name of the model to update.
  String get modelName;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
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
  UpdateModelRequestPayload getPayload() => UpdateModelRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        restApiId,
        modelName,
        patchOperations,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateModelRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'modelName',
        modelName,
      )
      ..add(
        'patchOperations',
        patchOperations,
      );
    return helper.toString();
  }
}

@_i5.internal
abstract class UpdateModelRequestPayload
    with _i2.AWSEquatable<UpdateModelRequestPayload>
    implements
        Built<UpdateModelRequestPayload, UpdateModelRequestPayloadBuilder> {
  factory UpdateModelRequestPayload(
          [void Function(UpdateModelRequestPayloadBuilder) updates]) =
      _$UpdateModelRequestPayload;

  const UpdateModelRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateModelRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateModelRequestPayload')
      ..add(
        'patchOperations',
        patchOperations,
      );
    return helper.toString();
  }
}

class UpdateModelRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UpdateModelRequestPayload> {
  const UpdateModelRequestRestJson1Serializer() : super('UpdateModelRequest');

  @override
  Iterable<Type> get types => const [
        UpdateModelRequest,
        _$UpdateModelRequest,
        UpdateModelRequestPayload,
        _$UpdateModelRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateModelRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateModelRequestPayloadBuilder();
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
    UpdateModelRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateModelRequestPayload(:patchOperations) = object;
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
