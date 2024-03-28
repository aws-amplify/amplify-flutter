//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// GraphQL Operation
open class GraphQLOperation<R: Decodable>: AmplifyOperation<
    GraphQLOperationRequest<R>,
    GraphQLResponse<R>,
    APIError
> { }

/// GraphQL Subscription Operation
open class GraphQLSubscriptionOperation<R: Decodable>: AmplifyInProcessReportingOperation<
    GraphQLOperationRequest<R>,
    GraphQLSubscriptionEvent<R>,
    Void,
    APIError
> { }

public extension HubPayload.EventName.API {
    /// eventName for HubPayloads emitted by this operation
    static let mutate = "API.mutate"

    /// eventName for HubPayloads emitted by this operation
    static let query = "API.query"

    /// eventName for HubPayloads emitted by this operation
    static let subscribe = "API.subscribe"
}

public extension GraphQLOperation {
    typealias TaskAdapter = AmplifyOperationTaskAdapter<Request, Success, Failure>
}

public typealias GraphQLTask<R: Decodable> = GraphQLOperation<R>.TaskAdapter
