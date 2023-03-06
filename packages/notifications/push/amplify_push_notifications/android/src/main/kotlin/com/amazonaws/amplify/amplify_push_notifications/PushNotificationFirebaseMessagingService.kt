// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Intent
import android.os.Handler
import com.amplifyframework.pushnotifications.pinpoint.utils.PushNotificationsUtils
import com.amplifyframework.pushnotifications.pinpoint.utils.processRemoteMessage
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage
import io.flutter.Log
import io.flutter.view.FlutterMain


class PushNotificationFirebaseMessagingService : FirebaseMessagingService() {

    private companion object {
        const val TAG = "PushNotificationFirebaseMessagingService"
    }

    /**
     * Shared utilities from Amplify Android
     */
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
        Log.d(TAG, "Received new token in onNewToken")
        StreamHandlers.initStreamHandlers()
        StreamHandlers.tokenReceived.send(mapOf("token" to token))
    }

    override fun handleIntent(intent: Intent) {
        // If the intent is for a new token, just forward intent to Firebase SDK
        if (intent.action == PushNotificationPluginConstants.ACTION_NEW_TOKEN) {
            super.handleIntent(intent)
            return
        }
        val remoteMessage = RemoteMessage(intent.extras)
        // If we can't handle the message type coming in, just forward the intent to Firebase SDK
        if (!remoteMessage.isSupported) {
            Log.d(TAG, "Message payload is not supported")
            super.handleIntent(intent)
            return
        }
        // Otherwise, try to handle the message
        onMessageReceived(remoteMessage)
    }

    /**
     * Method to handle and forward messages received in foreground & background using isolates and event channels
     */
    override fun onMessageReceived(remoteMessage: RemoteMessage) {
        baseContext?.let {
            Handler(it.mainLooper).post {
                if (utils.isAppInForeground()) {
                    val notificationHashMap = processRemoteMessage(remoteMessage).asChannelMap()
                    StreamHandlers.foregroundMessageReceived.send(notificationHashMap)
                } else {
                    try {
                        val payload = processRemoteMessage(remoteMessage)
                        utils.showNotification(
                            payload, it.getLaunchActivityClass()
                        )

                        Log.i(
                            TAG, "App is in background, start background service and enqueue work"
                        )
                        FlutterMain.startInitialization(it)
                        FlutterMain.ensureInitializationComplete(it, null)
                        PushNotificationBackgroundService.enqueueWork(
                            it,
                            remoteMessage.toIntent()
                        )
                    } catch (exception: Exception) {
                        Log.e(
                            TAG, "Something went wrong while starting background engine $exception"
                        )
                    }
                }
            }
        }
    }
}
