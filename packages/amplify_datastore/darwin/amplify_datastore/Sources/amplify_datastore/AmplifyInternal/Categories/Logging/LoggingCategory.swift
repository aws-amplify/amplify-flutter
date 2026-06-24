//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// AWS Amplify writes console logs through Logger. You can use Logger in your apps for the same purpose.
final public class LoggingCategory: Category {
    enum ConfigurationState {
        /// Default configuration at initialization
        case `default`

        /// After a custom plugin is added, but before `configure` was invoked
        case pendingConfiguration(LoggingCategoryPlugin)

        /// After a custom plugin is added and `configure` is invoked
        case configured
    }

    let lock: NSLocking = NSLock()

    public let categoryType = CategoryType.logging

    private var _logLevel = LogLevel.error

    /// The global logLevel. Messages logged at a priority less than or equal to this value will be logged (e.g., if
    /// `logLevel` is set to `.info`, then messages sent at `.error`, `.warn`, and `.info` will be logged, but messages
    /// at `.debug` and `.verbose` will not be logged. The global log level is also used for the default logger
    /// e.g., `Amplify.Log.debug("debug message")`. Defaults to `.error`.
    ///
    /// Developers can override log levels per log category, as in
    /// ```
    /// let viewLogger = Amplify.Logging.logger(forCategory: "views", level: .error)
    /// let networkLogger = Amplify.Logging.logger(forCategory: "network", level: .info)
    ///
    /// viewLogger.info("A view loaded") // Will not be logged
    /// networkLogger.info("A network operation started") // Will be logged
    /// ```
    public var logLevel: LogLevel {
        get {
            lock.execute {
                _logLevel
            }
        }
        set {
            lock.execute {
                _logLevel = newValue
            }
        }
    }

    var configurationState = ConfigurationState.default

    /// For any external cases, Logging is always ready to be used. Internal configuration state is tracked via a
    /// different mechanism
    var isConfigured: Bool {
        return !plugins.isEmpty
    }

    var plugins: [PluginKey: LoggingCategoryPlugin] = Amplify.getLoggingCategoryPluginLookup(loggingPlugin: AWSUnifiedLoggingPlugin())
    // MARK: - Plugin handling

    /// Sets `plugin` as the sole provider of functionality for this category. **Note: this is different from other
    /// category behaviors, which allow multiple plugins to be used to implement functionality.**
    ///
    /// The default plugin that is assigned at initialization will function without an explicit call to `configure`.
    /// However, adding a plugin will cause the Logging category to require `configure` be invoked, and will remove the
    /// default-configured Logging plugin during configuration. The result is, during initialization and configuration,
    /// calls to any Logging APIs will be handled by the default plugin, until after `configure` is invoked on logging,
    /// at which point calls will be handled by the plugin.
    ///
    /// Code that invokes Logging APIs should not cache references to the logger, since the underlying plugin may be
    /// disposed between calls. Instead, use the `Amplify.Logging.logger(for:)` method to get a logger for the specified
    /// tag.
    ///
    /// - Parameter plugin: The Plugin to add
    public func add(plugin: LoggingCategoryPlugin) throws {
        let key = plugin.key
        guard !key.isEmpty else {
            let pluginDescription = String(describing: plugin)
            let error = LoggingError.configuration("Plugin \(pluginDescription) has an empty `key`.",
                "Set the `key` property for \(String(describing: plugin))")
            throw error
        }

        configurationState = .pendingConfiguration(Amplify.getLoggingCategoryPlugin(loggingPlugin: plugin))
    }

    /// Returns the added plugin with the specified `key` property.
    ///
    /// - Parameter key: The PluginKey (String) of the plugin to retrieve
    /// - Returns: The wrapped plugin
    public func getPlugin(for key: PluginKey) throws -> LoggingCategoryPlugin {
        guard let plugin = plugins.first(where: { $0.key == key})?.value else {
            let error = LoggingError.configuration("No plugin has been added for '\(key)'.",
                "Either add a plugin for '\(key)', or use the installed plugin, which has the key '\(key)'")
            throw error
        }
        return plugin
    }

    /// Removes the current plugin if its key property matches the provided `key`, and reinstalls the default plugin. If
    /// the key property of the current plugin is not `key`, takes no action.
    ///
    /// - Parameter key: The key used to `add` the plugin
    public func removePlugin(for key: PluginKey) {
        plugins.removeValue(forKey: key)
    }
}

extension LoggingCategory: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: CategoryType.logging.displayName, forNamespace: String(describing: self))
    }
    public var log: Logger {
        Self.log
    }
}
