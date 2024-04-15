//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

// swiftlint:disable cyclomatic_complexity
extension Amplify {

    /// Resets the state of the Amplify framework.
    ///
    /// Internally, this method:
    /// - Invokes `reset` on each configured category, which clears that categories registered plugins.
    /// - Releases each configured category, and replaces the instances referred to by the static accessor properties
    ///   (e.g., `Amplify.Hub`) with new instances. These instances must subsequently have providers added, and be
    ///   configured prior to use.
    static func reset() async {
        // Looping through all categories to ensure we don't accidentally forget a category at some point in the future
        for categoryType in CategoryType.allCases {
            switch categoryType {
            case .analytics:
                await reset(Analytics)
            case .api:
                await reset(API)
            case .auth:
                await reset(Auth)
            case .dataStore:
                await reset(DataStore)
            case .geo:
                await reset(Geo)
            case .storage:
                await reset(Storage)
            case .predictions:
                await reset(Predictions)
            case .pushNotifications:
                await reset(Notifications.Push)
            case .hub, .logging:
                // Hub and Logging should be reset after all other categories
                break
            }
        }

        await reset(Hub)
        await reset(Logging)

        log.verbose("Resetting ModelRegistry, ModelListDecoderRegistry, ModelProviderRegistry")
        ModelRegistry.reset()
        ModelListDecoderRegistry.reset()
        ModelProviderRegistry.reset()
        log.verbose("Resetting ModelRegistry, ModelListDecoderRegistry, ModelProviderRegistry finished")

#if os(iOS)
        await MainActor.run {
            devMenu = nil
        }
#endif

        // Initialize Logging and Hub first, to ensure their default plugins are registered and available to other
        // categories during their initialization and configuration phases.
        Logging = LoggingCategory()
        Hub = HubCategory()

        // Switch over all category types to ensure we don't forget any
        for categoryType in CategoryType.allCases.filter({ $0 != .logging && $0 != .hub }) {
            switch categoryType {
            case .logging, .hub:
                // Initialized above
                break
            case .analytics:
                Analytics = AnalyticsCategory()
            case .api:
                API = APICategory()
            case .auth:
                Auth = AuthCategory()
            case .dataStore:
                DataStore = DataStoreCategory()
            case .geo:
                Geo = GeoCategory()
            case .predictions:
                Predictions = PredictionsCategory()
            case .pushNotifications:
                Notifications.Push = PushNotificationsCategory()
            case .storage:
                Storage = StorageCategory()
            }
        }

        isConfigured = false
    }

    private static func reset(_ candidate: Any) async {
        guard let resettable = candidate as? Resettable else { return }

        await resettable.reset()
    }
}
