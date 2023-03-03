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
        didFailToRegisterForRemoteNotificationsWithError error: Error
    ) {
        sharedEventsStreamHandlers.tokenReceived.sendError(
            error: FlutterError(code: "DeviceTokenError", message: error.localizedDescription, details: error)
        )
    }

    public func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [AnyHashable : Any] = [:]
    ) -> Bool {
        // when the App launch is caused by a notification
        if let remoteNotification = launchOptions[UIApplication.LaunchOptionsKey.remoteNotification] as? [AnyHashable: Any] {
            // This happens when:
            //   1. remote notifications background mode is enabled on the host App AND
            //   2. the arrived remote notification has `content-available: 1` AND
            //   3. the host App was at the terminated state when the remote notification arrives
            // In this case we record that the host App was awaken in the background but has not
            // launched from the last time when it was terminated
            if application.applicationState == .background {
                awokeInBackgroundButHasNotLaunched = true
            }
            // This happens when end user tapped on a notification to open the host App and the host App
            // was not capable or not able to wake up in the background
            // We record this notification as the launch notification and send to Flutter
            else {
                flutterApi.onLaunchNotificationOpened(withPayload: remoteNotification) { _ in }
            }
        }

        return true
    }

    // Method is being called differently at different states of App life cycle
    // https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1623013-application#discussion
    // Specifically:
    // 1. .background case triggers when:
    //   a. remote notifications background mode is enabled on the host App AND -
    //   b. remote notifications has `content-avilable: 1` AND -
    //   c. the host App is in the background
    // 2. .inactive case triggers when:
    //   a. end user taps on a notification to open the host App regardless of whether the App was terminated
    //      or was in the background
    // 3. .active case triggers when:
    //   a. a remote notification arrives when the App is in the foreground
    public func application(
        _ application: UIApplication,
        didReceiveRemoteNotification userInfo: [AnyHashable : Any],
        fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void
    ) -> Bool {
        switch UIApplication.shared.applicationState {
        case .background:
            flutterApi.onNotificationReceivedInBackground(withPayload: userInfo) { _ in
                // wait for Flutter side to complete calling registered callbacks
                // then notifiy the system that the background task is completed
                completionHandler(.noData)
            }
        case .inactive:
            // If the App was awaken but has not been launched, we record the tapped notification
            // as the launch notification and send to Flutter
            if awokeInBackgroundButHasNotLaunched {
                awokeInBackgroundButHasNotLaunched = false
                flutterApi.onLaunchNotificationOpened(withPayload: userInfo) { _ in }
            } else {
                sharedEventsStreamHandlers.notificationOpened.sendEvent(payload: userInfo)
            }
            completionHandler(.noData)
        case .active:
            sharedEventsStreamHandlers.foregroundMessageReceived.sendEvent(payload: userInfo)
            completionHandler(.noData)
        @unknown default: break // we don't handle any possible new state added in the future for now
        }

        return true
    }

    public func applicationDidBecomeActive(_ application: UIApplication) {
        application.registerForRemoteNotifications()
    }
}
