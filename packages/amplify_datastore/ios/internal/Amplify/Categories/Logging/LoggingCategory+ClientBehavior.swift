//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension LoggingCategory: LoggingCategoryClientBehavior {
    public var `default`: Logger {
        var targets = [Logger]()
        for plugin in plugins.values {
            targets.append(plugin.default)
        }
        return BroadcastLogger(targets: targets)
    }

    public func logger(forCategory category: String) -> Logger {
        var targets = [Logger]()
        for plugin in plugins.values {
            targets.append(plugin.logger(forCategory: category))
        }
        return BroadcastLogger(targets: targets)
    }

    public func logger(forCategory category: CategoryType) -> Logger {
        var targets = [Logger]()
        for plugin in plugins.values {
            targets.append(plugin.logger(forCategory: category.displayName))
        }
        return BroadcastLogger(targets: targets)
    }

    public func logger(forCategory category: String, logLevel: LogLevel) -> Logger {
        var targets = [Logger]()
        for plugin in plugins.values {
            targets.append(plugin.logger(forCategory: category, logLevel: logLevel))
        }
        return BroadcastLogger(targets: targets)
    }

    public func enable() {
        for plugin in plugins.values {
            plugin.enable()
        }
    }

    public func disable() {
        for plugin in plugins.values {
            plugin.disable()
        }
    }

    public func logger(forNamespace namespace: String) -> Logger {
        var targets = [Logger]()
        for plugin in plugins.values {
            targets.append(plugin.logger(forNamespace: namespace))
        }
        return BroadcastLogger(targets: targets)

    }

    public func logger(forCategory category: String, forNamespace namespace: String) -> Logger {
        var targets = [Logger]()
        for plugin in plugins.values {
            targets.append(plugin.logger(forCategory: category, forNamespace: namespace))
        }
        return BroadcastLogger(targets: targets)
    }
}
