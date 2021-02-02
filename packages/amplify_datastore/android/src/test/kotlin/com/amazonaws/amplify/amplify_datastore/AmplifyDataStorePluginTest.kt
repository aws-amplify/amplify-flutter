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

import com.amazonaws.amplify.amplify_core.exception.ExceptionMessages
import com.amazonaws.amplify.amplify_datastore.types.model.FlutterSerializedModel
import com.amplifyframework.core.Action
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.Consumer
import com.amplifyframework.core.async.Cancelable
import com.amplifyframework.core.model.Model
import com.amplifyframework.core.model.ModelSchema
import com.amplifyframework.core.model.query.Page
import com.amplifyframework.core.model.query.QueryOptions
import com.amplifyframework.core.model.query.Where
import com.amplifyframework.core.model.query.predicate.QueryField.field
import com.amplifyframework.core.model.query.predicate.QueryPredicate
import com.amplifyframework.core.model.query.predicate.QueryPredicateOperation.not
import com.amplifyframework.core.model.query.predicate.QueryPredicates
import com.amplifyframework.core.model.temporal.Temporal
import com.amplifyframework.datastore.AWSDataStorePlugin
import com.amplifyframework.datastore.DataStoreCategory
import com.amplifyframework.datastore.DataStoreException
import com.amplifyframework.datastore.DataStoreItemChange
import com.amplifyframework.datastore.appsync.SerializedModel
import io.flutter.plugin.common.MethodChannel
import java.lang.reflect.Field
import java.lang.reflect.Modifier
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers.any
import org.mockito.ArgumentMatchers.anyString
import org.mockito.Mockito.`when`
import org.mockito.Mockito.doAnswer
import org.mockito.Mockito.mock
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import org.mockito.Mockito.verifyNoInteractions
import org.mockito.invocation.InvocationOnMock
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AmplifyDataStorePluginTest {
    lateinit var flutterPlugin: AmplifyDataStorePlugin
    lateinit var modelSchema: ModelSchema
    lateinit var amplifySuccessResults: MutableList<SerializedModel>

    private var mockDataStore = mock(DataStoreCategory::class.java)
    private var mockAmplifyDataStorePlugin = mock(AWSDataStorePlugin::class.java)
    private val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
    private val mockStreamHandler: DataStoreObserveEventStreamHandler =
            mock(DataStoreObserveEventStreamHandler::class.java)
    private val mockHubHandler: DataStoreHubEventStreamHandler =
            mock(DataStoreHubEventStreamHandler::class.java)
    private val dataStoreException =
            DataStoreException("Some useful exception message", "Some useful recovery message")

    @Before
    fun setup() {
        flutterPlugin = AmplifyDataStorePlugin()
        val modelProvider = FlutterModelProvider.instance
        modelProvider.addModelSchema("Post", postSchema)

        modelSchema = flutterPlugin.modelProvider.modelSchemas()["Post"]!!
        amplifySuccessResults = mutableListOf<SerializedModel>(
                SerializedModel.builder()
                        .serializedData(
                                mapOf("id" to "4281dfba-96c8-4a38-9a8e-35c7e893ea47",
                                        "title" to "Title 1",
                                        "rating" to 4))
                        .modelSchema(modelSchema)
                        .build(),
                SerializedModel.builder()
                        .serializedData(
                                mapOf("id" to "43036c6b-8044-4309-bddc-262b6c686026",
                                        "title" to "Title 2",
                                        "created" to Temporal.DateTime(
                                                "2020-02-20T20:20:20-08:00")))
                        .modelSchema(modelSchema)
                        .build()
        )
        setFinalStatic(Amplify::class.java.getDeclaredField("DataStore"), mockDataStore)
        `when`(mockDataStore.getPlugin("awsDataStorePlugin")).thenReturn(mockAmplifyDataStorePlugin)
    }

    @Test
    fun test_query_success_result() {
        doAnswer { invocation: InvocationOnMock ->
            assertEquals("Post", invocation.arguments[0])
            assertEquals(Where.matchesAll(), invocation.arguments[1])
            (invocation.arguments[2] as Consumer<Iterator<Model>>).accept(
                    amplifySuccessResults.iterator())
            null
        }.`when`(mockAmplifyDataStorePlugin).query(anyString(), any(QueryOptions::class.java),
                any<Consumer<Iterator<Model>>>(),
                any<Consumer<DataStoreException>>())
        flutterPlugin.onQuery(mockResult,
                readMapFromFile("query_api",
                        "request/only_model_name.json",
                        HashMap::class.java) as HashMap<String, Any>)
        verify(mockResult, times(1)).success(
                readMapFromFile("query_api",
                        "response/2_results.json",
                        List::class.java))
    }

    @Test
    fun test_query_with_predicates_success_zero_result() {
        val queryOptions =
                Where.matches(field("post.id").eq("123").or(field("rating").ge(4).and(not(
                        field("created").eq("2020-02-20T20:20:20-08:00")))))
                        .paginated(Page.startingAt(2).withLimit(8))
                        .sorted(field("post.id").ascending(), field("created").descending())

        doAnswer { invocation: InvocationOnMock ->
            assertEquals("Post", invocation.arguments[0])
            assertEquals(queryOptions, invocation.arguments[1])
            (invocation.arguments[2] as Consumer<Iterator<Model>>).accept(
                    emptyList<SerializedModel>().iterator())
            null
        }.`when`(mockAmplifyDataStorePlugin).query(
                anyString(),
                any(QueryOptions::class.java),
                any<Consumer<Iterator<Model>>>(),
                any<Consumer<DataStoreException>>())
        flutterPlugin.onQuery(mockResult,
                readMapFromFile("query_api",
                        "request/model_name_with_all_query_parameters.json",
                        HashMap::class.java) as HashMap<String, Any>)
        verify(mockResult, times(1)).success(emptyList<FlutterSerializedModel>())
    }

    @Test
    fun test_query_api_error() {
        val testRequest: HashMap<String, Any> = (readMapFromFile("query_api",
                "request/only_model_name.json",
                HashMap::class.java) as HashMap<String, Any>)

        doAnswer { invocation: InvocationOnMock ->
            assertEquals("Post", invocation.arguments[0])
            assertEquals(Where.matchesAll(), invocation.arguments[1])
            (invocation.arguments[3] as Consumer<DataStoreException>).accept(
                    dataStoreException)
            null
        }.`when`(mockAmplifyDataStorePlugin).query(
                anyString(),
                any(QueryOptions::class.java),
                any<Consumer<Iterator<Model>>>(),
                any<Consumer<DataStoreException>>())

        flutterPlugin.onQuery(mockResult, testRequest)

        verify(mockResult, times(1)).error(
                "DataStoreException",
                ExceptionMessages.defaultFallbackExceptionMessage,
                mapOf(
                        "message" to "Some useful exception message",
                        "recoverySuggestion" to "Some useful recovery message")
        )
    }

    @Test
    fun test_query_malformed_request_casting_error() {
        val testRequest: HashMap<String, Any> = HashMap()

        flutterPlugin.onQuery(mockResult, testRequest)

        verifyNoInteractions(mockAmplifyDataStorePlugin)
        verify(mockResult, times(1)).error(
                "DataStoreException",
                ExceptionMessages.defaultFallbackExceptionMessage,
                mapOf(
                        "message" to ExceptionMessages.missingExceptionMessage,
                        "recoverySuggestion" to ExceptionMessages.missingRecoverySuggestion,
                        "underlyingException" to "kotlin.TypeCastException: null cannot be cast to non-null type kotlin.String")
        )
    }

    @Test
    fun test_delete_success_result_no_predicates() {
        val testRequest: HashMap<String, Any> = (readMapFromFile("delete_api",
                "request/instance_no_predicate.json",
                HashMap::class.java) as HashMap<String, Any>)

        val serializedModelData: HashMap<String, Any> =
                testRequest["serializedModel"] as HashMap<String, Any>

        val serializedModel = SerializedModel.builder()
                .serializedData(serializedModelData)
                .modelSchema(modelSchema)
                .build()

        val dataStoreItemChange = DataStoreItemChange.builder<SerializedModel>()
                .item(serializedModel)
                .initiator(DataStoreItemChange.Initiator.LOCAL)
                .itemClass(SerializedModel::class.java)
                .type(DataStoreItemChange.Type.DELETE)
                .build()

        doAnswer { invocation: InvocationOnMock ->
            assertEquals(serializedModel, invocation.arguments[0])
            (invocation.arguments[1] as Consumer<DataStoreItemChange<SerializedModel>>).accept(
                    dataStoreItemChange)
            null as Void?
        }.`when`(mockAmplifyDataStorePlugin).delete(
                any<SerializedModel>(),
                any<
                        Consumer<DataStoreItemChange<SerializedModel>>>(),
                any<Consumer<DataStoreException>>())

        flutterPlugin.onDelete(mockResult, testRequest)

        verify(mockResult, times(1)).success(null)
    }

    @Test
    fun test_delete_api_error() {

        val testRequest: HashMap<String, Any> = (readMapFromFile("delete_api",
                "request/instance_no_predicate.json",
                HashMap::class.java) as HashMap<String, Any>)

        val serializedModelData: HashMap<String, Any> =
                testRequest["serializedModel"] as HashMap<String, Any>

        val serializedModel = SerializedModel.builder()
                .serializedData(serializedModelData)
                .modelSchema(modelSchema)
                .build()

        doAnswer { invocation: InvocationOnMock ->
            assertEquals(serializedModel, invocation.arguments[0])
            (invocation.arguments[2] as Consumer<DataStoreException>).accept(
                    dataStoreException)
            null as Void?
        }.`when`(mockAmplifyDataStorePlugin).delete(
                any<SerializedModel>(),
                any<
                        Consumer<DataStoreItemChange<SerializedModel>>>(),
                any<Consumer<DataStoreException>>())

        flutterPlugin.onDelete(mockResult, testRequest)

        verify(mockResult, times(1)).error(
                "DataStoreException",
                ExceptionMessages.defaultFallbackExceptionMessage,
                mapOf(
                        "message" to "Some useful exception message",
                        "recoverySuggestion" to "Some useful recovery message")
        )
    }

    @Test
    fun test_delete_malformed_request_error() {
        val testRequest: HashMap<String, Any> = HashMap()

        flutterPlugin.onDelete(mockResult, testRequest)

        verifyNoInteractions(mockAmplifyDataStorePlugin)
        verify(mockResult, times(1)).error(
                "DataStoreException",
                ExceptionMessages.defaultFallbackExceptionMessage,
                mapOf(
                        "message" to ExceptionMessages.missingExceptionMessage,
                        "recoverySuggestion" to ExceptionMessages.missingRecoverySuggestion,
                        "underlyingException" to "kotlin.TypeCastException: null cannot be cast to non-null type kotlin.String")
        )
    }

    @Test
    fun test_save_success_result_no_predicates() {
        val testRequest: HashMap<String, Any> = (readMapFromFile("save_api",
                "request/instance_without_predicate.json",
                HashMap::class.java) as HashMap<String, Any>)

        val serializedModelData: HashMap<String, Any> =
                testRequest["serializedModel"] as HashMap<String, Any>

        val serializedModel = SerializedModel.builder()
                .serializedData(serializedModelData)
                .modelSchema(modelSchema)
                .build()

        val dataStoreItemChange = DataStoreItemChange.builder<SerializedModel>()
                .item(serializedModel)
                .initiator(DataStoreItemChange.Initiator.LOCAL)
                .itemClass(SerializedModel::class.java)
                .type(DataStoreItemChange.Type.CREATE)
                .build()

        doAnswer { invocation: InvocationOnMock ->
            assertEquals(serializedModel, invocation.arguments[0])
            assertEquals(QueryPredicates.all(), invocation.arguments[1])
            (invocation.arguments[2] as Consumer<DataStoreItemChange<SerializedModel>>).accept(
                    dataStoreItemChange)
            null as Void?
        }.`when`(mockAmplifyDataStorePlugin).save(
                any<SerializedModel>(),
                any<QueryPredicate>(),
                any<
                        Consumer<DataStoreItemChange<SerializedModel>>>(),
                any<Consumer<DataStoreException>>())

        flutterPlugin.onSave(mockResult, testRequest)

        verify(mockResult, times(1)).success(null)
    }

    @Test
    fun test_save_api_error() {

        val testRequest: HashMap<String, Any> = (readMapFromFile("save_api",
                "request/instance_without_predicate.json",
                HashMap::class.java) as HashMap<String, Any>)

        val serializedModelData: HashMap<String, Any> =
                testRequest["serializedModel"] as HashMap<String, Any>

        val serializedModel = SerializedModel.builder()
                .serializedData(serializedModelData)
                .modelSchema(modelSchema)
                .build()

        doAnswer { invocation: InvocationOnMock ->
            assertEquals(serializedModel, invocation.arguments[0])
            assertEquals(QueryPredicates.all(), invocation.arguments[1])
            (invocation.arguments[3] as Consumer<DataStoreException>).accept(
                    dataStoreException)
            null as Void?
        }.`when`(mockAmplifyDataStorePlugin).save(
                any<SerializedModel>(),
                any<QueryPredicate>(),
                any<Consumer<DataStoreItemChange<SerializedModel>>>(),
                any<Consumer<DataStoreException>>())

        flutterPlugin.onSave(mockResult, testRequest)

        verify(mockResult, times(1)).error(
                "DataStoreException",
                ExceptionMessages.defaultFallbackExceptionMessage,
                mapOf(
                        "message" to "Some useful exception message",
                        "recoverySuggestion" to "Some useful recovery message")
        )
    }

    @Test
    fun test_save_malformed_request_error() {
        val testRequest: HashMap<String, Any> = HashMap()

        flutterPlugin.onSave(mockResult, testRequest)

        verifyNoInteractions(mockAmplifyDataStorePlugin)
        verify(mockResult, times(1)).error(
                "DataStoreException",
                ExceptionMessages.defaultFallbackExceptionMessage,
                mapOf(
                        "message" to ExceptionMessages.missingExceptionMessage,
                        "recoverySuggestion" to ExceptionMessages.missingRecoverySuggestion,
                        "underlyingException" to "kotlin.TypeCastException: null cannot be cast to non-null type kotlin.String")
        )
    }

    @Test
    fun test_observe_success_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler,
                hubEventHandler = mockHubHandler)
        val eventData: HashMap<String, Any> = (readMapFromFile("observe_api",
                "post_type_success_event.json",
                HashMap::class.java) as HashMap<String, Any>)
        val modelData = mapOf("id" to "43036c6b-8044-4309-bddc-262b6c686026",
                "title" to "Title 2",
                "created" to Temporal.DateTime("2020-02-20T20:20:20-08:00"))
        val instance = SerializedModel.builder()
                .serializedData(modelData)
                .modelSchema(modelSchema)
                .build()

        val dataStoreItemChange = DataStoreItemChange.builder<SerializedModel>()
                .item(instance)
                .initiator(DataStoreItemChange.Initiator.LOCAL)
                .itemClass(SerializedModel::class.java)
                .type(DataStoreItemChange.Type.CREATE)
                .build()

        doAnswer { invocation: InvocationOnMock ->
            (invocation.arguments[1] as Consumer<DataStoreItemChange<SerializedModel>>).accept(
                    dataStoreItemChange)
            null
        }.`when`(mockAmplifyDataStorePlugin).observe(any<Consumer<Cancelable>>(),
                any<Consumer<DataStoreItemChange<out Model>>>(),
                any<Consumer<DataStoreException>>(),
                any<Action>())

        flutterPlugin.onSetupObserve(mockResult)

        verify(mockResult, times(1)).success(true)
        verify(mockStreamHandler, times(1)).sendEvent(eventData)
    }

    @Test
    fun test_observe_error_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler,
                hubEventHandler = mockHubHandler)

        doAnswer { invocation: InvocationOnMock ->
            (invocation.arguments[2] as Consumer<DataStoreException>).accept(
                    dataStoreException)
            null
        }.`when`(mockAmplifyDataStorePlugin).observe(any<Consumer<Cancelable>>(),
                any<Consumer<DataStoreItemChange<out Model>>>(),
                any<Consumer<DataStoreException>>(),
                any<Action>())

        flutterPlugin.onSetupObserve(mockResult)

        verify(mockResult, times(1)).success(true)
        verify(mockStreamHandler, times(1)).error(
                "DataStoreException",
                mapOf(
                        "message" to "Some useful exception message",
                        "recoverySuggestion" to "Some useful recovery message")
        )
    }

    @Test
    fun test_clear_success_result() {
        doAnswer { invocation: InvocationOnMock ->
            (invocation.arguments[0] as Action).call()
            null as Void?
        }.`when`(mockAmplifyDataStorePlugin)
                .clear(any<Action>(), any<Consumer<DataStoreException>>())

        flutterPlugin.onClear(mockResult)

        verify(mockResult, times(1)).success(null)
    }

    @Test
    fun test_clear_error() {

        doAnswer { invocation: InvocationOnMock ->
            (invocation.arguments[1] as Consumer<DataStoreException>).accept(
                    dataStoreException)
            null as Void?
        }.`when`(mockAmplifyDataStorePlugin)
                .clear(any<Action>(), any<Consumer<DataStoreException>>())

        flutterPlugin.onClear(mockResult)

        verify(mockResult, times(1)).error(
                "DataStoreException",
                ExceptionMessages.defaultFallbackExceptionMessage,
                mapOf(
                        "message" to "Some useful exception message",
                        "recoverySuggestion" to "Some useful recovery message")
        )
    }

    @Test
    fun test_nested_model_deserialization() {
        val nestedSerializedModelInput = mapOf<String, Any>(
                "id" to "af9cfa64-1ea9-46d6-b9e2-8203179d5392",
                "name" to "A brilliant Post",
                "rating" to 5,
                "blog" to mapOf<String, Any>(
                        "name" to "Amazing Blog",
                        "id" to "8cb7d5a5-435d-4632-a890-90ed0c6107f5"
                ) as HashMap<String, Any>
        ) as HashMap<String, Any>

        val nestedSerializedModelOutput = mapOf(
                "id" to "af9cfa64-1ea9-46d6-b9e2-8203179d5392",
                "name" to "A brilliant Post",
                "rating" to 5,
                "blog" to SerializedModel.builder().serializedData(mapOf<String, Any>(
                        "name" to "Amazing Blog",
                        "id" to "8cb7d5a5-435d-4632-a890-90ed0c6107f5"
                ) as HashMap<String, Any>).modelSchema(null).build()
        )

        assertEquals(nestedSerializedModelOutput,
                flutterPlugin.deserializeNestedModels(nestedSerializedModelInput))
    }

    private fun setFinalStatic(field: Field, newValue: Any?) {
        field.isAccessible = true
        val modifiersField: Field = Field::class.java.getDeclaredField("modifiers")
        modifiersField.isAccessible = true
        modifiersField.setInt(field, field.modifiers and Modifier.FINAL.inv())
        field.set(null, newValue)
    }
}