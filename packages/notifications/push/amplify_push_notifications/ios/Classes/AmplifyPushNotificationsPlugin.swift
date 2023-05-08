// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Flutter
import AmplifyUtilsNotifications

public class AmplifyPushNotificationsPlugin: NSObject, FlutterPlugin, PushNotificationsHostApi {
    // The notification that has been tapped by an end user to launch the App from terminated state
    // to the foregound.
    var launchNotification: [AnyHashable: Any]?

    let sharedEventsStreamHandlers: EventsStreamHandlersProtocol
    let flutterApi: PushNotificationsFlutterApi

    init(
        sharedEventsStreamHandlers: EventsStreamHandlersProtocol,
        flutterApi: PushNotificationsFlutterApi
    ) {
        self.sharedEventsStreamHandlers = sharedEventsStreamHandlers
        self.flutterApi = flutterApi
    }

    public static func register(with registrar: FlutterPluginRegistrar) {
        let messenger = registrar.messenger()
        let pluginInstance = AmplifyPushNotificationsPlugin(
            sharedEventsStreamHandlers: EventsStreamHandlers(binaryMessenger: messenger),
            flutterApi: PushNotificationsFlutterApi(binaryMessenger: messenger)
        )

        PushNotificationsHostApiSetup(messenger, pluginInstance)

        registrar.addApplicationDelegate(pluginInstance)
    }

    public func getPermissionStatus(completion: @escaping (GetPermissionStatusResult?, FlutterError?) -> Void) {
        Task {
            switch await AUNotificationPermissions.status {
            case .notDetermined:
                completion(.make(with: .shouldExplainThenRequest), nil)
            case .denied:
                completion(.make(with: .denied), nil)
            case .authorized:
                completion(.make(with: .granted), nil)
            case .ephemeral, .provisional:
                completion(nil, FlutterError(code: "UnsupportedPermissionStatus", message: nil, details: nil))
            @unknown default:
                completion(nil, FlutterError(code: "UnsupportedPermissionStatus", message: nil, details: nil))
            }
        }
    }

    public func requestPermissions(withPermissionOptions: PermissionsOptions, completion: @escaping (NSNumber?, FlutterError?) -> Void) {
        Task {
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

            do {
                let granted = try await AUNotificationPermissions.request(options)
                completion(granted as NSNumber, nil)
            } catch {
                completion(
                    nil,
                    FlutterError(
                        code: "RequestPermissionsError",
                        message: "Error occurred requesting notitication center authorization.",
                        details: error.localizedDescription
                    )
                )
            }
        }
    }

    public func getLaunchNotificationWithError(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> [AnyHashable : Any]? {
        let launchNotification = launchNotification
        self.launchNotification = nil
        return launchNotification
    }

    public func getBadgeCountWithError(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> NSNumber? {
        return UIApplication.shared.applicationIconBadgeNumber as NSNumber
    }

    public func setBadgeCountWithBadgeCount(_ withBadgeCount: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        UIApplication.shared.applicationIconBadgeNumber = withBadgeCount.intValue
    }
    
    public func registerCallbackFunctionCallbackHandle(_ callbackHandle: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        // noop on iOS since this method is used to register callbacks on Android
    }
}
