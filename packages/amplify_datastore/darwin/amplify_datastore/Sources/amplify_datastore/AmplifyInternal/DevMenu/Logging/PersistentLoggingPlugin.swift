//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation

/// `LoggingCategoryPlugin` that wraps another`LoggingCategoryPlugin` and saves the logs in memory
public class PersistentLoggingPlugin: LoggingCategoryPlugin {

    var plugin: LoggingCategoryPlugin
    var persistentLogWrapper: PersistentLogWrapper?

    public let key: String = DevMenuStringConstants.persistentLoggingPluginKey

    public func configure(using configuration: Any?) throws {
        try plugin.configure(using: configuration)
    }

    public func logger(forCategory category: String, logLevel: LogLevel) -> Logger {
        return plugin.logger(forCategory: category, logLevel: logLevel)
    }

    public func logger(forCategory category: String) -> Logger {
        return plugin.logger(forCategory: category)
    }

    public func enable() {
        plugin.enable()
    }

    public func disable() {
        plugin.disable()
    }

    public func logger(forNamespace namespace: String) -> Logger {
        plugin.logger(forNamespace: namespace)
    }

    public func logger(forCategory category: String, forNamespace namespace: String) -> Logger {
        plugin.logger(forCategory: category, forNamespace: namespace)
    }

    public func reset() async {
        persistentLogWrapper = nil
        await plugin.reset()
    }

    init(plugin: LoggingCategoryPlugin) {
        self.plugin = plugin
    }

    public var `default`: Logger {
        if persistentLogWrapper == nil {
            persistentLogWrapper = PersistentLogWrapper(logWrapper: plugin.default)
        }

        return persistentLogWrapper!
    }
}

extension PersistentLoggingPlugin: AmplifyVersionable { }
#endif
