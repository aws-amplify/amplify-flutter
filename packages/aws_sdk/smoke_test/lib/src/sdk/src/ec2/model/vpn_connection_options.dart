// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpn_connection_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tunnel_inside_ip_version.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tunnel_option.dart';

part 'vpn_connection_options.g.dart';

/// Describes VPN connection options.
abstract class VpnConnectionOptions
    with _i1.AWSEquatable<VpnConnectionOptions>
    implements Built<VpnConnectionOptions, VpnConnectionOptionsBuilder> {
  /// Describes VPN connection options.
  factory VpnConnectionOptions({
    bool? enableAcceleration,
    bool? staticRoutesOnly,
    String? localIpv4NetworkCidr,
    String? remoteIpv4NetworkCidr,
    String? localIpv6NetworkCidr,
    String? remoteIpv6NetworkCidr,
    String? outsideIpAddressType,
    String? transportTransitGatewayAttachmentId,
    TunnelInsideIpVersion? tunnelInsideIpVersion,
    List<TunnelOption>? tunnelOptions,
  }) {
    enableAcceleration ??= false;
    staticRoutesOnly ??= false;
    return _$VpnConnectionOptions._(
      enableAcceleration: enableAcceleration,
      staticRoutesOnly: staticRoutesOnly,
      localIpv4NetworkCidr: localIpv4NetworkCidr,
      remoteIpv4NetworkCidr: remoteIpv4NetworkCidr,
      localIpv6NetworkCidr: localIpv6NetworkCidr,
      remoteIpv6NetworkCidr: remoteIpv6NetworkCidr,
      outsideIpAddressType: outsideIpAddressType,
      transportTransitGatewayAttachmentId: transportTransitGatewayAttachmentId,
      tunnelInsideIpVersion: tunnelInsideIpVersion,
      tunnelOptions:
          tunnelOptions == null ? null : _i2.BuiltList(tunnelOptions),
    );
  }

  /// Describes VPN connection options.
  factory VpnConnectionOptions.build(
          [void Function(VpnConnectionOptionsBuilder) updates]) =
      _$VpnConnectionOptions;

  const VpnConnectionOptions._();

  static const List<_i3.SmithySerializer<VpnConnectionOptions>> serializers = [
    VpnConnectionOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpnConnectionOptionsBuilder b) {
    b
      ..enableAcceleration = false
      ..staticRoutesOnly = false;
  }

  /// Indicates whether acceleration is enabled for the VPN connection.
  bool get enableAcceleration;

  /// Indicates whether the VPN connection uses static routes only. Static routes must be used for devices that don't support BGP.
  bool get staticRoutesOnly;

  /// The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection.
  String? get localIpv4NetworkCidr;

  /// The IPv4 CIDR on the Amazon Web Services side of the VPN connection.
  String? get remoteIpv4NetworkCidr;

  /// The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection.
  String? get localIpv6NetworkCidr;

  /// The IPv6 CIDR on the Amazon Web Services side of the VPN connection.
  String? get remoteIpv6NetworkCidr;

  /// The type of IPv4 address assigned to the outside interface of the customer gateway.
  ///
  /// Valid values: `PrivateIpv4` | `PublicIpv4`
  ///
  /// Default: `PublicIpv4`
  String? get outsideIpAddressType;

  /// The transit gateway attachment ID in use for the VPN tunnel.
  String? get transportTransitGatewayAttachmentId;

  /// Indicates whether the VPN tunnels process IPv4 or IPv6 traffic.
  TunnelInsideIpVersion? get tunnelInsideIpVersion;

  /// Indicates the VPN tunnel options.
  _i2.BuiltList<TunnelOption>? get tunnelOptions;
  @override
  List<Object?> get props => [
        enableAcceleration,
        staticRoutesOnly,
        localIpv4NetworkCidr,
        remoteIpv4NetworkCidr,
        localIpv6NetworkCidr,
        remoteIpv6NetworkCidr,
        outsideIpAddressType,
        transportTransitGatewayAttachmentId,
        tunnelInsideIpVersion,
        tunnelOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpnConnectionOptions')
      ..add(
        'enableAcceleration',
        enableAcceleration,
      )
      ..add(
        'staticRoutesOnly',
        staticRoutesOnly,
      )
      ..add(
        'localIpv4NetworkCidr',
        localIpv4NetworkCidr,
      )
      ..add(
        'remoteIpv4NetworkCidr',
        remoteIpv4NetworkCidr,
      )
      ..add(
        'localIpv6NetworkCidr',
        localIpv6NetworkCidr,
      )
      ..add(
        'remoteIpv6NetworkCidr',
        remoteIpv6NetworkCidr,
      )
      ..add(
        'outsideIpAddressType',
        outsideIpAddressType,
      )
      ..add(
        'transportTransitGatewayAttachmentId',
        transportTransitGatewayAttachmentId,
      )
      ..add(
        'tunnelInsideIpVersion',
        tunnelInsideIpVersion,
      )
      ..add(
        'tunnelOptions',
        tunnelOptions,
      );
    return helper.toString();
  }
}

class VpnConnectionOptionsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VpnConnectionOptions> {
  const VpnConnectionOptionsEc2QuerySerializer()
      : super('VpnConnectionOptions');

  @override
  Iterable<Type> get types => const [
        VpnConnectionOptions,
        _$VpnConnectionOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnConnectionOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnConnectionOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'enableAcceleration':
          result.enableAcceleration = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'staticRoutesOnly':
          result.staticRoutesOnly = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'localIpv4NetworkCidr':
          result.localIpv4NetworkCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'remoteIpv4NetworkCidr':
          result.remoteIpv4NetworkCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localIpv6NetworkCidr':
          result.localIpv6NetworkCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'remoteIpv6NetworkCidr':
          result.remoteIpv6NetworkCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'outsideIpAddressType':
          result.outsideIpAddressType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transportTransitGatewayAttachmentId':
          result.transportTransitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tunnelInsideIpVersion':
          result.tunnelInsideIpVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(TunnelInsideIpVersion),
          ) as TunnelInsideIpVersion);
        case 'tunnelOptionSet':
          result.tunnelOptions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TunnelOption)],
            ),
          ) as _i2.BuiltList<TunnelOption>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VpnConnectionOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VpnConnectionOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpnConnectionOptions(
      :enableAcceleration,
      :staticRoutesOnly,
      :localIpv4NetworkCidr,
      :remoteIpv4NetworkCidr,
      :localIpv6NetworkCidr,
      :remoteIpv6NetworkCidr,
      :outsideIpAddressType,
      :transportTransitGatewayAttachmentId,
      :tunnelInsideIpVersion,
      :tunnelOptions
    ) = object;
    result$
      ..add(const _i3.XmlElementName('EnableAcceleration'))
      ..add(serializers.serialize(
        enableAcceleration,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i3.XmlElementName('StaticRoutesOnly'))
      ..add(serializers.serialize(
        staticRoutesOnly,
        specifiedType: const FullType(bool),
      ));
    if (localIpv4NetworkCidr != null) {
      result$
        ..add(const _i3.XmlElementName('LocalIpv4NetworkCidr'))
        ..add(serializers.serialize(
          localIpv4NetworkCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (remoteIpv4NetworkCidr != null) {
      result$
        ..add(const _i3.XmlElementName('RemoteIpv4NetworkCidr'))
        ..add(serializers.serialize(
          remoteIpv4NetworkCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (localIpv6NetworkCidr != null) {
      result$
        ..add(const _i3.XmlElementName('LocalIpv6NetworkCidr'))
        ..add(serializers.serialize(
          localIpv6NetworkCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (remoteIpv6NetworkCidr != null) {
      result$
        ..add(const _i3.XmlElementName('RemoteIpv6NetworkCidr'))
        ..add(serializers.serialize(
          remoteIpv6NetworkCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (outsideIpAddressType != null) {
      result$
        ..add(const _i3.XmlElementName('OutsideIpAddressType'))
        ..add(serializers.serialize(
          outsideIpAddressType,
          specifiedType: const FullType(String),
        ));
    }
    if (transportTransitGatewayAttachmentId != null) {
      result$
        ..add(const _i3.XmlElementName('TransportTransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transportTransitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (tunnelInsideIpVersion != null) {
      result$
        ..add(const _i3.XmlElementName('TunnelInsideIpVersion'))
        ..add(serializers.serialize(
          tunnelInsideIpVersion,
          specifiedType: const FullType(TunnelInsideIpVersion),
        ));
    }
    if (tunnelOptions != null) {
      result$
        ..add(const _i3.XmlElementName('TunnelOptionSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tunnelOptions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TunnelOption)],
          ),
        ));
    }
    return result$;
  }
}
