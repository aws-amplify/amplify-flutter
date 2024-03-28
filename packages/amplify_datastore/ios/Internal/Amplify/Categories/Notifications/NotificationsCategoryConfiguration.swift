//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// The configuration for the Notifications category
public struct NotificationsCategoryConfiguration: CategoryConfiguration {
    /// Plugins
    public let plugins: [String: JSONValue]

    /// Initializer
    /// - Parameter plugins: Plugins
    public init(plugins: [String: JSONValue] = [:]) {
        self.plugins = plugins
    }
}
