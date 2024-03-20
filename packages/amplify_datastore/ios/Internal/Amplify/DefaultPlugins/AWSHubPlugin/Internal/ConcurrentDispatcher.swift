//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// A Dispatcher that processes the list of listeners concurrently on a background queue. In our tests, there is no
/// significant performance benefit using a concurrent dispatcher up to tests of 10,000 listeners. We are leaving this
/// for future reference in case real-world configurations reveal significant benefits, but there is currently no code
/// path that allows for this to be selected.
struct ConcurrentDispatcher: Dispatcher {
    let channel: HubChannel
    let payload: HubPayload

    var isCancelled: Bool

    init(channel: HubChannel, payload: HubPayload) {
        self.channel = channel
        self.payload = payload
        self.isCancelled = false
    }

    func dispatch(to filteredListeners: [FilteredListener]) {
        DispatchQueue.concurrentPerform(iterations: filteredListeners.count) { iteration in
            guard !isCancelled else {
                return
            }

            let listener = filteredListeners[iteration]

            guard channel == listener.channel else {
                return
            }

            if let filter = listener.filter, !filter(self.payload) {
                return
            }

            listener.listener(self.payload)
        }
    }
}
