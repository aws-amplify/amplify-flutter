// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_instance_maintenance_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_auto_recovery_state.dart';

part 'launch_template_instance_maintenance_options.g.dart';

/// The maintenance options of your instance.
abstract class LaunchTemplateInstanceMaintenanceOptions
    with
        _i1.AWSEquatable<LaunchTemplateInstanceMaintenanceOptions>
    implements
        Built<LaunchTemplateInstanceMaintenanceOptions,
            LaunchTemplateInstanceMaintenanceOptionsBuilder> {
  /// The maintenance options of your instance.
  factory LaunchTemplateInstanceMaintenanceOptions(
      {LaunchTemplateAutoRecoveryState? autoRecovery}) {
    return _$LaunchTemplateInstanceMaintenanceOptions._(
        autoRecovery: autoRecovery);
  }

  /// The maintenance options of your instance.
  factory LaunchTemplateInstanceMaintenanceOptions.build(
      [void Function(LaunchTemplateInstanceMaintenanceOptionsBuilder)
          updates]) = _$LaunchTemplateInstanceMaintenanceOptions;

  const LaunchTemplateInstanceMaintenanceOptions._();

  static const List<
          _i2.SmithySerializer<LaunchTemplateInstanceMaintenanceOptions>>
      serializers = [
    LaunchTemplateInstanceMaintenanceOptionsEc2QuerySerializer()
  ];

  /// Disables the automatic recovery behavior of your instance or sets it to default.
  LaunchTemplateAutoRecoveryState? get autoRecovery;
  @override
  List<Object?> get props => [autoRecovery];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateInstanceMaintenanceOptions')
          ..add(
            'autoRecovery',
            autoRecovery,
          );
    return helper.toString();
  }
}

class LaunchTemplateInstanceMaintenanceOptionsEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<LaunchTemplateInstanceMaintenanceOptions> {
  const LaunchTemplateInstanceMaintenanceOptionsEc2QuerySerializer()
      : super('LaunchTemplateInstanceMaintenanceOptions');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateInstanceMaintenanceOptions,
        _$LaunchTemplateInstanceMaintenanceOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateInstanceMaintenanceOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateInstanceMaintenanceOptionsBuilder();
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
            specifiedType: const FullType(LaunchTemplateAutoRecoveryState),
          ) as LaunchTemplateAutoRecoveryState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LaunchTemplateInstanceMaintenanceOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateInstanceMaintenanceOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateInstanceMaintenanceOptions(:autoRecovery) = object;
    if (autoRecovery != null) {
      result$
        ..add(const _i2.XmlElementName('AutoRecovery'))
        ..add(serializers.serialize(
          autoRecovery,
          specifiedType: const FullType(LaunchTemplateAutoRecoveryState),
        ));
    }
    return result$;
  }
}
