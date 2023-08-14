// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status_event.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status_summary.dart';

part 'instance_status.g.dart';

/// Describes the status of an instance.
abstract class InstanceStatus
    with _i1.AWSEquatable<InstanceStatus>
    implements Built<InstanceStatus, InstanceStatusBuilder> {
  /// Describes the status of an instance.
  factory InstanceStatus({
    String? availabilityZone,
    String? outpostArn,
    List<InstanceStatusEvent>? events,
    String? instanceId,
    InstanceState? instanceState,
    InstanceStatusSummary? instanceStatus,
    InstanceStatusSummary? systemStatus,
  }) {
    return _$InstanceStatus._(
      availabilityZone: availabilityZone,
      outpostArn: outpostArn,
      events: events == null ? null : _i2.BuiltList(events),
      instanceId: instanceId,
      instanceState: instanceState,
      instanceStatus: instanceStatus,
      systemStatus: systemStatus,
    );
  }

  /// Describes the status of an instance.
  factory InstanceStatus.build([void Function(InstanceStatusBuilder) updates]) =
      _$InstanceStatus;

  const InstanceStatus._();

  static const List<_i3.SmithySerializer<InstanceStatus>> serializers = [
    InstanceStatusEc2QuerySerializer()
  ];

  /// The Availability Zone of the instance.
  String? get availabilityZone;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// Any scheduled events associated with the instance.
  _i2.BuiltList<InstanceStatusEvent>? get events;

  /// The ID of the instance.
  String? get instanceId;

  /// The intended state of the instance. DescribeInstanceStatus requires that an instance be in the `running` state.
  InstanceState? get instanceState;

  /// Reports impaired functionality that stems from issues internal to the instance, such as impaired reachability.
  InstanceStatusSummary? get instanceStatus;

  /// Reports impaired functionality that stems from issues related to the systems that support an instance, such as hardware failures and network connectivity problems.
  InstanceStatusSummary? get systemStatus;
  @override
  List<Object?> get props => [
        availabilityZone,
        outpostArn,
        events,
        instanceId,
        instanceState,
        instanceStatus,
        systemStatus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceStatus')
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'events',
        events,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'instanceState',
        instanceState,
      )
      ..add(
        'instanceStatus',
        instanceStatus,
      )
      ..add(
        'systemStatus',
        systemStatus,
      );
    return helper.toString();
  }
}

class InstanceStatusEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceStatus> {
  const InstanceStatusEc2QuerySerializer() : super('InstanceStatus');

  @override
  Iterable<Type> get types => const [
        InstanceStatus,
        _$InstanceStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'eventsSet':
          result.events.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceStatusEvent)],
            ),
          ) as _i2.BuiltList<InstanceStatusEvent>));
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceState':
          result.instanceState.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceState),
          ) as InstanceState));
        case 'instanceStatus':
          result.instanceStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceStatusSummary),
          ) as InstanceStatusSummary));
        case 'systemStatus':
          result.systemStatus.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceStatusSummary),
          ) as InstanceStatusSummary));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InstanceStatusResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceStatus(
      :availabilityZone,
      :outpostArn,
      :events,
      :instanceId,
      :instanceState,
      :instanceStatus,
      :systemStatus
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (outpostArn != null) {
      result$
        ..add(const _i3.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    if (events != null) {
      result$
        ..add(const _i3.XmlElementName('EventsSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          events,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(InstanceStatusEvent)],
          ),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceState != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceState'))
        ..add(serializers.serialize(
          instanceState,
          specifiedType: const FullType(InstanceState),
        ));
    }
    if (instanceStatus != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceStatus'))
        ..add(serializers.serialize(
          instanceStatus,
          specifiedType: const FullType(InstanceStatusSummary),
        ));
    }
    if (systemStatus != null) {
      result$
        ..add(const _i3.XmlElementName('SystemStatus'))
        ..add(serializers.serialize(
          systemStatus,
          specifiedType: const FullType(InstanceStatusSummary),
        ));
    }
    return result$;
  }
}
