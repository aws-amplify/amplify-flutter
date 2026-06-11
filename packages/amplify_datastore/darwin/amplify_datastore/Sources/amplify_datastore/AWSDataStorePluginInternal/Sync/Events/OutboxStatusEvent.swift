//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Used as HubPayload for the `OutboxStatus`
public struct OutboxStatusEvent {
    /// status of outbox: true if there are no events in the outbox at the time the event was dispatched
    public let isEmpty: Bool

    public init(isEmpty: Bool) {
        self.isEmpty = isEmpty
    }
}
