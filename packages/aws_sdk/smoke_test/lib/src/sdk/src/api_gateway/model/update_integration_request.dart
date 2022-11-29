// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.update_integration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_integration_request.g.dart';

/// Represents an update integration request.
abstract class UpdateIntegrationRequest
    with
        _i1.HttpInput<UpdateIntegrationRequestPayload>,
        _i2.AWSEquatable<UpdateIntegrationRequest>
    implements
        Built<UpdateIntegrationRequest, UpdateIntegrationRequestBuilder>,
        _i1.HasPayload<UpdateIntegrationRequestPayload> {
  /// Represents an update integration request.
  factory UpdateIntegrationRequest({
    required String httpMethod,
    List<_i3.PatchOperation>? patchOperations,
    required String resourceId,
    required String restApiId,
  }) {
    return _$UpdateIntegrationRequest._(
      httpMethod: httpMethod,
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
      resourceId: resourceId,
      restApiId: restApiId,
    );
  }

  /// Represents an update integration request.
  factory UpdateIntegrationRequest.build(
          [void Function(UpdateIntegrationRequestBuilder) updates]) =
      _$UpdateIntegrationRequest;

  const UpdateIntegrationRequest._();

  factory UpdateIntegrationRequest.fromRequest(
    UpdateIntegrationRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateIntegrationRequest.build((b) {
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
      });

  static const List<_i1.SmithySerializer> serializers = [
    UpdateIntegrationRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateIntegrationRequestBuilder b) {}

  /// Represents an update integration request's HTTP method.
  String get httpMethod;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;

  /// Represents an update integration request's resource identifier.
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
      case 'httpMethod':
        return httpMethod;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  UpdateIntegrationRequestPayload getPayload() =>
      UpdateIntegrationRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        httpMethod,
        patchOperations,
        resourceId,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateIntegrationRequest');
    helper.add(
      'httpMethod',
      httpMethod,
    );
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
abstract class UpdateIntegrationRequestPayload
    with
        _i2.AWSEquatable<UpdateIntegrationRequestPayload>
    implements
        Built<UpdateIntegrationRequestPayload,
            UpdateIntegrationRequestPayloadBuilder> {
  factory UpdateIntegrationRequestPayload(
          [void Function(UpdateIntegrationRequestPayloadBuilder) updates]) =
      _$UpdateIntegrationRequestPayload;

  const UpdateIntegrationRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateIntegrationRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateIntegrationRequestPayload');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

class UpdateIntegrationRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UpdateIntegrationRequestPayload> {
  const UpdateIntegrationRequestRestJson1Serializer()
      : super('UpdateIntegrationRequest');

  @override
  Iterable<Type> get types => const [
        UpdateIntegrationRequest,
        _$UpdateIntegrationRequest,
        UpdateIntegrationRequestPayload,
        _$UpdateIntegrationRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateIntegrationRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateIntegrationRequestPayloadBuilder();
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
    final payload = object is UpdateIntegrationRequest
        ? object.getPayload()
        : (object as UpdateIntegrationRequestPayload);
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
