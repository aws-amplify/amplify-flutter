// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications


import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import com.amplifyframework.pushnotifications.pinpoint.utils.PushNotificationsUtils
import com.google.firebase.messaging.RemoteMessage
import io.flutter.embedding.engine.loader.FlutterLoader

// TODO: This BroadcastReceiver needs to be replaced by the Firebase Service
class PushNotificationReceiver : BroadcastReceiver() {
    companion object {
        private val TAG = "NotificationReceiver"
    }

    override fun onReceive(context: Context, intent: Intent?) {
        intent?.let {
            if (!it.isPushNotificationIntent()) {
                return
            }
            val utils = PushNotificationsUtils(context)
            val remoteMessage = RemoteMessage(it.extras)
            if (utils.isAppInForeground()) {
                val notificationHashMap = remoteMessage.asPayload().asChannelMap()
                Log.d(TAG, "Send foreground message received event: $notificationHashMap")
                StreamHandlers.foregroundMessageReceived.send(notificationHashMap)
            } else {
                Log.d(TAG, "App is in background, start background service and enqueue work")
                try {
                    val payload = remoteMessage.asPayload()
                    // TODO: Check how to add a flag to indicate app was opened by a notificaiton
                    utils.showNotification(
                        payload, AmplifyPushNotificationsPlugin::class.java
                    )
                    val flutterLoader = FlutterLoader()
                    flutterLoader.startInitialization(context)
                    flutterLoader.ensureInitializationComplete(context, null)
                    PushNotificationBackgroundService.enqueueWork(context, it)
                } catch (exception: Exception) {
                    Log.e(TAG, "Something went wrong while starting headless task $exception")
                }
            }
        }
    }
}
