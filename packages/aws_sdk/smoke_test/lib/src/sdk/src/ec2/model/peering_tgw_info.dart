// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.peering_tgw_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'peering_tgw_info.g.dart';

/// Information about the transit gateway in the peering attachment.
abstract class PeeringTgwInfo
    with _i1.AWSEquatable<PeeringTgwInfo>
    implements Built<PeeringTgwInfo, PeeringTgwInfoBuilder> {
  /// Information about the transit gateway in the peering attachment.
  factory PeeringTgwInfo({
    String? transitGatewayId,
    String? coreNetworkId,
    String? ownerId,
    String? region,
  }) {
    return _$PeeringTgwInfo._(
      transitGatewayId: transitGatewayId,
      coreNetworkId: coreNetworkId,
      ownerId: ownerId,
      region: region,
    );
  }

  /// Information about the transit gateway in the peering attachment.
  factory PeeringTgwInfo.build([void Function(PeeringTgwInfoBuilder) updates]) =
      _$PeeringTgwInfo;

  const PeeringTgwInfo._();

  static const List<_i2.SmithySerializer<PeeringTgwInfo>> serializers = [
    PeeringTgwInfoEc2QuerySerializer()
  ];

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The ID of the core network where the transit gateway peer is located.
  String? get coreNetworkId;

  /// The ID of the Amazon Web Services account that owns the transit gateway.
  String? get ownerId;

  /// The Region of the transit gateway.
  String? get region;
  @override
  List<Object?> get props => [
        transitGatewayId,
        coreNetworkId,
        ownerId,
        region,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PeeringTgwInfo')
      ..add(
        'transitGatewayId',
        transitGatewayId,
      )
      ..add(
        'coreNetworkId',
        coreNetworkId,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'region',
        region,
      );
    return helper.toString();
  }
}

class PeeringTgwInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PeeringTgwInfo> {
  const PeeringTgwInfoEc2QuerySerializer() : super('PeeringTgwInfo');

  @override
  Iterable<Type> get types => const [
        PeeringTgwInfo,
        _$PeeringTgwInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PeeringTgwInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PeeringTgwInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'coreNetworkId':
          result.coreNetworkId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'region':
          result.region = (serializers.deserialize(
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
    PeeringTgwInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PeeringTgwInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PeeringTgwInfo(:transitGatewayId, :coreNetworkId, :ownerId, :region) =
        object;
    if (transitGatewayId != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          transitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (coreNetworkId != null) {
      result$
        ..add(const _i2.XmlElementName('CoreNetworkId'))
        ..add(serializers.serialize(
          coreNetworkId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i2.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (region != null) {
      result$
        ..add(const _i2.XmlElementName('Region'))
        ..add(serializers.serialize(
          region,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
