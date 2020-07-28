package com.amazonaws.amplify.amplify_analytics_pinpoint

import android.app.Activity
import android.app.Application
import android.util.Log
import androidx.annotation.NonNull;

import com.amplifyframework.analytics.pinpoint.AWSPinpointAnalyticsPlugin
import com.amplifyframework.auth.cognito.AWSCognitoAuthPlugin
import com.amplifyframework.core.Amplify

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

/** AmplifyAnalyticsPlugin */
public class AmplifyAnalyticsPinpointPlugin: FlutterPlugin, ActivityAware, MethodCallHandler {

  private lateinit var channel : MethodChannel
  private var mainActivity: Activity? = null


  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {

    channel = MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "com.amazonaws.amplify/analytics_pinpoint")
    channel.setMethodCallHandler(this);

    Amplify.addPlugin(AWSCognitoAuthPlugin())

    // Edge case for getting Application for AWSPinpointAnalyticsPlugin initialization
    // https://github.com/flutter/flutter/issues/47048
    var context = flutterPluginBinding.applicationContext

    while (context != null) {
      if (context as Application != null) {
        Amplify.addPlugin(AWSPinpointAnalyticsPlugin(context as Application));
        break
      } else {
        context = context.applicationContext
        Log.e(TAG, "Failed to resolve Application from Context, AWS Pinpoint not initialized")
      }
    }
  }

  // This static function is optional and equivalent to onAttachedToEngine. It supports the old
  // pre-Flutter-1.12 Android projects.
  companion object {
    const val TAG = "AmplifyAnalyticsPlugin";

    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "com.amazonaws.amplify/analytics")

      Amplify.addPlugin(AWSCognitoAuthPlugin())
      Amplify.addPlugin(AWSPinpointAnalyticsPlugin(registrar.activity().application))
    }
  }

  // Handle methods received via MethodChannel
  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {

    when (call.method) {
      "recordEvent" ->
        AmplifyAnalyticsBridge.recordEvent(call.arguments, result);
      "flushEvents" ->
        AmplifyAnalyticsBridge.flushEvents(result);
      "registerGlobalProperties" ->
        AmplifyAnalyticsBridge.registerGlobalProperties(call.arguments, result);
      "unregisterGlobalProperties" ->
        AmplifyAnalyticsBridge.unregisterGlobalProperties(call.arguments, result);
      "unregisterAllGlobalProperties" ->
        AmplifyAnalyticsBridge.unregisterAllGlobalProperties(result);
      "enable" ->
        AmplifyAnalyticsBridge.enable(result);
      "disable" ->
        AmplifyAnalyticsBridge.disable(result);
      "identifyUser" ->
        AmplifyAnalyticsBridge.identifyUser(call.arguments, result);

      else -> result.notImplemented()
    }
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    this.mainActivity = binding.activity
  }

  override fun onDetachedFromActivity() {
    this.mainActivity = null
  }

  override fun onDetachedFromActivityForConfigChanges() {
    onDetachedFromActivity()
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    onAttachedToActivity(binding)
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }


}
