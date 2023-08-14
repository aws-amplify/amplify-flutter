// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.traffic_mirror_target; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_target_type.dart';

part 'traffic_mirror_target.g.dart';

/// Describes a Traffic Mirror target.
abstract class TrafficMirrorTarget
    with _i1.AWSEquatable<TrafficMirrorTarget>
    implements Built<TrafficMirrorTarget, TrafficMirrorTargetBuilder> {
  /// Describes a Traffic Mirror target.
  factory TrafficMirrorTarget({
    String? trafficMirrorTargetId,
    String? networkInterfaceId,
    String? networkLoadBalancerArn,
    TrafficMirrorTargetType? type,
    String? description,
    String? ownerId,
    List<Tag>? tags,
    String? gatewayLoadBalancerEndpointId,
  }) {
    return _$TrafficMirrorTarget._(
      trafficMirrorTargetId: trafficMirrorTargetId,
      networkInterfaceId: networkInterfaceId,
      networkLoadBalancerArn: networkLoadBalancerArn,
      type: type,
      description: description,
      ownerId: ownerId,
      tags: tags == null ? null : _i2.BuiltList(tags),
      gatewayLoadBalancerEndpointId: gatewayLoadBalancerEndpointId,
    );
  }

  /// Describes a Traffic Mirror target.
  factory TrafficMirrorTarget.build(
          [void Function(TrafficMirrorTargetBuilder) updates]) =
      _$TrafficMirrorTarget;

  const TrafficMirrorTarget._();

  static const List<_i3.SmithySerializer<TrafficMirrorTarget>> serializers = [
    TrafficMirrorTargetEc2QuerySerializer()
  ];

  /// The ID of the Traffic Mirror target.
  String? get trafficMirrorTargetId;

  /// The network interface ID that is attached to the target.
  String? get networkInterfaceId;

  /// The Amazon Resource Name (ARN) of the Network Load Balancer.
  String? get networkLoadBalancerArn;

  /// The type of Traffic Mirror target.
  TrafficMirrorTargetType? get type;

  /// Information about the Traffic Mirror target.
  String? get description;

  /// The ID of the account that owns the Traffic Mirror target.
  String? get ownerId;

  /// The tags assigned to the Traffic Mirror target.
  _i2.BuiltList<Tag>? get tags;

  /// The ID of the Gateway Load Balancer endpoint.
  String? get gatewayLoadBalancerEndpointId;
  @override
  List<Object?> get props => [
        trafficMirrorTargetId,
        networkInterfaceId,
        networkLoadBalancerArn,
        type,
        description,
        ownerId,
        tags,
        gatewayLoadBalancerEndpointId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TrafficMirrorTarget')
      ..add(
        'trafficMirrorTargetId',
        trafficMirrorTargetId,
      )
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      )
      ..add(
        'networkLoadBalancerArn',
        networkLoadBalancerArn,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'gatewayLoadBalancerEndpointId',
        gatewayLoadBalancerEndpointId,
      );
    return helper.toString();
  }
}

class TrafficMirrorTargetEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TrafficMirrorTarget> {
  const TrafficMirrorTargetEc2QuerySerializer() : super('TrafficMirrorTarget');

  @override
  Iterable<Type> get types => const [
        TrafficMirrorTarget,
        _$TrafficMirrorTarget,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TrafficMirrorTarget deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrafficMirrorTargetBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'trafficMirrorTargetId':
          result.trafficMirrorTargetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkLoadBalancerArn':
          result.networkLoadBalancerArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(TrafficMirrorTargetType),
          ) as TrafficMirrorTargetType);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'gatewayLoadBalancerEndpointId':
          result.gatewayLoadBalancerEndpointId = (serializers.deserialize(
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
    TrafficMirrorTarget object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TrafficMirrorTargetResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TrafficMirrorTarget(
      :trafficMirrorTargetId,
      :networkInterfaceId,
      :networkLoadBalancerArn,
      :type,
      :description,
      :ownerId,
      :tags,
      :gatewayLoadBalancerEndpointId
    ) = object;
    if (trafficMirrorTargetId != null) {
      result$
        ..add(const _i3.XmlElementName('TrafficMirrorTargetId'))
        ..add(serializers.serialize(
          trafficMirrorTargetId,
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
    if (networkLoadBalancerArn != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkLoadBalancerArn'))
        ..add(serializers.serialize(
          networkLoadBalancerArn,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i3.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(TrafficMirrorTargetType),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
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
    if (gatewayLoadBalancerEndpointId != null) {
      result$
        ..add(const _i3.XmlElementName('GatewayLoadBalancerEndpointId'))
        ..add(serializers.serialize(
          gatewayLoadBalancerEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
