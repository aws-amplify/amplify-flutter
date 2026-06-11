//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

extension LoggingCategory: CategoryConfigurable {

    /// Configures the LoggingCategory using the incoming CategoryConfiguration.
    func configure(using configuration: CategoryConfiguration?) throws {
        let plugin: LoggingCategoryPlugin
        switch configurationState {
        case .default:
            // Default plugin is already assigned, and no configuration is applicable, exit early
            configurationState = .configured
            return
        case .pendingConfiguration(let pendingPlugin):
            plugin = pendingPlugin
        case .configured:
            let error = ConfigurationError.amplifyAlreadyConfigured(
                "\(categoryType.displayName) has already been configured.",
                "Remove the duplicate call to `Amplify.configure()`"
            )
            throw error
        }

        try plugin.configure(using: configuration?.plugins[plugin.key])
        self.plugins[plugin.key] = plugin

        if plugin.key != AWSUnifiedLoggingPlugin.key, let consolePlugin = try? self.getPlugin(for: AWSUnifiedLoggingPlugin.key) {
            try consolePlugin.configure(using: configuration?.plugins[consolePlugin.key])
        }

        configurationState = .configured
    }

    func configure(using amplifyConfiguration: AmplifyConfiguration) throws {
        try configure(using: categoryConfiguration(from: amplifyConfiguration))
    }

    func configure(using amplifyOutputs: AmplifyOutputsData) throws {
        let plugin: LoggingCategoryPlugin
        switch configurationState {
        case .default:
            // Default plugin is already assigned, and no configuration is applicable, exit early
            configurationState = .configured
            return
        case .pendingConfiguration(let pendingPlugin):
            plugin = pendingPlugin
        case .configured:
            let error = ConfigurationError.amplifyAlreadyConfigured(
                "\(categoryType.displayName) has already been configured.",
                "Remove the duplicate call to `Amplify.configure()`"
            )
            throw error
        }

        try plugin.configure(using: amplifyOutputs)
        self.plugins[plugin.key] = plugin

        if plugin.key != AWSUnifiedLoggingPlugin.key, let consolePlugin = try? self.getPlugin(for: AWSUnifiedLoggingPlugin.key) {
            try consolePlugin.configure(using: amplifyOutputs)
        }

        configurationState = .configured
    }
}
