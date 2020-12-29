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
import com.amplifyframework.api.aws.AWSApiPlugin
import com.amplifyframework.api.aws.GsonVariablesSerializer
import com.amplifyframework.api.graphql.SimpleGraphQLRequest
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
    private val handler = Handler(Looper.getMainLooper())
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
      "query" -> query(result, arguments)
      "mutate" -> mutate(result, arguments)
      else -> result.notImplemented()
    }
  }

    @VisibleForTesting
    fun query(flutterResult: Result, request: Map<String, Any>) {
        var document: String
        var variables: Map<String, Any>

    try {
      document = request["document"] as String
      variables = request["variables"] as Map<String, Any>
    } catch (e: ClassCastException) {
      FlutterApiErrorUtils.createFlutterError(
              flutterResult,
              FlutterApiErrorMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
              e)
      return
    } catch (e: Exception) {
      FlutterApiErrorUtils.createFlutterError(
              flutterResult,
              FlutterApiErrorMessage.AMPLIFY_REQUEST_MALFORMED.toString(),
              e)
      return
    }
    Amplify.API.query(
        SimpleGraphQLRequest<String>(
                document,
                variables,
                String::class.java,
                GsonVariablesSerializer()
        ),
        {response ->
          var result: Map<String, Any> = mapOf(
                  "data" to response.data,
                  "errors" to response.errors.map {it.message}
          )
          LOG.info("GraphQL query operation succeeded with response: $result")
          handler.post { flutterResult.success(result) }
        },
        {
          LOG.error("GraphQL query operation failed", it)
          FlutterApiErrorUtils.createFlutterError(
                  flutterResult,
                  FlutterApiErrorMessage.AMPLIFY_API_QUERY_FAILED.toString(),
                  it)
        }
    )
  }

    @VisibleForTesting
    fun mutate(flutterResult: Result, request: Map<String, Any>) {
        var document: String
        var variables: Map<String, Any>

    try {
      document = request["document"] as String
      variables = request["variables"] as Map<String, Any>
    } catch (e: ClassCastException) {
      FlutterApiErrorUtils.createFlutterError(
              flutterResult,
              FlutterApiErrorMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
              e)
      return
    } catch (e: Exception) {
      FlutterApiErrorUtils.createFlutterError(
              flutterResult,
              FlutterApiErrorMessage.AMPLIFY_REQUEST_MALFORMED.toString(),
              e)
      return
    }

    Amplify.API.mutate(
            SimpleGraphQLRequest<String>(
                    document,
                    variables,
                    String::class.java,
                    GsonVariablesSerializer()
            ),
            {response ->
              var result: Map<String, Any> = mapOf(
                      "data" to response.data,
                      "errors" to response.errors.map {it.message}
              )
              LOG.info("GraphQL mutate operation succeeded with response : $result")
              handler.post { flutterResult.success(result) }
            },
            {
              LOG.error("GraphQL mutate operation failed", it)
              FlutterApiErrorUtils.createFlutterError(
                      flutterResult,
                      FlutterApiErrorMessage.AMPLIFY_API_MUTATE_FAILED.toString(),
                      it
              )
            }
    )
  }

  // ====== RestAPI =======
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

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    this.mainActivity = binding.activity
  }

  override fun onDetachedFromActivity() {
    this.mainActivity = null
  }

  override fun onDetachedFromActivityForConfigChanges() {
    onDetachedFromActivity()
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    onAttachedToActivity(binding)
  }

  override fun onDetachedFromEngine( binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
