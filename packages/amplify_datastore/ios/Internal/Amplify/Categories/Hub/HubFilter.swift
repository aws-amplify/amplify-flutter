//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Convenience typealias defining a closure that can be used to filter Hub messages
public typealias HubFilter = (HubPayload) -> Bool

/// Convenience filters for common filtering use cases
public struct HubFilters {

    /// True if all filters evaluate to true
    public static func all(filters: HubFilter...) -> HubFilter {
        let filter: HubFilter = { payload -> Bool in
            return filters.allSatisfy { $0(payload) }
        }
        return filter
    }

    /// True if any of the filters evaluate to true
    public static func any(filters: HubFilter...) -> HubFilter {
        let filter: HubFilter = { payload -> Bool in
            return filters.contains { $0(payload) }
        }
        return filter
    }

    /// Returns a HubFilter that is `true` if the event's `context` property has a UUID that matches `operation.id`
    /// - Parameter operation: The operation to match
    public static func forOperation<Request: AmplifyOperationRequest, Success, Failure: AmplifyError>
        (_ operation: AmplifyOperation<Request, Success, Failure>) -> HubFilter {
        let operationId = operation.id
        let filter: HubFilter = { payload in
            guard let context = payload.context as? AmplifyOperationContext<Request> else {
                return false
            }

            return context.operationId == operationId
        }

        return filter
    }

    public static func forEventName(_ eventName: HubPayloadEventName) -> HubFilter {
        let filter: HubFilter = { payload in
            payload.eventName == eventName
        }
        return filter
    }

}
