//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// All HTTP operations have the same underlying Operation type
public protocol RESTOperation: AmplifyOperation<RESTOperationRequest, Data, APIError> { }

/// Event names for HubPayloads emitted by this operation
public extension HubPayload.EventName.API {

    /// eventName for HubPayloads emitted by this operation
    static let delete = "API.delete"

    /// eventName for HubPayloads emitted by this operation
    static let get = "API.get"

    /// eventName for HubPayloads emitted by this operation
    static let patch = "API.patch"

    /// eventName for HubPayloads emitted by this operation
    static let post = "API.post"

    /// eventName for HubPayloads emitted by this operation
    static let put = "API.put"

    /// eventName for HubPayloads emitted by this operation
    static let head = "API.head"
}

public extension RESTOperation {
    typealias TaskAdapter = AmplifyOperationTaskAdapter<Request, Success, Failure>
}

public typealias RESTTask = RESTOperation.TaskAdapter
