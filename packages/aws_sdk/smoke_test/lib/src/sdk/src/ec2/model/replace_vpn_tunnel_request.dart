// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.replace_vpn_tunnel_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'replace_vpn_tunnel_request.g.dart';

abstract class ReplaceVpnTunnelRequest
    with
        _i1.HttpInput<ReplaceVpnTunnelRequest>,
        _i2.AWSEquatable<ReplaceVpnTunnelRequest>
    implements Built<ReplaceVpnTunnelRequest, ReplaceVpnTunnelRequestBuilder> {
  factory ReplaceVpnTunnelRequest({
    String? vpnConnectionId,
    String? vpnTunnelOutsideIpAddress,
    bool? applyPendingMaintenance,
    bool? dryRun,
  }) {
    applyPendingMaintenance ??= false;
    dryRun ??= false;
    return _$ReplaceVpnTunnelRequest._(
      vpnConnectionId: vpnConnectionId,
      vpnTunnelOutsideIpAddress: vpnTunnelOutsideIpAddress,
      applyPendingMaintenance: applyPendingMaintenance,
      dryRun: dryRun,
    );
  }

  factory ReplaceVpnTunnelRequest.build(
          [void Function(ReplaceVpnTunnelRequestBuilder) updates]) =
      _$ReplaceVpnTunnelRequest;

  const ReplaceVpnTunnelRequest._();

  factory ReplaceVpnTunnelRequest.fromRequest(
    ReplaceVpnTunnelRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ReplaceVpnTunnelRequest>> serializers =
      [ReplaceVpnTunnelRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplaceVpnTunnelRequestBuilder b) {
    b
      ..applyPendingMaintenance = false
      ..dryRun = false;
  }

  /// The ID of the Site-to-Site VPN connection.
  String? get vpnConnectionId;

  /// The external IP address of the VPN tunnel.
  String? get vpnTunnelOutsideIpAddress;

  /// Trigger pending tunnel endpoint maintenance.
  bool get applyPendingMaintenance;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ReplaceVpnTunnelRequest getPayload() => this;
  @override
  List<Object?> get props => [
        vpnConnectionId,
        vpnTunnelOutsideIpAddress,
        applyPendingMaintenance,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplaceVpnTunnelRequest')
      ..add(
        'vpnConnectionId',
        vpnConnectionId,
      )
      ..add(
        'vpnTunnelOutsideIpAddress',
        vpnTunnelOutsideIpAddress,
      )
      ..add(
        'applyPendingMaintenance',
        applyPendingMaintenance,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ReplaceVpnTunnelRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ReplaceVpnTunnelRequest> {
  const ReplaceVpnTunnelRequestEc2QuerySerializer()
      : super('ReplaceVpnTunnelRequest');

  @override
  Iterable<Type> get types => const [
        ReplaceVpnTunnelRequest,
        _$ReplaceVpnTunnelRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceVpnTunnelRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceVpnTunnelRequestBuilder();
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
        case 'VpnTunnelOutsideIpAddress':
          result.vpnTunnelOutsideIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ApplyPendingMaintenance':
          result.applyPendingMaintenance = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
    ReplaceVpnTunnelRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ReplaceVpnTunnelRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReplaceVpnTunnelRequest(
      :vpnConnectionId,
      :vpnTunnelOutsideIpAddress,
      :applyPendingMaintenance,
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
    if (vpnTunnelOutsideIpAddress != null) {
      result$
        ..add(const _i1.XmlElementName('VpnTunnelOutsideIpAddress'))
        ..add(serializers.serialize(
          vpnTunnelOutsideIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('ApplyPendingMaintenance'))
      ..add(serializers.serialize(
        applyPendingMaintenance,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
