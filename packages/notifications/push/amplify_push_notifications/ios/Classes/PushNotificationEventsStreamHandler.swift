// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
import Flutter

private let channelNamePrefix = "com.amazonaws.amplify/push_notification/"

enum NativeEvent {
    case tokenReceived
    case notificationOpened
    case launchNotificationOpened
    case foregroundMessageReceived
    case backgroundMessageReceived

    var eventName: String {
        switch self {
        case .tokenReceived:
            return "TOKEN_RECEIVED"
        case .notificationOpened:
            return "NOTIFICATION_OPENED"
        case .launchNotificationOpened:
            return "LAUNCH_NOTIFICATION_OPENED"
        case .foregroundMessageReceived:
            return "FOREGROUND_MESSAGE_RECEIVED"
        case .backgroundMessageReceived:
            return "BACKGROUND_MESSAGE_RECEIVED"
        }
    }

    var eventChannelName: String {
        return "\(channelNamePrefix)event/\(self.eventName)"
    }
}

let eventChannels = [
    NativeEvent.tokenReceived.eventChannelName,
    NativeEvent.notificationOpened.eventChannelName,
    NativeEvent.launchNotificationOpened.eventChannelName,
    NativeEvent.foregroundMessageReceived.eventChannelName,
    NativeEvent.backgroundMessageReceived.eventChannelName
]

enum AmplifyPushNotificationsEvent {
    case payload(payload: [AnyHashable: Any])
    case error(error: FlutterError)
}

class PushNotificationEventsStreamHandler: NSObject, FlutterStreamHandler {
    private let eventChannel: FlutterEventChannel
    private let streamEventType: NativeEvent
    private var eventQueue: [AmplifyPushNotificationsEvent] = []
    private var eventSink: FlutterEventSink?

    init(eventType: NativeEvent, binaryMessenger: FlutterBinaryMessenger) {
        self.streamEventType = eventType
        eventChannel = FlutterEventChannel(name: eventType.eventChannelName, binaryMessenger: binaryMessenger)
        super.init()
        eventChannel.setStreamHandler(self)
    }

    func onListen(
        withArguments arguments: Any?,
        eventSink events: @escaping FlutterEventSink
    ) -> FlutterError? {
        eventSink = events
        flushEvents()
        return nil
    }

    func onCancel(
        withArguments arguments: Any?
    ) -> FlutterError? {
        eventSink = nil
        eventQueue.removeAll()
        return nil
    }

    func sendEvent(payload: [AnyHashable: Any]) {
        if let eventSink = eventSink {
            eventSink(createEventMap(payload: payload))
        } else {
            eventQueue.append(
                AmplifyPushNotificationsEvent.payload(payload: payload)
            )
        }
    }

    func sendError(error: FlutterError) {
        if let eventSink = eventSink {
            eventSink(error)
        } else {
            eventQueue.append(
                AmplifyPushNotificationsEvent.error(error: error)
            )
        }
    }

    private func flushEvents() {
        if let eventSink = eventSink {
            while(!eventQueue.isEmpty) {
                switch eventQueue.removeFirst() {
                case .payload(let payload):
                    eventSink(createEventMap(payload: payload))
                case .error(let error):
                    eventSink(error)
                }
            }
        }
    }

    private func createEventMap(payload: [AnyHashable: Any]) -> [AnyHashable: Any] {
        return [
            "eventType": streamEventType.eventName,
            "payload": payload
        ]
    }
}

struct EventsStreamHandlers {
    static let shared = EventsStreamHandlers()
    static var binaryMessenger: FlutterBinaryMessenger?

    let tokenReceived: PushNotificationEventsStreamHandler
    let notificationOpened: PushNotificationEventsStreamHandler
    let launchNotificationOpened: PushNotificationEventsStreamHandler
    let foregroundMessageReceived: PushNotificationEventsStreamHandler
    let backgroundMessageReceived:PushNotificationEventsStreamHandler

    private init() {
        guard let binaryMessenger = EventsStreamHandlers.binaryMessenger else {
            fatalError("Called EventsStreamHandlers.shared without setting EventsStreamHandlers.binaryMessenger");
        }

        tokenReceived = PushNotificationEventsStreamHandler(
            eventType: .tokenReceived, binaryMessenger: binaryMessenger
        )
        notificationOpened = PushNotificationEventsStreamHandler(
            eventType: .notificationOpened, binaryMessenger: binaryMessenger
        )
        launchNotificationOpened = PushNotificationEventsStreamHandler(
            eventType: .launchNotificationOpened, binaryMessenger: binaryMessenger
        )
        foregroundMessageReceived = PushNotificationEventsStreamHandler(
            eventType: .foregroundMessageReceived, binaryMessenger: binaryMessenger
        )
        backgroundMessageReceived = PushNotificationEventsStreamHandler(
            eventType: .backgroundMessageReceived, binaryMessenger: binaryMessenger
        )
    }
}
