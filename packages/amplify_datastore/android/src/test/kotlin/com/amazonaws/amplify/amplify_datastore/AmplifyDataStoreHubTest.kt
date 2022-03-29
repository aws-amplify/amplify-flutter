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
import com.amazonaws.amplify.amplify_datastore.types.hub.FlutterModelSyncedEvent
import com.amazonaws.amplify.amplify_datastore.types.hub.FlutterNetworkStatusEvent
import com.amazonaws.amplify.amplify_datastore.types.hub.FlutterOutboxMutationEnqueuedEvent
import com.amazonaws.amplify.amplify_datastore.types.hub.FlutterOutboxMutationProcessedEvent
import com.amazonaws.amplify.amplify_datastore.types.hub.FlutterOutboxStatusEvent
import com.amazonaws.amplify.amplify_datastore.types.hub.FlutterReadyEvent
import com.amazonaws.amplify.amplify_datastore.types.hub.FlutterSubscriptionsEstablishedEvent
import com.amazonaws.amplify.amplify_datastore.types.hub.FlutterSyncQueriesReadyEvent
import com.amazonaws.amplify.amplify_datastore.types.hub.FlutterSyncQueriesStartedEvent
import com.amplifyframework.core.Amplify
import com.amplifyframework.core.model.ModelSchema
import com.amplifyframework.core.model.SerializedModel
import com.amplifyframework.core.model.temporal.Temporal
import com.amplifyframework.datastore.AWSDataStorePlugin
import com.amplifyframework.datastore.DataStoreCategory
import com.amplifyframework.datastore.DataStoreChannelEventName
import com.amplifyframework.datastore.appsync.ModelMetadata
import com.amplifyframework.datastore.appsync.ModelWithMetadata
import com.amplifyframework.datastore.events.ModelSyncedEvent
import com.amplifyframework.datastore.events.NetworkStatusEvent
import com.amplifyframework.datastore.events.OutboxStatusEvent
import com.amplifyframework.datastore.events.SyncQueriesStartedEvent
import com.amplifyframework.datastore.syncengine.OutboxMutationEvent
import com.amplifyframework.hub.AWSHubPlugin
import com.amplifyframework.hub.HubChannel
import com.amplifyframework.hub.HubEvent
import com.amplifyframework.hub.SubscriptionToken
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mockito.mock
import org.mockito.Mockito.spy
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import org.mockito.Mockito.`when`
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import java.lang.reflect.Field
import java.lang.reflect.Modifier
import java.util.concurrent.CountDownLatch

