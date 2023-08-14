// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fast_launch_launch_template_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'fast_launch_launch_template_specification_request.g.dart';

/// Request to create a launch template for a fast-launch enabled Windows AMI.
///
/// Note - You can specify either the `LaunchTemplateName` or the `LaunchTemplateId`, but not both.
abstract class FastLaunchLaunchTemplateSpecificationRequest
    with
        _i1.AWSEquatable<FastLaunchLaunchTemplateSpecificationRequest>
    implements
        Built<FastLaunchLaunchTemplateSpecificationRequest,
            FastLaunchLaunchTemplateSpecificationRequestBuilder> {
  /// Request to create a launch template for a fast-launch enabled Windows AMI.
  ///
  /// Note - You can specify either the `LaunchTemplateName` or the `LaunchTemplateId`, but not both.
  factory FastLaunchLaunchTemplateSpecificationRequest({
    String? launchTemplateId,
    String? launchTemplateName,
    String? version,
  }) {
    return _$FastLaunchLaunchTemplateSpecificationRequest._(
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      version: version,
    );
  }

  /// Request to create a launch template for a fast-launch enabled Windows AMI.
  ///
  /// Note - You can specify either the `LaunchTemplateName` or the `LaunchTemplateId`, but not both.
  factory FastLaunchLaunchTemplateSpecificationRequest.build(
      [void Function(FastLaunchLaunchTemplateSpecificationRequestBuilder)
          updates]) = _$FastLaunchLaunchTemplateSpecificationRequest;

  const FastLaunchLaunchTemplateSpecificationRequest._();

  static const List<
          _i2.SmithySerializer<FastLaunchLaunchTemplateSpecificationRequest>>
      serializers = [
    FastLaunchLaunchTemplateSpecificationRequestEc2QuerySerializer()
  ];

  /// The ID of the launch template to use for faster launching for a Windows AMI.
  String? get launchTemplateId;

  /// The name of the launch template to use for faster launching for a Windows AMI.
  String? get launchTemplateName;

  /// The version of the launch template to use for faster launching for a Windows AMI.
  String? get version;
  @override
  List<Object?> get props => [
        launchTemplateId,
        launchTemplateName,
        version,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'FastLaunchLaunchTemplateSpecificationRequest')
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

class FastLaunchLaunchTemplateSpecificationRequestEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<FastLaunchLaunchTemplateSpecificationRequest> {
  const FastLaunchLaunchTemplateSpecificationRequestEc2QuerySerializer()
      : super('FastLaunchLaunchTemplateSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        FastLaunchLaunchTemplateSpecificationRequest,
        _$FastLaunchLaunchTemplateSpecificationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FastLaunchLaunchTemplateSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FastLaunchLaunchTemplateSpecificationRequestBuilder();
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
    FastLaunchLaunchTemplateSpecificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FastLaunchLaunchTemplateSpecificationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FastLaunchLaunchTemplateSpecificationRequest(
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
