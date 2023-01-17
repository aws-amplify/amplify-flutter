// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_resource_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'get_resource_request.g.dart';

/// Request to list information about a resource.
abstract class GetResourceRequest
    with
        _i1.HttpInput<GetResourceRequestPayload>,
        _i2.AWSEquatable<GetResourceRequest>
    implements
        Built<GetResourceRequest, GetResourceRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetResourceRequestPayload> {
  /// Request to list information about a resource.
  factory GetResourceRequest({
    List<String>? embed,
    required String resourceId,
    required String restApiId,
  }) {
    return _$GetResourceRequest._(
      embed: embed == null ? null : _i3.BuiltList(embed),
      resourceId: resourceId,
      restApiId: restApiId,
    );
  }

  /// Request to list information about a resource.
  factory GetResourceRequest.build(
          [void Function(GetResourceRequestBuilder) updates]) =
      _$GetResourceRequest;

  const GetResourceRequest._();

  factory GetResourceRequest.fromRequest(
    GetResourceRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetResourceRequest.build((b) {
        if (request.queryParameters['embed'] != null) {
          b.embed.addAll(_i1
              .parseHeader(request.queryParameters['embed']!)
              .map((el) => el.trim()));
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['resourceId'] != null) {
          b.resourceId = labels['resourceId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetResourceRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetResourceRequestBuilder b) {}

  /// A query parameter to retrieve the specified resources embedded in the returned Resource representation in the response. This `embed` parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded Method resources this way. The query parameter value must be a single-valued list and contain the `"methods"` string. For example, `GET /restapis/{restapi\_id}/resources/{resource\_id}?embed=methods`.
  _i3.BuiltList<String>? get embed;

  /// The identifier for the Resource resource.
  String get resourceId;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'resourceId':
        return resourceId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetResourceRequestPayload getPayload() => GetResourceRequestPayload();
  @override
  List<Object?> get props => [
        embed,
        resourceId,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetResourceRequest');
    helper.add(
      'embed',
      embed,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class GetResourceRequestPayload
    with _i2.AWSEquatable<GetResourceRequestPayload>
    implements
        Built<GetResourceRequestPayload, GetResourceRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetResourceRequestPayload(
          [void Function(GetResourceRequestPayloadBuilder) updates]) =
      _$GetResourceRequestPayload;

  const GetResourceRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetResourceRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetResourceRequestPayload');
    return helper.toString();
  }
}

class GetResourceRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetResourceRequestPayload> {
  const GetResourceRequestRestJson1Serializer() : super('GetResourceRequest');

  @override
  Iterable<Type> get types => const [
        GetResourceRequest,
        _$GetResourceRequest,
        GetResourceRequestPayload,
        _$GetResourceRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetResourceRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetResourceRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
