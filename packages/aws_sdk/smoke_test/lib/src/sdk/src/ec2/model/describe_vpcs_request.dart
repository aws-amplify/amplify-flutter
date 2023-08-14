// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpcs_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_vpcs_request.g.dart';

abstract class DescribeVpcsRequest
    with
        _i1.HttpInput<DescribeVpcsRequest>,
        _i2.AWSEquatable<DescribeVpcsRequest>
    implements Built<DescribeVpcsRequest, DescribeVpcsRequestBuilder> {
  factory DescribeVpcsRequest({
    List<Filter>? filters,
    List<String>? vpcIds,
    bool? dryRun,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeVpcsRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      vpcIds: vpcIds == null ? null : _i3.BuiltList(vpcIds),
      dryRun: dryRun,
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeVpcsRequest.build(
          [void Function(DescribeVpcsRequestBuilder) updates]) =
      _$DescribeVpcsRequest;

  const DescribeVpcsRequest._();

  factory DescribeVpcsRequest.fromRequest(
    DescribeVpcsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeVpcsRequest>> serializers = [
    DescribeVpcsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The filters.
  ///
  /// *   `cidr` \- The primary IPv4 CIDR block of the VPC. The CIDR block you specify must exactly match the VPC's CIDR block for information to be returned for the VPC. Must contain the slash followed by one or two digits (for example, `/28`).
  ///
  /// *   `cidr-block-association.cidr-block` \- An IPv4 CIDR block associated with the VPC.
  ///
  /// *   `cidr-block-association.association-id` \- The association ID for an IPv4 CIDR block associated with the VPC.
  ///
  /// *   `cidr-block-association.state` \- The state of an IPv4 CIDR block associated with the VPC.
  ///
  /// *   `dhcp-options-id` \- The ID of a set of DHCP options.
  ///
  /// *   `ipv6-cidr-block-association.ipv6-cidr-block` \- An IPv6 CIDR block associated with the VPC.
  ///
  /// *   `ipv6-cidr-block-association.ipv6-pool` \- The ID of the IPv6 address pool from which the IPv6 CIDR block is allocated.
  ///
  /// *   `ipv6-cidr-block-association.association-id` \- The association ID for an IPv6 CIDR block associated with the VPC.
  ///
  /// *   `ipv6-cidr-block-association.state` \- The state of an IPv6 CIDR block associated with the VPC.
  ///
  /// *   `is-default` \- Indicates whether the VPC is the default VPC.
  ///
  /// *   `owner-id` \- The ID of the Amazon Web Services account that owns the VPC.
  ///
  /// *   `state` \- The state of the VPC (`pending` | `available`).
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `vpc-id` \- The ID of the VPC.
  _i3.BuiltList<Filter>? get filters;

  /// The IDs of the VPCs.
  ///
  /// Default: Describes all your VPCs.
  _i3.BuiltList<String>? get vpcIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;
  @override
  DescribeVpcsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        vpcIds,
        dryRun,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpcsRequest')
      ..add(
        'filters',
        filters,
      )
      ..add(
        'vpcIds',
        vpcIds,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'maxResults',
        maxResults,
      );
    return helper.toString();
  }
}

class DescribeVpcsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeVpcsRequest> {
  const DescribeVpcsRequestEc2QuerySerializer() : super('DescribeVpcsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVpcsRequest,
        _$DescribeVpcsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'VpcId':
          result.vpcIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'VpcId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeVpcsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeVpcsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpcsRequest(
      :filters,
      :vpcIds,
      :dryRun,
      :nextToken,
      :maxResults
    ) = object;
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
    if (vpcIds != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'VpcId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpcIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
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
    return result$;
  }
}
