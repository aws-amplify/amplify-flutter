// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.delete_documentation_part_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_documentation_part_request.g.dart';

/// Deletes an existing documentation part of an API.
abstract class DeleteDocumentationPartRequest
    with
        _i1.HttpInput<DeleteDocumentationPartRequestPayload>,
        _i2.AWSEquatable<DeleteDocumentationPartRequest>
    implements
        Built<DeleteDocumentationPartRequest,
            DeleteDocumentationPartRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteDocumentationPartRequestPayload> {
  /// Deletes an existing documentation part of an API.
  factory DeleteDocumentationPartRequest({
    required String restApiId,
    required String documentationPartId,
  }) {
    return _$DeleteDocumentationPartRequest._(
      restApiId: restApiId,
      documentationPartId: documentationPartId,
    );
  }

  /// Deletes an existing documentation part of an API.
  factory DeleteDocumentationPartRequest.build(
          [void Function(DeleteDocumentationPartRequestBuilder) updates]) =
      _$DeleteDocumentationPartRequest;

  const DeleteDocumentationPartRequest._();

  factory DeleteDocumentationPartRequest.fromRequest(
    DeleteDocumentationPartRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteDocumentationPartRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['documentationPartId'] != null) {
          b.documentationPartId = labels['documentationPartId']!;
        }
      });

  static const List<_i1.SmithySerializer<DeleteDocumentationPartRequestPayload>>
      serializers = [DeleteDocumentationPartRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteDocumentationPartRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The identifier of the to-be-deleted documentation part.
  String get documentationPartId;
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
  DeleteDocumentationPartRequestPayload getPayload() =>
      DeleteDocumentationPartRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        documentationPartId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteDocumentationPartRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'documentationPartId',
        documentationPartId,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteDocumentationPartRequestPayload
    with
        _i2.AWSEquatable<DeleteDocumentationPartRequestPayload>
    implements
        Built<DeleteDocumentationPartRequestPayload,
            DeleteDocumentationPartRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteDocumentationPartRequestPayload(
      [void Function(DeleteDocumentationPartRequestPayloadBuilder)
          updates]) = _$DeleteDocumentationPartRequestPayload;

  const DeleteDocumentationPartRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteDocumentationPartRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteDocumentationPartRequestPayload');
    return helper.toString();
  }
}

class DeleteDocumentationPartRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<DeleteDocumentationPartRequestPayload> {
  const DeleteDocumentationPartRequestRestJson1Serializer()
      : super('DeleteDocumentationPartRequest');

  @override
  Iterable<Type> get types => const [
        DeleteDocumentationPartRequest,
        _$DeleteDocumentationPartRequest,
        DeleteDocumentationPartRequestPayload,
        _$DeleteDocumentationPartRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteDocumentationPartRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteDocumentationPartRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteDocumentationPartRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
