// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fast_launch_launch_template_specification_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'fast_launch_launch_template_specification_response.g.dart';

/// Identifies the launch template to use for faster launching of the Windows AMI.
abstract class FastLaunchLaunchTemplateSpecificationResponse
    with
        _i1.AWSEquatable<FastLaunchLaunchTemplateSpecificationResponse>
    implements
        Built<FastLaunchLaunchTemplateSpecificationResponse,
            FastLaunchLaunchTemplateSpecificationResponseBuilder> {
  /// Identifies the launch template to use for faster launching of the Windows AMI.
  factory FastLaunchLaunchTemplateSpecificationResponse({
    String? launchTemplateId,
    String? launchTemplateName,
    String? version,
  }) {
    return _$FastLaunchLaunchTemplateSpecificationResponse._(
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      version: version,
    );
  }

  /// Identifies the launch template to use for faster launching of the Windows AMI.
  factory FastLaunchLaunchTemplateSpecificationResponse.build(
      [void Function(FastLaunchLaunchTemplateSpecificationResponseBuilder)
          updates]) = _$FastLaunchLaunchTemplateSpecificationResponse;

  const FastLaunchLaunchTemplateSpecificationResponse._();

  static const List<
          _i2.SmithySerializer<FastLaunchLaunchTemplateSpecificationResponse>>
      serializers = [
    FastLaunchLaunchTemplateSpecificationResponseEc2QuerySerializer()
  ];

  /// The ID of the launch template for faster launching of the associated Windows AMI.
  String? get launchTemplateId;

  /// The name of the launch template for faster launching of the associated Windows AMI.
  String? get launchTemplateName;

  /// The version of the launch template for faster launching of the associated Windows AMI.
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
        'FastLaunchLaunchTemplateSpecificationResponse')
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

class FastLaunchLaunchTemplateSpecificationResponseEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        FastLaunchLaunchTemplateSpecificationResponse> {
  const FastLaunchLaunchTemplateSpecificationResponseEc2QuerySerializer()
      : super('FastLaunchLaunchTemplateSpecificationResponse');

  @override
  Iterable<Type> get types => const [
        FastLaunchLaunchTemplateSpecificationResponse,
        _$FastLaunchLaunchTemplateSpecificationResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FastLaunchLaunchTemplateSpecificationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FastLaunchLaunchTemplateSpecificationResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'launchTemplateId':
          result.launchTemplateId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'launchTemplateName':
          result.launchTemplateName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'version':
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
    FastLaunchLaunchTemplateSpecificationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FastLaunchLaunchTemplateSpecificationResponseResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FastLaunchLaunchTemplateSpecificationResponse(
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
