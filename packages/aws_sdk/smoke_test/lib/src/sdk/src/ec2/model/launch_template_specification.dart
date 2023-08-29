// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_specification.g.dart';

/// The launch template to use. You must specify either the launch template ID or launch template name in the request, but not both.
abstract class LaunchTemplateSpecification
    with _i1.AWSEquatable<LaunchTemplateSpecification>
    implements
        Built<LaunchTemplateSpecification, LaunchTemplateSpecificationBuilder> {
  /// The launch template to use. You must specify either the launch template ID or launch template name in the request, but not both.
  factory LaunchTemplateSpecification({
    String? launchTemplateId,
    String? launchTemplateName,
    String? version,
  }) {
    return _$LaunchTemplateSpecification._(
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      version: version,
    );
  }

  /// The launch template to use. You must specify either the launch template ID or launch template name in the request, but not both.
  factory LaunchTemplateSpecification.build(
          [void Function(LaunchTemplateSpecificationBuilder) updates]) =
      _$LaunchTemplateSpecification;

  const LaunchTemplateSpecification._();

  static const List<_i2.SmithySerializer<LaunchTemplateSpecification>>
      serializers = [LaunchTemplateSpecificationEc2QuerySerializer()];

  /// The ID of the launch template.
  ///
  /// You must specify the `LaunchTemplateId` or the `LaunchTemplateName`, but not both.
  String? get launchTemplateId;

  /// The name of the launch template.
  ///
  /// You must specify the `LaunchTemplateName` or the `LaunchTemplateId`, but not both.
  String? get launchTemplateName;

  /// The launch template version number, `$Latest`, or `$Default`.
  ///
  /// If the value is `$Latest`, Amazon EC2 uses the latest version of the launch template.
  ///
  /// If the value is `$Default`, Amazon EC2 uses the default version of the launch template.
  ///
  /// Default: The default version of the launch template.
  String? get version;
  @override
  List<Object?> get props => [
        launchTemplateId,
        launchTemplateName,
        version,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplateSpecification')
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

class LaunchTemplateSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchTemplateSpecification> {
  const LaunchTemplateSpecificationEc2QuerySerializer()
      : super('LaunchTemplateSpecification');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateSpecification,
        _$LaunchTemplateSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateSpecificationBuilder();
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
    LaunchTemplateSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateSpecification(
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
