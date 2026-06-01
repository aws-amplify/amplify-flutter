//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Extension of `Amplify` for supporting Developer Menu feature
extension Amplify {
#if os(iOS)
    static var devMenu: AmplifyDevMenu?

    @MainActor
    public static func enableDevMenu(contextProvider: DevMenuPresentationContextProvider) {
#if DEBUG
        devMenu = AmplifyDevMenu(devMenuPresentationContextProvider: contextProvider)
#else
        Logging.warn(DevMenuStringConstants.logTag + "Developer Menu is available only in debug mode")
#endif

    }

    /// Checks whether developer menu is enabled by developer
    static func isDevMenuEnabled() -> Bool {
        return devMenu != nil
    }
#endif

    /// Returns a `PersistentLoggingPlugin` if developer menu feature is enabled in debug mode
    static func getLoggingCategoryPlugin(loggingPlugin: LoggingCategoryPlugin) -> LoggingCategoryPlugin {
#if os(iOS)
#if DEBUG
        if isDevMenuEnabled() {
            return PersistentLoggingPlugin(plugin: loggingPlugin)
        } else {
            return loggingPlugin
        }
#else
        return loggingPlugin
#endif
#else
        return loggingPlugin
#endif
    }

    static func getLoggingCategoryPluginLookup(
        loggingPlugin: LoggingCategoryPlugin
    ) -> [PluginKey: LoggingCategoryPlugin] {
#if os(iOS)
#if DEBUG
        if isDevMenuEnabled() {
            let persistentLoggingPlugin = PersistentLoggingPlugin(plugin: loggingPlugin)
            return [persistentLoggingPlugin.key: persistentLoggingPlugin]
        } else {
            return [loggingPlugin.key: loggingPlugin]
        }
#else
        return [loggingPlugin.key: loggingPlugin]
#endif
#else
        return [loggingPlugin.key: loggingPlugin]
#endif
    }
}
