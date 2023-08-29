// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.upload_signing_certificate_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/signing_certificate.dart';

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
      {required SigningCertificate certificate}) {
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

  static const List<_i2.SmithySerializer<UploadSigningCertificateResponse>>
      serializers = [UploadSigningCertificateResponseAwsQuerySerializer()];

  /// Information about the certificate.
  SigningCertificate get certificate;
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
    extends _i2.StructuredSmithySerializer<UploadSigningCertificateResponse> {
  const UploadSigningCertificateResponseAwsQuerySerializer()
      : super('UploadSigningCertificateResponse');

  @override
  Iterable<Type> get types => const [
        UploadSigningCertificateResponse,
        _$UploadSigningCertificateResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
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
            specifiedType: const FullType(SigningCertificate),
          ) as SigningCertificate));
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
      const _i2.XmlElementName(
        'UploadSigningCertificateResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UploadSigningCertificateResponse(:certificate) = object;
    result$
      ..add(const _i2.XmlElementName('Certificate'))
      ..add(serializers.serialize(
        certificate,
        specifiedType: const FullType(SigningCertificate),
      ));
    return result$;
  }
}
