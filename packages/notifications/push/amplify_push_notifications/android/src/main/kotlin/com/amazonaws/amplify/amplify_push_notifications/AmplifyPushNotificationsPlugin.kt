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
import com.amplifyframework.annotations.InternalAmplifyApi
import com.amplifyframework.notifications.pushnotifications.NotificationPayload
import com.amplifyframework.pushnotifications.pinpoint.permissions.PermissionRequestResult
import com.amplifyframework.pushnotifications.pinpoint.permissions.PushNotificationPermission
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.embedding.engine.plugins.lifecycle.FlutterLifecycleAdapter
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.PluginRegistry
import kotlinx.coroutines.*

private const val TAG = "AmplifyPushNotificationsPlugin"

/** AmplifyPushNotificationsPlugin */
@InternalAmplifyApi
class AmplifyPushNotificationsPlugin(
    dispatcher: CoroutineDispatcher = Dispatchers.Main
) : FlutterPlugin, ActivityAware,
    PluginRegistry.NewIntentListener, PushNotificationsHostApi {
    companion object {
        /**
         * Flutter API interface.
         */
        var flutterApi: PushNotificationsFlutterApi? = null

        /**
         * Map of notification data when app was launched by tapping on the notification 
         * when the app is in a killed state, null otherwise. 
         */
        var launchNotification: MutableMap<Any, Any?>? = null
    }

    /**
     * The scope in which to spawn tasks which should not be awaited from the main thread.
     */
    private val scope =
        CoroutineScope(dispatcher) + CoroutineName("amplify_flutter.PushNotifications")
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

        // TODO(Samaritan1011001): replace deprecated flutterPluginBinding.flutterEngine, is possible to
        //  just store a flag in shred preference to indicate main engine is already running.
        _flutterEngineCache.put(
            PushNotificationPluginConstants.FLUTTER_ENGINE_ID, flutterPluginBinding.flutterEngine
        )
        // Force init stream handlers when the app is opened from killed state so old handlers are removed.
        StreamHandlers.initStreamHandlers(true)
        StreamHandlers.initEventChannels(mainBinaryMessenger!!)
        PushNotificationsHostApi.setup(mainBinaryMessenger!!, this)
        flutterApi = PushNotificationsFlutterApi(mainBinaryMessenger!!)
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

        // Check for supported intent and not add the flag for other intents such as app opening via icon tap
        val payload = NotificationPayload.fromIntent(binding.activity.intent)
        if (payload != null) {
            binding.activity.intent.extras?.let {
                binding.activity.intent.putExtra(
                    PushNotificationPluginConstants.IS_LAUNCH_NOTIFICATION, true
                )
                onNewIntent(binding.activity.intent)
            }
        }
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

    override fun onNewIntent(intent: Intent): Boolean {
        val payload = NotificationPayload.fromIntent(intent)
        if (payload != null) {
            val notificationHashMap = payload.toWritableMap()
            intent.extras?.let {
                if (it.containsKey(PushNotificationPluginConstants.IS_LAUNCH_NOTIFICATION) && it.getBoolean(
                        PushNotificationPluginConstants.IS_LAUNCH_NOTIFICATION
                    )
                ) {
                    // Converting to mutable map as pigeon's generated type expects it to be mutable.
                    AmplifyPushNotificationsPlugin.launchNotification = notificationHashMap.toMutableMap()
                }
            }
            StreamHandlers.notificationOpened!!.send(
                notificationHashMap
            )
        }
        return true
    }

    override fun registerCallbackFunction(
        callbackHandle: Long,
    ) {
        sharedPreferences.edit()
            .putLong(PushNotificationPluginConstants.BACKGROUND_FUNCTION_KEY, callbackHandle)
            .apply()
        return
    }

    override fun requestInitialToken() {
        refreshToken()
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
            } else if (res is PermissionRequestResult.NotGranted){
                // If permission was not granted and the shouldShowRequestPermissionRationale flag
                // is true then user must have denied for the first time. We will set the
                // wasPermissionPreviouslyDenied value to true only in this scenario since it's
                // possible to dismiss the permission request without explicitly denying as well.
                if (res.shouldShowRationale) {
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
        val result = AmplifyPushNotificationsPlugin.launchNotification
        AmplifyPushNotificationsPlugin.launchNotification = null
        return result
    }

    override fun getBadgeCount(): Long {
        // noop - not supported on Android so return 0 always.
        return 0
    }

    override fun setBadgeCount(withBadgeCount: Long) {
        // noop - not supported in Android.
    }

    private fun shouldShowRequestPermissionRationale(): Boolean {
        return ActivityCompat.shouldShowRequestPermissionRationale(
            mainActivity!!, PushNotificationPluginConstants.PERMISSION
        )
    }
}
