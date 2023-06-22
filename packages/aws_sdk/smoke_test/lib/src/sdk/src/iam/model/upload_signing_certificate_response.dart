// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.upload_signing_certificate_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/signing_certificate.dart'
    as _i2;

part 'upload_signing_certificate_response.g.dart';

/// Contains the response to a successful UploadSigningCertificate request.
abstract class UploadSigningCertificateResponse
    with
        _i1.AWSEquatable<UploadSigningCertificateResponse>
    implements
        Built<UploadSigningCertificateResponse,
            UploadSigningCertificateResponseBuilder> {
  /// Contains the response to a successful UploadSigningCertificate request.
  factory UploadSigningCertificateResponse(
      {required _i2.SigningCertificate certificate}) {
    return _$UploadSigningCertificateResponse._(certificate: certificate);
  }

  /// Contains the response to a successful UploadSigningCertificate request.
  factory UploadSigningCertificateResponse.build(
          [void Function(UploadSigningCertificateResponseBuilder) updates]) =
      _$UploadSigningCertificateResponse;

  const UploadSigningCertificateResponse._();

  /// Constructs a [UploadSigningCertificateResponse] from a [payload] and [response].
  factory UploadSigningCertificateResponse.fromResponse(
    UploadSigningCertificateResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<UploadSigningCertificateResponse>>
      serializers = [UploadSigningCertificateResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadSigningCertificateResponseBuilder b) {}

  /// Information about the certificate.
  _i2.SigningCertificate get certificate;
  @override
  List<Object?> get props => [certificate];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UploadSigningCertificateResponse')
          ..add(
            'certificate',
            certificate,
          );
    return helper.toString();
  }
}

class UploadSigningCertificateResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<UploadSigningCertificateResponse> {
  const UploadSigningCertificateResponseAwsQuerySerializer()
      : super('UploadSigningCertificateResponse');

  @override
  Iterable<Type> get types => const [
        UploadSigningCertificateResponse,
        _$UploadSigningCertificateResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UploadSigningCertificateResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UploadSigningCertificateResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Certificate':
          result.certificate.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.SigningCertificate),
          ) as _i2.SigningCertificate));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UploadSigningCertificateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'UploadSigningCertificateResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UploadSigningCertificateResponse(:certificate) = object;
    result$
      ..add(const _i3.XmlElementName('Certificate'))
      ..add(serializers.serialize(
        certificate,
        specifiedType: const FullType(_i2.SigningCertificate),
      ));
    return result$;
  }
}
