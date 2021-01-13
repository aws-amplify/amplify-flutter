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
import com.amazonaws.amplify.amplify_datastore.types.hub.*
import com.amplifyframework.core.Amplify
import com.amplifyframework.datastore.DataStoreChannelEventName
import com.amplifyframework.datastore.appsync.SerializedModel
import com.amplifyframework.datastore.events.ModelSyncedEvent
import com.amplifyframework.datastore.events.NetworkStatusEvent
import com.amplifyframework.datastore.events.OutboxStatusEvent
import com.amplifyframework.datastore.events.SyncQueriesStartedEvent
import com.amplifyframework.datastore.syncengine.OutboxMutationEvent
import com.amplifyframework.hub.HubChannel
import com.amplifyframework.hub.HubEvent
import com.amplifyframework.hub.SubscriptionToken
import io.flutter.plugin.common.EventChannel
import java.util.concurrent.CountDownLatch


class DataStoreHubEventStreamHandler : EventChannel.StreamHandler {
    private var eventSink: EventChannel.EventSink? = null
    private val handler = Handler(Looper.getMainLooper())
    private lateinit var token: SubscriptionToken
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:datastore")
    private var forwardHubResponse : (event: Map<String, Any>) -> Unit

    constructor(){
        forwardHubResponse = {event: Map<String, Any> -> handler.post {
            eventSink?.success(event)
        }}
    }

    constructor(latch: CountDownLatch) {
        forwardHubResponse = { latch.countDown() }
    }

    override fun onListen(argunents: Any?, sink: EventChannel.EventSink) {
        eventSink = sink
        token = getHubListener()
    }

     fun getHubListener(): SubscriptionToken {
        return Amplify.Hub.subscribe(HubChannel.DATASTORE
        ) { hubEvent: HubEvent<*> ->
            try {
                when (hubEvent.name) {
                    DataStoreChannelEventName.NETWORK_STATUS.toString() -> {
                        try {
                            var networkEvent = hubEvent.data as NetworkStatusEvent
                            var res = FlutterNetworkStatusEvent(hubEvent.name, networkEvent.active)
                            sendEvent(res.toValueMap())
                        } catch (e: Exception) {
                            LOG.error("Failed to parse and send networkStatus event: ", e)
                        }
                    }
                    DataStoreChannelEventName.SUBSCRIPTIONS_ESTABLISHED.toString() -> {
                        try {
                            var res = FlutterSubscriptionsEstablishedEvent(hubEvent.name)
                            sendEvent(res.toValueMap())
                        } catch (e: Exception) {
                            LOG.error("Failed to parse and send subscriptionsEstablished event: ", e)
                        }
                    }
                    DataStoreChannelEventName.SYNC_QUERIES_STARTED.toString() -> {
                        try {
                            var syncQueriesStartedEvent = hubEvent.data as SyncQueriesStartedEvent
                            var res = FlutterSyncQueriesStartedEvent(hubEvent.name, syncQueriesStartedEvent.models)
                            sendEvent(res.toValueMap())
                        } catch (e: Exception) {
                            LOG.error("Failed to parse and send syncQueriesStarted event: ", e)
                        }
                    }
                    DataStoreChannelEventName.MODEL_SYNCED.toString() -> {
                        try {
                            var modelSyncedEvent = hubEvent.data as ModelSyncedEvent
                            var res = FlutterModelSyncedEvent(
                                    hubEvent.name,
                                    modelSyncedEvent.model,
                                    modelSyncedEvent.isFullSync,
                                    modelSyncedEvent.isDeltaSync,
                                    modelSyncedEvent.added,
                                    modelSyncedEvent.updated,
                                    modelSyncedEvent.deleted
                            )
                            sendEvent(res.toValueMap())
                        } catch (e: Exception) {
                            LOG.error("Failed to parse and send modelSynced event: ", e)
                        }

                    }
                    DataStoreChannelEventName.SYNC_QUERIES_READY.toString() -> {
                        try {
                            var res = FlutterSyncQueriesReadyEvent(hubEvent.name)
                            sendEvent(res.toValueMap())
                        } catch (e: Exception) {
                            LOG.error("Failed to parse and send syncQueriesReady event: ", e)
                        }
                    }
                    DataStoreChannelEventName.READY.toString() -> {
                        try {
                            var res = FlutterReadyEvent(hubEvent.name)
                            sendEvent(res.toValueMap())
                        } catch (e: Exception) {
                            LOG.error("Failed to parse and send ready event: ", e)
                        }
                    }
                    DataStoreChannelEventName.OUTBOX_MUTATION_ENQUEUED.toString() -> {
                        try {
                            var outboxMutationEnqueued = hubEvent.data as OutboxMutationEvent<*>
                            if (outboxMutationEnqueued.element.model is SerializedModel) {
                                var modelName = (outboxMutationEnqueued.element.model as SerializedModel).modelName as String
                                var res = FlutterOutboxMutationEnqueuedEvent(
                                        hubEvent.name,
                                        modelName,
                                        outboxMutationEnqueued.element
                                )
                                sendEvent(res.toValueMap())
                            } else {
                                LOG.error("Element is not an instance of SerializedModel.")
                            }
                        } catch (e: Exception) {
                            LOG.error("Failed to parse and send outboxMutationEnqueued event: ", e)
                        }

                    }
                    DataStoreChannelEventName.OUTBOX_MUTATION_PROCESSED.toString() -> {
                        try {
                            var outboxMutationProcessed = hubEvent.data as OutboxMutationEvent<*>
                            if (outboxMutationProcessed.element.model is SerializedModel) {
                                var modelName = outboxMutationProcessed.modelName
                                var res = FlutterOutboxMutationProcessedEvent(
                                        hubEvent.name,
                                        modelName,
                                        outboxMutationProcessed.element
                                )
                                sendEvent(res.toValueMap())
                            } else {
                                LOG.error("Element is not an instance of SerializedModel.")
                            }
                        } catch (e: Exception) {
                            LOG.error("Failed to parse and send outboxMutationProcessed event: ", e)
                        }
                    }
                    DataStoreChannelEventName.OUTBOX_STATUS.toString() -> {
                        try {
                            var outboxEvent = hubEvent.data as OutboxStatusEvent
                            var res = FlutterOutboxStatusEvent(hubEvent.name, outboxEvent.isEmpty)
                            sendEvent(res.toValueMap())
                        } catch (e: Exception) {
                            LOG.error("Failed to parse and send outboxStatus event: ", e)
                        }
                    }
                    else -> {
                        LOG.error("Unrecognized DataStoreHubEvent: " + hubEvent.name)
                    }
                }
            } catch (e: Exception) {
                LOG.error("Error parsing DataStore Hub event.")
            }
        }
     }

     fun sendEvent(flutterEvent: Map<String, Any>) {
         forwardHubResponse(flutterEvent)
     }


    override fun onCancel(p0: Any?) {
        eventSink = null
        Amplify.Hub.unsubscribe(token)
    }
}
