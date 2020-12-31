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

package com.amazonaws.amplify.amplify_api

import android.content.Context
import androidx.annotation.NonNull
import com.amazonaws.amplify.amplify_api.rest_api.FlutterRestApi
import com.amplifyframework.api.aws.AWSApiPlugin
import com.amplifyframework.core.Amplify
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import java.lang.ClassCastException

/** AmplifyApiPlugin */
class AmplifyApiPlugin : FlutterPlugin, MethodCallHandler {

    private lateinit var channel: MethodChannel
    private lateinit var context: Context
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:api")
    
    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "com.amazonaws.amplify/api")
        channel.setMethodCallHandler(this)
        context = flutterPluginBinding.applicationContext
        Amplify.addPlugin(AWSApiPlugin())
        LOG.info("Initiated API plugin")
    }

    override fun onMethodCall( call: MethodCall, result: Result) {
        var methodName = call.method

        if(methodName == "cancel"){
          onCancel(result, (call.arguments as String))
          return
        }

        try {
            var arguments : Map<String, Any> = call.arguments as Map<String,Any>

            when (call.method) {
                "get" -> FlutterRestApi.onGet(result, arguments)
                "post" -> FlutterRestApi.onPost(result, arguments)
                "put" -> FlutterRestApi.onPut(result, arguments)
                "delete" -> FlutterRestApi.onDelete(result, arguments)
                "head" -> FlutterRestApi.onHead(result, arguments)
                "patch" -> FlutterRestApi.onPatch(result, arguments)
                "query" -> FlutterGraphQLApi.query(result, arguments)
                "mutate" -> FlutterGraphQLApi.mutate(result, arguments)
                else -> result.notImplemented()
            }
        } catch (e: ClassCastException) {
            FlutterApiError.postFlutterError(
                    result,
                    FlutterApiErrorMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
                    e
            )
        }
    }

    fun onCancel(
            flutterResult: Result,
            cancelToken: String) {
        if(OperationsManager.containsOperation(cancelToken)){
            OperationsManager.cancelOperation(cancelToken)
            flutterResult.success("Operation Canceled")
        } else {
            flutterResult.error(
                    "AmplifyRestAPI-CancelError",
                    "The RestOperation may have already completed or expired and cannot be canceled anymore",
                    "Operation does not exist")
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
