// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_documentation_version_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_documentation_version_request.g.dart';

/// Gets a documentation snapshot of an API.
abstract class GetDocumentationVersionRequest
    with
        _i1.HttpInput<GetDocumentationVersionRequestPayload>,
        _i2.AWSEquatable<GetDocumentationVersionRequest>
    implements
        Built<GetDocumentationVersionRequest,
            GetDocumentationVersionRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetDocumentationVersionRequestPayload> {
  /// Gets a documentation snapshot of an API.
  factory GetDocumentationVersionRequest({
    required String restApiId,
    required String documentationVersion,
  }) {
    return _$GetDocumentationVersionRequest._(
      restApiId: restApiId,
      documentationVersion: documentationVersion,
    );
  }

  /// Gets a documentation snapshot of an API.
  factory GetDocumentationVersionRequest.build(
          [void Function(GetDocumentationVersionRequestBuilder) updates]) =
      _$GetDocumentationVersionRequest;

  const GetDocumentationVersionRequest._();

  factory GetDocumentationVersionRequest.fromRequest(
    GetDocumentationVersionRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetDocumentationVersionRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['documentationVersion'] != null) {
          b.documentationVersion = labels['documentationVersion']!;
        }
      });

  static const List<_i1.SmithySerializer<GetDocumentationVersionRequestPayload>>
      serializers = [GetDocumentationVersionRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDocumentationVersionRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The version identifier of the to-be-retrieved documentation snapshot.
  String get documentationVersion;
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
  GetDocumentationVersionRequestPayload getPayload() =>
      GetDocumentationVersionRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        documentationVersion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDocumentationVersionRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'documentationVersion',
        documentationVersion,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetDocumentationVersionRequestPayload
    with
        _i2.AWSEquatable<GetDocumentationVersionRequestPayload>
    implements
        Built<GetDocumentationVersionRequestPayload,
            GetDocumentationVersionRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetDocumentationVersionRequestPayload(
      [void Function(GetDocumentationVersionRequestPayloadBuilder)
          updates]) = _$GetDocumentationVersionRequestPayload;

  const GetDocumentationVersionRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDocumentationVersionRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetDocumentationVersionRequestPayload');
    return helper.toString();
  }
}

class GetDocumentationVersionRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<GetDocumentationVersionRequestPayload> {
  const GetDocumentationVersionRequestRestJson1Serializer()
      : super('GetDocumentationVersionRequest');

  @override
  Iterable<Type> get types => const [
        GetDocumentationVersionRequest,
        _$GetDocumentationVersionRequest,
        GetDocumentationVersionRequestPayload,
        _$GetDocumentationVersionRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetDocumentationVersionRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetDocumentationVersionRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetDocumentationVersionRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
