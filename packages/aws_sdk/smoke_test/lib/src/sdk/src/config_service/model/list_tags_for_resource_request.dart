// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.list_tags_for_resource_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_tags_for_resource_request.g.dart';

abstract class ListTagsForResourceRequest
    with
        _i1.HttpInput<ListTagsForResourceRequest>,
        _i2.AWSEquatable<ListTagsForResourceRequest>
    implements
        Built<ListTagsForResourceRequest, ListTagsForResourceRequestBuilder> {
  factory ListTagsForResourceRequest({
    int? limit,
    String? nextToken,
    required String resourceArn,
  }) {
    return _$ListTagsForResourceRequest._(
      limit: limit,
      nextToken: nextToken,
      resourceArn: resourceArn,
    );
  }

  factory ListTagsForResourceRequest.build(
          [void Function(ListTagsForResourceRequestBuilder) updates]) =
      _$ListTagsForResourceRequest;

  const ListTagsForResourceRequest._();

  factory ListTagsForResourceRequest.fromRequest(
    ListTagsForResourceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListTagsForResourceRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListTagsForResourceRequestBuilder b) {}

  /// The maximum number of tags returned on each page. The limit maximum is 50. You cannot specify a number greater than 50. If you specify 0, Config uses the default.
  int? get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are `ConfigRule`, `ConfigurationAggregator` and `AggregatorAuthorization`.
  String get resourceArn;
  @override
  ListTagsForResourceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        limit,
        nextToken,
        resourceArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTagsForResourceRequest');
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'resourceArn',
      resourceArn,
    );
    return helper.toString();
  }
}

class ListTagsForResourceRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ListTagsForResourceRequest> {
  const ListTagsForResourceRequestAwsJson11Serializer()
      : super('ListTagsForResourceRequest');

  @override
  Iterable<Type> get types => const [
        ListTagsForResourceRequest,
        _$ListTagsForResourceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ListTagsForResourceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTagsForResourceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceArn':
          result.resourceArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as ListTagsForResourceRequest);
    final result = <Object?>[
      'ResourceArn',
      serializers.serialize(
        payload.resourceArn,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
