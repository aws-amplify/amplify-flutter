// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spot_fleet_monitoring; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'spot_fleet_monitoring.g.dart';

/// Describes whether monitoring is enabled.
abstract class SpotFleetMonitoring
    with _i1.AWSEquatable<SpotFleetMonitoring>
    implements Built<SpotFleetMonitoring, SpotFleetMonitoringBuilder> {
  /// Describes whether monitoring is enabled.
  factory SpotFleetMonitoring({bool? enabled}) {
    enabled ??= false;
    return _$SpotFleetMonitoring._(enabled: enabled);
  }

  /// Describes whether monitoring is enabled.
  factory SpotFleetMonitoring.build(
          [void Function(SpotFleetMonitoringBuilder) updates]) =
      _$SpotFleetMonitoring;

  const SpotFleetMonitoring._();

  static const List<_i2.SmithySerializer<SpotFleetMonitoring>> serializers = [
    SpotFleetMonitoringEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotFleetMonitoringBuilder b) {
    b.enabled = false;
  }

  /// Enables monitoring for the instance.
  ///
  /// Default: `false`
  bool get enabled;
  @override
  List<Object?> get props => [enabled];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotFleetMonitoring')
      ..add(
        'enabled',
        enabled,
      );
    return helper.toString();
  }
}

class SpotFleetMonitoringEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SpotFleetMonitoring> {
  const SpotFleetMonitoringEc2QuerySerializer() : super('SpotFleetMonitoring');

  @override
  Iterable<Type> get types => const [
        SpotFleetMonitoring,
        _$SpotFleetMonitoring,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotFleetMonitoring deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotFleetMonitoringBuilder();
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
    SpotFleetMonitoring object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SpotFleetMonitoringResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SpotFleetMonitoring(:enabled) = object;
    result$
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
