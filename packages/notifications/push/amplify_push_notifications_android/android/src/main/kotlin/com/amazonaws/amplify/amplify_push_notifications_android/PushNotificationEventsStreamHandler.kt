package com.amazonaws.amplify.amplify_push_notifications_android

import io.flutter.Log
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel

//private const val PREFIX = "RTNPushNotification_"
//
//enum class PushNotificationEventType(val prefixedValue: String) {
//    BACKGROUND_MESSAGE_RECEIVED("${PREFIX}BackgroundMessageReceived"),
//    FOREGROUND_MESSAGE_RECEIVED("${PREFIX}ForegroundMessageReceived"),
//    NOTIFICATION_OPENED_APP("${PREFIX}NotificationOpenedApp"),
//    NEW_TOKEN("${PREFIX}NewToken"),
//    REQUEST_PERMISSION_RESULT("${PREFIX}RequestPermissionResult")
//
//}
//
//class PushNotificationEvent(val type: PushNotificationEventType, val params: JSONObject?)
//
//object NativeToDartEventManager {
//
//    private val TAG = NativeToDartEventManager::class.java.simpleName
//    private lateinit var channel: MethodChannel
//    private var isInitialized: Boolean = false
//    private val eventQueue: MutableList<PushNotificationEvent> = mutableListOf()
//
//    fun initializeWithMethodChannel(methodChannel: MethodChannel) {
//        this.channel = methodChannel
//        isInitialized = true
//        flushEventQueue()
//    }
//
//    fun sendEvent(type: PushNotificationEventType, params: JSONObject?) {
//        if (!isInitialized) {
//            eventQueue.add(PushNotificationEvent(type, params))
//        } else {
//            sendDartEvent(type, params)
//        }
//    }
//
//    private fun sendDartEvent(type: PushNotificationEventType, params: JSONObject?) {
//        Log.d(TAG,"Sending event to dart")
//        channel.invokeMethod(type.toString(), params.toString())
//    }
//
//    private fun flushEventQueue() {
//        eventQueue.forEach {
//            sendDartEvent(it.type, it.params)
//        }
//    }
//}

private const val channelNamePrefix = "com.amazonaws.amplify/push_notification"

enum class NativeEvent {
    TOKEN_RECEIVED,
    NOTIFICATION_OPENED,
    LAUNCH_NOTIFICATION_OPENED,
    FOREGROUND_MESSAGE_RECEIVED,
    BACKGROUND_MESSAGE_RECEIVED;

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

val eventChannels = listOf(
    NativeEvent.TOKEN_RECEIVED.eventChannelName,
    NativeEvent.NOTIFICATION_OPENED.eventChannelName,
    NativeEvent.LAUNCH_NOTIFICATION_OPENED.eventChannelName,
    NativeEvent.FOREGROUND_MESSAGE_RECEIVED.eventChannelName,
    NativeEvent.BACKGROUND_MESSAGE_RECEIVED.eventChannelName
)

data class PushNotificationsEvent(
    val event: NativeEvent,
    val payload: HashMap<String, Any?>
) {
    fun toMap(): HashMap<String, Any> {
        return hashMapOf(
            "eventType" to event.eventName,
            "payload" to payload
        )
    }
}

class PushNotificationEventsStreamHandler {
    companion object : EventChannel.StreamHandler {
        private val TAG = "PushNotificationEventsStreamHandler"

        fun initialize(binaryMessenger: BinaryMessenger) {
            eventChannels.forEach { eventChannelName ->
                val eventChannel = EventChannel(
                    binaryMessenger, eventChannelName
                )
                Log.d(TAG, "eventChannel $eventChannelName ")

                eventChannel.setStreamHandler(this)
            }
        }

        override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
            Log.d(TAG, "listening to event channels")
            if (arguments is String) {
                eventSinks[arguments] = events
                flushEvents(eventName = arguments)
            }
        }

        override fun onCancel(arguments: Any?) {
            if (arguments is String) {
                eventSinks[arguments] = null
                eventQueues[arguments]?.clear()
            }

        }

        private val eventQueues = mapOf(
            NativeEvent.TOKEN_RECEIVED.eventName to mutableListOf<PushNotificationsEvent>(),
            NativeEvent.NOTIFICATION_OPENED.eventName to mutableListOf(),
            NativeEvent.FOREGROUND_MESSAGE_RECEIVED.eventName to mutableListOf(),
            NativeEvent.BACKGROUND_MESSAGE_RECEIVED.eventName to mutableListOf(),
            NativeEvent.LAUNCH_NOTIFICATION_OPENED.eventName to mutableListOf()
        )
        private val eventSinks = mutableMapOf<String, EventChannel.EventSink?>()


        fun sendEvent(event: PushNotificationsEvent) {
            eventSinks[event.event.eventName]?.success(event.toMap()) ?: run {
                eventQueues[event.event.eventName]?.add(event)
            }
        }

//    fun sendError(event: NativeEvent, error: FlutterError) {
//        eventSinks[event.eventName]?.error(event.eventName, error.message, error.details)
//    }

        private fun flushEvents(eventName: String) {
            eventSinks[eventName]?.let {
                while (eventQueues[eventName]?.isEmpty() == false) {
                    it.success(eventQueues[eventName]?.removeFirst()?.toMap())
                }
            }
        }
    }
}
