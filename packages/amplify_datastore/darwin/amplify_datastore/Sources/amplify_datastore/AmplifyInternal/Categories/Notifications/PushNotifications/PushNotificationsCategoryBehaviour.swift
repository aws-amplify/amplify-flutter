//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import UserNotifications

/// Defines the behaviour of the Push Notifications category that clients will use
public protocol PushNotificationsCategoryBehaviour: NotificationsSubcategoryBehaviour {
    /// Associates a given user ID with the current device
    ///
    /// - Parameter userId: The unique identifier for the user
    /// - Parameter userProfile: Additional specific data for the user
    func identifyUser(userId: String, userProfile: UserProfile?) async throws

    /// Registers the given APNs token for this device, allowing it to receive Push Notifications
    ///
    /// - Parameter apnsToken: A globally unique token that identifies this device to APNs
    func registerDevice(apnsToken: Data) async throws

    /// Records that a notification has been received.
    ///
    /// - Parameter userInfo: A dictionary that contains information related to the remote notification
    func recordNotificationReceived(_ userInfo: Notifications.Push.UserInfo) async throws

#if !os(tvOS)
    /// Records that a notification was opened, i.e. the user tapped on it
    ///
    /// - Parameter response: The user’s response to the notification
    func recordNotificationOpened(_ response: UNNotificationResponse) async throws
#endif
}
