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

import Foundation
import Amplify
import AmplifyPlugins

public class DataStoreHubEventStreamHandler: NSObject, FlutterStreamHandler {

    private var eventSink: FlutterEventSink?
    private var token: UnsubscribeToken?
    private var modelSchemaRegistry: FlutterSchemaRegistry?
    private var customTypeSchemaRegistry: FlutterSchemaRegistry?
    
    /// Protects `eventHistory` from mutual access.
    private let eventGuard = NSRecursiveLock()
    
    /// DataStore hub event history. Used to track events which may be lost on hot restart, such as sync and ready events.
    private var eventHistory: [HubPayload] = []
    
    /// Event types which should be replayed on hot restart.
    private let replayableEvents: Set<String> = [
        HubPayload.EventName.DataStore.networkStatus,
        HubPayload.EventName.DataStore.subscriptionsEstablished,
        HubPayload.EventName.DataStore.ready,
        HubPayload.EventName.DataStore.syncQueriesStarted,
        HubPayload.EventName.DataStore.syncQueriesReady,
        HubPayload.EventName.DataStore.modelSynced,
    ]
    
    public func registerModelsForHub(modelSchemaRegistry: FlutterSchemaRegistry, customTypeSchemaRegistry: FlutterSchemaRegistry) {
        self.modelSchemaRegistry = modelSchemaRegistry
        self.customTypeSchemaRegistry = customTypeSchemaRegistry
    }

    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = events
        setHubListener()
        return nil
    }

    func ensureSchemaRegistries() throws -> (
        modelSchemaRegistry: FlutterSchemaRegistry, customTypeSchemaRegistry: FlutterSchemaRegistry
    ) {
        guard let modelSchemaRegistry = self.modelSchemaRegistry else {
            throw FlutterDataStoreError.acquireSchemaForHub
        }

        guard let customTypeSchemaRegistry = self.customTypeSchemaRegistry else {
            throw FlutterDataStoreError.acquireSchemaForHub
        }

        return (modelSchemaRegistry, customTypeSchemaRegistry)
    }
    
    func setHubListener() {
        // Replay events. On hot restart, `onListen` is called again with a new listener. However,
        // DataStore will not re-emit events such as ready and modelSynced. As a result, this info
        // is lost on the Flutter side unless we replay the history prior to the hot restart.
        #if DEBUG
        if !eventHistory.isEmpty {
            eventGuard.lock()
            defer { eventGuard.unlock() }
            for payload in eventHistory {
                sendPayload(payload)
            }
        }
        #endif
        token = Amplify.Hub.listen(to: .dataStore) { [unowned self] (payload) in
            #if DEBUG
            eventGuard.lock()
            defer { eventGuard.unlock() }
            if replayableEvents.contains(payload.eventName) {
                eventHistory.append(payload)
            }
            #endif
            sendPayload(payload)
        }
    }
    
    func sendPayload(_ payload: HubPayload) {
        var flutterEvent: [String: Any]?
        switch payload.eventName {
        case HubPayload.EventName.DataStore.networkStatus :
            do {
                let networkStatus =  try FlutterNetworkStatusEvent (payload: payload)
                flutterEvent = networkStatus.toValueMap()
            } catch {
                print("Failed to parse and send networkStatus event:  \(error)")
            }
        case HubPayload.EventName.DataStore.outboxStatus :
            do {
                let outboxStatus =  try FlutterOutboxStatusEvent (payload: payload)
                flutterEvent = outboxStatus.toValueMap()
            } catch {
                print("Failed to parse and send outboxStatus event:  \(error)")
            }
        case HubPayload.EventName.DataStore.subscriptionsEstablished :
            do {
                let subscriptionsEstablished =  try FlutterSubscriptionsEstablishedEvent(payload: payload)
                flutterEvent = subscriptionsEstablished.toValueMap()
            } catch {
                print("Failed to parse and send subscriptionsEstablished event:  \(error)")
            }
        case HubPayload.EventName.DataStore.syncQueriesStarted :
            do {
                let syncQueriesStarted =  try FlutterSyncQueriesStartedEvent(payload: payload)
                flutterEvent = syncQueriesStarted.toValueMap()
            } catch {
                print("Failed to parse and send syncQueriesStarted event:  \(error)")
            }
        case HubPayload.EventName.DataStore.modelSynced :
            do {
                let modelSynced = try FlutterModelSyncedEvent(payload: payload)
                flutterEvent = modelSynced.toValueMap()
            } catch {
                print("Failed to parse and send modelSynced event:  \(error)")
            }
        case HubPayload.EventName.DataStore.syncQueriesReady :
            do {
                let syncQueriesReady =  try FlutterSyncQueriesReadyEvent(payload: payload)
                flutterEvent = syncQueriesReady.toValueMap()
            } catch {
                print("Failed to parse and send syncQueriesReady event:  \(error)")
            }
        case HubPayload.EventName.DataStore.ready :
            do {
                let ready = try FlutterReadyEvent(payload: payload)
                flutterEvent = ready.toValueMap()
            } catch {
                print("Failed to parse and send ready event:  \(error)")
            }
        case HubPayload.EventName.DataStore.outboxMutationEnqueued :
            do {
                guard let outboxMutationEnqueued = payload.data as? OutboxMutationEvent else {
                    throw FlutterDataStoreError.hubEventCast
                }
                let schemaRegistries = try self.ensureSchemaRegistries()
                let flutterOutboxMutationEnqueued = try FlutterOutboxMutationEnqueuedEvent(
                    outboxMutationEnqueued: outboxMutationEnqueued,
                    eventName: payload.eventName,
                    modelSchemaRegistry: schemaRegistries.modelSchemaRegistry,
                    customTypeSchemaRegistry: schemaRegistries.customTypeSchemaRegistry
                )
                flutterEvent = flutterOutboxMutationEnqueued.toValueMap()
            } catch {
                print("Failed to parse and send outboxMutationEnqueued event:  \(error)")
            }
        case HubPayload.EventName.DataStore.outboxMutationProcessed :
            do {
                guard let outboxMutationProcessed = payload.data as? OutboxMutationEvent else {
                    throw FlutterDataStoreError.hubEventCast
                }
                let schemaRegistries = try self.ensureSchemaRegistries()
                let flutterOutboxMutationProcessed = try FlutterOutboxMutationProcessedEvent(
                    outboxMutationProcessed: outboxMutationProcessed,
                    eventName: payload.eventName,
                    modelSchemaRegistry: schemaRegistries.modelSchemaRegistry,
                    customTypeSchemaRegistry: schemaRegistries.customTypeSchemaRegistry
                )
                flutterEvent = flutterOutboxMutationProcessed.toValueMap()
            } catch {
                print("Failed to parse and send outboxMutationProcessed event:  \(error)")
            }
        case HubPayload.EventName.DataStore.syncReceived:
            do {
                guard let eventData = payload.data as? MutationEvent else {
                    throw FlutterDataStoreError.hubEventCast
                }
                let schemaRegistries = try self.ensureSchemaRegistries()
                let syncReceived = try FlutterSyncReceivedEvent(
                    event: eventData,
                    eventName: payload.eventName,
                    modelSchemaRegistry: schemaRegistries.modelSchemaRegistry,
                    customTypeSchemaRegistry: schemaRegistries.customTypeSchemaRegistry
                )
                flutterEvent = syncReceived.toValueMap()
            } catch {
                print("Failed to parse and send syncReceived event:  \(error)")
            }
        case HubPayload.EventName.Amplify.configured:
            print("DataStorePlugin successfully initialized")
        default:
            print("Unhandled DataStoreHubEvent: \(payload.eventName) \(payload.data ?? "")" )
        }
        
        if let flutterEvent = flutterEvent {
            sendEvent(flutterEvent: flutterEvent)
        }
    }

    func sendEvent(flutterEvent: [String: Any]) {
        DispatchQueue.main.async {
            self.eventSink?(flutterEvent)
        }
    }
    
    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        eventSink = nil
        if let token = token {
            Amplify.Hub.removeListener(token)
        }
        token = nil
        return nil
    }
    
    deinit {
        if let token = token {
            Amplify.Hub.removeListener(token)
        }
    }
}
