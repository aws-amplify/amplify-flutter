// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpn_tunnel_certificate_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection.dart';

part 'modify_vpn_tunnel_certificate_result.g.dart';

abstract class ModifyVpnTunnelCertificateResult
    with
        _i1.AWSEquatable<ModifyVpnTunnelCertificateResult>
    implements
        Built<ModifyVpnTunnelCertificateResult,
            ModifyVpnTunnelCertificateResultBuilder> {
  factory ModifyVpnTunnelCertificateResult({VpnConnection? vpnConnection}) {
    return _$ModifyVpnTunnelCertificateResult._(vpnConnection: vpnConnection);
  }

  factory ModifyVpnTunnelCertificateResult.build(
          [void Function(ModifyVpnTunnelCertificateResultBuilder) updates]) =
      _$ModifyVpnTunnelCertificateResult;

  const ModifyVpnTunnelCertificateResult._();

  /// Constructs a [ModifyVpnTunnelCertificateResult] from a [payload] and [response].
  factory ModifyVpnTunnelCertificateResult.fromResponse(
    ModifyVpnTunnelCertificateResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyVpnTunnelCertificateResult>>
      serializers = [ModifyVpnTunnelCertificateResultEc2QuerySerializer()];

  /// Information about the VPN connection.
  VpnConnection? get vpnConnection;
  @override
  List<Object?> get props => [vpnConnection];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVpnTunnelCertificateResult')
          ..add(
            'vpnConnection',
            vpnConnection,
          );
    return helper.toString();
  }
}

class ModifyVpnTunnelCertificateResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyVpnTunnelCertificateResult> {
  const ModifyVpnTunnelCertificateResultEc2QuerySerializer()
      : super('ModifyVpnTunnelCertificateResult');

  @override
  Iterable<Type> get types => const [
        ModifyVpnTunnelCertificateResult,
        _$ModifyVpnTunnelCertificateResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpnTunnelCertificateResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpnTunnelCertificateResultBuilder();
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
    ModifyVpnTunnelCertificateResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyVpnTunnelCertificateResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpnTunnelCertificateResult(:vpnConnection) = object;
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
