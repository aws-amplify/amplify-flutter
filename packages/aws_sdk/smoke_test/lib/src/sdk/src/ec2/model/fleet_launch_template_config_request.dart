// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fleet_launch_template_config_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_overrides_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_specification_request.dart';

part 'fleet_launch_template_config_request.g.dart';

/// Describes a launch template and overrides.
abstract class FleetLaunchTemplateConfigRequest
    with
        _i1.AWSEquatable<FleetLaunchTemplateConfigRequest>
    implements
        Built<FleetLaunchTemplateConfigRequest,
            FleetLaunchTemplateConfigRequestBuilder> {
  /// Describes a launch template and overrides.
  factory FleetLaunchTemplateConfigRequest({
    FleetLaunchTemplateSpecificationRequest? launchTemplateSpecification,
    List<FleetLaunchTemplateOverridesRequest>? overrides,
  }) {
    return _$FleetLaunchTemplateConfigRequest._(
      launchTemplateSpecification: launchTemplateSpecification,
      overrides: overrides == null ? null : _i2.BuiltList(overrides),
    );
  }

  /// Describes a launch template and overrides.
  factory FleetLaunchTemplateConfigRequest.build(
          [void Function(FleetLaunchTemplateConfigRequestBuilder) updates]) =
      _$FleetLaunchTemplateConfigRequest;

  const FleetLaunchTemplateConfigRequest._();

  static const List<_i3.SmithySerializer<FleetLaunchTemplateConfigRequest>>
      serializers = [FleetLaunchTemplateConfigRequestEc2QuerySerializer()];

  /// The launch template to use. You must specify either the launch template ID or launch template name in the request.
  FleetLaunchTemplateSpecificationRequest? get launchTemplateSpecification;

  /// Any parameters that you specify override the same parameters in the launch template.
  ///
  /// For fleets of type `request` and `maintain`, a maximum of 300 items is allowed across all launch templates.
  _i2.BuiltList<FleetLaunchTemplateOverridesRequest>? get overrides;
  @override
  List<Object?> get props => [
        launchTemplateSpecification,
        overrides,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FleetLaunchTemplateConfigRequest')
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

class FleetLaunchTemplateConfigRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<FleetLaunchTemplateConfigRequest> {
  const FleetLaunchTemplateConfigRequestEc2QuerySerializer()
      : super('FleetLaunchTemplateConfigRequest');

  @override
  Iterable<Type> get types => const [
        FleetLaunchTemplateConfigRequest,
        _$FleetLaunchTemplateConfigRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetLaunchTemplateConfigRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetLaunchTemplateConfigRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LaunchTemplateSpecification':
          result.launchTemplateSpecification.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(FleetLaunchTemplateSpecificationRequest),
          ) as FleetLaunchTemplateSpecificationRequest));
        case 'Overrides':
          result.overrides.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(FleetLaunchTemplateOverridesRequest)],
            ),
          ) as _i2.BuiltList<FleetLaunchTemplateOverridesRequest>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FleetLaunchTemplateConfigRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'FleetLaunchTemplateConfigRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FleetLaunchTemplateConfigRequest(
      :launchTemplateSpecification,
      :overrides
    ) = object;
    if (launchTemplateSpecification != null) {
      result$
        ..add(const _i3.XmlElementName('LaunchTemplateSpecification'))
        ..add(serializers.serialize(
          launchTemplateSpecification,
          specifiedType:
              const FullType(FleetLaunchTemplateSpecificationRequest),
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
            [FullType(FleetLaunchTemplateOverridesRequest)],
          ),
        ));
    }
    return result$;
  }
}
