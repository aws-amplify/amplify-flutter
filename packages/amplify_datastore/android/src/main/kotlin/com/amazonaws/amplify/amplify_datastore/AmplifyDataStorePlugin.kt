/*
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
 */

package com.amazonaws.amplify.amplify_datastore

import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import androidx.annotation.VisibleForTesting
import com.amazonaws.amplify.amplify_core.AtomicResult
import com.amazonaws.amplify.amplify_core.cast
import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.createSerializedError
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.createSerializedUnrecognizedError
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.handleAddPluginException
import com.amazonaws.amplify.amplify_core.exception.ExceptionUtil.Companion.postExceptionToFlutterChannel
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterCustomTypeSchema
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterModelSchema
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterSerializedModel
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterSubscriptionEvent
import com.amazonaws.amplify.amplify_datastore.types.query.QueryOptionsBuilder
import com.amazonaws.amplify.amplify_datastore.types.query.QueryPredicateBuilder
import com.amazonaws.amplify.amplify_datastore.util.safeCastToList
import com.amazonaws.amplify.amplify_datastore.util.safeCastToMap
import com.amplifyframework.api.aws.AuthModeStrategyType
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.async.Cancelable
import com.amplifyframework.core.model.CustomTypeSchema
import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.ModelSchema
import com.amplifyframework.core.model.SerializedCustomType
import com.amplifyframework.core.model.SerializedModel
import com.amplifyframework.core.model.query.QueryOptions
import com.amplifyframework.core.model.query.predicate.QueryPredicate
import com.amplifyframework.core.model.query.predicate.QueryPredicates
import com.amplifyframework.datastore.AWSDataStorePlugin
import com.amplifyframework.datastore.DataStoreConfiguration
import com.amplifyframework.datastore.DataStoreConflictHandler
import com.amplifyframework.datastore.DataStoreErrorHandler
import com.amplifyframework.datastore.DataStoreException
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import java.util.Locale
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.collections.HashMap

typealias ResolutionStrategy = DataStoreConflictHandler.ResolutionStrategy

/** AmplifyDataStorePlugin */
class AmplifyDataStorePlugin : FlutterPlugin, MethodCallHandler {
    private lateinit var channel: MethodChannel
    private lateinit var eventChannel: EventChannel
    private lateinit var observeCancelable: Cancelable
    private lateinit var hubEventChannel: EventChannel

    private val dataStoreObserveEventStreamHandler: DataStoreObserveEventStreamHandler
    private val dataStoreHubEventStreamHandler: DataStoreHubEventStreamHandler
    private val uiThreadHandler = Handler(Looper.getMainLooper())
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:datastore")
    private var isSettingUpObserve = AtomicBoolean()

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
        eventChannel = EventChannel(
            flutterPluginBinding.binaryMessenger,
            "com.amazonaws.amplify/datastore_observe_events"
        )
        eventChannel.setStreamHandler(dataStoreObserveEventStreamHandler)

