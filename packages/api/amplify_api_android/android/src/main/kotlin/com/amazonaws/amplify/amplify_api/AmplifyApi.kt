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

import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import androidx.annotation.VisibleForTesting
import com.amazonaws.amplify.amplify_api.auth.FlutterAuthProviders
import com.amazonaws.amplify.amplify_api.rest_api.FlutterRestApi
import com.amazonaws.amplify.AtomicResult
import com.amazonaws.amplify.cast
import com.amazonaws.amplify.exception.ExceptionUtil.Companion.createSerializedUnrecognizedError
import com.amazonaws.amplify.exception.ExceptionUtil.Companion.handleAddPluginException
import com.amazonaws.amplify.exception.ExceptionUtil.Companion.postExceptionToFlutterChannel
import com.amplifyframework.api.aws.AWSApiPlugin
import com.amplifyframework.api.aws.AuthorizationType
import com.amplifyframework.core.Amplify
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers

/** AmplifyApiPlugin */
class AmplifyApi : FlutterPlugin, MethodCallHandler {

    private companion object {
        /**
         * API authorization providers configured during the `addPlugin` call.
         *
         * The auth providers require a reference to the active method channel to be able to
         * communicate back to Dart code. If the app is moved to the background and resumed,
         * the `Amplify.addPlugin` call does not re-configure auth providers, so these must
         * be instantiated only once but still maintain a reference to the active method channel.
         */
        var flutterAuthProviders: FlutterAuthProviders? = null
    }

    private var channel: MethodChannel? = null
    private var eventchannel: EventChannel? = null
    private var graphqlSubscriptionStreamHandler: GraphQLSubscriptionStreamHandler? = null
    private val logger = Amplify.Logging.forNamespace("amplify:flutter:api")
    private var dispatcher: CoroutineDispatcher

    constructor() {
        dispatcher = Dispatchers.IO
    }

    @VisibleForTesting
    constructor(
        eventHandler: GraphQLSubscriptionStreamHandler,
        dispatcher: CoroutineDispatcher = Dispatchers.IO
    ) {
        graphqlSubscriptionStreamHandler = eventHandler
        this.dispatcher = dispatcher
    }

    private val handler = Handler(Looper.getMainLooper())

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        graphqlSubscriptionStreamHandler = graphqlSubscriptionStreamHandler ?: GraphQLSubscriptionStreamHandler()
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "com.amazonaws.amplify/api")
        channel!!.setMethodCallHandler(this)
        eventchannel = EventChannel(
            flutterPluginBinding.binaryMessenger,
            "com.amazonaws.amplify/api_observe_events"
        )
        eventchannel!!.setStreamHandler(graphqlSubscriptionStreamHandler)
    }

    @Suppress("UNCHECKED_CAST")
    override fun onMethodCall(call: MethodCall, _result: Result) {
        val methodName = call.method
        val result = AtomicResult(_result, call.method)
        val arguments: Map<String, Any> = (call.arguments as? Map<*, *>)?.cast() ?: mapOf()

        if (methodName == "cancel") {
            onCancel(result, (call.arguments as String))
            return
        } else if (methodName == "addPlugin") {
            try {
                val authProvidersList: List<String> =
                    (arguments["authProviders"] as List<*>?)?.cast() ?: listOf()
                val authProviders = authProvidersList.map { AuthorizationType.valueOf(it) }
                if (flutterAuthProviders == null) {
                    flutterAuthProviders = FlutterAuthProviders(authProviders)
                }
                flutterAuthProviders!!.setMethodChannel(channel)
                Amplify.addPlugin(
                    AWSApiPlugin
                        .builder()
                        .apiAuthProviders(flutterAuthProviders!!.factory)
                        .build()
                )
                logger.info("Added API plugin")
                result.success(null)
            } catch (e: Exception) {
                handleAddPluginException("API", e, result)
            }
            return
        }

        try {
            when (call.method) {
                "get" -> FlutterRestApi.get(result, arguments)
                "post" -> FlutterRestApi.post(result, arguments)
                "put" -> FlutterRestApi.put(result, arguments)
                "delete" -> FlutterRestApi.delete(result, arguments)
                "head" -> FlutterRestApi.head(result, arguments)
                "patch" -> FlutterRestApi.patch(result, arguments)
                "query" -> FlutterGraphQLApi(dispatcher).query(result, arguments)
                "mutate" -> FlutterGraphQLApi(dispatcher).mutate(result, arguments)
                "subscribe" -> FlutterGraphQLApi(dispatcher).subscribe(
                    result,
                    arguments,
                    graphqlSubscriptionStreamHandler!!
                )
                else -> result.notImplemented()
            }
        } catch (e: Exception) {
            handler.post {
                postExceptionToFlutterChannel(
                    result, "ApiException",
                    createSerializedUnrecognizedError(e)
                )
            }
        }
    }

    fun onCancel(
        flutterResult: Result,
        cancelToken: String
    ) {
        if (OperationsManager.containsOperation(cancelToken)) {
            OperationsManager.cancelOperation(cancelToken)
            flutterResult.success("Operation Canceled")
        } else {
            flutterResult.error(
                "AmplifyAPI-CancelError",
                "The Operation may have already been completed or expired and cannot be canceled anymore",
                "Operation does not exist"
            )
        }
    }

    override fun onDetachedFromEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        flutterAuthProviders?.setMethodChannel(null)
        channel?.setMethodCallHandler(null)
        channel = null
        eventchannel?.setStreamHandler(null)
        eventchannel = null
        graphqlSubscriptionStreamHandler?.close()
        graphqlSubscriptionStreamHandler = null
    }
}
