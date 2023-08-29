// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_templates_monitoring; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_templates_monitoring.g.dart';

/// Describes the monitoring for the instance.
abstract class LaunchTemplatesMonitoring
    with _i1.AWSEquatable<LaunchTemplatesMonitoring>
    implements
        Built<LaunchTemplatesMonitoring, LaunchTemplatesMonitoringBuilder> {
  /// Describes the monitoring for the instance.
  factory LaunchTemplatesMonitoring({bool? enabled}) {
    enabled ??= false;
    return _$LaunchTemplatesMonitoring._(enabled: enabled);
  }

  /// Describes the monitoring for the instance.
  factory LaunchTemplatesMonitoring.build(
          [void Function(LaunchTemplatesMonitoringBuilder) updates]) =
      _$LaunchTemplatesMonitoring;

  const LaunchTemplatesMonitoring._();

  static const List<_i2.SmithySerializer<LaunchTemplatesMonitoring>>
      serializers = [LaunchTemplatesMonitoringEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplatesMonitoringBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether detailed monitoring is enabled. Otherwise, basic monitoring is enabled.
  bool get enabled;
  @override
  List<Object?> get props => [enabled];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplatesMonitoring')
      ..add(
        'enabled',
        enabled,
      );
    return helper.toString();
  }
}

class LaunchTemplatesMonitoringEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchTemplatesMonitoring> {
  const LaunchTemplatesMonitoringEc2QuerySerializer()
      : super('LaunchTemplatesMonitoring');

  @override
  Iterable<Type> get types => const [
        LaunchTemplatesMonitoring,
        _$LaunchTemplatesMonitoring,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplatesMonitoring deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplatesMonitoringBuilder();
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
    LaunchTemplatesMonitoring object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplatesMonitoringResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplatesMonitoring(:enabled) = object;
    result$
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
