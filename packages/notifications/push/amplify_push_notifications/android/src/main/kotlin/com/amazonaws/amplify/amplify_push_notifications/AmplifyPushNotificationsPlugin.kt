// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Intent
import androidx.annotation.NonNull
import com.amazonaws.amplify.AtomicResult
import com.amazonaws.amplify.asMap
import com.google.android.gms.tasks.OnCompleteListener
import com.google.firebase.messaging.FirebaseMessaging
import com.google.firebase.messaging.RemoteMessage
import io.flutter.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry

/** AmplifyPushNotificationsPlugin */
class AmplifyPushNotificationsPlugin : FlutterPlugin, MethodCallHandler, ActivityAware,
    PluginRegistry.NewIntentListener {

    companion object {
        private val TAG = "AmplifyPushNotificationsPlugin"
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        binding.addOnNewIntentListener(this)

        // TODO: also fetchToken on app resume
        refreshToken()

    }

    override fun onDetachedFromActivityForConfigChanges() {
        TODO("Not yet implemented")
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        TODO("Not yet implemented")
    }

    override fun onDetachedFromActivity() {
        TODO("Not yet implemented")
    }

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        PushNotificationEventsStreamHandler.initialize(flutterPluginBinding.binaryMessenger)

    }

    private fun sendEvent(event: PushNotificationsEvent) {
        PushNotificationEventsStreamHandler.sendEvent(event)
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull _result: Result) {
        val result = AtomicResult(_result, call.method)
        when (call.method) {
            // TODO: Add methodcall handling for other things
        }
    }

    private fun refreshToken() {

        // TODO: Add logic to cache token and only send back if it's new
        FirebaseMessaging.getInstance().token.addOnCompleteListener(OnCompleteListener { task ->
            if (!task.isSuccessful) {
                return@OnCompleteListener
            }
            // Get new FCM registration token
            val token = task.result
            val hashMap: HashMap<String, Any?> = HashMap()
            hashMap["token"] = token
            sendEvent(
                PushNotificationsEvent(NativeEvent.TOKEN_RECEIVED, hashMap)
            )
        })

    }


    // TODO: update this function to be more robust
    override fun onNewIntent(intent: Intent): Boolean {
        Log.d(TAG, "onNewIntent in push plugin $intent")

        // TODO: "Decide if we need to add a flag for notification open"
//        val appOpenedThroughTap = intent.getBooleanExtra("appOpenedThroughTap", false)

        intent.extras?.let{
            val remoteMessage = RemoteMessage(it)
            val notificationHashMap = convertBundleToHashMap(remoteMessage.asBundle())

            Log.d(TAG, "Send onNotificationOpened message received event: $notificationHashMap")
            PushNotificationEventsStreamHandler.sendEvent(
                PushNotificationsEvent(
                    NativeEvent.NOTIFICATION_OPENED,
                    notificationHashMap
                )
            )
        }
        return true
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    }
}
