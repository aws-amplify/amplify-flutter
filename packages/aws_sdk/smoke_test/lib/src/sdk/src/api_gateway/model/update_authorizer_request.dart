// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.update_authorizer_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_authorizer_request.g.dart';

/// Request to update an existing Authorizer resource.
abstract class UpdateAuthorizerRequest
    with
        _i1.HttpInput<UpdateAuthorizerRequestPayload>,
        _i2.AWSEquatable<UpdateAuthorizerRequest>
    implements
        Built<UpdateAuthorizerRequest, UpdateAuthorizerRequestBuilder>,
        _i1.HasPayload<UpdateAuthorizerRequestPayload> {
  /// Request to update an existing Authorizer resource.
  factory UpdateAuthorizerRequest({
    required String authorizerId,
    List<_i3.PatchOperation>? patchOperations,
    required String restApiId,
  }) {
    return _$UpdateAuthorizerRequest._(
      authorizerId: authorizerId,
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
      restApiId: restApiId,
    );
  }

  /// Request to update an existing Authorizer resource.
  factory UpdateAuthorizerRequest.build(
          [void Function(UpdateAuthorizerRequestBuilder) updates]) =
      _$UpdateAuthorizerRequest;

  const UpdateAuthorizerRequest._();

  factory UpdateAuthorizerRequest.fromRequest(
    UpdateAuthorizerRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateAuthorizerRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['authorizerId'] != null) {
          b.authorizerId = labels['authorizerId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    UpdateAuthorizerRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateAuthorizerRequestBuilder b) {}

  /// The identifier of the Authorizer resource.
  String get authorizerId;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'authorizerId':
        return authorizerId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  UpdateAuthorizerRequestPayload getPayload() =>
      UpdateAuthorizerRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        authorizerId,
        patchOperations,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateAuthorizerRequest');
    helper.add(
      'authorizerId',
      authorizerId,
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
abstract class UpdateAuthorizerRequestPayload
    with
        _i2.AWSEquatable<UpdateAuthorizerRequestPayload>
    implements
        Built<UpdateAuthorizerRequestPayload,
            UpdateAuthorizerRequestPayloadBuilder> {
  factory UpdateAuthorizerRequestPayload(
          [void Function(UpdateAuthorizerRequestPayloadBuilder) updates]) =
      _$UpdateAuthorizerRequestPayload;

  const UpdateAuthorizerRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateAuthorizerRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateAuthorizerRequestPayload');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

class UpdateAuthorizerRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UpdateAuthorizerRequestPayload> {
  const UpdateAuthorizerRequestRestJson1Serializer()
      : super('UpdateAuthorizerRequest');

  @override
  Iterable<Type> get types => const [
        UpdateAuthorizerRequest,
        _$UpdateAuthorizerRequest,
        UpdateAuthorizerRequestPayload,
        _$UpdateAuthorizerRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateAuthorizerRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAuthorizerRequestPayloadBuilder();
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
    final payload = object is UpdateAuthorizerRequest
        ? object.getPayload()
        : (object as UpdateAuthorizerRequestPayload);
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
