//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Defines the type of query,
/// `list` which returns multiple results and can optionally use filters
/// `get`, which aims to fetch one result identified by its `id`.
/// `sync`, similar to `list` and returns results with optionally specifically a point in time
public enum GraphQLQueryType: String {
    case get
    case list
    case sync
}
