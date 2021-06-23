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
import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.createSerializedError
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.createSerializedUnrecognizedError
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.handleAddPluginException
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.postExceptionToFlutterChannel
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterModelSchema
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterSerializedModel
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterSubscriptionEvent
import com.amazonaws.amplify.amplify_datastore.types.query.QueryOptionsBuilder
import com.amazonaws.amplify.amplify_datastore.types.query.QueryPredicateBuilder
import com.amazonaws.amplify.amplify_datastore.util.safeCastToList
import com.amazonaws.amplify.amplify_datastore.util.safeCastToMap
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import com.amplifyframework.core.async.Cancelable
import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.SerializedModel
import com.amplifyframework.core.model.query.QueryOptions
import com.amplifyframework.core.model.query.predicate.QueryPredicate
import com.amplifyframework.core.model.query.predicate.QueryPredicates
import com.amplifyframework.datastore.AWSDataStorePlugin
import com.amplifyframework.datastore.DataStoreConfiguration
import com.amplifyframework.datastore.DataStoreException
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit

/** AmplifyDataStorePlugin */
class AmplifyDataStorePlugin : FlutterPlugin, MethodCallHandler {

    private lateinit var channel: MethodChannel
    private lateinit var eventchannel: EventChannel
    private lateinit var observeCancelable: Cancelable
    private val dataStoreObserveEventStreamHandler: DataStoreObserveEventStreamHandler

    lateinit var hubEventChannel: EventChannel
    private val dataStoreHubEventStreamHandler: DataStoreHubEventStreamHandler

    private val handler = Handler(Looper.getMainLooper())
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:datastore")
    val modelProvider = FlutterModelProvider.instance

    constructor() {
        dataStoreObserveEventStreamHandler = DataStoreObserveEventStreamHandler()
        dataStoreHubEventStreamHandler = DataStoreHubEventStreamHandler()
    }

    @VisibleForTesting
    constructor(
        eventHandler: DataStoreObserveEventStreamHandler,
        hubEventHandler: DataStoreHubEventStreamHandler
    ) {
        dataStoreObserveEventStreamHandler = eventHandler
        dataStoreHubEventStreamHandler = hubEventHandler
    }

    override fun onAttachedToEngine(
        @NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding
    ) {
        channel = MethodChannel(
            flutterPluginBinding.binaryMessenger,
            "com.amazonaws.amplify/datastore"
        )
        channel.setMethodCallHandler(this)
        eventchannel = EventChannel(
            flutterPluginBinding.binaryMessenger,
            "com.amazonaws.amplify/datastore_observe_events"
        )
        eventchannel.setStreamHandler(dataStoreObserveEventStreamHandler)

        hubEventChannel = EventChannel(
            flutterPluginBinding.binaryMessenger,
            "com.amazonaws.amplify/datastore_hub_events"
        )
        hubEventChannel.setStreamHandler(dataStoreHubEventStreamHandler)
        LOG.info("Initiated DataStore plugin")
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        var data: Map<String, Any> = HashMap()
        try {
            if (call.arguments != null) {
                data = checkArguments(call.arguments) as HashMap<String, Any>
            }
        } catch (e: Exception) {
            handler.post {
                postExceptionToFlutterChannel(
                    result, "DataStoreException",
                    createSerializedUnrecognizedError(e)
                )
            }
            return
        }
        when (call.method) {
            "query" -> onQuery(result, data)
            "delete" -> onDelete(result, data)
            "save" -> onSave(result, data)
            "clear" -> onClear(result)
            "setUpObserve" -> onSetUpObserve(result)
            "configureDataStore" -> onConfigureDataStore(result, data)
            else -> result.notImplemented()
        }
    }

