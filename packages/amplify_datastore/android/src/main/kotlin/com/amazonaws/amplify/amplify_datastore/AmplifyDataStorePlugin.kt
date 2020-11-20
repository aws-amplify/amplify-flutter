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
import com.amazonaws.amplify.amplify_datastore.types.query.QueryOptionsBuilder
import com.amazonaws.amplify.amplify_datastore.types.query.QueryPredicateBuilder
import com.amazonaws.amplify.amplify_datastore.util.safeCastToList
import com.amazonaws.amplify.amplify_datastore.util.safeCastToMap
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.query.QueryOptions
import com.amplifyframework.core.model.query.predicate.QueryPredicates
import com.amplifyframework.datastore.AWSDataStorePlugin
import com.amplifyframework.datastore.DataStoreException
import com.amplifyframework.datastore.appsync.SerializedModel
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import kotlin.collections.HashMap


/** AmplifyDataStorePlugin */
class AmplifyDataStorePlugin : FlutterPlugin, MethodCallHandler {

    private lateinit var channel: MethodChannel
    private val handler = Handler(Looper.getMainLooper())
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:datastore")
    val modelProvider = FlutterModelProvider.instance


    override fun onAttachedToEngine(
            @NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger,
                                "com.amazonaws.amplify/datastore")
        channel.setMethodCallHandler(this)
        LOG.info("Initiated DataStore plugin")
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        var data: HashMap<String, Any> = HashMap()
        try {
            data = checkArguments(call.arguments) as HashMap<String, Any>
        } catch (e: Exception) {
            prepareError(result, e,
                         FlutterDataStoreFailureMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString())
        }
        when (call.method) {
            "query" -> onQuery(result, data)
            "delete" -> onDelete(result, data)
            "save" -> onSave(result, data)
            "configureModelProvider" -> onConfigureModelProvider(result, data)
            else -> result.notImplemented()
        }
    }

    private fun onConfigureModelProvider(flutterResult: Result, request: HashMap<String, Any>) {

        if( !request.containsKey("modelSchemas") || !request.containsKey("modelProviderVersion") || request["modelSchemas"] !is List<*>){
            prepareError(flutterResult,
                    Exception(
                            FlutterDataStoreFailureMessage.AMPLIFY_CONFIGURE_REQUEST_MALFORMED.toString()),
                    FlutterDataStoreFailureMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString())
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

        modelProvider.setVersion( request["modelProviderVersion"] as String )

        Amplify.addPlugin(AWSDataStorePlugin(modelProvider))
        flutterResult.success(null)
    }


    @VisibleForTesting
    fun onQuery(flutterResult: Result, request: HashMap<String, Any>) {
        var modelName: String
        var queryOptions: QueryOptions
        try {
            modelName = request["modelName"] as String
            queryOptions = QueryOptionsBuilder.fromSerializedMap(request)
        } catch (e: ClassCastException) {
            prepareError(flutterResult, e,
                         FlutterDataStoreFailureMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString())
            return
        } catch (e: Exception) {
            prepareError(flutterResult, e,
                         FlutterDataStoreFailureMessage.AMPLIFY_QUERY_REQUEST_MALFORMED.toString())
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
                        prepareError(flutterResult, e,
                                     FlutterDataStoreFailureMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString())
                    } catch (e: Exception) {
                        prepareError(flutterResult, e,
                                     FlutterDataStoreFailureMessage.AMPLIFY_QUERY_REQUEST_MALFORMED.toString())
                    }
                },
                {
                    LOG.info("MyAmplifyApp + Query failed.$it")
                    prepareError(flutterResult, it,
                                 FlutterDataStoreFailureMessage.AMPLIFY_DATASTORE_QUERY_FAILED.toString())
                }
        )
    }

    @VisibleForTesting
    fun onDelete(flutterResult: Result, request: HashMap<String, Any>) {
        val modelName: String
        val modelData:  Map<String, Any>

        try {
            modelName = request["modelName"] as String
            modelData = deserializeNestedModels(request["serializedModel"].safeCastToMap()!!)
        } catch (e: ClassCastException) {
            prepareError(flutterResult, e,
                    FlutterDataStoreFailureMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString())
            return
        } catch (e: Exception) {
            prepareError(flutterResult, e,
                    FlutterDataStoreFailureMessage.AMPLIFY_DELETE_REQUEST_MALFORMED.toString())
            return
        }

        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin
        val schema = modelProvider.modelSchemas()[modelName];

        val instance = SerializedModel.builder()
                .serializedData(modelData)
                .modelSchema(schema)
                .build()

        plugin.delete(
                instance,
                {
                    LOG.debug("Deleted item: " + it.item().toString())
                    handler.post { flutterResult.success(null) }
                },
                {
                    LOG.debug("Deletion Failed: " + it)
                    if (it is DataStoreException && it.localizedMessage == "Wanted to delete one row, but deleted 0 rows.") {
                        handler.post{ flutterResult.success(null) }
                    } else {
                        prepareError(flutterResult, it, FlutterDataStoreFailureMessage.AMPLIFY_DATASTORE_DELETE_FAILED.toString())
                    }
                }
        )
    }

    @VisibleForTesting
    fun onSave(flutterResult: Result, request: HashMap<String, Any>) {
        val modelName: String
        val serializedModelData:  Map<String, Any>

        try {
            modelName = request["modelName"] as String
            serializedModelData = deserializeNestedModels(request["serializedModel"].safeCastToMap()!!)
        } catch (e: ClassCastException) {
            prepareError(flutterResult, e,
                    FlutterDataStoreFailureMessage.ERROR_CASTING_INPUT_IN_PLATFORM_CODE.toString())
            return
        } catch (e: Exception) {
            prepareError(flutterResult, e,
                    FlutterDataStoreFailureMessage.AMPLIFY_SAVE_REQUEST_MALFORMED.toString())
            return
        }

        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin
        val schema = modelProvider.modelSchemas()[modelName];

        val serializedModel = SerializedModel.builder()
                .serializedData(serializedModelData)
                .modelSchema(schema)
                .build()

        val predicate = QueryPredicateBuilder.fromSerializedMap(
                request["queryPredicate"].safeCastToMap()) ?: QueryPredicates.all()

        plugin.save(
                serializedModel,
                predicate,
                Consumer {
                    LOG.info("Saved item: " + it.item().toString())
                    handler.post { flutterResult.success(null) }
                },
                Consumer {
                    LOG.error("Save operation failed", it)
                    prepareError(flutterResult, it, FlutterDataStoreFailureMessage.AMPLIFY_DATASTORE_SAVE_FAILED.toString())
                }
        )
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

    private fun prepareError(@NonNull flutterResult: Result, @NonNull error: Exception,
                             @NonNull msg: String) {
        LOG.error(msg, error)
        var errorMap: HashMap<String, Any> = HashMap()

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
        handler.post { flutterResult.error("AmplifyException", msg, errorMap) }
    }

    @VisibleForTesting
    fun deserializeNestedModels(serializedModelData: Map<String, Any>): Map<String, Any> {
        return serializedModelData.mapValues {
            if(it.value is Map<*, *>) {
                SerializedModel.builder()
                        .serializedData(deserializeNestedModels(it.value as HashMap<String, Any>))
                        .modelSchema(null)
                        .build() as Any
            }
            else
                it.value
        }
    }
}
