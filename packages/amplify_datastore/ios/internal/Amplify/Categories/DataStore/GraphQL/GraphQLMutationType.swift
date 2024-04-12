//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Defines the type of a GraphQL mutation.
public enum GraphQLMutationType: String, Codable {
    case create
    case update
    case delete
}

extension GraphQLMutationType: CaseIterable { }
