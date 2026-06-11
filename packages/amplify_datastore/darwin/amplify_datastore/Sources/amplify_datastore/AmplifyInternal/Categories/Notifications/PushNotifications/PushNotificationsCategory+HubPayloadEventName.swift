//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

public extension HubPayload.EventName.Notifications {
    /// Push Notifications hub events
    struct Push { }
}

public extension HubPayload.EventName.Notifications.Push {
    /// Event triggered when notifications permissions are requested to the user
    static let requestNotificationsPermissions = "Notifications.Push.requestNotificationsPermissions"
}