    @VisibleForTesting
    fun onConfigureDataStore(flutterResult: Result, request: Map<String, Any>) {
        if (!request.containsKey("modelSchemas") || !request.containsKey(
                "modelProviderVersion"
            ) || request["modelSchemas"] !is List<*>
        ) {
            handler.post {
                postExceptionToFlutterChannel(
                    flutterResult, "DataStoreException",
                    createSerializedError(
                        ExceptionMessages.missingExceptionMessage,
                        ExceptionMessages.missingRecoverySuggestion,
                        "Received invalid request from Dart, modelSchemas and/or modelProviderVersion" +
                                " are not available. Request: " + request.toString()
                    )
                )
            }
            return
        }

        val modelSchemas: List<Map<String, Any>> = request["modelSchemas"].safeCastToList()!!
        val syncExpressions: List<Map<String, Any>> =
            request["syncExpressions"].safeCastToList() ?: emptyList()

        val flutterModelSchemaList =
            modelSchemas.map { modelSchema -> FlutterModelSchema(modelSchema) }
        flutterModelSchemaList.forEach { flutterModelSchema ->
            val nativeSchema = flutterModelSchema.convertToNativeModelSchema()
            modelProvider.addModelSchema(
                flutterModelSchema.name,
                nativeSchema
            )
        }

        val dataStoreConfigurationBuilder = DataStoreConfiguration.builder()

        modelProvider.setVersion(request["modelProviderVersion"] as String)
        val defaultDataStoreConfiguration = DataStoreConfiguration.defaults()
        val syncInterval: Long =
            (request["syncInterval"] as? Int)?.toLong()
                ?: defaultDataStoreConfiguration.syncIntervalInMinutes
        val syncMaxRecords: Int =
            (request["syncMaxRecords"] as? Int)
                ?: defaultDataStoreConfiguration.syncMaxRecords
        val syncPageSize: Int =
            (request["syncPageSize"] as? Int)
                ?: defaultDataStoreConfiguration.syncPageSize

        try {
            buildSyncExpressions(syncExpressions, dataStoreConfigurationBuilder)
        } catch (e: Exception) {
            handler.post {
                postExceptionToFlutterChannel(
                    flutterResult, "DataStoreException",
                    createSerializedUnrecognizedError(e)
                )
            }
        }

        val dataStorePlugin = AWSDataStorePlugin
            .builder()
            .modelProvider(modelProvider)
            .dataStoreConfiguration(
                dataStoreConfigurationBuilder
                    .syncInterval(syncInterval, TimeUnit.MINUTES)
                    .syncMaxRecords(syncMaxRecords)
                    .syncPageSize(syncPageSize)
                    .build()
            )
            .build()

        try {
            Amplify.addPlugin(dataStorePlugin)
        } catch (e: Exception) {
            handleAddPluginException("Datastore", e, flutterResult)
            return
        }
        flutterResult.success(null)
    }

    @VisibleForTesting
    fun onQuery(flutterResult: Result, request: Map<String, Any>) {
        var modelName: String
        var queryOptions: QueryOptions
        try {
            modelName = request["modelName"] as String
            queryOptions = QueryOptionsBuilder.fromSerializedMap(request)
        } catch (e: Exception) {
            handler.post {
                postExceptionToFlutterChannel(
                    flutterResult, "DataStoreException",
                    createSerializedUnrecognizedError(e)
                )
            }
            return
        }

        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin
        plugin.query(
            modelName,
            queryOptions,
            {
                try {
                    val results: List<Map<String, Any>> =
                        it.asSequence().toList().map { model: Model? ->
                            FlutterSerializedModel(model as SerializedModel).toMap()
                        }
                    LOG.debug("Number of items received " + results.size)

                    handler.post { flutterResult.success(results) }
                } catch (e: Exception) {
                    handler.post {
                        postExceptionToFlutterChannel(
                            flutterResult, "DataStoreException",
                            createSerializedUnrecognizedError(e)
                        )
                    }
                }
            },
            {
                LOG.error("Query operation failed.", it)
                handler.post {
                    postExceptionToFlutterChannel(
                        flutterResult, "DataStoreException",
                        createSerializedError(it)
                    )
                }
            }
        )
    }

