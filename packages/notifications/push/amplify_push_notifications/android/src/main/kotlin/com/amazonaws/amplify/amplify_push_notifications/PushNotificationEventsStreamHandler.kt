// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import io.flutter.Log
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.EventSink

private const val TAG = "PushNotificationEventsStreamHandler"

enum class NativeEvent {
    TOKEN_RECEIVED, NOTIFICATION_OPENED, LAUNCH_NOTIFICATION_OPENED, FOREGROUND_MESSAGE_RECEIVED, BACKGROUND_MESSAGE_RECEIVED, ERROR;

    val eventName: String
        get() = when (this) {
            TOKEN_RECEIVED -> "TOKEN_RECEIVED"
            NOTIFICATION_OPENED -> "NOTIFICATION_OPENED"
            LAUNCH_NOTIFICATION_OPENED -> "LAUNCH_NOTIFICATION_OPENED"
            FOREGROUND_MESSAGE_RECEIVED -> "FOREGROUND_MESSAGE_RECEIVED"
            BACKGROUND_MESSAGE_RECEIVED -> "BACKGROUND_MESSAGE_RECEIVED"
            ERROR -> "ERROR"
        }

    val eventChannelName: String
        get() = "${PushNotificationPluginConstants.CHANNEL_NAME_PREFIX}/event/$eventName"
}

data class PushNotificationsEvent(
    val event: NativeEvent, val payload: Map<Any, Any?>
)

class PushNotificationEventsStreamHandler constructor(
    private val associatedNativeEvent: NativeEvent
) : EventChannel.StreamHandler {

    private var eventChannel: EventChannel? = null
    private var eventSink: EventSink? = null

    fun initEventChannel(binaryMessenger: BinaryMessenger) {
        eventChannel = EventChannel(
            binaryMessenger, associatedNativeEvent.eventChannelName
        )
        eventChannel?.setStreamHandler(this)
    }

    fun deInitEventChannel() {
        eventChannel = null
    }

    override fun onListen(arguments: Any?, sink: EventSink?) {
        eventSink = sink
        flushEvents()
    }

    override fun onCancel(arguments: Any?) {
        eventSink = null
        eventQueue.clear()
    }

    private val eventQueue = mutableListOf<PushNotificationsEvent>()

    fun send(payload: Map<Any, Any?>) {
        val event = PushNotificationsEvent(associatedNativeEvent, payload)
        eventSink?.success(payload) ?: run {
            eventQueue.add(event)
        }
    }

    fun sendError(exception: Exception) {
        val exceptionMap = mapOf<Any, Any?>(
            "associatedNativeEventName" to associatedNativeEvent.eventName,
            "message" to exception.message,
            "details" to null
        )
        eventSink?.error(
            exceptionMap["associatedNativeEventName"] as String,
            exceptionMap["message"] as String,
            exceptionMap["details"]
        ) ?: run {
            eventQueue.add(PushNotificationsEvent(NativeEvent.ERROR, exceptionMap))
        }
    }

    private fun flushEvents() {
        try {
            eventSink?.let {
                while (eventQueue.isNotEmpty()) {
                    val eventFromQueue = eventQueue.removeFirst()
                    // Check if it is an Error event and handle accordingly by using .error method
                    if (eventFromQueue.event.eventName == NativeEvent.ERROR.eventName) {
                        val exception = eventFromQueue.payload
                        it.error(
                            exception["associatedNativeEventName"] as String?,
                            exception["message"] as String?,
                            exception["details"] as String?,
                        )
                    } else {
                        it.success(eventFromQueue.payload)
                    }
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "error when flushing event queue: $e")
        }
    }
}

class StreamHandlers {
    companion object {

        var tokenReceived: PushNotificationEventsStreamHandler? = null

        var notificationOpened: PushNotificationEventsStreamHandler? = null

        var foregroundMessageReceived: PushNotificationEventsStreamHandler? = null

        private var isInitStreamHandlers: Boolean = false

        /**
         * Method to initialize only the stream handlers so events can be queued up.
         *
         * Separating the initialization methods allows for stream handler initialization that is useful
         * for queuing work when binary messenger is not ready e.g FirebaseService's onNewToken
         */
        @JvmStatic
        fun initStreamHandlers() {
            // Should only be initialized once
            if (!isInitStreamHandlers) {
                tokenReceived = PushNotificationEventsStreamHandler(
                    NativeEvent.TOKEN_RECEIVED
                )
                notificationOpened = PushNotificationEventsStreamHandler(
                    NativeEvent.NOTIFICATION_OPENED
                )
                foregroundMessageReceived = PushNotificationEventsStreamHandler(
                    NativeEvent.FOREGROUND_MESSAGE_RECEIVED
                )
                isInitStreamHandlers = true
            }
        }

        /**
         * Method to initialize the event channels when the binary messenger is available
         */
        fun initEventChannels(binaryMessenger: BinaryMessenger) {
            if (isInitStreamHandlers) {
                tokenReceived?.initEventChannel(binaryMessenger)
                notificationOpened?.initEventChannel(binaryMessenger)
                foregroundMessageReceived?.initEventChannel(binaryMessenger)
            }
        }

        /**
         * Method to de-initialize the event channels
         */
        fun deInit() {
            if (isInitStreamHandlers) {
                tokenReceived?.deInitEventChannel()
                notificationOpened?.deInitEventChannel()
                foregroundMessageReceived?.deInitEventChannel()
                tokenReceived = null
                notificationOpened = null
                foregroundMessageReceived = null
                isInitStreamHandlers = false
            }
        }
    }
}
