// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.list_tags_for_resource_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/tag.dart' as _i2;

part 'list_tags_for_resource_response.g.dart';

abstract class ListTagsForResourceResponse
    with _i1.AWSEquatable<ListTagsForResourceResponse>
    implements
        Built<ListTagsForResourceResponse, ListTagsForResourceResponseBuilder> {
  factory ListTagsForResourceResponse({
    String? nextToken,
    List<_i2.Tag>? tags,
  }) {
    return _$ListTagsForResourceResponse._(
      nextToken: nextToken,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  factory ListTagsForResourceResponse.build(
          [void Function(ListTagsForResourceResponseBuilder) updates]) =
      _$ListTagsForResourceResponse;

  const ListTagsForResourceResponse._();

  /// Constructs a [ListTagsForResourceResponse] from a [payload] and [response].
  factory ListTagsForResourceResponse.fromResponse(
    ListTagsForResourceResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListTagsForResourceResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListTagsForResourceResponseBuilder b) {}

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The tags for the resource.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        nextToken,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTagsForResourceResponse');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class ListTagsForResourceResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ListTagsForResourceResponse> {
  const ListTagsForResourceResponseAwsJson11Serializer()
      : super('ListTagsForResourceResponse');

  @override
  Iterable<Type> get types => const [
        ListTagsForResourceResponse,
        _$ListTagsForResourceResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ListTagsForResourceResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTagsForResourceResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Tags':
          if (value != null) {
            result.tags.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Tag)],
              ),
            ) as _i3.BuiltList<_i2.Tag>));
          }
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
    final payload = (object as ListTagsForResourceResponse);
    final result = <Object?>[];
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add('Tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    return result;
  }
}
