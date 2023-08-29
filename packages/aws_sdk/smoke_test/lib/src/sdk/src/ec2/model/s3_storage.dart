// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.s3_storage; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 's3_storage.g.dart';

/// Describes the storage parameters for Amazon S3 and Amazon S3 buckets for an instance store-backed AMI.
abstract class S3Storage
    with _i1.AWSEquatable<S3Storage>
    implements Built<S3Storage, S3StorageBuilder> {
  /// Describes the storage parameters for Amazon S3 and Amazon S3 buckets for an instance store-backed AMI.
  factory S3Storage({
    String? awsAccessKeyId,
    String? bucket,
    String? prefix,
    _i2.Uint8List? uploadPolicy,
    String? uploadPolicySignature,
  }) {
    return _$S3Storage._(
      awsAccessKeyId: awsAccessKeyId,
      bucket: bucket,
      prefix: prefix,
      uploadPolicy: uploadPolicy,
      uploadPolicySignature: uploadPolicySignature,
    );
  }

  /// Describes the storage parameters for Amazon S3 and Amazon S3 buckets for an instance store-backed AMI.
  factory S3Storage.build([void Function(S3StorageBuilder) updates]) =
      _$S3Storage;

  const S3Storage._();

  static const List<_i3.SmithySerializer<S3Storage>> serializers = [
    S3StorageEc2QuerySerializer()
  ];

  /// The access key ID of the owner of the bucket. Before you specify a value for your access key ID, review and follow the guidance in [Best Practices for Amazon Web Services accounts](https://docs.aws.amazon.com/accounts/latest/reference/best-practices.html) in the _Account ManagementReference Guide_.
  String? get awsAccessKeyId;

  /// The bucket in which to store the AMI. You can specify a bucket that you already own or a new bucket that Amazon EC2 creates on your behalf. If you specify a bucket that belongs to someone else, Amazon EC2 returns an error.
  String? get bucket;

  /// The beginning of the file name of the AMI.
  String? get prefix;

  /// An Amazon S3 upload policy that gives Amazon EC2 permission to upload items into Amazon S3 on your behalf.
  _i2.Uint8List? get uploadPolicy;

  /// The signature of the JSON document.
  String? get uploadPolicySignature;
  @override
  List<Object?> get props => [
        awsAccessKeyId,
        bucket,
        prefix,
        uploadPolicy,
        uploadPolicySignature,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('S3Storage')
      ..add(
        'awsAccessKeyId',
        awsAccessKeyId,
      )
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'prefix',
        prefix,
      )
      ..add(
        'uploadPolicy',
        uploadPolicy,
      )
      ..add(
        'uploadPolicySignature',
        uploadPolicySignature,
      );
    return helper.toString();
  }
}

class S3StorageEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<S3Storage> {
  const S3StorageEc2QuerySerializer() : super('S3Storage');

  @override
  Iterable<Type> get types => const [
        S3Storage,
        _$S3Storage,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  S3Storage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = S3StorageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AWSAccessKeyId':
          result.awsAccessKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'bucket':
          result.bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'uploadPolicy':
          result.uploadPolicy = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Uint8List),
          ) as _i2.Uint8List);
        case 'uploadPolicySignature':
          result.uploadPolicySignature = (serializers.deserialize(
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
    S3Storage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'S3StorageResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final S3Storage(
      :awsAccessKeyId,
      :bucket,
      :prefix,
      :uploadPolicy,
      :uploadPolicySignature
    ) = object;
    if (awsAccessKeyId != null) {
      result$
        ..add(const _i3.XmlElementName('AWSAccessKeyId'))
        ..add(serializers.serialize(
          awsAccessKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (bucket != null) {
      result$
        ..add(const _i3.XmlElementName('Bucket'))
        ..add(serializers.serialize(
          bucket,
          specifiedType: const FullType(String),
        ));
    }
    if (prefix != null) {
      result$
        ..add(const _i3.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    if (uploadPolicy != null) {
      result$
        ..add(const _i3.XmlElementName('UploadPolicy'))
        ..add(serializers.serialize(
          uploadPolicy,
          specifiedType: const FullType.nullable(_i2.Uint8List),
        ));
    }
    if (uploadPolicySignature != null) {
      result$
        ..add(const _i3.XmlElementName('UploadPolicySignature'))
        ..add(serializers.serialize(
          uploadPolicySignature,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
