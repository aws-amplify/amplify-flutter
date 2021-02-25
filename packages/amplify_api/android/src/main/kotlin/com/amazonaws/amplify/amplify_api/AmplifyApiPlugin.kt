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
import androidx.annotation.NonNull
import androidx.annotation.VisibleForTesting
import com.amazonaws.amplify.amplify_api.rest_api.FlutterRestApi
import com.amplifyframework.api.aws.AWSApiPlugin
import com.amplifyframework.core.Amplify
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.createSerializedUnrecognizedError
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.handleAddPluginException
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.postExceptionToFlutterChannel

/** AmplifyApiPlugin */
class AmplifyApiPlugin : FlutterPlugin, MethodCallHandler {

    private lateinit var channel: MethodChannel
    private lateinit var eventchannel: EventChannel
    private lateinit var context: Context
    private val graphqlSubscriptionStreamHandler: GraphQLSubscriptionStreamHandler
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:api")

    constructor() {
        graphqlSubscriptionStreamHandler = GraphQLSubscriptionStreamHandler()
    }

    @VisibleForTesting
    constructor(eventHandler: GraphQLSubscriptionStreamHandler) {
        graphqlSubscriptionStreamHandler = eventHandler
    }
    private val handler = Handler(Looper.getMainLooper())

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "com.amazonaws.amplify/api")
        channel.setMethodCallHandler(this)
        eventchannel = EventChannel(flutterPluginBinding.binaryMessenger, "com.amazonaws.amplify/api_observe_events")
        eventchannel.setStreamHandler(graphqlSubscriptionStreamHandler)
        context = flutterPluginBinding.applicationContext
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        var methodName = call.method

        if(methodName == "cancel"){
            onCancel(result, (call.arguments as String))
            return
        }
        else if(methodName == "addPlugin"){
            try {
                Amplify.addPlugin(AWSApiPlugin())
                LOG.info("Added API plugin")
            } catch (e: Exception) {
                handleAddPluginException("API", e, result)
            }
            result.success(null)
            return
        }

        try {
            var arguments : Map<String, Any> = call.arguments as Map<String,Any>

            when (call.method) {
                "get" -> FlutterRestApi.get(result, arguments)
                "post" -> FlutterRestApi.post(result, arguments)
                "put" -> FlutterRestApi.put(result, arguments)
                "delete" -> FlutterRestApi.delete(result, arguments)
                "head" -> FlutterRestApi.head(result, arguments)
                "patch" -> FlutterRestApi.patch(result, arguments)
                "query" -> FlutterGraphQLApi.query(result, arguments)
                "mutate" -> FlutterGraphQLApi.mutate(result, arguments)
                "subscribe" -> FlutterGraphQLApi.subscribe(result, arguments, graphqlSubscriptionStreamHandler)
                else -> result.notImplemented()
            }
        } catch (e: Exception) {
            handler.post {
                postExceptionToFlutterChannel(result, "ApiException",
                        createSerializedUnrecognizedError(e))
            }
        }
    }

    fun onCancel(
            flutterResult: Result,
            cancelToken: String) {
        if(OperationsManager.containsOperation(cancelToken)) {
            OperationsManager.cancelOperation(cancelToken)
            flutterResult.success("Operation Canceled")
        } else {
            flutterResult.error(
                    "AmplifyAPI-CancelError",
                    "The Operation may have already been completed or expired and cannot be canceled anymore",
                    "Operation does not exist")
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
