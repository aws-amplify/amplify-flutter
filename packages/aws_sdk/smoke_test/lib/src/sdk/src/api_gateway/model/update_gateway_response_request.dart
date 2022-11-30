// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.update_gateway_response_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_response_type.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_gateway_response_request.g.dart';

/// Updates a GatewayResponse of a specified response type on the given RestApi.
abstract class UpdateGatewayResponseRequest
    with
        _i1.HttpInput<UpdateGatewayResponseRequestPayload>,
        _i2.AWSEquatable<UpdateGatewayResponseRequest>
    implements
        Built<UpdateGatewayResponseRequest,
            UpdateGatewayResponseRequestBuilder>,
        _i1.HasPayload<UpdateGatewayResponseRequestPayload> {
  /// Updates a GatewayResponse of a specified response type on the given RestApi.
  factory UpdateGatewayResponseRequest({
    List<_i3.PatchOperation>? patchOperations,
    required _i4.GatewayResponseType responseType,
    required String restApiId,
  }) {
    return _$UpdateGatewayResponseRequest._(
      patchOperations:
          patchOperations == null ? null : _i5.BuiltList(patchOperations),
      responseType: responseType,
      restApiId: restApiId,
    );
  }

  /// Updates a GatewayResponse of a specified response type on the given RestApi.
  factory UpdateGatewayResponseRequest.build(
          [void Function(UpdateGatewayResponseRequestBuilder) updates]) =
      _$UpdateGatewayResponseRequest;

  const UpdateGatewayResponseRequest._();

  factory UpdateGatewayResponseRequest.fromRequest(
    UpdateGatewayResponseRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateGatewayResponseRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['responseType'] != null) {
          b.responseType =
              _i4.GatewayResponseType.values.byValue(labels['responseType']!);
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    UpdateGatewayResponseRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateGatewayResponseRequestBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i5.BuiltList<_i3.PatchOperation>? get patchOperations;

  /// The response type of the associated GatewayResponse.
  _i4.GatewayResponseType get responseType;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'responseType':
        return responseType.value;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  UpdateGatewayResponseRequestPayload getPayload() =>
      UpdateGatewayResponseRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        patchOperations,
        responseType,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateGatewayResponseRequest');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    helper.add(
      'responseType',
      responseType,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i6.internal
abstract class UpdateGatewayResponseRequestPayload
    with
        _i2.AWSEquatable<UpdateGatewayResponseRequestPayload>
    implements
        Built<UpdateGatewayResponseRequestPayload,
            UpdateGatewayResponseRequestPayloadBuilder> {
  factory UpdateGatewayResponseRequestPayload(
          [void Function(UpdateGatewayResponseRequestPayloadBuilder) updates]) =
      _$UpdateGatewayResponseRequestPayload;

  const UpdateGatewayResponseRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateGatewayResponseRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i5.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateGatewayResponseRequestPayload');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

class UpdateGatewayResponseRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<UpdateGatewayResponseRequestPayload> {
  const UpdateGatewayResponseRequestRestJson1Serializer()
      : super('UpdateGatewayResponseRequest');

  @override
  Iterable<Type> get types => const [
        UpdateGatewayResponseRequest,
        _$UpdateGatewayResponseRequest,
        UpdateGatewayResponseRequestPayload,
        _$UpdateGatewayResponseRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateGatewayResponseRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateGatewayResponseRequestPayloadBuilder();
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
                _i5.BuiltList,
                [FullType(_i3.PatchOperation)],
              ),
            ) as _i5.BuiltList<_i3.PatchOperation>));
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
    final payload = object is UpdateGatewayResponseRequest
        ? object.getPayload()
        : (object as UpdateGatewayResponseRequestPayload);
    final result = <Object?>[];
    if (payload.patchOperations != null) {
      result
        ..add('patchOperations')
        ..add(serializers.serialize(
          payload.patchOperations!,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i3.PatchOperation)],
          ),
        ));
    }
    return result;
  }
}
