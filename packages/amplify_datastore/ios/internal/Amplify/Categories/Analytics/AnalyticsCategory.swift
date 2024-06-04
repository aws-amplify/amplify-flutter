//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// The Analytics category enables you to collect analytics data for your app.
final public class AnalyticsCategory: Category {
    /// Analytics category type
    public let categoryType = CategoryType.analytics

    /// Analytics category plugins
    var plugins = [PluginKey: AnalyticsCategoryPlugin]()

    /// Returns the plugin added to the category, if only one plugin is added. Accessing this property if no plugins
    /// are added, or if more than one plugin is added, will cause a preconditionFailure.
    var plugin: AnalyticsCategoryPlugin {
        guard isConfigured else {
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

        guard plugins.count == 1, let plugin = plugins.first?.value else {
            return Fatal.preconditionFailure(
                """
                More than 1 plugin added to \(categoryType.displayName) category. \
                You must invoke operations on this category by getting the plugin you want, as in:
                #"Amplify.\(categoryType.displayName).getPlugin(for: "ThePluginKey").foo()
                """
            )
        }

        return plugin
    }

    var isConfigured = false

    // MARK: - Plugin handling

    /// Adds `plugin` to the list of Plugins that implement functionality for this category.
    ///
    /// - Parameter plugin: The Plugin to add
    public func add(plugin: AnalyticsCategoryPlugin) throws {
        log.debug("Adding plugin: \(String(describing: plugin))")
        let key = plugin.key
        guard !key.isEmpty else {
            let pluginDescription = String(describing: plugin)
            let error = AnalyticsError.configuration(
                "Plugin \(pluginDescription) has an empty `key`.",
                "Set the `key` property for \(String(describing: plugin))")
            throw error
        }

        guard !isConfigured else {
            let pluginDescription = String(describing: plugin)
            let error = ConfigurationError.amplifyAlreadyConfigured(
                "\(pluginDescription) cannot be added after `Amplify.configure()`.",
                "Do not add plugins after calling `Amplify.configure()`."
            )
            throw error
        }

        plugins[plugin.key] = plugin
    }

    /// Returns the added plugin with the specified `key` property.
    ///
    /// - Parameter key: The PluginKey (String) of the plugin to retrieve
    /// - Returns: The wrapped plugin
    public func getPlugin(for key: PluginKey) throws -> AnalyticsCategoryPlugin {
        guard let plugin = plugins[key] else {
            let keys = plugins.keys.joined(separator: ", ")
            let error = AnalyticsError.configuration(
                "No plugin has been added for '\(key)'.",
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

extension AnalyticsCategory: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.analytics.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
