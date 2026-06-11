//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Used as HubPayload for the `NetworkStatus`
public struct NetworkStatusEvent {
    /// status of network: true if network is active
    public let active: Bool

    public init(active: Bool) {
        self.active = active
    }
}
