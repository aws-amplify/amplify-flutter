// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_maintenance_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_auto_recovery_state.dart';

part 'instance_maintenance_options.g.dart';

/// The maintenance options for the instance.
abstract class InstanceMaintenanceOptions
    with _i1.AWSEquatable<InstanceMaintenanceOptions>
    implements
        Built<InstanceMaintenanceOptions, InstanceMaintenanceOptionsBuilder> {
  /// The maintenance options for the instance.
  factory InstanceMaintenanceOptions(
      {InstanceAutoRecoveryState? autoRecovery}) {
    return _$InstanceMaintenanceOptions._(autoRecovery: autoRecovery);
  }

  /// The maintenance options for the instance.
  factory InstanceMaintenanceOptions.build(
          [void Function(InstanceMaintenanceOptionsBuilder) updates]) =
      _$InstanceMaintenanceOptions;

  const InstanceMaintenanceOptions._();

  static const List<_i2.SmithySerializer<InstanceMaintenanceOptions>>
      serializers = [InstanceMaintenanceOptionsEc2QuerySerializer()];

  /// Provides information on the current automatic recovery behavior of your instance.
  InstanceAutoRecoveryState? get autoRecovery;
  @override
  List<Object?> get props => [autoRecovery];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceMaintenanceOptions')
      ..add(
        'autoRecovery',
        autoRecovery,
      );
    return helper.toString();
  }
}

class InstanceMaintenanceOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceMaintenanceOptions> {
  const InstanceMaintenanceOptionsEc2QuerySerializer()
      : super('InstanceMaintenanceOptions');

  @override
  Iterable<Type> get types => const [
        InstanceMaintenanceOptions,
        _$InstanceMaintenanceOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceMaintenanceOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceMaintenanceOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'autoRecovery':
          result.autoRecovery = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceAutoRecoveryState),
          ) as InstanceAutoRecoveryState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceMaintenanceOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceMaintenanceOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceMaintenanceOptions(:autoRecovery) = object;
    if (autoRecovery != null) {
      result$
        ..add(const _i2.XmlElementName('AutoRecovery'))
        ..add(serializers.serialize(
          autoRecovery,
          specifiedType: const FullType.nullable(InstanceAutoRecoveryState),
        ));
    }
    return result$;
  }
}
