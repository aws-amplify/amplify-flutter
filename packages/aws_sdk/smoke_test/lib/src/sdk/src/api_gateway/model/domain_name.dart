// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.domain_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/api_gateway/model/domain_name_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/api_gateway/model/endpoint_configuration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/api_gateway/model/mutual_tls_authentication.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/model/security_policy.dart'
    as _i4;

part 'domain_name.g.dart';

/// Represents a custom domain name as a user-friendly host name of an API (RestApi).
abstract class DomainName
    with _i1.AWSEquatable<DomainName>
    implements Built<DomainName, DomainNameBuilder> {
  /// Represents a custom domain name as a user-friendly host name of an API (RestApi).
  factory DomainName({
    String? domainName,
    String? certificateName,
    String? certificateArn,
    DateTime? certificateUploadDate,
    String? regionalDomainName,
    String? regionalHostedZoneId,
    String? regionalCertificateName,
    String? regionalCertificateArn,
    String? distributionDomainName,
    String? distributionHostedZoneId,
    _i2.EndpointConfiguration? endpointConfiguration,
    _i3.DomainNameStatus? domainNameStatus,
    String? domainNameStatusMessage,
    _i4.SecurityPolicy? securityPolicy,
    Map<String, String>? tags,
    _i5.MutualTlsAuthentication? mutualTlsAuthentication,
    String? ownershipVerificationCertificateArn,
  }) {
    return _$DomainName._(
      domainName: domainName,
      certificateName: certificateName,
      certificateArn: certificateArn,
      certificateUploadDate: certificateUploadDate,
      regionalDomainName: regionalDomainName,
      regionalHostedZoneId: regionalHostedZoneId,
      regionalCertificateName: regionalCertificateName,
      regionalCertificateArn: regionalCertificateArn,
      distributionDomainName: distributionDomainName,
      distributionHostedZoneId: distributionHostedZoneId,
      endpointConfiguration: endpointConfiguration,
      domainNameStatus: domainNameStatus,
      domainNameStatusMessage: domainNameStatusMessage,
      securityPolicy: securityPolicy,
      tags: tags == null ? null : _i6.BuiltMap(tags),
      mutualTlsAuthentication: mutualTlsAuthentication,
      ownershipVerificationCertificateArn: ownershipVerificationCertificateArn,
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

  static const List<_i7.SmithySerializer<DomainName>> serializers = [
    DomainNameRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DomainNameBuilder b) {}

  /// The custom domain name as an API host name, for example, `my-api.example.com`.
  String? get domainName;

  /// The name of the certificate that will be used by edge-optimized endpoint for this domain name.
  String? get certificateName;

  /// The reference to an AWS-managed certificate that will be used by edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.
  String? get certificateArn;

  /// The timestamp when the certificate that was used by edge-optimized endpoint for this domain name was uploaded.
  DateTime? get certificateUploadDate;

  /// The domain name associated with the regional endpoint for this custom domain name. You set up this association by adding a DNS record that points the custom domain name to this regional domain name. The regional domain name is returned by API Gateway when you create a regional endpoint.
  String? get regionalDomainName;

  /// The region-specific Amazon Route 53 Hosted Zone ID of the regional endpoint. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway.
  String? get regionalHostedZoneId;

  /// The name of the certificate that will be used for validating the regional domain name.
  String? get regionalCertificateName;

  /// The reference to an AWS-managed certificate that will be used for validating the regional domain name. AWS Certificate Manager is the only supported source.
  String? get regionalCertificateArn;

  /// The domain name of the Amazon CloudFront distribution associated with this custom domain name for an edge-optimized endpoint. You set up this association when adding a DNS record pointing the custom domain name to this distribution name. For more information about CloudFront distributions, see the Amazon CloudFront documentation.
  String? get distributionDomainName;

  /// The region-agnostic Amazon Route 53 Hosted Zone ID of the edge-optimized endpoint. The valid value is `Z2FDTNDATAQYW2` for all the regions. For more information, see Set up a Regional Custom Domain Name and AWS Regions and Endpoints for API Gateway.
  String? get distributionHostedZoneId;

  /// The endpoint configuration of this DomainName showing the endpoint types of the domain name.
  _i2.EndpointConfiguration? get endpointConfiguration;

  /// The status of the DomainName migration. The valid values are `AVAILABLE` and `UPDATING`. If the status is `UPDATING`, the domain cannot be modified further until the existing operation is complete. If it is `AVAILABLE`, the domain can be updated.
  _i3.DomainNameStatus? get domainNameStatus;

  /// An optional text message containing detailed information about status of the DomainName migration.
  String? get domainNameStatusMessage;

  /// The Transport Layer Security (TLS) version + cipher suite for this DomainName. The valid values are `TLS\_1\_0` and `TLS\_1\_2`.
  _i4.SecurityPolicy? get securityPolicy;

  /// The collection of tags. Each tag element is associated with a given resource.
  _i6.BuiltMap<String, String>? get tags;

  /// The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway performs two-way authentication between the client and the server. Clients must present a trusted certificate to access your API.
  _i5.MutualTlsAuthentication? get mutualTlsAuthentication;

  /// The ARN of the public certificate issued by ACM to validate ownership of your custom domain. Only required when configuring mutual TLS and using an ACM imported or private CA certificate ARN as the regionalCertificateArn.
  String? get ownershipVerificationCertificateArn;
  @override
  List<Object?> get props => [
        domainName,
        certificateName,
        certificateArn,
        certificateUploadDate,
        regionalDomainName,
        regionalHostedZoneId,
        regionalCertificateName,
        regionalCertificateArn,
        distributionDomainName,
        distributionHostedZoneId,
        endpointConfiguration,
        domainNameStatus,
        domainNameStatusMessage,
        securityPolicy,
        tags,
        mutualTlsAuthentication,
        ownershipVerificationCertificateArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DomainName')
      ..add(
        'domainName',
        domainName,
      )
      ..add(
        'certificateName',
        certificateName,
      )
      ..add(
        'certificateArn',
        certificateArn,
      )
      ..add(
        'certificateUploadDate',
        certificateUploadDate,
      )
      ..add(
        'regionalDomainName',
        regionalDomainName,
      )
      ..add(
        'regionalHostedZoneId',
        regionalHostedZoneId,
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
        'distributionDomainName',
        distributionDomainName,
      )
      ..add(
        'distributionHostedZoneId',
        distributionHostedZoneId,
      )
      ..add(
        'endpointConfiguration',
        endpointConfiguration,
      )
      ..add(
        'domainNameStatus',
        domainNameStatus,
      )
      ..add(
        'domainNameStatusMessage',
        domainNameStatusMessage,
      )
      ..add(
        'securityPolicy',
        securityPolicy,
      )
      ..add(
        'tags',
        tags,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'certificateArn':
          result.certificateArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'certificateName':
          result.certificateName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'certificateUploadDate':
          result.certificateUploadDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'distributionDomainName':
          result.distributionDomainName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'distributionHostedZoneId':
          result.distributionHostedZoneId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'domainName':
          result.domainName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'domainNameStatus':
          result.domainNameStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.DomainNameStatus),
          ) as _i3.DomainNameStatus);
        case 'domainNameStatusMessage':
          result.domainNameStatusMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'endpointConfiguration':
          result.endpointConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.EndpointConfiguration),
          ) as _i2.EndpointConfiguration));
        case 'mutualTlsAuthentication':
          result.mutualTlsAuthentication.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.MutualTlsAuthentication),
          ) as _i5.MutualTlsAuthentication));
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
        case 'regionalDomainName':
          result.regionalDomainName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'regionalHostedZoneId':
          result.regionalHostedZoneId = (serializers.deserialize(
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
    DomainName object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DomainName(
      :certificateArn,
      :certificateName,
      :certificateUploadDate,
      :distributionDomainName,
      :distributionHostedZoneId,
      :domainName,
      :domainNameStatus,
      :domainNameStatusMessage,
      :endpointConfiguration,
      :mutualTlsAuthentication,
      :ownershipVerificationCertificateArn,
      :regionalCertificateArn,
      :regionalCertificateName,
      :regionalDomainName,
      :regionalHostedZoneId,
      :securityPolicy,
      :tags
    ) = object;
    if (certificateArn != null) {
      result$
        ..add('certificateArn')
        ..add(serializers.serialize(
          certificateArn,
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
    if (certificateUploadDate != null) {
      result$
        ..add('certificateUploadDate')
        ..add(serializers.serialize(
          certificateUploadDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (distributionDomainName != null) {
      result$
        ..add('distributionDomainName')
        ..add(serializers.serialize(
          distributionDomainName,
          specifiedType: const FullType(String),
        ));
    }
    if (distributionHostedZoneId != null) {
      result$
        ..add('distributionHostedZoneId')
        ..add(serializers.serialize(
          distributionHostedZoneId,
          specifiedType: const FullType(String),
        ));
    }
    if (domainName != null) {
      result$
        ..add('domainName')
        ..add(serializers.serialize(
          domainName,
          specifiedType: const FullType(String),
        ));
    }
    if (domainNameStatus != null) {
      result$
        ..add('domainNameStatus')
        ..add(serializers.serialize(
          domainNameStatus,
          specifiedType: const FullType(_i3.DomainNameStatus),
        ));
    }
    if (domainNameStatusMessage != null) {
      result$
        ..add('domainNameStatusMessage')
        ..add(serializers.serialize(
          domainNameStatusMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (endpointConfiguration != null) {
      result$
        ..add('endpointConfiguration')
        ..add(serializers.serialize(
          endpointConfiguration,
          specifiedType: const FullType(_i2.EndpointConfiguration),
        ));
    }
    if (mutualTlsAuthentication != null) {
      result$
        ..add('mutualTlsAuthentication')
        ..add(serializers.serialize(
          mutualTlsAuthentication,
          specifiedType: const FullType(_i5.MutualTlsAuthentication),
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
    if (regionalDomainName != null) {
      result$
        ..add('regionalDomainName')
        ..add(serializers.serialize(
          regionalDomainName,
          specifiedType: const FullType(String),
        ));
    }
    if (regionalHostedZoneId != null) {
      result$
        ..add('regionalHostedZoneId')
        ..add(serializers.serialize(
          regionalHostedZoneId,
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
