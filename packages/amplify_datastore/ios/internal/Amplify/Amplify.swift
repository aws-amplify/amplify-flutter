//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// At its core, the Amplify class is simply a router that provides clients top-level access to categories and
/// configuration methods. It provides convenient access to default plugins via the top-level category properties,
/// but clients can access specific plugins by invoking `getPlugin` on a category and issuing methods directly to
/// that plugin.
///
/// - Warning: It is a serious error to invoke any of the category APIs (like `Analytics.record()` or
/// `API.mutate()`) without first registering plugins via `Amplify.add(plugin:)` and configuring Amplify via
/// `Amplify.configure()`. Such access will cause a preconditionFailure.
///
/// There are two exceptions to this. The `Logging` and `Hub` categories are configured with a default plugin that is
/// available at initialization.
///
/// - Tag: Amplify
public class Amplify {

    /// If `true`, `configure()` has already been invoked, and subsequent calls to `configure` will throw a
    /// ConfigurationError.amplifyAlreadyConfigured error.
    ///
    /// - Tag: Amplify.isConfigured
    static var isConfigured = false

    // Storage for the categories themselves, which will be instantiated during configuration, and cleared during reset.
    // It is not supported to mutate these category properties. They are `var` to support the `reset()` method for
    // ease of testing.

    /// - Tag: Amplify.Analytics
    public static internal(set) var Analytics = AnalyticsCategory()

    /// - Tag: Amplify.API
    public static internal(set) var API: APICategory = APICategory()

    /// - Tag: Amplify.Auth
    public static internal(set) var Auth = AuthCategory()

    /// - Tag: Amplify.DataStore
    public static internal(set) var DataStore = DataStoreCategory()

    /// - Tag: Amplify.Geo
    public static internal(set) var Geo = GeoCategory()

    /// - Tag: Amplify.Hub
    public static internal(set) var Hub = HubCategory()

    /// - Tag: Amplify.Notifications
    public static internal(set) var Notifications = NotificationsCategory()

    /// - Tag: Amplify.Predictions
    public static internal(set) var Predictions = PredictionsCategory()

    /// - Tag: Amplify.Storage
    public static internal(set) var Storage = StorageCategory()

    /// Special case category. We protect this with an AtomicValue because it is used by reset()
    /// methods during setup & teardown of tests
    ///
    /// - Tag: Amplify.Logging
    public static internal(set) var Logging: LoggingCategory {
        get {
            loggingAtomic.get()
        }
        set {
            loggingAtomic.set(newValue)
        }
    }
    private static let loggingAtomic = AtomicValue<LoggingCategory>(initialValue: LoggingCategory())

    /// Adds `plugin` to the category
    ///
    /// See: [Category.removePlugin(for:)](x-source-tag://Category.removePlugin)
    ///
    /// - Parameter plugin: The plugin to add
    /// - Tag: Amplify.add_plugin
    public static func add<P: Plugin>(plugin: P) throws {
        log.debug("Adding plugin: \(plugin))")
        switch plugin {
        case let plugin as AnalyticsCategoryPlugin:
            try Analytics.add(plugin: plugin)
        case let plugin as APICategoryPlugin:
            try API.add(plugin: plugin)
        case let plugin as AuthCategoryPlugin:
            try Auth.add(plugin: plugin)
        case let plugin as DataStoreCategoryPlugin:
            try DataStore.add(plugin: plugin)
        case let plugin as GeoCategoryPlugin:
            try Geo.add(plugin: plugin)
        case let plugin as HubCategoryPlugin:
            try Hub.add(plugin: plugin)
        case let plugin as LoggingCategoryPlugin:
            try Logging.add(plugin: plugin)
        case let plugin as PredictionsCategoryPlugin:
            try Predictions.add(plugin: plugin)
        case let plugin as PushNotificationsCategoryPlugin:
            try Notifications.Push.add(plugin: plugin)
        case let plugin as StorageCategoryPlugin:
            try Storage.add(plugin: plugin)
        default:
            throw PluginError.pluginConfigurationError(
                "Plugin category does not exist.",
                "Verify that the library version is correct and supports the plugin's category.")
        }
    }
}

extension Amplify: DefaultLogger {
    public static var log: Logger {
        Amplify.Logging.logger(forCategory: String(describing: self))
    }

    public var log: Logger {
        Self.log
    }
}
