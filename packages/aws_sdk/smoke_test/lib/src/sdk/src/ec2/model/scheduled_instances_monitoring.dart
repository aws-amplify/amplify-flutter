// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.scheduled_instances_monitoring; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'scheduled_instances_monitoring.g.dart';

/// Describes whether monitoring is enabled for a Scheduled Instance.
abstract class ScheduledInstancesMonitoring
    with
        _i1.AWSEquatable<ScheduledInstancesMonitoring>
    implements
        Built<ScheduledInstancesMonitoring,
            ScheduledInstancesMonitoringBuilder> {
  /// Describes whether monitoring is enabled for a Scheduled Instance.
  factory ScheduledInstancesMonitoring({bool? enabled}) {
    enabled ??= false;
    return _$ScheduledInstancesMonitoring._(enabled: enabled);
  }

  /// Describes whether monitoring is enabled for a Scheduled Instance.
  factory ScheduledInstancesMonitoring.build(
          [void Function(ScheduledInstancesMonitoringBuilder) updates]) =
      _$ScheduledInstancesMonitoring;

  const ScheduledInstancesMonitoring._();

  static const List<_i2.SmithySerializer<ScheduledInstancesMonitoring>>
      serializers = [ScheduledInstancesMonitoringEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstancesMonitoringBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether monitoring is enabled.
  bool get enabled;
  @override
  List<Object?> get props => [enabled];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScheduledInstancesMonitoring')
      ..add(
        'enabled',
        enabled,
      );
    return helper.toString();
  }
}

class ScheduledInstancesMonitoringEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ScheduledInstancesMonitoring> {
  const ScheduledInstancesMonitoringEc2QuerySerializer()
      : super('ScheduledInstancesMonitoring');

  @override
  Iterable<Type> get types => const [
        ScheduledInstancesMonitoring,
        _$ScheduledInstancesMonitoring,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstancesMonitoring deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstancesMonitoringBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Enabled':
          result.enabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ScheduledInstancesMonitoring object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ScheduledInstancesMonitoringResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ScheduledInstancesMonitoring(:enabled) = object;
    result$
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
