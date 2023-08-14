// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_license_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_license_configuration.g.dart';

/// Describes a license configuration.
abstract class LaunchTemplateLicenseConfiguration
    with
        _i1.AWSEquatable<LaunchTemplateLicenseConfiguration>
    implements
        Built<LaunchTemplateLicenseConfiguration,
            LaunchTemplateLicenseConfigurationBuilder> {
  /// Describes a license configuration.
  factory LaunchTemplateLicenseConfiguration(
      {String? licenseConfigurationArn}) {
    return _$LaunchTemplateLicenseConfiguration._(
        licenseConfigurationArn: licenseConfigurationArn);
  }

  /// Describes a license configuration.
  factory LaunchTemplateLicenseConfiguration.build(
          [void Function(LaunchTemplateLicenseConfigurationBuilder) updates]) =
      _$LaunchTemplateLicenseConfiguration;

  const LaunchTemplateLicenseConfiguration._();

  static const List<_i2.SmithySerializer<LaunchTemplateLicenseConfiguration>>
      serializers = [LaunchTemplateLicenseConfigurationEc2QuerySerializer()];

  /// The Amazon Resource Name (ARN) of the license configuration.
  String? get licenseConfigurationArn;
  @override
  List<Object?> get props => [licenseConfigurationArn];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateLicenseConfiguration')
          ..add(
            'licenseConfigurationArn',
            licenseConfigurationArn,
          );
    return helper.toString();
  }
}

class LaunchTemplateLicenseConfigurationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchTemplateLicenseConfiguration> {
  const LaunchTemplateLicenseConfigurationEc2QuerySerializer()
      : super('LaunchTemplateLicenseConfiguration');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateLicenseConfiguration,
        _$LaunchTemplateLicenseConfiguration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateLicenseConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateLicenseConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'licenseConfigurationArn':
          result.licenseConfigurationArn = (serializers.deserialize(
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
    LaunchTemplateLicenseConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateLicenseConfigurationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateLicenseConfiguration(:licenseConfigurationArn) = object;
    if (licenseConfigurationArn != null) {
      result$
        ..add(const _i2.XmlElementName('LicenseConfigurationArn'))
        ..add(serializers.serialize(
          licenseConfigurationArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
