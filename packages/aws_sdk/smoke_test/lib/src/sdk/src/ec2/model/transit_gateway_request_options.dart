// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_request_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/auto_accept_shared_attachments_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/default_route_table_association_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/default_route_table_propagation_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dns_support_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/multicast_support_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_ecmp_support_value.dart';

part 'transit_gateway_request_options.g.dart';

/// Describes the options for a transit gateway.
abstract class TransitGatewayRequestOptions
    with
        _i1.AWSEquatable<TransitGatewayRequestOptions>
    implements
        Built<TransitGatewayRequestOptions,
            TransitGatewayRequestOptionsBuilder> {
  /// Describes the options for a transit gateway.
  factory TransitGatewayRequestOptions({
    _i2.Int64? amazonSideAsn,
    AutoAcceptSharedAttachmentsValue? autoAcceptSharedAttachments,
    DefaultRouteTableAssociationValue? defaultRouteTableAssociation,
    DefaultRouteTablePropagationValue? defaultRouteTablePropagation,
    VpnEcmpSupportValue? vpnEcmpSupport,
    DnsSupportValue? dnsSupport,
    MulticastSupportValue? multicastSupport,
    List<String>? transitGatewayCidrBlocks,
  }) {
    amazonSideAsn ??= _i2.Int64.ZERO;
    return _$TransitGatewayRequestOptions._(
      amazonSideAsn: amazonSideAsn,
      autoAcceptSharedAttachments: autoAcceptSharedAttachments,
      defaultRouteTableAssociation: defaultRouteTableAssociation,
      defaultRouteTablePropagation: defaultRouteTablePropagation,
      vpnEcmpSupport: vpnEcmpSupport,
      dnsSupport: dnsSupport,
      multicastSupport: multicastSupport,
      transitGatewayCidrBlocks: transitGatewayCidrBlocks == null
          ? null
          : _i3.BuiltList(transitGatewayCidrBlocks),
    );
  }

  /// Describes the options for a transit gateway.
  factory TransitGatewayRequestOptions.build(
          [void Function(TransitGatewayRequestOptionsBuilder) updates]) =
      _$TransitGatewayRequestOptions;

  const TransitGatewayRequestOptions._();

  static const List<_i4.SmithySerializer<TransitGatewayRequestOptions>>
      serializers = [TransitGatewayRequestOptionsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayRequestOptionsBuilder b) {
    b.amazonSideAsn = _i2.Int64.ZERO;
  }

  /// A private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs. The default is `64512`.
  _i2.Int64 get amazonSideAsn;

  /// Enable or disable automatic acceptance of attachment requests. Disabled by default.
  AutoAcceptSharedAttachmentsValue? get autoAcceptSharedAttachments;

  /// Enable or disable automatic association with the default association route table. Enabled by default.
  DefaultRouteTableAssociationValue? get defaultRouteTableAssociation;

  /// Enable or disable automatic propagation of routes to the default propagation route table. Enabled by default.
  DefaultRouteTablePropagationValue? get defaultRouteTablePropagation;

  /// Enable or disable Equal Cost Multipath Protocol support. Enabled by default.
  VpnEcmpSupportValue? get vpnEcmpSupport;

  /// Enable or disable DNS support. Enabled by default.
  DnsSupportValue? get dnsSupport;

  /// Indicates whether multicast is enabled on the transit gateway
  MulticastSupportValue? get multicastSupport;

  /// One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.
  _i3.BuiltList<String>? get transitGatewayCidrBlocks;
  @override
  List<Object?> get props => [
        amazonSideAsn,
        autoAcceptSharedAttachments,
        defaultRouteTableAssociation,
        defaultRouteTablePropagation,
        vpnEcmpSupport,
        dnsSupport,
        multicastSupport,
        transitGatewayCidrBlocks,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayRequestOptions')
      ..add(
        'amazonSideAsn',
        amazonSideAsn,
      )
      ..add(
        'autoAcceptSharedAttachments',
        autoAcceptSharedAttachments,
      )
      ..add(
        'defaultRouteTableAssociation',
        defaultRouteTableAssociation,
      )
      ..add(
        'defaultRouteTablePropagation',
        defaultRouteTablePropagation,
      )
      ..add(
        'vpnEcmpSupport',
        vpnEcmpSupport,
      )
      ..add(
        'dnsSupport',
        dnsSupport,
      )
      ..add(
        'multicastSupport',
        multicastSupport,
      )
      ..add(
        'transitGatewayCidrBlocks',
        transitGatewayCidrBlocks,
      );
    return helper.toString();
  }
}

class TransitGatewayRequestOptionsEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<TransitGatewayRequestOptions> {
  const TransitGatewayRequestOptionsEc2QuerySerializer()
      : super('TransitGatewayRequestOptions');

  @override
  Iterable<Type> get types => const [
        TransitGatewayRequestOptions,
        _$TransitGatewayRequestOptions,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayRequestOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayRequestOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AmazonSideAsn':
          result.amazonSideAsn = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'AutoAcceptSharedAttachments':
          result.autoAcceptSharedAttachments = (serializers.deserialize(
            value,
            specifiedType: const FullType(AutoAcceptSharedAttachmentsValue),
          ) as AutoAcceptSharedAttachmentsValue);
        case 'DefaultRouteTableAssociation':
          result.defaultRouteTableAssociation = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultRouteTableAssociationValue),
          ) as DefaultRouteTableAssociationValue);
        case 'DefaultRouteTablePropagation':
          result.defaultRouteTablePropagation = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultRouteTablePropagationValue),
          ) as DefaultRouteTablePropagationValue);
        case 'VpnEcmpSupport':
          result.vpnEcmpSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(VpnEcmpSupportValue),
          ) as VpnEcmpSupportValue);
        case 'DnsSupport':
          result.dnsSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(DnsSupportValue),
          ) as DnsSupportValue);
        case 'MulticastSupport':
          result.multicastSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(MulticastSupportValue),
          ) as MulticastSupportValue);
        case 'TransitGatewayCidrBlocks':
          result.transitGatewayCidrBlocks
              .replace((const _i4.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i4.XmlIndexer.ec2QueryList,
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
    TransitGatewayRequestOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'TransitGatewayRequestOptionsResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayRequestOptions(
      :amazonSideAsn,
      :autoAcceptSharedAttachments,
      :defaultRouteTableAssociation,
      :defaultRouteTablePropagation,
      :vpnEcmpSupport,
      :dnsSupport,
      :multicastSupport,
      :transitGatewayCidrBlocks
    ) = object;
    result$
      ..add(const _i4.XmlElementName('AmazonSideAsn'))
      ..add(serializers.serialize(
        amazonSideAsn,
        specifiedType: const FullType(_i2.Int64),
      ));
    if (autoAcceptSharedAttachments != null) {
      result$
        ..add(const _i4.XmlElementName('AutoAcceptSharedAttachments'))
        ..add(serializers.serialize(
          autoAcceptSharedAttachments,
          specifiedType: const FullType(AutoAcceptSharedAttachmentsValue),
        ));
    }
    if (defaultRouteTableAssociation != null) {
      result$
        ..add(const _i4.XmlElementName('DefaultRouteTableAssociation'))
        ..add(serializers.serialize(
          defaultRouteTableAssociation,
          specifiedType: const FullType(DefaultRouteTableAssociationValue),
        ));
    }
    if (defaultRouteTablePropagation != null) {
      result$
        ..add(const _i4.XmlElementName('DefaultRouteTablePropagation'))
        ..add(serializers.serialize(
          defaultRouteTablePropagation,
          specifiedType: const FullType(DefaultRouteTablePropagationValue),
        ));
    }
    if (vpnEcmpSupport != null) {
      result$
        ..add(const _i4.XmlElementName('VpnEcmpSupport'))
        ..add(serializers.serialize(
          vpnEcmpSupport,
          specifiedType: const FullType(VpnEcmpSupportValue),
        ));
    }
    if (dnsSupport != null) {
      result$
        ..add(const _i4.XmlElementName('DnsSupport'))
        ..add(serializers.serialize(
          dnsSupport,
          specifiedType: const FullType(DnsSupportValue),
        ));
    }
    if (multicastSupport != null) {
      result$
        ..add(const _i4.XmlElementName('MulticastSupport'))
        ..add(serializers.serialize(
          multicastSupport,
          specifiedType: const FullType(MulticastSupportValue),
        ));
    }
    if (transitGatewayCidrBlocks != null) {
      result$
        ..add(const _i4.XmlElementName('TransitGatewayCidrBlocks'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayCidrBlocks,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
