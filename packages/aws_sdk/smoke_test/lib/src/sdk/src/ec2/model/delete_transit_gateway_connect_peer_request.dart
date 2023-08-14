// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_transit_gateway_connect_peer_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_transit_gateway_connect_peer_request.g.dart';

abstract class DeleteTransitGatewayConnectPeerRequest
    with
        _i1.HttpInput<DeleteTransitGatewayConnectPeerRequest>,
        _i2.AWSEquatable<DeleteTransitGatewayConnectPeerRequest>
    implements
        Built<DeleteTransitGatewayConnectPeerRequest,
            DeleteTransitGatewayConnectPeerRequestBuilder> {
  factory DeleteTransitGatewayConnectPeerRequest({
    String? transitGatewayConnectPeerId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteTransitGatewayConnectPeerRequest._(
      transitGatewayConnectPeerId: transitGatewayConnectPeerId,
      dryRun: dryRun,
    );
  }

  factory DeleteTransitGatewayConnectPeerRequest.build(
      [void Function(DeleteTransitGatewayConnectPeerRequestBuilder)
          updates]) = _$DeleteTransitGatewayConnectPeerRequest;

  const DeleteTransitGatewayConnectPeerRequest._();

  factory DeleteTransitGatewayConnectPeerRequest.fromRequest(
    DeleteTransitGatewayConnectPeerRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DeleteTransitGatewayConnectPeerRequest>>
      serializers = [
    DeleteTransitGatewayConnectPeerRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayConnectPeerRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Connect peer.
  String? get transitGatewayConnectPeerId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteTransitGatewayConnectPeerRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayConnectPeerId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayConnectPeerRequest')
          ..add(
            'transitGatewayConnectPeerId',
            transitGatewayConnectPeerId,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DeleteTransitGatewayConnectPeerRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteTransitGatewayConnectPeerRequest> {
  const DeleteTransitGatewayConnectPeerRequestEc2QuerySerializer()
      : super('DeleteTransitGatewayConnectPeerRequest');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayConnectPeerRequest,
        _$DeleteTransitGatewayConnectPeerRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayConnectPeerRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayConnectPeerRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayConnectPeerId':
          result.transitGatewayConnectPeerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    DeleteTransitGatewayConnectPeerRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteTransitGatewayConnectPeerRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTransitGatewayConnectPeerRequest(
      :transitGatewayConnectPeerId,
      :dryRun
    ) = object;
    if (transitGatewayConnectPeerId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayConnectPeerId'))
        ..add(serializers.serialize(
          transitGatewayConnectPeerId,
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
