// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications_android

import android.content.Intent
import android.os.Bundle
import com.amplifyframework.pushnotifications.pinpoint.utils.NotificationPayload
import com.amplifyframework.pushnotifications.pinpoint.utils.PushNotificationsConstants
import com.google.firebase.messaging.RemoteMessage

// TODO: Revisit this file and remove un-used functions

enum class PushNotificationPermissionStatus {
    notRequested,
    shouldRequestWithRationale,
    granted,
    denied,
}

fun getBundleFromRemoteMessage(remoteMessage: RemoteMessage): Bundle {
    val bundle = Bundle()
    bundle.putString("collapseKey", remoteMessage.collapseKey)
    bundle.putString("sender", remoteMessage.from)
    bundle.putString("messageId", remoteMessage.messageId)
    bundle.putString("messageType", remoteMessage.messageType)
    bundle.putLong("sentTime", remoteMessage.sentTime)
    bundle.putString("destination", remoteMessage.to)
    bundle.putInt("ttl", remoteMessage.ttl)
    if (remoteMessage.data.isNotEmpty()) {
        bundle.putBundle("data", getBundleFromData(remoteMessage.data))
    }
    remoteMessage.notification?.let {
        bundle.putBundle("notification", getBundleFromNotification(it))
    }
    return bundle
}

fun isPushNotificationIntent(intent: Intent?): Boolean {
    return intent?.extras?.containsKey("google.message_id") == true
}

private fun getBundleFromData(data: Map<String, String>): Bundle {
    val bundle = Bundle()
    for ((key, value) in data.orEmpty()) {
        bundle.putString(key, value)
    }
    return bundle
}

private fun getBundleFromNotification(notification: RemoteMessage.Notification): Bundle {
    val bundle = Bundle()
    notification.title?.let { bundle.putString("title", it) }
    notification.titleLocalizationKey?.let { bundle.putString("titleLocalizationKey", it) }
    notification.titleLocalizationArgs?.let { bundle.putStringArray("titleLocalizationArgs", it) }
    notification.body?.let { bundle.putString("body", it) }
    notification.bodyLocalizationKey?.let { bundle.putString("bodyLocalizationKey", it) }
    notification.bodyLocalizationArgs?.let { bundle.putStringArray("bodyLocalizationArgs", it) }
    notification.channelId?.let { bundle.putString("channelId", it) }
    notification.clickAction?.let { bundle.putString("clickAction", it) }
    notification.color?.let { bundle.putString("color", it) }
    notification.icon?.let { bundle.putString("icon", it) }
    notification.imageUrl?.let { bundle.putString("imageUrl", it.toString()) }
    notification.link?.let { bundle.putString("link", it.toString()) }
    notification.notificationCount?.let { bundle.putInt("notificationCount", it) }
    notification.notificationPriority?.let { bundle.putInt("notificationPriority", it) }
    notification.sound?.let { bundle.putString("sound", it) }
    notification.ticker?.let { bundle.putString("ticker", it) }
    notification.visibility?.let { bundle.putInt("visibility", it) }
    return bundle
}


fun getPayloadFromRemoteMessage(remoteMessage: RemoteMessage): NotificationPayload {
    val messageId = remoteMessage.messageId
    val senderId = remoteMessage.senderId
    val sendTime = remoteMessage.sentTime
    val data = remoteMessage.data
    val body = remoteMessage.notification?.body
        ?: data[PushNotificationsConstants.MESSAGE_ATTRIBUTE_KEY]
        ?: data[PushNotificationsConstants.PINPOINT_NOTIFICATION_BODY]
    val title = remoteMessage.notification?.title
        ?: data[PushNotificationsConstants.TITLE_ATTRIBUTE_KEY]
        ?: data[PushNotificationsConstants.PINPOINT_NOTIFICATION_TITLE]
    val imageUrl = remoteMessage.notification?.imageUrl?.toString()
        ?: data[PushNotificationsConstants.IMAGEURL_ATTRIBUTE_KEY]
        ?: data[PushNotificationsConstants.PINPOINT_NOTIFICATION_IMAGEURL]
    val action: HashMap<String, String> = HashMap()
    data[PushNotificationsConstants.PINPOINT_OPENAPP]?.let {
        action.put(PushNotificationsConstants.PINPOINT_OPENAPP, it)
    }
    data[PushNotificationsConstants.PINPOINT_URL]?.let {
        // force HTTPS URL scheme
        val urlHttps = it.replaceFirst("http://", "https://")
        action.put(PushNotificationsConstants.PINPOINT_URL, urlHttps)
    }
    data[PushNotificationsConstants.PINPOINT_DEEPLINK]?.let {
        action.put(PushNotificationsConstants.PINPOINT_DEEPLINK, it)
    }

    return NotificationPayload {
        notification(messageId, senderId, sendTime)
        notificationContent(title, body, imageUrl)
        notificationOptions(PushNotificationsConstants.DEFAULT_NOTIFICATION_CHANNEL_ID)
        tapAction(action)
        silentPush = data[PushNotificationsConstants.PINPOINT_NOTIFICATION_SILENTPUSH].equals("1")
        rawData = HashMap(remoteMessage.data)
    }
}


fun convertBundleToHashMap(bundle: Bundle): HashMap<String, Any?> {
    val hashMap = hashMapOf<String, Any?>()
    for (key in bundle.keySet()) {
        val value = bundle.get(key)
        if (value is Bundle) {
            hashMap[key] = convertBundleToHashMap(value)
        } else {
            hashMap[key] = value
        }
    }
    return hashMap
}
