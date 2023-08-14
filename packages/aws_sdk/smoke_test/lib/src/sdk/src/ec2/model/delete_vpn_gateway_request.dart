// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_vpn_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_vpn_gateway_request.g.dart';

/// Contains the parameters for DeleteVpnGateway.
abstract class DeleteVpnGatewayRequest
    with
        _i1.HttpInput<DeleteVpnGatewayRequest>,
        _i2.AWSEquatable<DeleteVpnGatewayRequest>
    implements Built<DeleteVpnGatewayRequest, DeleteVpnGatewayRequestBuilder> {
  /// Contains the parameters for DeleteVpnGateway.
  factory DeleteVpnGatewayRequest({
    String? vpnGatewayId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteVpnGatewayRequest._(
      vpnGatewayId: vpnGatewayId,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for DeleteVpnGateway.
  factory DeleteVpnGatewayRequest.build(
          [void Function(DeleteVpnGatewayRequestBuilder) updates]) =
      _$DeleteVpnGatewayRequest;

  const DeleteVpnGatewayRequest._();

  factory DeleteVpnGatewayRequest.fromRequest(
    DeleteVpnGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteVpnGatewayRequest>> serializers =
      [DeleteVpnGatewayRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVpnGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the virtual private gateway.
  String? get vpnGatewayId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteVpnGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        vpnGatewayId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteVpnGatewayRequest')
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

class DeleteVpnGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteVpnGatewayRequest> {
  const DeleteVpnGatewayRequestEc2QuerySerializer()
      : super('DeleteVpnGatewayRequest');

  @override
  Iterable<Type> get types => const [
        DeleteVpnGatewayRequest,
        _$DeleteVpnGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVpnGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVpnGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    DeleteVpnGatewayRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteVpnGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteVpnGatewayRequest(:vpnGatewayId, :dryRun) = object;
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