@RunWith(RobolectricTestRunner::class)
class AmplifyDataStoreHubTest {
    lateinit var flutterPlugin: AmplifyDataStorePlugin
    lateinit var modelSchema: ModelSchema
    private var mockDataStore = mock(DataStoreCategory::class.java)
    private var mockAmplifyDataStorePlugin = mock(AWSDataStorePlugin::class.java)
    private var mockAmplifyHub = mock(AWSHubPlugin::class.java)
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
        setFinalStatic(Amplify::class.java.getDeclaredField("DataStore"), mockDataStore)
        `when`(mockDataStore.getPlugin("awsDataStorePlugin")).thenReturn(mockAmplifyDataStorePlugin)
    }

    @Test
    fun test_hub_outboxMutationEnqueued_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (
            readMapFromFile(
                "hub",
                "outboxMutationEnqueuedEvent.json",
                HashMap::class.java
            ) as HashMap<String, Any>
            )
        var element: HashMap<String, Any> = eventData["element"] as HashMap<String, Any>
        var metadataMap: HashMap<String, Any>
        var modelMap: HashMap<String, Any> = element["model"] as HashMap<String, Any>
        var serializedData: HashMap<String, Any> = modelMap["serializedData"] as HashMap<String, Any>
        var modelMetadata = ModelMetadata(modelMap["id"] as String, null, null, null)
        var modelData = mapOf(
            "id" to serializedData["id"] as String,
            "title" to serializedData["title"] as String,
            "created" to Temporal.DateTime(serializedData["created"] as String)
        )
        var instance = SerializedModel.builder()
            .serializedData(modelData)
            .modelSchema(modelSchema)
            .build()

        var modelWithMetadata: ModelWithMetadata<SerializedModel> = ModelWithMetadata(instance, modelMetadata)
        var outboxMutationEnqueued: OutboxMutationEvent<*> = OutboxMutationEvent.create(eventData["modelName"] as String, modelWithMetadata)
        var event: HubEvent<*> = HubEvent.create("outboxMutationEnqueued", outboxMutationEnqueued)

        val latch = CountDownLatch(1)

        val realHubHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterOutboxMutationEnqueuedEvent(
            eventData["eventName"] as String,
            eventData["modelName"] as String,
            outboxMutationEnqueued.element
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch)
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_outboxMutationProcessed_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (
            readMapFromFile(
                "hub",
                "outboxMutationProcessedEvent.json",
                HashMap::class.java
            ) as HashMap<String, Any>
            )
        var element: HashMap<String, Any> = eventData["element"] as HashMap<String, Any>
        var metadataMap: HashMap<String, Any> = element["syncMetadata"] as HashMap<String, Any>
        var modelMap: HashMap<String, Any> = element["model"] as HashMap<String, Any>
        var serializedData: HashMap<String, Any> = modelMap["serializedData"] as HashMap<String, Any>
        var modelMetadata = ModelMetadata(metadataMap["id"] as String, metadataMap["_deleted"] as Boolean, metadataMap["_version"] as Int, time)
        var modelData = mapOf(
            "id" to serializedData["id"] as String,
            "title" to serializedData["title"] as String,
            "created" to Temporal.DateTime(serializedData["created"] as String)
        )
        var instance = SerializedModel.builder()
            .serializedData(modelData)
            .modelSchema(modelSchema)
            .build()

        var modelWithMetadata: ModelWithMetadata<SerializedModel> = ModelWithMetadata(instance, modelMetadata)
        var outboxMutationProcessed: OutboxMutationEvent<*> = OutboxMutationEvent.create(eventData["modelName"] as String, modelWithMetadata)
        var event: HubEvent<*> = HubEvent.create("outboxMutationProcessed", outboxMutationProcessed)

        val latch = CountDownLatch(1)

        val realHubHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterOutboxMutationProcessedEvent(
            eventData["eventName"] as String,
            eventData["modelName"] as String,
            outboxMutationProcessed.element
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch)
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_ready_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (
            readMapFromFile(
                "hub",
                "readyEvent.json",
                HashMap::class.java
            ) as HashMap<String, Any>
            )

        var event: HubEvent<*> = HubEvent.create(DataStoreChannelEventName.READY)

        val latch = CountDownLatch(1)

        val realHubHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterReadyEvent(
            eventData["eventName"] as String
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch)
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_subscriptionsEstablished_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (
            readMapFromFile(
                "hub",
                "subscriptionsEstablishedEvent.json",
                HashMap::class.java
            ) as HashMap<String, Any>
            )

        var event: HubEvent<*> = HubEvent.create(DataStoreChannelEventName.SUBSCRIPTIONS_ESTABLISHED)

        val latch = CountDownLatch(1)

        val realHubHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterSubscriptionsEstablishedEvent(
            eventData["eventName"] as String
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch)
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_syncQueriesReady_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (
            readMapFromFile(
                "hub",
                "syncQueriesReadyEvent.json",
                HashMap::class.java
            ) as HashMap<String, Any>
            )

        var event: HubEvent<*> = HubEvent.create(DataStoreChannelEventName.SYNC_QUERIES_READY)

        val latch = CountDownLatch(1)

        val realHubHandler = DataStoreHubEventStreamHandler(latch)

        mockAmplifyHub.publish(HubChannel.DATASTORE, event)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterSyncQueriesReadyEvent(
            eventData["eventName"] as String
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch)
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_networkStatus_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (
            readMapFromFile(
                "hub",
                "networkStatusEvent.json",
                HashMap::class.java
            ) as HashMap<String, Any>
            )

        var networkStatusEvent: NetworkStatusEvent = NetworkStatusEvent(eventData["active"] as Boolean)

        val latch = CountDownLatch(1)

        val realHubHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterNetworkStatusEvent(
            eventData["eventName"] as String,
            eventData["active"] as Boolean
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, networkStatusEvent.toHubEvent())
        Latch.await(latch)
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_outboxStatus_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (
            readMapFromFile(
                "hub",
                "outboxStatusEvent.json",
                HashMap::class.java
            ) as HashMap<String, Any>
            )

        var outboxStatusEvent = OutboxStatusEvent(eventData["isEmpty"] as Boolean)

        val latch = CountDownLatch(1)

        val realHubHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterOutboxStatusEvent(
            eventData["eventName"] as String,
            eventData["isEmpty"] as Boolean
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, outboxStatusEvent.toHubEvent())
        Latch.await(latch)
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_syncQueriesStarted_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (
            readMapFromFile(
                "hub",
                "syncQueriesStartedEvent.json",
                HashMap::class.java
            ) as HashMap<String, Any>
            )

        var syncQueriesStartedEvent: SyncQueriesStartedEvent = SyncQueriesStartedEvent(arrayOf("Post"))
        var event: HubEvent<*> = HubEvent.create("syncQueriesStarted", syncQueriesStartedEvent)

        val latch = CountDownLatch(1)

        val realHubHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterSyncQueriesStartedEvent(
            eventData["eventName"] as String,
            arrayOf("Post")
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch)
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_hub_modelSynced_event() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (
            readMapFromFile(
                "hub",
                "modelSyncedEvent.json",
                HashMap::class.java
            ) as HashMap<String, Any>
            )

        var modelSyncedEvent: ModelSyncedEvent = ModelSyncedEvent(
            eventData["model"] as String,
            eventData["isFullSync"] as Boolean,
            eventData["added"] as Int,
            eventData["updated"] as Int,
            eventData["deleted"] as Int
        )
        var event: HubEvent<*> = HubEvent.create("modelSynced", modelSyncedEvent)

        val latch = CountDownLatch(1)

        val realHubHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterModelSyncedEvent(
            eventData["eventName"] as String,
            eventData["model"] as String,
            eventData["isFullSync"] as Boolean,
            eventData["isDeltaSync"] as Boolean,
            eventData["added"] as Int,
            eventData["updated"] as Int,
            eventData["deleted"] as Int
        )

        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch)
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())
    }

    @Test
    fun test_replay_events() {
        flutterPlugin = AmplifyDataStorePlugin(eventHandler = mockStreamHandler, hubEventHandler = mockHubHandler)
        var eventData: HashMap<String, Any> = (
            readMapFromFile(
                "hub",
                "readyEvent.json",
                HashMap::class.java
            ) as HashMap<String, Any>
            )

        var event: HubEvent<*> = HubEvent.create(DataStoreChannelEventName.READY)

        val latch = CountDownLatch(1)

        val realHubHandler = DataStoreHubEventStreamHandler(latch)

        val hubSpy = spy(realHubHandler)
        val hubMap = FlutterReadyEvent(
            eventData["eventName"] as String
        )

        // initial event
        val token: SubscriptionToken = hubSpy.getHubListener()
        Amplify.Hub.publish(HubChannel.DATASTORE, event)
        Latch.await(latch)
        Amplify.Hub.unsubscribe(token)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(1)).sendEvent(hubMap.toValueMap())

        // replay event after getHubListener() is invoked a second time
        val token2: SubscriptionToken = hubSpy.getHubListener()
        Latch.await(latch)
        Amplify.Hub.unsubscribe(token2)
        shadowOf(getMainLooper()).idle()
        verify(hubSpy, times(2)).sendEvent(hubMap.toValueMap())
    }

    private fun setFinalStatic(field: Field, newValue: Any?) {
        field.isAccessible = true
        val modifiersField: Field = Field::class.java.getDeclaredField("modifiers")
        modifiersField.isAccessible = true
        modifiersField.setInt(field, field.modifiers and Modifier.FINAL.inv())
        field.set(null, newValue)
    }
}
