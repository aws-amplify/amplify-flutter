// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.run_instances_monitoring_enabled; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'run_instances_monitoring_enabled.g.dart';

/// Describes the monitoring of an instance.
abstract class RunInstancesMonitoringEnabled
    with
        _i1.AWSEquatable<RunInstancesMonitoringEnabled>
    implements
        Built<RunInstancesMonitoringEnabled,
            RunInstancesMonitoringEnabledBuilder> {
  /// Describes the monitoring of an instance.
  factory RunInstancesMonitoringEnabled({bool? enabled}) {
    enabled ??= false;
    return _$RunInstancesMonitoringEnabled._(enabled: enabled);
  }

  /// Describes the monitoring of an instance.
  factory RunInstancesMonitoringEnabled.build(
          [void Function(RunInstancesMonitoringEnabledBuilder) updates]) =
      _$RunInstancesMonitoringEnabled;

  const RunInstancesMonitoringEnabled._();

  static const List<_i2.SmithySerializer<RunInstancesMonitoringEnabled>>
      serializers = [RunInstancesMonitoringEnabledEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RunInstancesMonitoringEnabledBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether detailed monitoring is enabled. Otherwise, basic monitoring is enabled.
  bool get enabled;
  @override
  List<Object?> get props => [enabled];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RunInstancesMonitoringEnabled')
      ..add(
        'enabled',
        enabled,
      );
    return helper.toString();
  }
}

class RunInstancesMonitoringEnabledEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<RunInstancesMonitoringEnabled> {
  const RunInstancesMonitoringEnabledEc2QuerySerializer()
      : super('RunInstancesMonitoringEnabled');

  @override
  Iterable<Type> get types => const [
        RunInstancesMonitoringEnabled,
        _$RunInstancesMonitoringEnabled,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RunInstancesMonitoringEnabled deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RunInstancesMonitoringEnabledBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'enabled':
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
    RunInstancesMonitoringEnabled object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RunInstancesMonitoringEnabledResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RunInstancesMonitoringEnabled(:enabled) = object;
    result$
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
