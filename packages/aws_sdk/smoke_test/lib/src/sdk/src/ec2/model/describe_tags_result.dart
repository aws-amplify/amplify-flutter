// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_tags_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_description.dart';

part 'describe_tags_result.g.dart';

abstract class DescribeTagsResult
    with _i1.AWSEquatable<DescribeTagsResult>
    implements Built<DescribeTagsResult, DescribeTagsResultBuilder> {
  factory DescribeTagsResult({
    String? nextToken,
    List<TagDescription>? tags,
  }) {
    return _$DescribeTagsResult._(
      nextToken: nextToken,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  factory DescribeTagsResult.build(
          [void Function(DescribeTagsResultBuilder) updates]) =
      _$DescribeTagsResult;

  const DescribeTagsResult._();

  /// Constructs a [DescribeTagsResult] from a [payload] and [response].
  factory DescribeTagsResult.fromResponse(
    DescribeTagsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeTagsResult>> serializers = [
    DescribeTagsResultEc2QuerySerializer()
  ];

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;

  /// The tags.
  _i2.BuiltList<TagDescription>? get tags;
  @override
  List<Object?> get props => [
        nextToken,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTagsResult')
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class DescribeTagsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeTagsResult> {
  const DescribeTagsResultEc2QuerySerializer() : super('DescribeTagsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTagsResult,
        _$DescribeTagsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTagsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTagsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TagDescription)],
            ),
          ) as _i2.BuiltList<TagDescription>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeTagsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeTagsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTagsResult(:nextToken, :tags) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TagDescription)],
          ),
        ));
    }
    return result$;
  }
}
