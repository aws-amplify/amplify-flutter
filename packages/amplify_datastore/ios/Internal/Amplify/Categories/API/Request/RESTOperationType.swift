//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// The type of API operation
public enum RESTOperationType: String {

    /// GET operation
    case get = "GET"

    /// PUT operation
    case put = "PUT"

    /// POST operation
    case post = "POST"

    /// PATCH operation
    case patch = "PATCH"

    /// DELETE operation
    case delete = "DELETE"

    /// HEAD operation
    case head = "HEAD"
}

extension RESTOperationType: HubPayloadEventNameConvertible {

    /// Hub event name for this operation type.
    public var hubEventName: String {
        switch self {
        case .get:
            return HubPayload.EventName.API.get
        case .put:
            return HubPayload.EventName.API.put
        case .post:
            return HubPayload.EventName.API.post
        case .patch:
            return HubPayload.EventName.API.patch
        case .delete:
            return HubPayload.EventName.API.delete
        case .head:
            return HubPayload.EventName.API.head
        }
    }
}
