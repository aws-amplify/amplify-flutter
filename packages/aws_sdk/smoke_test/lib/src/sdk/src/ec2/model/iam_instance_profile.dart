// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.iam_instance_profile; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'iam_instance_profile.g.dart';

/// Describes an IAM instance profile.
abstract class IamInstanceProfile
    with _i1.AWSEquatable<IamInstanceProfile>
    implements Built<IamInstanceProfile, IamInstanceProfileBuilder> {
  /// Describes an IAM instance profile.
  factory IamInstanceProfile({
    String? arn,
    String? id,
  }) {
    return _$IamInstanceProfile._(
      arn: arn,
      id: id,
    );
  }

  /// Describes an IAM instance profile.
  factory IamInstanceProfile.build(
          [void Function(IamInstanceProfileBuilder) updates]) =
      _$IamInstanceProfile;

  const IamInstanceProfile._();

  static const List<_i2.SmithySerializer<IamInstanceProfile>> serializers = [
    IamInstanceProfileEc2QuerySerializer()
  ];

  /// The Amazon Resource Name (ARN) of the instance profile.
  String? get arn;

  /// The ID of the instance profile.
  String? get id;
  @override
  List<Object?> get props => [
        arn,
        id,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IamInstanceProfile')
      ..add(
        'arn',
        arn,
      )
      ..add(
        'id',
        id,
      );
    return helper.toString();
  }
}

class IamInstanceProfileEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IamInstanceProfile> {
  const IamInstanceProfileEc2QuerySerializer() : super('IamInstanceProfile');

  @override
  Iterable<Type> get types => const [
        IamInstanceProfile,
        _$IamInstanceProfile,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IamInstanceProfile deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IamInstanceProfileBuilder();
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
        case 'id':
          result.id = (serializers.deserialize(
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
    IamInstanceProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IamInstanceProfileResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IamInstanceProfile(:arn, :id) = object;
    if (arn != null) {
      result$
        ..add(const _i2.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (id != null) {
      result$
        ..add(const _i2.XmlElementName('Id'))
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
