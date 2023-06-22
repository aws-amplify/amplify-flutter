// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.update_signing_certificate_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart' as _i3;

part 'update_signing_certificate_request.g.dart';

abstract class UpdateSigningCertificateRequest
    with
        _i1.HttpInput<UpdateSigningCertificateRequest>,
        _i2.AWSEquatable<UpdateSigningCertificateRequest>
    implements
        Built<UpdateSigningCertificateRequest,
            UpdateSigningCertificateRequestBuilder> {
  factory UpdateSigningCertificateRequest({
    String? userName,
    required String certificateId,
    required _i3.StatusType status,
  }) {
    return _$UpdateSigningCertificateRequest._(
      userName: userName,
      certificateId: certificateId,
      status: status,
    );
  }

  factory UpdateSigningCertificateRequest.build(
          [void Function(UpdateSigningCertificateRequestBuilder) updates]) =
      _$UpdateSigningCertificateRequest;

  const UpdateSigningCertificateRequest._();

  factory UpdateSigningCertificateRequest.fromRequest(
    UpdateSigningCertificateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateSigningCertificateRequest>>
      serializers = [UpdateSigningCertificateRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateSigningCertificateRequestBuilder b) {}

  /// The name of the IAM user the signing certificate belongs to.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String? get userName;

  /// The ID of the signing certificate you want to update.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.
  String get certificateId;

  /// The status you want to assign to the certificate. `Active` means that the certificate can be used for programmatic calls to Amazon Web Services `Inactive` means that the certificate cannot be used.
  _i3.StatusType get status;
  @override
  UpdateSigningCertificateRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        certificateId,
        status,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateSigningCertificateRequest')
          ..add(
            'userName',
            userName,
          )
          ..add(
            'certificateId',
            certificateId,
          )
          ..add(
            'status',
            status,
          );
    return helper.toString();
  }
}

class UpdateSigningCertificateRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UpdateSigningCertificateRequest> {
  const UpdateSigningCertificateRequestAwsQuerySerializer()
      : super('UpdateSigningCertificateRequest');

  @override
  Iterable<Type> get types => const [
        UpdateSigningCertificateRequest,
        _$UpdateSigningCertificateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateSigningCertificateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateSigningCertificateRequestBuilder();
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
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StatusType),
          ) as _i3.StatusType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateSigningCertificateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateSigningCertificateRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UpdateSigningCertificateRequest(:userName, :certificateId, :status) =
        object;
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
    result$
      ..add(const _i1.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(_i3.StatusType),
      ));
    return result$;
  }
}
