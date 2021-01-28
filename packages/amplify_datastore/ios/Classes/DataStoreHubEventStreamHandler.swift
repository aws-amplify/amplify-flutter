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
    private var flutterModelRegistration: FlutterModels?
    
    public func registerModelsForHub(flutterModels: FlutterModels) {
        self.flutterModelRegistration = flutterModels
    }

    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = events
        setHubListener()
        return nil
    }
    
    func setHubListener() {
        self.token = Amplify.Hub.listen(to: .dataStore) { (payload) in
                switch payload.eventName {
                    case HubPayload.EventName.DataStore.networkStatus :
                        do {
                            let networkStatus =  try FlutterNetworkStatusEvent (payload: payload)
                            self.sendEvent(flutterEvent: networkStatus.toValueMap())
                        } catch {
                            print("Failed to parse and send networkStatus event:  \(error)")
                        }
                    case HubPayload.EventName.DataStore.outboxStatus :
                        do {
                            let outboxStatus =  try FlutterOutboxStatusEvent (payload: payload)
                            self.sendEvent(flutterEvent: outboxStatus.toValueMap())
                        } catch {
                            print("Failed to parse and send outboxStatus event:  \(error)")
                        }
                    case HubPayload.EventName.DataStore.subscriptionsEstablished :
                        do {
                            let subscriptionsEstablished =  try FlutterSubscriptionsEstablishedEvent(payload: payload)
                            self.sendEvent(flutterEvent: subscriptionsEstablished.toValueMap())
                        } catch {
                            print("Failed to parse and send subscriptionsEstablished event:  \(error)")
                        }
                    case HubPayload.EventName.DataStore.syncQueriesStarted :
                        do {
                            let syncQueriesStarted =  try FlutterSyncQueriesStartedEvent(payload: payload)
                            self.sendEvent(flutterEvent: syncQueriesStarted.toValueMap())
                        } catch {
                            print("Failed to parse and send syncQueriesStarted event:  \(error)")
                        }
                    case HubPayload.EventName.DataStore.modelSynced :
                        do {
                            let modelSynced = try FlutterModelSyncedEvent(payload: payload)
                            self.sendEvent(flutterEvent: modelSynced.toValueMap())
                        } catch {
                            print("Failed to parse and send modelSynced event:  \(error)")
                        }
                    case HubPayload.EventName.DataStore.syncQueriesReady :
                        do {
                            let syncQueriesReady =  try FlutterSyncQueriesReadyEvent(payload: payload)
                            self.sendEvent(flutterEvent: syncQueriesReady.toValueMap())
                        } catch {
                            print("Failed to parse and send syncQueriesReady event:  \(error)")
                        }
                    case HubPayload.EventName.DataStore.ready :
                        do {
                            let ready = try FlutterReadyEvent(payload: payload)
                            self.sendEvent(flutterEvent: ready.toValueMap())
                        } catch {
                            print("Failed to parse and send ready event:  \(error)")
                        }
                    case HubPayload.EventName.DataStore.outboxMutationEnqueued :
                        do {
                            guard let outboxMutationEnqueued = payload.data as? OutboxMutationEvent else {
                                      throw FlutterDataStoreError.hubEventCast
                                  }
                            let modelName = outboxMutationEnqueued.modelName

                            var schema: ModelSchema?
                            do {
                                schema = try self.getSchema(modelName: modelName)
                            } catch {
                                print("Error getting model schema for \(modelName ) model: \(error)")
                            }
                            
                            let flutterOutboxMutationEnqueued = try FlutterOutboxMutationEnqueuedEvent(
                                outboxMutationEnqueued: outboxMutationEnqueued,
                                eventName: payload.eventName,
                                schema: schema)
                            self.sendEvent(flutterEvent: flutterOutboxMutationEnqueued.toValueMap())
                        } catch {
                            print("Failed to parse and send outboxMutationEnqueued event:  \(error)")
                        }
                    case HubPayload.EventName.DataStore.outboxMutationProcessed :
                        do {
                             guard let outboxMutationProcessed = payload.data as? OutboxMutationEvent else {
                                      throw FlutterDataStoreError.hubEventCast
                                  }
                            let modelName = outboxMutationProcessed.modelName
                            var schema: ModelSchema?
                            do {
                                schema = try self.getSchema(modelName: modelName)
                            } catch {
                                print("Error getting model schema for \(modelName ) model: \(error)")
                            }
                            let flutterOutboxMutationProcessed = try FlutterOutboxMutationProcessedEvent(
                                outboxMutationProcessed: outboxMutationProcessed,
                                eventName: payload.eventName,
                                schema: schema)
                            self.sendEvent(flutterEvent: flutterOutboxMutationProcessed.toValueMap())
                        } catch {
                            print("Failed to parse and send outboxMutationProcessed event:  \(error)")
                        }
                  case HubPayload.EventName.Amplify.configured:
                    print("DataStorePlugin successfully initialized")
                  default:
                    print("Unrecognized DataStoreHubEvent: \(payload.eventName)" )
                  }
              }
    }

    func sendEvent(flutterEvent: [String : Any]) {
        eventSink?(flutterEvent)
    }
    
    func getSchema(modelName: String) throws -> ModelSchema {
        return try FlutterDataStoreRequestUtils.getModelSchema(
            modelSchemas: self.flutterModelRegistration!.modelSchemas,
            modelName: modelName)
    }
    
    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        eventSink = nil
        if (self.token != nil) {
            Amplify.Hub.removeListener(self.token!)
        }
        return nil
    }
}
