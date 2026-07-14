// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Flutter
import UIKit
import UserNotifications

@available(iOS 13.0, *)
extension AmplifyPushNotificationsPlugin {
    public func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions?
    ) -> Bool {
        guard let connectionOptions = connectionOptions,
              let notificationResponse = connectionOptions.notificationResponse else {
            return false
        }

        let userInfo = notificationResponse.notification.request.content.userInfo
        if UIApplication.shared.applicationState != .background {
            launchNotification = userInfo as? [AnyHashable: Any]
        }
        return true
    }

    public func sceneDidBecomeActive(_ scene: UIScene) {
        UIApplication.shared.registerForRemoteNotifications()
    }

    public func sceneDidEnterBackground(_ scene: UIScene) {
        launchNotification = nil
        flutterApi.nullifyLaunchNotification { _ in }
    }
}
