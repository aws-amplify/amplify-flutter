/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
import amplify_core
@testable import AmplifyPlugins
@testable import amplify_datastore

let testSchema: ModelSchema = SchemaData.PostSchema
let amplifySuccessResults: [FlutterSerializedModel] =
    (try! readJsonArray(filePath: "2_results") as! [[String: Any]]).map { serializedModel in
        FlutterSerializedModel.init(
            map: try! getJSONValue(serializedModel["serializedData"] as! [String: Any]),
            modelName: serializedModel["modelName"] as! String
        )
    }

let id: QueryField = field("id")
let title: QueryField = field("title")
let rating: QueryField = field("rating")
let created: QueryField = field("created")
var eventSentExp: XCTestExpectation?

class DataStorePluginUnitTests: XCTestCase {
    var pluginUnderTest: SwiftAmplifyDataStorePlugin = .init()
    var modelSchemaRegistry = FlutterSchemaRegistry()
    var customTypeSchemaRegistry = FlutterSchemaRegistry()

    override func setUpWithError() throws {
        modelSchemaRegistry.addModelSchema(modelName: "Post", modelSchema: testSchema)
        modelSchemaRegistry.registerModels(registry: ModelRegistry.self)
    }

    func test_query_success_result_with_query_parameters() throws {
        class MockDataStoreBridge: DataStoreBridge {
            override func onQuery<M: Model>(_ modelType: M.Type,
                                            modelSchema: ModelSchema,
                                            where predicate: QueryPredicate? = nil,
                                            sort sortInput: [QuerySortDescriptor]? = nil,
                                            paginate paginationInput: QueryPaginationInput? = nil,
                                            completion: DataStoreCallback<[M]>) throws
            {
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

        let dataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry)
        pluginUnderTest.onQuery(
            args: try readJsonMap(filePath: "model_name_with_all_query_parameters") as [String: Any],
            flutterResult: { results in
                if let results = results as? [[String: Any]] {
                    // Result #1 (Any/AnyObject is not equatable so we iterate over fields we know)
                    XCTAssertEqual("Post", results[0]["modelName"] as! String)
                    XCTAssertEqual("4281dfba-96c8-4a38-9a8e-35c7e893ea47", (results[0]["serializedData"] as! [String: Any])["id"] as! String)
                    XCTAssertEqual("Title 1", (results[0]["serializedData"] as! [String: Any])["title"] as! String)
                    XCTAssertEqual(4, (results[0]["serializedData"] as! [String: Any])["rating"] as? Int) // Fixme, manually testing results in int

                    // Result #2
                    XCTAssertEqual("Post", results[1]["modelName"] as! String)
                    XCTAssertEqual("43036c6b-8044-4309-bddc-262b6c686026", (results[1]["serializedData"] as! [String: Any])["id"] as! String)
                    XCTAssertEqual("Title 2", (results[1]["serializedData"] as! [String: Any])["title"] as! String)
                    XCTAssertEqual("2020-02-20T20:20:20-08:00", (results[1]["serializedData"] as! [String: Any])["created"] as! String)
                } else {
                    XCTFail()
                }
            })
    }

    func test_query_called_with_no_query_parameters_failed_with_invalid_condition() throws {
        class MockDataStoreBridge: DataStoreBridge {
            override func onQuery<M: Model>(_ modelType: M.Type,
                                            modelSchema: ModelSchema,
                                            where predicate: QueryPredicate? = nil,
                                            sort sortInput: [QuerySortDescriptor]? = nil,
                                            paginate paginationInput: QueryPaginationInput? = nil,
                                            completion: DataStoreCallback<[M]>) throws
            {
                // Validations that we called the native library correctly (i.e. valid defaults in this case)
                XCTAssert(FlutterSerializedModel.self == modelType)
                XCTAssertEqual(testSchema.name, modelSchema.name)
                XCTAssertEqual( QueryPredicateConstant.all, predicate as! QueryPredicateConstant)
                XCTAssertNil(sortInput)
                XCTAssertNil(paginationInput)

                // Return errors from the mock
                completion(.failure(causedBy: DataStoreError.invalidCondition("test error", "test recovery suggestion", nil)))
            }
        }

        let dataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry)
        pluginUnderTest.onQuery(
            args: try readJsonMap(filePath: "only_model_name") as [String: Any],
            flutterResult: { results in
                if let exception = results as? FlutterError {
                    // Result #1 (Any/AnyObject is not equatable so we iterate over fields we know)
                    XCTAssertEqual("DataStoreException", exception.code)
                    XCTAssertEqual(ErrorMessages.defaultFallbackErrorMessage, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String: Any]
                    XCTAssertEqual("test error", errorMap["message"] as? String)
                    XCTAssertEqual("test recovery suggestion", errorMap["recoverySuggestion"] as? String)
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
                where: QueryPredicate? = nil,
                completion: @escaping DataStoreCallback<Void>
            ) throws {
                // Validations that we called the native library correctly
                XCTAssertEqual(testSchema.name, modelSchema.name)
                // Return from the mock
                completion(.emptyResult)
            }
        }

        let dataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry)

        pluginUnderTest.onDelete(
            args: try readJsonMap(filePath: "instance_no_predicate") as [String: Any],
            flutterResult: { results in
                if results == nil {
                    print("success")
                }
            })
    }

