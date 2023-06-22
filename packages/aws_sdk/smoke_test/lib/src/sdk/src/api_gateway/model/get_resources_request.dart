// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.get_resources_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'get_resources_request.g.dart';

/// Request to list information about a collection of resources.
abstract class GetResourcesRequest
    with
        _i1.HttpInput<GetResourcesRequestPayload>,
        _i2.AWSEquatable<GetResourcesRequest>
    implements
        Built<GetResourcesRequest, GetResourcesRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetResourcesRequestPayload> {
  /// Request to list information about a collection of resources.
  factory GetResourcesRequest({
    required String restApiId,
    String? position,
    int? limit,
    List<String>? embed,
  }) {
    return _$GetResourcesRequest._(
      restApiId: restApiId,
      position: position,
      limit: limit,
      embed: embed == null ? null : _i3.BuiltList(embed),
    );
  }

  /// Request to list information about a collection of resources.
  factory GetResourcesRequest.build(
          [void Function(GetResourcesRequestBuilder) updates]) =
      _$GetResourcesRequest;

  const GetResourcesRequest._();

  factory GetResourcesRequest.fromRequest(
    GetResourcesRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetResourcesRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
        if (request.queryParameters['embed'] != null) {
          b.embed.addAll(_i1
              .parseHeader(request.queryParameters['embed']!)
              .map((el) => el.trim()));
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer<GetResourcesRequestPayload>>
      serializers = [GetResourcesRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetResourcesRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The current pagination position in the paged result set.
  String? get position;

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;

  /// A query parameter used to retrieve the specified resources embedded in the returned Resources resource in the response. This `embed` parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded Method resources this way. The query parameter value must be a single-valued list and contain the `"methods"` string. For example, `GET /restapis/{restapi_id}/resources?embed=methods`.
  _i3.BuiltList<String>? get embed;
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
  GetResourcesRequestPayload getPayload() => GetResourcesRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        position,
        limit,
        embed,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetResourcesRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'position',
        position,
      )
      ..add(
        'limit',
        limit,
      )
      ..add(
        'embed',
        embed,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class GetResourcesRequestPayload
    with _i2.AWSEquatable<GetResourcesRequestPayload>
    implements
        Built<GetResourcesRequestPayload, GetResourcesRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetResourcesRequestPayload(
          [void Function(GetResourcesRequestPayloadBuilder) updates]) =
      _$GetResourcesRequestPayload;

  const GetResourcesRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetResourcesRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetResourcesRequestPayload');
    return helper.toString();
  }
}

class GetResourcesRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetResourcesRequestPayload> {
  const GetResourcesRequestRestJson1Serializer() : super('GetResourcesRequest');

  @override
  Iterable<Type> get types => const [
        GetResourcesRequest,
        _$GetResourcesRequest,
        GetResourcesRequestPayload,
        _$GetResourcesRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetResourcesRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetResourcesRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetResourcesRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
