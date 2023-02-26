// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.EventSink

private const val channelNamePrefix = "com.amazonaws.amplify/push_notification"

enum class NativeEvent {
    TOKEN_RECEIVED, NOTIFICATION_OPENED, LAUNCH_NOTIFICATION_OPENED, FOREGROUND_MESSAGE_RECEIVED, BACKGROUND_MESSAGE_RECEIVED;

    val eventName: String
        get() = when (this) {
            TOKEN_RECEIVED -> "TOKEN_RECEIVED"
            NOTIFICATION_OPENED -> "NOTIFICATION_OPENED"
            LAUNCH_NOTIFICATION_OPENED -> "LAUNCH_NOTIFICATION_OPENED"
            FOREGROUND_MESSAGE_RECEIVED -> "FOREGROUND_MESSAGE_RECEIVED"
            BACKGROUND_MESSAGE_RECEIVED -> "BACKGROUND_MESSAGE_RECEIVED"
        }

    val eventChannelName: String
        get() = "$channelNamePrefix/event/$eventName"
}

data class PushNotificationsEvent(
    val event: NativeEvent, val payload: Map<String, Any?>
) {
    fun toMap(): Map<String, Any> {
        return mapOf(
            "eventType" to event.eventName, "payload" to payload
        )
    }
}

class PushNotificationEventsStreamHandler constructor(
    binaryMessenger: BinaryMessenger, associatedNativeEvent: NativeEvent
) : EventChannel.StreamHandler {

    private val eventChannel = EventChannel(
        binaryMessenger, associatedNativeEvent.eventChannelName
    )
    private var eventSink: EventSink? = null
    private val _associatedNativeEvent = associatedNativeEvent

    init {
        eventChannel.setStreamHandler(this)
    }

    override fun onListen(arguments: Any?, sink: EventSink?) {

        eventSink = sink
        flushEvents()

    }

    override fun onCancel(arguments: Any?) {
        if (arguments is String) {
            eventSink = null
            eventQueue.clear()
        }
    }

    private val eventQueue = mutableListOf<PushNotificationsEvent>()

    fun send(payload: Map<String, Any?>) {
        val event = PushNotificationsEvent(_associatedNativeEvent, payload)
        eventSink?.success(event.toMap()) ?: run {
            eventQueue.add(event)
        }
    }

    // TODO: Figure out how to sendError
//    fun sendError(event: NativeEvent, error: FlutterError) {
//        eventSinks[event.eventName]?.error(event.eventName, error.message, error.details)
//    }

    private fun flushEvents() {
        eventSink?.let {
            while (eventQueue.isNotEmpty()) {
                it.success(eventQueue.removeFirst().toMap())
            }
        }
    }
}

class StreamHandlers {
    companion object {
        lateinit var tokenReceivedStreamHandler: PushNotificationEventsStreamHandler
        lateinit var notificationOpenedStreamHandler: PushNotificationEventsStreamHandler
        lateinit var launchNotificationOpenedStreamHandler: PushNotificationEventsStreamHandler
        lateinit var foregroundReceivedStreamHandler: PushNotificationEventsStreamHandler
        lateinit var backgroundReceivedStreamHandler: PushNotificationEventsStreamHandler

        fun initialize(binaryMessenger: BinaryMessenger) {
            tokenReceivedStreamHandler = PushNotificationEventsStreamHandler(
                binaryMessenger,
                NativeEvent.TOKEN_RECEIVED,
            )
            notificationOpenedStreamHandler = PushNotificationEventsStreamHandler(
                binaryMessenger,
                NativeEvent.NOTIFICATION_OPENED,
            )
            launchNotificationOpenedStreamHandler = PushNotificationEventsStreamHandler(
                binaryMessenger,
                NativeEvent.LAUNCH_NOTIFICATION_OPENED,
            )
            foregroundReceivedStreamHandler = PushNotificationEventsStreamHandler(
                binaryMessenger,
                NativeEvent.FOREGROUND_MESSAGE_RECEIVED,
            )
            backgroundReceivedStreamHandler = PushNotificationEventsStreamHandler(
                binaryMessenger,
                NativeEvent.BACKGROUND_MESSAGE_RECEIVED,
            )

        }
    }
}
