// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import androidx.annotation.NonNull
import androidx.core.app.ActivityCompat
import com.amazonaws.amplify.AtomicResult
import com.amplifyframework.pushnotifications.pinpoint.utils.permissions.PermissionRequestResult
import com.amplifyframework.pushnotifications.pinpoint.utils.permissions.PushNotificationPermission
import com.amazonaws.amplify.asMap
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
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

private const val TAG = "AmplifyPushNotificationsAndroidPlugin"
const val SHARED_PREFERENCES_KEY = "amplify_push_notification_plugin_cache"
const val PREF_PREVIOUSLY_DENIED = "wasPermissionPreviouslyDenied"
private const val PERMISSION = "android.permission.POST_NOTIFICATIONS"
const val METHOD_CHANNEL = "com.amazonaws.amplify/push_notification/method"

/** AmplifyPushNotificationsPlugin */
class AmplifyPushNotificationsPlugin : FlutterPlugin, MethodCallHandler, ActivityAware,
    PluginRegistry.NewIntentListener {
    private val scope: CoroutineScope = CoroutineScope(Dispatchers.Main)
    private lateinit var context: Context
    private var mainActivity: Activity? = null
    private lateinit var sharedPreferences: SharedPreferences
    private lateinit var channel: MethodChannel


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
        this.mainActivity = binding.activity


    }

    override fun onDetachedFromActivityForConfigChanges() {
        activityBinding?.removeOnNewIntentListener(this)
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        activityBinding = binding
        binding.addOnNewIntentListener(this)
    }

    override fun onDetachedFromActivity() {
//        TODO("Not yet implemented")
        this.mainActivity = null
        activityBinding?.removeOnNewIntentListener(this)
        activityBinding = null
    }

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        StreamHandlers.initialize(flutterPluginBinding.binaryMessenger)

        context = flutterPluginBinding.applicationContext
        sharedPreferences =
            context.getSharedPreferences(SHARED_PREFERENCES_KEY, Context.MODE_PRIVATE)
        channel = MethodChannel(
            flutterPluginBinding.binaryMessenger,
            METHOD_CHANNEL
        )
        channel.setMethodCallHandler(this)
    }


//    private fun sendEvent(event: PushNotificationsEvent) {
//        tokenReceivedStreamHandler.sendEvent(event)
//    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull _result: Result) {
        val result = AtomicResult(_result, call.method)
        when (call.method) {
            // TODO: Add methodcall handling for other things
            "getPermissionStatus" -> {
                Log.d(TAG, "getting permission status")
                val permission = PushNotificationPermission(context)
                // If permission has already been granted
                if (permission.hasRequiredPermission) {
                    return result.success(PushNotificationPermissionStatus.granted.name)
                }
                // If the shouldShowRequestPermissionRationale flag is true, permission must have been
                // denied once (and only once) previously
                if (shouldShowRequestPermissionRationale()
                ) {
                    return result.success(PushNotificationPermissionStatus.shouldRequestWithRationale.name)
                }
                // If the shouldShowRequestPermissionRationale flag is false and the permission was
                // already previously denied then user has denied permissions twice
                if (sharedPreferences.getBoolean(PREF_PREVIOUSLY_DENIED, false)) {
                    return result.success(PushNotificationPermissionStatus.denied.name)
                }
                // Otherwise it's never been requested (or user could have dismissed the request without
                // explicitly denying)
                result.success(PushNotificationPermissionStatus.notRequested.name)
            }
            "requestPermissions" -> {
                scope.launch {
                    val res = PushNotificationPermission(context).requestPermission()

                    if (res is PermissionRequestResult.Granted) {
                        result.success(true)
                    } else {
                        // If permission was not granted and the shouldShowRequestPermissionRationale flag
                        // is true then user must have denied for the first time. We will set the
                        // wasPermissionPreviouslyDenied value to true only in this scenario since it's
                        // possible to dismiss the permission request without explicitly denying as well.
                        if (shouldShowRequestPermissionRationale()) {
                            with(sharedPreferences.edit()) {
                                putBoolean(PREF_PREVIOUSLY_DENIED, true)
                                apply()
                            }
                        }
                        result.success(false)
                    }
                }
            }
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
        channel.setMethodCallHandler(null)
    }

    private fun shouldShowRequestPermissionRationale(): Boolean {
        return ActivityCompat.shouldShowRequestPermissionRationale(
            mainActivity!!,
            PERMISSION
        )
    }
}
