// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.s3_object_tag; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 's3_object_tag.g.dart';

/// The tags to apply to the AMI object that will be stored in the Amazon S3 bucket. For more information, see [Categorizing your storage using tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html) in the _Amazon Simple Storage Service User Guide_.
abstract class S3ObjectTag
    with _i1.AWSEquatable<S3ObjectTag>
    implements Built<S3ObjectTag, S3ObjectTagBuilder> {
  /// The tags to apply to the AMI object that will be stored in the Amazon S3 bucket. For more information, see [Categorizing your storage using tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html) in the _Amazon Simple Storage Service User Guide_.
  factory S3ObjectTag({
    String? key,
    String? value,
  }) {
    return _$S3ObjectTag._(
      key: key,
      value: value,
    );
  }

  /// The tags to apply to the AMI object that will be stored in the Amazon S3 bucket. For more information, see [Categorizing your storage using tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html) in the _Amazon Simple Storage Service User Guide_.
  factory S3ObjectTag.build([void Function(S3ObjectTagBuilder) updates]) =
      _$S3ObjectTag;

  const S3ObjectTag._();

  static const List<_i2.SmithySerializer<S3ObjectTag>> serializers = [
    S3ObjectTagEc2QuerySerializer()
  ];

  /// The key of the tag.
  ///
  /// Constraints: Tag keys are case-sensitive and can be up to 128 Unicode characters in length. May not begin with `aws`:.
  String? get key;

  /// The value of the tag.
  ///
  /// Constraints: Tag values are case-sensitive and can be up to 256 Unicode characters in length.
  String? get value;
  @override
  List<Object?> get props => [
        key,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('S3ObjectTag')
      ..add(
        'key',
        key,
      )
      ..add(
        'value',
        value,
      );
    return helper.toString();
  }
}

class S3ObjectTagEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<S3ObjectTag> {
  const S3ObjectTagEc2QuerySerializer() : super('S3ObjectTag');

  @override
  Iterable<Type> get types => const [
        S3ObjectTag,
        _$S3ObjectTag,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  S3ObjectTag deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = S3ObjectTagBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Value':
          result.value = (serializers.deserialize(
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
    S3ObjectTag object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'S3ObjectTagResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final S3ObjectTag(:key, :value) = object;
    if (key != null) {
      result$
        ..add(const _i2.XmlElementName('Key'))
        ..add(serializers.serialize(
          key,
          specifiedType: const FullType(String),
        ));
    }
    if (value != null) {
      result$
        ..add(const _i2.XmlElementName('Value'))
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
