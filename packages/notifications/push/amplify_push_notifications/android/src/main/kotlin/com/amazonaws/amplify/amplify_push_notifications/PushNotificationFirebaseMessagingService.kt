// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Intent
import android.os.Bundle
import android.os.Handler
import com.amplifyframework.pushnotifications.pinpoint.utils.PushNotificationsUtils
import com.amplifyframework.pushnotifications.pinpoint.utils.processRemoteMessage
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage
import io.flutter.Log
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.FlutterEngineGroup


private const val TAG = "PushNotificationFirebaseMessagingService"

class PushNotificationFirebaseMessagingService : FirebaseMessagingService() {

    /**
     * Shared utilities from Amplify Android
     */
    private lateinit var utils: PushNotificationsUtils

    /**
     * Flutter Engine group that holds main and background engines
     */
    private lateinit var engineGroup: FlutterEngineGroup

    override fun onCreate() {
        super.onCreate()
        utils = PushNotificationsUtils(baseContext)
        engineGroup = FlutterEngineGroup(baseContext)
    }

    /**
     * Called if the FCM registration token is updated. This may occur if the security of
     * the previous token had been compromised. Note that this is called when the
     * FCM registration token is initially generated so this is where you would retrieve the token.
     */
    override fun onNewToken(token: String) {
        // Should initialize normally as it's initialized for the first time.
        StreamHandlers.initStreamHandlers(false)
        StreamHandlers.tokenReceived!!.send(mapOf("token" to token))
    }

    override fun handleIntent(intent: Intent) {
        // If the intent is for a new token, just forward intent to Firebase SDK
        if (intent.action == PushNotificationPluginConstants.ACTION_NEW_TOKEN) {
            super.handleIntent(intent)
            return
        }
        val extras = intent.extras ?: Bundle()
        // If we can't handle the message type coming in, just forward the intent to Firebase SDK
        if (!extras.isSupported) {
            Log.i(TAG, "Message payload is not supported by Amplify")
            super.handleIntent(intent)
            return
        }
        // Otherwise, try to handle the message
        onMessageReceived(RemoteMessage(intent.extras))
    }

    /**
     * Method to handle and forward messages received in foreground & background using isolates and event channels
     */
    override fun onMessageReceived(remoteMessage: RemoteMessage) {
        Handler(baseContext.mainLooper).post {
            val payload = processRemoteMessage(remoteMessage)
            if (utils.isAppInForeground()) {
                val notificationHashMap = payload.asChannelMap()
                StreamHandlers.foregroundMessageReceived!!.send(notificationHashMap)
            } else {
                try {
                    utils.showNotification(
                        payload, baseContext.getLaunchActivityClass()
                    )
                    Log.i(
                        TAG, "App is in background, start background service and enqueue work"
                    )
                    runAppFromKilledState(remoteMessage)

                } catch (exception: Exception) {
                    Log.e(
                        TAG, "Something went wrong while starting background engine $exception"
                    )
                }
            }
        }
    }

    private fun runAppFromKilledState(remoteMessage: RemoteMessage) {
        // Check if there is already a main Flutter Engine running
        val mainEngine = FlutterEngineCache.getInstance()
            .get(PushNotificationPluginConstants.FLUTTER_ENGINE_ID)
        if (mainEngine == null) {
            PushNotificationBackgroundService.enqueueWork(
                baseContext, remoteMessage.toIntent()
            )
        } else {
            val notificationPayload = processRemoteMessage(remoteMessage).asChannelMap()
            AmplifyPushNotificationsPlugin.flutterApi!!.onNotificationReceivedInBackground(
                notificationPayload
            ) {}
        }
    }
}
