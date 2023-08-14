// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.user_bucket_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'user_bucket_details.g.dart';

/// Describes the Amazon S3 bucket for the disk image.
abstract class UserBucketDetails
    with _i1.AWSEquatable<UserBucketDetails>
    implements Built<UserBucketDetails, UserBucketDetailsBuilder> {
  /// Describes the Amazon S3 bucket for the disk image.
  factory UserBucketDetails({
    String? s3Bucket,
    String? s3Key,
  }) {
    return _$UserBucketDetails._(
      s3Bucket: s3Bucket,
      s3Key: s3Key,
    );
  }

  /// Describes the Amazon S3 bucket for the disk image.
  factory UserBucketDetails.build(
      [void Function(UserBucketDetailsBuilder) updates]) = _$UserBucketDetails;

  const UserBucketDetails._();

  static const List<_i2.SmithySerializer<UserBucketDetails>> serializers = [
    UserBucketDetailsEc2QuerySerializer()
  ];

  /// The Amazon S3 bucket from which the disk image was created.
  String? get s3Bucket;

  /// The file name of the disk image.
  String? get s3Key;
  @override
  List<Object?> get props => [
        s3Bucket,
        s3Key,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserBucketDetails')
      ..add(
        's3Bucket',
        s3Bucket,
      )
      ..add(
        's3Key',
        s3Key,
      );
    return helper.toString();
  }
}

class UserBucketDetailsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<UserBucketDetails> {
  const UserBucketDetailsEc2QuerySerializer() : super('UserBucketDetails');

  @override
  Iterable<Type> get types => const [
        UserBucketDetails,
        _$UserBucketDetails,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UserBucketDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserBucketDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 's3Bucket':
          result.s3Bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 's3Key':
          result.s3Key = (serializers.deserialize(
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
    UserBucketDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'UserBucketDetailsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final UserBucketDetails(:s3Bucket, :s3Key) = object;
    if (s3Bucket != null) {
      result$
        ..add(const _i2.XmlElementName('S3Bucket'))
        ..add(serializers.serialize(
          s3Bucket,
          specifiedType: const FullType(String),
        ));
    }
    if (s3Key != null) {
      result$
        ..add(const _i2.XmlElementName('S3Key'))
        ..add(serializers.serialize(
          s3Key,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
