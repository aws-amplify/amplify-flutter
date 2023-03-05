// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.content.Intent
import android.os.Handler
import android.util.Log
import androidx.core.app.JobIntentService
import com.google.firebase.messaging.RemoteMessage
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.view.FlutterCallbackInformation
import io.flutter.view.FlutterMain
import java.util.*
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.collections.ArrayDeque


class PushNotificationBackgroundService : MethodChannel.MethodCallHandler, JobIntentService() {

    /**
     * The work queue
     */
    private val queue = ArrayDeque<List<Any>>()

    /**
     * The Background Channel that is used to send messages to the callback dispatcher
     */
    private lateinit var backgroundChannel: MethodChannel

    private var backgroundFlutterEngine: FlutterEngine? = null

    private val serviceStarted = AtomicBoolean(false)

    companion object {

        private const val TAG = "PushBackgroundService"

        @JvmStatic
        private val JOB_ID = UUID.randomUUID().mostSignificantBits.toInt()

        @JvmStatic
        fun enqueueWork(context: Context, work: Intent) {
            enqueueWork(context, PushNotificationBackgroundService::class.java, JOB_ID, work)
        }
    }

    override fun onCreate() {
        super.onCreate()
        startPushNotificationService(this)
    }

    private fun startPushNotificationService(context: Context) {
        synchronized(serviceStarted) {
            if (backgroundFlutterEngine == null) {

                val callbackHandle = context.getSharedPreferences(
                    PushNotificationPluginConstants.SHARED_PREFERENCES_KEY, Context.MODE_PRIVATE
                ).getLong(
                    PushNotificationPluginConstants.CALLBACK_DISPATCHER_HANDLE_KEY, 0
                )
                if (callbackHandle == 0L) {
                    Log.w(TAG, "Warning: Background service could not start. Callback dispatcher not found.")
                    return
                }
                val callbackInfo =
                    FlutterCallbackInformation.lookupCallbackInformation(callbackHandle)
                if (callbackInfo == null) {
                    Log.e(TAG, "Error: failed to find callback")
                    return
                }
                Log.i(TAG, "Starting PushNotificationBackgroundService")

                // Create a background Flutter Engine
                backgroundFlutterEngine = FlutterEngine(context)

                val args = DartExecutor.DartCallback(
                    context.assets, FlutterMain.findAppBundlePath(), callbackInfo
                )

                // DartCallback must only be executed after the engine has been created
                backgroundFlutterEngine!!.dartExecutor.executeDartCallback(args)
            }
        }
        backgroundChannel = MethodChannel(
            backgroundFlutterEngine!!.dartExecutor.binaryMessenger,
            PushNotificationPluginConstants.BACKGROUND_METHOD_CHANNEL,
        )
        backgroundChannel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "callbackDispatcherInitialized" -> {
                synchronized(serviceStarted) {
                    // If events were added to the queue when the service was initializing, emits those
                    while (!queue.isEmpty()) {
                        backgroundChannel.invokeMethod("", queue.removeFirst()[0])
                    }
                    // The background engine has now started and ready to receive events
                    serviceStarted.set(true)
                }
            }
            else -> result.notImplemented()
        }
        result.success(null)
    }

    override fun onHandleWork(intent: Intent) {
        Log.i(TAG, "Handling work in PushNotificationBackgroundService")

        val remoteMessage = RemoteMessage(intent.extras)
        val notificationPayload = remoteMessage.asPayload().asChannelMap()

        val externalCallbackHandle = baseContext.getSharedPreferences(
            PushNotificationPluginConstants.SHARED_PREFERENCES_KEY, MODE_PRIVATE
        ).getLong(PushNotificationPluginConstants.BG_EXTERNAL_CALLBACK_HANDLE_KEY, 0)

        // Check and assign the handle
        val callbackInfo: Map<String, Any> = if (externalCallbackHandle == 0L) {
            Log.i(TAG, "no external callback registered")
            mapOf(
                "notification" to notificationPayload
            )
        } else {
            mapOf(
                "externalHandle" to externalCallbackHandle, "notification" to notificationPayload
            )
        }

        Log.d(TAG, "callback info: $callbackInfo")
        synchronized(serviceStarted) {
            if (!serviceStarted.get()) {
                // Queue up notification events while background isolate is starting
                queue.add(listOf(callbackInfo))
            } else {
                // Background method channel handle only a single method hence leaving the method name empty.
                Handler(baseContext.mainLooper).post {
                    backgroundChannel.invokeMethod(
                        "", callbackInfo
                    )
                }
            }
        }
    }
}
