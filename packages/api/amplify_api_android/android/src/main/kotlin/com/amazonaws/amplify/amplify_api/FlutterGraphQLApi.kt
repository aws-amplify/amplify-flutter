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
import com.amazonaws.amplify.exception.ExceptionUtil
import com.amplifyframework.api.ApiException
import com.amplifyframework.api.aws.GsonVariablesSerializer
import com.amplifyframework.api.graphql.GraphQLOperation
import com.amplifyframework.api.graphql.GraphQLPathSegment
import com.amplifyframework.api.graphql.GraphQLResponse
import com.amplifyframework.api.graphql.SimpleGraphQLRequest
import com.amplifyframework.core.Action
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.CoroutineName
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

class FlutterGraphQLApi(private val dispatcher: CoroutineDispatcher) {
    companion object {
        private val handler = Handler(Looper.getMainLooper())
        private val LOG = Amplify.Logging.forNamespace("amplify:flutter:api")
        private val scope = CoroutineScope(CoroutineName("FlutterGraphQLApi"))
    }

    fun query(flutterResult: MethodChannel.Result, request: Map<String, Any>) {
        val apiName: String?
        val document: String
        val variables: Map<String, Any>
        val cancelToken: String

        try {
            apiName = FlutterApiRequest.getGraphQlApiName(request)
            document = FlutterApiRequest.getGraphQLDocument(request)
            variables = FlutterApiRequest.getVariables(request)
            cancelToken = FlutterApiRequest.getCancelToken(request)
        } catch (e: Exception) {
            handler.post {
                ExceptionUtil.postExceptionToFlutterChannel(
                    flutterResult, "ApiException",
                    ExceptionUtil.createSerializedUnrecognizedError(e)
                )
            }
            return
        }

        val responseCallback = Consumer<GraphQLResponse<String>> { response ->
            if (cancelToken.isNotEmpty()) OperationsManager.removeOperation(cancelToken)

            val result: Map<String, Any> = mapOf(
                "data" to response.data,
                "errors" to response.errors.map { it.toMap() }
            )
            LOG.debug("GraphQL query operation succeeded with response: $result")
            handler.post { flutterResult.success(result) }
        }

        val errorCallback = Consumer<ApiException> { exception ->
            if (cancelToken.isNotEmpty()) OperationsManager.removeOperation(cancelToken)

            LOG.error("GraphQL mutate operation failed", exception)
            handler.post {
                ExceptionUtil.postExceptionToFlutterChannel(
                    flutterResult, "ApiException",
                    ExceptionUtil.createSerializedError(exception)
                )
            }
        }

        scope.launch(dispatcher) {
            val operation: GraphQLOperation<String>?

            if (apiName != null) {
                operation = Amplify.API.query(
                    apiName,
                    SimpleGraphQLRequest<String>(
                        document,
                        variables,
                        String::class.java,
                        GsonVariablesSerializer()
                    ),
                    responseCallback,
                    errorCallback
                )
            } else {
                operation = Amplify.API.query(
                    SimpleGraphQLRequest<String>(
                        document,
                        variables,
                        String::class.java,
                        GsonVariablesSerializer()
                    ),
                    responseCallback,
                    errorCallback
                )
            }

            if (operation != null) {
                OperationsManager.addOperation(cancelToken, operation)
            }
        }
    }

    fun mutate(flutterResult: MethodChannel.Result, request: Map<String, Any>) {
        val apiName: String?
        val document: String
        val variables: Map<String, Any>
        val cancelToken: String

        try {
            apiName = FlutterApiRequest.getGraphQlApiName(request)
            document = FlutterApiRequest.getGraphQLDocument(request)
            variables = FlutterApiRequest.getVariables(request)
            cancelToken = FlutterApiRequest.getCancelToken(request)
        } catch (e: Exception) {
            handler.post {
                ExceptionUtil.postExceptionToFlutterChannel(
                    flutterResult, "ApiException",
                    ExceptionUtil.createSerializedUnrecognizedError(e)
                )
            }
            return
        }

        val responseCallback = Consumer<GraphQLResponse<String>> { response ->
            if (cancelToken.isNotEmpty()) OperationsManager.removeOperation(cancelToken)

            val result: Map<String, Any> = mapOf(
                "data" to response.data,
                "errors" to response.errors.map { it.toMap() }
            )
            LOG.debug("GraphQL mutate operation succeeded with response : $result")
            handler.post { flutterResult.success(result) }
        }

        val errorCallback = Consumer<ApiException> { exception ->
            if (cancelToken.isNotEmpty()) OperationsManager.removeOperation(cancelToken)

            LOG.error("GraphQL mutate operation failed", exception)
            handler.post {
                ExceptionUtil.postExceptionToFlutterChannel(
                    flutterResult, "ApiException",
                    ExceptionUtil.createSerializedError(exception)
                )
            }
        }

        scope.launch(dispatcher) {
            val operation: GraphQLOperation<String?>?

            if (apiName != null) {
                operation = Amplify.API.mutate(
                    apiName,
                    SimpleGraphQLRequest<String>(
                        document,
                        variables,
                        String::class.java,
                        GsonVariablesSerializer()
                    ),
                    responseCallback,
                    errorCallback
                )
            } else {
                operation = Amplify.API.mutate(
                    SimpleGraphQLRequest<String>(
                        document,
                        variables,
                        String::class.java,
                        GsonVariablesSerializer()
                    ),
                    responseCallback,
                    errorCallback
                )
            }

            if (operation != null) {
                OperationsManager.addOperation(cancelToken, operation)
            }
        }
    }

