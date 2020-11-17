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

import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import AWSCore
import Combine

public class SwiftAmplifyDataStorePlugin: NSObject, FlutterPlugin {

    private let bridge: DataStoreBridge
    private let flutterModelRegistration: FlutterModels
    private var observeSubscription: AnyCancellable?
    private let dataStoreObserveEventStreamHandler: DataStoreObserveEventStreamHandler?
    init(bridge: DataStoreBridge = DataStoreBridge(),
         flutterModelRegistration: FlutterModels = FlutterModels(),
         dataStoreObserveEventStreamHandler: DataStoreObserveEventStreamHandler = DataStoreObserveEventStreamHandler()) {
        self.bridge = bridge
        self.flutterModelRegistration = flutterModelRegistration
        self.dataStoreObserveEventStreamHandler = dataStoreObserveEventStreamHandler
    }

    public static func register(with registrar: FlutterPluginRegistrar) {
        let instance = SwiftAmplifyDataStorePlugin()
        let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/datastore", binaryMessenger: registrar.messenger())
        let observeChannel = FlutterEventChannel(name: "com.amazonaws.amplify/datastore_observe_events", binaryMessenger: registrar.messenger())
        observeChannel.setStreamHandler(instance.dataStoreObserveEventStreamHandler)
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        var arguments: [String: Any] = [:]
        do {
            try arguments = checkArguments(args: call.arguments as Any)
        } catch {
            result(FlutterDataStoreErrorHandler.createFlutterError(
                    msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                    errorMap: ["UNKNOWN": "\(error.localizedDescription).\nAn unrecognized error has occurred. See logs for details." ]))
            return
        }

        switch call.method {
        case "addModelSchemas":
            onAddModelSchemas(args: arguments, result: result)
        case "query":
            //             try! createTempPosts()
            onQuery(args: arguments, flutterResult: result)
        case "delete":
            onDelete(args: arguments, flutterResult: result)
        case "setupObserve":
            onSetupObserve(flutterResult: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    private func onAddModelSchemas(args: [String: Any], result: @escaping FlutterResult) {
        guard let modelSchemaList = args["modelSchemas"] as? [[String: Any]] else {
            result(false)
            return //TODO
        }

        let modelSchemas: [ModelSchema] = modelSchemaList.map {
            FlutterModelSchema.init(serializedData: $0).convertToNativeModelSchema()
        }

        modelSchemas.forEach { (modelSchema) in
            flutterModelRegistration.addModelSchema(modelName: modelSchema.name, modelSchema: modelSchema)
        }
        do {
            let dataStorePlugin = AWSDataStorePlugin(modelRegistration: flutterModelRegistration)
            try Amplify.add(plugin: dataStorePlugin)
            try Amplify.add(plugin: AWSAPIPlugin())
            Amplify.Logging.logLevel = .info
            print("Amplify configured with DataStore plugin")
            result(true)
        } catch {
            print("Failed to initialize DataStore with \(error)")
            result(false)
            return
        }
    }

    func onQuery(args: [String: Any], flutterResult: @escaping FlutterResult) {
        do {
            guard let modelName = args["modelName"] as? String else {
                flutterResult(FlutterDataStoreErrorHandler.createFlutterError(
                                msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                                errorMap: ["MALFORMED_REQUEST": "modelName was not passed in the arguments." ]))
                return
            }
            guard let modelSchema = flutterModelRegistration.modelSchemas[modelName] else {
                flutterResult(FlutterDataStoreErrorHandler.createFlutterError(
                                msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                                errorMap: ["MALFORMED_REQUEST": "schema for model \(modelName) is not registered." ]))
                return
            }
            let queryPredicates = try QueryPredicateBuilder.fromSerializedMap(args["queryPredicate"] as? [String : Any])
            let querySortInput = try QuerySortBuilder.fromSerializedList(args["querySort"] as? [[String: Any]])
            let queryPagination = QueryPaginationBuilder.fromSerializedMap(args["queryPagination"] as? [String: Any])
            try bridge.onQuery(SerializedModel.self,
                               modelSchema: modelSchema,
                               where: queryPredicates,
                               sort: querySortInput,
                               paginate: queryPagination) { (result) in
                switch result {
                case .failure(let error):
                    print("Query API failed. Error = \(error)")
                    FlutterDataStoreErrorHandler.handleDataStoreError(error: error,
                                                                      flutterResult: flutterResult,
                                                                      msg: FlutterDataStoreErrorMessage.QUERY_FAILED.rawValue)
                case .success(let res):
                    let serializedResults = res.map { (queryResult) -> [String: Any] in
                        return queryResult.toJSON(modelSchema: modelSchema)
                    }
                    flutterResult(serializedResults)
                    return
                }
            }
        } catch {
            print("Failed to parse query arguments with \(error)")
            flutterResult(FlutterDataStoreErrorHandler.createFlutterError(
                            msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                            errorMap: ["UNKNOWN": "\(error.localizedDescription).\nAn unrecognized error has occurred. See logs for details." ]))
            return
        }
    }
    func onDelete(args: [String: Any], flutterResult: @escaping FlutterResult) {
        do {
            guard let modelName = args["modelName"] as? String else {
                flutterResult(FlutterDataStoreErrorHandler.createFlutterError(
                                msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                                errorMap: ["MALFORMED_REQUEST": "modelName was not passed in the arguments." ]))
                return
            }
            guard let rawModel = args["model"] as? Dictionary<String, Any> else {
                flutterResult(FlutterDataStoreErrorHandler.createFlutterError(
                                msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                                errorMap: ["MALFORMED_REQUEST": "model was not passed in the arguments." ]))
                return
            }
            guard let id = rawModel["id"] as? String else {
                flutterResult(FlutterDataStoreErrorHandler.createFlutterError(
                                msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                                errorMap: ["MALFORMED_REQUEST": "model did not contain an id." ]))
                return
            }

            let modelData = SerializedModel(id: id, map: try getJSONValue(rawModel))

            guard let modelSchema = flutterModelRegistration.modelSchemas[modelName] else {
                throw DataStoreError.decodingError("Unable to get model from registered schemas", "Check the model name.")
            }

            try bridge.onDelete(id: id,
                                modelData: modelData,
                                modelSchema: modelSchema) { (result) in
                switch result {
                case .failure(let error):
                    print("Delete API failed. Error = \(error)")
                    FlutterDataStoreErrorHandler.handleDataStoreError(error: error,
                                                                      flutterResult: flutterResult,
                                                                      msg: FlutterDataStoreErrorMessage.DELETE_FAILED.rawValue)
                case .success():
                    flutterResult(nil)
                }
            }

        } catch {
            print("Failed to parse delete arguments with \(error)")
            flutterResult(FlutterDataStoreErrorHandler.createFlutterError(
                            msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                            errorMap: ["UNKNOWN": "\(error.localizedDescription).\nAn unrecognized error has occurred. See logs for details." ]))
            return
        }

    }

    public func onSetupObserve(flutterResult: @escaping FlutterResult) {
        do {
            observeSubscription = try observeSubscription ?? bridge.onObserve().sink {
                if case let .failure(error) = $0 {
                    let flutterError = FlutterDataStoreErrorHandler.convertToFlutterError(
                        error: error,
                        msg: FlutterDataStoreErrorMessage.OBSERVE_EVENT_FAILURE.rawValue)
                    self.dataStoreObserveEventStreamHandler?.sendError(flutterError: flutterError)
                }
            } receiveValue: { (mutationEvent) in
                do {
                    let serializedEvent = try mutationEvent.decodeModel(as: SerializedModel.self)
                    guard let modelSchema = self.flutterModelRegistration.modelSchemas[mutationEvent.modelName] else {
                        print("Received mutation event for a model \(mutationEvent.modelName) that is not registered.")
                        return
                    }
                    guard let eventType = EventType(rawValue: mutationEvent.mutationType) else {
                        print("Received mutation event for an unknown mutation type \(mutationEvent.mutationType).")
                        return
                    }
                    let flutterSubscriptionEvent = FlutterSubscriptionEvent.init(
                        item: serializedEvent,
                        eventType: eventType)
                    self.dataStoreObserveEventStreamHandler?.sendEvent(flutterEvent: flutterSubscriptionEvent.toJSON(modelSchema: modelSchema))
                } catch {
                    print("Failed to parse the event \(error)")
                    // TODO communicate using datastore error handler?
                }
            }
        } catch {
            print("Failed to get the datastore plugin \(error)")
            flutterResult(false)
        }
        flutterResult(true)
    }

    private func createTempPosts() throws {
        _ = try getPlugin().clear()

        let models = [SerializedModel(map: try getJSONValue(["id": UUID().uuidString,
                                                             "title": "Title 1",
                                                             "rating": 5] as [String : Any])),
                      SerializedModel(map: try getJSONValue(["id": UUID().uuidString,
                                                             "title": "Title 2",
                                                             "rating": 3] as [String : Any])),
                      SerializedModel(map: try getJSONValue(["id": UUID().uuidString,
                                                             "title": "Title 3",
                                                             "rating": 2] as [String : Any])),
                      SerializedModel(map: try getJSONValue(["id": UUID().uuidString,
                                                             "title": "Title 4"] as [String : Any]))]
        try models.forEach { model in
            try getPlugin().save(model, modelSchema: flutterModelRegistration.modelSchemas["Post"]!) { (result) in
                switch result {
                case .failure(let error):
                    print("Save error = \(error)")
                case .success(let post):
                    print("Saved post - \(post)")
                }
            }
        }
    }

    private func checkArguments(args: Any) throws -> [String: Any] {
        guard let res = args as? [String: Any] else {
            throw DataStoreError.decodingError("Flutter method call arguments are not a map.",
                                               "Check the values that are being passed from Dart.")
        }
        return res;
    }

    // TODO: Remove once all configure is moved to the bridge
    func getPlugin() throws -> AWSDataStorePlugin {
        return try Amplify.DataStore.getPlugin(for: "awsDataStorePlugin") as! AWSDataStorePlugin
    }

}
