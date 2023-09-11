// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_network_interfaces_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_network_interfaces_request.g.dart';

/// Contains the parameters for DescribeNetworkInterfaces.
abstract class DescribeNetworkInterfacesRequest
    with
        _i1.HttpInput<DescribeNetworkInterfacesRequest>,
        _i2.AWSEquatable<DescribeNetworkInterfacesRequest>
    implements
        Built<DescribeNetworkInterfacesRequest,
            DescribeNetworkInterfacesRequestBuilder> {
  /// Contains the parameters for DescribeNetworkInterfaces.
  factory DescribeNetworkInterfacesRequest({
    List<Filter>? filters,
    bool? dryRun,
    List<String>? networkInterfaceIds,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeNetworkInterfacesRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      dryRun: dryRun,
      networkInterfaceIds: networkInterfaceIds == null
          ? null
          : _i3.BuiltList(networkInterfaceIds),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  /// Contains the parameters for DescribeNetworkInterfaces.
  factory DescribeNetworkInterfacesRequest.build(
          [void Function(DescribeNetworkInterfacesRequestBuilder) updates]) =
      _$DescribeNetworkInterfacesRequest;

  const DescribeNetworkInterfacesRequest._();

  factory DescribeNetworkInterfacesRequest.fromRequest(
    DescribeNetworkInterfacesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeNetworkInterfacesRequest>>
      serializers = [DescribeNetworkInterfacesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkInterfacesRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// One or more filters.
  ///
  /// *   `addresses.private-ip-address` \- The private IPv4 addresses associated with the network interface.
  ///
  /// *   `addresses.primary` \- Whether the private IPv4 address is the primary IP address associated with the network interface.
  ///
  /// *   `addresses.association.public-ip` \- The association ID returned when the network interface was associated with the Elastic IP address (IPv4).
  ///
  /// *   `addresses.association.owner-id` \- The owner ID of the addresses associated with the network interface.
  ///
  /// *   `association.association-id` \- The association ID returned when the network interface was associated with an IPv4 address.
  ///
  /// *   `association.allocation-id` \- The allocation ID returned when you allocated the Elastic IP address (IPv4) for your network interface.
  ///
  /// *   `association.ip-owner-id` \- The owner of the Elastic IP address (IPv4) associated with the network interface.
  ///
  /// *   `association.public-ip` \- The address of the Elastic IP address (IPv4) bound to the network interface.
  ///
  /// *   `association.public-dns-name` \- The public DNS name for the network interface (IPv4).
  ///
  /// *   `attachment.attachment-id` \- The ID of the interface attachment.
  ///
  /// *   `attachment.attach-time` \- The time that the network interface was attached to an instance.
  ///
  /// *   `attachment.delete-on-termination` \- Indicates whether the attachment is deleted when an instance is terminated.
  ///
  /// *   `attachment.device-index` \- The device index to which the network interface is attached.
  ///
  /// *   `attachment.instance-id` \- The ID of the instance to which the network interface is attached.
  ///
  /// *   `attachment.instance-owner-id` \- The owner ID of the instance to which the network interface is attached.
  ///
  /// *   `attachment.status` \- The status of the attachment (`attaching` | `attached` | `detaching` | `detached`).
  ///
  /// *   `availability-zone` \- The Availability Zone of the network interface.
  ///
  /// *   `description` \- The description of the network interface.
  ///
  /// *   `group-id` \- The ID of a security group associated with the network interface.
  ///
  /// *   `group-name` \- The name of a security group associated with the network interface.
  ///
  /// *   `ipv6-addresses.ipv6-address` \- An IPv6 address associated with the network interface.
  ///
  /// *   `interface-type` \- The type of network interface (`api\_gateway\_managed` | `aws\_codestar\_connections_managed` | `branch` | `efa` | `gateway\_load\_balancer` | `gateway\_load\_balancer_endpoint` | `global\_accelerator\_managed` | `interface` | `iot\_rules\_managed` | `lambda` | `load_balancer` | `nat_gateway` | `network\_load\_balancer` | `quicksight` | `transit_gateway` | `trunk` | `vpc_endpoint`).
  ///
  /// *   `mac-address` \- The MAC address of the network interface.
  ///
  /// *   `network-interface-id` \- The ID of the network interface.
  ///
  /// *   `owner-id` \- The Amazon Web Services account ID of the network interface owner.
  ///
  /// *   `private-ip-address` \- The private IPv4 address or addresses of the network interface.
  ///
  /// *   `private-dns-name` \- The private DNS name of the network interface (IPv4).
  ///
  /// *   `requester-id` \- The alias or Amazon Web Services account ID of the principal or service that created the network interface.
  ///
  /// *   `requester-managed` \- Indicates whether the network interface is being managed by an Amazon Web Service (for example, Amazon Web Services Management Console, Auto Scaling, and so on).
  ///
  /// *   `source-dest-check` \- Indicates whether the network interface performs source/destination checking. A value of `true` means checking is enabled, and `false` means checking is disabled. The value must be `false` for the network interface to perform network address translation (NAT) in your VPC.
  ///
  /// *   `status` \- The status of the network interface. If the network interface is not attached to an instance, the status is `available`; if a network interface is attached to an instance the status is `in-use`.
  ///
  /// *   `subnet-id` \- The ID of the subnet for the network interface.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `vpc-id` \- The ID of the VPC for the network interface.
  _i3.BuiltList<Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The network interface IDs.
  ///
  /// Default: Describes all your network interfaces.
  _i3.BuiltList<String>? get networkInterfaceIds;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. You cannot specify this parameter and the network interface IDs parameter in the same request. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;
  @override
  DescribeNetworkInterfacesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        dryRun,
        networkInterfaceIds,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeNetworkInterfacesRequest')
          ..add(
            'filters',
            filters,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'networkInterfaceIds',
            networkInterfaceIds,
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

class DescribeNetworkInterfacesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeNetworkInterfacesRequest> {
  const DescribeNetworkInterfacesRequestEc2QuerySerializer()
      : super('DescribeNetworkInterfacesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInterfacesRequest,
        _$DescribeNetworkInterfacesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInterfacesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInterfacesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'filter':
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
        case 'NetworkInterfaceId':
          result.networkInterfaceIds.replace((const _i1.XmlBuiltListSerializer(
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
    DescribeNetworkInterfacesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeNetworkInterfacesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNetworkInterfacesRequest(
      :filters,
      :dryRun,
      :networkInterfaceIds,
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
          specifiedType: const FullType(
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
    if (networkInterfaceIds != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInterfaceIds,
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
    return result$;
  }
}
