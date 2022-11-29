// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.update_deployment_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_deployment_request.g.dart';

/// Requests API Gateway to change information about a Deployment resource.
abstract class UpdateDeploymentRequest
    with
        _i1.HttpInput<UpdateDeploymentRequestPayload>,
        _i2.AWSEquatable<UpdateDeploymentRequest>
    implements
        Built<UpdateDeploymentRequest, UpdateDeploymentRequestBuilder>,
        _i1.HasPayload<UpdateDeploymentRequestPayload> {
  /// Requests API Gateway to change information about a Deployment resource.
  factory UpdateDeploymentRequest({
    required String deploymentId,
    List<_i3.PatchOperation>? patchOperations,
    required String restApiId,
  }) {
    return _$UpdateDeploymentRequest._(
      deploymentId: deploymentId,
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
      restApiId: restApiId,
    );
  }

  /// Requests API Gateway to change information about a Deployment resource.
  factory UpdateDeploymentRequest.build(
          [void Function(UpdateDeploymentRequestBuilder) updates]) =
      _$UpdateDeploymentRequest;

  const UpdateDeploymentRequest._();

  factory UpdateDeploymentRequest.fromRequest(
    UpdateDeploymentRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateDeploymentRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['deploymentId'] != null) {
          b.deploymentId = labels['deploymentId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    UpdateDeploymentRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateDeploymentRequestBuilder b) {}

  /// The replacement identifier for the Deployment resource to change information about.
  String get deploymentId;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'deploymentId':
        return deploymentId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  UpdateDeploymentRequestPayload getPayload() =>
      UpdateDeploymentRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        deploymentId,
        patchOperations,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateDeploymentRequest');
    helper.add(
      'deploymentId',
      deploymentId,
    );
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
abstract class UpdateDeploymentRequestPayload
    with
        _i2.AWSEquatable<UpdateDeploymentRequestPayload>
    implements
        Built<UpdateDeploymentRequestPayload,
            UpdateDeploymentRequestPayloadBuilder> {
  factory UpdateDeploymentRequestPayload(
          [void Function(UpdateDeploymentRequestPayloadBuilder) updates]) =
      _$UpdateDeploymentRequestPayload;

  const UpdateDeploymentRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateDeploymentRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateDeploymentRequestPayload');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

class UpdateDeploymentRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UpdateDeploymentRequestPayload> {
  const UpdateDeploymentRequestRestJson1Serializer()
      : super('UpdateDeploymentRequest');

  @override
  Iterable<Type> get types => const [
        UpdateDeploymentRequest,
        _$UpdateDeploymentRequest,
        UpdateDeploymentRequestPayload,
        _$UpdateDeploymentRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateDeploymentRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateDeploymentRequestPayloadBuilder();
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
    final payload = object is UpdateDeploymentRequest
        ? object.getPayload()
        : (object as UpdateDeploymentRequestPayload);
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
