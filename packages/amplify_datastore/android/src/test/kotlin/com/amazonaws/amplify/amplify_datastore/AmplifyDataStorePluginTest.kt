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

import android.os.Looper.getMainLooper
import com.amazonaws.amplify.amplify_datastore.types.FlutterDataStoreFailureMessage
import com.amazonaws.amplify.amplify_datastore.types.hub.*
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
import com.amplifyframework.core.model.query.predicate.QueryPredicateOperation.not
import com.amplifyframework.core.model.temporal.Temporal
import com.amplifyframework.datastore.*
import com.amplifyframework.datastore.appsync.ModelMetadata
import com.amplifyframework.datastore.appsync.ModelWithMetadata
import com.amplifyframework.datastore.appsync.SerializedModel
import com.amplifyframework.datastore.events.ModelSyncedEvent
import com.amplifyframework.datastore.events.NetworkStatusEvent
import com.amplifyframework.datastore.events.OutboxStatusEvent
import com.amplifyframework.datastore.events.SyncQueriesStartedEvent
import com.amplifyframework.datastore.syncengine.NetworkStatusMonitor
import com.amplifyframework.datastore.syncengine.OutboxMutationEvent
import com.amplifyframework.hub.AWSHubPlugin
import com.amplifyframework.hub.HubChannel
import com.amplifyframework.hub.HubEvent
import com.amplifyframework.hub.SubscriptionToken
import io.flutter.plugin.common.MethodChannel
import org.json.JSONArray
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers.anyString
import org.mockito.ArgumentMatchers.matches
import org.mockito.Mockito.any
import org.mockito.Mockito.doAnswer
import org.mockito.Mockito.mock
import org.mockito.Mockito.spy
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import org.mockito.Mockito.`when`
import org.mockito.invocation.InvocationOnMock
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import java.lang.reflect.Field
import java.lang.reflect.Modifier
import java.util.concurrent.CountDownLatch

@RunWith(RobolectricTestRunner::class)
class AmplifyDataStorePluginTest {
    lateinit var flutterPlugin: AmplifyDataStorePlugin
    lateinit var modelSchema: ModelSchema
    lateinit var amplifySuccessResults: MutableList<SerializedModel>

