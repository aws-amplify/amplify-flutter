// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_public_ipv4_pools_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_public_ipv4_pools_request.g.dart';

abstract class DescribePublicIpv4PoolsRequest
    with
        _i1.HttpInput<DescribePublicIpv4PoolsRequest>,
        _i2.AWSEquatable<DescribePublicIpv4PoolsRequest>
    implements
        Built<DescribePublicIpv4PoolsRequest,
            DescribePublicIpv4PoolsRequestBuilder> {
  factory DescribePublicIpv4PoolsRequest({
    List<String>? poolIds,
    String? nextToken,
    int? maxResults,
    List<Filter>? filters,
  }) {
    maxResults ??= 0;
    return _$DescribePublicIpv4PoolsRequest._(
      poolIds: poolIds == null ? null : _i3.BuiltList(poolIds),
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters == null ? null : _i3.BuiltList(filters),
    );
  }

  factory DescribePublicIpv4PoolsRequest.build(
          [void Function(DescribePublicIpv4PoolsRequestBuilder) updates]) =
      _$DescribePublicIpv4PoolsRequest;

  const DescribePublicIpv4PoolsRequest._();

  factory DescribePublicIpv4PoolsRequest.fromRequest(
    DescribePublicIpv4PoolsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribePublicIpv4PoolsRequest>>
      serializers = [DescribePublicIpv4PoolsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribePublicIpv4PoolsRequestBuilder b) {
    b.maxResults = 0;
  }

  /// The IDs of the address pools.
  _i3.BuiltList<String>? get poolIds;

  /// The token for the next page of results.
  String? get nextToken;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// One or more filters.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i3.BuiltList<Filter>? get filters;
  @override
  DescribePublicIpv4PoolsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        poolIds,
        nextToken,
        maxResults,
        filters,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribePublicIpv4PoolsRequest')
      ..add(
        'poolIds',
        poolIds,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'filters',
        filters,
      );
    return helper.toString();
  }
}

class DescribePublicIpv4PoolsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribePublicIpv4PoolsRequest> {
  const DescribePublicIpv4PoolsRequestEc2QuerySerializer()
      : super('DescribePublicIpv4PoolsRequest');

  @override
  Iterable<Type> get types => const [
        DescribePublicIpv4PoolsRequest,
        _$DescribePublicIpv4PoolsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribePublicIpv4PoolsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribePublicIpv4PoolsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PoolId':
          result.poolIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribePublicIpv4PoolsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribePublicIpv4PoolsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribePublicIpv4PoolsRequest(
      :poolIds,
      :nextToken,
      :maxResults,
      :filters
    ) = object;
    if (poolIds != null) {
      result$
        ..add(const _i1.XmlElementName('PoolId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          poolIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    return result$;
  }
}