        hubEventChannel = EventChannel(
            flutterPluginBinding.binaryMessenger,
            "com.amazonaws.amplify/datastore_hub_events"
        )
        hubEventChannel.setStreamHandler(dataStoreHubEventStreamHandler)
        LOG.info("Initiated DataStore plugin")
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull _result: Result) {
        val result = AtomicResult(_result, call.method)
        var data: Map<String, Any> = HashMap()
        try {
            if (call.arguments != null) {
                data = checkArguments(call.arguments) as HashMap<String, Any>
            }
        } catch (e: Exception) {
            uiThreadHandler.post {
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
            "start" -> onStart(result)
            "stop" -> onStop(result)
            else -> result.notImplemented()
        }
    }

    @VisibleForTesting
    fun onConfigureDataStore(flutterResult: Result, request: Map<String, Any>) {
        if (!request.containsKey("modelSchemas") || !request.containsKey(
                "modelProviderVersion"
            ) || request["modelSchemas"] !is List<*>
        ) {
            uiThreadHandler.post {
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

        // Register schemas to the native model provider
        registerSchemas(request)

        val syncExpressions: List<Map<String, Any>> =
            request["syncExpressions"].safeCastToList() ?: emptyList()
        val defaultDataStoreConfiguration = DataStoreConfiguration.defaults()
        val authModeStrategy = request["authModeStrategy"] as String
        val authModeStrategyType = AuthModeStrategyType.valueOf(authModeStrategy.uppercase())
        val syncInterval: Long =
            (request["syncInterval"] as? Int)?.toLong()
                ?: defaultDataStoreConfiguration.syncIntervalInMinutes
        val syncMaxRecords: Int =
            (request["syncMaxRecords"] as? Int)
                ?: defaultDataStoreConfiguration.syncMaxRecords
        val syncPageSize: Int =
            (request["syncPageSize"] as? Int)
                ?: defaultDataStoreConfiguration.syncPageSize

        val dataStoreConfigurationBuilder = DataStoreConfiguration.builder()

        try {
            buildSyncExpressions(syncExpressions, dataStoreConfigurationBuilder)
        } catch (e: Exception) {
            uiThreadHandler.post {
                postExceptionToFlutterChannel(
                    flutterResult, "DataStoreException",
                    createSerializedUnrecognizedError(e)
                )
            }
        }

        dataStoreConfigurationBuilder.errorHandler(createErrorHandler(request))
        dataStoreConfigurationBuilder.conflictHandler(createConflictHandler(request))

        val dataStorePlugin = AWSDataStorePlugin
            .builder()
            .modelProvider(modelProvider)
            .authModeStrategy(authModeStrategyType)
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
        val modelName: String
        val queryOptions: QueryOptions
        try {
            modelName = request["modelName"] as String
            val modelSchema = modelProvider.modelSchemas().getValue(modelName)
            queryOptions = QueryOptionsBuilder.fromSerializedMap(request, modelSchema)
        } catch (e: Exception) {
            uiThreadHandler.post {
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

                    uiThreadHandler.post { flutterResult.success(results) }
                } catch (e: Exception) {
                    uiThreadHandler.post {
                        postExceptionToFlutterChannel(
                            flutterResult, "DataStoreException",
                            createSerializedUnrecognizedError(e)
                        )
                    }
                }
            },
            {
                LOG.error("Query operation failed.", it)
                uiThreadHandler.post {
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
        val queryPredicate: QueryPredicate
        val serializedModelData: Map<String, Any?>
        val schema: ModelSchema

        try {
            modelName = request["modelName"] as String
            schema = modelProvider.modelSchemas()[modelName]!!
            serializedModelData =
                deserializeNestedModel(request["serializedModel"].safeCastToMap()!!, schema)

            queryPredicate = QueryPredicateBuilder.fromSerializedMap(
                request["queryPredicate"].safeCastToMap()
            ) ?: QueryPredicates.all()
        } catch (e: Exception) {
            uiThreadHandler.post {
                postExceptionToFlutterChannel(
                    flutterResult, "DataStoreException",
                    createSerializedUnrecognizedError(e)
                )
            }
            return
        }

        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin

        val instance = SerializedModel.builder()
            .serializedData(serializedModelData)
            .modelSchema(schema)
            .build()

        plugin.delete(
            instance,
            queryPredicate,
            {
                LOG.info("Deleted item: " + it.item().toString())
                uiThreadHandler.post { flutterResult.success(null) }
            },
            {
                LOG.error("Delete operation failed.", it)
                if (it.localizedMessage == "Wanted to delete one row, but deleted 0 rows.") {
                    uiThreadHandler.post { flutterResult.success(null) }
                } else {
                    uiThreadHandler.post {
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
        val queryPredicate: QueryPredicate
        val serializedModelData: Map<String, Any?>
        val schema: ModelSchema

        try {
            modelName = request["modelName"] as String
            schema = modelProvider.modelSchemas()[modelName]!!
            serializedModelData =
                deserializeNestedModel(request["serializedModel"].safeCastToMap()!!, schema)

            queryPredicate = QueryPredicateBuilder.fromSerializedMap(
                request["queryPredicate"].safeCastToMap()
            ) ?: QueryPredicates.all()
        } catch (e: Exception) {
            uiThreadHandler.post {
                postExceptionToFlutterChannel(
                    flutterResult, "DataStoreException",
                    createSerializedUnrecognizedError(e)
                )
            }
            return
        }

        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin

        val serializedModel = SerializedModel.builder()
            .serializedData(serializedModelData)
            .modelSchema(schema)
            .build()

        plugin.save(
            serializedModel,
            queryPredicate,
            {
                LOG.info("Saved item: " + it.item().toString())
                uiThreadHandler.post { flutterResult.success(null) }
            },
            {
                LOG.error("Save operation failed", it)
                uiThreadHandler.post {
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
                uiThreadHandler.post { flutterResult.success(null) }
            },
            {
                LOG.error("Failed to clear store with error: ", it)
                uiThreadHandler.post {
                    postExceptionToFlutterChannel(
                        flutterResult, "DataStoreException",
                        createSerializedError(it)
                    )
                }
            }
        )
    }

    fun onSetUpObserve(flutterResult: Result) {
        if (this::observeCancelable.isInitialized || isSettingUpObserve.getAndSet(true)) {
            flutterResult.success(true)
            return
        }

        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin
        plugin.observe(
            { cancelable ->
                LOG.info("Established a new stream form flutter $cancelable")
                observeCancelable = cancelable
                isSettingUpObserve.set(false)
                flutterResult.success(true)
            },
            { event ->
                LOG.debug("Received event: $event")
                if (event.item() is SerializedModel) {
                    dataStoreObserveEventStreamHandler.sendEvent(
                        FlutterSubscriptionEvent(
                            serializedModel = event.item() as SerializedModel,
                            eventType = event.type().name.toLowerCase(Locale.getDefault())
                        ).toMap()
                    )
                }
            },
            { failure: DataStoreException ->
                if (failure.message?.contains("Failed to start DataStore", true) == true) {
                    isSettingUpObserve.set(false)
                    flutterResult.success(false)
                } else {
                    LOG.error("Received an error", failure)
                    dataStoreObserveEventStreamHandler.error(
                        "DataStoreException",
                        createSerializedError(failure)
                    )
                }
            },
            { LOG.info("Observation complete.") }
        )
    }

    @VisibleForTesting
    fun onStart(flutterResult: Result) {
        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin

        plugin.start(
            {
                LOG.info("Successfully started datastore remote synchronization")
                uiThreadHandler.post {
                    flutterResult.success(null)
                }
            },
            {
                LOG.error("Failed to start datastore with error: ", it)
                uiThreadHandler.post {
                    postExceptionToFlutterChannel(
                        flutterResult, "DataStoreException",
                        createSerializedError(it)
                    )
                }
            }
        )
    }

    @VisibleForTesting
    fun onStop(flutterResult: Result) {
        val plugin = Amplify.DataStore.getPlugin("awsDataStorePlugin") as AWSDataStorePlugin

        plugin.stop(
            {
                LOG.info("Successfully stopped datastore remote synchronization")
                uiThreadHandler.post {
                    flutterResult.success(null)
                }
            },
            {
                LOG.error("Failed to stop datastore with error: ", it)
                uiThreadHandler.post {
                    postExceptionToFlutterChannel(
                        flutterResult, "DataStoreException",
                        createSerializedError(it)
                    )
                }
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

    private fun buildSyncExpressions(
        @NonNull syncExpressions: List<Map<String, Any>>,
        @NonNull dataStoreConfigurationBuilder: DataStoreConfiguration.Builder
    ) {
        syncExpressions.forEach {
            try {
                val id = it["id"] as String
                val modelName = it["modelName"] as String
                val queryPredicate =
                    QueryPredicateBuilder.fromSerializedMap(it["queryPredicate"].safeCastToMap())!!
                dataStoreConfigurationBuilder.syncExpression(modelName) {
                    var resolvedQueryPredicate = queryPredicate
                    val latch = CountDownLatch(1)
                    uiThreadHandler.post {
                        channel.invokeMethod(
                            "resolveQueryPredicate", id,
                            object : Result {
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
                            }
                        )
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
    fun deserializeNestedModel(serializedModelData: Map<String, Any?>, modelSchema: ModelSchema): Map<String, Any?> {
        val result = mutableMapOf<String, Any?>()

        // iterate over schema fields to deserialize each field value
        for ((key, field) in modelSchema.fields.entries) {
            // ignore if serializedModelData doesn't contain value for the current field key
            if (!serializedModelData.containsKey(key)) {
                continue
            }
            val fieldSerializedData = serializedModelData[key]

            // if the field serialized value is null
            // assign null to this field in the deserialized map
            if (fieldSerializedData == null) {
                result[key] = fieldSerializedData
                continue
            }

            if (field.isModel) {
                // ignore field if the field doesn't have valid schema in ModelProvider
                val fieldModelSchema = modelProvider.modelSchemas()[field.targetType] ?: continue
                result[key] = SerializedModel.builder()
                    .serializedData(deserializeNestedModel(fieldSerializedData as Map<String, Any?>, fieldModelSchema))
                    .modelSchema(fieldModelSchema)
                    .build()
            } else if (field.isCustomType) {
                // ignore field if the field doesn't have valid schema in ModelProvider
                val fieldCustomTypeSchema = modelProvider.customTypeSchemas()[field.targetType] ?: continue
                val deserializedCustomType = getDeserializedCustomTypeField(
                    fieldCustomTypeSchema = fieldCustomTypeSchema,
                    isFieldArray = field.isArray,
                    listOfSerializedData = if (field.isArray) fieldSerializedData as List<Map<String, Any?>> else null,
                    serializedData = if (!field.isArray) fieldSerializedData as Map<String, Any?> else null
                )

                if (deserializedCustomType != null) {
                    result[key] = deserializedCustomType
                }
            } else {
                result[key] = fieldSerializedData
            }
        }

        return result.toMap()
    }

    private fun deserializeNestedCustomType(
        serializedModelData: Map<String, Any?>,
        customTypeSchema: CustomTypeSchema
    ): Map<String, Any?> {
        val result = mutableMapOf<String, Any?>()

        for ((key, field) in customTypeSchema.fields.entries) {
            if (!serializedModelData.containsKey(key)) {
                continue
            }

            val fieldSerializedData = serializedModelData[key]

            // if the field serialized value is null
            // assign null to this field in the deserialized map
            if (fieldSerializedData == null) {
                result[key] = fieldSerializedData
                continue
            }

            if (field.isCustomType) {
                // ignore field if the field doesn't have valid schema in ModelProvider
                val fieldCustomTypeSchema = modelProvider.customTypeSchemas()[field.targetType] ?: continue
                val deserializedCustomType = getDeserializedCustomTypeField(
                    fieldCustomTypeSchema = fieldCustomTypeSchema,
                    isFieldArray = field.isArray,
                    listOfSerializedData = if (field.isArray) fieldSerializedData as List<Map<String, Any?>> else null,
                    serializedData = if (!field.isArray) fieldSerializedData as Map<String, Any?> else null
                )

                if (deserializedCustomType != null) {
                    result[key] = deserializedCustomType
                }
            } else {
                result[key] = fieldSerializedData
            }
        }

        return result.toMap()
    }

    private fun getDeserializedCustomTypeField(
        fieldCustomTypeSchema: CustomTypeSchema,
        isFieldArray: Boolean = false,
        listOfSerializedData: List<Map<String, Any?>>? = null,
        serializedData: Map<String, Any?>? = null
    ): Any? {
        // When a field is custom type
        // the field value can only be a single custom type
        // or a list of item of the same custom type
        if (isFieldArray && listOfSerializedData != null) {
            return listOfSerializedData.map {
                SerializedCustomType.builder()
                    .serializedData(deserializeNestedCustomType(it, fieldCustomTypeSchema))
                    .customTypeSchema(fieldCustomTypeSchema)
                    .build()
            }
        }

        if (serializedData != null) {
            return SerializedCustomType.builder()
                .serializedData(deserializeNestedCustomType(serializedData, fieldCustomTypeSchema))
                .customTypeSchema(fieldCustomTypeSchema)
                .build()
        }

        return null
    }

    private fun registerSchemas(request: Map<String, Any>) {
        val modelSchemas: List<Map<String, Any>> = request["modelSchemas"].safeCastToList()!!
        val customTypeSchemas: List<Map<String, Any>> = request["customTypeSchemas"].safeCastToList() ?: emptyList()
        modelProvider.setVersion(request["modelProviderVersion"] as String)

        val flutterModelSchemaList =
            modelSchemas.map { FlutterModelSchema(it) }

        flutterModelSchemaList.forEach {
            val nativeSchema = it.convertToNativeModelSchema()
            modelProvider.addModelSchema(
                it.name,
                nativeSchema
            )
        }

        if (customTypeSchemas.isNotEmpty()) {
            val flutterCustomTypeSchemaList =
                customTypeSchemas.map { FlutterCustomTypeSchema(it) }

            flutterCustomTypeSchemaList.forEach {
                val nativeSchema = it.convertToNativeCustomTypeSchema()
                modelProvider.addCustomTypeSchema(
                    it.name,
                    nativeSchema
                )
            }
        }
    }

    private fun createErrorHandler(request: Map<String, Any>): DataStoreErrorHandler {
        return if (request["hasErrorHandler"] as? Boolean? == true) {
            DataStoreErrorHandler {
                val args = mapOf(
                    "errorCode" to "DataStoreException",
                    "errorMessage" to ExceptionMessages.defaultFallbackExceptionMessage,
                    "details" to createSerializedError(it)
                )
                channel.invokeMethod("errorHandler", args)
            }
        } else {
            DataStoreErrorHandler {
                LOG.error(it.toString())
            }
        }
    }

    private fun createConflictHandler(request: Map<String, Any>): DataStoreConflictHandler {
        return if (request["hasConflictHandler"] as? Boolean? == true) {
            DataStoreConflictHandler { conflictData,
                onDecision ->

                val modelName = conflictData.local.modelName
                val args = mapOf(
                    "modelName" to modelName,
                    "local" to FlutterSerializedModel(conflictData.local as SerializedModel).toMap(),
                    "remote" to FlutterSerializedModel(conflictData.remote as SerializedModel).toMap()
                )

                uiThreadHandler.post {
                    channel.invokeMethod(
                        "conflictHandler", args,
                        object : Result {
                            override fun success(result: Any?) {
                                val resultMap: Map<String, Any>? = result.safeCastToMap()
                                try {
                                    var resolutionStrategy: ResolutionStrategy = ResolutionStrategy.APPLY_REMOTE
                                    when (resultMap?.get("resolutionStrategy") as String) {
                                        "applyRemote" -> resolutionStrategy = ResolutionStrategy.APPLY_REMOTE
                                        "retryLocal" -> resolutionStrategy = ResolutionStrategy.RETRY_LOCAL
                                        "retry" -> resolutionStrategy = ResolutionStrategy.RETRY
                                    }
                                    when (resolutionStrategy) {
                                        ResolutionStrategy.APPLY_REMOTE -> onDecision.accept(DataStoreConflictHandler.ConflictResolutionDecision.applyRemote())
                                        ResolutionStrategy.RETRY_LOCAL -> onDecision.accept(DataStoreConflictHandler.ConflictResolutionDecision.retryLocal())
                                        ResolutionStrategy.RETRY -> {
                                            val serializedModel = SerializedModel.builder()
                                                .serializedData((resultMap["customModel"] as Map<*, *>).cast())
                                                .modelSchema(modelProvider.modelSchemas().getValue(modelName))
                                                .build()
                                            onDecision.accept(DataStoreConflictHandler.ConflictResolutionDecision.retry(serializedModel))
                                        }
                                    }
                                } catch (e: Exception) {
                                    LOG.error("Unrecognized resolutionStrategy to resolve conflict. Applying default conflict resolution, applyRemote.")
                                    onDecision.accept(DataStoreConflictHandler.ConflictResolutionDecision.applyRemote())
                                }
                            }

                            override fun error(errorCode: String?, errorMessage: String?, errorDetails: Any?) {
                                LOG.error("Error in conflict handler: $errorCode $errorMessage Applying default conflict resolution, applyRemote.")
                                onDecision.accept(DataStoreConflictHandler.ConflictResolutionDecision.applyRemote())
                            }

                            override fun notImplemented() {
                                LOG.error("Conflict handler not implemented.  Applying default conflict resolution, applyRemote.")
                                onDecision.accept(DataStoreConflictHandler.ConflictResolutionDecision.applyRemote())
                            }
                        }
                    )
                }
            }
        } else {
            DataStoreConflictHandler { _,
                onDecision ->
                onDecision.accept(DataStoreConflictHandler.ConflictResolutionDecision.applyRemote())
            }
        }
    }
}
