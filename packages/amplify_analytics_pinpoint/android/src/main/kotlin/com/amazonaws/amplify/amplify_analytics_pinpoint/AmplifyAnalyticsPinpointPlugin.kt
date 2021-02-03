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
import android.app.Application
import android.util.Log
import androidx.annotation.NonNull
import com.amplifyframework.analytics.pinpoint.AWSPinpointAnalyticsPlugin
import com.amplifyframework.core.Amplify
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

public class AmplifyAnalyticsPinpointPlugin : FlutterPlugin, ActivityAware, MethodCallHandler {

    private lateinit var channel: MethodChannel
    private var mainActivity: Activity? = null

    override fun onAttachedToEngine(
            @NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {

        channel = MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(),
                "com.amazonaws.amplify/analytics_pinpoint")
        channel.setMethodCallHandler(this)

        // Edge case for getting Application for AWSPinpointAnalyticsPlugin initialization
        // https://github.com/flutter/flutter/issues/47048
        var context = flutterPluginBinding.applicationContext

        while (context != null) {
            if (context as Application != null) {
                try {
                    Amplify.addPlugin(AWSPinpointAnalyticsPlugin(context))
                } catch (e: Exception) {
                    LOG.error("Failed to add AnalyticsPinpoint plugin. Is Amplify already configured and app restarted?")
                    LOG.error("Exception: $e")
                    return
                }
                LOG.info("Added AnalyticsPinpoint plugin")
                break
            } else {
                context = context.applicationContext
            }
        }

        if (context as Application == null) {
            Log.e(TAG, "Failed to resolve Application from Context, AWS Pinpoint not initialized")
        }

    }

    // This static function is optional and equivalent to onAttachedToEngine. It supports the old
    // pre-Flutter-1.12 Android projects.
    companion object {
        const val TAG = "AmplifyAnalyticsPinpointPlugin"
        val LOG = Amplify.Logging.forNamespace("amplify:flutter:analytics_pinpoint")

        @JvmStatic
        fun registerWith(registrar: Registrar) {
            val channel =
                    MethodChannel(registrar.messenger(), "com.amazonaws.amplify/analytics_pinpoint")
            Amplify.addPlugin(AWSPinpointAnalyticsPlugin(registrar.activity().application))
            LOG.info("Added AnalyticsPinpoint plugin")
        }
    }

    // Handle methods received via MethodChannel
    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {

        when (call.method) {
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
