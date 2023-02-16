package com.amazonaws.amplify.amplify_push_notifications_android

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import com.amazonaws.amplify.AtomicResult
import com.google.android.gms.tasks.OnCompleteListener
import com.google.firebase.messaging.FirebaseMessaging
import org.json.JSONObject

/** AmplifyPushNotificationsAndroidPlugin */
class AmplifyPushNotificationsAndroidPlugin: FlutterPlugin, MethodCallHandler {

  private lateinit var channel : MethodChannel

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "com.amazonaws.amplify/push_notifications_plugin")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull _result: Result) {
    val result = AtomicResult(_result, call.method)
    when (call.method) {
      "registerForRemoteNotifications" -> {
        result.notImplemented()
      }
      "getToken" -> {
        fetchToken(result)
      }
    }
  }
  private fun fetchToken(result: Result?){

    FirebaseMessaging.getInstance().token.addOnCompleteListener(OnCompleteListener { task ->
      if (!task.isSuccessful) {
        return@OnCompleteListener
      }
      // Get new FCM registration token
      val token = task.result
      if(result!=null){
        result.success(token)
      }else{
        // TODO: Send the token to dart via method channel used to implement onTokenReceived API
        val tokenDataJson = JSONObject()
        tokenDataJson.apply {
          put("token", token)
        }
      }
    })

  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
