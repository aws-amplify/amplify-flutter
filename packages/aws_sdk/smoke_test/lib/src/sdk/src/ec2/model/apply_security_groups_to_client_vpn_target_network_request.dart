// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.apply_security_groups_to_client_vpn_target_network_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'apply_security_groups_to_client_vpn_target_network_request.g.dart';

abstract class ApplySecurityGroupsToClientVpnTargetNetworkRequest
    with
        _i1.HttpInput<ApplySecurityGroupsToClientVpnTargetNetworkRequest>,
        _i2.AWSEquatable<ApplySecurityGroupsToClientVpnTargetNetworkRequest>
    implements
        Built<ApplySecurityGroupsToClientVpnTargetNetworkRequest,
            ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder> {
  factory ApplySecurityGroupsToClientVpnTargetNetworkRequest({
    String? clientVpnEndpointId,
    String? vpcId,
    List<String>? securityGroupIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ApplySecurityGroupsToClientVpnTargetNetworkRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      vpcId: vpcId,
      securityGroupIds:
          securityGroupIds == null ? null : _i3.BuiltList(securityGroupIds),
      dryRun: dryRun,
    );
  }

  factory ApplySecurityGroupsToClientVpnTargetNetworkRequest.build(
      [void Function(ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder)
          updates]) = _$ApplySecurityGroupsToClientVpnTargetNetworkRequest;

  const ApplySecurityGroupsToClientVpnTargetNetworkRequest._();

  factory ApplySecurityGroupsToClientVpnTargetNetworkRequest.fromRequest(
    ApplySecurityGroupsToClientVpnTargetNetworkRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          ApplySecurityGroupsToClientVpnTargetNetworkRequest>> serializers = [
    ApplySecurityGroupsToClientVpnTargetNetworkRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Client VPN endpoint.
  String? get clientVpnEndpointId;

  /// The ID of the VPC in which the associated target network is located.
  String? get vpcId;

  /// The IDs of the security groups to apply to the associated target network. Up to 5 security groups can be applied to an associated target network.
  _i3.BuiltList<String>? get securityGroupIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ApplySecurityGroupsToClientVpnTargetNetworkRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        vpcId,
        securityGroupIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ApplySecurityGroupsToClientVpnTargetNetworkRequest')
      ..add(
        'clientVpnEndpointId',
        clientVpnEndpointId,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'securityGroupIds',
        securityGroupIds,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ApplySecurityGroupsToClientVpnTargetNetworkRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        ApplySecurityGroupsToClientVpnTargetNetworkRequest> {
  const ApplySecurityGroupsToClientVpnTargetNetworkRequestEc2QuerySerializer()
      : super('ApplySecurityGroupsToClientVpnTargetNetworkRequest');

  @override
  Iterable<Type> get types => const [
        ApplySecurityGroupsToClientVpnTargetNetworkRequest,
        _$ApplySecurityGroupsToClientVpnTargetNetworkRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ApplySecurityGroupsToClientVpnTargetNetworkRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder();
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
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SecurityGroupId':
          result.securityGroupIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
    ApplySecurityGroupsToClientVpnTargetNetworkRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ApplySecurityGroupsToClientVpnTargetNetworkRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ApplySecurityGroupsToClientVpnTargetNetworkRequest(
      :clientVpnEndpointId,
      :vpcId,
      :securityGroupIds,
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
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (securityGroupIds != null) {
      result$
        ..add(const _i1.XmlElementName('SecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
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
