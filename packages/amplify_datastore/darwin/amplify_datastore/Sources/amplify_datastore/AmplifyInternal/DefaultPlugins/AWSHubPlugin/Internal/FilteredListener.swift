//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

struct FilteredListener {
    /// A unique identifier for this listener
    let id: UUID

    /// The HubChannel to which the listener is assigned
    let channel: HubChannel

    /// An optional Filter for refining messages
    let filter: HubFilter?

    /// The block to invoke with the HubPayload, if the channel matches and `filter` evaluates to true
    let listener: HubListener

    /// A HubListener block assigned to a particular channel, with an optional filter. When a message is dispatched,
    /// the Hub will first inspect the listener's channel and if it matches, invoke the filter, if any, to see if the
    /// listener block should be invoked with the payload.
    ///
    /// - Parameters:
    ///   - channel: The HubChannel to which the listener is assigned
    ///   - filter: An optional Filter for refining messages
    ///   - listener: The block to invoke with the HubPayload, if the channel matches and `filter` evaluates to true
    init(for channel: HubChannel, filter: HubFilter?, listener: @escaping HubListener) {
        self.id = UUID()
        self.channel = channel
        self.filter = filter
        self.listener = listener
    }
}
