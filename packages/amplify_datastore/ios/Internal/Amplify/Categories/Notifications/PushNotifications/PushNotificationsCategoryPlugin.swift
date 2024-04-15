//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

/// Defines a plugin that implements the behaviour of the Push Notifications category
public protocol PushNotificationsCategoryPlugin: Plugin, PushNotificationsCategoryBehaviour { }

public extension PushNotificationsCategoryPlugin {
    var categoryType: CategoryType {
        return .pushNotifications
    }
}
