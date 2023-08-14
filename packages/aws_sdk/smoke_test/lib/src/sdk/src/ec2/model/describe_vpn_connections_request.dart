// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpn_connections_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_vpn_connections_request.g.dart';

/// Contains the parameters for DescribeVpnConnections.
abstract class DescribeVpnConnectionsRequest
    with
        _i1.HttpInput<DescribeVpnConnectionsRequest>,
        _i2.AWSEquatable<DescribeVpnConnectionsRequest>
    implements
        Built<DescribeVpnConnectionsRequest,
            DescribeVpnConnectionsRequestBuilder> {
  /// Contains the parameters for DescribeVpnConnections.
  factory DescribeVpnConnectionsRequest({
    List<Filter>? filters,
    List<String>? vpnConnectionIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DescribeVpnConnectionsRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      vpnConnectionIds:
          vpnConnectionIds == null ? null : _i3.BuiltList(vpnConnectionIds),
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for DescribeVpnConnections.
  factory DescribeVpnConnectionsRequest.build(
          [void Function(DescribeVpnConnectionsRequestBuilder) updates]) =
      _$DescribeVpnConnectionsRequest;

  const DescribeVpnConnectionsRequest._();

  factory DescribeVpnConnectionsRequest.fromRequest(
    DescribeVpnConnectionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeVpnConnectionsRequest>>
      serializers = [DescribeVpnConnectionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpnConnectionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// One or more filters.
  ///
  /// *   `customer-gateway-configuration` \- The configuration information for the customer gateway.
  ///
  /// *   `customer-gateway-id` \- The ID of a customer gateway associated with the VPN connection.
  ///
  /// *   `state` \- The state of the VPN connection (`pending` | `available` | `deleting` | `deleted`).
  ///
  /// *   `option.static-routes-only` \- Indicates whether the connection has static routes only. Used for devices that do not support Border Gateway Protocol (BGP).
  ///
  /// *   `route.destination-cidr-block` \- The destination CIDR block. This corresponds to the subnet used in a customer data center.
  ///
  /// *   `bgp-asn` \- The BGP Autonomous System Number (ASN) associated with a BGP device.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `type` \- The type of VPN connection. Currently the only supported type is `ipsec.1`.
  ///
  /// *   `vpn-connection-id` \- The ID of the VPN connection.
  ///
  /// *   `vpn-gateway-id` \- The ID of a virtual private gateway associated with the VPN connection.
  ///
  /// *   `transit-gateway-id` \- The ID of a transit gateway associated with the VPN connection.
  _i3.BuiltList<Filter>? get filters;

  /// One or more VPN connection IDs.
  ///
  /// Default: Describes your VPN connections.
  _i3.BuiltList<String>? get vpnConnectionIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeVpnConnectionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        vpnConnectionIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpnConnectionsRequest')
      ..add(
        'filters',
        filters,
      )
      ..add(
        'vpnConnectionIds',
        vpnConnectionIds,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DescribeVpnConnectionsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeVpnConnectionsRequest> {
  const DescribeVpnConnectionsRequestEc2QuerySerializer()
      : super('DescribeVpnConnectionsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVpnConnectionsRequest,
        _$DescribeVpnConnectionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpnConnectionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpnConnectionsRequestBuilder();
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
        case 'VpnConnectionId':
          result.vpnConnectionIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'VpnConnectionId',
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeVpnConnectionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeVpnConnectionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpnConnectionsRequest(:filters, :vpnConnectionIds, :dryRun) =
        object;
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
    if (vpnConnectionIds != null) {
      result$
        ..add(const _i1.XmlElementName('VpnConnectionId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'VpnConnectionId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpnConnectionIds,
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
    return result$;
  }
}
