// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpn_connection_options_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection.dart';

part 'modify_vpn_connection_options_result.g.dart';

abstract class ModifyVpnConnectionOptionsResult
    with
        _i1.AWSEquatable<ModifyVpnConnectionOptionsResult>
    implements
        Built<ModifyVpnConnectionOptionsResult,
            ModifyVpnConnectionOptionsResultBuilder> {
  factory ModifyVpnConnectionOptionsResult({VpnConnection? vpnConnection}) {
    return _$ModifyVpnConnectionOptionsResult._(vpnConnection: vpnConnection);
  }

  factory ModifyVpnConnectionOptionsResult.build(
          [void Function(ModifyVpnConnectionOptionsResultBuilder) updates]) =
      _$ModifyVpnConnectionOptionsResult;

  const ModifyVpnConnectionOptionsResult._();

  /// Constructs a [ModifyVpnConnectionOptionsResult] from a [payload] and [response].
  factory ModifyVpnConnectionOptionsResult.fromResponse(
    ModifyVpnConnectionOptionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyVpnConnectionOptionsResult>>
      serializers = [ModifyVpnConnectionOptionsResultEc2QuerySerializer()];

  /// Information about the VPN connection.
  VpnConnection? get vpnConnection;
  @override
  List<Object?> get props => [vpnConnection];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVpnConnectionOptionsResult')
          ..add(
            'vpnConnection',
            vpnConnection,
          );
    return helper.toString();
  }
}

class ModifyVpnConnectionOptionsResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyVpnConnectionOptionsResult> {
  const ModifyVpnConnectionOptionsResultEc2QuerySerializer()
      : super('ModifyVpnConnectionOptionsResult');

  @override
  Iterable<Type> get types => const [
        ModifyVpnConnectionOptionsResult,
        _$ModifyVpnConnectionOptionsResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpnConnectionOptionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpnConnectionOptionsResultBuilder();
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
    ModifyVpnConnectionOptionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyVpnConnectionOptionsResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpnConnectionOptionsResult(:vpnConnection) = object;
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
