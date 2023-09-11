// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

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

part 'transit_gateway_options.g.dart';

/// Describes the options for a transit gateway.
abstract class TransitGatewayOptions
    with _i1.AWSEquatable<TransitGatewayOptions>
    implements Built<TransitGatewayOptions, TransitGatewayOptionsBuilder> {
  /// Describes the options for a transit gateway.
  factory TransitGatewayOptions({
    _i2.Int64? amazonSideAsn,
    List<String>? transitGatewayCidrBlocks,
    AutoAcceptSharedAttachmentsValue? autoAcceptSharedAttachments,
    DefaultRouteTableAssociationValue? defaultRouteTableAssociation,
    String? associationDefaultRouteTableId,
    DefaultRouteTablePropagationValue? defaultRouteTablePropagation,
    String? propagationDefaultRouteTableId,
    VpnEcmpSupportValue? vpnEcmpSupport,
    DnsSupportValue? dnsSupport,
    MulticastSupportValue? multicastSupport,
  }) {
    amazonSideAsn ??= _i2.Int64.ZERO;
    return _$TransitGatewayOptions._(
      amazonSideAsn: amazonSideAsn,
      transitGatewayCidrBlocks: transitGatewayCidrBlocks == null
          ? null
          : _i3.BuiltList(transitGatewayCidrBlocks),
      autoAcceptSharedAttachments: autoAcceptSharedAttachments,
      defaultRouteTableAssociation: defaultRouteTableAssociation,
      associationDefaultRouteTableId: associationDefaultRouteTableId,
      defaultRouteTablePropagation: defaultRouteTablePropagation,
      propagationDefaultRouteTableId: propagationDefaultRouteTableId,
      vpnEcmpSupport: vpnEcmpSupport,
      dnsSupport: dnsSupport,
      multicastSupport: multicastSupport,
    );
  }

  /// Describes the options for a transit gateway.
  factory TransitGatewayOptions.build(
          [void Function(TransitGatewayOptionsBuilder) updates]) =
      _$TransitGatewayOptions;

  const TransitGatewayOptions._();

  static const List<_i4.SmithySerializer<TransitGatewayOptions>> serializers = [
    TransitGatewayOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayOptionsBuilder b) {
    b.amazonSideAsn = _i2.Int64.ZERO;
  }

  /// A private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs.
  _i2.Int64 get amazonSideAsn;

  /// The transit gateway CIDR blocks.
  _i3.BuiltList<String>? get transitGatewayCidrBlocks;

  /// Indicates whether attachment requests are automatically accepted.
  AutoAcceptSharedAttachmentsValue? get autoAcceptSharedAttachments;

  /// Indicates whether resource attachments are automatically associated with the default association route table.
  DefaultRouteTableAssociationValue? get defaultRouteTableAssociation;

  /// The ID of the default association route table.
  String? get associationDefaultRouteTableId;

  /// Indicates whether resource attachments automatically propagate routes to the default propagation route table.
  DefaultRouteTablePropagationValue? get defaultRouteTablePropagation;

  /// The ID of the default propagation route table.
  String? get propagationDefaultRouteTableId;

  /// Indicates whether Equal Cost Multipath Protocol support is enabled.
  VpnEcmpSupportValue? get vpnEcmpSupport;

  /// Indicates whether DNS support is enabled.
  DnsSupportValue? get dnsSupport;

  /// Indicates whether multicast is enabled on the transit gateway
  MulticastSupportValue? get multicastSupport;
  @override
  List<Object?> get props => [
        amazonSideAsn,
        transitGatewayCidrBlocks,
        autoAcceptSharedAttachments,
        defaultRouteTableAssociation,
        associationDefaultRouteTableId,
        defaultRouteTablePropagation,
        propagationDefaultRouteTableId,
        vpnEcmpSupport,
        dnsSupport,
        multicastSupport,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayOptions')
      ..add(
        'amazonSideAsn',
        amazonSideAsn,
      )
      ..add(
        'transitGatewayCidrBlocks',
        transitGatewayCidrBlocks,
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
        'associationDefaultRouteTableId',
        associationDefaultRouteTableId,
      )
      ..add(
        'defaultRouteTablePropagation',
        defaultRouteTablePropagation,
      )
      ..add(
        'propagationDefaultRouteTableId',
        propagationDefaultRouteTableId,
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
      );
    return helper.toString();
  }
}

class TransitGatewayOptionsEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<TransitGatewayOptions> {
  const TransitGatewayOptionsEc2QuerySerializer()
      : super('TransitGatewayOptions');

  @override
  Iterable<Type> get types => const [
        TransitGatewayOptions,
        _$TransitGatewayOptions,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'amazonSideAsn':
          result.amazonSideAsn = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'transitGatewayCidrBlocks':
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
        case 'autoAcceptSharedAttachments':
          result.autoAcceptSharedAttachments = (serializers.deserialize(
            value,
            specifiedType: const FullType(AutoAcceptSharedAttachmentsValue),
          ) as AutoAcceptSharedAttachmentsValue);
        case 'defaultRouteTableAssociation':
          result.defaultRouteTableAssociation = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultRouteTableAssociationValue),
          ) as DefaultRouteTableAssociationValue);
        case 'associationDefaultRouteTableId':
          result.associationDefaultRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'defaultRouteTablePropagation':
          result.defaultRouteTablePropagation = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultRouteTablePropagationValue),
          ) as DefaultRouteTablePropagationValue);
        case 'propagationDefaultRouteTableId':
          result.propagationDefaultRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpnEcmpSupport':
          result.vpnEcmpSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(VpnEcmpSupportValue),
          ) as VpnEcmpSupportValue);
        case 'dnsSupport':
          result.dnsSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(DnsSupportValue),
          ) as DnsSupportValue);
        case 'multicastSupport':
          result.multicastSupport = (serializers.deserialize(
            value,
            specifiedType: const FullType(MulticastSupportValue),
          ) as MulticastSupportValue);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'TransitGatewayOptionsResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayOptions(
      :amazonSideAsn,
      :transitGatewayCidrBlocks,
      :autoAcceptSharedAttachments,
      :defaultRouteTableAssociation,
      :associationDefaultRouteTableId,
      :defaultRouteTablePropagation,
      :propagationDefaultRouteTableId,
      :vpnEcmpSupport,
      :dnsSupport,
      :multicastSupport
    ) = object;
    result$
      ..add(const _i4.XmlElementName('AmazonSideAsn'))
      ..add(serializers.serialize(
        amazonSideAsn,
        specifiedType: const FullType(_i2.Int64),
      ));
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
    if (associationDefaultRouteTableId != null) {
      result$
        ..add(const _i4.XmlElementName('AssociationDefaultRouteTableId'))
        ..add(serializers.serialize(
          associationDefaultRouteTableId,
          specifiedType: const FullType(String),
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
    if (propagationDefaultRouteTableId != null) {
      result$
        ..add(const _i4.XmlElementName('PropagationDefaultRouteTableId'))
        ..add(serializers.serialize(
          propagationDefaultRouteTableId,
          specifiedType: const FullType(String),
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
    return result$;
  }
}
