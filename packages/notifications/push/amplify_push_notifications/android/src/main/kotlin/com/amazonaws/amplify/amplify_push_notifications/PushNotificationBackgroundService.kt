package com.amazonaws.amplify.amplify_push_notifications

import android.annotation.SuppressLint
import android.content.Context
import android.content.Intent
import android.os.Handler
import android.util.Log
import androidx.core.app.JobIntentService
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry
import io.flutter.view.FlutterCallbackInformation
import io.flutter.view.FlutterMain
import java.util.*
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.collections.ArrayDeque

class PushNotificationBackgroundService : MethodChannel.MethodCallHandler, JobIntentService() {
    private val queue = ArrayDeque<List<Any>>()
    private lateinit var mBackgroundChannel: MethodChannel
    private lateinit var mContext: Context

    companion object {
        @JvmStatic
        private val TAG = "PushNotificationBackgroundService"

        @JvmStatic
        private val JOB_ID = UUID.randomUUID().mostSignificantBits.toInt()

        @JvmStatic
        private var sBackgroundFlutterEngine: FlutterEngine? = null

        @JvmStatic
        private val sServiceStarted = AtomicBoolean(false)

        @JvmStatic
        private lateinit var sPluginRegistrantCallback: PluginRegistry.PluginRegistrantCallback

        @JvmStatic
        fun enqueueWork(context: Context, work: Intent) {
            enqueueWork(context, PushNotificationBackgroundService::class.java, JOB_ID, work)
        }

        @JvmStatic
        fun setPluginRegistrant(callback: PluginRegistry.PluginRegistrantCallback) {
            sPluginRegistrantCallback = callback
        }
    }

    @SuppressLint("LongLogTag")
    private fun startPushNotificationService(context: Context) {
        synchronized(sServiceStarted) {
            mContext = context
            if (sBackgroundFlutterEngine == null) {
                sBackgroundFlutterEngine = FlutterEngine(context)

                val callbackHandle = context.getSharedPreferences(
                    AmplifyPushNotificationsPlugin.SHARED_PREFERENCES_KEY,
                    Context.MODE_PRIVATE
                )
                    .getLong(
                        AmplifyPushNotificationsPlugin.CALLBACK_DISPATCHER_HANDLE_KEY,
                        0
                    )
                if (callbackHandle == 0L) {
                    Log.e(TAG, "Fatal: no callback registered")
                    return
                }

                val callbackInfo =
                    FlutterCallbackInformation.lookupCallbackInformation(callbackHandle)
                if (callbackInfo == null) {
                    Log.e(TAG, "Fatal: failed to find callback")
                    return
                }
                Log.i(TAG, "Starting PushNotificationBackgroundService...")

                val args = DartExecutor.DartCallback(
                    context.assets,
                    FlutterMain.findAppBundlePath(context)!!,
                    callbackInfo
                )
                sBackgroundFlutterEngine!!.dartExecutor.executeDartCallback(args)
//                TODO: Implement isolate holder service
//                IsolateHolderService.setBackgroundFlutterEngine(sBackgroundFlutterEngine)
            }
        }
        mBackgroundChannel = MethodChannel(
            sBackgroundFlutterEngine!!.dartExecutor.binaryMessenger,
            "plugins.flutter.io/amplify_push_notification_plugin_background"
        )
        mBackgroundChannel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "PushNotificationBackgroundService.initialized" -> {
                synchronized(sServiceStarted) {
                    while (!queue.isEmpty()) {
                        mBackgroundChannel.invokeMethod("", queue.removeFirst())
                    }
                    sServiceStarted.set(true)
                }
            }
            else -> result.notImplemented()
        }
        result.success(null)
    }

    @SuppressLint("LongLogTag")
    override fun onHandleWork(intent: Intent) {

        Log.d(TAG, "Handling work @ PushNotificationBackgroundService...")
        val bgExternalCallbackHandle =
            getCallbackHandleForKey(AmplifyPushNotificationsPlugin.BG_EXTERNAL_CALLBACK_HANDLE_KEY)
        val bgInternalCallbackHandle =
            getCallbackHandleForKey(AmplifyPushNotificationsPlugin.BG_INTERNAL_CALLBACK_HANDLE_KEY)

        if (bgInternalCallbackHandle == 0L) {
            Log.e(TAG, "Fatal: no internal callback registered")
            return
        }


        val callbackHandleList = listOf(bgInternalCallbackHandle, bgExternalCallbackHandle)
        synchronized(sServiceStarted) {
            if (!sServiceStarted.get()) {
                // Queue up geofencing events while background isolate is starting
                queue.add(callbackHandleList)
            } else {
                Log.d(
                    TAG,
                    "callbackHandle when calling the background channels: $callbackHandleList"
                )

                // Callback method name is intentionally left blank.
                Handler(mContext.mainLooper).post {
                    mBackgroundChannel.invokeMethod(
                        "",
                        callbackHandleList
                    )
                }
            }
        }
    }

    @SuppressLint("LongLogTag")
    private fun getCallbackHandleForKey(callbackKey: String): Long {

        Log.d(TAG, "callbackKey $callbackKey")

        return mContext.getSharedPreferences(
            AmplifyPushNotificationsPlugin.SHARED_PREFERENCES_KEY,
            MODE_PRIVATE
        )
            .getLong(callbackKey, 0)
    }

    override fun onCreate() {
        super.onCreate()
        startPushNotificationService(this)
    }

}