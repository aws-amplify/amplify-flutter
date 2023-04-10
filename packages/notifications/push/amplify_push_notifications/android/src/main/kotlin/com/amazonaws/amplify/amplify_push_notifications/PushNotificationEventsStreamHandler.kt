// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import com.amplifyframework.annotations.InternalAmplifyApi
import io.flutter.Log
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.EventSink

private const val TAG = "PushNotificationEventsStreamHandler"

@InternalAmplifyApi
enum class NativeEvent {
    TOKEN_RECEIVED,
    NOTIFICATION_OPENED,
    LAUNCH_NOTIFICATION_OPENED,
    FOREGROUND_MESSAGE_RECEIVED,
    BACKGROUND_MESSAGE_RECEIVED,
    ERROR;

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

@InternalAmplifyApi
data class PushNotificationsEvent(
    val event: NativeEvent, val payload: Map<Any, Any?>, val error: StreamHandlerException?,
)

@InternalAmplifyApi
data class StreamHandlerException(
    val eventName: String,
    val errorMessage: String?,
    val errorDetails: Any?
)

@InternalAmplifyApi
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
        sink?.let {
            eventSink = sink
            flushEvents()
        }
    }

    override fun onCancel(arguments: Any?) {
        eventSink = null
        eventQueue.clear()
    }

    private val eventQueue = mutableListOf<PushNotificationsEvent>()

    fun send(payload: Map<Any, Any?>) {
        val event = PushNotificationsEvent(associatedNativeEvent, payload, null)
        eventSink?.success(payload) ?: run {
            eventQueue.add(event)
        }
    }

    fun sendError(exception: Exception) {
        val sinkError =
            StreamHandlerException(associatedNativeEvent.eventName, exception.message, null)
        eventSink?.error(
            sinkError.eventName,
            sinkError.errorMessage,
            sinkError.errorDetails,
        ) ?: run {
            eventQueue.add(PushNotificationsEvent(NativeEvent.ERROR, mapOf(), sinkError))
        }
    }

    private fun flushEvents() {
        try {
            eventSink?.let {
                while (eventQueue.isNotEmpty()) {
                    val eventFromQueue = eventQueue.removeFirst()
                    // Check if it is an Error event and handle accordingly by using .error method
                    if (eventFromQueue.event.eventName == NativeEvent.ERROR.eventName) {
                        val exception = eventFromQueue.error
                        it.error(
                            exception?.eventName,
                            exception?.errorMessage,
                            exception?.errorDetails,
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

@InternalAmplifyApi
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
        fun initStreamHandlers(refresh: Boolean) {
            // InitStreamHandlers can be called from multiple places but we only need to refresh it
            // when called from onAttachedToEngine. Sometimes, Firebase's onNewToken gets fired before
            // or after onAttachedToEngine. When it happens after, it's important we don't deInit.
            if (refresh) {
                deInit()
            }
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
