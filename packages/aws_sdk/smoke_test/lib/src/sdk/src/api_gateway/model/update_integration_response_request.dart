// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.update_integration_response_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_integration_response_request.g.dart';

/// Represents an update integration response request.
abstract class UpdateIntegrationResponseRequest
    with
        _i1.HttpInput<UpdateIntegrationResponseRequestPayload>,
        _i2.AWSEquatable<UpdateIntegrationResponseRequest>
    implements
        Built<UpdateIntegrationResponseRequest,
            UpdateIntegrationResponseRequestBuilder>,
        _i1.HasPayload<UpdateIntegrationResponseRequestPayload> {
  /// Represents an update integration response request.
  factory UpdateIntegrationResponseRequest({
    required String restApiId,
    required String resourceId,
    required String httpMethod,
    required String statusCode,
    List<_i3.PatchOperation>? patchOperations,
  }) {
    return _$UpdateIntegrationResponseRequest._(
      restApiId: restApiId,
      resourceId: resourceId,
      httpMethod: httpMethod,
      statusCode: statusCode,
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
    );
  }

  /// Represents an update integration response request.
  factory UpdateIntegrationResponseRequest.build(
          [void Function(UpdateIntegrationResponseRequestBuilder) updates]) =
      _$UpdateIntegrationResponseRequest;

  const UpdateIntegrationResponseRequest._();

  factory UpdateIntegrationResponseRequest.fromRequest(
    UpdateIntegrationResponseRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateIntegrationResponseRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['resourceId'] != null) {
          b.resourceId = labels['resourceId']!;
        }
        if (labels['httpMethod'] != null) {
          b.httpMethod = labels['httpMethod']!;
        }
        if (labels['statusCode'] != null) {
          b.statusCode = labels['statusCode']!;
        }
      });

  static const List<
          _i1.SmithySerializer<UpdateIntegrationResponseRequestPayload>>
      serializers = [UpdateIntegrationResponseRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateIntegrationResponseRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// Specifies an update integration response request's resource identifier.
  String get resourceId;

  /// Specifies an update integration response request's HTTP method.
  String get httpMethod;

  /// Specifies an update integration response request's status code.
  String get statusCode;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'resourceId':
        return resourceId;
      case 'httpMethod':
        return httpMethod;
      case 'statusCode':
        return statusCode;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  UpdateIntegrationResponseRequestPayload getPayload() =>
      UpdateIntegrationResponseRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        restApiId,
        resourceId,
        httpMethod,
        statusCode,
        patchOperations,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateIntegrationResponseRequest')
          ..add(
            'restApiId',
            restApiId,
          )
          ..add(
            'resourceId',
            resourceId,
          )
          ..add(
            'httpMethod',
            httpMethod,
          )
          ..add(
            'statusCode',
            statusCode,
          )
          ..add(
            'patchOperations',
            patchOperations,
          );
    return helper.toString();
  }
}

@_i5.internal
abstract class UpdateIntegrationResponseRequestPayload
    with
        _i2.AWSEquatable<UpdateIntegrationResponseRequestPayload>
    implements
        Built<UpdateIntegrationResponseRequestPayload,
            UpdateIntegrationResponseRequestPayloadBuilder> {
  factory UpdateIntegrationResponseRequestPayload(
      [void Function(UpdateIntegrationResponseRequestPayloadBuilder)
          updates]) = _$UpdateIntegrationResponseRequestPayload;

  const UpdateIntegrationResponseRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateIntegrationResponseRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateIntegrationResponseRequestPayload')
          ..add(
            'patchOperations',
            patchOperations,
          );
    return helper.toString();
  }
}

class UpdateIntegrationResponseRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<UpdateIntegrationResponseRequestPayload> {
  const UpdateIntegrationResponseRequestRestJson1Serializer()
      : super('UpdateIntegrationResponseRequest');

  @override
  Iterable<Type> get types => const [
        UpdateIntegrationResponseRequest,
        _$UpdateIntegrationResponseRequest,
        UpdateIntegrationResponseRequestPayload,
        _$UpdateIntegrationResponseRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateIntegrationResponseRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateIntegrationResponseRequestPayloadBuilder();
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
    UpdateIntegrationResponseRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateIntegrationResponseRequestPayload(:patchOperations) = object;
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
