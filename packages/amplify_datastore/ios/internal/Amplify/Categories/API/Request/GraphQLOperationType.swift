//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// The type of a GraphQL operation
public enum GraphQLOperationType {
    /// A GraphQL Query operation
    case query

    /// A GraphQL Mutation operation
    case mutation

    /// A GraphQL Subscription operation
    case subscription
}

extension GraphQLOperationType: HubPayloadEventNameConvertible {

    /// Corresponding hub event name for this type of operation.
    public var hubEventName: String {
        switch self {
        case .query:
            return HubPayload.EventName.API.query
        case .mutation:
            return HubPayload.EventName.API.mutate
        case .subscription:
            return HubPayload.EventName.API.subscribe
        }
    }
}
