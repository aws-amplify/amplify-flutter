// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_base_path_mappings_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_base_path_mappings_request.g.dart';

/// A request to get information about a collection of BasePathMapping resources.
abstract class GetBasePathMappingsRequest
    with
        _i1.HttpInput<GetBasePathMappingsRequestPayload>,
        _i2.AWSEquatable<GetBasePathMappingsRequest>
    implements
        Built<GetBasePathMappingsRequest, GetBasePathMappingsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBasePathMappingsRequestPayload> {
  /// A request to get information about a collection of BasePathMapping resources.
  factory GetBasePathMappingsRequest({
    required String domainName,
    int? limit,
    String? position,
  }) {
    return _$GetBasePathMappingsRequest._(
      domainName: domainName,
      limit: limit,
      position: position,
    );
  }

  /// A request to get information about a collection of BasePathMapping resources.
  factory GetBasePathMappingsRequest.build(
          [void Function(GetBasePathMappingsRequestBuilder) updates]) =
      _$GetBasePathMappingsRequest;

  const GetBasePathMappingsRequest._();

  factory GetBasePathMappingsRequest.fromRequest(
    GetBasePathMappingsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBasePathMappingsRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
        if (labels['domainName'] != null) {
          b.domainName = labels['domainName']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetBasePathMappingsRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBasePathMappingsRequestBuilder b) {}

  /// The domain name of a BasePathMapping resource.
  String get domainName;

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;

  /// The current pagination position in the paged result set.
  String? get position;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'domainName':
        return domainName;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetBasePathMappingsRequestPayload getPayload() =>
      GetBasePathMappingsRequestPayload();
  @override
  List<Object?> get props => [
        domainName,
        limit,
        position,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBasePathMappingsRequest');
    helper.add(
      'domainName',
      domainName,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'position',
      position,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetBasePathMappingsRequestPayload
    with
        _i2.AWSEquatable<GetBasePathMappingsRequestPayload>
    implements
        Built<GetBasePathMappingsRequestPayload,
            GetBasePathMappingsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBasePathMappingsRequestPayload(
          [void Function(GetBasePathMappingsRequestPayloadBuilder) updates]) =
      _$GetBasePathMappingsRequestPayload;

  const GetBasePathMappingsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBasePathMappingsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBasePathMappingsRequestPayload');
    return helper.toString();
  }
}

class GetBasePathMappingsRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetBasePathMappingsRequestPayload> {
  const GetBasePathMappingsRequestRestJson1Serializer()
      : super('GetBasePathMappingsRequest');

  @override
  Iterable<Type> get types => const [
        GetBasePathMappingsRequest,
        _$GetBasePathMappingsRequest,
        GetBasePathMappingsRequestPayload,
        _$GetBasePathMappingsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetBasePathMappingsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBasePathMappingsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
