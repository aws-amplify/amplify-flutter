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

class DataStoreHubEventStreamHandler : EventChannel.StreamHandler {
    private var eventSink: EventChannel.EventSink? = null
    private lateinit var token: SubscriptionToken
    private val LOG = Amplify.Logging.forNamespace("amplify:flutter:datastore")


    override fun onListen(argunents: Any?, sink: EventChannel.EventSink) {
        eventSink = sink
        token = Amplify.Hub.subscribe(HubChannel.DATASTORE
        ) { hubEvent: HubEvent<*> ->
            try {
                when (hubEvent.name) {
                    DataStoreChannelEventName.NETWORK_STATUS.toString() -> {
                        var networkEvent = hubEvent.data as NetworkStatusEvent
                        var res = FlutterNetworkStatus(hubEvent.name, networkEvent.active)
                        sendEvent(res.toValueMap())
                    }
                    DataStoreChannelEventName.SUBSCRIPTIONS_ESTABLISHED.toString() -> {
                        var res = FlutterSubscriptionsEstablished(hubEvent.name)
                        sendEvent(res.toValueMap())
                    }
                    DataStoreChannelEventName.SYNC_QUERIES_STARTED.toString() -> {
                        var syncQueriesStartedEvent = hubEvent.data as SyncQueriesStartedEvent
                        var res = FlutterSyncQueriesStarted(hubEvent.name, syncQueriesStartedEvent.models)
                        sendEvent(res.toValueMap())
                    }
                    DataStoreChannelEventName.MODEL_SYNCED.toString() -> {
                        var modelSyncedEvent = hubEvent.data as ModelSyncedEvent
                        var res = FlutterModelSynced(
                                hubEvent.name,
                                modelSyncedEvent.model,
                                modelSyncedEvent.isFullSync,
                                modelSyncedEvent.isDeltaSync,
                                modelSyncedEvent.added,
                                modelSyncedEvent.updated,
                                modelSyncedEvent.deleted
                        )
                        sendEvent(res.toValueMap())
                    }
                    DataStoreChannelEventName.SYNC_QUERIES_READY.toString() -> {
                        var res = FlutterSyncQueriesReady(hubEvent.name)
                        sendEvent(res.toValueMap())
                    }
                    DataStoreChannelEventName.READY.toString() -> {
                        var res = FlutterReady(hubEvent.name)
                        sendEvent(res.toValueMap())
                    }
                    DataStoreChannelEventName.OUTBOX_MUTATION_ENQUEUED.toString() -> {
                        var outboxMutationEnqueued = hubEvent.data as OutboxMutationEvent<*>
                        var modelName = (outboxMutationEnqueued.element.model as SerializedModel).modelName as String
                        var res = FlutterOutboxMutationEnqueued(
                                hubEvent.name,
                                modelName,
                                outboxMutationEnqueued.element
                        )
                        sendEvent(res.toValueMap())
                    }
                    DataStoreChannelEventName.OUTBOX_MUTATION_PROCESSED.toString() -> {
                        var outboxMutationProcessed = hubEvent.data as OutboxMutationEvent<*>
                        var modelName = (outboxMutationProcessed.element.model as SerializedModel).modelName as String
                        var res = FlutterOutboxMutationProcessed(
                                hubEvent.name,
                                modelName,
                                outboxMutationProcessed.element
                        )
                        sendEvent(res.toValueMap())
                    }
                    DataStoreChannelEventName.OUTBOX_STATUS.toString() -> {
                        var outboxEvent = hubEvent.data as OutboxStatusEvent
                        var res = FlutterOutboxStatus(hubEvent.name, outboxEvent.isEmpty)
                        sendEvent(res.toValueMap())
                    }
                    else -> print("Unrecognized DataStore Event")
                }
            } catch (e: Exception) {
                LOG.error("Error parsing DataStore Hub event.")
            }
        }
    }

    private fun sendEvent(flutterEvent: Map<String, Any>) {
        Handler(Looper.getMainLooper()).post {
            eventSink?.success(flutterEvent)
        }
    }

    override fun onCancel(p0: Any?) {
        eventSink = null
        Amplify.Hub.unsubscribe(token)
    }
}


