// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_overrides.dart';

part 'launch_template_config.g.dart';

/// Describes a launch template and overrides.
abstract class LaunchTemplateConfig
    with _i1.AWSEquatable<LaunchTemplateConfig>
    implements Built<LaunchTemplateConfig, LaunchTemplateConfigBuilder> {
  /// Describes a launch template and overrides.
  factory LaunchTemplateConfig({
    FleetLaunchTemplateSpecification? launchTemplateSpecification,
    List<LaunchTemplateOverrides>? overrides,
  }) {
    return _$LaunchTemplateConfig._(
      launchTemplateSpecification: launchTemplateSpecification,
      overrides: overrides == null ? null : _i2.BuiltList(overrides),
    );
  }

  /// Describes a launch template and overrides.
  factory LaunchTemplateConfig.build(
          [void Function(LaunchTemplateConfigBuilder) updates]) =
      _$LaunchTemplateConfig;

  const LaunchTemplateConfig._();

  static const List<_i3.SmithySerializer<LaunchTemplateConfig>> serializers = [
    LaunchTemplateConfigEc2QuerySerializer()
  ];

  /// The launch template to use. Make sure that the launch template does not contain the `NetworkInterfaceId` parameter because you can't specify a network interface ID in a Spot Fleet.
  FleetLaunchTemplateSpecification? get launchTemplateSpecification;

  /// Any parameters that you specify override the same parameters in the launch template.
  _i2.BuiltList<LaunchTemplateOverrides>? get overrides;
  @override
  List<Object?> get props => [
        launchTemplateSpecification,
        overrides,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplateConfig')
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

class LaunchTemplateConfigEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LaunchTemplateConfig> {
  const LaunchTemplateConfigEc2QuerySerializer()
      : super('LaunchTemplateConfig');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateConfig,
        _$LaunchTemplateConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateConfigBuilder();
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
              [FullType(LaunchTemplateOverrides)],
            ),
          ) as _i2.BuiltList<LaunchTemplateOverrides>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LaunchTemplateConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LaunchTemplateConfigResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateConfig(:launchTemplateSpecification, :overrides) =
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LaunchTemplateOverrides)],
          ),
        ));
    }
    return result$;
  }
}
