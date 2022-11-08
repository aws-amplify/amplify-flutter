// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_documentation_part_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_documentation_part_request.g.dart';

/// Gets a specified documentation part of a given API.
abstract class GetDocumentationPartRequest
    with
        _i1.HttpInput<GetDocumentationPartRequestPayload>,
        _i2.AWSEquatable<GetDocumentationPartRequest>
    implements
        Built<GetDocumentationPartRequest, GetDocumentationPartRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetDocumentationPartRequestPayload> {
  /// Gets a specified documentation part of a given API.
  factory GetDocumentationPartRequest({
    required String documentationPartId,
    required String restApiId,
  }) {
    return _$GetDocumentationPartRequest._(
      documentationPartId: documentationPartId,
      restApiId: restApiId,
    );
  }

  /// Gets a specified documentation part of a given API.
  factory GetDocumentationPartRequest.build(
          [void Function(GetDocumentationPartRequestBuilder) updates]) =
      _$GetDocumentationPartRequest;

  const GetDocumentationPartRequest._();

  factory GetDocumentationPartRequest.fromRequest(
    GetDocumentationPartRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetDocumentationPartRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['documentationPartId'] != null) {
          b.documentationPartId = labels['documentationPartId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetDocumentationPartRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDocumentationPartRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get documentationPartId;

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
  GetDocumentationPartRequestPayload getPayload() =>
      GetDocumentationPartRequestPayload();
  @override
  List<Object?> get props => [
        documentationPartId,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDocumentationPartRequest');
    helper.add(
      'documentationPartId',
      documentationPartId,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetDocumentationPartRequestPayload
    with
        _i2.AWSEquatable<GetDocumentationPartRequestPayload>
    implements
        Built<GetDocumentationPartRequestPayload,
            GetDocumentationPartRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetDocumentationPartRequestPayload(
          [void Function(GetDocumentationPartRequestPayloadBuilder) updates]) =
      _$GetDocumentationPartRequestPayload;

  const GetDocumentationPartRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDocumentationPartRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetDocumentationPartRequestPayload');
    return helper.toString();
  }
}

class GetDocumentationPartRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetDocumentationPartRequestPayload> {
  const GetDocumentationPartRequestRestJson1Serializer()
      : super('GetDocumentationPartRequest');

  @override
  Iterable<Type> get types => const [
        GetDocumentationPartRequest,
        _$GetDocumentationPartRequest,
        GetDocumentationPartRequestPayload,
        _$GetDocumentationPartRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetDocumentationPartRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetDocumentationPartRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
