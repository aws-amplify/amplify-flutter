// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_connect_peer_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer.dart';

part 'create_transit_gateway_connect_peer_result.g.dart';

abstract class CreateTransitGatewayConnectPeerResult
    with
        _i1.AWSEquatable<CreateTransitGatewayConnectPeerResult>
    implements
        Built<CreateTransitGatewayConnectPeerResult,
            CreateTransitGatewayConnectPeerResultBuilder> {
  factory CreateTransitGatewayConnectPeerResult(
      {TransitGatewayConnectPeer? transitGatewayConnectPeer}) {
    return _$CreateTransitGatewayConnectPeerResult._(
        transitGatewayConnectPeer: transitGatewayConnectPeer);
  }

  factory CreateTransitGatewayConnectPeerResult.build(
      [void Function(CreateTransitGatewayConnectPeerResultBuilder)
          updates]) = _$CreateTransitGatewayConnectPeerResult;

  const CreateTransitGatewayConnectPeerResult._();

  /// Constructs a [CreateTransitGatewayConnectPeerResult] from a [payload] and [response].
  factory CreateTransitGatewayConnectPeerResult.fromResponse(
    CreateTransitGatewayConnectPeerResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateTransitGatewayConnectPeerResult>>
      serializers = [CreateTransitGatewayConnectPeerResultEc2QuerySerializer()];

  /// Information about the Connect peer.
  TransitGatewayConnectPeer? get transitGatewayConnectPeer;
  @override
  List<Object?> get props => [transitGatewayConnectPeer];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayConnectPeerResult')
          ..add(
            'transitGatewayConnectPeer',
            transitGatewayConnectPeer,
          );
    return helper.toString();
  }
}

class CreateTransitGatewayConnectPeerResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CreateTransitGatewayConnectPeerResult> {
  const CreateTransitGatewayConnectPeerResultEc2QuerySerializer()
      : super('CreateTransitGatewayConnectPeerResult');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayConnectPeerResult,
        _$CreateTransitGatewayConnectPeerResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayConnectPeerResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayConnectPeerResultBuilder();
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
    CreateTransitGatewayConnectPeerResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateTransitGatewayConnectPeerResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayConnectPeerResult(:transitGatewayConnectPeer) =
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
