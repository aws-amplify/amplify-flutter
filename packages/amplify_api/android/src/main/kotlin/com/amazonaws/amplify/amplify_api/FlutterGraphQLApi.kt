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
import com.amazonaws.amplify.amplify_api.rest_api.FlutterRestApi
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil
import com.amplifyframework.api.aws.GsonVariablesSerializer
import com.amplifyframework.api.graphql.SimpleGraphQLRequest
import com.amplifyframework.api.graphql.SubscriptionType
import com.amplifyframework.core.Amplify
import io.flutter.plugin.common.MethodChannel

class FlutterGraphQLApi {
    companion object {
        private val handler = Handler(Looper.getMainLooper())
        private val LOG = Amplify.Logging.forNamespace("amplify:flutter:api")

        @JvmStatic
        fun query(flutterResult: MethodChannel.Result, request: Map<String, Any>) {
            var document: String
            var variables: Map<String, Any>
            var cancelToken: String

            try {
                document = FlutterApiRequest.getGraphQLDocument(request)
                variables = FlutterApiRequest.getVariables(request)
                cancelToken = FlutterApiRequest.getCancelToken(request)
            } catch (e: Exception) {
                handler.post {
                    ExceptionUtil.postExceptionToFlutterChannel(flutterResult, "ApiException",
                            ExceptionUtil.createSerializedUnrecognizedError(e))
                }
                return
            }
            var operation = Amplify.API.query(
                    SimpleGraphQLRequest<String>(
                            document,
                            variables,
                            String::class.java,
                            GsonVariablesSerializer()
                    ),
                    { response ->
                        if (!cancelToken.isNullOrEmpty()) OperationsManager.removeOperation(cancelToken)

                        var result: Map<String, Any> = mapOf(
                                "data" to response.data,
                                "errors" to response.errors.map { it.message }
                        )
                        LOG.debug("GraphQL query operation succeeded with response: $result")
                        handler.post { flutterResult.success(result) }
                    },
                    { exception ->
                        if (!cancelToken.isNullOrEmpty()) OperationsManager.removeOperation(cancelToken)

                        LOG.error("GraphQL query operation failed", exception)
                        handler.post {
                            ExceptionUtil.postExceptionToFlutterChannel(flutterResult, "ApiException",
                                    ExceptionUtil.createSerializedError(exception))
                        }
                    }
            )
            if (operation != null) {
                OperationsManager.addOperation(cancelToken, operation)
            }
        }

        @JvmStatic
        fun mutate(flutterResult: MethodChannel.Result, request: Map<String, Any>) {
            var document: String
            var variables: Map<String, Any>
            var cancelToken: String

            try {
                document = FlutterApiRequest.getGraphQLDocument(request)
                variables = FlutterApiRequest.getVariables(request)
                cancelToken = FlutterApiRequest.getCancelToken(request)
            } catch (e: Exception) {
                handler.post {
                    ExceptionUtil.postExceptionToFlutterChannel(flutterResult, "ApiException",
                            ExceptionUtil.createSerializedUnrecognizedError(e))
                }
                return
            }
            var operation = Amplify.API.mutate(
                    SimpleGraphQLRequest<String>(
                            document,
                            variables,
                            String::class.java,
                            GsonVariablesSerializer()
                    ),
                    { response ->
                        if (!cancelToken.isNullOrEmpty()) OperationsManager.removeOperation(cancelToken)

                        var result: Map<String, Any> = mapOf(
                                "data" to response.data,
                                "errors" to response.errors.map { it.message }
                        )
                        LOG.debug("GraphQL mutate operation succeeded with response : $result")
                        handler.post { flutterResult.success(result) }
                    },
                    { exception ->
                        if (!cancelToken.isNullOrEmpty()) OperationsManager.removeOperation(cancelToken)

                        LOG.error("GraphQL mutate operation failed", exception)
                        handler.post {
                            ExceptionUtil.postExceptionToFlutterChannel(flutterResult, "ApiException",
                                    ExceptionUtil.createSerializedError(exception))
                        }
                    }
            )
            if (operation != null) {
                OperationsManager.addOperation(cancelToken, operation)
            }
        }

        @JvmStatic
        fun subscribe(flutterResult: MethodChannel.Result, request: Map<String, Any>, graphqlSubscriptionStreamHandler: GraphQLSubscriptionStreamHandler) {
            var document: String
            var variables: Map<String, Any>
            var id: String
            var established = false

            try {
                document = FlutterApiRequest.getGraphQLDocument(request)
                variables = FlutterApiRequest.getVariables(request)
                id = FlutterApiRequest.getCancelToken(request)
            } catch (e: Exception) {
                handler.post {
                    ExceptionUtil.postExceptionToFlutterChannel(flutterResult, "ApiException",
                            ExceptionUtil.createSerializedUnrecognizedError(e))
                }
                return
            }
            var operation = Amplify.API.subscribe(
                    SimpleGraphQLRequest<String>(
                            document,
                            variables,
                            String::class.java,
                            GsonVariablesSerializer()
                    ),
                    {
                        established = true
                        LOG.debug("Subscription established: $id")
                        handler.post { flutterResult.success(null) }
                    },
                    {response ->
                        val payload: Map<String, Any> = mapOf(
                                "data" to response.data,
                                "errors" to response.errors.map { it.message }
                        )
                        LOG.debug("GraphQL subscription event received: $payload")
                        graphqlSubscriptionStreamHandler.sendEvent(payload, id, GraphQLSubscriptionEventTypes.DATA)
                    },
                    {
                        if (!id.isNullOrEmpty()) OperationsManager.removeOperation(id)
                        if (established) {
                            graphqlSubscriptionStreamHandler.sendError("ApiException", ExceptionUtil.createSerializedError(it))
                        } else {
                            handler.post {
                                ExceptionUtil.postExceptionToFlutterChannel(flutterResult, "ApiException",
                                        ExceptionUtil.createSerializedError(it))
                            }
                        }
                    },
                    {
                        if (!id.isNullOrEmpty()) OperationsManager.removeOperation(id)
                        LOG.debug("Subscription has been closed successfully")
                        graphqlSubscriptionStreamHandler.sendEvent(null, id, GraphQLSubscriptionEventTypes.DONE)
                    }
            )
            if (operation != null) {
                OperationsManager.addOperation(id, operation)
            }
        }

    }
}