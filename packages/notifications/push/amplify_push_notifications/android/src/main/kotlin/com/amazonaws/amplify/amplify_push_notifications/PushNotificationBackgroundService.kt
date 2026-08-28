// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.util.Log
import androidx.work.Data
import androidx.work.ExistingWorkPolicy
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
import java.util.concurrent.atomic.AtomicReference

private const val TAG = "PushBackgroundService"

/**
 * Unique name for the serialized chain of background work. Using a single unique name
 * with [ExistingWorkPolicy.APPEND_OR_REPLACE] guarantees notifications are processed
 * one at a time on the shared background Flutter engine, matching the serialized
 * behavior the previous JobIntentService relied on.
 */
private const val UNIQUE_WORK_NAME = "amplify_push_notification_background_work"

/**
 * Give up after this many attempts so a permanently failing notification can't retry
 * forever (WorkManager has no built-in max-attempt limit).
 */
private const val MAX_RETRY_ATTEMPTS = 3

// Timeouts for the blocking handshakes in doWork(). WorkManager gives a Worker ~10
// minutes before it's considered stuck, so these are deliberately conservative: the
// measured warm path completes in ~1-2s, but cold starts on low-end/throttled devices
// (or just after boot / leaving Doze) can be far slower. We'd rather wait than wrongly
// Result.retry() and re-run the whole engine startup. Total worst case (120 + 120 + 30
// = 270s) stays well under the ~10 min ceiling.

/** Max wait for the Flutter engine + asset bundle to finish initializing. */
private val ENGINE_INIT_TIMEOUT_SECONDS = 120L

/** Max wait for the Dart callback dispatcher to signal readiness. */
private val DART_READY_TIMEOUT_SECONDS = 120L

/** Max wait for the payload to be dispatched to Dart on the main thread. */
private val DART_DELIVERY_TIMEOUT_SECONDS = 30L

/**
 * Outcome of starting/locating the background Flutter engine.
 */
internal enum class EngineStartResult {
    /** A new engine was created and the Dart dispatcher was kicked off. */
    STARTED,

    /** An existing engine from a previous notification is already running the dispatcher. */
    REUSED,

    /** No Dart callback was registered; this is a misconfiguration, not a transient error. */
    CALLBACK_NOT_REGISTERED,

