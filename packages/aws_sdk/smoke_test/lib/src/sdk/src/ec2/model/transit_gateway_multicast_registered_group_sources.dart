// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_multicast_registered_group_sources; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'transit_gateway_multicast_registered_group_sources.g.dart';

/// Describes the members registered with the transit gateway multicast group.
abstract class TransitGatewayMulticastRegisteredGroupSources
    with
        _i1.AWSEquatable<TransitGatewayMulticastRegisteredGroupSources>
    implements
        Built<TransitGatewayMulticastRegisteredGroupSources,
            TransitGatewayMulticastRegisteredGroupSourcesBuilder> {
  /// Describes the members registered with the transit gateway multicast group.
  factory TransitGatewayMulticastRegisteredGroupSources({
    String? transitGatewayMulticastDomainId,
    List<String>? registeredNetworkInterfaceIds,
    String? groupIpAddress,
  }) {
    return _$TransitGatewayMulticastRegisteredGroupSources._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      registeredNetworkInterfaceIds: registeredNetworkInterfaceIds == null
          ? null
          : _i2.BuiltList(registeredNetworkInterfaceIds),
      groupIpAddress: groupIpAddress,
    );
  }

  /// Describes the members registered with the transit gateway multicast group.
  factory TransitGatewayMulticastRegisteredGroupSources.build(
      [void Function(TransitGatewayMulticastRegisteredGroupSourcesBuilder)
          updates]) = _$TransitGatewayMulticastRegisteredGroupSources;

  const TransitGatewayMulticastRegisteredGroupSources._();

  static const List<
          _i3.SmithySerializer<TransitGatewayMulticastRegisteredGroupSources>>
      serializers = [
    TransitGatewayMulticastRegisteredGroupSourcesEc2QuerySerializer()
  ];

  /// The ID of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainId;

  /// The IDs of the network interfaces members registered with the transit gateway multicast group.
  _i2.BuiltList<String>? get registeredNetworkInterfaceIds;

  /// The IP address assigned to the transit gateway multicast group.
  String? get groupIpAddress;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomainId,
        registeredNetworkInterfaceIds,
        groupIpAddress,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'TransitGatewayMulticastRegisteredGroupSources')
      ..add(
        'transitGatewayMulticastDomainId',
        transitGatewayMulticastDomainId,
      )
      ..add(
        'registeredNetworkInterfaceIds',
        registeredNetworkInterfaceIds,
      )
      ..add(
        'groupIpAddress',
        groupIpAddress,
      );
    return helper.toString();
  }
}

class TransitGatewayMulticastRegisteredGroupSourcesEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        TransitGatewayMulticastRegisteredGroupSources> {
  const TransitGatewayMulticastRegisteredGroupSourcesEc2QuerySerializer()
      : super('TransitGatewayMulticastRegisteredGroupSources');

  @override
  Iterable<Type> get types => const [
        TransitGatewayMulticastRegisteredGroupSources,
        _$TransitGatewayMulticastRegisteredGroupSources,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayMulticastRegisteredGroupSources deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayMulticastRegisteredGroupSourcesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayMulticastDomainId':
          result.transitGatewayMulticastDomainId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'registeredNetworkInterfaceIds':
          result.registeredNetworkInterfaceIds
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'groupIpAddress':
          result.groupIpAddress = (serializers.deserialize(
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
    TransitGatewayMulticastRegisteredGroupSources object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayMulticastRegisteredGroupSourcesResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayMulticastRegisteredGroupSources(
      :transitGatewayMulticastDomainId,
      :registeredNetworkInterfaceIds,
      :groupIpAddress
    ) = object;
    if (transitGatewayMulticastDomainId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayMulticastDomainId'))
        ..add(serializers.serialize(
          transitGatewayMulticastDomainId,
          specifiedType: const FullType(String),
        ));
    }
    if (registeredNetworkInterfaceIds != null) {
      result$
        ..add(const _i3.XmlElementName('RegisteredNetworkInterfaceIds'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          registeredNetworkInterfaceIds,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (groupIpAddress != null) {
      result$
        ..add(const _i3.XmlElementName('GroupIpAddress'))
        ..add(serializers.serialize(
          groupIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
