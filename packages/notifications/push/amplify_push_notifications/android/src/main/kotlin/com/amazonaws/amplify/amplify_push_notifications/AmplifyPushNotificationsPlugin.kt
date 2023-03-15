// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import androidx.core.app.ActivityCompat
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleObserver
import com.amazonaws.amplify.amplify_push_notifications.PushNotificationsHostApiBindings.PushNotificationsFlutterApi
import com.amazonaws.amplify.amplify_push_notifications.PushNotificationsHostApiBindings.PushNotificationsHostApi
import com.amplifyframework.pushnotifications.pinpoint.utils.permissions.PermissionRequestResult
import com.amplifyframework.pushnotifications.pinpoint.utils.permissions.PushNotificationPermission
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.PluginRegistry
import kotlinx.coroutines.*
import io.flutter.embedding.engine.plugins.lifecycle.FlutterLifecycleAdapter

private const val TAG = "AmplifyPushNotificationsPlugin"

/** AmplifyPushNotificationsPlugin */
open class AmplifyPushNotificationsPlugin : FlutterPlugin, ActivityAware,
    PluginRegistry.NewIntentListener, PushNotificationsHostApi {
    companion object {
        /**
         * The scope in which to spawn tasks which should not be awaited from the main thread.
         */
        val scope =
            CoroutineScope(Dispatchers.IO) + CoroutineName("amplify_flutter.PushNotifications")

        /**
         * Flutter API interface.
         */
        var flutterApi: PushNotificationsFlutterApi? = null
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
     * Launch notification has the notification map when app was launched by tapping on the notification
     * when the app is in killed state and null otherwise.
     */
    private var launchNotification: MutableMap<Any, Any?>? = null

    /**
     * Flutter cache that holds the created Flutter Engines.
     */
    private val _flutterEngineCache = FlutterEngineCache.getInstance()

    /**
     * Android app activity Lifecycle provider
     */
    private var _lifecycle: Lifecycle? = null

    /**
     * Plugin's lifecycle observer used to implement onCreate and onResume methods to refresh token
     */
    private val _lifecycleObserver: LifecycleObserver = AmplifyLifecycleObserver()

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        mainBinaryMessenger = flutterPluginBinding.binaryMessenger

        // TODO(Samaritan1011001): replace deprecated flutterPluginBinding.flutterEngine, can possible
        //  just store a flag in shred preference to indicate main engine is already running.
        _flutterEngineCache.put(
            PushNotificationPluginConstants.FLUTTER_ENGINE_ID,
            flutterPluginBinding.flutterEngine
        )
        // Force init stream handlers when the app is opened from killed state so old handlers are removed.
        StreamHandlers.initStreamHandlers(true)
        StreamHandlers.initEventChannels(mainBinaryMessenger!!)
        PushNotificationsHostApi.setup(mainBinaryMessenger, this)
        flutterApi = PushNotificationsFlutterApi(mainBinaryMessenger)
        applicationContext = flutterPluginBinding.applicationContext
        sharedPreferences = applicationContext.getSharedPreferences(
            PushNotificationPluginConstants.SHARED_PREFERENCES_KEY, Context.MODE_PRIVATE
        )
        refreshToken()
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        mainBinaryMessenger = null
        _flutterEngineCache.clear()
        StreamHandlers.deInit()
        PushNotificationsHostApi.setup(binding.binaryMessenger, null)
        flutterApi = null
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        _lifecycle = FlutterLifecycleAdapter.getActivityLifecycle(binding)
        _lifecycle?.addObserver(_lifecycleObserver)
        mainActivity = binding.activity
        activityBinding = binding
        binding.addOnNewIntentListener(this)
        binding.activity.intent.putExtra(
            PushNotificationPluginConstants.IS_LAUNCH_NOTIFICATION, true
        )
        onNewIntent(binding.activity.intent)
    }

    override fun onDetachedFromActivity() {
        _lifecycle?.removeObserver(_lifecycleObserver)
        _lifecycle = null
        mainActivity = null
        activityBinding?.removeOnNewIntentListener(this)
        activityBinding = null
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        onAttachedToActivity(binding)
    }

    override fun onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity()
    }

    // TODO(Samaritan1011001): 1. This gets called with intent only when a specific notification is tapped and not when the group is tapped
    //      2. The intent here is the last notification device got rather than the one that was tapped
    override fun onNewIntent(intent: Intent): Boolean {
        intent.extras?.let {
            val payload = it.asPayload()
            if (payload != null) {
                val notificationHashMap = payload.asChannelMap()
                if (it.containsKey(PushNotificationPluginConstants.IS_LAUNCH_NOTIFICATION) && it.getBoolean(
                        PushNotificationPluginConstants.IS_LAUNCH_NOTIFICATION
                    )
                ) {
                    // Converting to mutable map as pigeon's generated type expects it to be mutable.
                    launchNotification = notificationHashMap.toMutableMap()
                }
                StreamHandlers.notificationOpened?.send(
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
            return
        }
        // If the shouldShowRequestPermissionRationale flag is true, permission must have been
        // denied once (and only once) previously
        if (shouldShowRequestPermissionRationale()) {
            resultBuilder.setStatus(PushNotificationsHostApiBindings.PermissionStatus.SHOULD_EXPLAIN_THEN_REQUEST)
            result.success(resultBuilder.build())
            return
        }
        // If the shouldShowRequestPermissionRationale flag is false and the permission was
        // already previously denied then user has denied permissions twice
        if (sharedPreferences.getBoolean(
                PushNotificationPluginConstants.PREF_PREVIOUSLY_DENIED, false
            )
        ) {
            resultBuilder.setStatus(PushNotificationsHostApiBindings.PermissionStatus.DENIED)
            result.success(resultBuilder.build())
            return
        }
        // Otherwise it's never been requested (or user could have dismissed the request without
        // explicitly denying)
        resultBuilder.setStatus(PushNotificationsHostApiBindings.PermissionStatus.SHOULD_REQUEST)
        result.success(resultBuilder.build())
        return
    }

    override fun requestPermissions(
        withPermissionOptions: PushNotificationsHostApiBindings.PermissionsOptions,
        result: PushNotificationsHostApiBindings.Result<Boolean>
    ) {
        scope.launch {
            val res = PushNotificationPermission(applicationContext).requestPermission()

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
                            PushNotificationPluginConstants.PREF_PREVIOUSLY_DENIED, true
                        )
                        apply()
                    }
                }
                result.success(false)
                return@launch
            }
        }
    }

    override fun getLaunchNotification(): MutableMap<Any, Any?>? {
        val result = launchNotification
        launchNotification = null
        return result
    }

    override fun getBadgeCount(): Long {
        throw NotImplementedError("Get badge count is not supported on Android")
    }

    override fun setBadgeCount(withBadgeCount: Long) {
        throw NotImplementedError("Set badge count is not supported on Android")
    }

    private fun shouldShowRequestPermissionRationale(): Boolean {
        return ActivityCompat.shouldShowRequestPermissionRationale(
            mainActivity!!, PushNotificationPluginConstants.PERMISSION
        )
    }
}
