// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
package com.amazonaws.amplify.amplify_push_notifications_android

import android.content.Intent
import android.os.Build
import android.os.Bundle
import com.google.firebase.messaging.RemoteMessage
import org.json.JSONException
import org.json.JSONObject


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
    if (intent?.extras?.containsKey("google.message_id") == true) {
        return true
    }
    return false
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

// TODO: Revisit over the JSON functions to update them if needed
fun convertBundleToJson(bundle: Bundle): JSONObject? {
    return try {
        return convertJSONObject(bundle)
    } catch (e: JSONException) {
        null
    }
}

fun convertJSONObject(bundle: Bundle): JSONObject {
    val json = JSONObject()
    val keys = bundle.keySet()
    for (key in keys) {
        val value = bundle[key]
        if (value is Bundle) {
            json.put(key, convertJSONObject(value))
        } else if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
            json.put(key, JSONObject.wrap(value))
        } else {
            json.put(key, value)
        }
    }
    return json
}