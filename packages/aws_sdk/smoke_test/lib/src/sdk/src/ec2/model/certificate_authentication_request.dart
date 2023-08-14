// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.certificate_authentication_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'certificate_authentication_request.g.dart';

/// Information about the client certificate to be used for authentication.
abstract class CertificateAuthenticationRequest
    with
        _i1.AWSEquatable<CertificateAuthenticationRequest>
    implements
        Built<CertificateAuthenticationRequest,
            CertificateAuthenticationRequestBuilder> {
  /// Information about the client certificate to be used for authentication.
  factory CertificateAuthenticationRequest(
      {String? clientRootCertificateChainArn}) {
    return _$CertificateAuthenticationRequest._(
        clientRootCertificateChainArn: clientRootCertificateChainArn);
  }

  /// Information about the client certificate to be used for authentication.
  factory CertificateAuthenticationRequest.build(
          [void Function(CertificateAuthenticationRequestBuilder) updates]) =
      _$CertificateAuthenticationRequest;

  const CertificateAuthenticationRequest._();

  static const List<_i2.SmithySerializer<CertificateAuthenticationRequest>>
      serializers = [CertificateAuthenticationRequestEc2QuerySerializer()];

  /// The ARN of the client certificate. The certificate must be signed by a certificate authority (CA) and it must be provisioned in Certificate Manager (ACM).
  String? get clientRootCertificateChainArn;
  @override
  List<Object?> get props => [clientRootCertificateChainArn];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CertificateAuthenticationRequest')
          ..add(
            'clientRootCertificateChainArn',
            clientRootCertificateChainArn,
          );
    return helper.toString();
  }
}

class CertificateAuthenticationRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CertificateAuthenticationRequest> {
  const CertificateAuthenticationRequestEc2QuerySerializer()
      : super('CertificateAuthenticationRequest');

  @override
  Iterable<Type> get types => const [
        CertificateAuthenticationRequest,
        _$CertificateAuthenticationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CertificateAuthenticationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CertificateAuthenticationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ClientRootCertificateChainArn':
          result.clientRootCertificateChainArn = (serializers.deserialize(
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
    CertificateAuthenticationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CertificateAuthenticationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CertificateAuthenticationRequest(:clientRootCertificateChainArn) =
        object;
    if (clientRootCertificateChainArn != null) {
      result$
        ..add(const _i2.XmlElementName('ClientRootCertificateChainArn'))
        ..add(serializers.serialize(
          clientRootCertificateChainArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