    fun subscribe(
        flutterResult: MethodChannel.Result,
        request: Map<String, Any>,
        graphqlSubscriptionStreamHandler: GraphQLSubscriptionStreamHandler
    ) {
        val apiName: String?
        val document: String
        val variables: Map<String, Any>
        val id: String
        var established = false

        try {
            apiName = FlutterApiRequest.getGraphQlApiName(request)
            document = FlutterApiRequest.getGraphQLDocument(request)
            variables = FlutterApiRequest.getVariables(request)
            id = FlutterApiRequest.getCancelToken(request)
        } catch (e: Exception) {
            handler.post {
                ExceptionUtil.postExceptionToFlutterChannel(
                    flutterResult, "ApiException",
                    ExceptionUtil.createSerializedUnrecognizedError(e)
                )
            }
            return
        }

        val connectionCallback = Consumer<String> {
            established = true
            LOG.debug("Subscription established: $id")
            handler.post { flutterResult.success(null) }
        }

        val responseCallback = Consumer<GraphQLResponse<String>> { response ->
            val payload: Map<String, Any> = mapOf(
                "data" to response.data,
                "errors" to response.errors.map { it.toMap() }
            )
            LOG.debug("GraphQL subscription event received: $payload")
            graphqlSubscriptionStreamHandler.sendEvent(
                payload,
                id,
                GraphQLSubscriptionEventTypes.DATA
            )
        }

        val errorCallback = Consumer<ApiException> {
            OperationsManager.removeOperation(id)
            if (established) {
                graphqlSubscriptionStreamHandler.sendError(
                    "ApiException",
                    id,
                    ExceptionUtil.createSerializedError(it)
                )
            } else {
                handler.post {
                    ExceptionUtil.postExceptionToFlutterChannel(
                        flutterResult, "ApiException",
                        ExceptionUtil.createSerializedError(it)
                    )
                }
            }
        }

        val disconnectionCallback = Action {
            OperationsManager.removeOperation(id)
            LOG.debug("Subscription has been closed successfully")
            graphqlSubscriptionStreamHandler.sendEvent(
                null,
                id,
                GraphQLSubscriptionEventTypes.DONE
            )
        }

        scope.launch(dispatcher) {
            val operation: GraphQLOperation<String?>?

            if (apiName != null) {
                operation = Amplify.API.subscribe(
                    apiName,
                    SimpleGraphQLRequest<String>(
                        document,
                        variables,
                        String::class.java,
                        GsonVariablesSerializer()
                    ),
                    connectionCallback,
                    responseCallback,
                    errorCallback,
                    disconnectionCallback
                )
            } else {
                operation = Amplify.API.subscribe(
                    SimpleGraphQLRequest<String>(
                        document,
                        variables,
                        String::class.java,
                        GsonVariablesSerializer()
                    ),
                    connectionCallback,
                    responseCallback,
                    errorCallback,
                    disconnectionCallback
                )
            }
            if (operation != null) {
                OperationsManager.addOperation(id, operation)
            }
        }
    }
}

fun GraphQLResponse.Error.toMap(): Map<String, Any?> = mapOf(
    "message" to message,
    "locations" to locations?.map { mapOf("line" to it.line, "column" to it.column) },
    "path" to path?.map<GraphQLPathSegment, Any?> {
        when {
            it.isInteger -> it.asInt
            it.isString -> it.asString
            else -> null
        }
    },
    "extensions" to extensions
)
