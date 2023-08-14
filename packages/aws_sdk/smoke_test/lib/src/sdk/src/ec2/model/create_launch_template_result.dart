// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_launch_template_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/validation_warning.dart';

part 'create_launch_template_result.g.dart';

abstract class CreateLaunchTemplateResult
    with _i1.AWSEquatable<CreateLaunchTemplateResult>
    implements
        Built<CreateLaunchTemplateResult, CreateLaunchTemplateResultBuilder> {
  factory CreateLaunchTemplateResult({
    LaunchTemplate? launchTemplate,
    ValidationWarning? warning,
  }) {
    return _$CreateLaunchTemplateResult._(
      launchTemplate: launchTemplate,
      warning: warning,
    );
  }

  factory CreateLaunchTemplateResult.build(
          [void Function(CreateLaunchTemplateResultBuilder) updates]) =
      _$CreateLaunchTemplateResult;

  const CreateLaunchTemplateResult._();

  /// Constructs a [CreateLaunchTemplateResult] from a [payload] and [response].
  factory CreateLaunchTemplateResult.fromResponse(
    CreateLaunchTemplateResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateLaunchTemplateResult>>
      serializers = [CreateLaunchTemplateResultEc2QuerySerializer()];

  /// Information about the launch template.
  LaunchTemplate? get launchTemplate;

  /// If the launch template contains parameters or parameter combinations that are not valid, an error code and an error message are returned for each issue that's found.
  ValidationWarning? get warning;
  @override
  List<Object?> get props => [
        launchTemplate,
        warning,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateLaunchTemplateResult')
      ..add(
        'launchTemplate',
        launchTemplate,
      )
      ..add(
        'warning',
        warning,
      );
    return helper.toString();
  }
}

class CreateLaunchTemplateResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateLaunchTemplateResult> {
  const CreateLaunchTemplateResultEc2QuerySerializer()
      : super('CreateLaunchTemplateResult');

  @override
  Iterable<Type> get types => const [
        CreateLaunchTemplateResult,
        _$CreateLaunchTemplateResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateLaunchTemplateResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLaunchTemplateResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'launchTemplate':
          result.launchTemplate.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplate),
          ) as LaunchTemplate));
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
    CreateLaunchTemplateResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateLaunchTemplateResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateLaunchTemplateResult(:launchTemplate, :warning) = object;
    if (launchTemplate != null) {
      result$
        ..add(const _i2.XmlElementName('LaunchTemplate'))
        ..add(serializers.serialize(
          launchTemplate,
          specifiedType: const FullType(LaunchTemplate),
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
