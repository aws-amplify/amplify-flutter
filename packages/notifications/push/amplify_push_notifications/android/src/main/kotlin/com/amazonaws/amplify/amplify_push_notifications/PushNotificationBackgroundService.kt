// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.content.Intent
import android.os.Handler
import android.util.Log
import androidx.core.app.JobIntentService
import com.amplifyframework.annotations.InternalAmplifyApi
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.embedding.engine.loader.FlutterLoader
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.view.FlutterCallbackInformation
import java.util.*
import java.util.concurrent.atomic.AtomicBoolean

private const val TAG = "PushBackgroundService"

//TODO(Samaritan1011001): Replace deprecated JobIntentService
@InternalAmplifyApi
class PushNotificationBackgroundService : JobIntentService(), MethodChannel.MethodCallHandler {

    /**
     * The work queue
     */
    private val queue = ArrayDeque<Intent>()

    /**
     * The Background Flutter engine that initializes the callback dispatcher
     */
    private var backgroundFlutterEngine: FlutterEngine? = null

    /**
     * Indicates starting of the background Flutter engine
     */
    private val serviceStarted = AtomicBoolean(false)

    /**
     * The Background Channel that is used to send messages to the callback dispatcher
     */
    private lateinit var backgroundChannel: MethodChannel

    companion object {
        private val JOB_ID = UUID.randomUUID().mostSignificantBits.toInt()
        fun enqueueWork(context: Context, work: Intent) {
            enqueueWork(context, PushNotificationBackgroundService::class.java, JOB_ID, work)
        }
    }

    override fun onCreate() {
        super.onCreate()
        startPushNotificationService(this)
    }

    private fun startPushNotificationService(context: Context) {
        if (backgroundFlutterEngine != null) {
            return
        }
        try {

            Log.i(TAG, "Starting PushNotificationBackgroundService")

            synchronized(serviceStarted) {
                val mainHandler = Handler(context.mainLooper)
                mainHandler.post {
                    val loader = FlutterLoader()
                    loader.startInitialization(context)
                    loader.ensureInitializationCompleteAsync(
                        context,
                        null,
                        mainHandler,
                    ) {
                        createAndRunBackgroundEngine(context, loader, null)
                    }
                }
            }
        } catch (exception: Exception) {
            Log.e(TAG, "Fatal error retrieving background processor info: $exception")
        }
    }

    fun createAndRunBackgroundEngine(context: Context, loader: FlutterLoader, flutterEngine: FlutterEngine? ){

        // Get the background engine from FlutterEngineCache, returns null if not found
        backgroundFlutterEngine = FlutterEngineCache.getInstance()
            .get(PushNotificationPluginConstants.BACKGROUND_ENGINE_ID)

        // If the Flutter engine is not found in cache, create and put into cache
        if (backgroundFlutterEngine == null) {
            // Create a background Flutter Engine
            backgroundFlutterEngine = flutterEngine ?: FlutterEngine(context)
            // Put it into cache so the next notification coming through in killed state
            // can use the same Flutter engine.
            FlutterEngineCache.getInstance().put(
                PushNotificationPluginConstants.BACKGROUND_ENGINE_ID,
                backgroundFlutterEngine,
            )
        }
        val callbackHandle = context.getSharedPreferences(
            PushNotificationPluginConstants.SHARED_PREFERENCES_KEY,
            Context.MODE_PRIVATE
        ).getLong(
            PushNotificationPluginConstants.BACKGROUND_FUNCTION_KEY, 0
        )
        if (callbackHandle == 0L) {
//            Log.w(
//                TAG,
//                "Warning: Background service could not start. Callback dispatcher not found."
//            )
            return
        }
        val callbackInfo =
            FlutterCallbackInformation.lookupCallbackInformation(callbackHandle)
                ?: throw Exception("Fatal - failed to find callback in Flutter cache")

        backgroundFlutterEngine!!.dartExecutor.executeDartCallback(
            DartExecutor.DartCallback(
                context.assets, loader.findAppBundlePath(), callbackInfo
            ),
        )
        backgroundChannel = MethodChannel(
            backgroundFlutterEngine!!.dartExecutor.binaryMessenger,
            PushNotificationPluginConstants.BACKGROUND_METHOD_CHANNEL,
        )
        backgroundChannel.setMethodCallHandler(this)

    }
    private fun sendToDart(intent: Intent) {
        intent.extras?.let { bundle ->
            bundle.getNotificationPayload()?.let {
                AmplifyPushNotificationsPlugin.flutterApi!!.onNotificationReceivedInBackground(
                    it.toWritableMap()
                ) {}
            }
        }
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "amplifyBackgroundProcessorFinished" -> {
                // The dart side is now ready to receive events
                serviceStarted.set(true)
                // If events were added to the queue when the background processor was initializing, emits those
                while (!queue.isEmpty()) {
                    sendToDart(queue.removeFirst())
                }
            }
            else -> result.notImplemented()
        }
        result.success(null)
    }

    override fun onHandleWork(intent: Intent) {
        Log.i(TAG, "Handling work in PushNotificationBackgroundService")
        synchronized(serviceStarted) {
            if (!serviceStarted.get()) {
                // Queue up notification events while background processor is being executed
                queue.add(intent)
            } else {
                sendToDart(intent)
            }
        }
    }
}
