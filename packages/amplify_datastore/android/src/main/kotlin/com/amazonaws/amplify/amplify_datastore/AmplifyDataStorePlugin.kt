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

package com.amazonaws.amplify.amplify_datastore

import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import androidx.annotation.VisibleForTesting
import com.amazonaws.amplify.amplify_datastore.types.FlutterDataStoreFailureMessage
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterModelSchema
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterSerializedModel
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterSubscriptionEvent
import com.amazonaws.amplify.amplify_datastore.types.query.QueryOptionsBuilder
import com.amazonaws.amplify.amplify_datastore.util.safeCastToList
import com.amazonaws.amplify.amplify_datastore.util.safeCastToMap
import com.amplifyframework.api.aws.AWSApiPlugin
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.async.Cancelable
import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.query.QueryOptions
import com.amplifyframework.datastore.AWSDataStorePlugin
import com.amplifyframework.datastore.DataStoreException
import com.amplifyframework.datastore.appsync.SerializedModel
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import kotlin.collections.HashMap


/** AmplifyDataStorePlugin */
class AmplifyDataStorePlugin : FlutterPlugin, MethodCallHandler {

    private lateinit var channel: MethodChannel
    private lateinit var eventchannel: EventChannel
    private lateinit var observeCancelable: Cancelable
    private val dataStoreObserveEventStreamHandler: DataStoreObserveEventStreamHandler

    private val handler = Handler(Looper.getMainLooper())
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:datastore")
    val modelProvider = FlutterModelProvider.instance

    constructor() {
        dataStoreObserveEventStreamHandler = DataStoreObserveEventStreamHandler()
    }

    @VisibleForTesting
    constructor(eventHandler: DataStoreObserveEventStreamHandler) {
        dataStoreObserveEventStreamHandler = eventHandler
    }

