//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Internal utility extensions
extension CategoryTypeable {

    /// Returns the appropriate category-specific configuration section from an AmplifyConfiguration
    ///
    /// - Parameter amplifyConfiguration: The AmplifyConfiguration from which to return the category specific
    ///   configuration section
    /// - Returns: The category-specific configuration section, or nil if the configuration has no value for the section
    func categoryConfiguration(from amplifyConfiguration: AmplifyConfiguration) -> CategoryConfiguration? {
        switch categoryType {
        case .analytics:
            return amplifyConfiguration.analytics
        case .api:
            return amplifyConfiguration.api
        case .dataStore:
            return amplifyConfiguration.dataStore
        case .geo:
            return amplifyConfiguration.geo
        case .hub:
            return amplifyConfiguration.hub
        case .logging:
            return amplifyConfiguration.logging
        case .predictions:
            return amplifyConfiguration.predictions
        case .pushNotifications:
            return amplifyConfiguration.notifications
        case .storage:
            return amplifyConfiguration.storage
        case .auth:
            return amplifyConfiguration.auth
        }
    }

}
