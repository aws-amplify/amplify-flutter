// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_multicast_deregistered_group_members; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'transit_gateway_multicast_deregistered_group_members.g.dart';

/// Describes the deregistered transit gateway multicast group members.
abstract class TransitGatewayMulticastDeregisteredGroupMembers
    with
        _i1.AWSEquatable<TransitGatewayMulticastDeregisteredGroupMembers>
    implements
        Built<TransitGatewayMulticastDeregisteredGroupMembers,
            TransitGatewayMulticastDeregisteredGroupMembersBuilder> {
  /// Describes the deregistered transit gateway multicast group members.
  factory TransitGatewayMulticastDeregisteredGroupMembers({
    String? transitGatewayMulticastDomainId,
    List<String>? deregisteredNetworkInterfaceIds,
    String? groupIpAddress,
  }) {
    return _$TransitGatewayMulticastDeregisteredGroupMembers._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      deregisteredNetworkInterfaceIds: deregisteredNetworkInterfaceIds == null
          ? null
          : _i2.BuiltList(deregisteredNetworkInterfaceIds),
      groupIpAddress: groupIpAddress,
    );
  }

  /// Describes the deregistered transit gateway multicast group members.
  factory TransitGatewayMulticastDeregisteredGroupMembers.build(
      [void Function(TransitGatewayMulticastDeregisteredGroupMembersBuilder)
          updates]) = _$TransitGatewayMulticastDeregisteredGroupMembers;

  const TransitGatewayMulticastDeregisteredGroupMembers._();

  static const List<
          _i3.SmithySerializer<TransitGatewayMulticastDeregisteredGroupMembers>>
      serializers = [
    TransitGatewayMulticastDeregisteredGroupMembersEc2QuerySerializer()
  ];

  /// The ID of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainId;

  /// The network interface IDs of the deregistered members.
  _i2.BuiltList<String>? get deregisteredNetworkInterfaceIds;

  /// The IP address assigned to the transit gateway multicast group.
  String? get groupIpAddress;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomainId,
        deregisteredNetworkInterfaceIds,
        groupIpAddress,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'TransitGatewayMulticastDeregisteredGroupMembers')
      ..add(
        'transitGatewayMulticastDomainId',
        transitGatewayMulticastDomainId,
      )
      ..add(
        'deregisteredNetworkInterfaceIds',
        deregisteredNetworkInterfaceIds,
      )
      ..add(
        'groupIpAddress',
        groupIpAddress,
      );
    return helper.toString();
  }
}

class TransitGatewayMulticastDeregisteredGroupMembersEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        TransitGatewayMulticastDeregisteredGroupMembers> {
  const TransitGatewayMulticastDeregisteredGroupMembersEc2QuerySerializer()
      : super('TransitGatewayMulticastDeregisteredGroupMembers');

  @override
  Iterable<Type> get types => const [
        TransitGatewayMulticastDeregisteredGroupMembers,
        _$TransitGatewayMulticastDeregisteredGroupMembers,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayMulticastDeregisteredGroupMembers deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayMulticastDeregisteredGroupMembersBuilder();
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
        case 'deregisteredNetworkInterfaceIds':
          result.deregisteredNetworkInterfaceIds
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
    TransitGatewayMulticastDeregisteredGroupMembers object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayMulticastDeregisteredGroupMembersResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayMulticastDeregisteredGroupMembers(
      :transitGatewayMulticastDomainId,
      :deregisteredNetworkInterfaceIds,
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
    if (deregisteredNetworkInterfaceIds != null) {
      result$
        ..add(const _i3.XmlElementName('DeregisteredNetworkInterfaceIds'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          deregisteredNetworkInterfaceIds,
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
