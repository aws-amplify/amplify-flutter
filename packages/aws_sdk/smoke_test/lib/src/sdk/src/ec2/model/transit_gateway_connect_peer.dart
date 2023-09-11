// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_connect_peer; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer_state.dart';

part 'transit_gateway_connect_peer.g.dart';

/// Describes a transit gateway Connect peer.
abstract class TransitGatewayConnectPeer
    with _i1.AWSEquatable<TransitGatewayConnectPeer>
    implements
        Built<TransitGatewayConnectPeer, TransitGatewayConnectPeerBuilder> {
  /// Describes a transit gateway Connect peer.
  factory TransitGatewayConnectPeer({
    String? transitGatewayAttachmentId,
    String? transitGatewayConnectPeerId,
    TransitGatewayConnectPeerState? state,
    DateTime? creationTime,
    TransitGatewayConnectPeerConfiguration? connectPeerConfiguration,
    List<Tag>? tags,
  }) {
    return _$TransitGatewayConnectPeer._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      transitGatewayConnectPeerId: transitGatewayConnectPeerId,
      state: state,
      creationTime: creationTime,
      connectPeerConfiguration: connectPeerConfiguration,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a transit gateway Connect peer.
  factory TransitGatewayConnectPeer.build(
          [void Function(TransitGatewayConnectPeerBuilder) updates]) =
      _$TransitGatewayConnectPeer;

  const TransitGatewayConnectPeer._();

  static const List<_i3.SmithySerializer<TransitGatewayConnectPeer>>
      serializers = [TransitGatewayConnectPeerEc2QuerySerializer()];

  /// The ID of the Connect attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the Connect peer.
  String? get transitGatewayConnectPeerId;

  /// The state of the Connect peer.
  TransitGatewayConnectPeerState? get state;

  /// The creation time.
  DateTime? get creationTime;

  /// The Connect peer details.
  TransitGatewayConnectPeerConfiguration? get connectPeerConfiguration;

  /// The tags for the Connect peer.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        transitGatewayConnectPeerId,
        state,
        creationTime,
        connectPeerConfiguration,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayConnectPeer')
      ..add(
        'transitGatewayAttachmentId',
        transitGatewayAttachmentId,
      )
      ..add(
        'transitGatewayConnectPeerId',
        transitGatewayConnectPeerId,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'connectPeerConfiguration',
        connectPeerConfiguration,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TransitGatewayConnectPeerEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGatewayConnectPeer> {
  const TransitGatewayConnectPeerEc2QuerySerializer()
      : super('TransitGatewayConnectPeer');

  @override
  Iterable<Type> get types => const [
        TransitGatewayConnectPeer,
        _$TransitGatewayConnectPeer,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayConnectPeer deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayConnectPeerBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayConnectPeerId':
          result.transitGatewayConnectPeerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayConnectPeerState),
          ) as TransitGatewayConnectPeerState);
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'connectPeerConfiguration':
          result.connectPeerConfiguration.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(TransitGatewayConnectPeerConfiguration),
          ) as TransitGatewayConnectPeerConfiguration));
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
    TransitGatewayConnectPeer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayConnectPeerResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayConnectPeer(
      :transitGatewayAttachmentId,
      :transitGatewayConnectPeerId,
      :state,
      :creationTime,
      :connectPeerConfiguration,
      :tags
    ) = object;
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayConnectPeerId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayConnectPeerId'))
        ..add(serializers.serialize(
          transitGatewayConnectPeerId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(TransitGatewayConnectPeerState),
        ));
    }
    if (creationTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (connectPeerConfiguration != null) {
      result$
        ..add(const _i3.XmlElementName('ConnectPeerConfiguration'))
        ..add(serializers.serialize(
          connectPeerConfiguration,
          specifiedType: const FullType(TransitGatewayConnectPeerConfiguration),
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
