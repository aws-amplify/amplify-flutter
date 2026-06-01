//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// The Amplify category with which the conforming type is associated. Categories, Plugins, ClientBehaviors, etc must
/// all share the same CategoryType
///
/// - Tag: CategoryTypeable
public protocol CategoryTypeable {
    /// - Tag: CategoryTypeable.categoryType
    var categoryType: CategoryType { get }
}

/// Amplify supports these Category types
///
/// - Tag: CategoryType
public enum CategoryType: String {
    /// Record app metrics and analytics data
    ///
    /// - Tag: CategoryType.analytics
    case analytics

    /// Retrieve data from a remote service
    ///
    /// - Tag: CategoryType.api
    case api

    /// Authentication
    ///
    /// - Tag: CategoryType.auth
    case auth

    /// Persist data
    ///
    /// - Tag: CategoryType.dataStore
    case dataStore

    /// Interact with geospatial services
    ///
    /// - Tag: CategoryType.geo
    case geo

    /// Listen for or dispatch Amplify events
    ///
    /// - Tag: CategoryType.hub
    case hub

    /// Log Amplify and app messages
    ///
    /// - Tag: CategoryType.logging
    case logging

    /// Prediction
    ///
    /// - Tag: CategoryType.predictions
    case predictions

    /// Push Notifications
    ///
    /// - Tag: CategoryType.pushNotifications
    case pushNotifications

    /// Upload and download files from the cloud
    ///
    /// - Tag: CategoryType.storage
    case storage
}

extension CategoryType: CaseIterable {}

public extension CategoryType {
    /// - Tag: CategoryType.displayName
    var displayName: String {
        switch self {
        case .analytics:
            return "Analytics"
        case .api:
            return "API"
        case .auth:
            return "Authentication"
        case .dataStore:
            return "DataStore"
        case .geo:
            return "Geo"
        case .hub:
            return "Hub"
        case .logging:
            return "Logging"
        case .predictions:
            return "Predictions"
        case .pushNotifications:
            return "PushNotifications"
        case .storage:
            return "Storage"
        }
    }

    /// - Tag: CategoryType.category
    var category: Category {
        switch self {
        case .analytics:
            return Amplify.Analytics
        case .api:
            return Amplify.API
        case .auth:
            return Amplify.Auth
        case .dataStore:
            return Amplify.DataStore
        case .geo:
            return Amplify.Geo
        case .hub:
            return Amplify.Hub
        case .logging:
            return Amplify.Logging
        case .predictions:
            return Amplify.Predictions
        case .pushNotifications:
            return Amplify.Notifications.Push
        case .storage:
            return Amplify.Storage
        }
    }
}
