// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.revoke_client_vpn_ingress_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'revoke_client_vpn_ingress_request.g.dart';

abstract class RevokeClientVpnIngressRequest
    with
        _i1.HttpInput<RevokeClientVpnIngressRequest>,
        _i2.AWSEquatable<RevokeClientVpnIngressRequest>
    implements
        Built<RevokeClientVpnIngressRequest,
            RevokeClientVpnIngressRequestBuilder> {
  factory RevokeClientVpnIngressRequest({
    String? clientVpnEndpointId,
    String? targetNetworkCidr,
    String? accessGroupId,
    bool? revokeAllGroups,
    bool? dryRun,
  }) {
    revokeAllGroups ??= false;
    dryRun ??= false;
    return _$RevokeClientVpnIngressRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      targetNetworkCidr: targetNetworkCidr,
      accessGroupId: accessGroupId,
      revokeAllGroups: revokeAllGroups,
      dryRun: dryRun,
    );
  }

  factory RevokeClientVpnIngressRequest.build(
          [void Function(RevokeClientVpnIngressRequestBuilder) updates]) =
      _$RevokeClientVpnIngressRequest;

  const RevokeClientVpnIngressRequest._();

  factory RevokeClientVpnIngressRequest.fromRequest(
    RevokeClientVpnIngressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<RevokeClientVpnIngressRequest>>
      serializers = [RevokeClientVpnIngressRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RevokeClientVpnIngressRequestBuilder b) {
    b
      ..revokeAllGroups = false
      ..dryRun = false;
  }

  /// The ID of the Client VPN endpoint with which the authorization rule is associated.
  String? get clientVpnEndpointId;

  /// The IPv4 address range, in CIDR notation, of the network for which access is being removed.
  String? get targetNetworkCidr;

  /// The ID of the Active Directory group for which to revoke access.
  String? get accessGroupId;

  /// Indicates whether access should be revoked for all clients.
  bool get revokeAllGroups;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  RevokeClientVpnIngressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        targetNetworkCidr,
        accessGroupId,
        revokeAllGroups,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RevokeClientVpnIngressRequest')
      ..add(
        'clientVpnEndpointId',
        clientVpnEndpointId,
      )
      ..add(
        'targetNetworkCidr',
        targetNetworkCidr,
      )
      ..add(
        'accessGroupId',
        accessGroupId,
      )
      ..add(
        'revokeAllGroups',
        revokeAllGroups,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class RevokeClientVpnIngressRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RevokeClientVpnIngressRequest> {
  const RevokeClientVpnIngressRequestEc2QuerySerializer()
      : super('RevokeClientVpnIngressRequest');

  @override
  Iterable<Type> get types => const [
        RevokeClientVpnIngressRequest,
        _$RevokeClientVpnIngressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RevokeClientVpnIngressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevokeClientVpnIngressRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ClientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TargetNetworkCidr':
          result.targetNetworkCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AccessGroupId':
          result.accessGroupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RevokeAllGroups':
          result.revokeAllGroups = (serializers.deserialize(
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
    RevokeClientVpnIngressRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RevokeClientVpnIngressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RevokeClientVpnIngressRequest(
      :clientVpnEndpointId,
      :targetNetworkCidr,
      :accessGroupId,
      :revokeAllGroups,
      :dryRun
    ) = object;
    if (clientVpnEndpointId != null) {
      result$
        ..add(const _i1.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          clientVpnEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    if (targetNetworkCidr != null) {
      result$
        ..add(const _i1.XmlElementName('TargetNetworkCidr'))
        ..add(serializers.serialize(
          targetNetworkCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (accessGroupId != null) {
      result$
        ..add(const _i1.XmlElementName('AccessGroupId'))
        ..add(serializers.serialize(
          accessGroupId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('RevokeAllGroups'))
      ..add(serializers.serialize(
        revokeAllGroups,
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
