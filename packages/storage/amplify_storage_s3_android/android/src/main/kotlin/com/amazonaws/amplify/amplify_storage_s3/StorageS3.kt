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
import com.amazonaws.amplify.amplify_storage_s3.types.TransferProgressStreamHandler
import com.amplifyframework.core.Amplify
import com.amplifyframework.storage.s3.AWSS3StoragePlugin
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
        channel =
            MethodChannel(flutterPluginBinding.binaryMessenger, "com.amazonaws.amplify/storage_s3")
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

        if (call.method == "addPlugin") {
            try {
                Amplify.addPlugin(AWSS3StoragePlugin())
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
                    call.arguments as Map<String, *>,
                    transferProgressStreamHandler
                )
            "getUrl" ->
                AmplifyStorageOperations.getUrl(result, call.arguments as Map<String, *>)
            "remove" ->
                AmplifyStorageOperations.remove(result, call.arguments as Map<String, *>)
            "list" ->
                AmplifyStorageOperations.list(result, call.arguments as Map<String, *>)
            "downloadFile" ->
                AmplifyStorageOperations.downloadFile(
                    result,
                    call.arguments as Map<String, *>,
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
