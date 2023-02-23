// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.annotation.SuppressLint
import android.content.Context
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
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry

/** AmplifyPushNotificationsPlugin */
class AmplifyPushNotificationsPlugin : FlutterPlugin, MethodCallHandler, ActivityAware,
    PluginRegistry.NewIntentListener {
    private lateinit var context: Context
    private lateinit var methodChannel: MethodChannel

    companion object {
        val CALLBACK_DISPATCHER_HANDLE_KEY = "callback_dispatch_handler"
        val SHARED_PREFERENCES_KEY = "amplify_push_notification_plugin_cache"
        val BG_USER_CALLBACK_HANDLE_KEY = "bg_user_callback_handle"
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
        methodChannel = MethodChannel(
            flutterPluginBinding.binaryMessenger,
            "com.amazonaws.amplify/push_notification/method"
        )
        methodChannel.setMethodCallHandler(this)
        PushNotificationEventsStreamHandler.initialize(flutterPluginBinding.binaryMessenger)
        context = flutterPluginBinding.applicationContext
    }


    private fun sendEvent(event: PushNotificationsEvent){
        PushNotificationEventsStreamHandler.sendEvent(event)
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull _result: Result) {
        val result = AtomicResult(_result, call.method)
        when (call.method) {
            "initializeService" -> {
                val args = call.arguments<ArrayList<*>>()
                // Simply stores the callback handle for the callback dispatcher
                registerCallbackToCache(context, args, CALLBACK_DISPATCHER_HANDLE_KEY)
                result.success(true)
            }
            "registerBGUserGivenCallback" -> {
                val args = call.arguments<ArrayList<*>>()
                registerCallbackToCache(context, args, BG_USER_CALLBACK_HANDLE_KEY)
            }
        }
    }

    private fun registerCallbackToCache(
        context: Context,
        args: ArrayList<*>?,
        callbackKey: String
    ) {
        Log.d(TAG, "Initializing PushNotificationService ${args!![0]}")
        val callbackHandle = args[0] as Long
        context.getSharedPreferences(SHARED_PREFERENCES_KEY, Context.MODE_PRIVATE)
            .edit()
            .putLong(callbackKey, callbackHandle)
            .apply()
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


    override fun onNewIntent(intent: Intent): Boolean {
        Log.d(TAG, "onNewIntent in push plugin $intent")

        // TODO: "Decide if we need to add a flag for notification open"
//        val appOpenedThroughTap = intent.getBooleanExtra("appOpenedThroughTap", false)

        intent.extras?.let{
            val remoteMessage = RemoteMessage(it)
            val remoteMessageBundle = getBundleFromRemoteMessage(remoteMessage)
            val notificationHashMap = convertBundleToHashMap(remoteMessageBundle)
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
        methodChannel.setMethodCallHandler(null)

    }
}
