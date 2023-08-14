// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_vpn_connection_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_vpn_connection_request.g.dart';

/// Contains the parameters for DeleteVpnConnection.
abstract class DeleteVpnConnectionRequest
    with
        _i1.HttpInput<DeleteVpnConnectionRequest>,
        _i2.AWSEquatable<DeleteVpnConnectionRequest>
    implements
        Built<DeleteVpnConnectionRequest, DeleteVpnConnectionRequestBuilder> {
  /// Contains the parameters for DeleteVpnConnection.
  factory DeleteVpnConnectionRequest({
    String? vpnConnectionId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteVpnConnectionRequest._(
      vpnConnectionId: vpnConnectionId,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for DeleteVpnConnection.
  factory DeleteVpnConnectionRequest.build(
          [void Function(DeleteVpnConnectionRequestBuilder) updates]) =
      _$DeleteVpnConnectionRequest;

  const DeleteVpnConnectionRequest._();

  factory DeleteVpnConnectionRequest.fromRequest(
    DeleteVpnConnectionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteVpnConnectionRequest>>
      serializers = [DeleteVpnConnectionRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteVpnConnectionRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the VPN connection.
  String? get vpnConnectionId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteVpnConnectionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        vpnConnectionId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteVpnConnectionRequest')
      ..add(
        'vpnConnectionId',
        vpnConnectionId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DeleteVpnConnectionRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteVpnConnectionRequest> {
  const DeleteVpnConnectionRequestEc2QuerySerializer()
      : super('DeleteVpnConnectionRequest');

  @override
  Iterable<Type> get types => const [
        DeleteVpnConnectionRequest,
        _$DeleteVpnConnectionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteVpnConnectionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteVpnConnectionRequestBuilder();
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
    DeleteVpnConnectionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteVpnConnectionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteVpnConnectionRequest(:vpnConnectionId, :dryRun) = object;
    if (vpnConnectionId != null) {
      result$
        ..add(const _i1.XmlElementName('VpnConnectionId'))
        ..add(serializers.serialize(
          vpnConnectionId,
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
