// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpn_gateways_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_vpn_gateways_request.g.dart';

/// Contains the parameters for DescribeVpnGateways.
abstract class DescribeVpnGatewaysRequest
    with
        _i1.HttpInput<DescribeVpnGatewaysRequest>,
        _i2.AWSEquatable<DescribeVpnGatewaysRequest>
    implements
        Built<DescribeVpnGatewaysRequest, DescribeVpnGatewaysRequestBuilder> {
  /// Contains the parameters for DescribeVpnGateways.
  factory DescribeVpnGatewaysRequest({
    List<Filter>? filters,
    List<String>? vpnGatewayIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DescribeVpnGatewaysRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      vpnGatewayIds:
          vpnGatewayIds == null ? null : _i3.BuiltList(vpnGatewayIds),
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for DescribeVpnGateways.
  factory DescribeVpnGatewaysRequest.build(
          [void Function(DescribeVpnGatewaysRequestBuilder) updates]) =
      _$DescribeVpnGatewaysRequest;

  const DescribeVpnGatewaysRequest._();

  factory DescribeVpnGatewaysRequest.fromRequest(
    DescribeVpnGatewaysRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeVpnGatewaysRequest>>
      serializers = [DescribeVpnGatewaysRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpnGatewaysRequestBuilder b) {
    b.dryRun = false;
  }

  /// One or more filters.
  ///
  /// *   `amazon-side-asn` \- The Autonomous System Number (ASN) for the Amazon side of the gateway.
  ///
  /// *   `attachment.state` \- The current state of the attachment between the gateway and the VPC (`attaching` | `attached` | `detaching` | `detached`).
  ///
  /// *   `attachment.vpc-id` \- The ID of an attached VPC.
  ///
  /// *   `availability-zone` \- The Availability Zone for the virtual private gateway (if applicable).
  ///
  /// *   `state` \- The state of the virtual private gateway (`pending` | `available` | `deleting` | `deleted`).
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `type` \- The type of virtual private gateway. Currently the only supported type is `ipsec.1`.
  ///
  /// *   `vpn-gateway-id` \- The ID of the virtual private gateway.
  _i3.BuiltList<Filter>? get filters;

  /// One or more virtual private gateway IDs.
  ///
  /// Default: Describes all your virtual private gateways.
  _i3.BuiltList<String>? get vpnGatewayIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeVpnGatewaysRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        vpnGatewayIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpnGatewaysRequest')
      ..add(
        'filters',
        filters,
      )
      ..add(
        'vpnGatewayIds',
        vpnGatewayIds,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DescribeVpnGatewaysRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeVpnGatewaysRequest> {
  const DescribeVpnGatewaysRequestEc2QuerySerializer()
      : super('DescribeVpnGatewaysRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVpnGatewaysRequest,
        _$DescribeVpnGatewaysRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpnGatewaysRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpnGatewaysRequestBuilder();
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
        case 'VpnGatewayId':
          result.vpnGatewayIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'VpnGatewayId',
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
    DescribeVpnGatewaysRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeVpnGatewaysRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpnGatewaysRequest(:filters, :vpnGatewayIds, :dryRun) =
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
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    if (vpnGatewayIds != null) {
      result$
        ..add(const _i1.XmlElementName('VpnGatewayId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'VpnGatewayId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          vpnGatewayIds,
          specifiedType: const FullType(
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
