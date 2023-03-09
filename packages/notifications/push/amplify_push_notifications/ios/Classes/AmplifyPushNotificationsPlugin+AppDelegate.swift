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
        // 1. The host App launch is caused by a notification
        if let remoteNotification = launchOptions[UIApplication.LaunchOptionsKey.remoteNotification] as? [AnyHashable: Any] {
            // 2. The host App is launched from terminated state to the foreground
            //    (including transitioning to foregound), i.e. .active .inactive.
            //    This happens under one of below conditions:
            //      a. Remote notifications are not capable to launch the host App (without `content-avaialble: 1`)
            //      b. Remote notifications background mode has not enabled on the host App
            //      c. The end user disabled background refresh of the host App
            // 3. This notification must be tapped by an end user which is recorded as the launch notification
            if application.applicationState != .background {
                launchNotification = remoteNotification

                // NOTE: the notification payload will also be passed into didReceiveRemoteNotification below after
                // this delegate method, didFinishLaunchingWithOptions completes.
                // As this notification is recorded as the luanch notification, it should not be sent via
                // sharedEventsStreamHandlers.notificationOpened, this check is handled in didReceiveRemoteNotification.
            }

            // Otherwise the host App is launched in the background, this notification will be sent to Flutter
            // via flutterApi.onNotificationReceivedInBackground in didReceiveRemoteNotification below.

            // After the host App launched in the background, didFinishLaunchingWithOptions will no longer
            // be fired when an end user taps a notification.

            // After the host App launched in the background, it runs developers' Flutter code as well including
            // Amplify.addPlugin and Amplify.confogure, and the listeners of notification events should be
            // attached. When an end user taps a notification from this point, the tapped notification will be
            // sent via sharedEventsStreamHandlers.notificationOpened in didReceiveRemoteNotification below.
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
                // Wait for Flutter side to complete calling registered callbacks
                // then notifiy the system that the background task is completed
                completionHandler(.noData)
            }
        case .inactive:

            if let launchNotification = launchNotification {
                if !NSDictionary(dictionary: launchNotification).isEqual(to: userInfo) {
                    // When a launch notification is recorded in didFinishLaunchingWithOptions above,
                    // but the last tapped notification is not the recorded launch notification, the last
                    // tapped notification will be sent to Flutter via notificationOpened.
                    // This may happen when an end user rapidly tapped on multiple notifications.
                    self.launchNotification = nil
                    sharedEventsStreamHandlers.notificationOpened.sendEvent(payload: userInfo)
                }
            } else {
                // When there is no launch notification recorded, he last tapped notification
                // will be sent to Flutter via notificationOpened.
                sharedEventsStreamHandlers.notificationOpened.sendEvent(payload: userInfo)
            }

            // Otherwise the last tapped notification is the same as the launch notification,
            // it won't be sent as notificationOpened, but retrievable via getLaunchNotification.
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
