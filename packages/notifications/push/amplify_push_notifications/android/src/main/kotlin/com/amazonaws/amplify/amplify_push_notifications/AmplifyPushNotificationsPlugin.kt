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
import com.amazonaws.amplify.amplify_push_notifications.PushNotificationsHostApiBindings.PushNotificationsFlutterApi
import com.amazonaws.amplify.amplify_push_notifications.PushNotificationsHostApiBindings.PushNotificationsHostApi
import com.amplifyframework.pushnotifications.pinpoint.utils.permissions.PermissionRequestResult
import com.amplifyframework.pushnotifications.pinpoint.utils.permissions.PushNotificationPermission
import com.google.firebase.messaging.FirebaseMessaging
import io.flutter.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry
import kotlinx.coroutines.*


/** AmplifyPushNotificationsPlugin */
open class AmplifyPushNotificationsPlugin : FlutterPlugin, ActivityAware,
    PluginRegistry.NewIntentListener, PushNotificationsHostApi {
    private companion object {
        const val TAG = "AmplifyPushNotificationsPlugin"

        /**
         * The scope in which to spawn tasks which should not be awaited from the main thread.
         */
        val scope =
            CoroutineScope(Dispatchers.IO) + CoroutineName("amplify_flutter.PushNotifications")
    }

    /**
     * The user's main activity.
     */
    private var mainActivity: Activity? = null

    /**
     * The plugin binding for [mainActivity], used to manage lifecycle callback registration.
     */
    private var activityBinding: ActivityPluginBinding? = null

    /**
     * The application context.
     */
    private lateinit var applicationContext: Context

    /**
     * Shared Preference used to persist callback handles.
     */
    private lateinit var sharedPreferences: SharedPreferences


    /**
     * Main engine's binary messenger.
     */
    private var mainBinaryMessenger: BinaryMessenger? = null

    /**
     * Flutter API interface.
     */
    private var flutterApi: PushNotificationsFlutterApi? = null

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        mainBinaryMessenger = flutterPluginBinding.binaryMessenger
        PushNotificationsHostApi.setup(mainBinaryMessenger, this)
        flutterApi = PushNotificationsFlutterApi(mainBinaryMessenger)
        applicationContext = flutterPluginBinding.applicationContext
        sharedPreferences =
            applicationContext.getSharedPreferences(
                PushNotificationPluginConstants.SHARED_PREFERENCES_KEY,
                Context.MODE_PRIVATE
            )
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        flutterApi = null
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        mainActivity = binding.activity
        activityBinding = binding
        mainBinaryMessenger?.let {
            StreamHandlers.initStreamHandlers()
            StreamHandlers.initEventChannels(it)
        }
        binding.addOnNewIntentListener(this)
        onNewIntent(binding.activity.intent)
        refreshToken()
    }

    override fun onDetachedFromActivityForConfigChanges() {
        activityBinding?.removeOnNewIntentListener(this)
        activityBinding = null
        mainActivity = null
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        mainActivity = binding.activity
        activityBinding = binding
        mainBinaryMessenger?.let {
            StreamHandlers.initStreamHandlers()
            StreamHandlers.initEventChannels(it)
        }
        binding.addOnNewIntentListener(this)
    }


    override fun onDetachedFromActivity() {
        activityBinding?.removeOnNewIntentListener(this)
        mainActivity = null
        activityBinding = null
    }

    // TODO(Samaritan1011001): 1. This gets called with intent only when a specific notification is tapped and not when the group is tapped
    //      2. The intent here is the last notification device got rather than the one that was tapped
    override fun onNewIntent(intent: Intent): Boolean {
        intent.extras?.let {
            val payload = it.asPayload()
            if (payload != null) {
                val notificationHashMap = payload.asChannelMap()
                flutterApi?.onLaunchNotificationOpened(
                    notificationHashMap as Map<Any, Any?>
                ) { }
                StreamHandlers.notificationOpened.send(
                    notificationHashMap
                )
            }
        }
        return true
    }


    override fun getPermissionStatus(result: PushNotificationsHostApiBindings.Result<PushNotificationsHostApiBindings.GetPermissionStatusResult>) {
        val resultBuilder = PushNotificationsHostApiBindings.GetPermissionStatusResult.Builder()
        val permission = PushNotificationPermission(applicationContext)
        // If permission has already been granted
        if (permission.hasRequiredPermission) {
            resultBuilder.setStatus(PushNotificationsHostApiBindings.PermissionStatus.GRANTED)
            result.success(resultBuilder.build())
        }
        // If the shouldShowRequestPermissionRationale flag is true, permission must have been
        // denied once (and only once) previously
        if (shouldShowRequestPermissionRationale()) {
            resultBuilder.setStatus(PushNotificationsHostApiBindings.PermissionStatus.SHOULD_REQUEST_WITH_RATIONALE)
            result.success(resultBuilder.build())
        }
        // If the shouldShowRequestPermissionRationale flag is false and the permission was
        // already previously denied then user has denied permissions twice
        if (sharedPreferences.getBoolean(
                PushNotificationPluginConstants.PREF_PREVIOUSLY_DENIED,
                false
            )
        ) {
            resultBuilder.setStatus(PushNotificationsHostApiBindings.PermissionStatus.DENIED)
            result.success(resultBuilder.build())
        }
        // Otherwise it's never been requested (or user could have dismissed the request without
        // explicitly denying)
        resultBuilder.setStatus(PushNotificationsHostApiBindings.PermissionStatus.NOT_REQUESTED)
        result.success(resultBuilder.build())
    }

    override fun requestPermissions(
        withPermissionOptions: PushNotificationsHostApiBindings.PermissionsOptions,
        result: PushNotificationsHostApiBindings.Result<Boolean>
    ) {
        scope.launch {
            val res =
                PushNotificationPermission(applicationContext).requestPermission()

            if (res is PermissionRequestResult.Granted) {
                result.success(true)
            } else {
                // If permission was not granted and the shouldShowRequestPermissionRationale flag
                // is true then user must have denied for the first time. We will set the
                // wasPermissionPreviouslyDenied value to true only in this scenario since it's
                // possible to dismiss the permission request without explicitly denying as well.
                if (shouldShowRequestPermissionRationale()) {
                    with(sharedPreferences.edit()) {
                        putBoolean(
                            PushNotificationPluginConstants.PREF_PREVIOUSLY_DENIED,
                            true
                        )
                        apply()
                    }
                }
                result.success(false)
            }
        }
    }

    override fun getBadgeCount(): Long {
        throw NotImplementedError("Get badge count is not supported on Android")
    }

    override fun registerCallbackFunction(
        callbackHandle: Long,
        callbackType: PushNotificationsHostApiBindings.CallbackType
    ) {
        when(callbackType){
            PushNotificationsHostApiBindings.CallbackType.DISPATCHER -> registerCallbackToCache(
                applicationContext,
                callbackHandle,
                PushNotificationPluginConstants.CALLBACK_DISPATCHER_HANDLE_KEY
            )
            PushNotificationsHostApiBindings.CallbackType.EXTERNAL_FUNCTION -> registerCallbackToCache(
                applicationContext,
                callbackHandle,
                PushNotificationPluginConstants.BG_EXTERNAL_CALLBACK_HANDLE_KEY
            )
        }
    }

    override fun setBadgeCount(withBadgeCount: Long) {
        throw NotImplementedError("Set badge count is not supported on Android")
    }


    private fun registerCallbackToCache(
        context: Context,
        callbackHandle: Long,
        callbackKey: String,
    ) {
            Log.i(TAG, "Registering callback function with key $callbackKey")
            context.getSharedPreferences(
                PushNotificationPluginConstants.SHARED_PREFERENCES_KEY,
                Context.MODE_PRIVATE
            ).edit()
                .putLong(callbackKey, callbackHandle).apply()

    }

    private fun refreshToken() {
        FirebaseMessaging.getInstance().token.addOnCompleteListener { task ->
            if (!task.isSuccessful) {
                task.exception?.let { StreamHandlers.tokenReceived.sendError(it) }
                return@addOnCompleteListener
            }
            Log.i(TAG, task.result)
            StreamHandlers.tokenReceived.send(
                mapOf(
                    "token" to task.result
                )
            )
        }
    }

    private fun shouldShowRequestPermissionRationale(): Boolean {
        return ActivityCompat.shouldShowRequestPermissionRationale(
            mainActivity!!, PushNotificationPluginConstants.PERMISSION
        )
    }
}
