// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.scheduled_instances_iam_instance_profile; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'scheduled_instances_iam_instance_profile.g.dart';

/// Describes an IAM instance profile for a Scheduled Instance.
abstract class ScheduledInstancesIamInstanceProfile
    with
        _i1.AWSEquatable<ScheduledInstancesIamInstanceProfile>
    implements
        Built<ScheduledInstancesIamInstanceProfile,
            ScheduledInstancesIamInstanceProfileBuilder> {
  /// Describes an IAM instance profile for a Scheduled Instance.
  factory ScheduledInstancesIamInstanceProfile({
    String? arn,
    String? name,
  }) {
    return _$ScheduledInstancesIamInstanceProfile._(
      arn: arn,
      name: name,
    );
  }

  /// Describes an IAM instance profile for a Scheduled Instance.
  factory ScheduledInstancesIamInstanceProfile.build(
      [void Function(ScheduledInstancesIamInstanceProfileBuilder)
          updates]) = _$ScheduledInstancesIamInstanceProfile;

  const ScheduledInstancesIamInstanceProfile._();

  static const List<_i2.SmithySerializer<ScheduledInstancesIamInstanceProfile>>
      serializers = [ScheduledInstancesIamInstanceProfileEc2QuerySerializer()];

  /// The Amazon Resource Name (ARN).
  String? get arn;

  /// The name.
  String? get name;
  @override
  List<Object?> get props => [
        arn,
        name,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ScheduledInstancesIamInstanceProfile')
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

class ScheduledInstancesIamInstanceProfileEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ScheduledInstancesIamInstanceProfile> {
  const ScheduledInstancesIamInstanceProfileEc2QuerySerializer()
      : super('ScheduledInstancesIamInstanceProfile');

  @override
  Iterable<Type> get types => const [
        ScheduledInstancesIamInstanceProfile,
        _$ScheduledInstancesIamInstanceProfile,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstancesIamInstanceProfile deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstancesIamInstanceProfileBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Name':
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
    ScheduledInstancesIamInstanceProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ScheduledInstancesIamInstanceProfileResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ScheduledInstancesIamInstanceProfile(:arn, :name) = object;
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
