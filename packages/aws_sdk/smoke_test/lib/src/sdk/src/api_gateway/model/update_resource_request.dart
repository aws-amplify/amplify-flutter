// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.update_resource_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_resource_request.g.dart';

/// Request to change information about a Resource resource.
abstract class UpdateResourceRequest
    with
        _i1.HttpInput<UpdateResourceRequestPayload>,
        _i2.AWSEquatable<UpdateResourceRequest>
    implements
        Built<UpdateResourceRequest, UpdateResourceRequestBuilder>,
        _i1.HasPayload<UpdateResourceRequestPayload> {
  /// Request to change information about a Resource resource.
  factory UpdateResourceRequest({
    List<_i3.PatchOperation>? patchOperations,
    required String resourceId,
    required String restApiId,
  }) {
    return _$UpdateResourceRequest._(
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
      resourceId: resourceId,
      restApiId: restApiId,
    );
  }

  /// Request to change information about a Resource resource.
  factory UpdateResourceRequest.build(
          [void Function(UpdateResourceRequestBuilder) updates]) =
      _$UpdateResourceRequest;

  const UpdateResourceRequest._();

  factory UpdateResourceRequest.fromRequest(
    UpdateResourceRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateResourceRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['resourceId'] != null) {
          b.resourceId = labels['resourceId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    UpdateResourceRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateResourceRequestBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;

  /// The identifier of the Resource resource.
  String get resourceId;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'resourceId':
        return resourceId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  UpdateResourceRequestPayload getPayload() =>
      UpdateResourceRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        patchOperations,
        resourceId,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateResourceRequest');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i5.internal
abstract class UpdateResourceRequestPayload
    with
        _i2.AWSEquatable<UpdateResourceRequestPayload>
    implements
        Built<UpdateResourceRequestPayload,
            UpdateResourceRequestPayloadBuilder> {
  factory UpdateResourceRequestPayload(
          [void Function(UpdateResourceRequestPayloadBuilder) updates]) =
      _$UpdateResourceRequestPayload;

  const UpdateResourceRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateResourceRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateResourceRequestPayload');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

class UpdateResourceRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UpdateResourceRequestPayload> {
  const UpdateResourceRequestRestJson1Serializer()
      : super('UpdateResourceRequest');

  @override
  Iterable<Type> get types => const [
        UpdateResourceRequest,
        _$UpdateResourceRequest,
        UpdateResourceRequestPayload,
        _$UpdateResourceRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateResourceRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateResourceRequestPayloadBuilder();
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
    final payload = object is UpdateResourceRequest
        ? object.getPayload()
        : (object as UpdateResourceRequestPayload);
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
