/*
 *
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
 *
 */

package com.amazonaws.amplify.amplify_api.rest_api

import android.os.Handler
import android.os.Looper
import com.amazonaws.amplify.amplify_api.FlutterApiRequest
import com.amazonaws.amplify.amplify_api.OperationsManager
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil
import com.amplifyframework.api.ApiException
import com.amplifyframework.api.rest.RestOperation
import com.amplifyframework.api.rest.RestOptions
import com.amplifyframework.api.rest.RestResponse
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import io.flutter.plugin.common.MethodChannel.Result
import kotlin.reflect.KFunction3
import kotlin.reflect.KFunction4

typealias FunctionWithoutApiName = KFunction3<
        @ParameterName(name = "restOptions") RestOptions,
        @ParameterName(name = "restConsumer") Consumer<RestResponse>,
        @ParameterName(name = "exceptionConsumer") Consumer<ApiException>,
        RestOperation?>

typealias FunctionWithApiName = KFunction4<
        @ParameterName(name = "apiName") String,
        @ParameterName(name = "restOptions") RestOptions,
        @ParameterName(name = "restConsumer") Consumer<RestResponse>,
        @ParameterName(name = "exceptionConsumer") Consumer<ApiException>,
        RestOperation?>

enum class RestOperationType(val value: String) {
    GET("get"),
    POST("post"),
    PUT("put"),
    DELETE("delete"),
    HEAD("head"),
    PATCH("patch");

    fun requiresBody(): Boolean = when (this) {
        POST, PUT, PATCH -> true
        else -> false
    }
}

object FlutterRestApi {
    private val handler = Handler(Looper.getMainLooper())

    private fun restFunctionHelper(
        operationType: RestOperationType,
        flutterResult: Result,
        request: Map<String, Any>,
        functionWithoutApiName: FunctionWithoutApiName,
        functionWithApiName: FunctionWithApiName
    ) {
        val cancelToken: String
        val apiName: String?
        val options: RestOptions

        try {
            cancelToken = FlutterApiRequest.getCancelToken(request)
            apiName = FlutterApiRequest.getRestApiName(request)
            options = FlutterApiRequest.getRestOptions(request)

            // Needed to prevent Android library from throwing a fatal error when body not present in some methods. https://github.com/aws-amplify/amplify-android/issues/1355
            FlutterApiRequest.checkForEmptyBodyIfRequired(options, operationType)
        } catch (e: ApiException) {
            handler.post {
                ExceptionUtil.postExceptionToFlutterChannel(
                    flutterResult, "ApiException",
                    ExceptionUtil.createSerializedError(e)
                )
            }
            return
        } catch (e: Exception) {
            handler.post {
                ExceptionUtil.postExceptionToFlutterChannel(
                    flutterResult, "ApiException",
                    ExceptionUtil.createSerializedUnrecognizedError(e)
                )
            }
            return
        }

        try {
            val operation: RestOperation?
            if (apiName == null) {
                operation = functionWithoutApiName(
                    options,
                    Consumer { result ->
                        OperationsManager.removeOperation(cancelToken)
                        // LOG.debug("$methodName operation succeeded with response: $result")
                        prepareRestResponseResult(flutterResult, result)
                    },
                    Consumer { exception ->
                        OperationsManager.removeOperation(cancelToken)
                        // LOG.error("$methodName operation failed", exception)
                        handler.post {
                            ExceptionUtil.postExceptionToFlutterChannel(
                                flutterResult, "ApiException",
                                ExceptionUtil.createSerializedError(exception)
                            )
                        }
                    }
                )
            } else {
                operation = functionWithApiName(
                    apiName,
                    options,
                    Consumer { result ->
                        OperationsManager.removeOperation(cancelToken)
                        // LOG.debug("$methodName operation succeeded with response: $result")
                        prepareRestResponseResult(flutterResult, result)
                    },
                    Consumer { exception ->
                        OperationsManager.removeOperation(cancelToken)
                        // LOG.error("$methodName operation failed", exception)
                        handler.post {
                            ExceptionUtil.postExceptionToFlutterChannel(
                                flutterResult, "ApiException",
                                ExceptionUtil.createSerializedError(exception)
                            )
                        }
                    }
                )
            }
            if (operation != null) {
                OperationsManager.addOperation(cancelToken, operation)
            }
        } catch (e: Exception) {
            handler.post {
                ExceptionUtil.postExceptionToFlutterChannel(
                    flutterResult, "ApiException",
                    ExceptionUtil.createSerializedUnrecognizedError(e)
                )
            }
        }
    }

    private fun prepareRestResponseResult(
        flutterResult: Result,
        result: RestResponse
    ) {
        val restResponse = FlutterSerializedRestResponse(result)

        Handler(Looper.getMainLooper()).post {
            flutterResult.success(restResponse.toValueMap())
        }
    }

