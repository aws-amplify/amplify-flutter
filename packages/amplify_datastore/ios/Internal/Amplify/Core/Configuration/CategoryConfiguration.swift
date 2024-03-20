//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// A CategoryConfiguration must contain a plugins field used to configure plugins for that category
///
/// - Tag: CategoryConfiguration
public protocol CategoryConfiguration: Codable {
    /// A map of category plugin configurations by PluginKey. Such configurations are defined by the plugins
    /// themselves, and may be of any type.
    ///
    /// - Tag: CategoryConfiguration.plugins
    var plugins: [String: JSONValue] { get }
}
