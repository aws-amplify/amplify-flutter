//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Analytics category configuration
public struct AnalyticsCategoryConfiguration: CategoryConfiguration {
    /// Plugins
    public let plugins: [String: JSONValue]

    /// Initializer
    /// - Parameter plugins: Plugins
    public init(plugins: [String: JSONValue] = [:]) {
        self.plugins = plugins
    }
}
