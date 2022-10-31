// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.update_method_response_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_method_response_request.g.dart';

/// A request to update an existing MethodResponse resource.
abstract class UpdateMethodResponseRequest
    with
        _i1.HttpInput<UpdateMethodResponseRequestPayload>,
        _i2.AWSEquatable<UpdateMethodResponseRequest>
    implements
        Built<UpdateMethodResponseRequest, UpdateMethodResponseRequestBuilder>,
        _i1.HasPayload<UpdateMethodResponseRequestPayload> {
  /// A request to update an existing MethodResponse resource.
  factory UpdateMethodResponseRequest({
    required String httpMethod,
    List<_i3.PatchOperation>? patchOperations,
    required String resourceId,
    required String restApiId,
    required String statusCode,
  }) {
    return _$UpdateMethodResponseRequest._(
      httpMethod: httpMethod,
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
      resourceId: resourceId,
      restApiId: restApiId,
      statusCode: statusCode,
    );
  }

  /// A request to update an existing MethodResponse resource.
  factory UpdateMethodResponseRequest.build(
          [void Function(UpdateMethodResponseRequestBuilder) updates]) =
      _$UpdateMethodResponseRequest;

  const UpdateMethodResponseRequest._();

  factory UpdateMethodResponseRequest.fromRequest(
    UpdateMethodResponseRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateMethodResponseRequest.build((b) {
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

  static const List<_i1.SmithySerializer> serializers = [
    UpdateMethodResponseRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateMethodResponseRequestBuilder b) {}

  /// The HTTP verb of the Method resource.
  String get httpMethod;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;

  /// The Resource identifier for the MethodResponse resource.
  String get resourceId;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The status code for the MethodResponse resource.
  String get statusCode;
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
  UpdateMethodResponseRequestPayload getPayload() =>
      UpdateMethodResponseRequestPayload((b) {
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
        statusCode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateMethodResponseRequest');
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
    helper.add(
      'statusCode',
      statusCode,
    );
    return helper.toString();
  }
}

@_i5.internal
abstract class UpdateMethodResponseRequestPayload
    with
        _i2.AWSEquatable<UpdateMethodResponseRequestPayload>
    implements
        Built<UpdateMethodResponseRequestPayload,
            UpdateMethodResponseRequestPayloadBuilder> {
  factory UpdateMethodResponseRequestPayload(
          [void Function(UpdateMethodResponseRequestPayloadBuilder) updates]) =
      _$UpdateMethodResponseRequestPayload;

  const UpdateMethodResponseRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateMethodResponseRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateMethodResponseRequestPayload');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

class UpdateMethodResponseRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UpdateMethodResponseRequestPayload> {
  const UpdateMethodResponseRequestRestJson1Serializer()
      : super('UpdateMethodResponseRequest');

  @override
  Iterable<Type> get types => const [
        UpdateMethodResponseRequest,
        _$UpdateMethodResponseRequest,
        UpdateMethodResponseRequestPayload,
        _$UpdateMethodResponseRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateMethodResponseRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateMethodResponseRequestPayloadBuilder();
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
    final payload = object is UpdateMethodResponseRequest
        ? object.getPayload()
        : (object as UpdateMethodResponseRequestPayload);
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
