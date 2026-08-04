//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Amplify has a local eventing system called Hub. It is a lightweight
/// implementation of Publisher-Subscriber pattern, and is used to share data
/// between modules and components in your app. Hub enables different categories to
/// communicate with one another when specific events occur, such as authentication
/// events like a user sign-in or notification of a file download.
final public class HubCategory: Category {

    enum ConfigurationState {
        /// Default configuration at initialization
        case `default`

        /// After a custom plugin is added, but before `configure` was invoked
        case pendingConfiguration

        /// After a custom plugin is added and `configure` is invoked
        case configured
    }

    public let categoryType = CategoryType.hub

    // Upon creation, the LoggingCategory will have a default plugin and a configuration state reflecting that.
    // Customers can still add custom plugins; doing so will remove the default plugin.
    var plugins: [PluginKey: HubCategoryPlugin] = [
        AWSHubPlugin.key: AWSHubPlugin()
    ]

    var configurationState = AtomicValue<ConfigurationState>(initialValue: .default)

    var isConfigured: Bool {
        configurationState.get() != .pendingConfiguration
    }

    /// Returns the plugin added to the category, if only one plugin is added. Accessing this property if no plugins
    /// are added, or if more than one plugin is added, will cause a preconditionFailure.
    var plugin: HubCategoryPlugin {
        guard configurationState.get() != .pendingConfiguration else {
            return Fatal.preconditionFailure(
                """
                \(categoryType.displayName) category is not configured. Call Amplify.configure() before using \
                any methods on the category.
                """
            )
        }

        guard !plugins.isEmpty else {
            return Fatal.preconditionFailure("No plugins added to \(categoryType.displayName) category.")
        }

        guard plugins.count == 1 else {
            return Fatal.preconditionFailure(
                """
                More than 1 plugin added to \(categoryType.displayName) category. \
                You must invoke operations on this category by getting the plugin you want, as in:
                #"Amplify.\(categoryType.displayName).getPlugin(for: "ThePluginKey").foo()
                """
            )
        }

        return plugins.first!.value
    }

    // MARK: - Plugin handling

    /// Adds `plugin` to the list of Plugins that implement functionality for this category.
    ///
    /// The default plugin that is assigned at initialization will function without an explicit call to `configure`.
    /// However, adding a plugin removes the default plugin, and will also cause the Hub category to
    /// require `configure` be invoked before using any logging APIs.
    ///
    /// Note: It is a programmer error to use `Amplify.Hub` APIs during the initialization and configuration phases
    /// of a custom Hub category plugin.
    ///
    /// - Parameter plugin: The Plugin to add
    public func add(plugin: HubCategoryPlugin) throws {
        if configurationState.get() == .default {
            configurationState.set(.pendingConfiguration)
            plugins[AWSHubPlugin.key] = nil
        }

        let key = plugin.key
        guard !key.isEmpty else {
            let pluginDescription = String(describing: plugin)
            let error = HubError.configuration("Plugin \(pluginDescription) has an empty `key`.",
                "Set the `key` property for \(String(describing: plugin))")
            throw error
        }

        plugins[plugin.key] = plugin
    }

    /// Returns the added plugin with the specified `key` property.
    ///
    /// - Parameter key: The PluginKey (String) of the plugin to retrieve
    /// - Returns: The wrapped plugin
    public func getPlugin(for key: PluginKey) throws -> HubCategoryPlugin {
        guard let plugin = plugins[key] else {
            let keys = plugins.keys.joined(separator: ", ")
            let error = HubError.configuration("No plugin has been added for '\(key)'.",
                "Either add a plugin for '\(key)', or use one of the known keys: \(keys)")
            throw error
        }
        return plugin
    }

    /// Removes the plugin registered for `key` from the list of Plugins that implement functionality for this category.
    /// If no plugin has been added for `key`, no action is taken, making this method safe to call multiple times.
    ///
    /// - Parameter key: The key used to `add` the plugin
    public func removePlugin(for key: PluginKey) {
        plugins.removeValue(forKey: key)
    }

}

extension HubCategory: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.hub.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
