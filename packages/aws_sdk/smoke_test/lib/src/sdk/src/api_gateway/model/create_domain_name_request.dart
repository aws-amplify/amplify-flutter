// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.create_domain_name_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/endpoint_configuration.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/mutual_tls_authentication_input.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/model/security_policy.dart'
    as _i4;

part 'create_domain_name_request.g.dart';

/// A request to create a new domain name.
abstract class CreateDomainNameRequest
    with
        _i1.HttpInput<CreateDomainNameRequest>,
        _i2.AWSEquatable<CreateDomainNameRequest>
    implements Built<CreateDomainNameRequest, CreateDomainNameRequestBuilder> {
  /// A request to create a new domain name.
  factory CreateDomainNameRequest({
    required String domainName,
    String? certificateName,
    String? certificateBody,
    String? certificatePrivateKey,
    String? certificateChain,
    String? certificateArn,
    String? regionalCertificateName,
    String? regionalCertificateArn,
    _i3.EndpointConfiguration? endpointConfiguration,
    Map<String, String>? tags,
    _i4.SecurityPolicy? securityPolicy,
    _i5.MutualTlsAuthenticationInput? mutualTlsAuthentication,
    String? ownershipVerificationCertificateArn,
  }) {
    return _$CreateDomainNameRequest._(
      domainName: domainName,
      certificateName: certificateName,
      certificateBody: certificateBody,
      certificatePrivateKey: certificatePrivateKey,
      certificateChain: certificateChain,
      certificateArn: certificateArn,
      regionalCertificateName: regionalCertificateName,
      regionalCertificateArn: regionalCertificateArn,
      endpointConfiguration: endpointConfiguration,
      tags: tags == null ? null : _i6.BuiltMap(tags),
      securityPolicy: securityPolicy,
      mutualTlsAuthentication: mutualTlsAuthentication,
      ownershipVerificationCertificateArn: ownershipVerificationCertificateArn,
    );
  }

  /// A request to create a new domain name.
  factory CreateDomainNameRequest.build(
          [void Function(CreateDomainNameRequestBuilder) updates]) =
      _$CreateDomainNameRequest;

  const CreateDomainNameRequest._();

  factory CreateDomainNameRequest.fromRequest(
    CreateDomainNameRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateDomainNameRequest>> serializers =
      [CreateDomainNameRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDomainNameRequestBuilder b) {}

  /// The name of the DomainName resource.
  String get domainName;

  /// The user-friendly name of the certificate that will be used by edge-optimized endpoint for this domain name.
  String? get certificateName;

  /// \[Deprecated\] The body of the server certificate that will be used by edge-optimized endpoint for this domain name provided by your certificate authority.
  String? get certificateBody;

  /// \[Deprecated\] Your edge-optimized endpoint's domain name certificate's private key.
  String? get certificatePrivateKey;

  /// \[Deprecated\] The intermediate certificates and optionally the root certificate, one after the other without any blank lines, used by an edge-optimized endpoint for this domain name. If you include the root certificate, your certificate chain must start with intermediate certificates and end with the root certificate. Use the intermediate certificates that were provided by your certificate authority. Do not include any intermediaries that are not in the chain of trust path.
  String? get certificateChain;

  /// The reference to an AWS-managed certificate that will be used by edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.
  String? get certificateArn;

  /// The user-friendly name of the certificate that will be used by regional endpoint for this domain name.
  String? get regionalCertificateName;

  /// The reference to an AWS-managed certificate that will be used by regional endpoint for this domain name. AWS Certificate Manager is the only supported source.
  String? get regionalCertificateArn;

  /// The endpoint configuration of this DomainName showing the endpoint types of the domain name.
  _i3.EndpointConfiguration? get endpointConfiguration;

  /// The key-value map of strings. The valid character set is \[a-zA-Z+-=._:/\]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
  _i6.BuiltMap<String, String>? get tags;

  /// The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are `TLS\_1\_0` and `TLS\_1\_2`.
  _i4.SecurityPolicy? get securityPolicy;

  /// The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway performs two-way authentication between the client and the server. Clients must present a trusted certificate to access your API.
  _i5.MutualTlsAuthenticationInput? get mutualTlsAuthentication;

  /// The ARN of the public certificate issued by ACM to validate ownership of your custom domain. Only required when configuring mutual TLS and using an ACM imported or private CA certificate ARN as the regionalCertificateArn.
  String? get ownershipVerificationCertificateArn;
  @override
  CreateDomainNameRequest getPayload() => this;
  @override
  List<Object?> get props => [
        domainName,
        certificateName,
        certificateBody,
        certificatePrivateKey,
        certificateChain,
        certificateArn,
        regionalCertificateName,
        regionalCertificateArn,
        endpointConfiguration,
        tags,
        securityPolicy,
        mutualTlsAuthentication,
        ownershipVerificationCertificateArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateDomainNameRequest')
      ..add(
        'domainName',
        domainName,
      )
      ..add(
        'certificateName',
        certificateName,
      )
      ..add(
        'certificateBody',
        certificateBody,
      )
      ..add(
        'certificatePrivateKey',
        certificatePrivateKey,
      )
      ..add(
        'certificateChain',
        certificateChain,
      )
      ..add(
        'certificateArn',
        certificateArn,
      )
      ..add(
        'regionalCertificateName',
        regionalCertificateName,
      )
      ..add(
        'regionalCertificateArn',
        regionalCertificateArn,
      )
      ..add(
        'endpointConfiguration',
        endpointConfiguration,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'securityPolicy',
        securityPolicy,
      )
      ..add(
        'mutualTlsAuthentication',
        mutualTlsAuthentication,
      )
      ..add(
        'ownershipVerificationCertificateArn',
        ownershipVerificationCertificateArn,
      );
    return helper.toString();
  }
}

class CreateDomainNameRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<CreateDomainNameRequest> {
  const CreateDomainNameRequestRestJson1Serializer()
      : super('CreateDomainNameRequest');

  @override
  Iterable<Type> get types => const [
        CreateDomainNameRequest,
        _$CreateDomainNameRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateDomainNameRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDomainNameRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'certificateArn':
          result.certificateArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'certificateBody':
          result.certificateBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'certificateChain':
          result.certificateChain = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'certificateName':
          result.certificateName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'certificatePrivateKey':
          result.certificatePrivateKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'domainName':
          result.domainName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'endpointConfiguration':
          result.endpointConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.EndpointConfiguration),
          ) as _i3.EndpointConfiguration));
        case 'mutualTlsAuthentication':
          result.mutualTlsAuthentication.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.MutualTlsAuthenticationInput),
          ) as _i5.MutualTlsAuthenticationInput));
        case 'ownershipVerificationCertificateArn':
          result.ownershipVerificationCertificateArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'regionalCertificateArn':
          result.regionalCertificateArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'regionalCertificateName':
          result.regionalCertificateName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'securityPolicy':
          result.securityPolicy = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.SecurityPolicy),
          ) as _i4.SecurityPolicy);
        case 'tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i6.BuiltMap<String, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateDomainNameRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateDomainNameRequest(
      :certificateArn,
      :certificateBody,
      :certificateChain,
      :certificateName,
      :certificatePrivateKey,
      :domainName,
      :endpointConfiguration,
      :mutualTlsAuthentication,
      :ownershipVerificationCertificateArn,
      :regionalCertificateArn,
      :regionalCertificateName,
      :securityPolicy,
      :tags
    ) = object;
    result$.addAll([
      'domainName',
      serializers.serialize(
        domainName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (certificateArn != null) {
      result$
        ..add('certificateArn')
        ..add(serializers.serialize(
          certificateArn,
          specifiedType: const FullType(String),
        ));
    }
    if (certificateBody != null) {
      result$
        ..add('certificateBody')
        ..add(serializers.serialize(
          certificateBody,
          specifiedType: const FullType(String),
        ));
    }
    if (certificateChain != null) {
      result$
        ..add('certificateChain')
        ..add(serializers.serialize(
          certificateChain,
          specifiedType: const FullType(String),
        ));
    }
    if (certificateName != null) {
      result$
        ..add('certificateName')
        ..add(serializers.serialize(
          certificateName,
          specifiedType: const FullType(String),
        ));
    }
    if (certificatePrivateKey != null) {
      result$
        ..add('certificatePrivateKey')
        ..add(serializers.serialize(
          certificatePrivateKey,
          specifiedType: const FullType(String),
        ));
    }
    if (endpointConfiguration != null) {
      result$
        ..add('endpointConfiguration')
        ..add(serializers.serialize(
          endpointConfiguration,
          specifiedType: const FullType(_i3.EndpointConfiguration),
        ));
    }
    if (mutualTlsAuthentication != null) {
      result$
        ..add('mutualTlsAuthentication')
        ..add(serializers.serialize(
          mutualTlsAuthentication,
          specifiedType: const FullType(_i5.MutualTlsAuthenticationInput),
        ));
    }
    if (ownershipVerificationCertificateArn != null) {
      result$
        ..add('ownershipVerificationCertificateArn')
        ..add(serializers.serialize(
          ownershipVerificationCertificateArn,
          specifiedType: const FullType(String),
        ));
    }
    if (regionalCertificateArn != null) {
      result$
        ..add('regionalCertificateArn')
        ..add(serializers.serialize(
          regionalCertificateArn,
          specifiedType: const FullType(String),
        ));
    }
    if (regionalCertificateName != null) {
      result$
        ..add('regionalCertificateName')
        ..add(serializers.serialize(
          regionalCertificateName,
          specifiedType: const FullType(String),
        ));
    }
    if (securityPolicy != null) {
      result$
        ..add('securityPolicy')
        ..add(serializers.serialize(
          securityPolicy,
          specifiedType: const FullType(_i4.SecurityPolicy),
        ));
    }
    if (tags != null) {
      result$
        ..add('tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result$;
  }
}
