package com.amazonaws.amplify.amplify_push_notifications_android

import io.flutter.plugin.common.MethodChannel
import org.json.JSONObject
import android.util.Log

private const val PREFIX = "RTNPushNotification_"

enum class PushNotificationEventType(val prefixedValue: String) {
    BACKGROUND_MESSAGE_RECEIVED("${PREFIX}BackgroundMessageReceived"),
    FOREGROUND_MESSAGE_RECEIVED("${PREFIX}ForegroundMessageReceived"),
    NOTIFICATION_OPENED_APP("${PREFIX}NotificationOpenedApp"),
    NEW_TOKEN("${PREFIX}NewToken"),
    REQUEST_PERMISSION_RESULT("${PREFIX}RequestPermissionResult")

}

class PushNotificationEvent(val type: PushNotificationEventType, val params: JSONObject?)

object NativeToDartEventManager {

    private val TAG = NativeToDartEventManager::class.java.simpleName
    private lateinit var channel: MethodChannel
    private var isInitialized: Boolean = false
    private val eventQueue: MutableList<PushNotificationEvent> = mutableListOf()

    fun initializeWithMethodChannel(methodChannel: MethodChannel) {
        this.channel = methodChannel
        isInitialized = true
        flushEventQueue()
    }

    fun sendEvent(type: PushNotificationEventType, params: JSONObject?) {
        if (!isInitialized) {
            eventQueue.add(PushNotificationEvent(type, params))
        } else {
            sendDartEvent(type, params)
        }
    }

    private fun sendDartEvent(type: PushNotificationEventType, params: JSONObject?) {
        Log.d(TAG,"Sending event to dart")
        channel.invokeMethod(type.toString(), params.toString())
    }

    private fun flushEventQueue() {
        eventQueue.forEach {
            sendDartEvent(it.type, it.params)
        }
    }
}