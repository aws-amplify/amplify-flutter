// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_ipam_resource_discoveries_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_ipam_resource_discoveries_request.g.dart';

abstract class DescribeIpamResourceDiscoveriesRequest
    with
        _i1.HttpInput<DescribeIpamResourceDiscoveriesRequest>,
        _i2.AWSEquatable<DescribeIpamResourceDiscoveriesRequest>
    implements
        Built<DescribeIpamResourceDiscoveriesRequest,
            DescribeIpamResourceDiscoveriesRequestBuilder> {
  factory DescribeIpamResourceDiscoveriesRequest({
    bool? dryRun,
    List<String>? ipamResourceDiscoveryIds,
    String? nextToken,
    int? maxResults,
    List<Filter>? filters,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeIpamResourceDiscoveriesRequest._(
      dryRun: dryRun,
      ipamResourceDiscoveryIds: ipamResourceDiscoveryIds == null
          ? null
          : _i3.BuiltList(ipamResourceDiscoveryIds),
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters == null ? null : _i3.BuiltList(filters),
    );
  }

  factory DescribeIpamResourceDiscoveriesRequest.build(
      [void Function(DescribeIpamResourceDiscoveriesRequestBuilder)
          updates]) = _$DescribeIpamResourceDiscoveriesRequest;

  const DescribeIpamResourceDiscoveriesRequest._();

  factory DescribeIpamResourceDiscoveriesRequest.fromRequest(
    DescribeIpamResourceDiscoveriesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeIpamResourceDiscoveriesRequest>>
      serializers = [
    DescribeIpamResourceDiscoveriesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeIpamResourceDiscoveriesRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IPAM resource discovery IDs.
  _i3.BuiltList<String>? get ipamResourceDiscoveryIds;

  /// Specify the pagination token from a previous request to retrieve the next page of results.
  String? get nextToken;

  /// The maximum number of resource discoveries to return in one page of results.
  int get maxResults;

  /// The resource discovery filters.
  _i3.BuiltList<Filter>? get filters;
  @override
  DescribeIpamResourceDiscoveriesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamResourceDiscoveryIds,
        nextToken,
        maxResults,
        filters,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeIpamResourceDiscoveriesRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'ipamResourceDiscoveryIds',
            ipamResourceDiscoveryIds,
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

class DescribeIpamResourceDiscoveriesRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeIpamResourceDiscoveriesRequest> {
  const DescribeIpamResourceDiscoveriesRequestEc2QuerySerializer()
      : super('DescribeIpamResourceDiscoveriesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeIpamResourceDiscoveriesRequest,
        _$DescribeIpamResourceDiscoveriesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIpamResourceDiscoveriesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIpamResourceDiscoveriesRequestBuilder();
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
        case 'IpamResourceDiscoveryId':
          result.ipamResourceDiscoveryIds
              .replace((const _i1.XmlBuiltListSerializer(
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
    DescribeIpamResourceDiscoveriesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeIpamResourceDiscoveriesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIpamResourceDiscoveriesRequest(
      :dryRun,
      :ipamResourceDiscoveryIds,
      :nextToken,
      :maxResults,
      :filters
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (ipamResourceDiscoveryIds != null) {
      result$
        ..add(const _i1.XmlElementName('IpamResourceDiscoveryId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipamResourceDiscoveryIds,
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
