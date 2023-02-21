// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications_android


import android.annotation.SuppressLint
import android.app.ActivityManager
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import com.amplifyframework.pushnotifications.pinpoint.utils.PushNotificationsUtils
import com.google.firebase.messaging.RemoteMessage

// TODO: This BroadcastReceiver needs to be replaced by the Firebase Service
class PushNotificationReceiver : BroadcastReceiver() {
    companion object {
        private val TAG = "PushNotificationReceiver"
    }

    @SuppressLint("LongLogTag")
    override fun onReceive(context: Context, intent: Intent?) {
        intent?.let {
            if (isPushNotificationIntent(it)) {
                val remoteMessage = RemoteMessage(it.extras)
                val remoteMessageBundle = getBundleFromRemoteMessage(remoteMessage)
                if (isAppInForeground(context)) {
                    val notificationHashMap = convertBundleToHashMap(remoteMessageBundle)
                    Log.d(TAG, "Send foreground message received event: $notificationHashMap")

                    PushNotificationEventsStreamHandler.sendEvent(
                        PushNotificationsEvent(
                            NativeEvent.FOREGROUND_MESSAGE_RECEIVED,
                            notificationHashMap
                        )
                    )
                } else {
                    Log.d(TAG, "App is in background, start background service and enqueue work")
                    try {

                        val payload = getPayloadFromRemoteMessage(remoteMessage)
                        // TODO: Check how to add a flag to indicate app was opened by a notificaiton
                        PushNotificationsUtils(context).showNotification(
                            payload,
                            AmplifyPushNotificationsAndroidPlugin::class.java
                        )

                        // TODO: Start a background headless service
//                        FlutterMain.startInitialization(context)
//                        FlutterMain.ensureInitializationComplete(context, null)
//                        PushNotificationBackgroundService.enqueueWork(context, it)

                    } catch (exception: Exception) {
                        Log.e(TAG, "Something went wrong while starting headless task $exception")
                    }
                }
            }
        }
    }

    private fun isAppInForeground(context: Context): Boolean {
        // Gets a list of running processes.
        val processes =
            (context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager).runningAppProcesses

        // On some versions of android the first item in the list is what runs in the foreground, but this is not true
        // on all versions. Check the process importance to see if the app is in the foreground.
        val packageName = context.applicationContext.packageName
        for (appProcess in processes) {
            val processName = appProcess.processName
            if (appProcess.importance == ActivityManager.RunningAppProcessInfo.IMPORTANCE_FOREGROUND && processName == packageName) {
                return true
            }
        }
        return false
    }
}
