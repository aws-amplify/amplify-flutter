// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.content.Intent
import android.os.Handler
import android.util.Log
import androidx.work.Data
import androidx.work.OneTimeWorkRequestBuilder
import androidx.work.WorkManager
import androidx.work.Worker
import androidx.work.WorkerParameters
import com.amplifyframework.annotations.InternalAmplifyApi
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.embedding.engine.loader.FlutterLoader
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.view.FlutterCallbackInformation
import java.util.*
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean

private const val TAG = "PushBackgroundService"

/**
 * Processes push notifications in the background via WorkManager.
 *
 * Spins up a background Flutter engine, executes the registered Dart callback
 * dispatcher, and forwards the notification payload to Dart.
 */
@InternalAmplifyApi
class PushNotificationBackgroundWorker(
    context: Context,
    params: WorkerParameters
) : Worker(context, params), MethodChannel.MethodCallHandler {

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
     * Latch to wait for the Dart callback dispatcher to signal readiness.
     */
    private val dartReadyLatch = CountDownLatch(1)

    private lateinit var backgroundChannel: MethodChannel

    override fun doWork(): Result {
        val payload = inputData.keyValueMap
        if (payload.isEmpty()) return Result.success()

        Log.i(TAG, "Handling work in PushNotificationBackgroundWorker")

        val intent = Intent().apply {
            for ((key, value) in payload) {
                when (value) {
                    is String -> putExtra(key, value)
                    is Int -> putExtra(key, value)
                    is Long -> putExtra(key, value)
                    is Boolean -> putExtra(key, value)
                    else -> if (value != null) putExtra(key, value.toString())
                }
            }
        }

        startPushNotificationService(applicationContext)

        if (!dartReadyLatch.await(30, TimeUnit.SECONDS)) {
            Log.w(TAG, "Timed out waiting for Dart callback dispatcher")
            return Result.retry()
        }

        synchronized(serviceStarted) {
            if (!serviceStarted.get()) {
                queue.add(intent)
            } else {
                sendToDart(intent)
            }
        }

        return Result.success()
    }

    private fun startPushNotificationService(context: Context) {
        if (backgroundFlutterEngine != null) return
        try {
            Log.i(TAG, "Starting PushNotificationBackgroundService")
            val latch = CountDownLatch(1)
            val mainHandler = Handler(context.mainLooper)
            mainHandler.post {
                val loader = FlutterLoader()
                loader.startInitialization(context)
                loader.ensureInitializationCompleteAsync(context, null, mainHandler) {
                    createAndRunBackgroundEngine(context, loader, null)
                    latch.countDown()
                }
            }
            latch.await(15, TimeUnit.SECONDS)
        } catch (exception: Exception) {
            Log.e(TAG, "Fatal error retrieving background processor info: $exception")
        }
    }

    fun createAndRunBackgroundEngine(context: Context, loader: FlutterLoader, flutterEngine: FlutterEngine?) {
        backgroundFlutterEngine = FlutterEngineCache.getInstance()
            .get(PushNotificationPluginConstants.BACKGROUND_ENGINE_ID)

        if (backgroundFlutterEngine == null) {
            backgroundFlutterEngine = flutterEngine ?: FlutterEngine(context)
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
        if (callbackHandle == 0L) return

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
                    it.toWritableMap(),
                    NoOpVoidResult()
                )
            }
        }
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "amplifyBackgroundProcessorFinished" -> {
                serviceStarted.set(true)
                dartReadyLatch.countDown()
                while (!queue.isEmpty()) {
                    sendToDart(queue.removeFirst())
                }
            }
            else -> result.notImplemented()
        }
        result.success(null)
    }
}

/**
 * Static entry point for enqueuing background push notification work.
 * Preserves the existing API so callers don't need changes.
 */
@InternalAmplifyApi
object PushNotificationBackgroundService {
    fun enqueueWork(context: Context, work: Intent) {
        val extras = work.extras ?: return
        val dataBuilder = Data.Builder()
        for (key in extras.keySet()) {
            when (val value = extras.get(key)) {
                is String -> dataBuilder.putString(key, value)
                is Int -> dataBuilder.putInt(key, value)
                is Long -> dataBuilder.putLong(key, value)
                is Boolean -> dataBuilder.putBoolean(key, value)
                is Float -> dataBuilder.putFloat(key, value)
                is Double -> dataBuilder.putDouble(key, value)
                is ByteArray -> dataBuilder.putByteArray(key, value)
                else -> if (value != null) dataBuilder.putString(key, value.toString())
            }
        }
        val workRequest = OneTimeWorkRequestBuilder<PushNotificationBackgroundWorker>()
            .setInputData(dataBuilder.build())
            .build()
        WorkManager.getInstance(context).enqueue(workRequest)
    }
}
