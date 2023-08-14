// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_monitoring; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/monitoring.dart';

part 'instance_monitoring.g.dart';

/// Describes the monitoring of an instance.
abstract class InstanceMonitoring
    with _i1.AWSEquatable<InstanceMonitoring>
    implements Built<InstanceMonitoring, InstanceMonitoringBuilder> {
  /// Describes the monitoring of an instance.
  factory InstanceMonitoring({
    String? instanceId,
    Monitoring? monitoring,
  }) {
    return _$InstanceMonitoring._(
      instanceId: instanceId,
      monitoring: monitoring,
    );
  }

  /// Describes the monitoring of an instance.
  factory InstanceMonitoring.build(
          [void Function(InstanceMonitoringBuilder) updates]) =
      _$InstanceMonitoring;

  const InstanceMonitoring._();

  static const List<_i2.SmithySerializer<InstanceMonitoring>> serializers = [
    InstanceMonitoringEc2QuerySerializer()
  ];

  /// The ID of the instance.
  String? get instanceId;

  /// The monitoring for the instance.
  Monitoring? get monitoring;
  @override
  List<Object?> get props => [
        instanceId,
        monitoring,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceMonitoring')
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'monitoring',
        monitoring,
      );
    return helper.toString();
  }
}

class InstanceMonitoringEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceMonitoring> {
  const InstanceMonitoringEc2QuerySerializer() : super('InstanceMonitoring');

  @override
  Iterable<Type> get types => const [
        InstanceMonitoring,
        _$InstanceMonitoring,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceMonitoring deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceMonitoringBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'monitoring':
          result.monitoring.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Monitoring),
          ) as Monitoring));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceMonitoring object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceMonitoringResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceMonitoring(:instanceId, :monitoring) = object;
    if (instanceId != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (monitoring != null) {
      result$
        ..add(const _i2.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          monitoring,
          specifiedType: const FullType(Monitoring),
        ));
    }
    return result$;
  }
}
