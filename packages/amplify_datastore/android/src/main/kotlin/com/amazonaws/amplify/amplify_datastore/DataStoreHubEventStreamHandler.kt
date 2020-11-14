package com.amazonaws.amplify.amplify_datastore

import android.os.Handler
import android.os.Looper
import com.amazonaws.amplify.amplify_datastore.types.hub.*
import com.amplifyframework.core.Amplify
import com.amplifyframework.datastore.DataStoreChannelEventName
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
    private lateinit var token: SubscriptionToken;

    override fun onListen(argunents: Any?, sink: EventChannel.EventSink) {
        eventSink = sink
        token = Amplify.Hub.subscribe(HubChannel.DATASTORE
        ) { hubEvent: HubEvent<*> ->

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
                    var res = FlutterOutboxMutationEnqueued(hubEvent.name, outboxMutationEnqueued.model.name, outboxMutationEnqueued.element)
                    sendEvent(res.toValueMap())
                }
                DataStoreChannelEventName.OUTBOX_MUTATION_PROCESSED.toString() -> {
                    var outboxMutationProcessed = hubEvent.data as OutboxMutationEvent<*>
                    var res = FlutterOutboxMutationProcessed(hubEvent.name, outboxMutationProcessed.model.name, outboxMutationProcessed.element)
                    sendEvent(res.toValueMap())
                }
                DataStoreChannelEventName.OUTBOX_STATUS.toString() -> {
                    var outboxEvent = hubEvent.data as OutboxStatusEvent
                    var res = FlutterOutboxStatus(hubEvent.name, outboxEvent.isEmpty)
                    sendEvent(res.toValueMap())
                }
                else -> print("Unrecognized DataStore Event")
            }

        }
    }

    fun sendEvent(flutterEvent: Map<String, Any>) {
        Handler(Looper.getMainLooper()).post {
            eventSink?.success(flutterEvent)
        }
    }

    fun endOfStream() {
        eventSink?.endOfStream()
    }

    fun error(errorCode: String, localizedMessage: String?, details: Any?) {
        eventSink?.error(errorCode, localizedMessage, details)
    }

    override fun onCancel(p0: Any?) {
        eventSink = null
    }
}


