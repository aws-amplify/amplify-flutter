//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Geo category configuration
public struct GeoCategoryConfiguration: CategoryConfiguration {

    /// Dictionary of plugin keys to plugin configurations
    public let plugins: [String: JSONValue]

    /// Initializer
    /// - Parameter plugins: Plugin configuration dictionary
    public init(plugins: [String: JSONValue] = [:]) {
        self.plugins = plugins
    }
}
