package com.amazonaws.amplify.amplify_api.types.rest_api

import android.os.Handler
import android.os.Looper
import com.amazonaws.amplify.amplify_api.types.FlutterApiErrorMessage
import com.amazonaws.amplify.amplify_api.types.FlutterApiErrorUtils
import com.amazonaws.amplify.amplify_api_rest.types.FlutterRestInputs
import com.amazonaws.amplify.amplify_api_rest.types.FlutterRestResponse
import com.amplifyframework.api.ApiException
import com.amplifyframework.api.rest.RestOperation
import com.amplifyframework.api.rest.RestOptions
import com.amplifyframework.api.rest.RestResponse
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import io.flutter.plugin.common.MethodChannel.Result
import kotlin.reflect.KFunction3
import kotlin.reflect.KFunction4

typealias RestAPIFunction3 = KFunction3<
        @ParameterName(name = "restOptions") RestOptions,
        @ParameterName(name = "restConsumer") Consumer<RestResponse>,
        @ParameterName(name = "exceptionConsumer") Consumer<ApiException>,
        RestOperation?>

typealias RestAPIFunction4 = KFunction4<
        @ParameterName(name = "apiName") String,
        @ParameterName(name = "restOptions") RestOptions,
        @ParameterName(name = "restConsumer") Consumer<RestResponse>,
        @ParameterName(name = "exceptionConsumer") Consumer<ApiException>,
        RestOperation?>

class AmplifyRestAPIModule {

    private var operationsMap: HashMap<String, RestOperation> = HashMap()
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:api")

    private fun restFunctionHelper(
            methodName: String,
            flutterResult: Result,
            request: Map<String, *>,
            function3: RestAPIFunction3,
            function4: RestAPIFunction4
    ) {
        if (!FlutterRestInputs.isValidMap(flutterResult, request)) return

        val inputs = FlutterRestInputs(request)
        val cancelToken = inputs.getCancelToken()
        val apiName: String? = inputs.getApiPath()
        val options: RestOptions = FlutterRestInputs(request).getRestOptions()

        try {

            if (apiName == null) {
                var operation: RestOperation? = function3(options,
                        Consumer { result -> prepareRestResponseResult(flutterResult, result, methodName, cancelToken) },
                        Consumer { error ->
                            prepareError(
                                    flutterResult,
                                    FlutterApiErrorMessage.stringToAPIRestError(methodName).toString(),
                                    cancelToken,
                                    error)
                        }
                )
                operationsMap[cancelToken] = operation!!
            } else {
                var operation: RestOperation? = function4(
                        apiName,
                        options,
                        Consumer { result -> prepareRestResponseResult(flutterResult, result, methodName, cancelToken) },
                        Consumer { error ->
                            prepareError(
                                    flutterResult,
                                    FlutterApiErrorMessage.stringToAPIRestError(methodName).toString(),
                                    cancelToken,
                                    error)
                        }
                )
                operationsMap[cancelToken] = operation!!
            }

        } catch (e: Exception) {
            prepareError(
                    flutterResult,
                    FlutterApiErrorMessage.stringToAPIRestError(methodName).toString(),
                    cancelToken,
                    e)
        }
    }

    fun prepareError(flutterResult: Result, msg: String, cancelToken: String, error: Exception) {
        if (!cancelToken.isNullOrEmpty()) removeCancelToken(cancelToken)
        FlutterApiErrorUtils.createFlutterError(flutterResult, msg, error)
    }

    private fun prepareRestResponseResult(flutterResult: Result, result: RestResponse, methodName: String, cancelToken: String = "") {

        var restResponse = FlutterRestResponse(result)

        if (!cancelToken.isNullOrEmpty()) removeCancelToken(cancelToken)

        // if code is not 200 then throw an exception
        if (!result.code.isSuccessful) {
            FlutterApiErrorUtils.handleAPIError(
                    flutterResult,
                    FlutterApiErrorMessage.stringToAPIRestError(methodName).toString(),
                    "The HTTP response status code is [" + result.code.toString().substring(16,19) + "].",
                    """
                    The metadata associated with the response is contained in the HTTPURLResponse.
                    For more information on HTTP status codes, take a look at
                    https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
                    """
            )
            return
        } else {
            Handler(Looper.getMainLooper()).post {
                flutterResult.success(restResponse.toValueMap())
            }
        }
    }

    private fun removeCancelToken(cancelToken: String) {
        if (operationsMap.containsKey(cancelToken)) {
            operationsMap.remove(cancelToken)
        }
    }

    fun isValidArgumentsMap(flutterResult: Result, args: Any): Boolean {

        try {
            var arguments = args as Map<String, Any>
            var restOptions = arguments["restOptions"] as Map<String, Any>
            var cancelToken = arguments["cancelToken"] as String
        } catch (e: ClassCastException) {
            FlutterApiErrorUtils.createFlutterError(
                    flutterResult,
                    FlutterApiErrorMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
                    e
            )
            return false;
        } catch (e: Exception) {
            FlutterApiErrorUtils.createFlutterError(
                    flutterResult,
                    FlutterApiErrorMessage.AMPLIFY_REQUEST_MALFORMED.toString(),
                    e
            )
            return false;
        }

        return true;
    }

    fun onGet(flutterResult: Result, arguments: Map<String, *>) {
        restFunctionHelper("get", flutterResult, arguments, this::get, this::get)
    }

    fun onPost(flutterResult: Result, arguments: Map<String, *>) {
        restFunctionHelper("post", flutterResult, arguments, this::post, this::post)
    }

    fun onPut(flutterResult: Result, arguments: Map<String, *>) {
        restFunctionHelper("put", flutterResult, arguments, this::put, this::put)
    }

    fun onDelete(flutterResult: Result, arguments: Map<String, *>) {
        restFunctionHelper("delete", flutterResult, arguments, this::delete, this::delete)
    }

    fun onHead(flutterResult: Result, arguments: Map<String, *>) {
        restFunctionHelper("head", flutterResult, arguments, this::delete, this::delete)
    }

    fun onPatch(flutterResult: Result, arguments: Map<String, *>) {
        restFunctionHelper("patch", flutterResult, arguments, this::delete, this::delete)
    }

    fun onCancel(
            flutterResult: Result,
            cancelToken: String) {

        if (operationsMap.containsKey(cancelToken)) {
            operationsMap[cancelToken]!!.cancel()
            operationsMap.remove(cancelToken)
            flutterResult.success("Operation Canceled")
        } else {
            flutterResult.error(
                    "AmplifyRestAPI-CancelError",
                    "RestOperation completed or expired and cannot be canceled anymore",
                    "Operation does not exist")
        }
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