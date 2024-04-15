//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// - Tag: StorageCategoryConfiguration
public struct StorageCategoryConfiguration: CategoryConfiguration {
    public let plugins: [String: JSONValue]

    public init(plugins: [String: JSONValue] = [:]) {
        self.plugins = plugins
    }
}
