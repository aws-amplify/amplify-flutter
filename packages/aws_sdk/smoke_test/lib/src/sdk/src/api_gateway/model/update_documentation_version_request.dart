// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.update_documentation_version_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_documentation_version_request.g.dart';

/// Updates an existing documentation version of an API.
abstract class UpdateDocumentationVersionRequest
    with
        _i1.HttpInput<UpdateDocumentationVersionRequestPayload>,
        _i2.AWSEquatable<UpdateDocumentationVersionRequest>
    implements
        Built<UpdateDocumentationVersionRequest,
            UpdateDocumentationVersionRequestBuilder>,
        _i1.HasPayload<UpdateDocumentationVersionRequestPayload> {
  /// Updates an existing documentation version of an API.
  factory UpdateDocumentationVersionRequest({
    required String restApiId,
    required String documentationVersion,
    List<_i3.PatchOperation>? patchOperations,
  }) {
    return _$UpdateDocumentationVersionRequest._(
      restApiId: restApiId,
      documentationVersion: documentationVersion,
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
    );
  }

  /// Updates an existing documentation version of an API.
  factory UpdateDocumentationVersionRequest.build(
          [void Function(UpdateDocumentationVersionRequestBuilder) updates]) =
      _$UpdateDocumentationVersionRequest;

  const UpdateDocumentationVersionRequest._();

  factory UpdateDocumentationVersionRequest.fromRequest(
    UpdateDocumentationVersionRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateDocumentationVersionRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['documentationVersion'] != null) {
          b.documentationVersion = labels['documentationVersion']!;
        }
      });

  static const List<
          _i1.SmithySerializer<UpdateDocumentationVersionRequestPayload>>
      serializers = [UpdateDocumentationVersionRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateDocumentationVersionRequestBuilder b) {}

  /// The string identifier of the associated RestApi..
  String get restApiId;

  /// The version identifier of the to-be-updated documentation version.
  String get documentationVersion;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'documentationVersion':
        return documentationVersion;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  UpdateDocumentationVersionRequestPayload getPayload() =>
      UpdateDocumentationVersionRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        restApiId,
        documentationVersion,
        patchOperations,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateDocumentationVersionRequest')
          ..add(
            'restApiId',
            restApiId,
          )
          ..add(
            'documentationVersion',
            documentationVersion,
          )
          ..add(
            'patchOperations',
            patchOperations,
          );
    return helper.toString();
  }
}

@_i5.internal
abstract class UpdateDocumentationVersionRequestPayload
    with
        _i2.AWSEquatable<UpdateDocumentationVersionRequestPayload>
    implements
        Built<UpdateDocumentationVersionRequestPayload,
            UpdateDocumentationVersionRequestPayloadBuilder> {
  factory UpdateDocumentationVersionRequestPayload(
      [void Function(UpdateDocumentationVersionRequestPayloadBuilder)
          updates]) = _$UpdateDocumentationVersionRequestPayload;

  const UpdateDocumentationVersionRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateDocumentationVersionRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateDocumentationVersionRequestPayload')
          ..add(
            'patchOperations',
            patchOperations,
          );
    return helper.toString();
  }
}

class UpdateDocumentationVersionRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<UpdateDocumentationVersionRequestPayload> {
  const UpdateDocumentationVersionRequestRestJson1Serializer()
      : super('UpdateDocumentationVersionRequest');

  @override
  Iterable<Type> get types => const [
        UpdateDocumentationVersionRequest,
        _$UpdateDocumentationVersionRequest,
        UpdateDocumentationVersionRequestPayload,
        _$UpdateDocumentationVersionRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateDocumentationVersionRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateDocumentationVersionRequestPayloadBuilder();
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
    UpdateDocumentationVersionRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateDocumentationVersionRequestPayload(:patchOperations) = object;
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
