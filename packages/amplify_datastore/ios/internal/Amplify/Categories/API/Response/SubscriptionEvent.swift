//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Event for subscription
public enum GraphQLSubscriptionEvent<T: Decodable> {
    /// The subscription's connection state has changed.
    case connection(SubscriptionConnectionState)

    /// The subscription received data.
    case data(GraphQLResponse<T>)
}

extension GraphQLSubscriptionEvent: Sendable { }
