// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpn_connection_options_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tunnel_inside_ip_version.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_tunnel_options_specification.dart';

part 'vpn_connection_options_specification.g.dart';

/// Describes VPN connection options.
abstract class VpnConnectionOptionsSpecification
    with
        _i1.AWSEquatable<VpnConnectionOptionsSpecification>
    implements
        Built<VpnConnectionOptionsSpecification,
            VpnConnectionOptionsSpecificationBuilder> {
  /// Describes VPN connection options.
  factory VpnConnectionOptionsSpecification({
    bool? enableAcceleration,
    bool? staticRoutesOnly,
    TunnelInsideIpVersion? tunnelInsideIpVersion,
    List<VpnTunnelOptionsSpecification>? tunnelOptions,
    String? localIpv4NetworkCidr,
    String? remoteIpv4NetworkCidr,
    String? localIpv6NetworkCidr,
    String? remoteIpv6NetworkCidr,
    String? outsideIpAddressType,
    String? transportTransitGatewayAttachmentId,
  }) {
    enableAcceleration ??= false;
    staticRoutesOnly ??= false;
    return _$VpnConnectionOptionsSpecification._(
      enableAcceleration: enableAcceleration,
      staticRoutesOnly: staticRoutesOnly,
      tunnelInsideIpVersion: tunnelInsideIpVersion,
      tunnelOptions:
          tunnelOptions == null ? null : _i2.BuiltList(tunnelOptions),
      localIpv4NetworkCidr: localIpv4NetworkCidr,
      remoteIpv4NetworkCidr: remoteIpv4NetworkCidr,
      localIpv6NetworkCidr: localIpv6NetworkCidr,
      remoteIpv6NetworkCidr: remoteIpv6NetworkCidr,
      outsideIpAddressType: outsideIpAddressType,
      transportTransitGatewayAttachmentId: transportTransitGatewayAttachmentId,
    );
  }

  /// Describes VPN connection options.
  factory VpnConnectionOptionsSpecification.build(
          [void Function(VpnConnectionOptionsSpecificationBuilder) updates]) =
      _$VpnConnectionOptionsSpecification;

  const VpnConnectionOptionsSpecification._();

  static const List<_i3.SmithySerializer<VpnConnectionOptionsSpecification>>
      serializers = [VpnConnectionOptionsSpecificationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpnConnectionOptionsSpecificationBuilder b) {
    b
      ..enableAcceleration = false
      ..staticRoutesOnly = false;
  }

  /// Indicate whether to enable acceleration for the VPN connection.
  ///
  /// Default: `false`
  bool get enableAcceleration;

  /// Indicate whether the VPN connection uses static routes only. If you are creating a VPN connection for a device that does not support BGP, you must specify `true`. Use CreateVpnConnectionRoute to create a static route.
  ///
  /// Default: `false`
  bool get staticRoutesOnly;

  /// Indicate whether the VPN tunnels process IPv4 or IPv6 traffic.
  ///
  /// Default: `ipv4`
  TunnelInsideIpVersion? get tunnelInsideIpVersion;

  /// The tunnel options for the VPN connection.
  _i2.BuiltList<VpnTunnelOptionsSpecification>? get tunnelOptions;

  /// The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection.
  ///
  /// Default: `0.0.0.0/0`
  String? get localIpv4NetworkCidr;

  /// The IPv4 CIDR on the Amazon Web Services side of the VPN connection.
  ///
  /// Default: `0.0.0.0/0`
  String? get remoteIpv4NetworkCidr;

  /// The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection.
  ///
  /// Default: `::/0`
  String? get localIpv6NetworkCidr;

  /// The IPv6 CIDR on the Amazon Web Services side of the VPN connection.
  ///
  /// Default: `::/0`
  String? get remoteIpv6NetworkCidr;

  /// The type of IPv4 address assigned to the outside interface of the customer gateway device.
  ///
  /// Valid values: `PrivateIpv4` | `PublicIpv4`
  ///
  /// Default: `PublicIpv4`
  String? get outsideIpAddressType;

  /// The transit gateway attachment ID to use for the VPN tunnel.
  ///
  /// Required if `OutsideIpAddressType` is set to `PrivateIpv4`.
  String? get transportTransitGatewayAttachmentId;
  @override
  List<Object?> get props => [
        enableAcceleration,
        staticRoutesOnly,
        tunnelInsideIpVersion,
        tunnelOptions,
        localIpv4NetworkCidr,
        remoteIpv4NetworkCidr,
        localIpv6NetworkCidr,
        remoteIpv6NetworkCidr,
        outsideIpAddressType,
        transportTransitGatewayAttachmentId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('VpnConnectionOptionsSpecification')
          ..add(
            'enableAcceleration',
            enableAcceleration,
          )
          ..add(
            'staticRoutesOnly',
            staticRoutesOnly,
          )
          ..add(
            'tunnelInsideIpVersion',
            tunnelInsideIpVersion,
          )
          ..add(
            'tunnelOptions',
            tunnelOptions,
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
          );
    return helper.toString();
  }
}

class VpnConnectionOptionsSpecificationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VpnConnectionOptionsSpecification> {
  const VpnConnectionOptionsSpecificationEc2QuerySerializer()
      : super('VpnConnectionOptionsSpecification');

  @override
  Iterable<Type> get types => const [
        VpnConnectionOptionsSpecification,
        _$VpnConnectionOptionsSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnConnectionOptionsSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnConnectionOptionsSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EnableAcceleration':
          result.enableAcceleration = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'staticRoutesOnly':
          result.staticRoutesOnly = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'TunnelInsideIpVersion':
          result.tunnelInsideIpVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(TunnelInsideIpVersion),
          ) as TunnelInsideIpVersion);
        case 'TunnelOptions':
          result.tunnelOptions.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VpnTunnelOptionsSpecification)],
            ),
          ) as _i2.BuiltList<VpnTunnelOptionsSpecification>));
        case 'LocalIpv4NetworkCidr':
          result.localIpv4NetworkCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RemoteIpv4NetworkCidr':
          result.remoteIpv4NetworkCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LocalIpv6NetworkCidr':
          result.localIpv6NetworkCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RemoteIpv6NetworkCidr':
          result.remoteIpv6NetworkCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OutsideIpAddressType':
          result.outsideIpAddressType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TransportTransitGatewayAttachmentId':
          result.transportTransitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VpnConnectionOptionsSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'VpnConnectionOptionsSpecificationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpnConnectionOptionsSpecification(
      :enableAcceleration,
      :staticRoutesOnly,
      :tunnelInsideIpVersion,
      :tunnelOptions,
      :localIpv4NetworkCidr,
      :remoteIpv4NetworkCidr,
      :localIpv6NetworkCidr,
      :remoteIpv6NetworkCidr,
      :outsideIpAddressType,
      :transportTransitGatewayAttachmentId
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
        ..add(const _i3.XmlElementName('TunnelOptions'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          tunnelOptions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(VpnTunnelOptionsSpecification)],
          ),
        ));
    }
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
    return result$;
  }
}
