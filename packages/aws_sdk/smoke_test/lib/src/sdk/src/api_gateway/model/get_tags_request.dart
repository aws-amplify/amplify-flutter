// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_tags_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_tags_request.g.dart';

/// Gets the Tags collection for a given resource.
abstract class GetTagsRequest
    with _i1.HttpInput<GetTagsRequestPayload>, _i2.AWSEquatable<GetTagsRequest>
    implements
        Built<GetTagsRequest, GetTagsRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetTagsRequestPayload> {
  /// Gets the Tags collection for a given resource.
  factory GetTagsRequest({
    int? limit,
    String? position,
    required String resourceArn,
  }) {
    return _$GetTagsRequest._(
      limit: limit,
      position: position,
      resourceArn: resourceArn,
    );
  }

  /// Gets the Tags collection for a given resource.
  factory GetTagsRequest.build([void Function(GetTagsRequestBuilder) updates]) =
      _$GetTagsRequest;

  const GetTagsRequest._();

  factory GetTagsRequest.fromRequest(
    GetTagsRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetTagsRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
        if (labels['resourceArn'] != null) {
          b.resourceArn = labels['resourceArn']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetTagsRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetTagsRequestBuilder b) {}

  /// (Not currently supported) The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;

  /// (Not currently supported) The current pagination position in the paged result set.
  String? get position;

  /// The ARN of a resource that can be tagged.
  String get resourceArn;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'resourceArn':
        return resourceArn;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetTagsRequestPayload getPayload() => GetTagsRequestPayload();
  @override
  List<Object?> get props => [
        limit,
        position,
        resourceArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetTagsRequest');
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'position',
      position,
    );
    helper.add(
      'resourceArn',
      resourceArn,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetTagsRequestPayload
    with _i2.AWSEquatable<GetTagsRequestPayload>
    implements
        Built<GetTagsRequestPayload, GetTagsRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetTagsRequestPayload(
          [void Function(GetTagsRequestPayloadBuilder) updates]) =
      _$GetTagsRequestPayload;

  const GetTagsRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetTagsRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetTagsRequestPayload');
    return helper.toString();
  }
}

class GetTagsRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetTagsRequestPayload> {
  const GetTagsRequestRestJson1Serializer() : super('GetTagsRequest');

  @override
  Iterable<Type> get types => const [
        GetTagsRequest,
        _$GetTagsRequest,
        GetTagsRequestPayload,
        _$GetTagsRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetTagsRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetTagsRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
