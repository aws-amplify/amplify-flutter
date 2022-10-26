// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.common.endpoint_resolver; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:meta/meta.dart' as _i2;
import 'package:smithy_aws/smithy_aws.dart' as _i1;

final _partitions = [
  _i1.Partition(
    id: 'aws',
    regionRegex: RegExp(r'^(us|eu|ap|sa|ca|me|af)\-\w+\-\d+$'),
    partitionEndpoint: null,
    isRegionalized: true,
    defaults: const _i1.EndpointDefinition(
      hostname: 'config.{region}.amazonaws.com',
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
      'af-south-1': _i1.EndpointDefinition(variants: []),
      'ap-east-1': _i1.EndpointDefinition(variants: []),
      'ap-northeast-1': _i1.EndpointDefinition(variants: []),
      'ap-northeast-2': _i1.EndpointDefinition(variants: []),
      'ap-northeast-3': _i1.EndpointDefinition(variants: []),
      'ap-south-1': _i1.EndpointDefinition(variants: []),
      'ap-southeast-1': _i1.EndpointDefinition(variants: []),
      'ap-southeast-2': _i1.EndpointDefinition(variants: []),
      'ap-southeast-3': _i1.EndpointDefinition(variants: []),
      'ca-central-1': _i1.EndpointDefinition(variants: []),
      'eu-central-1': _i1.EndpointDefinition(variants: []),
      'eu-north-1': _i1.EndpointDefinition(variants: []),
      'eu-south-1': _i1.EndpointDefinition(variants: []),
      'eu-west-1': _i1.EndpointDefinition(variants: []),
      'eu-west-2': _i1.EndpointDefinition(variants: []),
      'eu-west-3': _i1.EndpointDefinition(variants: []),
      'fips-us-east-1': _i1.EndpointDefinition(
        hostname: 'config-fips.us-east-1.amazonaws.com',
        credentialScope: _i1.CredentialScope(region: 'us-east-1'),
        variants: [],
      ),
      'fips-us-east-2': _i1.EndpointDefinition(
        hostname: 'config-fips.us-east-2.amazonaws.com',
        credentialScope: _i1.CredentialScope(region: 'us-east-2'),
        variants: [],
      ),
      'fips-us-west-1': _i1.EndpointDefinition(
        hostname: 'config-fips.us-west-1.amazonaws.com',
        credentialScope: _i1.CredentialScope(region: 'us-west-1'),
        variants: [],
      ),
      'fips-us-west-2': _i1.EndpointDefinition(
        hostname: 'config-fips.us-west-2.amazonaws.com',
        credentialScope: _i1.CredentialScope(region: 'us-west-2'),
        variants: [],
      ),
      'me-south-1': _i1.EndpointDefinition(variants: []),
      'sa-east-1': _i1.EndpointDefinition(variants: []),
      'us-east-1': _i1.EndpointDefinition(variants: [
        _i1.EndpointDefinitionVariant(
          hostname: 'config-fips.us-east-1.amazonaws.com',
          tags: ['fips'],
        )
      ]),
      'us-east-2': _i1.EndpointDefinition(variants: [
        _i1.EndpointDefinitionVariant(
          hostname: 'config-fips.us-east-2.amazonaws.com',
          tags: ['fips'],
        )
      ]),
      'us-west-1': _i1.EndpointDefinition(variants: [
        _i1.EndpointDefinitionVariant(
          hostname: 'config-fips.us-west-1.amazonaws.com',
          tags: ['fips'],
        )
      ]),
      'us-west-2': _i1.EndpointDefinition(variants: [
        _i1.EndpointDefinitionVariant(
          hostname: 'config-fips.us-west-2.amazonaws.com',
          tags: ['fips'],
        )
      ]),
    },
  ),
  _i1.Partition(
    id: 'aws-cn',
    regionRegex: RegExp(r'^cn\-\w+\-\d+$'),
    partitionEndpoint: null,
    isRegionalized: true,
    defaults: const _i1.EndpointDefinition(
      hostname: 'config.{region}.amazonaws.com.cn',
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
      'cn-north-1': _i1.EndpointDefinition(variants: []),
      'cn-northwest-1': _i1.EndpointDefinition(variants: []),
    },
  ),
  _i1.Partition(
    id: 'aws-iso',
    regionRegex: RegExp(r'^us\-iso\-\w+\-\d+$'),
    partitionEndpoint: null,
    isRegionalized: true,
    defaults: const _i1.EndpointDefinition(
      hostname: 'config.{region}.c2s.ic.gov',
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
      'us-iso-east-1': _i1.EndpointDefinition(variants: []),
      'us-iso-west-1': _i1.EndpointDefinition(variants: []),
    },
  ),
  _i1.Partition(
    id: 'aws-iso-b',
    regionRegex: RegExp(r'^us\-isob\-\w+\-\d+$'),
    partitionEndpoint: null,
    isRegionalized: true,
    defaults: const _i1.EndpointDefinition(
      hostname: 'config.{region}.sc2s.sgov.gov',
      protocols: ['https'],
      signatureVersions: [_i1.AWSSignatureVersion.v4],
      credentialScope: _i1.CredentialScope(),
      variants: [],
    ),
    regions: const {'us-isob-east-1'},
    endpoints: const {'us-isob-east-1': _i1.EndpointDefinition(variants: [])},
  ),
  _i1.Partition(
    id: 'aws-us-gov',
    regionRegex: RegExp(r'^us\-gov\-\w+\-\d+$'),
    partitionEndpoint: null,
    isRegionalized: true,
    defaults: const _i1.EndpointDefinition(
      hostname: 'config.{region}.amazonaws.com',
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
      'fips-us-gov-east-1': _i1.EndpointDefinition(
        hostname: 'config.us-gov-east-1.amazonaws.com',
        credentialScope: _i1.CredentialScope(region: 'us-gov-east-1'),
        variants: [],
      ),
      'fips-us-gov-west-1': _i1.EndpointDefinition(
        hostname: 'config.us-gov-west-1.amazonaws.com',
        credentialScope: _i1.CredentialScope(region: 'us-gov-west-1'),
        variants: [],
      ),
      'us-gov-east-1': _i1.EndpointDefinition(variants: [
        _i1.EndpointDefinitionVariant(
          hostname: 'config.us-gov-east-1.amazonaws.com',
          tags: ['fips'],
        )
      ]),
      'us-gov-west-1': _i1.EndpointDefinition(variants: [
        _i1.EndpointDefinitionVariant(
          hostname: 'config.us-gov-west-1.amazonaws.com',
          tags: ['fips'],
        )
      ]),
    },
  ),
];
@_i2.internal
final _i1.AWSEndpointResolver endpointResolver =
    _i1.AWSEndpointResolver(_partitions);
@_i2.internal
const String sdkId = 'Config Service';
