// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.common.endpoint_resolver; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:meta/meta.dart' as _i2;
import 'package:smithy_aws/smithy_aws.dart' as _i1;

final _partitions = [
  _i1.Partition(
    id: 'aws',
    regionRegex: RegExp(r'^(us|eu|ap|sa|ca|me|af)\-\w+\-\d+$'),
    partitionEndpoint: 'aws-global',
    isRegionalized: false,
    defaults: const _i1.EndpointDefinition(
      hostname: 'iam.{region}.amazonaws.com',
      protocols: ['https'],
      signatureVersions: [_i1.AWSSignatureVersion.v4],
      credentialScope: _i1.CredentialScope(),
      variants: [],
    ),
    regions: const {
      'af-south-1',
      'ap-east-1',
      'ap-northeast-1',
      'ap-northeast-2',
      'ap-northeast-3',
      'ap-south-1',
      'ap-southeast-1',
      'ap-southeast-2',
      'ap-southeast-3',
      'ca-central-1',
      'eu-central-1',
      'eu-north-1',
      'eu-south-1',
      'eu-west-1',
      'eu-west-2',
      'eu-west-3',
      'me-south-1',
      'sa-east-1',
      'us-east-1',
      'us-east-2',
      'us-west-1',
      'us-west-2',
    },
    endpoints: const {
      'aws-global': _i1.EndpointDefinition(
        hostname: 'iam.amazonaws.com',
        credentialScope: _i1.CredentialScope(region: 'us-east-1'),
        variants: [
          _i1.EndpointDefinitionVariant(
            hostname: 'iam-fips.amazonaws.com',
            tags: ['fips'],
          )
        ],
      ),
      'aws-global-fips': _i1.EndpointDefinition(
        hostname: 'iam-fips.amazonaws.com',
        credentialScope: _i1.CredentialScope(region: 'us-east-1'),
        variants: [],
      ),
      'iam': _i1.EndpointDefinition(
        credentialScope: _i1.CredentialScope(region: 'us-east-1'),
        variants: [
          _i1.EndpointDefinitionVariant(
            hostname: 'iam-fips.amazonaws.com',
            tags: ['fips'],
          )
        ],
      ),
      'iam-fips': _i1.EndpointDefinition(
        hostname: 'iam-fips.amazonaws.com',
        credentialScope: _i1.CredentialScope(region: 'us-east-1'),
        variants: [],
      ),
    },
  ),
  _i1.Partition(
    id: 'aws-cn',
    regionRegex: RegExp(r'^cn\-\w+\-\d+$'),
    partitionEndpoint: 'aws-cn-global',
    isRegionalized: false,
    defaults: const _i1.EndpointDefinition(
      hostname: 'iam.{region}.amazonaws.com.cn',
      protocols: ['https'],
      signatureVersions: [_i1.AWSSignatureVersion.v4],
      credentialScope: _i1.CredentialScope(),
      variants: [],
    ),
    regions: const {
      'cn-north-1',
      'cn-northwest-1',
    },
    endpoints: const {
      'aws-cn-global': _i1.EndpointDefinition(
        hostname: 'iam.cn-north-1.amazonaws.com.cn',
        credentialScope: _i1.CredentialScope(region: 'cn-north-1'),
        variants: [],
      )
    },
  ),
  _i1.Partition(
    id: 'aws-iso',
    regionRegex: RegExp(r'^us\-iso\-\w+\-\d+$'),
    partitionEndpoint: 'aws-iso-global',
    isRegionalized: false,
    defaults: const _i1.EndpointDefinition(
      hostname: 'iam.{region}.c2s.ic.gov',
      protocols: ['https'],
      signatureVersions: [_i1.AWSSignatureVersion.v4],
      credentialScope: _i1.CredentialScope(),
      variants: [],
    ),
    regions: const {
      'us-iso-east-1',
      'us-iso-west-1',
    },
    endpoints: const {
      'aws-iso-global': _i1.EndpointDefinition(
        hostname: 'iam.us-iso-east-1.c2s.ic.gov',
        credentialScope: _i1.CredentialScope(region: 'us-iso-east-1'),
        variants: [],
      )
    },
  ),
  _i1.Partition(
    id: 'aws-iso-b',
    regionRegex: RegExp(r'^us\-isob\-\w+\-\d+$'),
    partitionEndpoint: 'aws-iso-b-global',
    isRegionalized: false,
    defaults: const _i1.EndpointDefinition(
      hostname: 'iam.{region}.sc2s.sgov.gov',
      protocols: ['https'],
      signatureVersions: [_i1.AWSSignatureVersion.v4],
      credentialScope: _i1.CredentialScope(),
      variants: [],
    ),
    regions: const {'us-isob-east-1'},
    endpoints: const {
      'aws-iso-b-global': _i1.EndpointDefinition(
        hostname: 'iam.us-isob-east-1.sc2s.sgov.gov',
        credentialScope: _i1.CredentialScope(region: 'us-isob-east-1'),
        variants: [],
      )
    },
  ),
  _i1.Partition(
    id: 'aws-us-gov',
    regionRegex: RegExp(r'^us\-gov\-\w+\-\d+$'),
    partitionEndpoint: 'aws-us-gov-global',
    isRegionalized: false,
    defaults: const _i1.EndpointDefinition(
      hostname: 'iam.{region}.amazonaws.com',
      protocols: ['https'],
      signatureVersions: [_i1.AWSSignatureVersion.v4],
      credentialScope: _i1.CredentialScope(),
      variants: [],
    ),
    regions: const {
      'us-gov-east-1',
      'us-gov-west-1',
    },
    endpoints: const {
      'aws-us-gov-global': _i1.EndpointDefinition(
        hostname: 'iam.us-gov.amazonaws.com',
        credentialScope: _i1.CredentialScope(region: 'us-gov-west-1'),
        variants: [
          _i1.EndpointDefinitionVariant(
            hostname: 'iam.us-gov.amazonaws.com',
            tags: ['fips'],
          )
        ],
      ),
      'aws-us-gov-global-fips': _i1.EndpointDefinition(
        hostname: 'iam.us-gov.amazonaws.com',
        credentialScope: _i1.CredentialScope(region: 'us-gov-west-1'),
        variants: [],
      ),
      'iam-govcloud': _i1.EndpointDefinition(
        credentialScope: _i1.CredentialScope(region: 'us-gov-west-1'),
        variants: [
          _i1.EndpointDefinitionVariant(
            hostname: 'iam.us-gov.amazonaws.com',
            tags: ['fips'],
          )
        ],
      ),
      'iam-govcloud-fips': _i1.EndpointDefinition(
        hostname: 'iam.us-gov.amazonaws.com',
        credentialScope: _i1.CredentialScope(region: 'us-gov-west-1'),
        variants: [],
      ),
    },
  ),
];
@_i2.internal
final _i1.AWSEndpointResolver endpointResolver =
    _i1.AWSEndpointResolver(_partitions);
@_i2.internal
const String sdkId = 'IAM';
