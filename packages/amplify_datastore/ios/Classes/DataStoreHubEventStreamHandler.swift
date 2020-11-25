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
        setToken()
        return nil
    }
    
    public func setToken() {
        let castingError = "Error Casting Payload Values"
        self.token = Amplify.Hub.listen(to: .dataStore) { (payload) in
                switch payload.eventName {
                    case HubPayload.EventName.DataStore.networkStatus :
                        do {
                            let networkStatus =  try FlutterNetworkStatusEvent (payload: payload)
                            self.sendEvent(flutterEvent: networkStatus.toValueMap())
                        } catch {
                            self.sendError(description: castingError, eventName: "networkStatus")
                        }
                    case HubPayload.EventName.DataStore.outboxStatus :
                        do {
                            let networkStatus =  try FlutterOutboxStatusEvent (payload: payload)
                            self.sendEvent(flutterEvent: networkStatus.toValueMap())
                        } catch {
                            self.sendError(description: castingError, eventName: "outboxStatus")
                        }
                    case HubPayload.EventName.DataStore.subscriptionsEstablished :
                        do {
                            let subscriptionsEstablished =  try FlutterSubscriptionsEstablishedEvent(payload: payload)
                            self.sendEvent(flutterEvent: subscriptionsEstablished.toValueMap())
                        } catch {
                            self.sendError(description: castingError, eventName: "subscriptionsEstablished")
                        }
                    case HubPayload.EventName.DataStore.syncQueriesStarted :
                        do {
                            let syncQueriesStarted =  try FlutterSyncQueriesStartedEvent(payload: payload)
                            self.sendEvent(flutterEvent: syncQueriesStarted.toValueMap())
                        } catch {
                            self.sendError(description: castingError, eventName: "syncQueriesStarted")
                        }
                    case HubPayload.EventName.DataStore.modelSynced :
                        do {
                            let modelSynced =  try FlutterModelSyncedEvent(payload: payload)
                            self.sendEvent(flutterEvent: modelSynced.toValueMap())
                        } catch {
                            self.sendError(description: castingError, eventName: "modelSynced")
                        }
                    case HubPayload.EventName.DataStore.syncQueriesReady :
                        do {
                            let syncQueriesReady =  try FlutterSyncQueriesReadyEvent(payload: payload)
                            self.sendEvent(flutterEvent: syncQueriesReady.toValueMap())
                        } catch {
                            self.sendError(description: castingError, eventName: "syncQueriesReady")
                        }
                    case HubPayload.EventName.DataStore.ready :
                        do {
                            let ready =  try FlutterReadyEvent(payload: payload)
                            self.sendEvent(flutterEvent: ready.toValueMap())
                        } catch {
                            self.sendError(description: castingError, eventName: "ready")
                        }
                    case HubPayload.EventName.DataStore.outboxMutationEnqueued :
                        do {
                            guard let outboxMutationEnqueued = payload.data as? OutboxMutationEvent else {
                                      throw FlutterDataStoreError.hubEventCast
                                  }
                            let modelName = outboxMutationEnqueued.modelName
                            let schema = try FlutterDataStoreRequestUtils.getModelSchema(modelSchemas: self.flutterModelRegistration?.modelSchemas ?? [:], modelName: modelName)

                            let flutterOutboxMutationEnqueued = try FlutterOutboxMutationEnqueuedEvent(outboxMutationEnqueued: outboxMutationEnqueued, eventName: payload.eventName, schema: schema)
                            self.sendEvent(flutterEvent: flutterOutboxMutationEnqueued.toValueMap())
                        } catch {
                            self.sendError(description: castingError, eventName: payload.eventName)
                        }
                    case HubPayload.EventName.DataStore.outboxMutationProcessed :
                        do {
                             guard let outboxMutationProcessed = payload.data as? OutboxMutationEvent else {
                                      throw FlutterDataStoreError.hubEventCast
                                  }
                            let modelName = outboxMutationProcessed.modelName
                            let schema = try FlutterDataStoreRequestUtils.getModelSchema(modelSchemas: self.flutterModelRegistration?.modelSchemas ?? [:], modelName: modelName)

                            let flutterOutboxMutationProcessed = try FlutterOutboxMutationProcessedEvent(outboxMutationProcessed: outboxMutationProcessed, eventName: payload.eventName, schema: schema)
                            self.sendEvent(flutterEvent: flutterOutboxMutationProcessed.toValueMap())
                        } catch {
                            self.sendError(description: castingError, eventName: payload.eventName)
                        }
                    default:
                        print("d")
                    }
                }
    }

    func sendEvent(flutterEvent: [String : Any]) {
        eventSink?(flutterEvent)
    }

    func sendError(description: String, eventName: String) {
        let errorMap: Dictionary<String, Any> = [
            "eventName": eventName,
            "error": description
        ]
        eventSink?(errorMap)
    }

    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        eventSink = nil
        if (self.token != nil) {
            Amplify.Hub.removeListener(self.token!)
        }
        return nil
    }
}
