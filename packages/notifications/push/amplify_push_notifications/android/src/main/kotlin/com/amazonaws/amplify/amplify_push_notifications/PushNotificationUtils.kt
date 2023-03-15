// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.os.Bundle
import android.util.Log
import com.amplifyframework.pushnotifications.pinpoint.utils.NotificationPayload
import com.amplifyframework.pushnotifications.pinpoint.utils.PushNotificationsConstants
import com.amplifyframework.pushnotifications.pinpoint.utils.toNotificationsPayload
import com.google.firebase.messaging.FirebaseMessaging


private const val TAG = "PushNotificationUtils"

fun NotificationPayload.asChannelMap(): Map<Any, Any?> {
    return mapOf(
        "title" to title,
        "body" to body,
        "imageUrl" to imageUrl,
        "goToUrl" to action[PushNotificationsConstants.PINPOINT_URL],
        "deeplinkUrl" to action[PushNotificationsConstants.PINPOINT_DEEPLINK],
        "fcmOptions" to mapOf(
            "senderId" to senderId,
            "messageId" to messageId,
            "sentTime" to sendTime,
            "channelId" to channelId,
        ),
        "data" to rawData
    )
}

// Check whether the Bundle contains the custom payload key used to identify it's coming from the
// shared android utils package and convert to NotificationsPayload
fun Bundle.asPayload(): NotificationPayload? {
    return getBundle(PushNotificationPluginConstants.PAYLOAD_KEY)?.toNotificationsPayload()
}

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

// Check if the notification's data payload is supported by us
val Bundle.isSupported: Boolean
    get() = keySet().any { it.contains(PushNotificationsConstants.PINPOINT_PREFIX) }

fun refreshToken() {
    FirebaseMessaging.getInstance().token.addOnCompleteListener { task ->
        if (!task.isSuccessful) {
            if (task.exception == null) {
                io.flutter.Log.e(TAG, "UnknownError: fetching device token.")
            } else {
                StreamHandlers.tokenReceived?.sendError(task.exception!!)
            }
            return@addOnCompleteListener
        }
        StreamHandlers.tokenReceived?.send(
            mapOf(
                "token" to task.result
            )
        )
        return@addOnCompleteListener
    }
}