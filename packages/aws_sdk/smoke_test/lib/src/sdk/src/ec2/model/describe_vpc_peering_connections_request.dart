// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpc_peering_connections_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_vpc_peering_connections_request.g.dart';

abstract class DescribeVpcPeeringConnectionsRequest
    with
        _i1.HttpInput<DescribeVpcPeeringConnectionsRequest>,
        _i2.AWSEquatable<DescribeVpcPeeringConnectionsRequest>
    implements
        Built<DescribeVpcPeeringConnectionsRequest,
            DescribeVpcPeeringConnectionsRequestBuilder> {
  factory DescribeVpcPeeringConnectionsRequest({
    List<Filter>? filters,
    bool? dryRun,
    List<String>? vpcPeeringConnectionIds,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeVpcPeeringConnectionsRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      dryRun: dryRun,
      vpcPeeringConnectionIds: vpcPeeringConnectionIds == null
          ? null
          : _i3.BuiltList(vpcPeeringConnectionIds),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeVpcPeeringConnectionsRequest.build(
      [void Function(DescribeVpcPeeringConnectionsRequestBuilder)
          updates]) = _$DescribeVpcPeeringConnectionsRequest;

  const DescribeVpcPeeringConnectionsRequest._();

  factory DescribeVpcPeeringConnectionsRequest.fromRequest(
    DescribeVpcPeeringConnectionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeVpcPeeringConnectionsRequest>>
      serializers = [DescribeVpcPeeringConnectionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcPeeringConnectionsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The filters.
  ///
  /// *   `accepter-vpc-info.cidr-block` \- The IPv4 CIDR block of the accepter VPC.
  ///
  /// *   `accepter-vpc-info.owner-id` \- The ID of the Amazon Web Services account that owns the accepter VPC.
  ///
  /// *   `accepter-vpc-info.vpc-id` \- The ID of the accepter VPC.
  ///
  /// *   `expiration-time` \- The expiration date and time for the VPC peering connection.
  ///
  /// *   `requester-vpc-info.cidr-block` \- The IPv4 CIDR block of the requester's VPC.
  ///
  /// *   `requester-vpc-info.owner-id` \- The ID of the Amazon Web Services account that owns the requester VPC.
  ///
  /// *   `requester-vpc-info.vpc-id` \- The ID of the requester VPC.
  ///
  /// *   `status-code` \- The status of the VPC peering connection (`pending-acceptance` | `failed` | `expired` | `provisioning` | `active` | `deleting` | `deleted` | `rejected`).
  ///
  /// *   `status-message` \- A message that provides more information about the status of the VPC peering connection, if applicable.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `vpc-peering-connection-id` \- The ID of the VPC peering connection.
  _i3.BuiltList<Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the VPC peering connections.
  ///
  /// Default: Describes all your VPC peering connections.
  _i3.BuiltList<String>? get vpcPeeringConnectionIds;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;
  @override
  DescribeVpcPeeringConnectionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        dryRun,
        vpcPeeringConnectionIds,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVpcPeeringConnectionsRequest')
          ..add(
            'filters',
            filters,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'vpcPeeringConnectionIds',
            vpcPeeringConnectionIds,
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

class DescribeVpcPeeringConnectionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeVpcPeeringConnectionsRequest> {
  const DescribeVpcPeeringConnectionsRequestEc2QuerySerializer()
      : super('DescribeVpcPeeringConnectionsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVpcPeeringConnectionsRequest,
        _$DescribeVpcPeeringConnectionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcPeeringConnectionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcPeeringConnectionsRequestBuilder();
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
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'VpcPeeringConnectionId':
          result.vpcPeeringConnectionIds
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeVpcPeeringConnectionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeVpcPeeringConnectionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpcPeeringConnectionsRequest(
      :filters,
      :dryRun,
      :vpcPeeringConnectionIds,
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (vpcPeeringConnectionIds != null) {
      result$
        ..add(const _i1.XmlElementName('VpcPeeringConnectionId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpcPeeringConnectionIds,
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
    return result$;
  }
}
