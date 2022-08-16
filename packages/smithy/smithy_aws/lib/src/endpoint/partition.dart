// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/src/endpoint/aws_endpoint.dart';
import 'package:smithy_aws/src/endpoint/credential_scope.dart';

part 'partition.g.dart';

const _defaultProtocol = 'https';
const _defaultSigner = AWSSignatureVersion.v4;
const _protocolPriority = ['https', 'http'];

AWSEndpoint resolveEndpoint(List<Partition> partitions, String region) {
  return partitions
      .firstWhere(
        (p) => p.canResolveEndpoint(region),
        orElse: () => partitions.first,
      )
      .resolveEndpoint(region);
}

/// Acceptable signature versions
enum AWSSignatureVersion {
  v2,
  v4,
  s3,
  s3v4,
  v3,
  v3https,
}

/// {@template smithy_aws.endpoint_definition}
/// A description of a single service endpoint.
/// {@endtemplate}
@JsonSerializable()
class EndpointDefinition with AWSSerializable {
  /// {@macro smithy_aws.endpoint_definition}
  const EndpointDefinition({
    this.hostname,
    this.protocols = const [],
    this.credentialScope,
    this.signatureVersions = const [],
    this.variants = const [],
  });

  /// {@macro smithy_aws.endpoint_definition}
  factory EndpointDefinition.fromJson(Map<String, Object?> json) =>
      _$EndpointDefinitionFromJson(json);

  /// A URI template used to resolve the hostname of the endpoint. Templates are
  /// of the form {name}. e.g. {service}.{region}.amazonaws.com
  ///
  /// Variables that may be substituted:
  /// - service - the service name
  /// - region - the region name
  /// - dnsSuffix - the dns suffix of the partition
  final String? hostname;

  /// A list of supported protocols for the endpoint (e.g. "https", "http", etc)
  final List<String> protocols;

  /// Signature version 4 credential scope information
  final CredentialScope? credentialScope;

  /// A list of allowable signature versions for the endpoint (e.g. "v4", "v2",
  /// "v3", "s3v3", etc)
  final List<AWSSignatureVersion> signatureVersions;

  /// Variants of the endpoint configuration, e.g. for FIPS or DualStack.
  final List<EndpointDefinitionVariant> variants;

  AWSEndpoint resolve(String region, EndpointDefinition defaults) {
    final merged = withDefaults(defaults);
    ArgumentError.checkNotNull(merged.hostname, 'hostname');

    final hostname = merged.hostname!.replaceAll('{region}', region);
    final sortedProtocols = [...merged.protocols]..sort((a, b) {
        final aIdx = _protocolPriority.indexOf(a);
        final bIdx = _protocolPriority.indexOf(b);
        return (aIdx > 0 && bIdx > 0)
            ? aIdx.compareTo(bIdx)
            : aIdx > 0
                ? -1
                : 1;
      });
    final protocol = sortedProtocols.first;
    final signingName = merged.credentialScope?.service;
    final signingRegion = merged.credentialScope?.region;

    final uri = Uri(scheme: protocol, host: hostname);
    return AWSEndpoint(
      endpoint: Endpoint(uri: uri),
      credentialScope: CredentialScope(
        service: signingName,
        region: signingRegion,
      ),
    );
  }

  @override
  Map<String, Object?> toJson() => _$EndpointDefinitionToJson(this);

  /// Applies [defaults] to this endpoint definition.
  EndpointDefinition withDefaults(EndpointDefinition defaults) {
    final hostname = this.hostname ?? defaults.hostname;
    final protocols = {
      ...this.protocols,
      ...defaults.protocols,
    }.toList();
    if (protocols.isEmpty) {
      protocols.add(_defaultProtocol);
    }
    final region =
        this.credentialScope?.region ?? defaults.credentialScope?.region;
    final service =
        this.credentialScope?.service ?? defaults.credentialScope?.service;
    final credentialScope = CredentialScope(region: region, service: service);
    final signatureVersions = {
      ...this.signatureVersions,
      ...defaults.signatureVersions,
    }.toList();
    if (signatureVersions.isEmpty) {
      signatureVersions.add(_defaultSigner);
    }
    return EndpointDefinition(
      hostname: hostname,
      protocols: protocols,
      credentialScope: credentialScope,
      signatureVersions: signatureVersions,
    );
  }
}

@JsonSerializable()
class EndpointDefinitionVariant
    with AWSEquatable<EndpointDefinitionVariant>, AWSSerializable {
  const EndpointDefinitionVariant({
    this.dnsSuffix,
    this.hostname,
    required this.tags,
  });

  factory EndpointDefinitionVariant.fromJson(Map<String, Object?> json) =>
      _$EndpointDefinitionVariantFromJson(json);

  final String? dnsSuffix;
  final String? hostname;
  final List<String> tags;

  @override
  List<Object?> get props => [dnsSuffix, hostname, tags];

  @override
  Map<String, Object?> toJson() => _$EndpointDefinitionVariantToJson(this);
}

/// A partition describes logical slice(s) of the AWS fabric.
class Partition implements Comparable<Partition> {
  const Partition({
    required this.id,
    required this.regionRegex,
    this.partitionEndpoint,
    required this.isRegionalized,
    required this.defaults,
    required this.regions,
    required this.endpoints,
  });

  /// The partition name/id e.g. "aws"
  final String id;

  /// The regular expression that specified the pattern that region names in the
  /// endpoint adhere to.
  final RegExp regionRegex;

  /// Endpoint that works across all regions or if [isRegionalized] is false.
  final String? partitionEndpoint;

  /// Flag indicating whether or not the service is regionalized in the
  /// partition. Some services have only a single, partition-global endpoint
  /// (e.g. CloudFront).
  final bool isRegionalized;

  /// Default endpoint values for the partition. Some or all of the defaults
  /// specified may be superseded by an entry in [endpoints].
  final EndpointDefinition defaults;

  /// Supported regions for the partition.
  final Set<String> regions;

  /// Map of endpoint names to their definitions.
  final Map<String, EndpointDefinition> endpoints;

  /// Tests if this partition is able to resolve an endpoint for the given
  /// region.
  bool canResolveEndpoint(String region) =>
      endpoints.containsKey(region) ||
      regions.contains(region) ||
      regionRegex.hasMatch(region);

  /// Resolves the endpoint for a [region].
  AWSEndpoint resolveEndpoint(String region) {
    final resolvedRegion = partitionEndpoint ?? region;
    final endpointDefinition =
        endpoints[resolvedRegion] ?? const EndpointDefinition();
    return endpointDefinition.resolve(region, defaults);
  }

  @override
  int compareTo(Partition other) {
    if (id == 'aws') {
      return -1;
    } else if (other.id == 'aws') {
      return 1;
    }
    return id.compareTo(other.id);
  }
}
