// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.update_api_key_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_api_key_request.g.dart';

/// A request to change information about an ApiKey resource.
abstract class UpdateApiKeyRequest
    with
        _i1.HttpInput<UpdateApiKeyRequestPayload>,
        _i2.AWSEquatable<UpdateApiKeyRequest>
    implements
        Built<UpdateApiKeyRequest, UpdateApiKeyRequestBuilder>,
        _i1.HasPayload<UpdateApiKeyRequestPayload> {
  /// A request to change information about an ApiKey resource.
  factory UpdateApiKeyRequest({
    required String apiKey,
    List<_i3.PatchOperation>? patchOperations,
  }) {
    return _$UpdateApiKeyRequest._(
      apiKey: apiKey,
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
    );
  }

  /// A request to change information about an ApiKey resource.
  factory UpdateApiKeyRequest.build(
          [void Function(UpdateApiKeyRequestBuilder) updates]) =
      _$UpdateApiKeyRequest;

  const UpdateApiKeyRequest._();

  factory UpdateApiKeyRequest.fromRequest(
    UpdateApiKeyRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateApiKeyRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['apiKey'] != null) {
          b.apiKey = labels['apiKey']!;
        }
      });

  static const List<_i1.SmithySerializer<UpdateApiKeyRequestPayload>>
      serializers = [UpdateApiKeyRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateApiKeyRequestBuilder b) {}

  /// The identifier of the ApiKey resource to be updated.
  String get apiKey;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'apiKey':
        return apiKey;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  UpdateApiKeyRequestPayload getPayload() => UpdateApiKeyRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        apiKey,
        patchOperations,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateApiKeyRequest')
      ..add(
        'apiKey',
        apiKey,
      )
      ..add(
        'patchOperations',
        patchOperations,
      );
    return helper.toString();
  }
}

@_i5.internal
abstract class UpdateApiKeyRequestPayload
    with _i2.AWSEquatable<UpdateApiKeyRequestPayload>
    implements
        Built<UpdateApiKeyRequestPayload, UpdateApiKeyRequestPayloadBuilder> {
  factory UpdateApiKeyRequestPayload(
          [void Function(UpdateApiKeyRequestPayloadBuilder) updates]) =
      _$UpdateApiKeyRequestPayload;

  const UpdateApiKeyRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateApiKeyRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateApiKeyRequestPayload')
      ..add(
        'patchOperations',
        patchOperations,
      );
    return helper.toString();
  }
}

class UpdateApiKeyRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<UpdateApiKeyRequestPayload> {
  const UpdateApiKeyRequestRestJson1Serializer() : super('UpdateApiKeyRequest');

  @override
  Iterable<Type> get types => const [
        UpdateApiKeyRequest,
        _$UpdateApiKeyRequest,
        UpdateApiKeyRequestPayload,
        _$UpdateApiKeyRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateApiKeyRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateApiKeyRequestPayloadBuilder();
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
    UpdateApiKeyRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateApiKeyRequestPayload(:patchOperations) = object;
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
