// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.local_gateway_virtual_interface; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'local_gateway_virtual_interface.g.dart';

/// Describes a local gateway virtual interface.
abstract class LocalGatewayVirtualInterface
    with
        _i1.AWSEquatable<LocalGatewayVirtualInterface>
    implements
        Built<LocalGatewayVirtualInterface,
            LocalGatewayVirtualInterfaceBuilder> {
  /// Describes a local gateway virtual interface.
  factory LocalGatewayVirtualInterface({
    String? localGatewayVirtualInterfaceId,
    String? localGatewayId,
    int? vlan,
    String? localAddress,
    String? peerAddress,
    int? localBgpAsn,
    int? peerBgpAsn,
    String? ownerId,
    List<Tag>? tags,
  }) {
    vlan ??= 0;
    localBgpAsn ??= 0;
    peerBgpAsn ??= 0;
    return _$LocalGatewayVirtualInterface._(
      localGatewayVirtualInterfaceId: localGatewayVirtualInterfaceId,
      localGatewayId: localGatewayId,
      vlan: vlan,
      localAddress: localAddress,
      peerAddress: peerAddress,
      localBgpAsn: localBgpAsn,
      peerBgpAsn: peerBgpAsn,
      ownerId: ownerId,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a local gateway virtual interface.
  factory LocalGatewayVirtualInterface.build(
          [void Function(LocalGatewayVirtualInterfaceBuilder) updates]) =
      _$LocalGatewayVirtualInterface;

  const LocalGatewayVirtualInterface._();

  static const List<_i3.SmithySerializer<LocalGatewayVirtualInterface>>
      serializers = [LocalGatewayVirtualInterfaceEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LocalGatewayVirtualInterfaceBuilder b) {
    b
      ..vlan = 0
      ..localBgpAsn = 0
      ..peerBgpAsn = 0;
  }

  /// The ID of the virtual interface.
  String? get localGatewayVirtualInterfaceId;

  /// The ID of the local gateway.
  String? get localGatewayId;

  /// The ID of the VLAN.
  int get vlan;

  /// The local address.
  String? get localAddress;

  /// The peer address.
  String? get peerAddress;

  /// The Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the local gateway.
  int get localBgpAsn;

  /// The peer BGP ASN.
  int get peerBgpAsn;

  /// The ID of the Amazon Web Services account that owns the local gateway virtual interface.
  String? get ownerId;

  /// The tags assigned to the virtual interface.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        localGatewayVirtualInterfaceId,
        localGatewayId,
        vlan,
        localAddress,
        peerAddress,
        localBgpAsn,
        peerBgpAsn,
        ownerId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LocalGatewayVirtualInterface')
      ..add(
        'localGatewayVirtualInterfaceId',
        localGatewayVirtualInterfaceId,
      )
      ..add(
        'localGatewayId',
        localGatewayId,
      )
      ..add(
        'vlan',
        vlan,
      )
      ..add(
        'localAddress',
        localAddress,
      )
      ..add(
        'peerAddress',
        peerAddress,
      )
      ..add(
        'localBgpAsn',
        localBgpAsn,
      )
      ..add(
        'peerBgpAsn',
        peerBgpAsn,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class LocalGatewayVirtualInterfaceEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LocalGatewayVirtualInterface> {
  const LocalGatewayVirtualInterfaceEc2QuerySerializer()
      : super('LocalGatewayVirtualInterface');

  @override
  Iterable<Type> get types => const [
        LocalGatewayVirtualInterface,
        _$LocalGatewayVirtualInterface,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LocalGatewayVirtualInterface deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalGatewayVirtualInterfaceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'localGatewayVirtualInterfaceId':
          result.localGatewayVirtualInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localGatewayId':
          result.localGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vlan':
          result.vlan = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'localAddress':
          result.localAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'peerAddress':
          result.peerAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localBgpAsn':
          result.localBgpAsn = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'peerBgpAsn':
          result.peerBgpAsn = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LocalGatewayVirtualInterface object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LocalGatewayVirtualInterfaceResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LocalGatewayVirtualInterface(
      :localGatewayVirtualInterfaceId,
      :localGatewayId,
      :vlan,
      :localAddress,
      :peerAddress,
      :localBgpAsn,
      :peerBgpAsn,
      :ownerId,
      :tags
    ) = object;
    if (localGatewayVirtualInterfaceId != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayVirtualInterfaceId'))
        ..add(serializers.serialize(
          localGatewayVirtualInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayId != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayId'))
        ..add(serializers.serialize(
          localGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Vlan'))
      ..add(serializers.serialize(
        vlan,
        specifiedType: const FullType(int),
      ));
    if (localAddress != null) {
      result$
        ..add(const _i3.XmlElementName('LocalAddress'))
        ..add(serializers.serialize(
          localAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (peerAddress != null) {
      result$
        ..add(const _i3.XmlElementName('PeerAddress'))
        ..add(serializers.serialize(
          peerAddress,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('LocalBgpAsn'))
      ..add(serializers.serialize(
        localBgpAsn,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('PeerBgpAsn'))
      ..add(serializers.serialize(
        peerBgpAsn,
        specifiedType: const FullType(int),
      ));
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