    fun get(flutterResult: Result, arguments: Map<String, Any>) {
        restFunctionHelper(RestOperationType.GET, flutterResult, arguments, this::get, this::get)
    }

    fun post(flutterResult: Result, arguments: Map<String, Any>) {
        restFunctionHelper(RestOperationType.POST, flutterResult, arguments, this::post, this::post)
    }

    fun put(flutterResult: Result, arguments: Map<String, Any>) {
        restFunctionHelper(RestOperationType.PUT, flutterResult, arguments, this::put, this::put)
    }

    fun delete(flutterResult: Result, arguments: Map<String, Any>) {
        restFunctionHelper(
            RestOperationType.DELETE,
            flutterResult,
            arguments,
            this::delete,
            this::delete
        )
    }

    fun head(flutterResult: Result, arguments: Map<String, Any>) {
        restFunctionHelper(RestOperationType.HEAD, flutterResult, arguments, this::head, this::head)
    }

    fun patch(flutterResult: Result, arguments: Map<String, Any>) {
        restFunctionHelper(
            RestOperationType.PATCH,
            flutterResult,
            arguments,
            this::patch,
            this::patch
        )
    }

    /*
    GET
    */
    private fun get(
        restOptions: RestOptions,
        restConsumer: Consumer<RestResponse>,
        exceptionConsumer: Consumer<ApiException>
    ): RestOperation? {
        return Amplify.API.get(restOptions, restConsumer, exceptionConsumer)
    }

    private fun get(
        apiName: String,
        restOptions: RestOptions,
        restConsumer: Consumer<RestResponse>,
        exceptionConsumer: Consumer<ApiException>
    ): RestOperation? {
        return Amplify.API.get(apiName, restOptions, restConsumer, exceptionConsumer)
    }

    /*
    POST
     */
    private fun post(
        restOptions: RestOptions,
        restConsumer: Consumer<RestResponse>,
        exceptionConsumer: Consumer<ApiException>
    ): RestOperation? {
        return Amplify.API.post(restOptions, restConsumer, exceptionConsumer)
    }

    private fun post(
        apiName: String,
        restOptions: RestOptions,
        restConsumer: Consumer<RestResponse>,
        exceptionConsumer: Consumer<ApiException>
    ): RestOperation? {
        return Amplify.API.post(apiName, restOptions, restConsumer, exceptionConsumer)
    }

    /*
    PUT
     */
    private fun put(
        restOptions: RestOptions,
        restConsumer: Consumer<RestResponse>,
        exceptionConsumer: Consumer<ApiException>
    ): RestOperation? {
        return Amplify.API.put(restOptions, restConsumer, exceptionConsumer)
    }

    private fun put(
        apiName: String,
        restOptions: RestOptions,
        restConsumer: Consumer<RestResponse>,
        exceptionConsumer: Consumer<ApiException>
    ): RestOperation? {
        return Amplify.API.put(apiName, restOptions, restConsumer, exceptionConsumer)
    }

    /*
    DELETE
     */
    private fun delete(
        restOptions: RestOptions,
        restConsumer: Consumer<RestResponse>,
        exceptionConsumer: Consumer<ApiException>
    ): RestOperation? {
        return Amplify.API.delete(restOptions, restConsumer, exceptionConsumer)
    }

    private fun delete(
        apiName: String,
        restOptions: RestOptions,
        restConsumer: Consumer<RestResponse>,
        exceptionConsumer: Consumer<ApiException>
    ): RestOperation? {
        return Amplify.API.delete(apiName, restOptions, restConsumer, exceptionConsumer)
    }

    /*
    HEAD
    */
    private fun head(
        restOptions: RestOptions,
        restConsumer: Consumer<RestResponse>,
        exceptionConsumer: Consumer<ApiException>
    ): RestOperation? {
        return Amplify.API.head(restOptions, restConsumer, exceptionConsumer)
    }

    private fun head(
        apiName: String,
        restOptions: RestOptions,
        restConsumer: Consumer<RestResponse>,
        exceptionConsumer: Consumer<ApiException>
    ): RestOperation? {
        return Amplify.API.head(apiName, restOptions, restConsumer, exceptionConsumer)
    }

    /*
    PATCH
    */
    private fun patch(
        restOptions: RestOptions,
        restConsumer: Consumer<RestResponse>,
        exceptionConsumer: Consumer<ApiException>
    ): RestOperation? {
        return Amplify.API.patch(restOptions, restConsumer, exceptionConsumer)
    }

    private fun patch(
        apiName: String,
        restOptions: RestOptions,
        restConsumer: Consumer<RestResponse>,
        exceptionConsumer: Consumer<ApiException>
    ): RestOperation? {
        return Amplify.API.patch(apiName, restOptions, restConsumer, exceptionConsumer)
    }
}
