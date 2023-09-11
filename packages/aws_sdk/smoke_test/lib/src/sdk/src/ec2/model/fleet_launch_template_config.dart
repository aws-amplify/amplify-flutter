// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fleet_launch_template_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_overrides.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_specification.dart';

part 'fleet_launch_template_config.g.dart';

/// Describes a launch template and overrides.
abstract class FleetLaunchTemplateConfig
    with _i1.AWSEquatable<FleetLaunchTemplateConfig>
    implements
        Built<FleetLaunchTemplateConfig, FleetLaunchTemplateConfigBuilder> {
  /// Describes a launch template and overrides.
  factory FleetLaunchTemplateConfig({
    FleetLaunchTemplateSpecification? launchTemplateSpecification,
    List<FleetLaunchTemplateOverrides>? overrides,
  }) {
    return _$FleetLaunchTemplateConfig._(
      launchTemplateSpecification: launchTemplateSpecification,
      overrides: overrides == null ? null : _i2.BuiltList(overrides),
    );
  }

  /// Describes a launch template and overrides.
  factory FleetLaunchTemplateConfig.build(
          [void Function(FleetLaunchTemplateConfigBuilder) updates]) =
      _$FleetLaunchTemplateConfig;

  const FleetLaunchTemplateConfig._();

  static const List<_i3.SmithySerializer<FleetLaunchTemplateConfig>>
      serializers = [FleetLaunchTemplateConfigEc2QuerySerializer()];

  /// The launch template.
  FleetLaunchTemplateSpecification? get launchTemplateSpecification;

  /// Any parameters that you specify override the same parameters in the launch template.
  _i2.BuiltList<FleetLaunchTemplateOverrides>? get overrides;
  @override
  List<Object?> get props => [
        launchTemplateSpecification,
        overrides,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FleetLaunchTemplateConfig')
      ..add(
        'launchTemplateSpecification',
        launchTemplateSpecification,
      )
      ..add(
        'overrides',
        overrides,
      );
    return helper.toString();
  }
}

class FleetLaunchTemplateConfigEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<FleetLaunchTemplateConfig> {
  const FleetLaunchTemplateConfigEc2QuerySerializer()
      : super('FleetLaunchTemplateConfig');

  @override
  Iterable<Type> get types => const [
        FleetLaunchTemplateConfig,
        _$FleetLaunchTemplateConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetLaunchTemplateConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetLaunchTemplateConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'launchTemplateSpecification':
          result.launchTemplateSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(FleetLaunchTemplateSpecification),
          ) as FleetLaunchTemplateSpecification));
        case 'overrides':
          result.overrides.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(FleetLaunchTemplateOverrides)],
            ),
          ) as _i2.BuiltList<FleetLaunchTemplateOverrides>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FleetLaunchTemplateConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'FleetLaunchTemplateConfigResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FleetLaunchTemplateConfig(:launchTemplateSpecification, :overrides) =
        object;
    if (launchTemplateSpecification != null) {
      result$
        ..add(const _i3.XmlElementName('LaunchTemplateSpecification'))
        ..add(serializers.serialize(
          launchTemplateSpecification,
          specifiedType: const FullType(FleetLaunchTemplateSpecification),
        ));
    }
    if (overrides != null) {
      result$
        ..add(const _i3.XmlElementName('Overrides'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          overrides,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(FleetLaunchTemplateOverrides)],
          ),
        ));
    }
    return result$;
  }
}
