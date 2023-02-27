// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Intent
import androidx.annotation.NonNull
import com.amazonaws.amplify.AtomicResult
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

    private var activityBinding: ActivityPluginBinding? = null
    companion object {
        private val TAG = "AmplifyPushNotificationsPlugin"
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activityBinding = binding
        onNewIntent(binding.activity.intent)
        binding.addOnNewIntentListener(this)

        // TODO: also fetchToken on app resume
        refreshToken()

    }

    override fun onDetachedFromActivityForConfigChanges() {
        activityBinding?.removeOnNewIntentListener(this)
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        activityBinding = binding
        binding.addOnNewIntentListener(this)
    }

    override fun onDetachedFromActivity() {
        activityBinding?.removeOnNewIntentListener(this)
        activityBinding = null
    }

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        StreamHandlers.initialize(flutterPluginBinding.binaryMessenger)
    }

//    private fun sendEvent(event: PushNotificationsEvent) {
//        tokenReceivedStreamHandler.sendEvent(event)
//    }

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
            StreamHandlers.tokenReceivedStreamHandler.send(
                hashMap
            )
        })

    }


    // TODO: update this function to be more robust
    override fun onNewIntent(intent: Intent): Boolean {
        Log.d(TAG, "onNewIntent in push plugin $intent")

        // TODO: "Decide if we need to add a flag for notification open"
//        val appOpenedThroughTap = intent.getBooleanExtra("appOpenedThroughTap", false)

        intent.extras?.let {
            val remoteMessage = RemoteMessage(it)
            val notificationHashMap = remoteMessage.asPayload().asChannelMap()

            Log.d(TAG, "Send onNotificationOpened message received event: $notificationHashMap")
//            PushNotificationEventsStreamHandler.sendEvent(
//                PushNotificationsEvent(
//                    NativeEvent.NOTIFICATION_OPENED,
//                    notificationHashMap
//                )
//            )
        }
        return true
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    }
}
