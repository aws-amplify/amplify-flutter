// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.update_rest_api_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_rest_api_request.g.dart';

/// Request to update an existing RestApi resource in your collection.
abstract class UpdateRestApiRequest
    with
        _i1.HttpInput<UpdateRestApiRequestPayload>,
        _i2.AWSEquatable<UpdateRestApiRequest>
    implements
        Built<UpdateRestApiRequest, UpdateRestApiRequestBuilder>,
        _i1.HasPayload<UpdateRestApiRequestPayload> {
  /// Request to update an existing RestApi resource in your collection.
  factory UpdateRestApiRequest({
    List<_i3.PatchOperation>? patchOperations,
    required String restApiId,
  }) {
    return _$UpdateRestApiRequest._(
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
      restApiId: restApiId,
    );
  }

  /// Request to update an existing RestApi resource in your collection.
  factory UpdateRestApiRequest.build(
          [void Function(UpdateRestApiRequestBuilder) updates]) =
      _$UpdateRestApiRequest;

  const UpdateRestApiRequest._();

  factory UpdateRestApiRequest.fromRequest(
    UpdateRestApiRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateRestApiRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    UpdateRestApiRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateRestApiRequestBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  UpdateRestApiRequestPayload getPayload() => UpdateRestApiRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        patchOperations,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateRestApiRequest');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i5.internal
abstract class UpdateRestApiRequestPayload
    with _i2.AWSEquatable<UpdateRestApiRequestPayload>
    implements
        Built<UpdateRestApiRequestPayload, UpdateRestApiRequestPayloadBuilder> {
  factory UpdateRestApiRequestPayload(
          [void Function(UpdateRestApiRequestPayloadBuilder) updates]) =
      _$UpdateRestApiRequestPayload;

  const UpdateRestApiRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateRestApiRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateRestApiRequestPayload');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

class UpdateRestApiRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UpdateRestApiRequestPayload> {
  const UpdateRestApiRequestRestJson1Serializer()
      : super('UpdateRestApiRequest');

  @override
  Iterable<Type> get types => const [
        UpdateRestApiRequest,
        _$UpdateRestApiRequest,
        UpdateRestApiRequestPayload,
        _$UpdateRestApiRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateRestApiRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateRestApiRequestPayloadBuilder();
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
    final payload = object is UpdateRestApiRequest
        ? object.getPayload()
        : (object as UpdateRestApiRequestPayload);
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
