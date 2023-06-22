// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.signing_certificate; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart' as _i2;

part 'signing_certificate.g.dart';

/// Contains information about an X.509 signing certificate.
///
/// This data type is used as a response element in the UploadSigningCertificate and ListSigningCertificates operations.
abstract class SigningCertificate
    with _i1.AWSEquatable<SigningCertificate>
    implements Built<SigningCertificate, SigningCertificateBuilder> {
  /// Contains information about an X.509 signing certificate.
  ///
  /// This data type is used as a response element in the UploadSigningCertificate and ListSigningCertificates operations.
  factory SigningCertificate({
    required String userName,
    required String certificateId,
    required String certificateBody,
    required _i2.StatusType status,
    DateTime? uploadDate,
  }) {
    return _$SigningCertificate._(
      userName: userName,
      certificateId: certificateId,
      certificateBody: certificateBody,
      status: status,
      uploadDate: uploadDate,
    );
  }

  /// Contains information about an X.509 signing certificate.
  ///
  /// This data type is used as a response element in the UploadSigningCertificate and ListSigningCertificates operations.
  factory SigningCertificate.build(
          [void Function(SigningCertificateBuilder) updates]) =
      _$SigningCertificate;

  const SigningCertificate._();

  static const List<_i3.SmithySerializer<SigningCertificate>> serializers = [
    SigningCertificateAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SigningCertificateBuilder b) {}

  /// The name of the user the signing certificate is associated with.
  String get userName;

  /// The ID for the signing certificate.
  String get certificateId;

  /// The contents of the signing certificate.
  String get certificateBody;

  /// The status of the signing certificate. `Active` means that the key is valid for API calls, while `Inactive` means it is not.
  _i2.StatusType get status;

  /// The date when the signing certificate was uploaded.
  DateTime? get uploadDate;
  @override
  List<Object?> get props => [
        userName,
        certificateId,
        certificateBody,
        status,
        uploadDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SigningCertificate')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'certificateId',
        certificateId,
      )
      ..add(
        'certificateBody',
        certificateBody,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'uploadDate',
        uploadDate,
      );
    return helper.toString();
  }
}

class SigningCertificateAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<SigningCertificate> {
  const SigningCertificateAwsQuerySerializer() : super('SigningCertificate');

  @override
  Iterable<Type> get types => const [
        SigningCertificate,
        _$SigningCertificate,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  SigningCertificate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SigningCertificateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserName':
          result.userName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CertificateId':
          result.certificateId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CertificateBody':
          result.certificateBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StatusType),
          ) as _i2.StatusType);
        case 'UploadDate':
          result.uploadDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SigningCertificate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SigningCertificateResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final SigningCertificate(
      :userName,
      :certificateId,
      :certificateBody,
      :status,
      :uploadDate
    ) = object;
    result$
      ..add(const _i3.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i3.XmlElementName('CertificateId'))
      ..add(serializers.serialize(
        certificateId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i3.XmlElementName('CertificateBody'))
      ..add(serializers.serialize(
        certificateBody,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i3.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(_i2.StatusType),
      ));
    if (uploadDate != null) {
      result$
        ..add(const _i3.XmlElementName('UploadDate'))
        ..add(serializers.serialize(
          uploadDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
