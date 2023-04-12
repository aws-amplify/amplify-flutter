// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Intent
import android.os.Bundle
import android.os.Handler
import com.amplifyframework.annotations.InternalAmplifyApi
import com.amplifyframework.notifications.pushnotifications.NotificationPayload
import com.google.firebase.messaging.FirebaseMessagingService
import io.flutter.Log
import io.flutter.embedding.engine.FlutterEngineCache


private const val TAG = "PushNotificationFirebaseMessagingService"

@InternalAmplifyApi
class PushNotificationFirebaseMessagingService : FirebaseMessagingService() {

    /**
     * Shared utilities from Amplify Android
     */
    private lateinit var utils: InternalPushNotificationUtils


    override fun onCreate() {
        super.onCreate()
        utils = InternalPushNotificationUtils(baseContext)
    }

    /**
     * Called if the FCM registration token is updated. This may occur if the security of
     * the previous token had been compromised. Note that this is called when the
     * FCM registration token is initially generated so this is where you would retrieve the token.
     */
    override fun onNewToken(token: String) {
        super.onNewToken(token)
        Handler(baseContext.mainLooper).post {
            // Should initialize normally as it's initialized for the first time.
            StreamHandlers.initStreamHandlers(false)
            StreamHandlers.tokenReceived!!.send(mapOf("token" to token))
        }
    }

    override fun handleIntent(intent: Intent) {
        // If the intent is for a new token, just forward intent to Firebase SDK
        if (intent.action == PushNotificationPluginConstants.ACTION_NEW_TOKEN) {
            super.handleIntent(intent)
            return
        }
        val extras = intent.extras ?: Bundle()
        extras.getNotificationPayload()?.let {
            // message contains push notification payload, show notification
            // passing both intent and payload to refrain from doing the same conversions downstream
            handleMessageReceived(intent, it)
        } ?: run {
            Log.d(TAG, "Ignore intents that don't contain push notification payload")
            super.handleIntent(intent)
        }
    }

    /**
     * Method to handle and forward messages received in foreground & background using isolates and event channels
     */
    private fun handleMessageReceived(intent: Intent, payload: NotificationPayload) {

        Handler(baseContext.mainLooper).post {
            if (utils.isAppInForeground()) {
                val notificationHashMap = payload.toWritableMap()

                StreamHandlers.foregroundMessageReceived!!.send(notificationHashMap)

            } else {
                try {
                    utils.showNotification(
                        payload
                    )
                    // passing both intent and payload to refrain from doing the same conversions downstream
                    runAppFromKilledState(intent, payload)

                } catch (exception: Exception) {
                    Log.e(
                        TAG, "Something went wrong while starting background engine $exception"
                    )
                }
            }
        }
    }

    private fun runAppFromKilledState(intent: Intent, payload: NotificationPayload) {

        // Check if there is already a main Flutter Engine running
        val mainEngine = FlutterEngineCache.getInstance()
            .get(PushNotificationPluginConstants.FLUTTER_ENGINE_ID)
        if (mainEngine == null) {
            PushNotificationBackgroundService.enqueueWork(
                baseContext, intent
            )
        } else {
            val notificationPayload = payload.toWritableMap()
            AmplifyPushNotificationsPlugin.flutterApi!!.onNotificationReceivedInBackground(
                notificationPayload
            ) {}
        }

    }
}
