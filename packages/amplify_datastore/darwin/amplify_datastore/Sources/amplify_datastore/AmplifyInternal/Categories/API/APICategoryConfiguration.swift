//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// API Category Configuration
public struct APICategoryConfiguration: CategoryConfiguration {

    /// Plugin keys to plugin configuration
    public let plugins: [String: JSONValue]

    /// Initializer for API configuration
    ///
    /// - Parameter plugins: plugin configuration map
    public init(plugins: [String: JSONValue] = [:]) {
        self.plugins = plugins
    }
}
