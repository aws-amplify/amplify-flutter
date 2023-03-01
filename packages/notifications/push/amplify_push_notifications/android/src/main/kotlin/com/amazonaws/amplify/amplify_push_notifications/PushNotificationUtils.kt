// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Intent
import android.os.Bundle
import com.amplifyframework.pushnotifications.pinpoint.utils.NotificationPayload
import com.amplifyframework.pushnotifications.pinpoint.utils.PushNotificationsConstants
import com.amplifyframework.pushnotifications.pinpoint.utils.toNotificationsPayload
import com.google.firebase.messaging.RemoteMessage

enum class PushNotificationPermissionStatus {
    notRequested,
    shouldRequestWithRationale,
    granted,
    denied,
}

fun RemoteMessage.asPayload(): NotificationPayload {
    val messageId = this.messageId
    val senderId = this.senderId
    val sendTime = this.sentTime
    val data = this.data
    val body = this.notification?.body
        ?: data[PushNotificationsConstants.MESSAGE_ATTRIBUTE_KEY]
        ?: data[PushNotificationsConstants.PINPOINT_NOTIFICATION_BODY]
    val title = this.notification?.title
        ?: data[PushNotificationsConstants.TITLE_ATTRIBUTE_KEY]
        ?: data[PushNotificationsConstants.PINPOINT_NOTIFICATION_TITLE]
    val imageUrl = this.notification?.imageUrl?.toString()
        ?: data[PushNotificationsConstants.IMAGEURL_ATTRIBUTE_KEY]
        ?: data[PushNotificationsConstants.PINPOINT_NOTIFICATION_IMAGEURL]


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
        silentPush =
            data[PushNotificationsConstants.PINPOINT_NOTIFICATION_SILENTPUSH].equals("1")
        rawData = HashMap(data)
    }
}

fun NotificationPayload.asChannelMap(): Map<String, Any?> {
    return mapOf(
        "title" to this.title,
        "body" to this.body,
        "imageUrl" to this.imageUrl,
        "goToUrl" to this.action[PushNotificationsConstants.PINPOINT_URL],
        "deeplinkUrl" to this.action[PushNotificationsConstants.PINPOINT_DEEPLINK],
        "fcmOptions" to mapOf(
            "senderId" to senderId,
            "messageId" to messageId,
            "sentTime" to sendTime
            // TODO: add channelId if needed
        ),
        "data" to this.rawData
    )
}

fun Intent.isPushNotificationIntent(): Boolean {
    return this.extras?.containsKey("google.message_id") == true
}

