// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpn_connection_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_vpn_connection_options_request.g.dart';

abstract class ModifyVpnConnectionOptionsRequest
    with
        _i1.HttpInput<ModifyVpnConnectionOptionsRequest>,
        _i2.AWSEquatable<ModifyVpnConnectionOptionsRequest>
    implements
        Built<ModifyVpnConnectionOptionsRequest,
            ModifyVpnConnectionOptionsRequestBuilder> {
  factory ModifyVpnConnectionOptionsRequest({
    String? vpnConnectionId,
    String? localIpv4NetworkCidr,
    String? remoteIpv4NetworkCidr,
    String? localIpv6NetworkCidr,
    String? remoteIpv6NetworkCidr,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyVpnConnectionOptionsRequest._(
      vpnConnectionId: vpnConnectionId,
      localIpv4NetworkCidr: localIpv4NetworkCidr,
      remoteIpv4NetworkCidr: remoteIpv4NetworkCidr,
      localIpv6NetworkCidr: localIpv6NetworkCidr,
      remoteIpv6NetworkCidr: remoteIpv6NetworkCidr,
      dryRun: dryRun,
    );
  }

  factory ModifyVpnConnectionOptionsRequest.build(
          [void Function(ModifyVpnConnectionOptionsRequestBuilder) updates]) =
      _$ModifyVpnConnectionOptionsRequest;

  const ModifyVpnConnectionOptionsRequest._();

  factory ModifyVpnConnectionOptionsRequest.fromRequest(
    ModifyVpnConnectionOptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyVpnConnectionOptionsRequest>>
      serializers = [ModifyVpnConnectionOptionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpnConnectionOptionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Site-to-Site VPN connection.
  String? get vpnConnectionId;

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

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyVpnConnectionOptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        vpnConnectionId,
        localIpv4NetworkCidr,
        remoteIpv4NetworkCidr,
        localIpv6NetworkCidr,
        remoteIpv6NetworkCidr,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVpnConnectionOptionsRequest')
          ..add(
            'vpnConnectionId',
            vpnConnectionId,
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
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class ModifyVpnConnectionOptionsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyVpnConnectionOptionsRequest> {
  const ModifyVpnConnectionOptionsRequestEc2QuerySerializer()
      : super('ModifyVpnConnectionOptionsRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpnConnectionOptionsRequest,
        _$ModifyVpnConnectionOptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpnConnectionOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpnConnectionOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VpnConnectionId':
          result.vpnConnectionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'DryRun':
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
    ModifyVpnConnectionOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpnConnectionOptionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpnConnectionOptionsRequest(
      :vpnConnectionId,
      :localIpv4NetworkCidr,
      :remoteIpv4NetworkCidr,
      :localIpv6NetworkCidr,
      :remoteIpv6NetworkCidr,
      :dryRun
    ) = object;
    if (vpnConnectionId != null) {
      result$
        ..add(const _i1.XmlElementName('VpnConnectionId'))
        ..add(serializers.serialize(
          vpnConnectionId,
          specifiedType: const FullType(String),
        ));
    }
    if (localIpv4NetworkCidr != null) {
      result$
        ..add(const _i1.XmlElementName('LocalIpv4NetworkCidr'))
        ..add(serializers.serialize(
          localIpv4NetworkCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (remoteIpv4NetworkCidr != null) {
      result$
        ..add(const _i1.XmlElementName('RemoteIpv4NetworkCidr'))
        ..add(serializers.serialize(
          remoteIpv4NetworkCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (localIpv6NetworkCidr != null) {
      result$
        ..add(const _i1.XmlElementName('LocalIpv6NetworkCidr'))
        ..add(serializers.serialize(
          localIpv6NetworkCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (remoteIpv6NetworkCidr != null) {
      result$
        ..add(const _i1.XmlElementName('RemoteIpv6NetworkCidr'))
        ..add(serializers.serialize(
          remoteIpv6NetworkCidr,
          specifiedType: const FullType(String),
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
