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
import amplify_core

public class SwiftAmplifyDataStorePlugin: NSObject, FlutterPlugin {

    private let bridge: DataStoreBridge
    private let flutterModelRegistration: FlutterModels
    private var observeSubscription: AnyCancellable?
    private let dataStoreObserveEventStreamHandler: DataStoreObserveEventStreamHandler?
    private let dataStoreHubEventStreamHandler: DataStoreHubEventStreamHandler?
    init(bridge: DataStoreBridge = DataStoreBridge(),
         flutterModelRegistration: FlutterModels = FlutterModels(),
         dataStoreObserveEventStreamHandler: DataStoreObserveEventStreamHandler = DataStoreObserveEventStreamHandler(),
         dataStoreHubEventStreamHandler: DataStoreHubEventStreamHandler = DataStoreHubEventStreamHandler()) {
        self.bridge = bridge
        self.flutterModelRegistration = flutterModelRegistration
        self.dataStoreObserveEventStreamHandler = dataStoreObserveEventStreamHandler
        self.dataStoreHubEventStreamHandler = dataStoreHubEventStreamHandler
    }

    public static func register(with registrar: FlutterPluginRegistrar) {
        let instance = SwiftAmplifyDataStorePlugin()
        let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/datastore", binaryMessenger: registrar.messenger())
        let observeChannel = FlutterEventChannel(name: "com.amazonaws.amplify/datastore_observe_events", binaryMessenger: registrar.messenger())
        let hubChannel = FlutterEventChannel(name: "com.amazonaws.amplify/datastore_hub_events", binaryMessenger: registrar.messenger())
        observeChannel.setStreamHandler(instance.dataStoreObserveEventStreamHandler)
        hubChannel.setStreamHandler(instance.dataStoreHubEventStreamHandler)
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        var arguments: [String: Any] = [:]
        do {
            if(call.arguments != nil) {
                try arguments = checkArguments(args: call.arguments as Any)
            }
        } catch {
            FlutterDataStoreErrorHandler.handleDataStoreError(error: DataStoreError(error: error),
                                                              flutterResult: result)
            return
        }

        switch call.method {
        case "configureModelProvider":
            onConfigureModelProvider(args: arguments, result: result)
        case "query":
            onQuery(args: arguments, flutterResult: result)
        case "save":
            onSave(args: arguments, flutterResult: result)
        case "delete":
            onDelete(args: arguments, flutterResult: result)
        case "setupObserve":
            onSetupObserve(flutterResult: result)
        case "clear":
            onClear(flutterResult: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    private func onConfigureModelProvider(args: [String: Any], result: @escaping FlutterResult) {

        guard let modelSchemaList = args["modelSchemas"] as? [[String: Any]] else {
            result(false)
            return //TODO
        }

        do {

            let modelSchemas: [ModelSchema] = try modelSchemaList.map {
                try FlutterModelSchema.init(serializedData: $0).convertToNativeModelSchema()
            }

            modelSchemas.forEach { (modelSchema) in
                flutterModelRegistration.addModelSchema(modelName: modelSchema.name, modelSchema: modelSchema)
            }

            self.dataStoreHubEventStreamHandler?.registerModelsForHub(flutterModels: flutterModelRegistration)

            let dataStorePlugin = AWSDataStorePlugin(modelRegistration: flutterModelRegistration)
            try Amplify.add(plugin: dataStorePlugin)
            Amplify.Logging.logLevel = .info
            print("Amplify configured with DataStore plugin")
            result(true)
        } catch ModelSchemaError.parse(let className, let fieldName, let desiredType){
            FlutterDataStoreErrorHandler.handleDataStoreError(
                error: DataStoreError.decodingError(
                    "Invalid modelSchema " + className + "-" + fieldName + " cannot be cast to " + desiredType,
                    ErrorMessages.missingRecoverySuggestion),
                flutterResult: result)
            return
        }
        catch {
            print("Failed to initialize DataStore with \(error)")
            result(false)
            return
        }

    }

    func onQuery(args: [String: Any], flutterResult: @escaping FlutterResult) {

        do {
            let modelName = try FlutterDataStoreRequestUtils.getModelName(methodChannelArguments: args)
            let modelSchema = try FlutterDataStoreRequestUtils.getModelSchema(modelSchemas: flutterModelRegistration.modelSchemas, modelName: modelName)
            let queryPredicates = try QueryPredicateBuilder.fromSerializedMap(args["queryPredicate"] as? [String : Any])
            let querySortInput = try QuerySortBuilder.fromSerializedList(args["querySort"] as? [[String: Any]])
            let queryPagination = QueryPaginationBuilder.fromSerializedMap(args["queryPagination"] as? [String: Any])
            try bridge.onQuery(FlutterSerializedModel.self,
                               modelSchema: modelSchema,
                               where: queryPredicates,
                               sort: querySortInput,
                               paginate: queryPagination) { (result) in
                switch result {
                case .failure(let error):
                    print("Query API failed. Error = \(error)")
                    FlutterDataStoreErrorHandler.handleDataStoreError(error: error,
                                                                      flutterResult: flutterResult)
                case .success(let res):
                    let serializedResults = res.map { (queryResult) -> [String: Any] in
                        return queryResult.toMap(modelSchema: modelSchema)
                    }
                    flutterResult(serializedResults)
                    return
                }
            }
        }
        catch let error as DataStoreError {
            print("Failed to parse query arguments with \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(
                error: error,
                flutterResult: flutterResult)
        }
        catch {
            print("An unexpected error occured when parsing query arguments: \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(error: DataStoreError(error: error),
                                                              flutterResult: flutterResult)
        }
    }

    func onSave(args: [String: Any], flutterResult: @escaping FlutterResult) {

        do {
            let modelName = try FlutterDataStoreRequestUtils.getModelName(methodChannelArguments: args)
            let modelSchema = try FlutterDataStoreRequestUtils.getModelSchema(modelSchemas: flutterModelRegistration.modelSchemas, modelName: modelName)
            let serializedModelData = try FlutterDataStoreRequestUtils.getSerializedModelData(methodChannelArguments: args)
            let modelID = try FlutterDataStoreRequestUtils.getModelID(serializedModelData: serializedModelData)

            let serializedModel = FlutterSerializedModel(id: modelID, map: try FlutterDataStoreRequestUtils.getJSONValue(serializedModelData))

            try bridge.onSave(
                serializedModel: serializedModel,
                modelSchema: modelSchema
            ) { (result) in
                switch result {
                case .failure(let error):
                    print("Save API failed. Error: \(error)")
                    FlutterDataStoreErrorHandler.handleDataStoreError(
                        error: error,
                        flutterResult: flutterResult)
                case .success(let model):
                    print("Successfully saved model: \(model)")
                    flutterResult(nil)
                }
            }
        }
        catch let error as DataStoreError {
            print("Failed to parse save arguments with \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(
                error: error,
                flutterResult: flutterResult)
        }
        catch {
            print("An unexpected error occured when parsing save arguments: \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(error: DataStoreError(error: error),
                                                              flutterResult: flutterResult)
        }
    }

    func onDelete(args: [String: Any], flutterResult: @escaping FlutterResult) {
        do {
            let modelName = try FlutterDataStoreRequestUtils.getModelName(methodChannelArguments: args)
            let modelSchema = try FlutterDataStoreRequestUtils.getModelSchema(modelSchemas: flutterModelRegistration.modelSchemas, modelName: modelName)
            let serializedModelData = try FlutterDataStoreRequestUtils.getSerializedModelData(methodChannelArguments: args)
            let modelID = try FlutterDataStoreRequestUtils.getModelID(serializedModelData: serializedModelData)

            let serializedModel = FlutterSerializedModel(id: modelID, map: try FlutterDataStoreRequestUtils.getJSONValue(serializedModelData))

            try bridge.onDelete(
                serializedModel: serializedModel,
                modelSchema: modelSchema) { (result) in
                switch result {
                case .failure(let error):
                    print("Delete API failed. Error = \(error)")
                    FlutterDataStoreErrorHandler.handleDataStoreError(error: error,
                                                                      flutterResult: flutterResult)
                case .success():
                    flutterResult(nil)
                }
            }

        }
        catch let error as DataStoreError {
            print("Failed to parse delete arguments with \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(
                error: error,
                flutterResult: flutterResult)
        }
        catch {
            print("An unexpected error occured when parsing delete arguments: \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(error: DataStoreError(error: error),
                                                              flutterResult: flutterResult)
            return
        }
    }

    public func onSetupObserve(flutterResult: @escaping FlutterResult) {
        do {
            observeSubscription = try observeSubscription ?? bridge.onObserve().sink {
                if case let .failure(error) = $0 {
                    let flutterError = FlutterError(code: "DataStoreException",
                                                    message: ErrorMessages.defaultFallbackErrorMessage,
                                                    details: FlutterDataStoreErrorHandler.createSerializedError(error: error))
                    self.dataStoreObserveEventStreamHandler?.sendError(flutterError: flutterError)
                }
            } receiveValue: { (mutationEvent) in
                do {
                    let serializedEvent = try mutationEvent.decodeModel(as: FlutterSerializedModel.self)
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
    }

    func onClear(flutterResult: @escaping FlutterResult) {
        do {
            try bridge.onClear() {(result) in
                switch result {
                case .failure(let error):
                    print("Clear API failed. Error: \(error)")
                    FlutterDataStoreErrorHandler.handleDataStoreError(
                        error: error,
                        flutterResult: flutterResult)
                case .success():
                    print("Successfully cleared the store")
                    flutterResult(nil)
                }
            }
        }
        catch {
            print("An unexpected error occured: \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(error: DataStoreError(error: error),
                                                              flutterResult: flutterResult)
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
