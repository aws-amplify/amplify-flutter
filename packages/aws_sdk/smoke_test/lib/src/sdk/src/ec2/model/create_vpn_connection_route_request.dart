// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_vpn_connection_route_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_vpn_connection_route_request.g.dart';

/// Contains the parameters for CreateVpnConnectionRoute.
abstract class CreateVpnConnectionRouteRequest
    with
        _i1.HttpInput<CreateVpnConnectionRouteRequest>,
        _i2.AWSEquatable<CreateVpnConnectionRouteRequest>
    implements
        Built<CreateVpnConnectionRouteRequest,
            CreateVpnConnectionRouteRequestBuilder> {
  /// Contains the parameters for CreateVpnConnectionRoute.
  factory CreateVpnConnectionRouteRequest({
    String? destinationCidrBlock,
    String? vpnConnectionId,
  }) {
    return _$CreateVpnConnectionRouteRequest._(
      destinationCidrBlock: destinationCidrBlock,
      vpnConnectionId: vpnConnectionId,
    );
  }

  /// Contains the parameters for CreateVpnConnectionRoute.
  factory CreateVpnConnectionRouteRequest.build(
          [void Function(CreateVpnConnectionRouteRequestBuilder) updates]) =
      _$CreateVpnConnectionRouteRequest;

  const CreateVpnConnectionRouteRequest._();

  factory CreateVpnConnectionRouteRequest.fromRequest(
    CreateVpnConnectionRouteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateVpnConnectionRouteRequest>>
      serializers = [CreateVpnConnectionRouteRequestEc2QuerySerializer()];

  /// The CIDR block associated with the local subnet of the customer network.
  String? get destinationCidrBlock;

  /// The ID of the VPN connection.
  String? get vpnConnectionId;
  @override
  CreateVpnConnectionRouteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        vpnConnectionId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVpnConnectionRouteRequest')
          ..add(
            'destinationCidrBlock',
            destinationCidrBlock,
          )
          ..add(
            'vpnConnectionId',
            vpnConnectionId,
          );
    return helper.toString();
  }
}

class CreateVpnConnectionRouteRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateVpnConnectionRouteRequest> {
  const CreateVpnConnectionRouteRequestEc2QuerySerializer()
      : super('CreateVpnConnectionRouteRequest');

  @override
  Iterable<Type> get types => const [
        CreateVpnConnectionRouteRequest,
        _$CreateVpnConnectionRouteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpnConnectionRouteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpnConnectionRouteRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DestinationCidrBlock':
          result.destinationCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VpnConnectionId':
          result.vpnConnectionId = (serializers.deserialize(
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
    CreateVpnConnectionRouteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateVpnConnectionRouteRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVpnConnectionRouteRequest(
      :destinationCidrBlock,
      :vpnConnectionId
    ) = object;
    if (destinationCidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          destinationCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (vpnConnectionId != null) {
      result$
        ..add(const _i1.XmlElementName('VpnConnectionId'))
        ..add(serializers.serialize(
          vpnConnectionId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
