// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_transit_gateway_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_ecmp_support_value.dart';

part 'modify_transit_gateway_options.g.dart';

/// The transit gateway options.
abstract class ModifyTransitGatewayOptions
    with _i1.AWSEquatable<ModifyTransitGatewayOptions>
    implements
        Built<ModifyTransitGatewayOptions, ModifyTransitGatewayOptionsBuilder> {
  /// The transit gateway options.
  factory ModifyTransitGatewayOptions({
    List<String>? addTransitGatewayCidrBlocks,
    List<String>? removeTransitGatewayCidrBlocks,
    VpnEcmpSupportValue? vpnEcmpSupport,
    DnsSupportValue? dnsSupport,
    AutoAcceptSharedAttachmentsValue? autoAcceptSharedAttachments,
    DefaultRouteTableAssociationValue? defaultRouteTableAssociation,
    String? associationDefaultRouteTableId,
    DefaultRouteTablePropagationValue? defaultRouteTablePropagation,
    String? propagationDefaultRouteTableId,
    _i2.Int64? amazonSideAsn,
  }) {
    amazonSideAsn ??= _i2.Int64.ZERO;
    return _$ModifyTransitGatewayOptions._(
      addTransitGatewayCidrBlocks: addTransitGatewayCidrBlocks == null
          ? null
          : _i3.BuiltList(addTransitGatewayCidrBlocks),
      removeTransitGatewayCidrBlocks: removeTransitGatewayCidrBlocks == null
          ? null
          : _i3.BuiltList(removeTransitGatewayCidrBlocks),
      vpnEcmpSupport: vpnEcmpSupport,
      dnsSupport: dnsSupport,
      autoAcceptSharedAttachments: autoAcceptSharedAttachments,
      defaultRouteTableAssociation: defaultRouteTableAssociation,
      associationDefaultRouteTableId: associationDefaultRouteTableId,
      defaultRouteTablePropagation: defaultRouteTablePropagation,
      propagationDefaultRouteTableId: propagationDefaultRouteTableId,
      amazonSideAsn: amazonSideAsn,
    );
  }

  /// The transit gateway options.
  factory ModifyTransitGatewayOptions.build(
          [void Function(ModifyTransitGatewayOptionsBuilder) updates]) =
      _$ModifyTransitGatewayOptions;

  const ModifyTransitGatewayOptions._();

  static const List<_i4.SmithySerializer<ModifyTransitGatewayOptions>>
      serializers = [ModifyTransitGatewayOptionsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyTransitGatewayOptionsBuilder b) {
    b.amazonSideAsn = _i2.Int64.ZERO;
  }

  /// Adds IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.
  _i3.BuiltList<String>? get addTransitGatewayCidrBlocks;

  /// Removes CIDR blocks for the transit gateway.
  _i3.BuiltList<String>? get removeTransitGatewayCidrBlocks;

  /// Enable or disable Equal Cost Multipath Protocol support.
  VpnEcmpSupportValue? get vpnEcmpSupport;

  /// Enable or disable DNS support.
  DnsSupportValue? get dnsSupport;

  /// Enable or disable automatic acceptance of attachment requests.
  AutoAcceptSharedAttachmentsValue? get autoAcceptSharedAttachments;

  /// Enable or disable automatic association with the default association route table.
  DefaultRouteTableAssociationValue? get defaultRouteTableAssociation;

  /// The ID of the default association route table.
  String? get associationDefaultRouteTableId;

  /// Enable or disable automatic propagation of routes to the default propagation route table.
  DefaultRouteTablePropagationValue? get defaultRouteTablePropagation;

  /// The ID of the default propagation route table.
  String? get propagationDefaultRouteTableId;

  /// A private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs.
  ///
  /// The modify ASN operation is not allowed on a transit gateway with active BGP sessions. You must first delete all transit gateway attachments that have BGP configured prior to modifying the ASN on the transit gateway.
  _i2.Int64 get amazonSideAsn;
  @override
  List<Object?> get props => [
        addTransitGatewayCidrBlocks,
        removeTransitGatewayCidrBlocks,
        vpnEcmpSupport,
        dnsSupport,
        autoAcceptSharedAttachments,
        defaultRouteTableAssociation,
        associationDefaultRouteTableId,
        defaultRouteTablePropagation,
        propagationDefaultRouteTableId,
        amazonSideAsn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyTransitGatewayOptions')
      ..add(
        'addTransitGatewayCidrBlocks',
        addTransitGatewayCidrBlocks,
      )
      ..add(
        'removeTransitGatewayCidrBlocks',
        removeTransitGatewayCidrBlocks,
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
        'amazonSideAsn',
        amazonSideAsn,
      );
    return helper.toString();
  }
}

class ModifyTransitGatewayOptionsEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<ModifyTransitGatewayOptions> {
  const ModifyTransitGatewayOptionsEc2QuerySerializer()
      : super('ModifyTransitGatewayOptions');

  @override
  Iterable<Type> get types => const [
        ModifyTransitGatewayOptions,
        _$ModifyTransitGatewayOptions,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTransitGatewayOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTransitGatewayOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AddTransitGatewayCidrBlocks':
          result.addTransitGatewayCidrBlocks
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
        case 'RemoveTransitGatewayCidrBlocks':
          result.removeTransitGatewayCidrBlocks
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
        case 'AssociationDefaultRouteTableId':
          result.associationDefaultRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DefaultRouteTablePropagation':
          result.defaultRouteTablePropagation = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultRouteTablePropagationValue),
          ) as DefaultRouteTablePropagationValue);
        case 'PropagationDefaultRouteTableId':
          result.propagationDefaultRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AmazonSideAsn':
          result.amazonSideAsn = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyTransitGatewayOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ModifyTransitGatewayOptionsResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyTransitGatewayOptions(
      :addTransitGatewayCidrBlocks,
      :removeTransitGatewayCidrBlocks,
      :vpnEcmpSupport,
      :dnsSupport,
      :autoAcceptSharedAttachments,
      :defaultRouteTableAssociation,
      :associationDefaultRouteTableId,
      :defaultRouteTablePropagation,
      :propagationDefaultRouteTableId,
      :amazonSideAsn
    ) = object;
    if (addTransitGatewayCidrBlocks != null) {
      result$
        ..add(const _i4.XmlElementName('AddTransitGatewayCidrBlocks'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addTransitGatewayCidrBlocks,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (removeTransitGatewayCidrBlocks != null) {
      result$
        ..add(const _i4.XmlElementName('RemoveTransitGatewayCidrBlocks'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          removeTransitGatewayCidrBlocks,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
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
    result$
      ..add(const _i4.XmlElementName('AmazonSideAsn'))
      ..add(serializers.serialize(
        amazonSideAsn,
        specifiedType: const FullType(_i2.Int64),
      ));
    return result$;
  }
}
