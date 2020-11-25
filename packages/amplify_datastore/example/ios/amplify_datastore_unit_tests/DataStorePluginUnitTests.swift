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
@testable import amplify_datastore

let testSchema: ModelSchema = ModelSchema.init(name: "Post")
let amplifySuccessResults: [FlutterSerializedModel] =
    (try! readJsonArray(filePath: "2_results") as! [[String: Any]]).map { (serializedModel) in
        FlutterSerializedModel.init(
            id: serializedModel["id"] as! String,
            map: try! getJSONValue(serializedModel["serializedData"] as! [String : Any]))
    }

let id: QueryField = field("id")
let title: QueryField = field("title")
let rating: QueryField = field("rating")
let created: QueryField = field("created")
var eventSentExp: XCTestExpectation?

class DataStorePluginUnitTests: XCTestCase {

    var pluginUnderTest: SwiftAmplifyDataStorePlugin = SwiftAmplifyDataStorePlugin()
    var flutterModelSchemaRegistration: FlutterModels = FlutterModels()

    override func setUpWithError() throws {
        flutterModelSchemaRegistration.addModelSchema(modelName: "Post", modelSchema: testSchema)
        flutterModelSchemaRegistration.registerModels(registry: ModelRegistry.self)
    }

    func test_query_success_result_with_query_parameters() throws {

        class MockDataStoreBridge: DataStoreBridge {
            override func onQuery<M: Model>(_ modelType: M.Type,
                                            modelSchema: ModelSchema,
                                            where predicate: QueryPredicate? = nil,
                                            sort sortInput: [QuerySortDescriptor]? = nil,
                                            paginate paginationInput: QueryPaginationInput? = nil,
                                            completion: DataStoreCallback<[M]>) throws {
                // Validations that we called the native library correctly
                XCTAssert(FlutterSerializedModel.self == modelType)
                XCTAssertEqual(testSchema.name, modelSchema.name)
                XCTAssertEqual(
                    id.eq("123").or(rating.ge(4).and(not(created.eq("2020-02-20T20:20:20-08:00")))),
                    predicate as! QueryPredicateGroup
                )
                XCTAssertEqual(
                    [
                        QuerySortDescriptor(fieldName: "id", order: .ascending),
                        QuerySortDescriptor(fieldName: "created", order: .descending)
                    ],
                    sortInput)
                XCTAssertEqual(
                    QueryPaginationInput.page(2, limit: 8),
                    paginationInput)
                
                // Return from the mock
                completion(.success(amplifySuccessResults as! [M]))
            }
        }

        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, flutterModelRegistration: flutterModelSchemaRegistration)
        pluginUnderTest.onQuery(
            args: try readJsonMap(filePath: "model_name_with_all_query_parameters") as [String: Any],
            flutterResult: { (results) -> Void in
                if let results = results as? [[String: Any]] {
                    // Result #1 (Any/AnyObject is not equatable so we iterate over fields we know)
                    XCTAssertEqual("4281dfba-96c8-4a38-9a8e-35c7e893ea47", results[0]["id"] as! String)
                    XCTAssertEqual("Post", results[0]["modelName"] as! String)
                    XCTAssertEqual("4281dfba-96c8-4a38-9a8e-35c7e893ea47", (results[0]["serializedData"] as! [String: Any])["id"] as! String)
                    XCTAssertEqual("Title 1", (results[0]["serializedData"] as! [String: Any])["title"] as! String)
                    XCTAssertEqual(4, (results[0]["serializedData"] as! [String: Any])["rating"] as? Double) // Fixme, manually testing results in int

                    // Result #2
                    XCTAssertEqual("43036c6b-8044-4309-bddc-262b6c686026", results[1]["id"] as! String)
                    XCTAssertEqual("Post", results[1]["modelName"] as! String)
                    XCTAssertEqual("43036c6b-8044-4309-bddc-262b6c686026", (results[1]["serializedData"] as! [String: Any])["id"] as! String)
                    XCTAssertEqual("Title 2", (results[1]["serializedData"] as! [String: Any])["title"] as! String)
                    XCTAssertEqual("2020-02-20T20:20:20-08:00", (results[1]["serializedData"] as! [String: Any])["created"] as! String)
                } else {
                    XCTFail()
                }
            })
    }

    func test_query_failure_called_with_no_query_parameters() throws {

        class MockDataStoreBridge: DataStoreBridge {
            override func onQuery<M: Model>(_ modelType: M.Type,
                                            modelSchema: ModelSchema,
                                            where predicate: QueryPredicate? = nil,
                                            sort sortInput: [QuerySortDescriptor]? = nil,
                                            paginate paginationInput: QueryPaginationInput? = nil,
                                            completion: DataStoreCallback<[M]>) throws {
                // Validations that we called the native library correctly (i.e. valid defaults in this case)
                XCTAssert(FlutterSerializedModel.self == modelType)
                XCTAssertEqual(testSchema.name, modelSchema.name)
                XCTAssertEqual( QueryPredicateConstant.all, predicate as! QueryPredicateConstant)
                XCTAssertNil(sortInput)
                XCTAssertEqual(QueryPaginationInput.firstPage, paginationInput)

                // Return errors from the mock
                completion(.failure(causedBy: DataStoreError.invalidCondition("test error", "test recovery suggestion", nil)))
            }
        }

        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, flutterModelRegistration: flutterModelSchemaRegistration)
        pluginUnderTest.onQuery(
            args: try readJsonMap(filePath: "only_model_name") as [String: Any],
            flutterResult: { (results) -> Void in
                if let exception = results as? FlutterError {
                    // Result #1 (Any/AnyObject is not equatable so we iterate over fields we know)
                    XCTAssertEqual("AmplifyException", exception.code)
                    XCTAssertEqual(FlutterDataStoreErrorMessage.QUERY_FAILED.rawValue, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String : Any]
                    XCTAssertEqual("test error", errorMap["invalidCondition"] as? String)
                    XCTAssertEqual(
                        ["platform": "iOS", "localizedErrorMessage": "test error", "recoverySuggestion": "test recovery suggestion"],
                        errorMap["PLATFORM_EXCEPTIONS"] as? [String: String])
                } else {
                    XCTFail()
                }
            })
    }

    func test_delete_success_result() throws {

        class MockDataStoreBridge: DataStoreBridge {
            override func onDelete(
                                   serializedModel: FlutterSerializedModel,
                                   modelSchema: ModelSchema,
                                   completion: @escaping DataStoreCallback<Void>
            ) throws {
                // Validations that we called the native library correctly
                XCTAssertEqual(testSchema.name, modelSchema.name)
                // Return from the mock
                completion(.emptyResult)
            }
        }

        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, flutterModelRegistration: flutterModelSchemaRegistration)

        pluginUnderTest.onDelete(
            args: try readJsonMap(filePath: "instance_no_predicate") as [String: Any],
            flutterResult: { (results)  in
                if (results == nil) {
                    print("success")
                }
            })
    }

    func test_delete_error_result() throws {
        
        class MockDataStoreBridge: DataStoreBridge {
            override func onDelete(
                                   serializedModel: FlutterSerializedModel,
                                   modelSchema: ModelSchema,
                                   completion: @escaping DataStoreCallback<Void>) throws {
                // Validations that we called the native library correctly
                XCTAssertEqual(testSchema.name, modelSchema.name)
                // Return from the mock
                completion(.failure(causedBy: DataStoreError.unknown("test error", "test recovery suggestion", nil)))
            }
        }

        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, flutterModelRegistration: flutterModelSchemaRegistration)

        pluginUnderTest.onDelete(
            args: try readJsonMap(filePath: "instance_no_predicate") as [String: Any],
            flutterResult: { (results) -> Void in
                if let exception = results as? FlutterError {
                    XCTAssertEqual("AmplifyException", exception.code)
                    XCTAssertEqual(FlutterDataStoreErrorMessage.DELETE_FAILED.rawValue, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String : Any]
                    XCTAssertEqual("test error", errorMap["unknown"] as? String)
                    XCTAssertEqual(
                        ["platform": "iOS", "localizedErrorMessage": "test error", "recoverySuggestion": "test recovery suggestion"],
                        errorMap["PLATFORM_EXCEPTIONS"] as? [String: String])
                } else {
                    XCTFail()
                }
            })
    }

    func test_observe_success_event() throws {

        eventSentExp = expectation(description: "event was sent")

        class MockDataStoreBridge: DataStoreBridge {
            let mockPublisher = PassthroughSubject<MutationEvent, DataStoreError>()
            override func onObserve() throws -> AnyPublisher<MutationEvent, DataStoreError> {
                mockPublisher.eraseToAnyPublisher()
            }
        }

        class MockStreamHandler: DataStoreObserveEventStreamHandler {
            override func sendEvent(flutterEvent: [String : Any]) {
                eventSentExp?.fulfill()
                XCTAssertEqual("create", flutterEvent["eventType"] as! String)

                let item = flutterEvent["item"] as! [String: Any]
                XCTAssertEqual("4281dfba-96c8-4a38-9a8e-35c7e893ea47", item["id"] as! String)
                XCTAssertEqual("Post", item["modelName"] as! String)
                XCTAssertEqual("4281dfba-96c8-4a38-9a8e-35c7e893ea47", (item["serializedData"] as! [String: Any])["id"] as! String)
                XCTAssertEqual("Title 1", (item["serializedData"] as! [String: Any])["title"] as! String)
                XCTAssertEqual(4, (item["serializedData"] as! [String: Any])["rating"] as? Double) // Fixme, manually testing results in int
            }
        }

        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        let streamHandler: MockStreamHandler = MockStreamHandler()

        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge,
                                                      flutterModelRegistration: flutterModelSchemaRegistration,
                                                      dataStoreObserveEventStreamHandler: streamHandler)

        pluginUnderTest.onSetupObserve(flutterResult: {
            (results) -> Void in
            XCTAssertTrue(results as! Bool)
        })

        dataStoreBridge.mockPublisher.send(MutationEvent(
                                            modelId: "123",
                                            modelName: "Post",
                                            json: try String(
                                                data: JSONSerialization.data(
                                                    withJSONObject: readJsonArray(filePath: "1_result") as [Any]),
                                                encoding: .ascii)!,
                                            mutationType: MutationEvent.MutationType.create))

        // Make sure that the event was indeed sent successfully
        wait(for: [eventSentExp!], timeout: 1)
    }

    func test_observe_received_bad_event() throws {

        class MockDataStoreBridge: DataStoreBridge {
            let mockPublisher = PassthroughSubject<MutationEvent, DataStoreError>()
            override func onObserve() throws -> AnyPublisher<MutationEvent, DataStoreError> {
                mockPublisher.eraseToAnyPublisher()
            }
        }

        class MockStreamHandler: DataStoreObserveEventStreamHandler {
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTFail()
            }
            override func sendError(flutterError: FlutterError) {
                XCTFail()
            }
        }

        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        let streamHandler: MockStreamHandler = MockStreamHandler()

        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge,
                                                      flutterModelRegistration: flutterModelSchemaRegistration,
                                                      dataStoreObserveEventStreamHandler: streamHandler)

        pluginUnderTest.onSetupObserve(flutterResult: {
            (results) -> Void in
            XCTAssertTrue(results as! Bool)
        })

        dataStoreBridge.mockPublisher.send(MutationEvent(
                                            modelId: "123",
                                            modelName: "Post",
                                            json: "unparsable json",
                                            mutationType: MutationEvent.MutationType.create))

    }

    func test_observe_error_event() throws {

        eventSentExp = expectation(description: "error was sent")

        class MockDataStoreBridge: DataStoreBridge {
            let mockPublisher = PassthroughSubject<MutationEvent, DataStoreError>()
            override func onObserve() throws -> AnyPublisher<MutationEvent, DataStoreError> {
                mockPublisher.eraseToAnyPublisher()
            }
        }

        class MockStreamHandler: DataStoreObserveEventStreamHandler {
            override func sendError(flutterError: FlutterError) {
                eventSentExp?.fulfill()
                print(flutterError)
                XCTAssertEqual("AmplifyException", flutterError.code)
                XCTAssertEqual("AMPLIFY_DATASTORE_OBSERVE_EVENT_FAILURE", flutterError.message)
                let errorMap: [String: Any] = flutterError.details as! [String : Any]
                XCTAssertEqual("This is test error", errorMap["unknown"] as? String)
                XCTAssertEqual(
                    ["platform": "iOS", "localizedErrorMessage": "This is test error",
                     "recoverySuggestion": "And a test recovery suggestion"],
                    errorMap["PLATFORM_EXCEPTIONS"] as? [String: String])
            }
        }

        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        let streamHandler: MockStreamHandler = MockStreamHandler()

        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge,
                                                      flutterModelRegistration: flutterModelSchemaRegistration,
                                                      dataStoreObserveEventStreamHandler: streamHandler)

        pluginUnderTest.onSetupObserve(flutterResult: {
            (results) -> Void in
            XCTAssertTrue(results as! Bool)
        })

        dataStoreBridge.mockPublisher.send(completion:
                                            Subscribers.Completion<DataStoreError>.failure(
                                                DataStoreError.unknown(
                                                    "This is test error", "And a test recovery suggestion", nil)))

        // Make sure that the event was indeed sent successfully
        wait(for: [eventSentExp!], timeout: 1)
    }

    func test_clear_success() throws {

        class MockDataStoreBridge: DataStoreBridge {
            override func onClear(
                completion: @escaping DataStoreCallback<Void>) throws {
                // Return from the mock
                completion(.emptyResult)
            }
        }
        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, flutterModelRegistration: flutterModelSchemaRegistration)

        pluginUnderTest.onClear(
            flutterResult: {(result) in
                XCTAssertNil(result)
        })
    }

    func test_clear_failure() throws {

        class MockDataStoreBridge: DataStoreBridge {
            override func onClear(
                completion: @escaping DataStoreCallback<Void>) throws {
                // Return from the mock
                completion(.failure(causedBy: DataStoreError.unknown("test error", "test recovery suggestion", nil)))
            }
        }

        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, flutterModelRegistration: flutterModelSchemaRegistration)

        pluginUnderTest.onClear(
            flutterResult: { (result) -> Void in
                if let exception = result as? FlutterError {
                    XCTAssertEqual("AmplifyException", exception.code)
                    XCTAssertEqual(FlutterDataStoreErrorMessage.CLEAR_FAILED.rawValue, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String : Any]
                    XCTAssertEqual("test error", errorMap["unknown"] as? String)
                    XCTAssertEqual(
                        ["platform": "iOS", "localizedErrorMessage": "test error", "recoverySuggestion": "test recovery suggestion"],
                        errorMap["PLATFORM_EXCEPTIONS"] as? [String: String])
                } else {
                    XCTFail()
                }
        })
    }

    func test_save_success_without_predicate() throws {
        let testArgs = try readJsonMap(filePath: "instance_without_predicate") as [String: Any]

        class MockDataStoreBridge: DataStoreBridge {
            override func onSave<M: Model>(
                serializedModel: M,
                modelSchema: ModelSchema,
                when predicate: QueryPredicate? = nil,
                completion: @escaping DataStoreCallback<M>) throws {
                // Validations that we called the native library correctly
                XCTAssertEqual("9fc5fab4-37ff-4566-97e5-19c5d58a4c22", serializedModel.id)
                XCTAssertEqual(testSchema.name, modelSchema.name)
                XCTAssertNil(predicate)
                // Return from the mock
                completion(.success(serializedModel))
            }
        }

        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, flutterModelRegistration: flutterModelSchemaRegistration)

        pluginUnderTest.onSave(
            args: testArgs,
            flutterResult: { (result)  in
                XCTAssertNil(result)
            })
    }

    func test_save_success_with_predicate() throws {
        let testArgs = try readJsonMap(filePath: "instance_with_predicate") as [String: Any]

        class MockDataStoreBridge: DataStoreBridge {
            override func onSave<M: Model>(
                serializedModel: M,
                modelSchema: ModelSchema,
                when predicate: QueryPredicate? = nil,
                completion: @escaping DataStoreCallback<M>) throws {
                // Validations that we called the native library correctly
                XCTAssertEqual("a7a22ef5-554c-48c5-bb79-d9cd6dd0ee83", serializedModel.id)
                XCTAssertEqual(testSchema.name, modelSchema.name)
                XCTAssertEqual(
                    rating.eq(5),
                    predicate as! QueryPredicateOperation
                )
                // Return from the mock
                completion(.success(serializedModel))
            }
        }

        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, flutterModelRegistration: flutterModelSchemaRegistration)

        pluginUnderTest.onSave(
            args: testArgs,
            flutterResult: { (result)  in
                XCTAssertNil(result)
            })
    }

    func test_save_with_api_error() throws {
        let testArgs = try readJsonMap(filePath: "instance_without_predicate") as [String: Any]

        class MockDataStoreBridge: DataStoreBridge {
            override func onSave<M: Model>(
            serializedModel: M,
            modelSchema: ModelSchema,
            when predicate: QueryPredicate? = nil,
            completion: @escaping DataStoreCallback<M>) throws {
                // Validations that we called the native library correctly
                XCTAssertEqual("9fc5fab4-37ff-4566-97e5-19c5d58a4c22", serializedModel.id)
                XCTAssertEqual(testSchema.name, modelSchema.name)
                XCTAssertNil(predicate)
                // Return from the mock
                completion(.failure(causedBy: DataStoreError.unknown("test error", "test recovery suggestion", nil)))
            }
        }

        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, flutterModelRegistration: flutterModelSchemaRegistration)

        pluginUnderTest.onSave(
            args: testArgs,
            flutterResult: { (results) -> Void in
                if let exception = results as? FlutterError {
                    XCTAssertEqual("AmplifyException", exception.code)
                    XCTAssertEqual(FlutterDataStoreErrorMessage.SAVE_FAILED.rawValue, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String : Any]
                    XCTAssertEqual("test error", errorMap["unknown"] as? String)
                    XCTAssertEqual(
                        ["platform": "iOS", "localizedErrorMessage": "test error", "recoverySuggestion": "test recovery suggestion"],
                        errorMap["PLATFORM_EXCEPTIONS"] as? [String: String])
                } else {
                    XCTFail()
                }
            })
    }

    func test_save_with_malformed_error() throws {

        class MockDataStoreBridge: DataStoreBridge {
            override func onSave<M: Model>(
            serializedModel: M,
            modelSchema: ModelSchema,
            when predicate: QueryPredicate? = nil,
            completion: @escaping DataStoreCallback<M>) throws {
                // Validations that we called the native library correctly
                XCTAssertEqual("9fc5fab4-37ff-4566-97e5-19c5d58a4c22", serializedModel.id)
                XCTAssertEqual(testSchema.name, modelSchema.name)
                XCTAssertNil(predicate)
                // Return from the mock
                completion(.success(serializedModel))
            }
        }

        let dataStoreBridge: MockDataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, flutterModelRegistration: flutterModelSchemaRegistration)

        pluginUnderTest.onSave(
            args: [:],
            flutterResult: { (results) -> Void in
                if let exception = results as? FlutterError {
                    XCTAssertEqual("AmplifyException", exception.code)
                    XCTAssertEqual(FlutterDataStoreErrorMessage.MALFORMED.rawValue, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String : Any]
                    XCTAssertEqual("The modelName was not passed in the arguments", errorMap["decodingError"] as? String)
                    XCTAssertEqual(
                        ["platform": "iOS", "localizedErrorMessage": "The modelName was not passed in the arguments", "recoverySuggestion": "The request should include the modelName of type String"],
                        errorMap["PLATFORM_EXCEPTIONS"] as? [String: String])
                } else {
                    XCTFail()
                }
            })
    }
    
    // TODO: Move Hub Tests to New File
    
    func test_hub_modelSynced_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockDataStoreHubHandler: DataStoreHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTAssertEqual(flutterEvent["eventName"] as! String, "DataStore.modelSynced")
                XCTAssertEqual(flutterEvent["modelName"] as! String, "Blog")
                XCTAssertEqual(flutterEvent["added"] as! Int, 1)
                XCTAssertEqual(flutterEvent["deleted"] as! Int, 0)
                XCTAssertEqual(flutterEvent["updated"] as! Int, 0)
                XCTAssertEqual(flutterEvent["isDeltaSync"] as! Bool, false)
                XCTAssertEqual(flutterEvent["isFullSync"] as! Bool, true)
                innerExpect?.fulfill()
            }
            override func sendError(description: String, eventName: String) {
                XCTFail()
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
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(flutterModels: flutterModelSchemaRegistration)
        hubHandler.setToken()

        let modelSyncedEventPayload = HubPayload(eventName: HubPayload.EventName.DataStore.modelSynced,
                                                 data: modelSyncedEventBuilder.build())
        Amplify.Hub.dispatch(to: .dataStore, payload: modelSyncedEventPayload)
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)
    }
    
    func test_hub_ready_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockDataStoreHubHandler: DataStoreHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTAssertEqual(flutterEvent["eventName"] as! String, "DataStore.ready")
                innerExpect?.fulfill()
            }
            override func sendError(description: String, eventName: String) {
                XCTFail()
                innerExpect?.fulfill()
            }
        }

        let hubHandler = MockDataStoreHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(flutterModels: flutterModelSchemaRegistration)
        hubHandler.setToken()
       
        let readyEventPayload = HubPayload(eventName: HubPayload.EventName.DataStore.ready)
        Amplify.Hub.dispatch(to: .dataStore, payload: readyEventPayload)
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)

    }
    
    func test_hub_subscriptionEstablished_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockDataStoreHubHandler: DataStoreHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTAssertEqual(flutterEvent["eventName"] as! String, "DataStore.subscriptionEstablished")
                innerExpect?.fulfill()
            }
            override func sendError(description: String, eventName: String) {
                XCTFail()
                innerExpect?.fulfill()
            }
        }

        let hubHandler = MockDataStoreHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(flutterModels: flutterModelSchemaRegistration)
        hubHandler.setToken()

        let subscriptionEstablishedPayload = HubPayload(eventName: HubPayload.EventName.DataStore.subscriptionsEstablished)
        Amplify.Hub.dispatch(to: .dataStore, payload: subscriptionEstablishedPayload)
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)
    }

    func test_hub_syncQueriesReady_success() throws {
        let expect = expectation(description: "listener was invoked")
        class MockDataStoreHubHandler: DataStoreHubEventStreamHandler {
            var innerExpect: XCTestExpectation?
            func setExpectation(outerExpect: XCTestExpectation) {
                innerExpect = outerExpect
            }
            override func sendEvent(flutterEvent: [String : Any]) {
                XCTAssertEqual(flutterEvent["eventName"] as! String, "DataStore.syncQueriesReady")
                innerExpect?.fulfill()
            }
            override func sendError(description: String, eventName: String) {
                XCTFail()
                innerExpect?.fulfill()
            }
        }

        let hubHandler = MockDataStoreHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(flutterModels: flutterModelSchemaRegistration)
        hubHandler.setToken()
       
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
                XCTAssertEqual(flutterEvent["eventName"] as! String, "DataStore.networkStatus")
                XCTAssertEqual(flutterEvent["active"] as? Bool, true)
                innerExpect?.fulfill()
            }
            override func sendError(description: String, eventName: String) {
                XCTFail()
                innerExpect?.fulfill()
            }
        }
        
        let networkStatusEvent = NetworkStatusEvent(active: true)

        let hubHandler = MockDataStoreHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(flutterModels: flutterModelSchemaRegistration)
        hubHandler.setToken()
       
        let networkStatusPayload = HubPayload(eventName: HubPayload.EventName.DataStore.networkStatus, data: networkStatusEvent)
        Amplify.Hub.dispatch(to: .dataStore, payload: networkStatusPayload)
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
                XCTAssertEqual(flutterEvent["eventName"] as! String, "DataStore.syncQueriesStarted")
                XCTAssertEqual(flutterEvent["models"] as! String, "[\"Blog\"]")
                innerExpect?.fulfill()
            }
            override func sendError(description: String, eventName: String) {
                XCTFail()
                innerExpect?.fulfill()
            }
        }
        
        let syncQueriesStartedEvent = SyncQueriesStartedEvent(models: ["Blog"])
        let hubHandler = MockDataStoreHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(flutterModels: flutterModelSchemaRegistration)
        hubHandler.setToken()
       
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
                let serializedData = model["serializedData"] as! [String : Any]
                XCTAssertEqual(flutterEvent["eventName"] as! String, "DataStore.outboxMutationEnqueued")
                XCTAssertEqual(flutterEvent["modelName"] as! String, "Post")
                XCTAssertEqual(element["_lastChangedAt"] as? Int, nil)
                XCTAssertEqual(element["_version"] as? Int, nil)
                XCTAssertEqual(element["_deleted"] as? Bool, nil)
                XCTAssertEqual(model["modelName"] as! String, "Post")
                XCTAssertEqual(model["modelName"] as! String, "Post")
                XCTAssertEqual(serializedData["title"] as! String, "Title 1")
                innerExpect?.fulfill()
            }
            override func sendError(description: String, eventName: String) {
                XCTFail()
                innerExpect?.fulfill()
            }
        }
        
        let uuid =  UUID().uuidString
        let modelMap = [
            "modelName": "Post",
            "id": uuid,
            "title": "Title 1"
        ]
        
        let serializedModel = FlutterSerializedModel(id: uuid, map: try FlutterDataStoreRequestUtils.getJSONValue(modelMap))
        let outboxMutationEnqueuedEvent = OutboxMutationEvent.fromModelWithoutMetadata(modelName: "Post", model: serializedModel)
        let hubHandler = MockDataStoreHubHandler()
        hubHandler.setExpectation(outerExpect: expect)
        hubHandler.registerModelsForHub(flutterModels: flutterModelSchemaRegistration)
        hubHandler.setToken()
       
        let outboxMutationEnqueuedPayload = HubPayload(eventName: HubPayload.EventName.DataStore.outboxMutationEnqueued, data: outboxMutationEnqueuedEvent)
        Amplify.Hub.dispatch(to: .dataStore, payload: outboxMutationEnqueuedPayload)
        waitForExpectations(timeout: 1.0)
        hubHandler.onCancel(withArguments: nil)
    }
}
