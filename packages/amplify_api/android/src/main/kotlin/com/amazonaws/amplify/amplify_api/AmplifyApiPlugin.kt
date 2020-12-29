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
import android.os.Handler
import android.os.Looper
import androidx.annotation.VisibleForTesting
import com.amazonaws.amplify.amplify_api.types.FlutterApiErrorMessage
import com.amazonaws.amplify.amplify_api.types.FlutterApiErrorUtils
import com.amazonaws.amplify.amplify_api.types.AmplifyGraphQLModule
import com.amazonaws.amplify.amplify_api.types.OperationsManager
import com.amazonaws.amplify.amplify_api.types.rest_api.AmplifyRestAPIModule
import androidx.annotation.NonNull
import com.amplifyframework.api.aws.AWSApiPlugin
import com.amplifyframework.core.Amplify
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result


/** AmplifyApiPlugin */
class AmplifyApiPlugin : FlutterPlugin, MethodCallHandler {

    private lateinit var channel: MethodChannel
    private lateinit var context: Context
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:api")

    private var restAPIModule : AmplifyRestAPIModule = AmplifyRestAPIModule()

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

        if(methodName == "get" || methodName == "post" || methodName == "put" || methodName == "delete" || methodName == "head" || methodName == "patch"){
          if(!restAPIModule.isValidArgumentsMap(result, call.arguments)) return
        }

        if(methodName == "query" || methodName == "mutate"){
          if(!graphQLModule.isValidArgumentsMap(result, call.arguments)) return
        }

        var arguments : Map<String, Any> = call.arguments as Map<String,Any>

        when (call.method) {
          "get" -> restAPIModule.onGet(result, arguments)
          "post" -> restAPIModule.onPost(result, arguments)
          "put" -> restAPIModule.onPut(result, arguments)
          "delete" -> restAPIModule.onDelete(result, arguments)
          "head" -> restAPIModule.onHead(result, arguments)
          "patch" -> restAPIModule.onPatch(result, arguments)
          "query" -> FlutterGraphQLApiModule.query(result, call.arguments as Map<String, Any>)
          "mutate" -> FlutterGraphQLApiModule.mutate(result, call.arguments as Map<String, Any>)
          else -> result.notImplemented()
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
                    "RestOperation completed or expired and cannot be canceled anymore",
                    "Operation does not exist")
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
