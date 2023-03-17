// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.content.Intent
import android.os.Handler
import android.util.Log
import androidx.core.app.JobIntentService
import com.amplifyframework.pushnotifications.pinpoint.utils.processRemoteMessage
import com.google.firebase.messaging.RemoteMessage
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.embedding.engine.loader.FlutterLoader
import io.flutter.view.FlutterCallbackInformation
import java.util.*

private const val TAG = "PushBackgroundService"

class PushNotificationBackgroundService : JobIntentService() {

    /**
     * The Background Flutter engine that initializes the callback dispatcher
     */
    private var backgroundFlutterEngine: FlutterEngine? = null

    companion object {
        private val JOB_ID = UUID.randomUUID().mostSignificantBits.toInt()
        fun enqueueWork(context: Context, work: Intent) {
            enqueueWork(context, PushNotificationBackgroundService::class.java, JOB_ID, work)
        }
    }

    private fun startAndHandlePushNotificationService(context: Context, intent: Intent) {
        if (backgroundFlutterEngine != null) {
            return
        }
        val callbackHandle = context.getSharedPreferences(
            PushNotificationPluginConstants.SHARED_PREFERENCES_KEY, Context.MODE_PRIVATE
        ).getLong(
            PushNotificationPluginConstants.BACKGROUND_FUNCTION_KEY, 0
        )
        if (callbackHandle == 0L) {
            Log.w(
                TAG,
                "Warning: Background service could not start. Callback dispatcher not found."
            )
            return
        }
        val callbackInfo = FlutterCallbackInformation.lookupCallbackInformation(callbackHandle)
        if (callbackInfo == null) {
            Log.e(TAG, "Error: failed to find callback")
            return
        }
        Log.i(TAG, "Starting PushNotificationBackgroundService")

        val mainHandler = Handler(context.mainLooper)
        mainHandler.post {
            val loader = FlutterLoader()
            loader.startInitialization(context);
            loader.ensureInitializationCompleteAsync(
                context,
                null,
                mainHandler,
            ) {
                // Create a background Flutter Engine
                backgroundFlutterEngine = FlutterEngine(context)
                backgroundFlutterEngine!!.dartExecutor.executeDartCallback(
                    DartExecutor.DartCallback(
                        context.assets, loader.findAppBundlePath(), callbackInfo
                    ),
                )
                val remoteMessage = RemoteMessage(intent.extras)
                val notificationPayload = processRemoteMessage(remoteMessage).asChannelMap()

                // Directly sending the event since we have a queue for this on the dart side
                AmplifyPushNotificationsPlugin.flutterApi?.onNotificationReceivedInBackground(
                    notificationPayload
                ) {}
            }
        }
    }

    override fun onHandleWork(intent: Intent) {
        Log.i(TAG, "Handling work in PushNotificationBackgroundService")
        startAndHandlePushNotificationService(this, intent)
    }
}
