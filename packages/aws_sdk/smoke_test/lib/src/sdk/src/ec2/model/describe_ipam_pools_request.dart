// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_ipam_pools_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_ipam_pools_request.g.dart';

abstract class DescribeIpamPoolsRequest
    with
        _i1.HttpInput<DescribeIpamPoolsRequest>,
        _i2.AWSEquatable<DescribeIpamPoolsRequest>
    implements
        Built<DescribeIpamPoolsRequest, DescribeIpamPoolsRequestBuilder> {
  factory DescribeIpamPoolsRequest({
    bool? dryRun,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
    List<String>? ipamPoolIds,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeIpamPoolsRequest._(
      dryRun: dryRun,
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      ipamPoolIds: ipamPoolIds == null ? null : _i3.BuiltList(ipamPoolIds),
    );
  }

  factory DescribeIpamPoolsRequest.build(
          [void Function(DescribeIpamPoolsRequestBuilder) updates]) =
      _$DescribeIpamPoolsRequest;

  const DescribeIpamPoolsRequest._();

  factory DescribeIpamPoolsRequest.fromRequest(
    DescribeIpamPoolsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeIpamPoolsRequest>>
      serializers = [DescribeIpamPoolsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeIpamPoolsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more filters for the request. For more information about filtering, see [Filtering CLI output](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html).
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return in the request.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// The IDs of the IPAM pools you would like information on.
  _i3.BuiltList<String>? get ipamPoolIds;
  @override
  DescribeIpamPoolsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filters,
        maxResults,
        nextToken,
        ipamPoolIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeIpamPoolsRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'filters',
        filters,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'ipamPoolIds',
        ipamPoolIds,
      );
    return helper.toString();
  }
}

class DescribeIpamPoolsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeIpamPoolsRequest> {
  const DescribeIpamPoolsRequestEc2QuerySerializer()
      : super('DescribeIpamPoolsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeIpamPoolsRequest,
        _$DescribeIpamPoolsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIpamPoolsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIpamPoolsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IpamPoolId':
          result.ipamPoolIds.replace((const _i1.XmlBuiltListSerializer(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeIpamPoolsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeIpamPoolsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIpamPoolsRequest(
      :dryRun,
      :filters,
      :maxResults,
      :nextToken,
      :ipamPoolIds
    ) = object;
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
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamPoolIds != null) {
      result$
        ..add(const _i1.XmlElementName('IpamPoolId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipamPoolIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
