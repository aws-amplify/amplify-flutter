// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.detach_vpn_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'detach_vpn_gateway_request.g.dart';

/// Contains the parameters for DetachVpnGateway.
abstract class DetachVpnGatewayRequest
    with
        _i1.HttpInput<DetachVpnGatewayRequest>,
        _i2.AWSEquatable<DetachVpnGatewayRequest>
    implements Built<DetachVpnGatewayRequest, DetachVpnGatewayRequestBuilder> {
  /// Contains the parameters for DetachVpnGateway.
  factory DetachVpnGatewayRequest({
    String? vpcId,
    String? vpnGatewayId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DetachVpnGatewayRequest._(
      vpcId: vpcId,
      vpnGatewayId: vpnGatewayId,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for DetachVpnGateway.
  factory DetachVpnGatewayRequest.build(
          [void Function(DetachVpnGatewayRequestBuilder) updates]) =
      _$DetachVpnGatewayRequest;

  const DetachVpnGatewayRequest._();

  factory DetachVpnGatewayRequest.fromRequest(
    DetachVpnGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DetachVpnGatewayRequest>> serializers =
      [DetachVpnGatewayRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetachVpnGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the VPC.
  String? get vpcId;

  /// The ID of the virtual private gateway.
  String? get vpnGatewayId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DetachVpnGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        vpcId,
        vpnGatewayId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetachVpnGatewayRequest')
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'vpnGatewayId',
        vpnGatewayId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DetachVpnGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DetachVpnGatewayRequest> {
  const DetachVpnGatewayRequestEc2QuerySerializer()
      : super('DetachVpnGatewayRequest');

  @override
  Iterable<Type> get types => const [
        DetachVpnGatewayRequest,
        _$DetachVpnGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DetachVpnGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetachVpnGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VpnGatewayId':
          result.vpnGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
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
    DetachVpnGatewayRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DetachVpnGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DetachVpnGatewayRequest(:vpcId, :vpnGatewayId, :dryRun) = object;
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpnGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('VpnGatewayId'))
        ..add(serializers.serialize(
          vpnGatewayId,
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
