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

import XCTest
import Amplify
import Combine
@testable import AmplifyPlugins
@testable import AWSPluginsCore
@testable import amplify_datastore

let testHubSchema: ModelSchema = SchemaData.PostSchema

class DataStoreHubEventStreamHandlerTests: XCTestCase {

    var pluginUnderTest: SwiftAmplifyDataStorePlugin = SwiftAmplifyDataStorePlugin()
    var modelSchemaRegistry = FlutterSchemaRegistry()
    var customTypeSchemaRegistry = FlutterSchemaRegistry()

    override func setUpWithError() throws {
        modelSchemaRegistry.addModelSchema(modelName: "Post", modelSchema: testHubSchema)
        modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
    }
    
    func test_hub_modelSyncedEvent_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockDataStoreHubHandler: DataStoreHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTAssertEqual(flutterEvent["eventName"] as! String, "modelSynced")
                XCTAssertEqual(flutterEvent["model"] as! String, "Blog")
                XCTAssertEqual(flutterEvent["added"] as! Int, 1)
                XCTAssertEqual(flutterEvent["deleted"] as! Int, 0)
                XCTAssertEqual(flutterEvent["updated"] as! Int, 0)
                XCTAssertEqual(flutterEvent["isDeltaSync"] as! Bool, false)
                XCTAssertEqual(flutterEvent["isFullSync"] as! Bool, true)
                innerExpect?.fulfill()
            }
        }

        var modelSyncedEventBuilder: ModelSyncedEvent.Builder
        modelSyncedEventBuilder = ModelSyncedEvent.Builder()
        modelSyncedEventBuilder.modelName = "Blog"
        modelSyncedEventBuilder.added = 1
        modelSyncedEventBuilder.deleted = 0;
        modelSyncedEventBuilder.updated = 0;
        modelSyncedEventBuilder.isDeltaSync = false;
        modelSyncedEventBuilder.isFullSync = true;

        let hubHandler = MockDataStoreHubHandler()
        // passing the expectation we are awaiting into the enclosed class
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(modelSchemaRegistry: modelSchemaRegistry, customTypeSchemaRegistry: customTypeSchemaRegistry)
        hubHandler.setHubListener()

        let modelSyncedEventPayload = HubPayload(eventName: HubPayload.EventName.DataStore.modelSynced,
                                                 data: modelSyncedEventBuilder.build())
        Amplify.Hub.dispatch(to: .dataStore, payload: modelSyncedEventPayload)
        // expectation needed to ensure that assertions run on main thread
        waitForExpectations(timeout: 1.0)
        // cancellation needed to make sure that Hub token is invalidated to
        // prevent collisions between tests
        hubHandler.onCancel(withArguments: nil)
    }
    
    func test_hub_readyEvent_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockDataStoreHubHandler: DataStoreHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTAssertEqual(flutterEvent["eventName"] as! String, "ready")
                innerExpect?.fulfill()
            }
        }

        let hubHandler = MockDataStoreHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(modelSchemaRegistry: modelSchemaRegistry, customTypeSchemaRegistry: customTypeSchemaRegistry)
        hubHandler.setHubListener()
       
        let readyEventPayload = HubPayload(eventName: HubPayload.EventName.DataStore.ready)
        Amplify.Hub.dispatch(to: .dataStore, payload: readyEventPayload)
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)

    }
    
    func test_hub_subscriptionEstablishedEvent_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockDataStoreHubHandler: DataStoreHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTAssertEqual(flutterEvent["eventName"] as! String, "subscriptionEstablished")
                innerExpect?.fulfill()
            }
        }

        let hubHandler = MockDataStoreHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(modelSchemaRegistry: modelSchemaRegistry, customTypeSchemaRegistry: customTypeSchemaRegistry)
        hubHandler.setHubListener()

        let subscriptionEstablishedPayload = HubPayload(eventName: HubPayload.EventName.DataStore.subscriptionsEstablished)
        Amplify.Hub.dispatch(to: .dataStore, payload: subscriptionEstablishedPayload)
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)
    }

    func test_hub_syncQueriesReadyEvent_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockDataStoreHubHandler: DataStoreHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTAssertEqual(flutterEvent["eventName"] as! String, "syncQueriesReady")
                innerExpect?.fulfill()
            }
        }

        let hubHandler = MockDataStoreHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(modelSchemaRegistry: modelSchemaRegistry, customTypeSchemaRegistry: customTypeSchemaRegistry)
        hubHandler.setHubListener()
       
        let syncQueriesReadyPayload = HubPayload(eventName: HubPayload.EventName.DataStore.syncQueriesReady)
        Amplify.Hub.dispatch(to: .dataStore, payload: syncQueriesReadyPayload)
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)
    }
    
    func test_hub_networkStatusEvent_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockDataStoreHubHandler: DataStoreHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTAssertEqual(flutterEvent["eventName"] as! String, "networkStatus")
                XCTAssertEqual(flutterEvent["active"] as? Bool, true)
                innerExpect?.fulfill()
            }
        }
        
        let networkStatusEvent = NetworkStatusEvent(active: true)

        let hubHandler = MockDataStoreHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(modelSchemaRegistry: modelSchemaRegistry, customTypeSchemaRegistry: customTypeSchemaRegistry)
        hubHandler.setHubListener()
       
        let networkStatusPayload = HubPayload(eventName: HubPayload.EventName.DataStore.networkStatus, data: networkStatusEvent)
        Amplify.Hub.dispatch(to: .dataStore, payload: networkStatusPayload)
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)
    }
    
    func test_hub_outboxStatusEvent_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockDataStoreHubHandler: DataStoreHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTAssertEqual(flutterEvent["eventName"] as! String, "outboxStatus")
                XCTAssertEqual(flutterEvent["isEmpty"] as? Bool, true)
                innerExpect?.fulfill()
            }
        }
        
        let outboxStatusEvent = OutboxStatusEvent(isEmpty: true)

        let hubHandler = MockDataStoreHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(modelSchemaRegistry: modelSchemaRegistry, customTypeSchemaRegistry: customTypeSchemaRegistry)
        hubHandler.setHubListener()
       
        let outboxStatusPayload = HubPayload(eventName: HubPayload.EventName.DataStore.outboxStatus, data: outboxStatusEvent)
        Amplify.Hub.dispatch(to: .dataStore, payload: outboxStatusPayload)
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)
    }
    
    func test_hub_syncQueriesStartedEvent_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockDataStoreHubHandler: DataStoreHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTAssertEqual(flutterEvent["eventName"] as! String, "syncQueriesStarted")
                XCTAssertEqual(flutterEvent["models"] as! String, "[\"Blog\"]")
                innerExpect?.fulfill()
            }
        }
        
        let syncQueriesStartedEvent = SyncQueriesStartedEvent(models: ["Blog"])
        let hubHandler = MockDataStoreHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(modelSchemaRegistry: modelSchemaRegistry, customTypeSchemaRegistry: customTypeSchemaRegistry)
        hubHandler.setHubListener()
       
        let syncQueriesStartedPayload = HubPayload(eventName: HubPayload.EventName.DataStore.syncQueriesStarted, data: syncQueriesStartedEvent)
        Amplify.Hub.dispatch(to: .dataStore, payload: syncQueriesStartedPayload)
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)
    }
    
    func test_hub_outboxMutationEnqueued_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockDataStoreHubHandler: DataStoreHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                let element = flutterEvent["element"] as! [String : Any]
                let model = element["model"] as! [String : Any]
                let syncMetaData = element["syncMetadata"] as! [String : Any]
                let serializedData = model["serializedData"] as! [String : Any]
                XCTAssertEqual(flutterEvent["eventName"] as! String, "outboxMutationEnqueued")
                XCTAssertEqual(flutterEvent["modelName"] as! String, "Post")
                XCTAssertEqual(syncMetaData["_lastChangedAt"] as? Int, nil)
                XCTAssertEqual(syncMetaData["_version"] as? Int, nil)
                XCTAssertEqual(syncMetaData["_deleted"] as? Bool, false)
                XCTAssertEqual(model["modelName"] as! String, "Post")
                XCTAssertEqual(serializedData["title"] as! String, "Title 1")
                innerExpect?.fulfill()
            }
        }
        
        let uuid =  UUID().uuidString
        let modelMap = [
            "model": "Post",
            "id": uuid,
            "title": "Title 1"
        ]
        
        let serializedModel = FlutterSerializedModel(map: try FlutterDataStoreRequestUtils.getJSONValue(modelMap), modelName: "Post")
        let outboxMutationEnqueuedEvent = OutboxMutationEvent.fromModelWithoutMetadata(modelName: "Post", model: serializedModel)
        let hubHandler = MockDataStoreHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(modelSchemaRegistry: modelSchemaRegistry, customTypeSchemaRegistry: customTypeSchemaRegistry)
        hubHandler.setHubListener()
       
        let outboxMutationEnqueuedPayload = HubPayload(eventName: HubPayload.EventName.DataStore.outboxMutationEnqueued, data: outboxMutationEnqueuedEvent)
        Amplify.Hub.dispatch(to: .dataStore, payload: outboxMutationEnqueuedPayload)
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)
    }

    func test_hub_outboxMutationProcessedEvent_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockDataStoreHubHandler: DataStoreHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                let element = flutterEvent["element"] as! [String : Any]
                let model = element["model"] as! [String : Any]
                let serializedData = model["serializedData"] as! [String : Any]
                let syncMetaData = element["syncMetadata"] as! [String : Any]
                XCTAssertEqual(flutterEvent["eventName"] as! String, "outboxMutationProcessed")
                XCTAssertEqual(flutterEvent["modelName"] as! String, "Post")
                XCTAssertEqual(syncMetaData["_lastChangedAt"] as? Int, 123)
                XCTAssertEqual(syncMetaData["_version"] as? Int, 1)
                XCTAssertEqual(syncMetaData["_deleted"] as? Bool, false)
                XCTAssertEqual(model["modelName"] as! String, "Post")
                XCTAssertEqual(model["modelName"] as! String, "Post")
                XCTAssertEqual(serializedData["title"] as! String, "Title 1")
                innerExpect?.fulfill()
            }
        }
        
        let uuid =  UUID().uuidString
        let modelMap = [
            "modelName": "Post",
            "id": uuid,
            "title": "Title 1"
        ]
        
        let serializedModel = FlutterSerializedModel(map: try FlutterDataStoreRequestUtils.getJSONValue(modelMap), modelName: "Post")
        
        let syncMetadata = MutationSyncMetadata(id: uuid,
                                                deleted: false,
                                                lastChangedAt: 123,
                                                version: 1)
        
        let hubHandler = MockDataStoreHubHandler()
        
        do {
            let anyModel = try serializedModel.eraseToAnyModel()
            let mutationSync = MutationSync(model: anyModel, syncMetadata: syncMetadata)
            let outboxMutationProcessedEvent = OutboxMutationEvent.fromModelWithMetadata(modelName: "Post", model: serializedModel, mutationSync: mutationSync)
            hubHandler.setExpectation(outerExpect: expect)
            hubHandler.registerModelsForHub(modelSchemaRegistry: modelSchemaRegistry, customTypeSchemaRegistry: customTypeSchemaRegistry)
            hubHandler.setHubListener()
            let outboxMutationProcessedPayload = HubPayload(eventName: HubPayload.EventName.DataStore.outboxMutationProcessed, data: outboxMutationProcessedEvent)
            Amplify.Hub.dispatch(to: .dataStore, payload: outboxMutationProcessedPayload)
        } catch {
            XCTFail()
            expect.fulfill()
        }
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)
    }
    
    func test_hot_restart_replays_sync_and_ready_events() {
        let payloads = [
            HubPayload(
                eventName: HubPayload.EventName.DataStore.ready, 
                context: nil, 
                data: nil
            ),
            HubPayload(
                eventName: HubPayload.EventName.DataStore.modelSynced,
                context: nil,
                data: ModelSyncedEvent(
                    modelName: "Test",
                    isFullSync: true,
                    isDeltaSync: false,
                    added: 0,
                    updated: 0,
                    deleted: 0
                )
            ),
        ]
        
        var events: Set<String> = []
        func buildEventSink(expectCount: Int) -> (FlutterEventSink, XCTestExpectation) {
            let expect = expectation(description: "Emits \(expectCount) events")
            let eventSink = { (event: Any?) in
                guard let eventMap = event as? [String: Any],
                      let eventName = eventMap["eventName"] as? String else {
                    XCTFail("Bad event: \(event ?? "nil")")
                    return
                }
                events.insert(eventName)
                if events.count == expectCount {
                    expect.fulfill()
                }
            }
            return (eventSink, expect)
        }
        
        let hubHandler = DataStoreHubEventStreamHandler()
        var (eventSink, expect) = buildEventSink(expectCount: payloads.count)
        let listenError = hubHandler.onListen(withArguments: nil, eventSink: eventSink)
        XCTAssertNil(listenError)
        
        for payload in payloads {
            Amplify.Hub.dispatch(to: .dataStore, payload: payload)
        }
        
        let expectedEvents = Set<String>(payloads.map { shortEventName(eventName: $0.eventName) })
        
        wait(for: [expect], timeout: 1)
        XCTAssertEqual(events, expectedEvents)
        
        (eventSink, expect) = buildEventSink(expectCount: payloads.count)
        func hotRestart() {
            events = []
            
            let cancelError = hubHandler.onCancel(withArguments: nil)
            XCTAssertNil(cancelError)
            
            let listenError = hubHandler.onListen(withArguments: nil, eventSink: eventSink)
            XCTAssertNil(listenError)
        }
        
        hotRestart()
        
        wait(for: [expect], timeout: 1)
        XCTAssertEqual(events, expectedEvents)
    }
}
