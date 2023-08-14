// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpn_tunnel_options_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection.dart';

part 'modify_vpn_tunnel_options_result.g.dart';

abstract class ModifyVpnTunnelOptionsResult
    with
        _i1.AWSEquatable<ModifyVpnTunnelOptionsResult>
    implements
        Built<ModifyVpnTunnelOptionsResult,
            ModifyVpnTunnelOptionsResultBuilder> {
  factory ModifyVpnTunnelOptionsResult({VpnConnection? vpnConnection}) {
    return _$ModifyVpnTunnelOptionsResult._(vpnConnection: vpnConnection);
  }

  factory ModifyVpnTunnelOptionsResult.build(
          [void Function(ModifyVpnTunnelOptionsResultBuilder) updates]) =
      _$ModifyVpnTunnelOptionsResult;

  const ModifyVpnTunnelOptionsResult._();

  /// Constructs a [ModifyVpnTunnelOptionsResult] from a [payload] and [response].
  factory ModifyVpnTunnelOptionsResult.fromResponse(
    ModifyVpnTunnelOptionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyVpnTunnelOptionsResult>>
      serializers = [ModifyVpnTunnelOptionsResultEc2QuerySerializer()];

  /// Information about the VPN connection.
  VpnConnection? get vpnConnection;
  @override
  List<Object?> get props => [vpnConnection];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVpnTunnelOptionsResult')
      ..add(
        'vpnConnection',
        vpnConnection,
      );
    return helper.toString();
  }
}

class ModifyVpnTunnelOptionsResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyVpnTunnelOptionsResult> {
  const ModifyVpnTunnelOptionsResultEc2QuerySerializer()
      : super('ModifyVpnTunnelOptionsResult');

  @override
  Iterable<Type> get types => const [
        ModifyVpnTunnelOptionsResult,
        _$ModifyVpnTunnelOptionsResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpnTunnelOptionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpnTunnelOptionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'vpnConnection':
          result.vpnConnection.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VpnConnection),
          ) as VpnConnection));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVpnTunnelOptionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyVpnTunnelOptionsResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpnTunnelOptionsResult(:vpnConnection) = object;
    if (vpnConnection != null) {
      result$
        ..add(const _i2.XmlElementName('VpnConnection'))
        ..add(serializers.serialize(
          vpnConnection,
          specifiedType: const FullType(VpnConnection),
        ));
    }
    return result$;
  }
}
