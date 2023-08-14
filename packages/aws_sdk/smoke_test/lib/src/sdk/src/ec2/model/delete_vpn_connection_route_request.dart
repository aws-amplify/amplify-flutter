// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_vpn_connection_route_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_vpn_connection_route_request.g.dart';

/// Contains the parameters for DeleteVpnConnectionRoute.
abstract class DeleteVpnConnectionRouteRequest
    with
        _i1.HttpInput<DeleteVpnConnectionRouteRequest>,
        _i2.AWSEquatable<DeleteVpnConnectionRouteRequest>
    implements
        Built<DeleteVpnConnectionRouteRequest,
            DeleteVpnConnectionRouteRequestBuilder> {
  /// Contains the parameters for DeleteVpnConnectionRoute.
  factory DeleteVpnConnectionRouteRequest({
    String? destinationCidrBlock,
    String? vpnConnectionId,
  }) {
    return _$DeleteVpnConnectionRouteRequest._(
      destinationCidrBlock: destinationCidrBlock,
      vpnConnectionId: vpnConnectionId,
    );
  }

  /// Contains the parameters for DeleteVpnConnectionRoute.
  factory DeleteVpnConnectionRouteRequest.build(
          [void Function(DeleteVpnConnectionRouteRequestBuilder) updates]) =
      _$DeleteVpnConnectionRouteRequest;

  const DeleteVpnConnectionRouteRequest._();

  factory DeleteVpnConnectionRouteRequest.fromRequest(
    DeleteVpnConnectionRouteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteVpnConnectionRouteRequest>>
      serializers = [DeleteVpnConnectionRouteRequestEc2QuerySerializer()];

  /// The CIDR block associated with the local subnet of the customer network.
  String? get destinationCidrBlock;

  /// The ID of the VPN connection.
  String? get vpnConnectionId;
  @override
  DeleteVpnConnectionRouteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        vpnConnectionId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteVpnConnectionRouteRequest')
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

class DeleteVpnConnectionRouteRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteVpnConnectionRouteRequest> {
  const DeleteVpnConnectionRouteRequestEc2QuerySerializer()
      : super('DeleteVpnConnectionRouteRequest');

  @override
  Iterable<Type> get types => const [
        DeleteVpnConnectionRouteRequest,
        _$DeleteVpnConnectionRouteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVpnConnectionRouteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVpnConnectionRouteRequestBuilder();
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
    DeleteVpnConnectionRouteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteVpnConnectionRouteRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteVpnConnectionRouteRequest(
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
