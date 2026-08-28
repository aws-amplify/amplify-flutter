//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import UserNotifications

extension PushNotificationsCategory: PushNotificationsCategoryBehaviour {
    public func identifyUser(userId: String, userProfile: UserProfile? = nil) async throws {
        try await plugin.identifyUser(userId: userId, userProfile: userProfile)
    }

    public func registerDevice(apnsToken: Data) async throws {
        try await plugin.registerDevice(apnsToken: apnsToken)
    }

    public func recordNotificationReceived(_ userInfo: Notifications.Push.UserInfo) async throws {
        try await plugin.recordNotificationReceived(userInfo)
    }

#if !os(tvOS)
    public func recordNotificationOpened(_ response: UNNotificationResponse) async throws {
        try await plugin.recordNotificationOpened(response)
    }
#endif
}
