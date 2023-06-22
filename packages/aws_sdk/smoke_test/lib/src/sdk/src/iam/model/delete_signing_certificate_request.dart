// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_signing_certificate_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_signing_certificate_request.g.dart';

abstract class DeleteSigningCertificateRequest
    with
        _i1.HttpInput<DeleteSigningCertificateRequest>,
        _i2.AWSEquatable<DeleteSigningCertificateRequest>
    implements
        Built<DeleteSigningCertificateRequest,
            DeleteSigningCertificateRequestBuilder> {
  factory DeleteSigningCertificateRequest({
    String? userName,
    required String certificateId,
  }) {
    return _$DeleteSigningCertificateRequest._(
      userName: userName,
      certificateId: certificateId,
    );
  }

  factory DeleteSigningCertificateRequest.build(
          [void Function(DeleteSigningCertificateRequestBuilder) updates]) =
      _$DeleteSigningCertificateRequest;

  const DeleteSigningCertificateRequest._();

  factory DeleteSigningCertificateRequest.fromRequest(
    DeleteSigningCertificateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteSigningCertificateRequest>>
      serializers = [DeleteSigningCertificateRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteSigningCertificateRequestBuilder b) {}

  /// The name of the user the signing certificate belongs to.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String? get userName;

  /// The ID of the signing certificate to delete.
  ///
  /// The format of this parameter, as described by its [regex](http://wikipedia.org/wiki/regex) pattern, is a string of characters that can be upper- or lower-cased letters or digits.
  String get certificateId;
  @override
  DeleteSigningCertificateRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        certificateId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteSigningCertificateRequest')
          ..add(
            'userName',
            userName,
          )
          ..add(
            'certificateId',
            certificateId,
          );
    return helper.toString();
  }
}

class DeleteSigningCertificateRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteSigningCertificateRequest> {
  const DeleteSigningCertificateRequestAwsQuerySerializer()
      : super('DeleteSigningCertificateRequest');

  @override
  Iterable<Type> get types => const [
        DeleteSigningCertificateRequest,
        _$DeleteSigningCertificateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteSigningCertificateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteSigningCertificateRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteSigningCertificateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteSigningCertificateRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteSigningCertificateRequest(:userName, :certificateId) = object;
    if (userName != null) {
      result$
        ..add(const _i1.XmlElementName('UserName'))
        ..add(serializers.serialize(
          userName,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('CertificateId'))
      ..add(serializers.serialize(
        certificateId,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
