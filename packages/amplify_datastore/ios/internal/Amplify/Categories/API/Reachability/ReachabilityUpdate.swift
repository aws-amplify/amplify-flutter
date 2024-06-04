//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Reachability Update
public struct ReachabilityUpdate {

    /// Whether it is online or not
    public let isOnline: Bool

    /// Initializer with initial online state
    public init(isOnline: Bool) {
        self.isOnline = isOnline
    }
}
