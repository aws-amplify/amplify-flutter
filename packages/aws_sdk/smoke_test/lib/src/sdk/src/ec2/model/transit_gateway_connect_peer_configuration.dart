// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_connect_peer_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/protocol_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_bgp_configuration.dart';

part 'transit_gateway_connect_peer_configuration.g.dart';

/// Describes the Connect peer details.
abstract class TransitGatewayConnectPeerConfiguration
    with
        _i1.AWSEquatable<TransitGatewayConnectPeerConfiguration>
    implements
        Built<TransitGatewayConnectPeerConfiguration,
            TransitGatewayConnectPeerConfigurationBuilder> {
  /// Describes the Connect peer details.
  factory TransitGatewayConnectPeerConfiguration({
    String? transitGatewayAddress,
    String? peerAddress,
    List<String>? insideCidrBlocks,
    ProtocolValue? protocol,
    List<TransitGatewayAttachmentBgpConfiguration>? bgpConfigurations,
  }) {
    return _$TransitGatewayConnectPeerConfiguration._(
      transitGatewayAddress: transitGatewayAddress,
      peerAddress: peerAddress,
      insideCidrBlocks:
          insideCidrBlocks == null ? null : _i2.BuiltList(insideCidrBlocks),
      protocol: protocol,
      bgpConfigurations:
          bgpConfigurations == null ? null : _i2.BuiltList(bgpConfigurations),
    );
  }

  /// Describes the Connect peer details.
  factory TransitGatewayConnectPeerConfiguration.build(
      [void Function(TransitGatewayConnectPeerConfigurationBuilder)
          updates]) = _$TransitGatewayConnectPeerConfiguration;

  const TransitGatewayConnectPeerConfiguration._();

  static const List<
          _i3.SmithySerializer<TransitGatewayConnectPeerConfiguration>>
      serializers = [
    TransitGatewayConnectPeerConfigurationEc2QuerySerializer()
  ];

  /// The Connect peer IP address on the transit gateway side of the tunnel.
  String? get transitGatewayAddress;

  /// The Connect peer IP address on the appliance side of the tunnel.
  String? get peerAddress;

  /// The range of interior BGP peer IP addresses.
  _i2.BuiltList<String>? get insideCidrBlocks;

  /// The tunnel protocol.
  ProtocolValue? get protocol;

  /// The BGP configuration details.
  _i2.BuiltList<TransitGatewayAttachmentBgpConfiguration>?
      get bgpConfigurations;
  @override
  List<Object?> get props => [
        transitGatewayAddress,
        peerAddress,
        insideCidrBlocks,
        protocol,
        bgpConfigurations,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayConnectPeerConfiguration')
          ..add(
            'transitGatewayAddress',
            transitGatewayAddress,
          )
          ..add(
            'peerAddress',
            peerAddress,
          )
          ..add(
            'insideCidrBlocks',
            insideCidrBlocks,
          )
          ..add(
            'protocol',
            protocol,
          )
          ..add(
            'bgpConfigurations',
            bgpConfigurations,
          );
    return helper.toString();
  }
}

class TransitGatewayConnectPeerConfigurationEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<TransitGatewayConnectPeerConfiguration> {
  const TransitGatewayConnectPeerConfigurationEc2QuerySerializer()
      : super('TransitGatewayConnectPeerConfiguration');

  @override
  Iterable<Type> get types => const [
        TransitGatewayConnectPeerConfiguration,
        _$TransitGatewayConnectPeerConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayConnectPeerConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayConnectPeerConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayAddress':
          result.transitGatewayAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'peerAddress':
          result.peerAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'insideCidrBlocks':
          result.insideCidrBlocks.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(ProtocolValue),
          ) as ProtocolValue);
        case 'bgpConfigurations':
          result.bgpConfigurations.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayAttachmentBgpConfiguration)],
            ),
          ) as _i2.BuiltList<TransitGatewayAttachmentBgpConfiguration>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayConnectPeerConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayConnectPeerConfigurationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayConnectPeerConfiguration(
      :transitGatewayAddress,
      :peerAddress,
      :insideCidrBlocks,
      :protocol,
      :bgpConfigurations
    ) = object;
    if (transitGatewayAddress != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayAddress'))
        ..add(serializers.serialize(
          transitGatewayAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (peerAddress != null) {
      result$
        ..add(const _i3.XmlElementName('PeerAddress'))
        ..add(serializers.serialize(
          peerAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (insideCidrBlocks != null) {
      result$
        ..add(const _i3.XmlElementName('InsideCidrBlocks'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          insideCidrBlocks,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (protocol != null) {
      result$
        ..add(const _i3.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType: const FullType.nullable(ProtocolValue),
        ));
    }
    if (bgpConfigurations != null) {
      result$
        ..add(const _i3.XmlElementName('BgpConfigurations'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          bgpConfigurations,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TransitGatewayAttachmentBgpConfiguration)],
          ),
        ));
    }
    return result$;
  }
}
