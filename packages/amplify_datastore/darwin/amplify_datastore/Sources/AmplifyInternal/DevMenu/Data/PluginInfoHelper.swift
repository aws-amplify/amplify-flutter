//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

#if os(iOS)
import Foundation

/// Helper class to fetch Amplify plugin information
struct PluginInfoHelper {

    static func getPluginInformation() -> [PluginInfoItem] {
        var pluginList = [PluginInfoItem]()

        pluginList.append(contentsOf: Amplify.Analytics.plugins.map {
            makePluginInfoItem(for: $0.key, versionable: $0.value as? AmplifyVersionable)
        })

        pluginList.append(contentsOf: Amplify.API.plugins.map {
            makePluginInfoItem(for: $0.key, versionable: $0.value as? AmplifyVersionable)
        })

        pluginList.append(contentsOf: Amplify.Auth.plugins.map {
            makePluginInfoItem(for: $0.key, versionable: $0.value as? AmplifyVersionable)
        })

        pluginList.append(contentsOf: Amplify.DataStore.plugins.map {
            makePluginInfoItem(for: $0.key, versionable: $0.value as? AmplifyVersionable)
        })

        pluginList.append(contentsOf: Amplify.Hub.plugins.map {
            makePluginInfoItem(for: $0.key, versionable: $0.value as? AmplifyVersionable)
        })

        pluginList.append(contentsOf: Amplify.Logging.plugins.map {
            makePluginInfoItem(for: $0.key, versionable: $0.value as? AmplifyVersionable)
        })

        pluginList.append(contentsOf: Amplify.Predictions.plugins.map {
            makePluginInfoItem(for: $0.key, versionable: $0.value as? AmplifyVersionable)
        })

        pluginList.append(contentsOf: Amplify.Storage.plugins.map {
            makePluginInfoItem(for: $0.key, versionable: $0.value as? AmplifyVersionable)
        })

        return pluginList
    }

    private static func makePluginInfoItem(
        for pluginKey: String,
        versionable: AmplifyVersionable?
    ) -> PluginInfoItem {
        let version = versionable?.version ?? DevMenuStringConstants.versionNotAvailable
        return PluginInfoItem(displayName: pluginKey, information: version)
    }

}
#endif
