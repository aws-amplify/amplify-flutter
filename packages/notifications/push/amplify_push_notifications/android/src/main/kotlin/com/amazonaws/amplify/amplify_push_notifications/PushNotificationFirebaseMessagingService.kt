// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Intent
import com.amplifyframework.pushnotifications.pinpoint.utils.PushNotificationsUtils
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage
import io.flutter.Log
import io.flutter.view.FlutterMain

private val TAG = PushNotificationFirebaseMessagingService::class.java.simpleName
private const val ACTION_NEW_TOKEN = "com.google.firebase.messaging.NEW_TOKEN"

class PushNotificationFirebaseMessagingService : FirebaseMessagingService() {

    private lateinit var utils: PushNotificationsUtils
    override fun onCreate() {
        super.onCreate()
        utils = PushNotificationsUtils(baseContext)
    }

    /**
     * Called if the FCM registration token is updated. This may occur if the security of
     * the previous token had been compromised. Note that this is called when the
     * FCM registration token is initially generated so this is where you would retrieve the token.
     */
    override fun onNewToken(token: String) {
        StreamHandlers.tokenReceived.send(mapOf("token" to token))
    }

    override fun handleIntent(intent: Intent) {
        // If the intent is for a new token, just forward intent to Firebase SDK
        if (intent.action == ACTION_NEW_TOKEN) {
            Log.d(TAG, "Received new token intent")
            super.handleIntent(intent)
            return
        }
        val remoteMessage = RemoteMessage(intent.extras)
        // If we can't handle the message type coming in, just forward the intent to Firebase SDK
        if (!remoteMessage.isSupported()) {
            Log.i(TAG, "Message payload is not supported")
            super.handleIntent(intent)
            return
        }
        // Otherwise, try to handle the message
        onMessageReceived(remoteMessage)
    }
    override fun onMessageReceived(remoteMessage: RemoteMessage) {
        if (utils.isAppInForeground()) {
            val notificationHashMap = remoteMessage.asPayload().asChannelMap()
            android.util.Log.d(TAG, "Send foreground message received event: $notificationHashMap")
            StreamHandlers.foregroundMessageReceived.send(notificationHashMap)
        } else {
            android.util.Log.d(TAG, "App is in background, start background service and enqueue work")
            try {
                val payload = remoteMessage.asPayload()
                utils.showNotification(
                    payload, baseContext.getLaunchActivityClass()
                )
                FlutterMain.startInitialization(baseContext)
                FlutterMain.ensureInitializationComplete(baseContext, null)
                PushNotificationBackgroundService.enqueueWork(baseContext, remoteMessage.toIntent())
            } catch (exception: Exception) {
                android.util.Log.e(TAG, "Something went wrong while starting headless task $exception")
            }
        }
    }
}
