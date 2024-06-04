//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// CategoryPlugins implement the behavior defined by the category. The `Plugin` protocol defines behavior common to
/// all plugins, but each category will also define client API behavior and optionally, plugin API behavior to describe
/// the contract to which the plugin must conform.
public protocol Plugin: CategoryTypeable, Resettable {
    /// The key under which the plugin is registered in the Amplify configuration. Keys must be unique within the
    /// category configuration section.
    var key: PluginKey { get }

    /// Configures the category plugin using `configuration`
    ///
    /// - Parameter configuration: The category plugin configuration for configuring the plugin. The plugin
    /// implementation is responsible for validating the incoming object, including required configurations, and
    /// handling potential conflicts with globally-specified options.
    /// - Throws:
    ///   - PluginError.pluginConfigurationError: If the plugin encounters an error during configuration
    func configure(using configuration: Any?) throws
}

/// Convenience typealias to clarify when Strings are being used as plugin keys
public typealias PluginKey = String

/// The conforming type can be initialized with a `Plugin`. Allows for construction of concrete, type-erasing wrappers
/// to store heterogenous collections of Plugins in a category.
/// - Throws: PluginError.mismatchedPlugin if the instance is associated with the wrong category
public protocol PluginInitializable {
    init<P: Plugin>(instance: P)
}
