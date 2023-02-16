// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Keys used to store info about the endpoint version store.
enum EndpointStoreKey {
  /// The current version of the endpoint version store
  version,

  /// Global attributes key attached to endpoint
  endpointGlobalAttributesKey,

  /// Global metrics key attached to endpoint
  endpointGlobalMetricsKey,

  /// Key for storing the Endpoint Id
  endpointId,
}

/// The endpoint store version.
enum EndpointStoreVersion {
  /// The initial implementation of endpoint version store in Amplify Flutter Analytics.
  v1,
}
