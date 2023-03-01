// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Flutter

private let completionHandlerIdKey = "completionHandlerId"

extension AmplifyPushNotificationsPlugin {
    public func application(
        _ application: UIApplication,
        didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
    ) {
        let token = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        sharedEventsStreamHandlers.tokenReceived.sendEvent(payload: ["token": token])
    }

    public func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [AnyHashable : Any] = [:]
    ) -> Bool {
        if let remoteNotification = launchOptions[UIApplication.LaunchOptionsKey.remoteNotification] as? [AnyHashable: Any] {
            // If the App is awaken by a remote notification when remote notifications background mode is enabled
            if application.applicationState == .background {
                awakenInBackground = true
            }
            // When the App is launched (from terminated state) by tapping on a notification
            // This happens when remote notifications background mode is NOT enabled
            else {
                launchNotification = remoteNotification
            }
        }

        return true
    }

    public func application(
        _ application: UIApplication,
        didFailToRegisterForRemoteNotificationsWithError error: Error
    ) {
        sharedEventsStreamHandlers.tokenReceived.sendError(
            error: FlutterError(code: "DeviceTokenError", message: error.localizedDescription, details: error)
        )
    }

    public func application(
        _ application: UIApplication,
        didReceiveRemoteNotification userInfo: [AnyHashable : Any],
        fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void
    ) -> Bool {
        switch UIApplication.shared.applicationState {
        case .background:
            let completionHandlerId = UUID().uuidString
            var userInfoCopy = userInfo

            remoteNotificationCompletionHandlers[completionHandlerId] = completionHandler
            userInfoCopy[completionHandlerIdKey] = completionHandlerId

            sharedEventsStreamHandlers.backgroundMessageReceived.sendEvent(payload: userInfoCopy)
        case .inactive:
            // If the App has been awaken in the background by remote notification from terminated state,
            // when the App is entering foreground from background the first time by tapping on a notification,
            // we treat this tapped notification as the launch notitification, this only happens when
            // remote notification background mode is enabled.
            if awakenInBackground {
                awakenInBackground = false
                launchNotification = userInfo
                sharedEventsStreamHandlers.launchNotificationOpened.sendEvent(payload: userInfo)
            } else {
                sharedEventsStreamHandlers.notificationOpened.sendEvent(payload: userInfo)
            }
        case .active:
            sharedEventsStreamHandlers.foregroundMessageReceived.sendEvent(payload: userInfo)
        @unknown default: break // we don't handle any possible new state added in the future for now
        }

        return true
    }

    public func applicationDidBecomeActive(_ application: UIApplication) {
        application.registerForRemoteNotifications()
    }
}
