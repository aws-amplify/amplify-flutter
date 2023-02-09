// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Keys used to store info about the endpoint version store.
enum EndpointStoreKey {
  /// The current version of the endpoint version store
  version,

  /// Global attributes key attached to endpoint
  // Use upper case to support legacy naming
  // ignore: constant_identifier_names
  EndpointGlobalAttributesKey,

  /// Global metrics key attached to endpoint
  // Use upper case to support legacy naming
  // ignore: constant_identifier_names
  EndpointGlobalMetricsKey,

  /// Key for storing the Endpoint Id
  // Use upper case to support legacy naming
  // ignore: constant_identifier_names
  UniqueId,
}

/// The endpoint store version.
enum EndpointStoreVersion {
  /// The initial implementation of endpoint version store in Amplify Flutter Analytics.
  v1,
}
