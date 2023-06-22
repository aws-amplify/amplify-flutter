// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String resourceArn,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$ListTagsForResourceRequest._(
      resourceArn: resourceArn,
      limit: limit,
      nextToken: nextToken,
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

  static const List<_i1.SmithySerializer<ListTagsForResourceRequest>>
      serializers = [ListTagsForResourceRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListTagsForResourceRequestBuilder b) {
    b.limit = 0;
  }

  /// The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are `ConfigRule`, `ConfigurationAggregator` and `AggregatorAuthorization`.
  String get resourceArn;

  /// The maximum number of tags returned on each page. The limit maximum is 50. You cannot specify a number greater than 50. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  ListTagsForResourceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        resourceArn,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTagsForResourceRequest')
      ..add(
        'resourceArn',
        resourceArn,
      )
      ..add(
        'limit',
        limit,
      )
      ..add(
        'nextToken',
        nextToken,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceArn':
          result.resourceArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListTagsForResourceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ListTagsForResourceRequest(:resourceArn, :limit, :nextToken) = object;
    result$.addAll([
      'ResourceArn',
      serializers.serialize(
        resourceArn,
        specifiedType: const FullType(String),
      ),
      'Limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
