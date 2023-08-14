// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_iam_instance_profile_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_iam_instance_profile_specification.g.dart';

/// Describes an IAM instance profile.
abstract class LaunchTemplateIamInstanceProfileSpecification
    with
        _i1.AWSEquatable<LaunchTemplateIamInstanceProfileSpecification>
    implements
        Built<LaunchTemplateIamInstanceProfileSpecification,
            LaunchTemplateIamInstanceProfileSpecificationBuilder> {
  /// Describes an IAM instance profile.
  factory LaunchTemplateIamInstanceProfileSpecification({
    String? arn,
    String? name,
  }) {
    return _$LaunchTemplateIamInstanceProfileSpecification._(
      arn: arn,
      name: name,
    );
  }

  /// Describes an IAM instance profile.
  factory LaunchTemplateIamInstanceProfileSpecification.build(
      [void Function(LaunchTemplateIamInstanceProfileSpecificationBuilder)
          updates]) = _$LaunchTemplateIamInstanceProfileSpecification;

  const LaunchTemplateIamInstanceProfileSpecification._();

  static const List<
          _i2.SmithySerializer<LaunchTemplateIamInstanceProfileSpecification>>
      serializers = [
    LaunchTemplateIamInstanceProfileSpecificationEc2QuerySerializer()
  ];

  /// The Amazon Resource Name (ARN) of the instance profile.
  String? get arn;

  /// The name of the instance profile.
  String? get name;
  @override
  List<Object?> get props => [
        arn,
        name,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'LaunchTemplateIamInstanceProfileSpecification')
      ..add(
        'arn',
        arn,
      )
      ..add(
        'name',
        name,
      );
    return helper.toString();
  }
}

class LaunchTemplateIamInstanceProfileSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        LaunchTemplateIamInstanceProfileSpecification> {
  const LaunchTemplateIamInstanceProfileSpecificationEc2QuerySerializer()
      : super('LaunchTemplateIamInstanceProfileSpecification');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateIamInstanceProfileSpecification,
        _$LaunchTemplateIamInstanceProfileSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateIamInstanceProfileSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateIamInstanceProfileSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
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
    LaunchTemplateIamInstanceProfileSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateIamInstanceProfileSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateIamInstanceProfileSpecification(:arn, :name) = object;
    if (arn != null) {
      result$
        ..add(const _i2.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
