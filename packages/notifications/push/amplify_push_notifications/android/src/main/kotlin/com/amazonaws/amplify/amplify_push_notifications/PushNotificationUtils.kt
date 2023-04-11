// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.os.Bundle
import android.util.Log
import com.amplifyframework.annotations.InternalAmplifyApi
import com.amplifyframework.notifications.pushnotifications.NotificationContentProvider
import com.amplifyframework.notifications.pushnotifications.NotificationPayload
import com.amplifyframework.pushnotifications.pinpoint.PinpointNotificationPayload
import com.amplifyframework.pushnotifications.pinpoint.PushNotificationsConstants
import com.amplifyframework.pushnotifications.pinpoint.PushNotificationsUtils
import com.google.firebase.messaging.FirebaseMessaging
import com.google.firebase.messaging.RemoteMessage
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import kotlin.random.Random


private const val TAG = "PushNotificationUtils"

@InternalAmplifyApi
class InternalPushNotificationUtils constructor(
    private val context: Context
) {
    private val utils = PushNotificationsUtils(context)

    fun showNotification(
        payload: NotificationPayload
    ) {
        var sourceId: String?
        var activityId: String?

        // Assign campaign attributes
        sourceId = payload.rawData[PushNotificationsConstants.PINPOINT_CAMPAIGN_CAMPAIGN_ID]
        activityId =
            payload.rawData[PushNotificationsConstants.PINPOINT_CAMPAIGN_CAMPAIGN_ACTIVITY_ID]

        // If no campaign id, try to assign journey attributes
        if (sourceId.isNullOrEmpty()) {
            val journeyAttributes =
                payload.rawData[PushNotificationsConstants.PINPOINT_PREFIX]?.let {
                    try {
                        Json.decodeFromString<Map<String, Map<String, String>>>(it)[PushNotificationsConstants.JOURNEY]
                    } catch (e: Exception) {
                        Log.e(TAG, "Error parsing journey attribute", e)
                        null
                    }
                }
            journeyAttributes?.let {
                sourceId = it[PushNotificationsConstants.JOURNEY_ID]
                activityId = it[PushNotificationsConstants.JOURNEY_ACTIVITY_ID]
            }
        }

        // If no activity id (even if campaign was direct send), use a random id, otherwise hash
        // attributes to prevent displaying duplicate notifications from an activity
        val notificationId = activityId?.let {
            "$sourceId:$activityId".hashCode()
        } ?: Random.nextInt()

        PinpointNotificationPayload.fromNotificationPayload(payload)?.let {
            if (utils.areNotificationsEnabled() && !it.silentPush) {
                utils.showNotification(
                    notificationId, it, context.getLaunchActivityClass(),
                )
            }
        }
    }

    fun isAppInForeground(): Boolean {
        return utils.isAppInForeground()
    }
}

@InternalAmplifyApi
fun Context.getLaunchActivityClass(): Class<*>? {
    val packageName = packageName
    val launchIntent = packageManager.getLaunchIntentForPackage(packageName)
    launchIntent?.component?.className?.let {
        try {
            return Class.forName(it)
        } catch (e: Exception) {
            Log.e(
                TAG, "Unable to find launch activity class: $e"
            )
        }
    }
    return null
}

@InternalAmplifyApi
fun refreshToken() {
    FirebaseMessaging.getInstance().token.addOnCompleteListener { task ->
        if (!task.isSuccessful) {
            if (task.exception == null) {
                io.flutter.Log.e(TAG, "UnknownError: fetching device token.")
            } else {
                StreamHandlers.tokenReceived!!.sendError(task.exception!!)
            }
            return@addOnCompleteListener
        }
        StreamHandlers.tokenReceived!!.send(
            mapOf(
                "token" to task.result
            )
        )
        return@addOnCompleteListener
    }
}

@InternalAmplifyApi
fun Bundle.getNotificationPayload(): NotificationPayload? {
    val payload = NotificationPayload(NotificationContentProvider.FCM(RemoteMessage(this).data))
    return PinpointNotificationPayload.fromNotificationPayload(payload)
}

@InternalAmplifyApi
fun NotificationPayload.toWritableMap(): Map<Any, Any?> {
    val payload = PinpointNotificationPayload.fromNotificationPayload(this)
    val data = mutableMapOf<Any, Any?>()
    this.rawData.entries.forEach {
        data.putIfAbsent(it.key, it.value)
    }
    // Build and return final map
    return mapOf(
        "title" to payload?.title,
        "body" to payload?.body,
        "imageUrl" to payload?.imageUrl,
        "action" to mapOf(
            PushNotificationsConstants.OPENAPP to payload?.action?.get(PushNotificationsConstants.OPENAPP),
            PushNotificationsConstants.URL to payload?.action?.get(PushNotificationsConstants.URL),
            PushNotificationsConstants.DEEPLINK to payload?.action?.get(PushNotificationsConstants.DEEPLINK),
        ),
        "data" to data,
        "fcmOptions" to mapOf(
            "channelId" to payload?.channelId,
        ),
    )
}
