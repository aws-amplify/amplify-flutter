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
import 'package:smithy_aws/smithy_aws.dart';

part 'partition_node.g.dart';

const _fromJson = JsonSerializable(
  createToJson: false,
  anyMap: true,
);

/// {@template smithy_codegen.partition_node}
/// Node for a single partition found in endpoints.json.
/// {@endtemplate}
@_fromJson
class PartitionNode with AWSEquatable<PartitionNode> {
  /// {@macro smithy_codegen.partition_node}
  const PartitionNode({
    this.defaults = const EndpointDefinition(),
    required this.dnsSuffix,
    required this.partition,
    this.partitionName,
    required this.regionRegex,
    required this.regions,
    required this.services,
  });

  /// {@macro smithy_codegen.partition_node}
  factory PartitionNode.fromJson(Map<String, Object?> json) =>
      _$PartitionNodeFromJson(json);

  /// Default values to merge into each endpoint of the partition
  final EndpointDefinition defaults;

  /// Suffix used as a varspec in the hostname
  final String dnsSuffix;

  /// Partition identifier
  final String partition;

  /// Descriptive partition name
  final String? partitionName;

  /// Regular expression that should match all regions in the partition
  final String regionRegex;

  /// Map of region name to region data
  final Map<String, PartitionNodeRegion> regions;

  /// Map of service identifier to service configuration
  final Map<String, PartitionNodeServiceConfiguration> services;

  /// Retrieves the [Partition] for the given service ID.
  Partition operator [](String serviceId) {
    return toPartition(serviceId);
  }

  /// Creates a [Partition] for the given service ID.
  Partition toPartition(String serviceId) {
    final service =
        services[serviceId] ?? const PartitionNodeServiceConfiguration();
    final mergedDefaults = service.defaults.withDefaults(defaults);
    final partitionEndpoint =
        service.isRegionalized ? null : service.partitionEndpoint;
    return Partition(
      id: partition,
      defaults: EndpointDefinition(
        hostname: mergedDefaults.hostname!
            .replaceAll('{service}', serviceId)
            .replaceAll('{dnsSuffix}', dnsSuffix),
        protocols: mergedDefaults.protocols,
        credentialScope: mergedDefaults.credentialScope,
        signatureVersions: mergedDefaults.signatureVersions,
      ),
      regionRegex: RegExp(regionRegex),
      partitionEndpoint: partitionEndpoint,
      regions: regions.keys.toSet(),
      endpoints: service.endpoints,
      isRegionalized: service.isRegionalized,
    );
  }

  @override
  List<Object?> get props => [
        defaults,
        dnsSuffix,
        partition,
        partitionName,
        regionRegex,
        regions,
        services,
      ];
}

@_fromJson
class PartitionNodeRegion with AWSEquatable<PartitionNodeRegion> {
  const PartitionNodeRegion(this.description);

  factory PartitionNodeRegion.fromJson(Map<String, Object?> json) =>
      _$PartitionNodeRegionFromJson(json);

  /// Short, human readable, name of the region
  final String description;

  @override
  List<Object?> get props => [description];
}

@_fromJson
class PartitionNodeDefaults with AWSEquatable<PartitionNodeDefaults> {
  const PartitionNodeDefaults({
    this.credentialScope,
    this.hostname,
    this.protocols = const [],
    this.signatureVersions = const [],
  });

  factory PartitionNodeDefaults.fromJson(Map<String, Object?> json) =>
      _$PartitionNodeDefaultsFromJson(json);

  /// Signature version 4 credential scope information
  final CredentialScope? credentialScope;

  /// URI template containing the hostname to connect to
  final String? hostname;

  /// List of acceptable protocols to connect with
  final List<String> protocols;

  /// List of acceptable signature versions
  final List<String> signatureVersions;

  @override
  List<Object?> get props => [
        credentialScope,
        hostname,
        protocols,
        signatureVersions,
      ];
}

@_fromJson
class PartitionNodeServiceConfiguration
    with AWSEquatable<PartitionNodeServiceConfiguration> {
  const PartitionNodeServiceConfiguration({
    this.defaults = const EndpointDefinition(),
    this.endpoints = const {},
    this.protocols = const [],
    this.partitionEndpoint,
    this.isRegionalized = true,
    this.deprecated = false,
    this.variants = const [],
  });

  factory PartitionNodeServiceConfiguration.fromJson(
          Map<String, Object?> json) =>
      _$PartitionNodeServiceConfigurationFromJson(json);

  /// Default values to merge into each endpoint of the service.
  final EndpointDefinition defaults;

  /// Map of region names to endpoint data
  final Map<String, EndpointDefinition> endpoints;

  /// List of acceptable protocols to connect with.
  final List<String> protocols;

  /// Specifies the endpoint name to use as a partition-global endpoint.
  final String? partitionEndpoint;

  /// Specifies whether or not the service is regionalized in the partition.
  final bool isRegionalized;

  /// Whether the region specification is deprecated for usage.
  final bool deprecated;

  /// Variants of the endpoint configuration, e.g. for FIPS or DualStack.
  final List<EndpointDefinitionVariant> variants;

  @override
  List<Object?> get props => [
        defaults,
        endpoints,
        protocols,
        partitionEndpoint,
        isRegionalized,
        deprecated,
        variants,
      ];
}
