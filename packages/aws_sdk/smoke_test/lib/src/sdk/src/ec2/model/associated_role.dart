// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associated_role; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'associated_role.g.dart';

/// Information about the associated IAM roles.
abstract class AssociatedRole
    with _i1.AWSEquatable<AssociatedRole>
    implements Built<AssociatedRole, AssociatedRoleBuilder> {
  /// Information about the associated IAM roles.
  factory AssociatedRole({
    String? associatedRoleArn,
    String? certificateS3BucketName,
    String? certificateS3ObjectKey,
    String? encryptionKmsKeyId,
  }) {
    return _$AssociatedRole._(
      associatedRoleArn: associatedRoleArn,
      certificateS3BucketName: certificateS3BucketName,
      certificateS3ObjectKey: certificateS3ObjectKey,
      encryptionKmsKeyId: encryptionKmsKeyId,
    );
  }

  /// Information about the associated IAM roles.
  factory AssociatedRole.build([void Function(AssociatedRoleBuilder) updates]) =
      _$AssociatedRole;

  const AssociatedRole._();

  static const List<_i2.SmithySerializer<AssociatedRole>> serializers = [
    AssociatedRoleEc2QuerySerializer()
  ];

  /// The ARN of the associated IAM role.
  String? get associatedRoleArn;

  /// The name of the Amazon S3 bucket in which the Amazon S3 object is stored.
  String? get certificateS3BucketName;

  /// The key of the Amazon S3 object ey where the certificate, certificate chain, and encrypted private key bundle is stored. The object key is formated as follows: `role_arn`/`certificate_arn`.
  String? get certificateS3ObjectKey;

  /// The ID of the KMS customer master key (CMK) used to encrypt the private key.
  String? get encryptionKmsKeyId;
  @override
  List<Object?> get props => [
        associatedRoleArn,
        certificateS3BucketName,
        certificateS3ObjectKey,
        encryptionKmsKeyId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociatedRole')
      ..add(
        'associatedRoleArn',
        associatedRoleArn,
      )
      ..add(
        'certificateS3BucketName',
        certificateS3BucketName,
      )
      ..add(
        'certificateS3ObjectKey',
        certificateS3ObjectKey,
      )
      ..add(
        'encryptionKmsKeyId',
        encryptionKmsKeyId,
      );
    return helper.toString();
  }
}

class AssociatedRoleEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AssociatedRole> {
  const AssociatedRoleEc2QuerySerializer() : super('AssociatedRole');

  @override
  Iterable<Type> get types => const [
        AssociatedRole,
        _$AssociatedRole,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociatedRole deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociatedRoleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associatedRoleArn':
          result.associatedRoleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'certificateS3BucketName':
          result.certificateS3BucketName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'certificateS3ObjectKey':
          result.certificateS3ObjectKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'encryptionKmsKeyId':
          result.encryptionKmsKeyId = (serializers.deserialize(
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
    AssociatedRole object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AssociatedRoleResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociatedRole(
      :associatedRoleArn,
      :certificateS3BucketName,
      :certificateS3ObjectKey,
      :encryptionKmsKeyId
    ) = object;
    if (associatedRoleArn != null) {
      result$
        ..add(const _i2.XmlElementName('AssociatedRoleArn'))
        ..add(serializers.serialize(
          associatedRoleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (certificateS3BucketName != null) {
      result$
        ..add(const _i2.XmlElementName('CertificateS3BucketName'))
        ..add(serializers.serialize(
          certificateS3BucketName,
          specifiedType: const FullType(String),
        ));
    }
    if (certificateS3ObjectKey != null) {
      result$
        ..add(const _i2.XmlElementName('CertificateS3ObjectKey'))
        ..add(serializers.serialize(
          certificateS3ObjectKey,
          specifiedType: const FullType(String),
        ));
    }
    if (encryptionKmsKeyId != null) {
      result$
        ..add(const _i2.XmlElementName('EncryptionKmsKeyId'))
        ..add(serializers.serialize(
          encryptionKmsKeyId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
