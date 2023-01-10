// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify

import android.app.Activity
import android.content.Context
import android.os.Handler
import android.os.Looper
import android.util.Log
import androidx.annotation.NonNull
import com.amazonaws.amplify.exception.ExceptionUtil.Companion.createSerializedError
import com.amazonaws.amplify.exception.ExceptionUtil.Companion.postExceptionToFlutterChannel
import com.amplifyframework.AmplifyException
import com.amplifyframework.analytics.AnalyticsException
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.AmplifyConfiguration
import com.amplifyframework.util.UserAgent
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.CoroutineName
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import org.json.JSONObject

/** Amplify */
class Amplify(
    private val dispatcher: CoroutineDispatcher = Dispatchers.IO
) : FlutterPlugin, ActivityAware, MethodCallHandler {

    private lateinit var channel: MethodChannel
    private lateinit var context: Context
    private var mainActivity: Activity? = null
    private val coroutineScope = CoroutineScope(CoroutineName("AmplifyFlutterPlugin"))

    override fun onAttachedToEngine(
        @NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding
    ) {
        channel = MethodChannel(
            flutterPluginBinding.binaryMessenger,
            "com.amazonaws.amplify/amplify"
        )
        channel.setMethodCallHandler(this)
        context = flutterPluginBinding.applicationContext
        Log.i("Amplify Flutter", "Added Core plugin")
    }

    companion object {
        @JvmStatic
        fun registerWith(registrar: Registrar) {
            val channel = MethodChannel(registrar.messenger(), "com.amazonaws.amplify/amplify")
            Log.i("Amplify Flutter", "Added Core plugin")
        }
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull _result: Result) {
        val result = AtomicResult(_result, call.method)

        when (call.method) {
            "configure" ->
                try {
                    val arguments = call.arguments as HashMap<*, *>
                    val version = arguments["version"] as String
                    val configuration = arguments["configuration"] as String
                    onConfigure(result, version, configuration)
                } catch (e: Exception) {
                    postExceptionToFlutterChannel(
                        result, "AmplifyException",
                        createSerializedError(
                            "Failed to parse the configuration.",
                            "Please check your amplifyconfiguration.dart if you are " +
                                "manually updating it, else please create an issue.",
                            e.toString()
                        )
                    )
                }
            else -> result.notImplemented()
        }
    }

    private fun prepareAnalyticsError(
        @NonNull flutterResult: Result,
        @NonNull exception: AnalyticsException
    ) {
        Handler(Looper.getMainLooper()).post {
            postExceptionToFlutterChannel(
                flutterResult,
                "AnalyticsException",
                createSerializedError(exception)
            )
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

    private fun onConfigure(
        @NonNull result: Result,
        @NonNull version: String,
        @NonNull config: String
    ) {
        coroutineScope.launch(dispatcher) {
            try {
                val configuration = AmplifyConfiguration.builder(JSONObject(config))
                    .addPlatform(UserAgent.Platform.FLUTTER, version)
                    .devMenuEnabled(false)
                    .build()
                Amplify.configure(configuration, context)
                withContext(Dispatchers.Main) {
                    result.success(true)
                }
            } catch (e: AnalyticsException) {
                prepareAnalyticsError(result, e)
            } catch (e: Amplify.AlreadyConfiguredException) {
                postExceptionToFlutterChannel(
                    result, "AmplifyAlreadyConfiguredException",
                    createSerializedError(e)
                )
            } catch (e: AmplifyException) {
                postExceptionToFlutterChannel(
                    result, "AmplifyException",
                    createSerializedError(e)
                )
            }
        }
    }
}
