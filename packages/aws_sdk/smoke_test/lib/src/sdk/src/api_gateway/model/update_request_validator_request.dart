// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.update_request_validator_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_request_validator_request.g.dart';

/// Updates a RequestValidator of a given RestApi.
abstract class UpdateRequestValidatorRequest
    with
        _i1.HttpInput<UpdateRequestValidatorRequestPayload>,
        _i2.AWSEquatable<UpdateRequestValidatorRequest>
    implements
        Built<UpdateRequestValidatorRequest,
            UpdateRequestValidatorRequestBuilder>,
        _i1.HasPayload<UpdateRequestValidatorRequestPayload> {
  /// Updates a RequestValidator of a given RestApi.
  factory UpdateRequestValidatorRequest({
    List<_i3.PatchOperation>? patchOperations,
    required String requestValidatorId,
    required String restApiId,
  }) {
    return _$UpdateRequestValidatorRequest._(
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
      requestValidatorId: requestValidatorId,
      restApiId: restApiId,
    );
  }

  /// Updates a RequestValidator of a given RestApi.
  factory UpdateRequestValidatorRequest.build(
          [void Function(UpdateRequestValidatorRequestBuilder) updates]) =
      _$UpdateRequestValidatorRequest;

  const UpdateRequestValidatorRequest._();

  factory UpdateRequestValidatorRequest.fromRequest(
    UpdateRequestValidatorRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateRequestValidatorRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['requestValidatorId'] != null) {
          b.requestValidatorId = labels['requestValidatorId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    UpdateRequestValidatorRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateRequestValidatorRequestBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;

  /// The identifier of RequestValidator to be updated.
  String get requestValidatorId;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'requestValidatorId':
        return requestValidatorId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  UpdateRequestValidatorRequestPayload getPayload() =>
      UpdateRequestValidatorRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        patchOperations,
        requestValidatorId,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateRequestValidatorRequest');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    helper.add(
      'requestValidatorId',
      requestValidatorId,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i5.internal
abstract class UpdateRequestValidatorRequestPayload
    with
        _i2.AWSEquatable<UpdateRequestValidatorRequestPayload>
    implements
        Built<UpdateRequestValidatorRequestPayload,
            UpdateRequestValidatorRequestPayloadBuilder> {
  factory UpdateRequestValidatorRequestPayload(
      [void Function(UpdateRequestValidatorRequestPayloadBuilder)
          updates]) = _$UpdateRequestValidatorRequestPayload;

  const UpdateRequestValidatorRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateRequestValidatorRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateRequestValidatorRequestPayload');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

class UpdateRequestValidatorRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<UpdateRequestValidatorRequestPayload> {
  const UpdateRequestValidatorRequestRestJson1Serializer()
      : super('UpdateRequestValidatorRequest');

  @override
  Iterable<Type> get types => const [
        UpdateRequestValidatorRequest,
        _$UpdateRequestValidatorRequest,
        UpdateRequestValidatorRequestPayload,
        _$UpdateRequestValidatorRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateRequestValidatorRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateRequestValidatorRequestPayloadBuilder();
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
    final payload = object is UpdateRequestValidatorRequest
        ? object.getPayload()
        : (object as UpdateRequestValidatorRequestPayload);
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