    /** Engine startup failed in a way that may succeed on retry. */
    FAILED,
}

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
     * The Background Flutter engine that initializes the callback dispatcher
     */
    private var backgroundFlutterEngine: FlutterEngine? = null

    /**
     * Latch to wait for the Dart callback dispatcher to signal readiness.
     */
    private val dartReadyLatch = CountDownLatch(1)

    /**
     * The Background Channel that is used to send messages to the callback dispatcher
     */
    private lateinit var backgroundChannel: MethodChannel

    private fun startPushNotificationService(context: Context): EngineStartResult {
        // Reuse the engine from a previous notification if it's already running the
        // dispatcher. Re-running executeDartCallback on a live engine is a no-op, so a
        // reused engine would never re-signal readiness — skip the handshake instead.
        val cachedEngine = FlutterEngineCache.getInstance()
            .get(PushNotificationPluginConstants.BACKGROUND_ENGINE_ID)
        if (cachedEngine != null && cachedEngine.dartExecutor.isExecutingDart()) {
            backgroundFlutterEngine = cachedEngine
            return EngineStartResult.REUSED
        }

        val result = AtomicReference(EngineStartResult.FAILED)
        try {
            Log.i(TAG, "Starting PushNotificationBackgroundService")
            val latch = CountDownLatch(1)
            val mainHandler = Handler(context.mainLooper)
            mainHandler.post {
                try {
                    val loader = FlutterLoader()
                    loader.startInitialization(context)
                    loader.ensureInitializationCompleteAsync(context, null, mainHandler) {
                        result.set(createAndRunBackgroundEngine(context, loader, null))
                        latch.countDown()
                    }
                } catch (exception: Exception) {
                    Log.e(TAG, "Fatal error retrieving background processor info: $exception")
                    latch.countDown()
                }
            }
            if (!latch.await(ENGINE_INIT_TIMEOUT_SECONDS, TimeUnit.SECONDS)) {
                Log.w(TAG, "Timed out initializing the background Flutter engine")
                return EngineStartResult.FAILED
            }
        } catch (exception: Exception) {
            Log.e(TAG, "Fatal error retrieving background processor info: $exception")
            return EngineStartResult.FAILED
        }
        return result.get()
    }

    internal fun createAndRunBackgroundEngine(
        context: Context,
        loader: FlutterLoader,
        flutterEngine: FlutterEngine?
    ): EngineStartResult {
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
            Log.w(
                TAG,
                "Warning: Background service could not start. Callback dispatcher not found."
            )
            return EngineStartResult.CALLBACK_NOT_REGISTERED
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
        return EngineStartResult.STARTED
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

    /**
     * Forwards the payload to Dart on the main thread. [sendToDart] ultimately calls
     * FlutterApi which dispatches a platform message — an @UiThread-only operation — so
     * it must not run on the WorkManager background thread that executes [doWork].
     * Blocks until the dispatch is posted so the worker doesn't return (and let the
     * process be torn down) before Dart receives the event.
     */
    private fun deliverOnMainThread(intent: Intent) {
        val delivered = CountDownLatch(1)
        Handler(applicationContext.mainLooper).post {
            try {
                sendToDart(intent)
            } finally {
                delivered.countDown()
            }
        }
        delivered.await(DART_DELIVERY_TIMEOUT_SECONDS, TimeUnit.SECONDS)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "amplifyBackgroundProcessorFinished" -> {
                // The dart side is now ready to receive events
                dartReadyLatch.countDown()
            }
            else -> result.notImplemented()
        }
        result.success(null)
    }

    override fun doWork(): Result {
        if (inputData.keyValueMap.isEmpty()) {
            Log.w(TAG, "Received background work with no payload; nothing to process.")
            return Result.success()
        }

        // Never return Result.failure() from this worker: failure cancels all
        // work APPENDed behind this one on the unique chain, so one bad
        // notification would silently kill every queued notification after it.
        // Log and return success instead so the chain keeps processing.

        // WorkManager has no built-in retry cap; bail out so a permanent failure
        // (e.g. a misconfigured app) can't retry indefinitely.
        if (runAttemptCount >= MAX_RETRY_ATTEMPTS) {
            Log.e(
                TAG,
                "Giving up after $runAttemptCount attempts to process push notification; " +
                    "dropping it so queued notifications still process."
            )
            return Result.success()
        }

        Log.i(TAG, "Handling work in PushNotificationBackgroundWorker")

        when (startPushNotificationService(applicationContext)) {
            // No Dart callback registered — retrying can't fix a missing handle.
            EngineStartResult.CALLBACK_NOT_REGISTERED -> {
                Log.e(
                    TAG,
                    "No Dart background callback registered; dropping notification."
                )
                return Result.success()
            }

            // Transient startup failure; let WorkManager retry with backoff.
            EngineStartResult.FAILED -> return Result.retry()

            // Fresh engine: doWork() runs synchronously on a WorkManager background
            // thread while the engine starts up asynchronously on the main thread.
            // Block until the Dart dispatcher signals readiness so the process isn't
            // torn down before Amplify is configured.
            EngineStartResult.STARTED -> {
                if (!dartReadyLatch.await(DART_READY_TIMEOUT_SECONDS, TimeUnit.SECONDS)) {
                    Log.w(TAG, "Timed out waiting for Dart callback dispatcher")
                    return Result.retry()
                }
            }

            // Engine reused from a previous notification; the dispatcher is already
            // running and won't re-signal, so deliver the payload directly.
            EngineStartResult.REUSED -> Unit
        }

        deliverOnMainThread(inputData.toIntent())
        return Result.success()
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
        val workManager = try {
            WorkManager.getInstance(context)
        } catch (exception: IllegalStateException) {
            // WorkManager auto-initializes via androidx.startup by default. Apps that
            // opt into on-demand initialization must implement Configuration.Provider;
            // otherwise getInstance throws and the notification would be dropped.
            Log.e(
                TAG,
                "WorkManager is not initialized, dropping background notification. " +
                    "If the host app uses on-demand WorkManager initialization, ensure " +
                    "its Application implements androidx.work.Configuration.Provider.",
                exception
            )
            return
        }
        val inputData = try {
            extras.toWorkData()
        } catch (exception: IllegalStateException) {
            // Data.Builder.build() throws once the serialized payload exceeds
            // Data.MAX_DATA_BYTES (10KB). FCM caps message payloads at 4KB, so this is
            // unreachable for real notifications — but never crash the messaging
            // service over it.
            Log.e(
                TAG,
                "Notification payload exceeds the ${Data.MAX_DATA_BYTES}-byte WorkManager " +
                    "limit, dropping background notification.",
                exception
            )
            return
        }
        val workRequest = OneTimeWorkRequestBuilder<PushNotificationBackgroundWorker>()
            .setInputData(inputData)
            .build()
        // Serialize work onto a single chain so concurrent workers don't race on the
        // shared background Flutter engine.
        workManager.enqueueUniqueWork(
            UNIQUE_WORK_NAME,
            ExistingWorkPolicy.APPEND_OR_REPLACE,
            workRequest
        )
    }
}

