// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import io.flutter.Log
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.EventSink

private const val channelNamePrefix = "com.amazonaws.amplify/push_notification"

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
    private val _associatedNativeEvent = associatedNativeEvent
    private var eventSink: EventSink?
    init {
        eventChannel.setStreamHandler(this)
        eventSink = null
    }

    override fun onListen(arguments: Any?, sink: EventSink?) {
        Log.d("test", "onListen: $sink")
        eventSink = sink
        flushEvents()
    }

    override fun onCancel(arguments: Any?) {
        Log.d("test", "onCancel:")

        eventSink = null
        eventQueue.clear()
    }

    private val eventQueue = mutableListOf<PushNotificationsEvent>()

    fun send(payload: Map<String, Any?>) {
        val event = PushNotificationsEvent(_associatedNativeEvent, payload)
        Log.d("test", "eventSink: $eventSink")
        eventSink?.success(event.toMap()) ?: run {
            eventQueue.add(event)
            Log.d("test", "eventQueue: ${eventQueue.count()}")

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
        Log.d("test", "Queue count: ${eventQueue.count()} when flushing with sink: $eventSink")
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
                        Log.d("test", "Successful flushing")
                        it.success(eventFromQueue.toMap())
                    }
                }
            }
        }catch (e: Exception){
            Log.d("error when flushing: ", e.toString())
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
        lateinit var launchNotificationOpened: PushNotificationEventsStreamHandler
        @JvmStatic
        lateinit var foregroundMessageReceived: PushNotificationEventsStreamHandler
        @JvmStatic
        lateinit var backgroundMessageReceived: PushNotificationEventsStreamHandler

        @JvmStatic
        private var isInit: Boolean = false

        @JvmStatic
        fun initialize(binaryMessenger: BinaryMessenger) {
            if(!isInit){
                tokenReceived = PushNotificationEventsStreamHandler(
                    binaryMessenger,
                    NativeEvent.TOKEN_RECEIVED
                )
                notificationOpened = PushNotificationEventsStreamHandler(
                    binaryMessenger,
                    NativeEvent.NOTIFICATION_OPENED
                )
                launchNotificationOpened = PushNotificationEventsStreamHandler(
                    binaryMessenger,
                    NativeEvent.LAUNCH_NOTIFICATION_OPENED
                )
                foregroundMessageReceived = PushNotificationEventsStreamHandler(
                    binaryMessenger,
                    NativeEvent.FOREGROUND_MESSAGE_RECEIVED
                )
                backgroundMessageReceived = PushNotificationEventsStreamHandler(
                    binaryMessenger,
                    NativeEvent.BACKGROUND_MESSAGE_RECEIVED
                )

                Log.d("test", "tokenReceived code when initializing: ${tokenReceived.hashCode()}")
                isInit = true
            }

        }
    }
}
