// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_enclave_certificate_iam_role_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'associate_enclave_certificate_iam_role_result.g.dart';

abstract class AssociateEnclaveCertificateIamRoleResult
    with
        _i1.AWSEquatable<AssociateEnclaveCertificateIamRoleResult>
    implements
        Built<AssociateEnclaveCertificateIamRoleResult,
            AssociateEnclaveCertificateIamRoleResultBuilder> {
  factory AssociateEnclaveCertificateIamRoleResult({
    String? certificateS3BucketName,
    String? certificateS3ObjectKey,
    String? encryptionKmsKeyId,
  }) {
    return _$AssociateEnclaveCertificateIamRoleResult._(
      certificateS3BucketName: certificateS3BucketName,
      certificateS3ObjectKey: certificateS3ObjectKey,
      encryptionKmsKeyId: encryptionKmsKeyId,
    );
  }

  factory AssociateEnclaveCertificateIamRoleResult.build(
      [void Function(AssociateEnclaveCertificateIamRoleResultBuilder)
          updates]) = _$AssociateEnclaveCertificateIamRoleResult;

  const AssociateEnclaveCertificateIamRoleResult._();

  /// Constructs a [AssociateEnclaveCertificateIamRoleResult] from a [payload] and [response].
  factory AssociateEnclaveCertificateIamRoleResult.fromResponse(
    AssociateEnclaveCertificateIamRoleResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<AssociateEnclaveCertificateIamRoleResult>>
      serializers = [
    AssociateEnclaveCertificateIamRoleResultEc2QuerySerializer()
  ];

  /// The name of the Amazon S3 bucket to which the certificate was uploaded.
  String? get certificateS3BucketName;

  /// The Amazon S3 object key where the certificate, certificate chain, and encrypted private key bundle are stored. The object key is formatted as follows: `role_arn`/`certificate_arn`.
  String? get certificateS3ObjectKey;

  /// The ID of the KMS key used to encrypt the private key of the certificate.
  String? get encryptionKmsKeyId;
  @override
  List<Object?> get props => [
        certificateS3BucketName,
        certificateS3ObjectKey,
        encryptionKmsKeyId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateEnclaveCertificateIamRoleResult')
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

class AssociateEnclaveCertificateIamRoleResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<AssociateEnclaveCertificateIamRoleResult> {
  const AssociateEnclaveCertificateIamRoleResultEc2QuerySerializer()
      : super('AssociateEnclaveCertificateIamRoleResult');

  @override
  Iterable<Type> get types => const [
        AssociateEnclaveCertificateIamRoleResult,
        _$AssociateEnclaveCertificateIamRoleResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateEnclaveCertificateIamRoleResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateEnclaveCertificateIamRoleResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    AssociateEnclaveCertificateIamRoleResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AssociateEnclaveCertificateIamRoleResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateEnclaveCertificateIamRoleResult(
      :certificateS3BucketName,
      :certificateS3ObjectKey,
      :encryptionKmsKeyId
    ) = object;
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
