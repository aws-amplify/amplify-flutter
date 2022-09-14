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

package com.amazonaws.amplify.amplify_storage_s3

import android.app.Activity
import android.content.Context
import android.util.Log
import androidx.annotation.NonNull
import com.amazonaws.amplify.amplify_core.AtomicResult
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.handleAddPluginException
import com.amazonaws.amplify.amplify_storage_s3.types.FlutterPrefixResolver
import com.amazonaws.amplify.amplify_storage_s3.types.TransferProgressStreamHandler
import com.amplifyframework.core.Amplify
import com.amplifyframework.storage.s3.AWSS3StoragePlugin
import com.amplifyframework.storage.s3.configuration.AWSS3StoragePluginConfiguration
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

class StorageS3 : FlutterPlugin, ActivityAware, MethodCallHandler {

    private lateinit var channel: MethodChannel
    private lateinit var context: Context
    private var mainActivity: Activity? = null
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:storage_s3")

    private lateinit var transferProgressEventChannel: EventChannel
    private val transferProgressStreamHandler: TransferProgressStreamHandler = TransferProgressStreamHandler()

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "com.amazonaws.amplify/storage_s3")
        channel.setMethodCallHandler(this)
        context = flutterPluginBinding.applicationContext

        transferProgressEventChannel = EventChannel(
                flutterPluginBinding.binaryMessenger,
                "com.amazonaws.amplify/storage_transfer_progress_events"
        )
        transferProgressEventChannel.setStreamHandler(transferProgressStreamHandler)
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull _result: Result) {
        val result = AtomicResult(_result, call.method)

        val arguments = call.arguments as Map<String, *>

        if (call.method == "configureStorage") {
            try {
                val hasPrefixResolver = arguments["hasPrefixResolver"] as? Boolean? == true
                Amplify.addPlugin(
                        AWSS3StoragePlugin(
                                AWSS3StoragePluginConfiguration {
                                    awsS3PluginPrefixResolver =
                                            if (hasPrefixResolver)
                                                FlutterPrefixResolver(methodChannel = channel)
                                            else null
                                }
                        )
                )

                Log.i("AmplifyFlutter", "Added StorageS3 plugin")
                result.success(null)
            } catch (e: Exception) {
                handleAddPluginException("Storage", e, result)
            }
            return
        }

        when (call.method) {
            "uploadFile" ->
                AmplifyStorageOperations.uploadFile(
                        result,
                        arguments,
                        transferProgressStreamHandler
                )
            "getUrl" ->
                AmplifyStorageOperations.getUrl(result, arguments)
            "remove" ->
                AmplifyStorageOperations.remove(result, arguments)
            "list" ->
                AmplifyStorageOperations.list(result, arguments)
            "downloadFile" ->
                AmplifyStorageOperations.downloadFile(
                        result,
                        arguments,
                        transferProgressStreamHandler
                )
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
