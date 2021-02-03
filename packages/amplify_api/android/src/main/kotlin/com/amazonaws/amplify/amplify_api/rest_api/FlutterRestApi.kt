package com.amazonaws.amplify.amplify_api.rest_api

import android.os.Handler
import android.os.Looper
import com.amazonaws.amplify.amplify_api.FlutterApiRequest
import com.amazonaws.amplify.amplify_api.FlutterGraphQLApi
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

class FlutterRestApi {

    companion object {
        private val LOG = Amplify.Logging.forNamespace("amplify:flutter:api")
        private val handler = Handler(Looper.getMainLooper())

        private fun restFunctionHelper(
                methodName: String,
                flutterResult: Result,
                request: Map<String, Any>,
                functionWithoutApiName: FunctionWithoutApiName,
                functionWithApiName: FunctionWithApiName
        ) {
            var cancelToken : String
            var apiName: String?
            var options: RestOptions

            try {
                cancelToken = FlutterApiRequest.getCancelToken(request)
                apiName = FlutterApiRequest.getApiPath(request)
                options = FlutterApiRequest.getRestOptions(request)
            } catch (e: Exception) {
                handler.post {
                    ExceptionUtil.postExceptionToFlutterChannel(flutterResult, "ApiException",
                            ExceptionUtil.createSerializedUnrecognizedError(e))
                }
                return
            }

            try {
                var operation: RestOperation?
                if (apiName == null) {
                    operation = functionWithoutApiName(options,
                            Consumer { result ->
                                if (!cancelToken.isNullOrEmpty()) OperationsManager.removeOperation(cancelToken)
                                //LOG.debug("$methodName operation succeeded with response: $result")
                                prepareRestResponseResult(flutterResult, result, methodName) },
                            Consumer { exception ->
                                if (!cancelToken.isNullOrEmpty()) OperationsManager.removeOperation(cancelToken)
                                //LOG.error("$methodName operation failed", exception)
                                handler.post {
                                    ExceptionUtil.postExceptionToFlutterChannel(flutterResult, "ApiException",
                                            ExceptionUtil.createSerializedError(exception))
                                }
                            }
                    )
                } else {
                    operation = functionWithApiName(
                            apiName,
                            options,
                            Consumer { result ->
                                if (!cancelToken.isNullOrEmpty()) OperationsManager.removeOperation(cancelToken)
                                //LOG.debug("$methodName operation succeeded with response: $result")
                                prepareRestResponseResult(flutterResult, result, methodName) },
                            Consumer { exception ->
                                if (!cancelToken.isNullOrEmpty()) OperationsManager.removeOperation(cancelToken)
                                //LOG.error("$methodName operation failed", exception)
                                handler.post {
                                    ExceptionUtil.postExceptionToFlutterChannel(flutterResult, "ApiException",
                                            ExceptionUtil.createSerializedError(exception))
                                }
                            }
                    )
                }
                if(operation != null) {
                    OperationsManager.addOperation(cancelToken, operation)
                }

            } catch (e: Exception) {
                handler.post {
                    ExceptionUtil.postExceptionToFlutterChannel(flutterResult, "ApiException",
                            ExceptionUtil.createSerializedUnrecognizedError(e))
                }
            }
        }

        private fun prepareRestResponseResult(flutterResult: Result, result: RestResponse, methodName: String) {

            var restResponse = FlutterSerializedRestResponse(result)

            var recoverySuggestion = """
                    The metadata associated with the response is contained in the HTTPURLResponse.
                    For more information on HTTP status codes, take a look at
                    https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
                    """

            // if code is not 200 then throw an exception
            /*
            result.code.toString = "Code{" +
                "statusCode=" + statusCode +
                '}';
             */
            if (!result.code.isSuccessful) {
                handler.post {
                    ExceptionUtil.postExceptionToFlutterChannel(flutterResult, "ApiException",
                            ExceptionUtil.createSerializedError(
                                    ApiException(
                                            "The HTTP response status code is [" + result.code.toString().substring(16, 19) + "].",
                                            recoverySuggestion)
                            )
                    )
                }
                return
            } else {
                Handler(Looper.getMainLooper()).post {
                    flutterResult.success(restResponse.toValueMap())
                }
            }
        }

        fun get(flutterResult: Result, arguments: Map<String, Any>) {
            restFunctionHelper("get", flutterResult, arguments, this::get, this::get)
        }

        fun post(flutterResult: Result, arguments: Map<String, Any>) {
            restFunctionHelper("post", flutterResult, arguments, this::post, this::post)
        }

        fun put(flutterResult: Result, arguments: Map<String, Any>) {
            restFunctionHelper("put", flutterResult, arguments, this::put, this::put)
        }

        fun delete(flutterResult: Result, arguments: Map<String, Any>) {
            restFunctionHelper("delete", flutterResult, arguments, this::delete, this::delete)
        }

        fun head(flutterResult: Result, arguments: Map<String, Any>) {
            restFunctionHelper("head", flutterResult, arguments, this::head, this::head)
        }

        fun patch(flutterResult: Result, arguments: Map<String, Any>) {
            restFunctionHelper("patch", flutterResult, arguments, this::patch, this::patch)
        }


        /*
        GET
        */
        private fun get(
                restOptions: RestOptions,
                restConsumer: Consumer<RestResponse>,
                exceptionConsumer: Consumer<ApiException>): RestOperation? {
            return Amplify.API.get(restOptions, restConsumer, exceptionConsumer)
        }

        private fun get(
                apiName: String,
                restOptions: RestOptions,
                restConsumer: Consumer<RestResponse>,
                exceptionConsumer: Consumer<ApiException>): RestOperation? {
            return Amplify.API.get(apiName, restOptions, restConsumer, exceptionConsumer)
        }

        /*
        POST
         */
        private fun post(
                restOptions: RestOptions,
                restConsumer: Consumer<RestResponse>,
                exceptionConsumer: Consumer<ApiException>): RestOperation? {
            return Amplify.API.post(restOptions, restConsumer, exceptionConsumer)
        }

        private fun post(
                apiName: String,
                restOptions: RestOptions,
                restConsumer: Consumer<RestResponse>,
                exceptionConsumer: Consumer<ApiException>): RestOperation? {
            return Amplify.API.post(apiName, restOptions, restConsumer, exceptionConsumer)
        }

        /*
        PUT
         */
        private fun put(
                restOptions: RestOptions,
                restConsumer: Consumer<RestResponse>,
                exceptionConsumer: Consumer<ApiException>): RestOperation? {
            return Amplify.API.put(restOptions, restConsumer, exceptionConsumer)
        }

        private fun put(
                apiName: String,
                restOptions: RestOptions,
                restConsumer: Consumer<RestResponse>,
                exceptionConsumer: Consumer<ApiException>): RestOperation? {
            return Amplify.API.put(apiName, restOptions, restConsumer, exceptionConsumer)
        }

        /*
        DELETE
         */
        private fun delete(
                restOptions: RestOptions,
                restConsumer: Consumer<RestResponse>,
                exceptionConsumer: Consumer<ApiException>): RestOperation? {
            return Amplify.API.delete(restOptions, restConsumer, exceptionConsumer)
        }

        private fun delete(
                apiName: String,
                restOptions: RestOptions,
                restConsumer: Consumer<RestResponse>,
                exceptionConsumer: Consumer<ApiException>): RestOperation? {
            return Amplify.API.delete(apiName, restOptions, restConsumer, exceptionConsumer)
        }

        /*
        HEAD
        */
        private fun head(
                restOptions: RestOptions,
                restConsumer: Consumer<RestResponse>,
                exceptionConsumer: Consumer<ApiException>): RestOperation? {
            return Amplify.API.head(restOptions, restConsumer, exceptionConsumer)
        }

        private fun head(
                apiName: String,
                restOptions: RestOptions,
                restConsumer: Consumer<RestResponse>,
                exceptionConsumer: Consumer<ApiException>): RestOperation? {
            return Amplify.API.head(apiName, restOptions, restConsumer, exceptionConsumer)
        }

        /*
        PATCH
        */
        private fun patch(
                restOptions: RestOptions,
                restConsumer: Consumer<RestResponse>,
                exceptionConsumer: Consumer<ApiException>): RestOperation? {
            return Amplify.API.patch(restOptions, restConsumer, exceptionConsumer)
        }

        private fun patch(
                apiName: String,
                restOptions: RestOptions,
                restConsumer: Consumer<RestResponse>,
                exceptionConsumer: Consumer<ApiException>): RestOperation? {
            return Amplify.API.patch(apiName, restOptions, restConsumer, exceptionConsumer)
        }
    }
}