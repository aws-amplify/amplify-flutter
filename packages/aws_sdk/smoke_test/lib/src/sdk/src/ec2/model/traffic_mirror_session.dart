// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.traffic_mirror_session; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'traffic_mirror_session.g.dart';

/// Describes a Traffic Mirror session.
abstract class TrafficMirrorSession
    with _i1.AWSEquatable<TrafficMirrorSession>
    implements Built<TrafficMirrorSession, TrafficMirrorSessionBuilder> {
  /// Describes a Traffic Mirror session.
  factory TrafficMirrorSession({
    String? trafficMirrorSessionId,
    String? trafficMirrorTargetId,
    String? trafficMirrorFilterId,
    String? networkInterfaceId,
    String? ownerId,
    int? packetLength,
    int? sessionNumber,
    int? virtualNetworkId,
    String? description,
    List<Tag>? tags,
  }) {
    packetLength ??= 0;
    sessionNumber ??= 0;
    virtualNetworkId ??= 0;
    return _$TrafficMirrorSession._(
      trafficMirrorSessionId: trafficMirrorSessionId,
      trafficMirrorTargetId: trafficMirrorTargetId,
      trafficMirrorFilterId: trafficMirrorFilterId,
      networkInterfaceId: networkInterfaceId,
      ownerId: ownerId,
      packetLength: packetLength,
      sessionNumber: sessionNumber,
      virtualNetworkId: virtualNetworkId,
      description: description,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a Traffic Mirror session.
  factory TrafficMirrorSession.build(
          [void Function(TrafficMirrorSessionBuilder) updates]) =
      _$TrafficMirrorSession;

  const TrafficMirrorSession._();

  static const List<_i3.SmithySerializer<TrafficMirrorSession>> serializers = [
    TrafficMirrorSessionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TrafficMirrorSessionBuilder b) {
    b
      ..packetLength = 0
      ..sessionNumber = 0
      ..virtualNetworkId = 0;
  }

  /// The ID for the Traffic Mirror session.
  String? get trafficMirrorSessionId;

  /// The ID of the Traffic Mirror target.
  String? get trafficMirrorTargetId;

  /// The ID of the Traffic Mirror filter.
  String? get trafficMirrorFilterId;

  /// The ID of the Traffic Mirror session's network interface.
  String? get networkInterfaceId;

  /// The ID of the account that owns the Traffic Mirror session.
  String? get ownerId;

  /// The number of bytes in each packet to mirror. These are the bytes after the VXLAN header. To mirror a subset, set this to the length (in bytes) to mirror. For example, if you set this value to 100, then the first 100 bytes that meet the filter criteria are copied to the target. Do not specify this parameter when you want to mirror the entire packet
  int get packetLength;

  /// The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets.
  ///
  /// Valid values are 1-32766.
  int get sessionNumber;

  /// The virtual network ID associated with the Traffic Mirror session.
  int get virtualNetworkId;

  /// The description of the Traffic Mirror session.
  String? get description;

  /// The tags assigned to the Traffic Mirror session.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        trafficMirrorSessionId,
        trafficMirrorTargetId,
        trafficMirrorFilterId,
        networkInterfaceId,
        ownerId,
        packetLength,
        sessionNumber,
        virtualNetworkId,
        description,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TrafficMirrorSession')
      ..add(
        'trafficMirrorSessionId',
        trafficMirrorSessionId,
      )
      ..add(
        'trafficMirrorTargetId',
        trafficMirrorTargetId,
      )
      ..add(
        'trafficMirrorFilterId',
        trafficMirrorFilterId,
      )
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'packetLength',
        packetLength,
      )
      ..add(
        'sessionNumber',
        sessionNumber,
      )
      ..add(
        'virtualNetworkId',
        virtualNetworkId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TrafficMirrorSessionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TrafficMirrorSession> {
  const TrafficMirrorSessionEc2QuerySerializer()
      : super('TrafficMirrorSession');

  @override
  Iterable<Type> get types => const [
        TrafficMirrorSession,
        _$TrafficMirrorSession,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TrafficMirrorSession deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrafficMirrorSessionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'trafficMirrorSessionId':
          result.trafficMirrorSessionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'trafficMirrorTargetId':
          result.trafficMirrorTargetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'trafficMirrorFilterId':
          result.trafficMirrorFilterId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'packetLength':
          result.packetLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'sessionNumber':
          result.sessionNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'virtualNetworkId':
          result.virtualNetworkId = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'description':
          result.description = (serializers.deserialize(
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
    TrafficMirrorSession object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TrafficMirrorSessionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TrafficMirrorSession(
      :trafficMirrorSessionId,
      :trafficMirrorTargetId,
      :trafficMirrorFilterId,
      :networkInterfaceId,
      :ownerId,
      :packetLength,
      :sessionNumber,
      :virtualNetworkId,
      :description,
      :tags
    ) = object;
    if (trafficMirrorSessionId != null) {
      result$
        ..add(const _i3.XmlElementName('TrafficMirrorSessionId'))
        ..add(serializers.serialize(
          trafficMirrorSessionId,
          specifiedType: const FullType(String),
        ));
    }
    if (trafficMirrorTargetId != null) {
      result$
        ..add(const _i3.XmlElementName('TrafficMirrorTargetId'))
        ..add(serializers.serialize(
          trafficMirrorTargetId,
          specifiedType: const FullType(String),
        ));
    }
    if (trafficMirrorFilterId != null) {
      result$
        ..add(const _i3.XmlElementName('TrafficMirrorFilterId'))
        ..add(serializers.serialize(
          trafficMirrorFilterId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('PacketLength'))
      ..add(serializers.serialize(
        packetLength,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('SessionNumber'))
      ..add(serializers.serialize(
        sessionNumber,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('VirtualNetworkId'))
      ..add(serializers.serialize(
        virtualNetworkId,
        specifiedType: const FullType(int),
      ));
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
