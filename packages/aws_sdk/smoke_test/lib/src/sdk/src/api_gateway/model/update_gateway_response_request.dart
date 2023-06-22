// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.update_gateway_response_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/gateway_response_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i4;

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
    required String restApiId,
    required _i3.GatewayResponseType responseType,
    List<_i4.PatchOperation>? patchOperations,
  }) {
    return _$UpdateGatewayResponseRequest._(
      restApiId: restApiId,
      responseType: responseType,
      patchOperations:
          patchOperations == null ? null : _i5.BuiltList(patchOperations),
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
              _i3.GatewayResponseType.values.byValue(labels['responseType']!);
        }
      });

  static const List<_i1.SmithySerializer<UpdateGatewayResponseRequestPayload>>
      serializers = [UpdateGatewayResponseRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateGatewayResponseRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The response type of the associated GatewayResponse.
  _i3.GatewayResponseType get responseType;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i5.BuiltList<_i4.PatchOperation>? get patchOperations;
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
        restApiId,
        responseType,
        patchOperations,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateGatewayResponseRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'responseType',
        responseType,
      )
      ..add(
        'patchOperations',
        patchOperations,
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
  _i5.BuiltList<_i4.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateGatewayResponseRequestPayload')
          ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'patchOperations':
          result.patchOperations.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.PatchOperation)],
            ),
          ) as _i5.BuiltList<_i4.PatchOperation>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateGatewayResponseRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateGatewayResponseRequestPayload(:patchOperations) = object;
    if (patchOperations != null) {
      result$
        ..add('patchOperations')
        ..add(serializers.serialize(
          patchOperations,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i4.PatchOperation)],
          ),
        ));
    }
    return result$;
  }
}
