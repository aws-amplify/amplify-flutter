//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// HubChannel represents the channels on which Amplify category messages will be dispatched. Apps can define their own
/// channels for intra-app communication. Internally, Amplify uses the Hub for dispatching notifications about events
/// associated with different categories.
public enum HubChannel {

    case analytics

    case api

    case auth

    case dataStore

    case geo

    case hub

    case logging

    case predictions

    case pushNotifications

    case storage

    case custom(String)

    /// Convenience property to return an array of all non-`custom` channels
    static var amplifyChannels: [HubChannel] = {
        let categoryChannels = CategoryType
            .allCases
            .sorted { $0.displayName < $1.displayName }
            .map { HubChannel(from: $0) }
            .compactMap { $0 }

        return categoryChannels
    }()
}

extension HubChannel: Equatable {
    public static func == (lhs: HubChannel, rhs: HubChannel) -> Bool {
        switch (lhs, rhs) {
        case (.analytics, .analytics):
            return true
        case (.api, .api):
            return true
        case (.auth, .auth):
            return true
        case (.dataStore, .dataStore):
            return true
        case (.geo, .geo):
            return true
        case (.hub, .hub):
            return true
        case (.logging, .logging):
            return true
        case (.predictions, .predictions):
            return true
        case (.pushNotifications, .pushNotifications):
            return true
        case (.storage, .storage):
            return true
        case (.custom(let lhsValue), .custom(let rhsValue)):
            return lhsValue == rhsValue
        default:
            return false
        }
    }
}

extension HubChannel {
    public init(from categoryType: CategoryType) {
        switch categoryType {
        case .analytics:
            self = .analytics
        case .api:
            self = .api
        case .auth:
            self = .auth
        case .dataStore:
            self = .dataStore
        case .geo:
            self = .geo
        case .hub:
            self = .hub
        case .logging:
            self = .logging
        case .predictions:
            self = .predictions
        case .pushNotifications:
            self = .pushNotifications
        case .storage:
            self = .storage
        }
    }
}

extension HubChannel: Hashable { }
