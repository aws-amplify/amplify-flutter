// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Flutter
import amplify_flutter_ios

public class AmplifyPushNotificationsPlugin: NSObject, FlutterPlugin, NativePushNotificationsPlugin {
    var remoteNotificationCompletionHandlers: [String: (UIBackgroundFetchResult) -> Void] = [:]
    // Set to true if the App was awaken in the background by a remote notification from the terminated state
    var awakenInBackgroundAndHasNotLaunched = false

    // The notification that an end user has tapped on and luanch the App from
    //   1. terminated state
    //   2. has been awaken in the background from the terminated state
    // Can be null and set only when 1 or 2 is satisfied
    var launchNotification: [AnyHashable: Any]?

    let sharedEventsStreamHandlers: EventsStreamHandlers

    private init(sharedEventsStreamHandlers: EventsStreamHandlers) {
        self.sharedEventsStreamHandlers = sharedEventsStreamHandlers
    }

    public static func register(with registrar: FlutterPluginRegistrar) {
        let messenger = registrar.messenger()
        let pluginInstance = AmplifyPushNotificationsPlugin(
            sharedEventsStreamHandlers: EventsStreamHandlers(binaryMessenger: messenger)
        )

        NativePushNotificationsPluginSetup(messenger, pluginInstance)

        registrar.addApplicationDelegate(pluginInstance)
    }

    public func getPermissionStatus(completion: @escaping (String?, FlutterError?) -> Void) {
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            var status: String

            switch settings.authorizationStatus {
            case .notDetermined:
                status = "NotDetermined"
            case .denied:
                status = "Denied"
            case .authorized:
                status = "Authorized"
            case .ephemeral:
                status = "Ephemeral"
            case .provisional:
                status = "Provisional"
            @unknown default:
                status = "NotDetermined"
            }

            completion(status, nil)
        }
    }


    public func requestPermissions(withPermissionOptions: PermissionsOptions, completion: @escaping (NSNumber?, FlutterError?) -> Void) {
        var options: UNAuthorizationOptions = []

        if withPermissionOptions.alert.boolValue {
            options.insert(.alert)
        }

        if withPermissionOptions.badge.boolValue {
            options.insert(.badge)
        }

        if withPermissionOptions.sound.boolValue {
            options.insert(.sound)
        }

        UNUserNotificationCenter.current().requestAuthorization(options: options) { granted, error in
            if let error = error {
                completion(
                    nil,
                    FlutterError(
                        code: "RequsetPermissionsError",
                        message: "Error occurred requesting notitication center authorization.",
                        details: error.localizedDescription
                    )
                )
            } else {
                completion(granted as NSNumber, nil)
            }
        }
    }

    public func getLaunchNotificationWithError(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> [AnyHashable : Any]? {
        let launchNotification = self.launchNotification
        self.launchNotification = nil
        return launchNotification
    }


    public func getBadgeCountWithError(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> NSNumber? {
        return UIApplication.shared.applicationIconBadgeNumber as NSNumber
    }

    public func setBadgeCountWithBadgeCount(_ withBadgeCount: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        UIApplication.shared.applicationIconBadgeNumber = withBadgeCount.intValue
    }

    public func completeNotification(withCompletionHandlerId: String, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        if let completionHandler = remoteNotificationCompletionHandlers[withCompletionHandlerId] {
            completionHandler(.noData)
            remoteNotificationCompletionHandlers.removeValue(forKey: withCompletionHandlerId)
        }
    }
}
