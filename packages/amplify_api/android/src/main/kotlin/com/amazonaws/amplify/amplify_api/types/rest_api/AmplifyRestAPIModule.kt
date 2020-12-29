package com.amazonaws.amplify.amplify_api.types.rest_api

import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import com.amazonaws.amplify.amplify_api.types.FlutterApiErrorMessage
import com.amazonaws.amplify.amplify_api.types.FlutterErrorHandler
import com.amazonaws.amplify.amplify_api_rest.types.FlutterRestInputs
import com.amazonaws.amplify.amplify_api_rest.types.FlutterRestResponse
import com.amplifyframework.api.ApiException
import com.amplifyframework.api.rest.RestOperation
import com.amplifyframework.api.rest.RestOptions
import com.amplifyframework.api.rest.RestResponse
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer

import io.flutter.plugin.common.MethodChannel.Result
import java.lang.ClassCastException
import kotlin.reflect.KFunction3
import kotlin.reflect.KFunction4

class AmplifyRestAPIModule {

    private var operationsMap : HashMap<String, RestOperation> = HashMap()
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:api")

    private fun restFunctionHelper(
            @NonNull methodName: String,
            @NonNull flutterResult: Result,
            @NonNull request: Map<String, *>,
            @NonNull function3: KFunction3<
                    @ParameterName(name = "restOptions") RestOptions,
                    @ParameterName(name = "restConsumer") Consumer<RestResponse>,
                    @ParameterName(name = "exceptionConsumer") Consumer<ApiException>,
                    RestOperation?>,
            @NonNull function4: KFunction4<
                    @ParameterName(name = "apiName") String,
                    @ParameterName(name = "restOptions") RestOptions,
                    @ParameterName(name = "restConsumer") Consumer<RestResponse>,
                    @ParameterName(name = "exceptionConsumer") Consumer<ApiException>,
                    RestOperation?>
    ){
        if(!FlutterRestInputs.isValidMap(flutterResult, request)) return

        val inputs = FlutterRestInputs(request)
        val code = inputs.getCode()
        val apiName: String? = inputs.getApiPath()
        val options: RestOptions = FlutterRestInputs(request).getRestOptions()

        try {

            if(apiName == null){
                var operation : RestOperation? = function3(options,
                        Consumer { result -> prepareRestResponseResult(flutterResult, result, methodName, code) },
                        Consumer { error ->
                            FlutterErrorHandler.createFlutterError(
                                    flutterResult,
                                    FlutterApiErrorMessage.stringToAPIRestError(methodName).toString(),
                                    error)
                        }
                )
                operationsMap[code] = operation!!
            }
            else{
                var operation : RestOperation? = function4(
                        apiName,
                        options,
                        Consumer { result -> prepareRestResponseResult(flutterResult, result, methodName, code) },
                        Consumer { error ->
                            FlutterErrorHandler.createFlutterError(
                                    flutterResult,
                                    FlutterApiErrorMessage.stringToAPIRestError(methodName).toString(),
                                    error)
                        }
                )
                operationsMap[code] = operation!!
            }

        } catch(e: Exception) {
            FlutterErrorHandler.createFlutterError(
                    flutterResult,
                    FlutterApiErrorMessage.stringToAPIRestError(methodName).toString(),
                    e)
        }
    }

    private fun prepareRestResponseResult(@NonNull flutterResult: Result, @NonNull result: RestResponse, methodName: String, code: String = ""){

        var restResponse = FlutterRestResponse(result)

        // if code is not 200 then throw an exception
        if(!result.code.isSuccessful){
            // TODO HARDCODING STATUS CODE BECAUSE IT'S PRIVATE IN ANDROID RIGHT NOW ...
            FlutterErrorHandler.createFlutterError(flutterResult, FlutterApiErrorMessage.stringToAPIRestError(methodName).toString(), 400 )
            return
        }
        else {
            Handler(Looper.getMainLooper()).post {
                flutterResult.success(restResponse.toValueMap())
            }
            if (!code.isNullOrEmpty()) removeCode(code)
        }
    }

    private fun removeCode(code: String){
        if(operationsMap.containsKey(code)){
            operationsMap.remove(code)
        }
    }

    fun isValidArgumentsMap(flutterResult: Result, @NonNull args: Any): Boolean{

        try{
            var arguments = args as Map<String, Any>
            var restOptions = arguments["restOptions"] as Map<String, Any>
            var code = arguments["code"] as String
        } catch(e: ClassCastException){
            FlutterErrorHandler.createFlutterError(
                    flutterResult,
                    FlutterApiErrorMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
                    e
            )
            return false;
        } catch(e: Exception){
            FlutterErrorHandler.createFlutterError(
                    flutterResult,
                    FlutterApiErrorMessage.AMPLIFY_REQUEST_MALFORMED.toString(),
                    e
            )
            return false;
        }

        return true;
    }

    fun onGet(@NonNull flutterResult: Result, @NonNull arguments: Map<String, *>) {
        restFunctionHelper("get", flutterResult, arguments, this::get, this::get)
    }

    fun onPost(@NonNull flutterResult: Result, @NonNull arguments: Map<String, *>) {
        restFunctionHelper("post", flutterResult, arguments, this::post, this::post)

    }
    fun onPut(@NonNull flutterResult: Result, @NonNull arguments: Map<String, *>) {
        restFunctionHelper("put", flutterResult, arguments, this::put, this::put)
    }

    fun onDelete(@NonNull flutterResult: Result, @NonNull arguments: Map<String, *>) {
        restFunctionHelper("delete", flutterResult, arguments, this::delete, this::delete)
    }
    fun onCancel(
            @NonNull flutterResult: Result,
            @NonNull code: String){

        if(operationsMap.containsKey(code)){
            operationsMap[code]!!.cancel()
            operationsMap.remove(code)
            flutterResult.success("Operation Canceled")
        }
        else{
            flutterResult.error(
                    "Cancel - RestOperation referenced with code not found",
                    "The RestOperation may have already completed or expired and cannot be canceled anymore",
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
}