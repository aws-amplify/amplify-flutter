// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_documentation_parts_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part_type.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/location_status_type.dart'
    as _i3;

part 'get_documentation_parts_request.g.dart';

/// Gets the documentation parts of an API. The result may be filtered by the type, name, or path of API entities (targets).
abstract class GetDocumentationPartsRequest
    with
        _i1.HttpInput<GetDocumentationPartsRequestPayload>,
        _i2.AWSEquatable<GetDocumentationPartsRequest>
    implements
        Built<GetDocumentationPartsRequest,
            GetDocumentationPartsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetDocumentationPartsRequestPayload> {
  /// Gets the documentation parts of an API. The result may be filtered by the type, name, or path of API entities (targets).
  factory GetDocumentationPartsRequest({
    int? limit,
    _i3.LocationStatusType? locationStatus,
    String? nameQuery,
    String? path,
    String? position,
    required String restApiId,
    _i4.DocumentationPartType? type,
  }) {
    return _$GetDocumentationPartsRequest._(
      limit: limit,
      locationStatus: locationStatus,
      nameQuery: nameQuery,
      path: path,
      position: position,
      restApiId: restApiId,
      type: type,
    );
  }

  /// Gets the documentation parts of an API. The result may be filtered by the type, name, or path of API entities (targets).
  factory GetDocumentationPartsRequest.build(
          [void Function(GetDocumentationPartsRequestBuilder) updates]) =
      _$GetDocumentationPartsRequest;

  const GetDocumentationPartsRequest._();

  factory GetDocumentationPartsRequest.fromRequest(
    GetDocumentationPartsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetDocumentationPartsRequest.build((b) {
        if (request.queryParameters['type'] != null) {
          b.type = _i4.DocumentationPartType.values
              .byValue(request.queryParameters['type']!);
        }
        if (request.queryParameters['name'] != null) {
          b.nameQuery = request.queryParameters['name']!;
        }
        if (request.queryParameters['path'] != null) {
          b.path = request.queryParameters['path']!;
        }
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
        if (request.queryParameters['locationStatus'] != null) {
          b.locationStatus = _i3.LocationStatusType.values
              .byValue(request.queryParameters['locationStatus']!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetDocumentationPartsRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDocumentationPartsRequestBuilder b) {}

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;

  /// The status of the API documentation parts to retrieve. Valid values are `DOCUMENTED` for retrieving DocumentationPart resources with content and `UNDOCUMENTED` for DocumentationPart resources without content.
  _i3.LocationStatusType? get locationStatus;

  /// The name of API entities of the to-be-retrieved documentation parts.
  String? get nameQuery;

  /// The path of API entities of the to-be-retrieved documentation parts.
  String? get path;

  /// The current pagination position in the paged result set.
  String? get position;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The type of API entities of the to-be-retrieved documentation parts.
  _i4.DocumentationPartType? get type;
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
  GetDocumentationPartsRequestPayload getPayload() =>
      GetDocumentationPartsRequestPayload();
  @override
  List<Object?> get props => [
        limit,
        locationStatus,
        nameQuery,
        path,
        position,
        restApiId,
        type,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDocumentationPartsRequest');
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'locationStatus',
      locationStatus,
    );
    helper.add(
      'nameQuery',
      nameQuery,
    );
    helper.add(
      'path',
      path,
    );
    helper.add(
      'position',
      position,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'type',
      type,
    );
    return helper.toString();
  }
}

@_i5.internal
abstract class GetDocumentationPartsRequestPayload
    with
        _i2.AWSEquatable<GetDocumentationPartsRequestPayload>
    implements
        Built<GetDocumentationPartsRequestPayload,
            GetDocumentationPartsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetDocumentationPartsRequestPayload(
          [void Function(GetDocumentationPartsRequestPayloadBuilder) updates]) =
      _$GetDocumentationPartsRequestPayload;

  const GetDocumentationPartsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDocumentationPartsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetDocumentationPartsRequestPayload');
    return helper.toString();
  }
}

class GetDocumentationPartsRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<GetDocumentationPartsRequestPayload> {
  const GetDocumentationPartsRequestRestJson1Serializer()
      : super('GetDocumentationPartsRequest');

  @override
  Iterable<Type> get types => const [
        GetDocumentationPartsRequest,
        _$GetDocumentationPartsRequest,
        GetDocumentationPartsRequestPayload,
        _$GetDocumentationPartsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetDocumentationPartsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetDocumentationPartsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
