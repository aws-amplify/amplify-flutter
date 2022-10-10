// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.update_method_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_method_request.g.dart';

/// Request to update an existing Method resource.
abstract class UpdateMethodRequest
    with
        _i1.HttpInput<UpdateMethodRequestPayload>,
        _i2.AWSEquatable<UpdateMethodRequest>
    implements
        Built<UpdateMethodRequest, UpdateMethodRequestBuilder>,
        _i1.HasPayload<UpdateMethodRequestPayload> {
  /// Request to update an existing Method resource.
  factory UpdateMethodRequest({
    required String httpMethod,
    List<_i3.PatchOperation>? patchOperations,
    required String resourceId,
    required String restApiId,
  }) {
    return _$UpdateMethodRequest._(
      httpMethod: httpMethod,
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
      resourceId: resourceId,
      restApiId: restApiId,
    );
  }

  /// Request to update an existing Method resource.
  factory UpdateMethodRequest.build(
          [void Function(UpdateMethodRequestBuilder) updates]) =
      _$UpdateMethodRequest;

  const UpdateMethodRequest._();

  factory UpdateMethodRequest.fromRequest(
    UpdateMethodRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateMethodRequest.build((b) {
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
    UpdateMethodRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateMethodRequestBuilder b) {}

  /// The HTTP verb of the Method resource.
  String get httpMethod;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;

  /// The Resource identifier for the Method resource.
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
  UpdateMethodRequestPayload getPayload() => UpdateMethodRequestPayload((b) {
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
    final helper = newBuiltValueToStringHelper('UpdateMethodRequest');
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
abstract class UpdateMethodRequestPayload
    with _i2.AWSEquatable<UpdateMethodRequestPayload>
    implements
        Built<UpdateMethodRequestPayload, UpdateMethodRequestPayloadBuilder> {
  factory UpdateMethodRequestPayload(
          [void Function(UpdateMethodRequestPayloadBuilder) updates]) =
      _$UpdateMethodRequestPayload;

  const UpdateMethodRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateMethodRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateMethodRequestPayload');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

class UpdateMethodRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UpdateMethodRequestPayload> {
  const UpdateMethodRequestRestJson1Serializer() : super('UpdateMethodRequest');

  @override
  Iterable<Type> get types => const [
        UpdateMethodRequest,
        _$UpdateMethodRequest,
        UpdateMethodRequestPayload,
        _$UpdateMethodRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateMethodRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateMethodRequestPayloadBuilder();
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
    final payload = object is UpdateMethodRequest
        ? object.getPayload()
        : (object as UpdateMethodRequestPayload);
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
