//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Defines the type of a GraphQL subscription.
public enum GraphQLSubscriptionType: String {
    case onCreate
    case onDelete
    case onUpdate
}

extension GraphQLSubscriptionType: CaseIterable { }
