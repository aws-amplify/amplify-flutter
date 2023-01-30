// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_documentation_versions_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_documentation_versions_request.g.dart';

/// Gets the documentation versions of an API.
abstract class GetDocumentationVersionsRequest
    with
        _i1.HttpInput<GetDocumentationVersionsRequestPayload>,
        _i2.AWSEquatable<GetDocumentationVersionsRequest>
    implements
        Built<GetDocumentationVersionsRequest,
            GetDocumentationVersionsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetDocumentationVersionsRequestPayload> {
  /// Gets the documentation versions of an API.
  factory GetDocumentationVersionsRequest({
    int? limit,
    String? position,
    required String restApiId,
  }) {
    return _$GetDocumentationVersionsRequest._(
      limit: limit,
      position: position,
      restApiId: restApiId,
    );
  }

  /// Gets the documentation versions of an API.
  factory GetDocumentationVersionsRequest.build(
          [void Function(GetDocumentationVersionsRequestBuilder) updates]) =
      _$GetDocumentationVersionsRequest;

  const GetDocumentationVersionsRequest._();

  factory GetDocumentationVersionsRequest.fromRequest(
    GetDocumentationVersionsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetDocumentationVersionsRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetDocumentationVersionsRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDocumentationVersionsRequestBuilder b) {}

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;

  /// The current pagination position in the paged result set.
  String? get position;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetDocumentationVersionsRequestPayload getPayload() =>
      GetDocumentationVersionsRequestPayload();
  @override
  List<Object?> get props => [
        limit,
        position,
        restApiId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetDocumentationVersionsRequest');
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'position',
      position,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetDocumentationVersionsRequestPayload
    with
        _i2.AWSEquatable<GetDocumentationVersionsRequestPayload>
    implements
        Built<GetDocumentationVersionsRequestPayload,
            GetDocumentationVersionsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetDocumentationVersionsRequestPayload(
      [void Function(GetDocumentationVersionsRequestPayloadBuilder)
          updates]) = _$GetDocumentationVersionsRequestPayload;

  const GetDocumentationVersionsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDocumentationVersionsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetDocumentationVersionsRequestPayload');
    return helper.toString();
  }
}

class GetDocumentationVersionsRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<GetDocumentationVersionsRequestPayload> {
  const GetDocumentationVersionsRequestRestJson1Serializer()
      : super('GetDocumentationVersionsRequest');

  @override
  Iterable<Type> get types => const [
        GetDocumentationVersionsRequest,
        _$GetDocumentationVersionsRequest,
        GetDocumentationVersionsRequestPayload,
        _$GetDocumentationVersionsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetDocumentationVersionsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetDocumentationVersionsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