    func test_delete_failed_with_invalid_internal_operation() throws {
        class MockDataStoreBridge: DataStoreBridge {
            override func onDelete(
                serializedModel: FlutterSerializedModel,
                modelSchema: ModelSchema,
                where: QueryPredicate? = nil,
                completion: @escaping DataStoreCallback<Void>) throws
            {
                // Validations that we called the native library correctly
                XCTAssertEqual(testSchema.name, modelSchema.name)
                // Return from the mock
                completion(.failure(causedBy: DataStoreError.internalOperation("test error", "test recovery suggestion", nil)))
            }
        }

        let dataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry)

        pluginUnderTest.onDelete(
            args: try readJsonMap(filePath: "instance_no_predicate") as [String: Any],
            flutterResult: { results in
                if let exception = results as? FlutterError {
                    XCTAssertEqual("DataStoreException", exception.code)
                    XCTAssertEqual(ErrorMessages.defaultFallbackErrorMessage, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String: Any]
                    XCTAssertEqual("test error", errorMap["message"] as? String)
                    XCTAssertEqual("test recovery suggestion", errorMap["recoverySuggestion"] as? String)
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
            override func sendEvent(flutterEvent: [String: Any]) {
                eventSentExp?.fulfill()
                XCTAssertEqual("create", flutterEvent["eventType"] as! String)

                let item = flutterEvent["item"] as! [String: Any]
                XCTAssertEqual("Post", item["modelName"] as! String)
                XCTAssertEqual("4281dfba-96c8-4a38-9a8e-35c7e893ea47", (item["serializedData"] as! [String: Any])["id"] as! String)
                XCTAssertEqual("Title 1", (item["serializedData"] as! [String: Any])["title"] as! String)
                XCTAssertEqual(4, (item["serializedData"] as! [String: Any])["rating"] as? Int) // Fixme, manually testing results in int
            }
        }

        let dataStoreBridge = MockDataStoreBridge()
        let streamHandler = MockStreamHandler()

        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry, dataStoreObserveEventStreamHandler: streamHandler)

        pluginUnderTest.onSetUpObserve(flutterResult: { result in
            XCTAssertTrue(result as! Bool)
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
            override func sendEvent(flutterEvent: [String: Any]) {
                XCTFail()
            }

            override func sendError(flutterError: FlutterError) {
                XCTFail()
            }
        }

        let dataStoreBridge = MockDataStoreBridge()
        let streamHandler = MockStreamHandler()

        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry, dataStoreObserveEventStreamHandler: streamHandler)

        pluginUnderTest.onSetUpObserve(flutterResult: { result in
            XCTAssertTrue(result as! Bool)
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
                XCTAssertEqual("DataStoreException", flutterError.code)
                XCTAssertEqual(ErrorMessages.defaultFallbackErrorMessage, flutterError.message)
                let errorMap: [String: Any] = flutterError.details as! [String: Any]
                XCTAssertEqual("This is test error", errorMap["message"] as? String)
                XCTAssertEqual("And a test recovery suggestion", errorMap["recoverySuggestion"] as? String)
            }
        }

        let dataStoreBridge = MockDataStoreBridge()
        let streamHandler = MockStreamHandler()

        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry, dataStoreObserveEventStreamHandler: streamHandler)

