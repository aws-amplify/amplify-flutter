// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_ipv6_pools_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_ipv6_pools_request.g.dart';

abstract class DescribeIpv6PoolsRequest
    with
        _i1.HttpInput<DescribeIpv6PoolsRequest>,
        _i2.AWSEquatable<DescribeIpv6PoolsRequest>
    implements
        Built<DescribeIpv6PoolsRequest, DescribeIpv6PoolsRequestBuilder> {
  factory DescribeIpv6PoolsRequest({
    List<String>? poolIds,
    String? nextToken,
    int? maxResults,
    bool? dryRun,
    List<Filter>? filters,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeIpv6PoolsRequest._(
      poolIds: poolIds == null ? null : _i3.BuiltList(poolIds),
      nextToken: nextToken,
      maxResults: maxResults,
      dryRun: dryRun,
      filters: filters == null ? null : _i3.BuiltList(filters),
    );
  }

  factory DescribeIpv6PoolsRequest.build(
          [void Function(DescribeIpv6PoolsRequestBuilder) updates]) =
      _$DescribeIpv6PoolsRequest;

  const DescribeIpv6PoolsRequest._();

  factory DescribeIpv6PoolsRequest.fromRequest(
    DescribeIpv6PoolsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeIpv6PoolsRequest>>
      serializers = [DescribeIpv6PoolsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeIpv6PoolsRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The IDs of the IPv6 address pools.
  _i3.BuiltList<String>? get poolIds;

  /// The token for the next page of results.
  String? get nextToken;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more filters.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i3.BuiltList<Filter>? get filters;
  @override
  DescribeIpv6PoolsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        poolIds,
        nextToken,
        maxResults,
        dryRun,
        filters,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeIpv6PoolsRequest')
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
        'dryRun',
        dryRun,
      )
      ..add(
        'filters',
        filters,
      );
    return helper.toString();
  }
}

class DescribeIpv6PoolsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeIpv6PoolsRequest> {
  const DescribeIpv6PoolsRequestEc2QuerySerializer()
      : super('DescribeIpv6PoolsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeIpv6PoolsRequest,
        _$DescribeIpv6PoolsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIpv6PoolsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIpv6PoolsRequestBuilder();
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
    DescribeIpv6PoolsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeIpv6PoolsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIpv6PoolsRequest(
      :poolIds,
      :nextToken,
      :maxResults,
      :dryRun,
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
          specifiedType: const FullType(
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
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
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    return result$;
  }
}
