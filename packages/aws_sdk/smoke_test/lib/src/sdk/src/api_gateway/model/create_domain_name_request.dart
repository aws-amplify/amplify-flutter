// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.create_domain_name_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/endpoint_configuration.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/mutual_tls_authentication_input.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/security_policy.dart'
    as _i5;

part 'create_domain_name_request.g.dart';

/// A request to create a new domain name.
abstract class CreateDomainNameRequest
    with
        _i1.HttpInput<CreateDomainNameRequest>,
        _i2.AWSEquatable<CreateDomainNameRequest>
    implements Built<CreateDomainNameRequest, CreateDomainNameRequestBuilder> {
  /// A request to create a new domain name.
  factory CreateDomainNameRequest({
    String? certificateArn,
    String? certificateBody,
    String? certificateChain,
    String? certificateName,
    String? certificatePrivateKey,
    required String domainName,
    _i3.EndpointConfiguration? endpointConfiguration,
    _i4.MutualTlsAuthenticationInput? mutualTlsAuthentication,
    String? ownershipVerificationCertificateArn,
    String? regionalCertificateArn,
    String? regionalCertificateName,
    _i5.SecurityPolicy? securityPolicy,
    Map<String, String>? tags,
  }) {
    return _$CreateDomainNameRequest._(
      certificateArn: certificateArn,
      certificateBody: certificateBody,
      certificateChain: certificateChain,
      certificateName: certificateName,
      certificatePrivateKey: certificatePrivateKey,
      domainName: domainName,
      endpointConfiguration: endpointConfiguration,
      mutualTlsAuthentication: mutualTlsAuthentication,
      ownershipVerificationCertificateArn: ownershipVerificationCertificateArn,
      regionalCertificateArn: regionalCertificateArn,
      regionalCertificateName: regionalCertificateName,
      securityPolicy: securityPolicy,
      tags: tags == null ? null : _i6.BuiltMap(tags),
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

  static const List<_i1.SmithySerializer> serializers = [
    CreateDomainNameRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDomainNameRequestBuilder b) {}

  /// The reference to an AWS-managed certificate that will be used by edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.
  String? get certificateArn;

  /// \[Deprecated\] The body of the server certificate that will be used by edge-optimized endpoint for this domain name provided by your certificate authority.
  String? get certificateBody;

  /// \[Deprecated\] The intermediate certificates and optionally the root certificate, one after the other without any blank lines, used by an edge-optimized endpoint for this domain name. If you include the root certificate, your certificate chain must start with intermediate certificates and end with the root certificate. Use the intermediate certificates that were provided by your certificate authority. Do not include any intermediaries that are not in the chain of trust path.
  String? get certificateChain;

  /// The user-friendly name of the certificate that will be used by edge-optimized endpoint for this domain name.
  String? get certificateName;

  /// \[Deprecated\] Your edge-optimized endpoint's domain name certificate's private key.
  String? get certificatePrivateKey;

  /// The name of the DomainName resource.
  String get domainName;

  /// The endpoint configuration of this DomainName showing the endpoint types of the domain name.
  _i3.EndpointConfiguration? get endpointConfiguration;

  /// The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway performs two-way authentication between the client and the server. Clients must present a trusted certificate to access your API.
  _i4.MutualTlsAuthenticationInput? get mutualTlsAuthentication;

  /// The ARN of the public certificate issued by ACM to validate ownership of your custom domain. Only required when configuring mutual TLS and using an ACM imported or private CA certificate ARN as the regionalCertificateArn.
  String? get ownershipVerificationCertificateArn;

  /// The reference to an AWS-managed certificate that will be used by regional endpoint for this domain name. AWS Certificate Manager is the only supported source.
  String? get regionalCertificateArn;

  /// The user-friendly name of the certificate that will be used by regional endpoint for this domain name.
  String? get regionalCertificateName;

  /// The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are `TLS\_1\_0` and `TLS\_1\_2`.
  _i5.SecurityPolicy? get securityPolicy;

  /// The key-value map of strings. The valid character set is \[a-zA-Z+-=._:/\]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
  _i6.BuiltMap<String, String>? get tags;
  @override
  CreateDomainNameRequest getPayload() => this;
  @override
  List<Object?> get props => [
        certificateArn,
        certificateBody,
        certificateChain,
        certificateName,
        certificatePrivateKey,
        domainName,
        endpointConfiguration,
        mutualTlsAuthentication,
        ownershipVerificationCertificateArn,
        regionalCertificateArn,
        regionalCertificateName,
        securityPolicy,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateDomainNameRequest');
    helper.add(
      'certificateArn',
      certificateArn,
    );
    helper.add(
      'certificateBody',
      certificateBody,
    );
    helper.add(
      'certificateChain',
      certificateChain,
    );
    helper.add(
      'certificateName',
      certificateName,
    );
    helper.add(
      'certificatePrivateKey',
      certificatePrivateKey,
    );
    helper.add(
      'domainName',
      domainName,
    );
    helper.add(
      'endpointConfiguration',
      endpointConfiguration,
    );
    helper.add(
      'mutualTlsAuthentication',
      mutualTlsAuthentication,
    );
    helper.add(
      'ownershipVerificationCertificateArn',
      ownershipVerificationCertificateArn,
    );
    helper.add(
      'regionalCertificateArn',
      regionalCertificateArn,
    );
    helper.add(
      'regionalCertificateName',
      regionalCertificateName,
    );
    helper.add(
      'securityPolicy',
      securityPolicy,
    );
    helper.add(
      'tags',
      tags,
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
      switch (key) {
        case 'certificateArn':
          if (value != null) {
            result.certificateArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'certificateBody':
          if (value != null) {
            result.certificateBody = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'certificateChain':
          if (value != null) {
            result.certificateChain = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'certificateName':
          if (value != null) {
            result.certificateName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'certificatePrivateKey':
          if (value != null) {
            result.certificatePrivateKey = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'domainName':
          result.domainName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'endpointConfiguration':
          if (value != null) {
            result.endpointConfiguration.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.EndpointConfiguration),
            ) as _i3.EndpointConfiguration));
          }
          break;
        case 'mutualTlsAuthentication':
          if (value != null) {
            result.mutualTlsAuthentication.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.MutualTlsAuthenticationInput),
            ) as _i4.MutualTlsAuthenticationInput));
          }
          break;
        case 'ownershipVerificationCertificateArn':
          if (value != null) {
            result.ownershipVerificationCertificateArn =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'regionalCertificateArn':
          if (value != null) {
            result.regionalCertificateArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'regionalCertificateName':
          if (value != null) {
            result.regionalCertificateName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'securityPolicy':
          if (value != null) {
            result.securityPolicy = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.SecurityPolicy),
            ) as _i5.SecurityPolicy);
          }
          break;
        case 'tags':
          if (value != null) {
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
    final payload = (object as CreateDomainNameRequest);
    final result = <Object?>[
      'domainName',
      serializers.serialize(
        payload.domainName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.certificateArn != null) {
      result
        ..add('certificateArn')
        ..add(serializers.serialize(
          payload.certificateArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.certificateBody != null) {
      result
        ..add('certificateBody')
        ..add(serializers.serialize(
          payload.certificateBody!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.certificateChain != null) {
      result
        ..add('certificateChain')
        ..add(serializers.serialize(
          payload.certificateChain!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.certificateName != null) {
      result
        ..add('certificateName')
        ..add(serializers.serialize(
          payload.certificateName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.certificatePrivateKey != null) {
      result
        ..add('certificatePrivateKey')
        ..add(serializers.serialize(
          payload.certificatePrivateKey!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.endpointConfiguration != null) {
      result
        ..add('endpointConfiguration')
        ..add(serializers.serialize(
          payload.endpointConfiguration!,
          specifiedType: const FullType(_i3.EndpointConfiguration),
        ));
    }
    if (payload.mutualTlsAuthentication != null) {
      result
        ..add('mutualTlsAuthentication')
        ..add(serializers.serialize(
          payload.mutualTlsAuthentication!,
          specifiedType: const FullType(_i4.MutualTlsAuthenticationInput),
        ));
    }
    if (payload.ownershipVerificationCertificateArn != null) {
      result
        ..add('ownershipVerificationCertificateArn')
        ..add(serializers.serialize(
          payload.ownershipVerificationCertificateArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.regionalCertificateArn != null) {
      result
        ..add('regionalCertificateArn')
        ..add(serializers.serialize(
          payload.regionalCertificateArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.regionalCertificateName != null) {
      result
        ..add('regionalCertificateName')
        ..add(serializers.serialize(
          payload.regionalCertificateName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.securityPolicy != null) {
      result
        ..add('securityPolicy')
        ..add(serializers.serialize(
          payload.securityPolicy!,
          specifiedType: const FullType(_i5.SecurityPolicy),
        ));
    }
    if (payload.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result;
  }
}