    override fun onAttachedToEngine(
            @NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger,
                                "com.amazonaws.amplify/datastore")
        channel.setMethodCallHandler(this)
        eventchannel = EventChannel(flutterPluginBinding.binaryMessenger,
                                    "com.amazonaws.amplify/datastore_observe_events")
        eventchannel.setStreamHandler(dataStoreObserveEventStreamHandler)
        LOG.info("Initiated DataStore plugin")
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        var data: Map<String, Any> = HashMap()
        try {
            if(call.arguments != null) {
                data = checkArguments(call.arguments) as HashMap<String, Any>
            }
        } catch (e: Exception) {
            postFlutterError(
                    result,
                    FlutterDataStoreFailureMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
                    createErrorMap(e))
        }
        when (call.method) {
            "query" -> onQuery(result, data)
            "delete" -> onDelete(result, data)
            "clear" -> onClear(result)
            "setupObserve" -> onSetupObserve(result)
            "configureModelProvider" -> onConfigureModelProvider(result, data)
            else -> result.notImplemented()
        }
    }

    private fun onConfigureModelProvider(flutterResult: Result, request: Map<String, Any>) {

        if (!request.containsKey("modelSchemas") || !request.containsKey(
                        "modelProviderVersion") || request["modelSchemas"] !is List<*>) {
            postFlutterError(
                    flutterResult,
                    FlutterDataStoreFailureMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
                    createErrorMap(Exception(
                            FlutterDataStoreFailureMessage.AMPLIFY_CONFIGURE_REQUEST_MALFORMED.toString())))
            return
        }


        var modelSchemas: List<Map<String, Any>> = request["modelSchemas"].safeCastToList()!!

        val modelProvider = FlutterModelProvider.instance
        val flutterModelSchemaList =
                modelSchemas.map { modelSchema -> FlutterModelSchema(modelSchema) }
        flutterModelSchemaList.forEach { flutterModelSchema ->

            val nativeSchema = flutterModelSchema.convertToNativeModelSchema()
            modelProvider.addModelSchema(
                    flutterModelSchema.name,
                    nativeSchema
            )
        }

        modelProvider.setVersion(request["modelProviderVersion"] as String)

        Amplify.addPlugin(AWSDataStorePlugin(modelProvider))
        Amplify.addPlugin(AWSApiPlugin())

        flutterResult.success(null)
    }

    @VisibleForTesting
    fun onQuery(flutterResult: Result, request: Map<String, Any>) {
        var modelName: String
        var queryOptions: QueryOptions
        try {
            modelName = request["modelName"] as String
            queryOptions = QueryOptionsBuilder.fromSerializedMap(request)
        } catch (e: ClassCastException) {
            postFlutterError(
                    flutterResult,
                    FlutterDataStoreFailureMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
                    createErrorMap(e))
            return
        } catch (e: Exception) {
            postFlutterError(
                    flutterResult,
                    FlutterDataStoreFailureMessage.AMPLIFY_QUERY_REQUEST_MALFORMED.toString(),
                    createErrorMap(e))
            return
        }

        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin
        plugin.query(
                modelName,
                queryOptions,
                {
                    try {
                        var results: List<Map<String, Any>> =
                                it.asSequence().toList().map { model: Model? ->
                                    FlutterSerializedModel(model as SerializedModel).toMap()
                                }
                        LOG.debug("Number of items received " + results.size)

                        handler.post { flutterResult.success(results) }
                    } catch (e: ClassCastException) {
                        postFlutterError(
                                flutterResult,
                                FlutterDataStoreFailureMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
                                createErrorMap(e))
                    } catch (e: Exception) {
                        postFlutterError(
                                flutterResult,
                                FlutterDataStoreFailureMessage.AMPLIFY_QUERY_REQUEST_MALFORMED.toString(),
                                createErrorMap(e))
                    }
                },
                {
                    LOG.error("Query operation failed.", it)
                    postFlutterError(
                            flutterResult,
                            FlutterDataStoreFailureMessage.AMPLIFY_DATASTORE_QUERY_FAILED.toString(),
                            createErrorMap(it))
                }
        )
    }

    @VisibleForTesting
    fun onDelete(flutterResult: Result, request: Map<String, Any>) {
        var modelName: String
        var modelData: Map<String, Any>

        try {
            modelName = request["modelName"] as String
            modelData = request["serializedModel"] as Map<String, Any>
        } catch (e: ClassCastException) {
            postFlutterError(
                    flutterResult,
                    FlutterDataStoreFailureMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString(),
                    createErrorMap(e))
            return
        } catch (e: Exception) {
            postFlutterError(
                    flutterResult,
                    FlutterDataStoreFailureMessage.AMPLIFY_DELETE_REQUEST_MALFORMED.toString(),
                    createErrorMap(e))
            return
        }

        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin
        val schema = modelProvider.modelSchemas()[modelName];

        var instance = SerializedModel.builder()
                .serializedData(modelData)
                .modelSchema(schema)
                .build()

        plugin.delete(
                instance,
                {
                    LOG.info("Deleted item: " + it.item().toString())
                    handler.post { flutterResult.success(null) }
                },
                {
                    LOG.error("Delete operation failed.", it)
                    if (it is DataStoreException && it.localizedMessage == "Wanted to delete one row, but deleted 0 rows.") {
                        handler.post { flutterResult.success(null) }
                    } else {
                        postFlutterError(
                                flutterResult,
                                FlutterDataStoreFailureMessage.AMPLIFY_DATASTORE_DELETE_FAILED.toString(),
                                createErrorMap(it))
                    }
                }
        )
    }

    @VisibleForTesting
    fun onClear(flutterResult: Result) {
        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin

        plugin.clear(
                {
                    LOG.info("Successfully cleared the store")
                    handler.post { flutterResult.success(null) }
                },
                {
                    LOG.error("Failed to clear store with error: ", it)
                    postFlutterError(
                            flutterResult,
                            FlutterDataStoreFailureMessage.AMPLIFY_DATASTORE_CLEAR_FAILED.toString(),
                            createErrorMap(it))
                }
        )
    }

    fun onSetupObserve(result: Result) {
        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin

        plugin.observe(
                { cancelable ->
                    LOG.info("Established a new stream form flutter $cancelable")
                    observeCancelable = cancelable
                },
                { event ->
                    LOG.debug("Received event: $event")
                    if (event.item() is SerializedModel) {
                        dataStoreObserveEventStreamHandler?.sendEvent(FlutterSubscriptionEvent(
                                serializedModel = event.item() as SerializedModel,
                                eventType = event.type().name.toLowerCase()).toMap())
                    }
                },
                { failure: DataStoreException ->
                    LOG.error("Received an error", failure)
                    dataStoreObserveEventStreamHandler?.error("AmplifyException",
                                                              FlutterDataStoreFailureMessage.AMPLIFY_DATASTORE_OBSERVE_EVENT_FAILURE.toString(),
                                                              createErrorMap(failure))
                },
                { LOG.info("Observation complete.") }
        )
        result.success(true)
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    private fun checkArguments(@NonNull args: Any): Map<String, Any> {
        if (args !is Map<*, *>) {
            throw java.lang.Exception("Flutter method call arguments are not a map.")
        }
        return args.safeCastToMap()!!
    }

    protected fun createErrorMap(@NonNull error: Exception): Map<String, Any> {
        var errorMap = HashMap<String, Any>()

        var localizedError = ""
        var recoverySuggestion = ""
        if (error is DataStoreException) {
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

    private fun postFlutterError(flutterResult: Result, msg: String, errorMap: Map<String, Any>) {
        handler.post { flutterResult.error("AmplifyException", msg, errorMap) }
    }
}
