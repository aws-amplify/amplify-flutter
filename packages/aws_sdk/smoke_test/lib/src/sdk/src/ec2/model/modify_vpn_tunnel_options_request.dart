// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpn_tunnel_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_tunnel_options_specification.dart';

part 'modify_vpn_tunnel_options_request.g.dart';

abstract class ModifyVpnTunnelOptionsRequest
    with
        _i1.HttpInput<ModifyVpnTunnelOptionsRequest>,
        _i2.AWSEquatable<ModifyVpnTunnelOptionsRequest>
    implements
        Built<ModifyVpnTunnelOptionsRequest,
            ModifyVpnTunnelOptionsRequestBuilder> {
  factory ModifyVpnTunnelOptionsRequest({
    String? vpnConnectionId,
    String? vpnTunnelOutsideIpAddress,
    ModifyVpnTunnelOptionsSpecification? tunnelOptions,
    bool? dryRun,
    bool? skipTunnelReplacement,
  }) {
    dryRun ??= false;
    skipTunnelReplacement ??= false;
    return _$ModifyVpnTunnelOptionsRequest._(
      vpnConnectionId: vpnConnectionId,
      vpnTunnelOutsideIpAddress: vpnTunnelOutsideIpAddress,
      tunnelOptions: tunnelOptions,
      dryRun: dryRun,
      skipTunnelReplacement: skipTunnelReplacement,
    );
  }

  factory ModifyVpnTunnelOptionsRequest.build(
          [void Function(ModifyVpnTunnelOptionsRequestBuilder) updates]) =
      _$ModifyVpnTunnelOptionsRequest;

  const ModifyVpnTunnelOptionsRequest._();

  factory ModifyVpnTunnelOptionsRequest.fromRequest(
    ModifyVpnTunnelOptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyVpnTunnelOptionsRequest>>
      serializers = [ModifyVpnTunnelOptionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpnTunnelOptionsRequestBuilder b) {
    b
      ..dryRun = false
      ..skipTunnelReplacement = false;
  }

  /// The ID of the Amazon Web Services Site-to-Site VPN connection.
  String? get vpnConnectionId;

  /// The external IP address of the VPN tunnel.
  String? get vpnTunnelOutsideIpAddress;

  /// The tunnel options to modify.
  ModifyVpnTunnelOptionsSpecification? get tunnelOptions;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Choose whether or not to trigger immediate tunnel replacement.
  ///
  /// Valid values: `True` | `False`
  bool get skipTunnelReplacement;
  @override
  ModifyVpnTunnelOptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        vpnConnectionId,
        vpnTunnelOutsideIpAddress,
        tunnelOptions,
        dryRun,
        skipTunnelReplacement,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVpnTunnelOptionsRequest')
      ..add(
        'vpnConnectionId',
        vpnConnectionId,
      )
      ..add(
        'vpnTunnelOutsideIpAddress',
        vpnTunnelOutsideIpAddress,
      )
      ..add(
        'tunnelOptions',
        '***SENSITIVE***',
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'skipTunnelReplacement',
        skipTunnelReplacement,
      );
    return helper.toString();
  }
}

class ModifyVpnTunnelOptionsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyVpnTunnelOptionsRequest> {
  const ModifyVpnTunnelOptionsRequestEc2QuerySerializer()
      : super('ModifyVpnTunnelOptionsRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpnTunnelOptionsRequest,
        _$ModifyVpnTunnelOptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpnTunnelOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpnTunnelOptionsRequestBuilder();
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
        case 'TunnelOptions':
          result.tunnelOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ModifyVpnTunnelOptionsSpecification),
          ) as ModifyVpnTunnelOptionsSpecification));
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'SkipTunnelReplacement':
          result.skipTunnelReplacement = (serializers.deserialize(
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
    ModifyVpnTunnelOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpnTunnelOptionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpnTunnelOptionsRequest(
      :vpnConnectionId,
      :vpnTunnelOutsideIpAddress,
      :tunnelOptions,
      :dryRun,
      :skipTunnelReplacement
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
    if (tunnelOptions != null) {
      result$
        ..add(const _i1.XmlElementName('TunnelOptions'))
        ..add(serializers.serialize(
          tunnelOptions,
          specifiedType: const FullType(ModifyVpnTunnelOptionsSpecification),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('SkipTunnelReplacement'))
      ..add(serializers.serialize(
        skipTunnelReplacement,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
