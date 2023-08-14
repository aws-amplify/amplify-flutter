// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fleet_launch_template_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'fleet_launch_template_specification_request.g.dart';

/// The Amazon EC2 launch template that can be used by an EC2 Fleet to configure Amazon EC2 instances. You must specify either the ID or name of the launch template in the request, but not both.
///
/// For information about launch templates, see [Launch an instance from a launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html) in the _Amazon EC2 User Guide_.
abstract class FleetLaunchTemplateSpecificationRequest
    with
        _i1.AWSEquatable<FleetLaunchTemplateSpecificationRequest>
    implements
        Built<FleetLaunchTemplateSpecificationRequest,
            FleetLaunchTemplateSpecificationRequestBuilder> {
  /// The Amazon EC2 launch template that can be used by an EC2 Fleet to configure Amazon EC2 instances. You must specify either the ID or name of the launch template in the request, but not both.
  ///
  /// For information about launch templates, see [Launch an instance from a launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html) in the _Amazon EC2 User Guide_.
  factory FleetLaunchTemplateSpecificationRequest({
    String? launchTemplateId,
    String? launchTemplateName,
    String? version,
  }) {
    return _$FleetLaunchTemplateSpecificationRequest._(
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      version: version,
    );
  }

  /// The Amazon EC2 launch template that can be used by an EC2 Fleet to configure Amazon EC2 instances. You must specify either the ID or name of the launch template in the request, but not both.
  ///
  /// For information about launch templates, see [Launch an instance from a launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html) in the _Amazon EC2 User Guide_.
  factory FleetLaunchTemplateSpecificationRequest.build(
      [void Function(FleetLaunchTemplateSpecificationRequestBuilder)
          updates]) = _$FleetLaunchTemplateSpecificationRequest;

  const FleetLaunchTemplateSpecificationRequest._();

  static const List<
          _i2.SmithySerializer<FleetLaunchTemplateSpecificationRequest>>
      serializers = [
    FleetLaunchTemplateSpecificationRequestEc2QuerySerializer()
  ];

  /// The ID of the launch template.
  ///
  /// You must specify the `LaunchTemplateId` or the `LaunchTemplateName`, but not both.
  String? get launchTemplateId;

  /// The name of the launch template.
  ///
  /// You must specify the `LaunchTemplateName` or the `LaunchTemplateId`, but not both.
  String? get launchTemplateName;

  /// The launch template version number, `$Latest`, or `$Default`. You must specify a value, otherwise the request fails.
  ///
  /// If the value is `$Latest`, Amazon EC2 uses the latest version of the launch template.
  ///
  /// If the value is `$Default`, Amazon EC2 uses the default version of the launch template.
  String? get version;
  @override
  List<Object?> get props => [
        launchTemplateId,
        launchTemplateName,
        version,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FleetLaunchTemplateSpecificationRequest')
          ..add(
            'launchTemplateId',
            launchTemplateId,
          )
          ..add(
            'launchTemplateName',
            launchTemplateName,
          )
          ..add(
            'version',
            version,
          );
    return helper.toString();
  }
}

class FleetLaunchTemplateSpecificationRequestEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<FleetLaunchTemplateSpecificationRequest> {
  const FleetLaunchTemplateSpecificationRequestEc2QuerySerializer()
      : super('FleetLaunchTemplateSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        FleetLaunchTemplateSpecificationRequest,
        _$FleetLaunchTemplateSpecificationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetLaunchTemplateSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetLaunchTemplateSpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LaunchTemplateId':
          result.launchTemplateId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LaunchTemplateName':
          result.launchTemplateName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Version':
          result.version = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FleetLaunchTemplateSpecificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FleetLaunchTemplateSpecificationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FleetLaunchTemplateSpecificationRequest(
      :launchTemplateId,
      :launchTemplateName,
      :version
    ) = object;
    if (launchTemplateId != null) {
      result$
        ..add(const _i2.XmlElementName('LaunchTemplateId'))
        ..add(serializers.serialize(
          launchTemplateId,
          specifiedType: const FullType(String),
        ));
    }
    if (launchTemplateName != null) {
      result$
        ..add(const _i2.XmlElementName('LaunchTemplateName'))
        ..add(serializers.serialize(
          launchTemplateName,
          specifiedType: const FullType(String),
        ));
    }
    if (version != null) {
      result$
        ..add(const _i2.XmlElementName('Version'))
        ..add(serializers.serialize(
          version,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
