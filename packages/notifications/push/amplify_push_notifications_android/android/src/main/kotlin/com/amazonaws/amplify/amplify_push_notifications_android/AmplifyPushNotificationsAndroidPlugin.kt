package com.amazonaws.amplify.amplify_push_notifications_android

import android.annotation.SuppressLint
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
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry

/** AmplifyPushNotificationsAndroidPlugin */
class AmplifyPushNotificationsAndroidPlugin : FlutterPlugin, MethodCallHandler, ActivityAware, PluginRegistry.NewIntentListener {

    companion object {
        private val TAG = "AmplifyPushNotificationsAndroidPlugin"
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
//        eventsStreamHandler = PushNotificationEventsStreamHandler()
        PushNotificationEventsStreamHandler.initialize(flutterPluginBinding.binaryMessenger)

    }
    @SuppressLint("LongLogTag")
//    private fun setUpEventChannels(binaryMessenger: BinaryMessenger) {
//        Log.d(TAG, "Setting up event channels")
//
//        eventChannels.forEach { eventChannelName ->
//            val eventChannel = EventChannel(
//                binaryMessenger, eventChannelName
//            )
//            Log.d(TAG, "eventChannel $eventChannelName ")
//
//            eventChannel.setStreamHandler(eventsStreamHandler)
//        }
//    }

    private fun sendEvent(event: PushNotificationsEvent){
        PushNotificationEventsStreamHandler.sendEvent(event)
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull _result: Result) {
        val result = AtomicResult(_result, call.method)
        when (call.method) {

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
            val hashMap : HashMap<String, Any?>
                    = HashMap()
            hashMap["token"] = token
            sendEvent(
                PushNotificationsEvent(NativeEvent.TOKEN_RECEIVED, hashMap)
            )
        })

    }


    override fun onNewIntent(intent: Intent): Boolean {
        Log.d(TAG, "onNewIntent in push plugin $intent")
//        val appOpenedThroughTap = intent.getBooleanExtra("appOpenedThroughTap", false)

//        if(appOpenedThroughTap){
            val remoteMessage = RemoteMessage(intent.extras)
            val remoteMessageBundle = getBundleFromRemoteMessage(remoteMessage)
            val notificationHashMap = convertBundleToHashMap(remoteMessageBundle)
            Log.d(TAG, "Send onNotificationOpened message received event: $notificationHashMap")
            PushNotificationEventsStreamHandler.sendEvent(PushNotificationsEvent(NativeEvent.NOTIFICATION_OPENED,notificationHashMap))
//        }
        return true
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    }
}