        pluginUnderTest.onSetUpObserve(flutterResult: { result in
            XCTAssertTrue(result as! Bool)
        })

        dataStoreBridge.mockPublisher.send(completion:
                                            Subscribers.Completion<DataStoreError>.failure(
                                                DataStoreError.unknown(
                                                    "This is test error", "And a test recovery suggestion", nil)))

        // Make sure that the event was indeed sent successfully
        wait(for: [eventSentExp!], timeout: 1)
    }

    func test_observe_set_up_failure() throws {
        class MockDataStoreBridge: DataStoreBridge {
            override func getPlugin() throws -> AWSDataStorePlugin {
                throw DataStoreError.configuration("No plugin has been added for 'awsDataStorePlugin'.",
                                                   "Either add a plugin for 'awsDataStorePlugin', or use one of the known keys: awsDataStorePlugin")
            }
        }

        class MockStreamHandler: DataStoreObserveEventStreamHandler {}

        let dataStoreBridge = MockDataStoreBridge()
        let streamHandler = MockStreamHandler()

        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry, dataStoreObserveEventStreamHandler: streamHandler)

        pluginUnderTest.onSetUpObserve(flutterResult: { result in
            XCTAssertFalse(result as! Bool)
        })
    }

    func test_clear_success() throws {
        class MockDataStoreBridge: DataStoreBridge {
            override func onClear(
                completion: @escaping DataStoreCallback<Void>) throws
            {
                // Return from the mock
                completion(.emptyResult)
            }
        }
        let dataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry)

        pluginUnderTest.onClear(
            flutterResult: {result in
                XCTAssertNil(result)
            })
    }

    func test_clear_failure_with_unknown_error() throws {
        class MockDataStoreBridge: DataStoreBridge {
            override func onClear(
                completion: @escaping DataStoreCallback<Void>) throws
            {
                // Return from the mock
                completion(.failure(causedBy: DataStoreError.unknown("test error", "test recovery suggestion", nil)))
            }
        }

        let dataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry)

        pluginUnderTest.onClear(
            flutterResult: { result in
                if let exception = result as? FlutterError {
                    XCTAssertEqual("DataStoreException", exception.code)
                    XCTAssertEqual(ErrorMessages.defaultFallbackErrorMessage, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String: Any]
                    XCTAssertEqual("test error", errorMap["message"] as? String)
                    XCTAssertEqual("test recovery suggestion", errorMap["recoverySuggestion"] as? String)
                } else {
                    XCTFail()
                }
            })
    }

    func test_start_success() throws {
        class MockDataStoreBridge: DataStoreBridge {
            override func onStart(
                completion: @escaping DataStoreCallback<Void>) throws
            {
                completion(.successfulVoid)
            }
        }
        let dataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry)

        pluginUnderTest.onStart(
            flutterResult: {result in
                XCTAssertNil(result)
            })
    }

    func test_start_error() throws {
        class MockDataStoreBridge: DataStoreBridge {
            override func onStart(
                completion: @escaping DataStoreCallback<Void>) throws
            {
                completion(.failure(causedBy: DataStoreError.unknown("test error", "test recovery suggestion", nil)))
            }
        }
        let dataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry)

        pluginUnderTest.onStart(
            flutterResult: { result in
                if let exception = result as? FlutterError {
                    XCTAssertEqual("DataStoreException", exception.code)
                    XCTAssertEqual(ErrorMessages.defaultFallbackErrorMessage, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String: Any]
                    XCTAssertEqual("test error", errorMap["message"] as? String)
                    XCTAssertEqual("test recovery suggestion", errorMap["recoverySuggestion"] as? String)
                } else {
                    XCTFail()
                }
            })
    }

    func test_stop_success() throws {
        class MockDataStoreBridge: DataStoreBridge {
            override func onStop(
                completion: @escaping DataStoreCallback<Void>) throws
            {
                completion(.successfulVoid)
            }
        }
        let dataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry)

        pluginUnderTest.onStop(
            flutterResult: {result in
                XCTAssertNil(result)
            })
    }

    func test_stop_error() throws {
        class MockDataStoreBridge: DataStoreBridge {
            override func onStop(
                completion: @escaping DataStoreCallback<Void>) throws
            {
                completion(.failure(causedBy: DataStoreError.unknown("test error", "test recovery suggestion", nil)))
            }
        }
        let dataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry)

        pluginUnderTest.onStop(
            flutterResult: { result in
                if let exception = result as? FlutterError {
                    XCTAssertEqual("DataStoreException", exception.code)
                    XCTAssertEqual(ErrorMessages.defaultFallbackErrorMessage, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String: Any]
                    XCTAssertEqual("test error", errorMap["message"] as? String)
                    XCTAssertEqual("test recovery suggestion", errorMap["recoverySuggestion"] as? String)
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
                where predicate: QueryPredicate? = nil,
                completion: @escaping DataStoreCallback<M>) throws
            {
                // Validations that we called the native library correctly
                XCTAssertEqual(testSchema.name, modelSchema.name)
                XCTAssertNil(predicate)
                // Return from the mock
                completion(.success(serializedModel))
            }
        }

        let dataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry)

        pluginUnderTest.onSave(
            args: testArgs,
            flutterResult: { result in
                XCTAssertNil(result)
            })
    }

    func test_save_failed_with_unkown_error() throws {
        let testArgs = try readJsonMap(filePath: "instance_without_predicate") as [String: Any]

        class MockDataStoreBridge: DataStoreBridge {
            override func onSave<M: Model>(
                serializedModel: M,
                modelSchema: ModelSchema,
                where predicate: QueryPredicate? = nil,
                completion: @escaping DataStoreCallback<M>) throws
            {
                // Validations that we called the native library correctly
                XCTAssertEqual(testSchema.name, modelSchema.name)
                XCTAssertNil(predicate)
                // Return from the mock
                completion(.failure(causedBy: DataStoreError.unknown("test error", "test recovery suggestion", nil)))
            }
        }

        let dataStoreBridge = MockDataStoreBridge()
        pluginUnderTest = SwiftAmplifyDataStorePlugin(bridge: dataStoreBridge, modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry)

        pluginUnderTest.onSave(
            args: testArgs,
            flutterResult: { results in
                if let exception = results as? FlutterError {
                    XCTAssertEqual("DataStoreException", exception.code)
                    XCTAssertEqual(ErrorMessages.defaultFallbackErrorMessage, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String: Any]
                    XCTAssertEqual("test error", errorMap["message"] as? String)
                    XCTAssertEqual("test recovery suggestion", errorMap["recoverySuggestion"] as? String)
                } else {
                    XCTFail()
                }
            })
    }

    func test_save_with_malformed_error() throws {
        pluginUnderTest = SwiftAmplifyDataStorePlugin(
            bridge: DataStoreBridge(), modelSchemaRegistry: modelSchemaRegistry, customTypeSchemasRegistry: customTypeSchemaRegistry)

        pluginUnderTest.onSave(
            args: [:],
            flutterResult: { results in
                if let exception = results as? FlutterError {
                    XCTAssertEqual("DataStoreException", exception.code)
                    XCTAssertEqual(ErrorMessages.defaultFallbackErrorMessage, exception.message)
                    let errorMap: [String: Any] = exception.details as! [String: Any]
                    XCTAssertEqual("The modelName was not passed in the arguments", errorMap["message"] as? String)
                    XCTAssertEqual("The request should include the modelName of type String", errorMap["recoverySuggestion"] as? String)
                } else {
                    XCTFail()
                }
            })
    }
}
