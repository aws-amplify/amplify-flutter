// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Flutter
import UIKit
import UserNotifications

// Under the UIScene life cycle UIKit no longer calls the UI related
// UIApplicationDelegate methods, so the launch options, applicationDidBecomeActive and
// applicationDidEnterBackground handling in +AppDelegate.swift has to happen here too.
// Those methods stay in place for hosts that have not adopted UIScene.
//
// These callbacks are per scene, while launchNotification and the APNs registration are
// per application, hence the connectedScenes checks below.
@available(iOS 13.0, *)
extension AmplifyPushNotificationsPlugin {
    public func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions?
    ) -> Bool {
        // As in didFinishLaunchingWithOptions, a launch into the background is not the
        // launch notification, it goes to onNotificationReceivedInBackground instead.
        if let notificationResponse = connectionOptions?.notificationResponse,
           scene.activationState != .background {
            launchNotification = notificationResponse.notification.request.content.userInfo
        }

        // Only read the options, don't claim the connection: Flutter stops forwarding at
        // the first plugin that returns true, and nils out the options for the rest.
        return false
    }

    public func sceneDidBecomeActive(_ scene: UIScene) {
        // Skip if the App was already active: registering again repeats the APNs round
        // trip and emits another token, or another DeviceTokenError, to Flutter.
        let wasAlreadyActive = UIApplication.shared.connectedScenes.contains {
            $0 !== scene && $0.activationState == .foregroundActive
        }
        guard !wasAlreadyActive else { return }

        UIApplication.shared.registerForRemoteNotifications()
    }

    public func sceneDidEnterBackground(_ scene: UIScene) {
        // Wait for the last foreground scene to leave. Clearing while another scene is
        // still in the foreground would discard a tap it has not read yet.
        let isStillForeground = UIApplication.shared.connectedScenes.contains {
            $0 !== scene
                && ($0.activationState == .foregroundActive
                    || $0.activationState == .foregroundInactive)
        }
        guard !isStillForeground else { return }

        launchNotification = nil
        flutterApi.nullifyLaunchNotification { _ in }
    }
}