    @VisibleForTesting
    fun onDelete(flutterResult: Result, request: Map<String, Any>) {
        val modelName: String
        val serializedModelData: Map<String, Any>

        try {
            modelName = request["modelName"] as String
            serializedModelData =
                deserializeNestedModels(request["serializedModel"].safeCastToMap()!!)
        } catch (e: Exception) {
            handler.post {
                postExceptionToFlutterChannel(
                    flutterResult, "DataStoreException",
                    createSerializedUnrecognizedError(e)
                )
            }
            return
        }

        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin
        val schema = modelProvider.modelSchemas()[modelName];

        val instance = SerializedModel.builder()
            .serializedData(serializedModelData)
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
                if (it.localizedMessage == "Wanted to delete one row, but deleted 0 rows.") {
                    handler.post { flutterResult.success(null) }
                } else {
                    handler.post {
                        postExceptionToFlutterChannel(
                            flutterResult, "DataStoreException",
                            createSerializedError(it)
                        )
                    }
                }
            }
        )
    }

    @VisibleForTesting
    fun onSave(flutterResult: Result, request: Map<String, Any>) {
        val modelName: String
        val serializedModelData: Map<String, Any>

        try {
            modelName = request["modelName"] as String
            serializedModelData =
                deserializeNestedModels(request["serializedModel"].safeCastToMap()!!)
        } catch (e: Exception) {
            handler.post {
                postExceptionToFlutterChannel(
                    flutterResult, "DataStoreException",
                    createSerializedUnrecognizedError(e)
                )
            }
            return
        }

        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin
        val schema = modelProvider.modelSchemas()[modelName];

        val serializedModel = SerializedModel.builder()
            .serializedData(serializedModelData)
            .modelSchema(schema)
            .build()

        val predicate = QueryPredicates.all()

        plugin.save(
            serializedModel,
            predicate,
            Consumer {
                LOG.info("Saved item: " + it.item().toString())
                handler.post { flutterResult.success(null) }
            },
            Consumer {
                LOG.error("Save operation failed", it)
                handler.post {
                    postExceptionToFlutterChannel(
                        flutterResult, "DataStoreException",
                        createSerializedError(it)
                    )
                }
            }
        )
    }

    fun onClear(flutterResult: Result) {
        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin

        plugin.clear(
            {
                LOG.info("Successfully cleared the store")
                handler.post { flutterResult.success(null) }
            },
            {
                LOG.error("Failed to clear store with error: ", it)
                handler.post {
                    postExceptionToFlutterChannel(
                        flutterResult, "DataStoreException",
                        createSerializedError(it)
                    )
                }
            }
        )
    }

    fun onSetUpObserve(flutterResult: Result) {
        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin

        plugin.observe(
            { cancelable ->
                LOG.info("Established a new stream form flutter $cancelable")
                observeCancelable = cancelable
            },
            { event ->
                LOG.debug("Received event: $event")
                if (event.item() is SerializedModel) {
                    dataStoreObserveEventStreamHandler.sendEvent(
                        FlutterSubscriptionEvent(
                            serializedModel = event.item() as SerializedModel,
                            eventType = event.type().name.toLowerCase()
                        ).toMap()
                    )
                }
            },
            { failure: DataStoreException ->
                LOG.error("Received an error", failure)
                dataStoreObserveEventStreamHandler.error(
                    "DataStoreException",
                    createSerializedError(failure)
                )
            },
            { LOG.info("Observation complete.") }
        )
        flutterResult.success(true)
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

    private fun buildSyncExpressions(
        @NonNull syncExpressions: List<Map<String, Any>>,
        @NonNull dataStoreConfigurationBuilder: DataStoreConfiguration.Builder
    ) {
        syncExpressions.forEach { syncExpression ->
            try {
                val id = syncExpression["id"] as String
                val modelName = syncExpression["modelName"] as String
                val queryPredicate =
                    QueryPredicateBuilder.fromSerializedMap(syncExpression["queryPredicate"].safeCastToMap())!!
                dataStoreConfigurationBuilder.syncExpression(modelName) {
                    var resolvedQueryPredicate = queryPredicate
                    val latch = CountDownLatch(1)
                    handler.post {
                        channel.invokeMethod("resolveQueryPredicate", id, object : Result {
                            override fun success(result: Any?) {
                                try {
                                    resolvedQueryPredicate =
                                        QueryPredicateBuilder.fromSerializedMap(result.safeCastToMap())!!

                                } catch (e: Exception) {
                                    LOG.error("Failed to resolve query predicate. Reverting to original query predicate.")
                                }
                                latch.countDown()
                            }

                            override fun error(code: String?, msg: String?, details: Any?) {
                                LOG.error("Failed to resolve query predicate. Reverting to original query predicate.")
                                latch.countDown()
                            }

                            override fun notImplemented() {
                                LOG.error("resolveQueryPredicate not implemented.")
                                latch.countDown()
                            }
                        })
                    }
                    latch.await()
                    resolvedQueryPredicate
                }
            } catch (e: Exception) {
                throw e
            }
        }
    }


    @VisibleForTesting
    fun deserializeNestedModels(serializedModelData: Map<String, Any>): Map<String, Any> {
        return serializedModelData.mapValues {
            if (it.value is Map<*, *>) {
                SerializedModel.builder()
                    .serializedData(deserializeNestedModels(it.value as HashMap<String, Any>))
                    .modelSchema(null)
                    .build() as Any
            } else
                it.value
        }
    }
}