private fun logDroppedExtra(key: String, value: Any) {
    Log.w(
        TAG,
        "Dropping extra \"$key\" (${value.javaClass.simpleName}): not representable in " +
            "WorkManager Data. The Dart payload is unaffected — it is built from String " +
            "extras only."
    )
}

/**
 * Copies [Bundle] extras into WorkManager [Data]. Inverse of [Data.toIntent].
 *
 * Copies every type [Data] can represent. Anything else (Parcelable, Bundle, …) is
 * dropped with a warning instead of being coerced to a String: the Dart payload is built
 * from String extras only (see [Bundle.getNotificationPayload]), so a String coercion
 * could inject values into the payload that the previous JobIntentService implementation
 * never delivered.
 */
internal fun Bundle.toWorkData(): Data {
    val builder = Data.Builder()
    for (key in keySet()) {
        @Suppress("DEPRECATION")
        when (val value = get(key)) {
            null -> Unit
            is String -> builder.putString(key, value)
            is Boolean -> builder.putBoolean(key, value)
            is Byte -> builder.putByte(key, value)
            is Int -> builder.putInt(key, value)
            is Long -> builder.putLong(key, value)
            is Float -> builder.putFloat(key, value)
            is Double -> builder.putDouble(key, value)
            is BooleanArray -> builder.putBooleanArray(key, value)
            is ByteArray -> builder.putByteArray(key, value)
            is IntArray -> builder.putIntArray(key, value)
            is LongArray -> builder.putLongArray(key, value)
            is FloatArray -> builder.putFloatArray(key, value)
            is DoubleArray -> builder.putDoubleArray(key, value)
            is Array<*> -> if (value.isArrayOf<String>()) {
                @Suppress("UNCHECKED_CAST")
                builder.putStringArray(key, value as Array<String?>)
            } else {
                logDroppedExtra(key, value)
            }
            else -> logDroppedExtra(key, value)
        }
    }
    return builder.build()
}

/**
 * Rebuilds an [Intent] carrying the [Data] key/value pairs as extras. Inverse of
 * [Bundle.toWorkData]. [Data] stores primitive arrays boxed (e.g. an [IntArray] comes
 * back as `Array<Int>`), so arrays are unboxed here to restore the primitive array type
 * the original [Bundle] held.
 */
internal fun Data.toIntent(): Intent = Intent().apply {
    for ((key, value) in keyValueMap) {
        when (value) {
            null -> Unit
            is String -> putExtra(key, value)
            is Boolean -> putExtra(key, value)
            is Byte -> putExtra(key, value)
            is Int -> putExtra(key, value)
            is Long -> putExtra(key, value)
            is Float -> putExtra(key, value)
            is Double -> putExtra(key, value)
            is Array<*> -> when {
                value.isArrayOf<String>() ->
                    putExtra(key, value.map { it as String? }.toTypedArray())
                value.isArrayOf<Boolean>() ->
                    putExtra(key, value.map { it as Boolean }.toBooleanArray())
                value.isArrayOf<Byte>() ->
                    putExtra(key, value.map { it as Byte }.toByteArray())
                value.isArrayOf<Int>() ->
                    putExtra(key, value.map { it as Int }.toIntArray())
                value.isArrayOf<Long>() ->
                    putExtra(key, value.map { it as Long }.toLongArray())
                value.isArrayOf<Float>() ->
                    putExtra(key, value.map { it as Float }.toFloatArray())
                value.isArrayOf<Double>() ->
                    putExtra(key, value.map { it as Double }.toDoubleArray())
                else -> logDroppedExtra(key, value)
            }
            else -> logDroppedExtra(key, value)
        }
    }
}
