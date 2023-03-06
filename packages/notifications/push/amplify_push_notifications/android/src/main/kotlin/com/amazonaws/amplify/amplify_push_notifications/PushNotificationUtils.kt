// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.util.Log
import com.amplifyframework.pushnotifications.pinpoint.utils.NotificationPayload
import com.amplifyframework.pushnotifications.pinpoint.utils.PushNotificationsConstants
import com.amplifyframework.pushnotifications.pinpoint.utils.toNotificationsPayload
import com.google.firebase.messaging.RemoteMessage


private const val TAG = "PushNotificationUtils"

enum class PushNotificationPermissionStatus {
    notRequested, shouldRequestWithRationale, granted, denied,
}

fun RemoteMessage.asPayload(): NotificationPayload {
    val messageId = messageId
    val senderId = senderId
    val sendTime = sentTime
    val data = data
    val body = notification?.body ?: data[PushNotificationsConstants.MESSAGE_ATTRIBUTE_KEY]
    ?: data[PushNotificationsConstants.PINPOINT_NOTIFICATION_BODY]
    val title = notification?.title ?: data[PushNotificationsConstants.TITLE_ATTRIBUTE_KEY]
    ?: data[PushNotificationsConstants.PINPOINT_NOTIFICATION_TITLE]
    val imageUrl = notification?.imageUrl?.toString() ?: data[PushNotificationsConstants.IMAGEURL_ATTRIBUTE_KEY] ?: data[PushNotificationsConstants.PINPOINT_NOTIFICATION_IMAGEURL]
    val action: HashMap<String, String> = HashMap()
    data[PushNotificationsConstants.PINPOINT_OPENAPP]?.let {
        action.put(PushNotificationsConstants.PINPOINT_OPENAPP, it)
    }
    data[PushNotificationsConstants.PINPOINT_URL]?.let {
        // force HTTPS URL scheme
        val urlHttps = it.replaceFirst("http://", "https://")
        action[PushNotificationsConstants.PINPOINT_URL] = urlHttps
    }
    data[PushNotificationsConstants.PINPOINT_DEEPLINK]?.let {
        action[PushNotificationsConstants.PINPOINT_DEEPLINK] = it
    }

    return NotificationPayload {
        notification(messageId, senderId, sendTime)
        notificationContent(title, body, imageUrl)
        notificationOptions(PushNotificationsConstants.DEFAULT_NOTIFICATION_CHANNEL_ID)
        tapAction(action)
        silentPush = data[PushNotificationsConstants.PINPOINT_NOTIFICATION_SILENTPUSH].equals("1")
        rawData = HashMap(data)
    }
}

fun NotificationPayload.asChannelMap(): Map<String, Any?> {
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
        "data" to this.rawData
    )
}


fun Bundle.asPayload(): NotificationPayload? {
    return this.getBundle(PushNotificationPluginConstants.PAYLOAD_KEY)?.toNotificationsPayload()
}

fun Context.getLaunchActivityClass(): Class<*>? {
    val packageName = this.packageName
    val launchIntent = this.packageManager.getLaunchIntentForPackage(packageName)
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

// TODO(Samaritan1011001): update the check to use PINPOINT_PREFIX
val RemoteMessage.isSupported: Boolean
    get() = !this.data[PushNotificationsConstants.PINPOINT_CAMPAIGN_CAMPAIGN_ID].isNullOrEmpty() or !this.data[PushNotificationsConstants.JOURNEY_ID].isNullOrEmpty()

