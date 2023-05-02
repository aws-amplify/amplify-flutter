// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.upload_signing_certificate_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'upload_signing_certificate_request.g.dart';

abstract class UploadSigningCertificateRequest
    with
        _i1.HttpInput<UploadSigningCertificateRequest>,
        _i2.AWSEquatable<UploadSigningCertificateRequest>
    implements
        Built<UploadSigningCertificateRequest,
            UploadSigningCertificateRequestBuilder> {
  factory UploadSigningCertificateRequest({
    String? userName,
    required String certificateBody,
  }) {
    return _$UploadSigningCertificateRequest._(
      userName: userName,
      certificateBody: certificateBody,
    );
  }

  factory UploadSigningCertificateRequest.build(
          [void Function(UploadSigningCertificateRequestBuilder) updates]) =
      _$UploadSigningCertificateRequest;

  const UploadSigningCertificateRequest._();

  factory UploadSigningCertificateRequest.fromRequest(
    UploadSigningCertificateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    UploadSigningCertificateRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadSigningCertificateRequestBuilder b) {}

  /// The name of the user the signing certificate is for.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String? get userName;

  /// The contents of the signing certificate.
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  String get certificateBody;
  @override
  UploadSigningCertificateRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        certificateBody,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UploadSigningCertificateRequest');
    helper.add(
      'userName',
      userName,
    );
    helper.add(
      'certificateBody',
      certificateBody,
    );
    return helper.toString();
  }
}

class UploadSigningCertificateRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UploadSigningCertificateRequest> {
  const UploadSigningCertificateRequestAwsQuerySerializer()
      : super('UploadSigningCertificateRequest');

  @override
  Iterable<Type> get types => const [
        UploadSigningCertificateRequest,
        _$UploadSigningCertificateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UploadSigningCertificateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UploadSigningCertificateRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'UserName':
          if (value != null) {
            result.userName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CertificateBody':
          result.certificateBody = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as UploadSigningCertificateRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'UploadSigningCertificateRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.userName != null) {
      result
        ..add(const _i1.XmlElementName('UserName'))
        ..add(serializers.serialize(
          payload.userName!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('CertificateBody'))
      ..add(serializers.serialize(
        payload.certificateBody,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
