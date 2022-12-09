// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.domain_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/api_gateway/model/domain_name_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/api_gateway/model/endpoint_configuration.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/mutual_tls_authentication.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/security_policy.dart'
    as _i5;

part 'domain_name.g.dart';

/// Represents a custom domain name as a user-friendly host name of an API (RestApi).
abstract class DomainName
    with _i1.AWSEquatable<DomainName>
    implements Built<DomainName, DomainNameBuilder> {
  /// Represents a custom domain name as a user-friendly host name of an API (RestApi).
  factory DomainName({
    String? certificateArn,
    String? certificateName,
    DateTime? certificateUploadDate,
    String? distributionDomainName,
    String? distributionHostedZoneId,
    String? domainName,
    _i2.DomainNameStatus? domainNameStatus,
    String? domainNameStatusMessage,
    _i3.EndpointConfiguration? endpointConfiguration,
    _i4.MutualTlsAuthentication? mutualTlsAuthentication,
    String? ownershipVerificationCertificateArn,
    String? regionalCertificateArn,
    String? regionalCertificateName,
    String? regionalDomainName,
    String? regionalHostedZoneId,
    _i5.SecurityPolicy? securityPolicy,
    Map<String, String>? tags,
  }) {
    return _$DomainName._(
      certificateArn: certificateArn,
      certificateName: certificateName,
      certificateUploadDate: certificateUploadDate,
      distributionDomainName: distributionDomainName,
      distributionHostedZoneId: distributionHostedZoneId,
      domainName: domainName,
      domainNameStatus: domainNameStatus,
      domainNameStatusMessage: domainNameStatusMessage,
      endpointConfiguration: endpointConfiguration,
      mutualTlsAuthentication: mutualTlsAuthentication,
      ownershipVerificationCertificateArn: ownershipVerificationCertificateArn,
      regionalCertificateArn: regionalCertificateArn,
      regionalCertificateName: regionalCertificateName,
      regionalDomainName: regionalDomainName,
      regionalHostedZoneId: regionalHostedZoneId,
      securityPolicy: securityPolicy,
      tags: tags == null ? null : _i6.BuiltMap(tags),
    );
  }

  /// Represents a custom domain name as a user-friendly host name of an API (RestApi).
  factory DomainName.build([void Function(DomainNameBuilder) updates]) =
      _$DomainName;

  const DomainName._();

  /// Constructs a [DomainName] from a [payload] and [response].
  factory DomainName.fromResponse(
    DomainName payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i7.SmithySerializer> serializers = [
    DomainNameRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DomainNameBuilder b) {}

  /// The reference to an AWS-managed certificate that will be used by edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.
  String? get certificateArn;

  /// The name of the certificate that will be used by edge-optimized endpoint for this domain name.
  String? get certificateName;

  /// The timestamp when the certificate that was used by edge-optimized endpoint for this domain name was uploaded.
  DateTime? get certificateUploadDate;

  /// The domain name of the Amazon CloudFront distribution associated with this custom domain name for an edge-optimized endpoint. You set up this association when adding a DNS record pointing the custom domain name to this distribution name. For more information about CloudFront distributions, see the Amazon CloudFront documentation.
  String? get distributionDomainName;

  /// The region-agnostic Amazon Route 53 Hosted Zone ID of the edge-optimized endpoint. The valid value is `Z2FDTNDATAQYW2` for all the regions. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway.
  String? get distributionHostedZoneId;

  /// The custom domain name as an API host name, for example, `my-api.example.com`.
  String? get domainName;

  /// The status of the DomainName migration. The valid values are `AVAILABLE` and `UPDATING`. If the status is `UPDATING`, the domain cannot be modified further until the existing operation is complete. If it is `AVAILABLE`, the domain can be updated.
  _i2.DomainNameStatus? get domainNameStatus;

  /// An optional text message containing detailed information about status of the DomainName migration.
  String? get domainNameStatusMessage;

  /// The endpoint configuration of this DomainName showing the endpoint types of the domain name.
  _i3.EndpointConfiguration? get endpointConfiguration;

  /// The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway performs two-way authentication between the client and the server. Clients must present a trusted certificate to access your API.
  _i4.MutualTlsAuthentication? get mutualTlsAuthentication;

  /// The ARN of the public certificate issued by ACM to validate ownership of your custom domain. Only required when configuring mutual TLS and using an ACM imported or private CA certificate ARN as the regionalCertificateArn.
  String? get ownershipVerificationCertificateArn;

  /// The reference to an AWS-managed certificate that will be used for validating the regional domain name. AWS Certificate Manager is the only supported source.
  String? get regionalCertificateArn;

  /// The name of the certificate that will be used for validating the regional domain name.
  String? get regionalCertificateName;

  /// The domain name associated with the regional endpoint for this custom domain name. You set up this association by adding a DNS record that points the custom domain name to this regional domain name. The regional domain name is returned by API Gateway when you create a regional endpoint.
  String? get regionalDomainName;

  /// The region-specific Amazon Route 53 Hosted Zone ID of the regional endpoint. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway.
  String? get regionalHostedZoneId;

  /// The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are `TLS\_1\_0` and `TLS\_1\_2`.
  _i5.SecurityPolicy? get securityPolicy;

  /// The collection of tags. Each tag element is associated with a given resource.
  _i6.BuiltMap<String, String>? get tags;
  @override
  List<Object?> get props => [
        certificateArn,
        certificateName,
        certificateUploadDate,
        distributionDomainName,
        distributionHostedZoneId,
        domainName,
        domainNameStatus,
        domainNameStatusMessage,
        endpointConfiguration,
        mutualTlsAuthentication,
        ownershipVerificationCertificateArn,
        regionalCertificateArn,
        regionalCertificateName,
        regionalDomainName,
        regionalHostedZoneId,
        securityPolicy,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DomainName');
    helper.add(
      'certificateArn',
      certificateArn,
    );
    helper.add(
      'certificateName',
      certificateName,
    );
    helper.add(
      'certificateUploadDate',
      certificateUploadDate,
    );
    helper.add(
      'distributionDomainName',
      distributionDomainName,
    );
    helper.add(
      'distributionHostedZoneId',
      distributionHostedZoneId,
    );
    helper.add(
      'domainName',
      domainName,
    );
    helper.add(
      'domainNameStatus',
      domainNameStatus,
    );
    helper.add(
      'domainNameStatusMessage',
      domainNameStatusMessage,
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
      'regionalDomainName',
      regionalDomainName,
    );
    helper.add(
      'regionalHostedZoneId',
      regionalHostedZoneId,
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

class DomainNameRestJson1Serializer
    extends _i7.StructuredSmithySerializer<DomainName> {
  const DomainNameRestJson1Serializer() : super('DomainName');

  @override
  Iterable<Type> get types => const [
        DomainName,
        _$DomainName,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DomainName deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DomainNameBuilder();
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
        case 'certificateName':
          if (value != null) {
            result.certificateName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'certificateUploadDate':
          if (value != null) {
            result.certificateUploadDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'distributionDomainName':
          if (value != null) {
            result.distributionDomainName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'distributionHostedZoneId':
          if (value != null) {
            result.distributionHostedZoneId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'domainName':
          if (value != null) {
            result.domainName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'domainNameStatus':
          if (value != null) {
            result.domainNameStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DomainNameStatus),
            ) as _i2.DomainNameStatus);
          }
          break;
        case 'domainNameStatusMessage':
          if (value != null) {
            result.domainNameStatusMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
              specifiedType: const FullType(_i4.MutualTlsAuthentication),
            ) as _i4.MutualTlsAuthentication));
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
        case 'regionalDomainName':
          if (value != null) {
            result.regionalDomainName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'regionalHostedZoneId':
          if (value != null) {
            result.regionalHostedZoneId = (serializers.deserialize(
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
    final payload = (object as DomainName);
    final result = <Object?>[];
    if (payload.certificateArn != null) {
      result
        ..add('certificateArn')
        ..add(serializers.serialize(
          payload.certificateArn!,
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
    if (payload.certificateUploadDate != null) {
      result
        ..add('certificateUploadDate')
        ..add(serializers.serialize(
          payload.certificateUploadDate!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.distributionDomainName != null) {
      result
        ..add('distributionDomainName')
        ..add(serializers.serialize(
          payload.distributionDomainName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.distributionHostedZoneId != null) {
      result
        ..add('distributionHostedZoneId')
        ..add(serializers.serialize(
          payload.distributionHostedZoneId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.domainName != null) {
      result
        ..add('domainName')
        ..add(serializers.serialize(
          payload.domainName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.domainNameStatus != null) {
      result
        ..add('domainNameStatus')
        ..add(serializers.serialize(
          payload.domainNameStatus!,
          specifiedType: const FullType(_i2.DomainNameStatus),
        ));
    }
    if (payload.domainNameStatusMessage != null) {
      result
        ..add('domainNameStatusMessage')
        ..add(serializers.serialize(
          payload.domainNameStatusMessage!,
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
          specifiedType: const FullType(_i4.MutualTlsAuthentication),
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
    if (payload.regionalDomainName != null) {
      result
        ..add('regionalDomainName')
        ..add(serializers.serialize(
          payload.regionalDomainName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.regionalHostedZoneId != null) {
      result
        ..add('regionalHostedZoneId')
        ..add(serializers.serialize(
          payload.regionalHostedZoneId!,
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
