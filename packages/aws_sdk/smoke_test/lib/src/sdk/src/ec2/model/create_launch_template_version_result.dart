// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_launch_template_version_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_version.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/validation_warning.dart';

part 'create_launch_template_version_result.g.dart';

abstract class CreateLaunchTemplateVersionResult
    with
        _i1.AWSEquatable<CreateLaunchTemplateVersionResult>
    implements
        Built<CreateLaunchTemplateVersionResult,
            CreateLaunchTemplateVersionResultBuilder> {
  factory CreateLaunchTemplateVersionResult({
    LaunchTemplateVersion? launchTemplateVersion,
    ValidationWarning? warning,
  }) {
    return _$CreateLaunchTemplateVersionResult._(
      launchTemplateVersion: launchTemplateVersion,
      warning: warning,
    );
  }

  factory CreateLaunchTemplateVersionResult.build(
          [void Function(CreateLaunchTemplateVersionResultBuilder) updates]) =
      _$CreateLaunchTemplateVersionResult;

  const CreateLaunchTemplateVersionResult._();

  /// Constructs a [CreateLaunchTemplateVersionResult] from a [payload] and [response].
  factory CreateLaunchTemplateVersionResult.fromResponse(
    CreateLaunchTemplateVersionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateLaunchTemplateVersionResult>>
      serializers = [CreateLaunchTemplateVersionResultEc2QuerySerializer()];

  /// Information about the launch template version.
  LaunchTemplateVersion? get launchTemplateVersion;

  /// If the new version of the launch template contains parameters or parameter combinations that are not valid, an error code and an error message are returned for each issue that's found.
  ValidationWarning? get warning;
  @override
  List<Object?> get props => [
        launchTemplateVersion,
        warning,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateLaunchTemplateVersionResult')
          ..add(
            'launchTemplateVersion',
            launchTemplateVersion,
          )
          ..add(
            'warning',
            warning,
          );
    return helper.toString();
  }
}

class CreateLaunchTemplateVersionResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateLaunchTemplateVersionResult> {
  const CreateLaunchTemplateVersionResultEc2QuerySerializer()
      : super('CreateLaunchTemplateVersionResult');

  @override
  Iterable<Type> get types => const [
        CreateLaunchTemplateVersionResult,
        _$CreateLaunchTemplateVersionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateLaunchTemplateVersionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLaunchTemplateVersionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'launchTemplateVersion':
          result.launchTemplateVersion.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplateVersion),
          ) as LaunchTemplateVersion));
        case 'warning':
          result.warning.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ValidationWarning),
          ) as ValidationWarning));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateLaunchTemplateVersionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateLaunchTemplateVersionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateLaunchTemplateVersionResult(:launchTemplateVersion, :warning) =
        object;
    if (launchTemplateVersion != null) {
      result$
        ..add(const _i2.XmlElementName('LaunchTemplateVersion'))
        ..add(serializers.serialize(
          launchTemplateVersion,
          specifiedType: const FullType(LaunchTemplateVersion),
        ));
    }
    if (warning != null) {
      result$
        ..add(const _i2.XmlElementName('Warning'))
        ..add(serializers.serialize(
          warning,
          specifiedType: const FullType(ValidationWarning),
        ));
    }
    return result$;
  }
}
