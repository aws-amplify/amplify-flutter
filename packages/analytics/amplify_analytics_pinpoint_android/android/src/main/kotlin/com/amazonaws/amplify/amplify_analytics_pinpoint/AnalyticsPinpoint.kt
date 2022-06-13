/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

package com.amazonaws.amplify.amplify_analytics_pinpoint

import android.app.Activity
import android.content.Context
import android.content.Intent
import androidx.annotation.NonNull
import com.amazonaws.amplify.AtomicResult
import com.amplifyframework.core.Amplify
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

public class AnalyticsPinpoint : FlutterPlugin, ActivityAware, MethodCallHandler {

    private lateinit var channel: MethodChannel
    private var mainActivity: Activity? = null
    private lateinit var context: Context

    override fun onAttachedToEngine(
        @NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding
    ) {

        channel = MethodChannel(
            flutterPluginBinding.binaryMessenger,
            "com.amazonaws.amplify/analytics_pinpoint"
        )
        channel.setMethodCallHandler(this)
        context = flutterPluginBinding.applicationContext
    }

    companion object {
        val LOG = Amplify.Logging.forNamespace("amplify:flutter:analytics_pinpoint")
    }

    // Handle methods received via MethodChannel
    override fun onMethodCall(@NonNull call: MethodCall, @NonNull _result: Result) {
        val result = AtomicResult(_result, call.method)

        when (call.method) {
            "addPlugin" ->
                AmplifyAnalyticsBridge.addPlugin(result, context)
            "startSession" -> {
                // TODO: Update AutoSessionTracker logic to support Flutter.
                //
                // The AutoSessionTracker in the Pinpoint plugin listens for lifecycle changes and
                // starts and stops session tracking accordingly. It is registered during the call
                // to Amplify.configure. In native Android apps, this call is made before launching
                // the main activity and thus receives the initial onResume event, kicking off session
                // tracking. However, in Flutter, the call to Amplify.configure is made sometime later.
                // The initial onResume call is not received by the AutoSessionTracker, and no session
                // tracking occurs.
                //
                // The startSession/stopSession calls made by the AutoSessionTracker are not available
                // via the escape hatch, the AWS SDK, or reflection, so this hack must be used to
                // force an onPause/onResume cycle.
                //
                // This method is invoked in the Flutter SDK just after Amplify.configure.
                val intent = Intent(mainActivity, EmptyActivity::class.java)
                mainActivity?.startActivity(intent)
                result.success(null)
            }
            "recordEvent" ->
                AmplifyAnalyticsBridge.recordEvent(call.arguments, result)
            "flushEvents" ->
                AmplifyAnalyticsBridge.flushEvents(result)
            "registerGlobalProperties" ->
                AmplifyAnalyticsBridge.registerGlobalProperties(call.arguments, result)
            "unregisterGlobalProperties" ->
                AmplifyAnalyticsBridge.unregisterGlobalProperties(call.arguments, result)
            "enable" ->
                AmplifyAnalyticsBridge.enable(result)
            "disable" ->
                AmplifyAnalyticsBridge.disable(result)
            "identifyUser" ->
                AmplifyAnalyticsBridge.identifyUser(call.arguments, result)

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
