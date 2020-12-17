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

import android.app.Activity
import android.content.Context
import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import androidx.annotation.VisibleForTesting
import com.amazonaws.amplify.amplify_api.types.FlutterApiErrorMessage
import com.amplifyframework.api.ApiException
import com.amplifyframework.api.aws.AWSApiPlugin
import com.amplifyframework.api.aws.GsonVariablesSerializer
import com.amplifyframework.api.graphql.SimpleGraphQLRequest
import com.amplifyframework.core.Amplify
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result


/** AmplifyApiPlugin */
class AmplifyApiPlugin : FlutterPlugin, ActivityAware, MethodCallHandler {

  private lateinit var channel: MethodChannel
  private lateinit var context: Context
  private var mainActivity: Activity? = null
  private val handler = Handler(Looper.getMainLooper())
  private val LOG = Amplify.Logging.forNamespace("amplify:flutter:api")

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "com.amazonaws.amplify/api")
    channel.setMethodCallHandler(this)
    context = flutterPluginBinding.applicationContext
    Amplify.addPlugin(AWSApiPlugin())
    LOG.info("Initiated API plugin")
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    when (call.method) {
      "query" ->
        query(result, call.arguments as Map<String, Any>)
      "mutate" ->
        mutate(result, call.arguments as Map<String, Any>)
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
      createFlutterError(
              flutterResult,
              FlutterApiErrorMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
              createErrorMap(e))
      return
    } catch (e: Exception) {
      createFlutterError(
              flutterResult,
              FlutterApiErrorMessage.AMPLIFY_REQUEST_MALFORMED.toString(),
              createErrorMap(e))
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
          createFlutterError(
                  flutterResult,
                  FlutterApiErrorMessage.AMPLIFY_API_QUERY_FAILED.toString(),
                  createErrorMap(it))
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
      createFlutterError(
              flutterResult,
              FlutterApiErrorMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
              createErrorMap(e))
      return
    } catch (e: Exception) {
      createFlutterError(
              flutterResult,
              FlutterApiErrorMessage.AMPLIFY_REQUEST_MALFORMED.toString(),
              createErrorMap(e))
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
              createFlutterError(
                      flutterResult,
                      FlutterApiErrorMessage.AMPLIFY_API_MUTATE_FAILED.toString(),
                      createErrorMap(it))
            }
    )
  }

  private fun createErrorMap(@NonNull error: Exception): Map<String, Any> {
    var errorMap = HashMap<String, Any>()

    var localizedError = ""
    var recoverySuggestion = ""
    if (error is ApiException) {
      recoverySuggestion = error.recoverySuggestion
    }
    if (error.localizedMessage != null) {
      localizedError = error.localizedMessage
    }
    errorMap.put("PLATFORM_EXCEPTIONS", mapOf(
            "platform" to "Android",
            "localizedErrorMessage" to localizedError,
            "recoverySuggestion" to recoverySuggestion,
            "errorString" to error.toString()
    ))
    return errorMap
  }

  private fun createFlutterError(flutterResult: Result, msg: String, errorMap: Map<String, Any>) {
    handler.post { flutterResult.error("AmplifyException", msg, errorMap) }
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

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