    private var mockDataStore = mock(DataStoreCategory::class.java)
    private var mockAmplifyDataStorePlugin = mock(AWSDataStorePlugin::class.java)
    private var mockAmplifyHub = mock(AWSHubPlugin::class.java)
    private val mockResult: MethodChannel.Result = mock(MethodChannel.Result::class.java)
    private val mockStreamHandler: DataStoreObserveEventStreamHandler =
            mock(DataStoreObserveEventStreamHandler::class.java)
    private val mockHubHandler: DataStoreHubEventStreamHandler =
            mock(DataStoreHubEventStreamHandler::class.java)
    private var time = Temporal.Timestamp.now()



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
                                        "created" to Temporal.DateTime("2020-02-20T20:20:20-08:00")))
                        .modelSchema(modelSchema)
                        .build()
        )
        setFinalStatic(Amplify::class.java.getDeclaredField("DataStore"), mockDataStore)
        `when`(mockDataStore.getPlugin("awsDataStorePlugin")).thenReturn(mockAmplifyDataStorePlugin)
    }

    @Test
    fun test_query_success_result() {
        doAnswer { invocation: InvocationOnMock ->
            assertEquals(invocation.arguments[0], "Post")
            assertEquals(invocation.arguments[1], Where.matchesAll())
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
        doAnswer { invocation: InvocationOnMock ->
            assertEquals(invocation.arguments[0], "Post")
            assertEquals(invocation.arguments[1],
                    Where.matches(field("post.id").eq("123").or(field("rating").ge(4).and(not(
                            field("created").eq("2020-02-20T20:20:20-08:00")))))
                            .paginated(Page.startingAt(2).withLimit(8))
                            .sorted(field("post.id").ascending(),
                                    field("created").descending()))
            (invocation.arguments[2] as Consumer<Iterator<Model>>).accept(
                    emptyList<SerializedModel>().iterator())
            null
        }.`when`(mockAmplifyDataStorePlugin).query(anyString(), any(QueryOptions::class.java),
                any<Consumer<Iterator<Model>>>(),
                any<Consumer<DataStoreException>>())
        flutterPlugin.onQuery(mockResult,
                readMapFromFile("query_api",
                        "request/model_name_with_all_query_parameters.json",
                        HashMap::class.java) as HashMap<String, Any>)
        verify(mockResult, times(1)).success(emptyList<FlutterSerializedModel>())
    }

    @Test
    fun test_delete_success_result_no_predicates() {

        var modelData: HashMap<String, Any> = (readMapFromFile("delete_api",
                                                               "request/instance_no_predicate.json",
                                                               HashMap::class.java) as HashMap<String, Any>).get(
                "serializedModel") as HashMap<String, Any>

        var instance = SerializedModel.builder()
                .serializedData(modelData)
                .modelSchema(modelSchema)
                .build()

        var dataStoreItemChange = DataStoreItemChange.builder<SerializedModel>()
                .item(instance)
                .initiator(DataStoreItemChange.Initiator.LOCAL)
                .itemClass(SerializedModel::class.java)
                .type(DataStoreItemChange.Type.DELETE)
                .build()

        doAnswer { invocation: InvocationOnMock ->
            (invocation.arguments[1] as Consumer<DataStoreItemChange<SerializedModel>>).accept(
                    dataStoreItemChange)
            null
        }.`when`(mockAmplifyDataStorePlugin).delete(any(),
                any<Consumer<DataStoreItemChange<SerializedModel>>>(),
                any<Consumer<DataStoreException>>())

        flutterPlugin.onDelete(mockResult,
                readMapFromFile("delete_api",
                        "request/instance_no_predicate.json",
                        HashMap::class.java) as HashMap<String, Any>)

        verify(mockResult, times(1)).success(null)
    }

    @Test
    fun test_delete_error() {

        var dataStoreException = DataStoreException("AmplifyException",
                DataStoreException.REPORT_BUG_TO_AWS_SUGGESTION)

        doAnswer { invocation: InvocationOnMock ->
            (invocation.arguments[2] as Consumer<DataStoreException>).accept(
                    dataStoreException)
            null
        }.`when`(mockAmplifyDataStorePlugin).delete(any(),
                any<Consumer<DataStoreItemChange<SerializedModel>>>(),
                any<Consumer<DataStoreException>>())

        flutterPlugin.onDelete(mockResult,
                readMapFromFile("delete_api",
                        "request/instance_no_predicate.json",
                        HashMap::class.java) as HashMap<String, Any>)

        verify(mockResult, times(1)).error(
                matches("AmplifyException"),
                matches(FlutterDataStoreFailureMessage.AMPLIFY_DATASTORE_DELETE_FAILED.toString()),
                // TODO: Accurate match on errorMap
                any()
        )
    }

    @Test
    fun test_observe_success_event() {

        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (readMapFromFile("observe_api",
                "post_type_success_event.json",
                HashMap::class.java) as HashMap<String, Any>)
        var modelData = mapOf("id" to "43036c6b-8044-4309-bddc-262b6c686026",
                "title" to "Title 2",
                "created" to Temporal.DateTime("2020-02-20T20:20:20-08:00"))
        var instance = SerializedModel.builder()
                .serializedData(modelData)
                .modelSchema(modelSchema)
                .build()

        var dataStoreItemChange = DataStoreItemChange.builder<SerializedModel>()
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
    fun test_hub_outboxMutationEnqueued_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (readMapFromFile("hub",
                "outboxMutationEnqueuedEvent.json",
                HashMap::class.java) as HashMap<String, Any>)
        var element: HashMap<String, Any> = eventData["element"] as HashMap<String, Any>
        var metadataMap: HashMap<String, Any> = element["syncMetadata"] as HashMap<String, Any>
        var modelMap: HashMap<String, Any> = element["model"] as HashMap<String, Any>
        var serializedData: HashMap<String, Any> = modelMap["serializedData"] as HashMap<String, Any>
        var modelMetadata = ModelMetadata(metadataMap["id"] as String, metadataMap["_deleted"] as Boolean?, metadataMap["_version"] as Int?, time)
        var modelData = mapOf("id" to serializedData["id"] as String,
                "title" to serializedData["title"] as String,
                "created" to Temporal.DateTime(serializedData["created"] as String))
        var instance = SerializedModel.builder()
                .serializedData(modelData)
                .modelSchema(modelSchema)
                .build()

        var modelWithMetadata: ModelWithMetadata<SerializedModel> = ModelWithMetadata(instance, modelMetadata)
        var outboxMutationEnqueued: OutboxMutationEvent<*> = OutboxMutationEvent.fromModelWithMetadata(modelWithMetadata)
        var event: HubEvent<*> = HubEvent.create("outboxMutationEnqueued", outboxMutationEnqueued)

        val latch = CountDownLatch(1)

        val realHubHandler: DataStoreHubEventStreamHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterOutboxMutationEnqueuedEvent(
                eventData["eventName"] as String,
                eventData["modelName"] as String,
                modelWithMetadata
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch);
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_outboxMutationProcessed_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (readMapFromFile("hub",
                "outboxMutationProcessedEvent.json",
                HashMap::class.java) as HashMap<String, Any>)
        var element: HashMap<String, Any> = eventData["element"] as HashMap<String, Any>
        var metadataMap: HashMap<String, Any> = element["syncMetadata"] as HashMap<String, Any>
        var modelMap: HashMap<String, Any> = element["model"] as HashMap<String, Any>
        var serializedData: HashMap<String, Any> = modelMap["serializedData"] as HashMap<String, Any>
        var modelMetadata = ModelMetadata(metadataMap["id"] as String, metadataMap["_deleted"] as Boolean, metadataMap["_version"] as Int, time)
        var modelData = mapOf("id" to serializedData["id"] as String,
                "title" to serializedData["title"] as String,
                "created" to Temporal.DateTime(serializedData["created"] as String))
        var instance = SerializedModel.builder()
                .serializedData(modelData)
                .modelSchema(modelSchema)
                .build()

        var modelWithMetadata: ModelWithMetadata<SerializedModel> = ModelWithMetadata(instance, modelMetadata)
        var outboxMutationProcessed: OutboxMutationEvent<*> = OutboxMutationEvent.fromModelWithMetadata(modelWithMetadata)
        var event: HubEvent<*> = HubEvent.create("outboxMutationProcessed", outboxMutationProcessed)

        val latch = CountDownLatch(1)

        val realHubHandler: DataStoreHubEventStreamHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterOutboxMutationEnqueuedEvent(
                eventData["eventName"] as String,
                eventData["modelName"] as String,
                modelWithMetadata
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch);
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_ready_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (readMapFromFile("hub",
                "readyEvent.json",
                HashMap::class.java) as HashMap<String, Any>)

        var event: HubEvent<*> = HubEvent.create(DataStoreChannelEventName.READY);

        val latch = CountDownLatch(1)

        val realHubHandler: DataStoreHubEventStreamHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterReadyEvent(
            eventData["eventName"] as String
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch);
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_subscriptionsEstablished_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (readMapFromFile("hub",
                "subscriptionsEstablishedEvent.json",
                HashMap::class.java) as HashMap<String, Any>)

        var event: HubEvent<*> = HubEvent.create(DataStoreChannelEventName.SUBSCRIPTIONS_ESTABLISHED);

        val latch = CountDownLatch(1)

        val realHubHandler: DataStoreHubEventStreamHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterSubscriptionsEstablishedEvent(
            eventData["eventName"] as String
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch);
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_syncQueriesReady_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (readMapFromFile("hub",
                "syncQueriesReadyEvent.json",
                HashMap::class.java) as HashMap<String, Any>)

        var event: HubEvent<*> = HubEvent.create(DataStoreChannelEventName.SYNC_QUERIES_READY);

        val latch = CountDownLatch(1)

        val realHubHandler: DataStoreHubEventStreamHandler = DataStoreHubEventStreamHandler(latch)

        mockAmplifyHub.publish(HubChannel.DATASTORE, event)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterSyncQueriesReadyEvent(
            eventData["eventName"] as String
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch);
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_networkStatus_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (readMapFromFile("hub",
                "networkStatusEvent.json",
                HashMap::class.java) as HashMap<String, Any>)

        var networkStatusEvent: NetworkStatusEvent = NetworkStatusEvent(eventData["active"] as Boolean)

        val latch = CountDownLatch(1)

        val realHubHandler: DataStoreHubEventStreamHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterNetworkStatusEvent(
            eventData["eventName"] as String,
            eventData["active"] as Boolean
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, networkStatusEvent.toHubEvent())
        Latch.await(latch);
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_outboxStatus_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (readMapFromFile("hub",
                "outboxStatusEvent.json",
                HashMap::class.java) as HashMap<String, Any>)

        var outboxStatusEvent: OutboxStatusEvent = OutboxStatusEvent(eventData["isEmpty"] as Boolean)

        val latch = CountDownLatch(1)

        val realHubHandler: DataStoreHubEventStreamHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterOutboxStatusEvent(
                eventData["eventName"] as String,
                eventData["isEmpty"] as Boolean
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, outboxStatusEvent.toHubEvent())
        Latch.await(latch);
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_syncQueriesStarted_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (readMapFromFile("hub",
                "syncQueriesStartedEvent.json",
                HashMap::class.java) as HashMap<String, Any>)

        var syncQueriesStartedEvent: SyncQueriesStartedEvent = SyncQueriesStartedEvent(arrayOf("Post"))
        var event: HubEvent<*> = HubEvent.create("syncQueriesStarted", syncQueriesStartedEvent)

        val latch = CountDownLatch(1)

        val realHubHandler: DataStoreHubEventStreamHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterSyncQueriesStartedEvent(
            eventData["eventName"] as String,
            arrayOf("Post")
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch);
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_modelSynced_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (readMapFromFile("hub",
                "modelSyncedEvent.json",
                HashMap::class.java) as HashMap<String, Any>)

        var modelSyncedEvent: ModelSyncedEvent = ModelSyncedEvent(
            eventData["modelName"] as String,
            eventData["isFullSync"] as Boolean,
            eventData["added"] as Int,
            eventData["updated"] as Int,
            eventData["deleted"] as Int
        )
        var event: HubEvent<*> = HubEvent.create("modelSynced", modelSyncedEvent)

        val latch = CountDownLatch(1)

        val realHubHandler: DataStoreHubEventStreamHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterModelSyncedEvent(
            eventData["eventName"] as String,
            eventData["modelName"] as String,
            eventData["isFullSync"] as Boolean,
            eventData["isDeltaSync"] as Boolean,
            eventData["added"] as Int,
            eventData["updated"] as Int,
            eventData["deleted"] as Int
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch);
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_observe_error_event() {

        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var dataStoreException = DataStoreException("AmplifyException",
                DataStoreException.REPORT_BUG_TO_AWS_SUGGESTION)
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
                "AmplifyException",
                FlutterDataStoreFailureMessage.AMPLIFY_DATASTORE_OBSERVE_EVENT_FAILURE.toString(),
                mapOf(
                        "PLATFORM_EXCEPTIONS" to
                                mapOf(
                                        "platform" to "Android",
                                        "localizedErrorMessage" to "AmplifyException",
                                        "recoverySuggestion" to DataStoreException.REPORT_BUG_TO_AWS_SUGGESTION,
                                        "errorString" to dataStoreException.toString()))
        )
    }

    @Test
    fun test_Clear_Success_Result() {
        doAnswer { invocation: InvocationOnMock ->
            (invocation.arguments[0] as Action).call()
            null as Void?
        }.`when`(mockAmplifyDataStorePlugin).clear(any<Action>(), any<Consumer<DataStoreException>>())

        flutterPlugin.onClear(mockResult)

        verify(mockResult, times(1)).success(null)
    }

    @Test
    fun test_Clear_Error() {
        var dataStoreException = DataStoreException("AmplifyException", DataStoreException.REPORT_BUG_TO_AWS_SUGGESTION)

        doAnswer { invocation: InvocationOnMock ->
            (invocation.arguments[1] as Consumer<DataStoreException>).accept(
                    dataStoreException)
            null as Void?
        }.`when`(mockAmplifyDataStorePlugin).clear(any<Action>(), any<Consumer<DataStoreException>>())

        flutterPlugin.onClear(mockResult)

        verify(mockResult, times(1)).error(
                "AmplifyException",
                FlutterDataStoreFailureMessage.AMPLIFY_DATASTORE_CLEAR_FAILED.toString(),
                mapOf("PLATFORM_EXCEPTIONS" to
                        mapOf(
                                "platform" to "Android",
                                "localizedErrorMessage" to "AmplifyException",
                                "recoverySuggestion" to DataStoreException.REPORT_BUG_TO_AWS_SUGGESTION,
                                "errorString" to dataStoreException.toString()))
        )
    }

    private fun setFinalStatic(field: Field, newValue: Any?) {
        field.isAccessible = true
        val modifiersField: Field = Field::class.java.getDeclaredField("modifiers")
        modifiersField.isAccessible = true
        modifiersField.setInt(field, field.modifiers and Modifier.FINAL.inv())
        field.set(null, newValue)
    }
}
