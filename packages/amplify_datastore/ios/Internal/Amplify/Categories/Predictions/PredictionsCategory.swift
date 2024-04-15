//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

public enum Predictions {}

final public class PredictionsCategory: Category {

    public let categoryType = CategoryType.predictions

    var plugins = [PluginKey: PredictionsCategoryPlugin]()

    /// Returns the plugin added to the category, if only one plugin is added. Accessing this property if no plugins
    /// are added, or if more than one plugin is added, will cause a preconditionFailure.
    var plugin: PredictionsCategoryPlugin {
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

    var isConfigured = false

    // MARK: - Plugin handling

    /// Adds `plugin` to the list of Plugins that implement functionality for this category.
    ///
    /// - Parameter plugin: The Plugin to add
    public func add(plugin: PredictionsCategoryPlugin) throws {
        let key = plugin.key
        guard !key.isEmpty else {
            let pluginDescription = String(describing: plugin)
            throw PredictionsError.client(
                .init(
                    description: "Plugin \(pluginDescription) has an empty `key`.",
                    recoverySuggestion: "Set the `key` property for \(pluginDescription)",
                    underlyingError: nil
                )
            )
        }

        guard !isConfigured else {
            let pluginDescription = String(describing: plugin)
            throw PredictionsError.client(
                .init(
                    description: "\(pluginDescription) cannot be added after `Amplify.configure()`.",
                    recoverySuggestion: "Do not add plugins after calling `Amplify.configure()`.",
                    underlyingError: nil
                )
            )
        }

        plugins[plugin.key] = plugin
    }

    /// Returns the added plugin with the specified `key` property.
    ///
    /// - Parameter key: The PluginKey (String) of the plugin to retrieve
    /// - Returns: The wrapped plugin
    public func getPlugin(for key: PluginKey) throws -> PredictionsCategoryPlugin {
        guard let plugin = plugins[key] else {
            let keys = plugins.keys.joined(separator: ", ")
            throw PredictionsError.client(
                .init(
                    description: "No plugin has been added for '\(key)'.",
                    recoverySuggestion: "Either add a plugin for '\(key)', or use one of the known keys: \(keys)",
                    underlyingError: nil
                )
            )
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

extension PredictionsCategory: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.predictions.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
