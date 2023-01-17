// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.update_documentation_part_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/patch_operation.dart'
    as _i3;

part 'update_documentation_part_request.g.dart';

/// Updates an existing documentation part of a given API.
abstract class UpdateDocumentationPartRequest
    with
        _i1.HttpInput<UpdateDocumentationPartRequestPayload>,
        _i2.AWSEquatable<UpdateDocumentationPartRequest>
    implements
        Built<UpdateDocumentationPartRequest,
            UpdateDocumentationPartRequestBuilder>,
        _i1.HasPayload<UpdateDocumentationPartRequestPayload> {
  /// Updates an existing documentation part of a given API.
  factory UpdateDocumentationPartRequest({
    required String documentationPartId,
    List<_i3.PatchOperation>? patchOperations,
    required String restApiId,
  }) {
    return _$UpdateDocumentationPartRequest._(
      documentationPartId: documentationPartId,
      patchOperations:
          patchOperations == null ? null : _i4.BuiltList(patchOperations),
      restApiId: restApiId,
    );
  }

  /// Updates an existing documentation part of a given API.
  factory UpdateDocumentationPartRequest.build(
          [void Function(UpdateDocumentationPartRequestBuilder) updates]) =
      _$UpdateDocumentationPartRequest;

  const UpdateDocumentationPartRequest._();

  factory UpdateDocumentationPartRequest.fromRequest(
    UpdateDocumentationPartRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      UpdateDocumentationPartRequest.build((b) {
        if (payload.patchOperations != null) {
          b.patchOperations.replace(payload.patchOperations!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['documentationPartId'] != null) {
          b.documentationPartId = labels['documentationPartId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    UpdateDocumentationPartRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateDocumentationPartRequestBuilder b) {}

  /// The identifier of the to-be-updated documentation part.
  String get documentationPartId;

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'documentationPartId':
        return documentationPartId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  UpdateDocumentationPartRequestPayload getPayload() =>
      UpdateDocumentationPartRequestPayload((b) {
        if (patchOperations != null) {
          b.patchOperations.replace(patchOperations!);
        }
      });
  @override
  List<Object?> get props => [
        documentationPartId,
        patchOperations,
        restApiId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateDocumentationPartRequest');
    helper.add(
      'documentationPartId',
      documentationPartId,
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
abstract class UpdateDocumentationPartRequestPayload
    with
        _i2.AWSEquatable<UpdateDocumentationPartRequestPayload>
    implements
        Built<UpdateDocumentationPartRequestPayload,
            UpdateDocumentationPartRequestPayloadBuilder> {
  factory UpdateDocumentationPartRequestPayload(
      [void Function(UpdateDocumentationPartRequestPayloadBuilder)
          updates]) = _$UpdateDocumentationPartRequestPayload;

  const UpdateDocumentationPartRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateDocumentationPartRequestPayloadBuilder b) {}

  /// For more information about supported patch operations, see [Patch Operations](https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).
  _i4.BuiltList<_i3.PatchOperation>? get patchOperations;
  @override
  List<Object?> get props => [patchOperations];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateDocumentationPartRequestPayload');
    helper.add(
      'patchOperations',
      patchOperations,
    );
    return helper.toString();
  }
}

class UpdateDocumentationPartRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<UpdateDocumentationPartRequestPayload> {
  const UpdateDocumentationPartRequestRestJson1Serializer()
      : super('UpdateDocumentationPartRequest');

  @override
  Iterable<Type> get types => const [
        UpdateDocumentationPartRequest,
        _$UpdateDocumentationPartRequest,
        UpdateDocumentationPartRequestPayload,
        _$UpdateDocumentationPartRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UpdateDocumentationPartRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateDocumentationPartRequestPayloadBuilder();
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
    final payload = object is UpdateDocumentationPartRequest
        ? object.getPayload()
        : (object as UpdateDocumentationPartRequestPayload);
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
