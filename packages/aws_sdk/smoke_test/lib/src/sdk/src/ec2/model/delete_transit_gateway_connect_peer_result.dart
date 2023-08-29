// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_transit_gateway_connect_peer_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer.dart';

part 'delete_transit_gateway_connect_peer_result.g.dart';

abstract class DeleteTransitGatewayConnectPeerResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayConnectPeerResult>
    implements
        Built<DeleteTransitGatewayConnectPeerResult,
            DeleteTransitGatewayConnectPeerResultBuilder> {
  factory DeleteTransitGatewayConnectPeerResult(
      {TransitGatewayConnectPeer? transitGatewayConnectPeer}) {
    return _$DeleteTransitGatewayConnectPeerResult._(
        transitGatewayConnectPeer: transitGatewayConnectPeer);
  }

  factory DeleteTransitGatewayConnectPeerResult.build(
      [void Function(DeleteTransitGatewayConnectPeerResultBuilder)
          updates]) = _$DeleteTransitGatewayConnectPeerResult;

  const DeleteTransitGatewayConnectPeerResult._();

  /// Constructs a [DeleteTransitGatewayConnectPeerResult] from a [payload] and [response].
  factory DeleteTransitGatewayConnectPeerResult.fromResponse(
    DeleteTransitGatewayConnectPeerResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteTransitGatewayConnectPeerResult>>
      serializers = [DeleteTransitGatewayConnectPeerResultEc2QuerySerializer()];

  /// Information about the deleted Connect peer.
  TransitGatewayConnectPeer? get transitGatewayConnectPeer;
  @override
  List<Object?> get props => [transitGatewayConnectPeer];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayConnectPeerResult')
          ..add(
            'transitGatewayConnectPeer',
            transitGatewayConnectPeer,
          );
    return helper.toString();
  }
}

class DeleteTransitGatewayConnectPeerResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DeleteTransitGatewayConnectPeerResult> {
  const DeleteTransitGatewayConnectPeerResultEc2QuerySerializer()
      : super('DeleteTransitGatewayConnectPeerResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayConnectPeerResult,
        _$DeleteTransitGatewayConnectPeerResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayConnectPeerResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayConnectPeerResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayConnectPeer':
          result.transitGatewayConnectPeer.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayConnectPeer),
          ) as TransitGatewayConnectPeer));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteTransitGatewayConnectPeerResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteTransitGatewayConnectPeerResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTransitGatewayConnectPeerResult(:transitGatewayConnectPeer) =
        object;
    if (transitGatewayConnectPeer != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayConnectPeer'))
        ..add(serializers.serialize(
          transitGatewayConnectPeer,
          specifiedType: const FullType(TransitGatewayConnectPeer),
        ));
    }
    return result$;
  }
}
