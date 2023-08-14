// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_and_overrides_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_overrides.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_specification.dart';

part 'launch_template_and_overrides_response.g.dart';

/// Describes a launch template and overrides.
abstract class LaunchTemplateAndOverridesResponse
    with
        _i1.AWSEquatable<LaunchTemplateAndOverridesResponse>
    implements
        Built<LaunchTemplateAndOverridesResponse,
            LaunchTemplateAndOverridesResponseBuilder> {
  /// Describes a launch template and overrides.
  factory LaunchTemplateAndOverridesResponse({
    FleetLaunchTemplateSpecification? launchTemplateSpecification,
    FleetLaunchTemplateOverrides? overrides,
  }) {
    return _$LaunchTemplateAndOverridesResponse._(
      launchTemplateSpecification: launchTemplateSpecification,
      overrides: overrides,
    );
  }

  /// Describes a launch template and overrides.
  factory LaunchTemplateAndOverridesResponse.build(
          [void Function(LaunchTemplateAndOverridesResponseBuilder) updates]) =
      _$LaunchTemplateAndOverridesResponse;

  const LaunchTemplateAndOverridesResponse._();

  static const List<_i2.SmithySerializer<LaunchTemplateAndOverridesResponse>>
      serializers = [LaunchTemplateAndOverridesResponseEc2QuerySerializer()];

  /// The launch template.
  FleetLaunchTemplateSpecification? get launchTemplateSpecification;

  /// Any parameters that you specify override the same parameters in the launch template.
  FleetLaunchTemplateOverrides? get overrides;
  @override
  List<Object?> get props => [
        launchTemplateSpecification,
        overrides,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateAndOverridesResponse')
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

class LaunchTemplateAndOverridesResponseEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchTemplateAndOverridesResponse> {
  const LaunchTemplateAndOverridesResponseEc2QuerySerializer()
      : super('LaunchTemplateAndOverridesResponse');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateAndOverridesResponse,
        _$LaunchTemplateAndOverridesResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateAndOverridesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateAndOverridesResponseBuilder();
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
          result.overrides.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(FleetLaunchTemplateOverrides),
          ) as FleetLaunchTemplateOverrides));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LaunchTemplateAndOverridesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateAndOverridesResponseResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateAndOverridesResponse(
      :launchTemplateSpecification,
      :overrides
    ) = object;
    if (launchTemplateSpecification != null) {
      result$
        ..add(const _i2.XmlElementName('LaunchTemplateSpecification'))
        ..add(serializers.serialize(
          launchTemplateSpecification,
          specifiedType: const FullType(FleetLaunchTemplateSpecification),
        ));
    }
    if (overrides != null) {
      result$
        ..add(const _i2.XmlElementName('Overrides'))
        ..add(serializers.serialize(
          overrides,
          specifiedType: const FullType(FleetLaunchTemplateOverrides),
        ));
    }
    return result$;
  }
}
