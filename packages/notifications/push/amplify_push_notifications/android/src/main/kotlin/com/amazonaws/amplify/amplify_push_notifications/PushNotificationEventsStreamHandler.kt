// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import io.flutter.Log
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.EventSink


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
    val event: NativeEvent, val payload: Map<String, Any?>
) {
    fun toMap(): Map<String, Any> {
        return mapOf(
            "eventType" to event.eventName, "payload" to payload
        )
    }
}

class PushNotificationEventsStreamHandler constructor(
    associatedNativeEvent: NativeEvent
) : EventChannel.StreamHandler {

    private lateinit var eventChannel: EventChannel
    private val _associatedNativeEvent = associatedNativeEvent
    private var eventSink: EventSink? = null

    private companion object{
        const val TAG = "PushNotificationEventsStreamHandler"
    }

    fun initEventChannel(binaryMessenger: BinaryMessenger) {
        eventChannel = EventChannel(
            binaryMessenger, _associatedNativeEvent.eventChannelName
        )

        eventChannel.setStreamHandler(this)
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

    fun send(payload: Map<String, Any?>) {
        val event = PushNotificationsEvent(_associatedNativeEvent, payload)
        eventSink?.success(event.toMap()) ?: run {
            eventQueue.add(event)
        }
    }

    fun sendError(exception: Exception) {
        val exceptionMap = mapOf(
            "associatedNativeEventName" to _associatedNativeEvent.eventName,
            "message" to exception.message,
            "details" to null
        )
        eventSink?.error(
            exceptionMap["associatedNativeEventName"],
            exceptionMap["message"],
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
                        it.success(eventFromQueue.toMap())
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
        @JvmStatic
        lateinit var tokenReceived: PushNotificationEventsStreamHandler

        @JvmStatic
        lateinit var notificationOpened: PushNotificationEventsStreamHandler

        @JvmStatic
        lateinit var foregroundMessageReceived: PushNotificationEventsStreamHandler

        @JvmStatic
        var isInitStreamHandlers: Boolean = false

        /**
         * Method to initialize only the stream handlers so events can be queued up
         *
         * Separating the initialization methods allows for stream handler initialization useful
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
        @JvmStatic
        fun initEventChannels(binaryMessenger: BinaryMessenger) {
            if (isInitStreamHandlers) {
                tokenReceived.initEventChannel(binaryMessenger)
                notificationOpened.initEventChannel(binaryMessenger)
                foregroundMessageReceived.initEventChannel(binaryMessenger)
            }
        }
    }
}
