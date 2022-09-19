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

import Flutter
import UIKit
import Amplify
import AmplifyPlugins
import AWSPluginsCore
import AWSCore
import Combine
import amplify_core

public class SwiftAmplifyDataStorePlugin: NSObject, FlutterPlugin {
    private let bridge: DataStoreBridge
    private let modelSchemaRegistry: FlutterSchemaRegistry
    private let customTypeSchemaRegistry: FlutterSchemaRegistry
    private let dataStoreObserveEventStreamHandler: DataStoreObserveEventStreamHandler?
    private let dataStoreHubEventStreamHandler: DataStoreHubEventStreamHandler?
    private var channel: FlutterMethodChannel?
    private var observeSubscription: AnyCancellable?

    init(bridge: DataStoreBridge = DataStoreBridge(),
         modelSchemaRegistry: FlutterSchemaRegistry = FlutterSchemaRegistry(),
         customTypeSchemasRegistry: FlutterSchemaRegistry = FlutterSchemaRegistry(),
         dataStoreObserveEventStreamHandler: DataStoreObserveEventStreamHandler = DataStoreObserveEventStreamHandler(),
         dataStoreHubEventStreamHandler: DataStoreHubEventStreamHandler = DataStoreHubEventStreamHandler())
    {
        self.bridge = bridge
        self.modelSchemaRegistry = modelSchemaRegistry
        self.customTypeSchemaRegistry = customTypeSchemasRegistry
        self.dataStoreObserveEventStreamHandler = dataStoreObserveEventStreamHandler
        self.dataStoreHubEventStreamHandler = dataStoreHubEventStreamHandler
    }

    public static func register(with registrar: FlutterPluginRegistrar) {
        let instance = SwiftAmplifyDataStorePlugin()
        let observeChannel = FlutterEventChannel(name: "com.amazonaws.amplify/datastore_observe_events", binaryMessenger: registrar.messenger())
        let hubChannel = FlutterEventChannel(name: "com.amazonaws.amplify/datastore_hub_events", binaryMessenger: registrar.messenger())
        instance.channel = FlutterMethodChannel(name: "com.amazonaws.amplify/datastore", binaryMessenger: registrar.messenger())
        observeChannel.setStreamHandler(instance.dataStoreObserveEventStreamHandler)
        hubChannel.setStreamHandler(instance.dataStoreHubEventStreamHandler)
        registrar.addMethodCallDelegate(instance, channel: instance.channel!)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        let result = AtomicResult(result, call.method)
        var arguments: [String: Any] = [:]
        do {
            if call.arguments != nil {
                try arguments = checkArguments(args: call.arguments as Any)
            }
        } catch {
            FlutterDataStoreErrorHandler.handleDataStoreError(error: DataStoreError(error: error),
                                                              flutterResult: result)
            return
        }

        switch call.method {
        case "configureDataStore":
            onConfigureDataStore(args: arguments, result: result)
        case "query":
            onQuery(args: arguments, flutterResult: result)
        case "save":
            onSave(args: arguments, flutterResult: result)
        case "delete":
            onDelete(args: arguments, flutterResult: result)
        case "setUpObserve":
            onSetUpObserve(flutterResult: result)
        case "clear":
            onClear(flutterResult: result)
        case "start":
            onStart(flutterResult: result)
        case "stop":
            onStop(flutterResult: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    private func getAuthModeStrategy(for strategyType: String?) throws -> AuthModeStrategyType {
        switch strategyType?.lowercased() {
        case "multiauth":
            return .multiAuth
        case "default":
            return .default
        default:
            throw DataStoreError.configuration(
                "Unknown auth mode strategy: \(strategyType ?? "")",
                "Please use one of: \"default\", \"multiauth\"",
                nil)
        }
    }

    private func onConfigureDataStore(args: [String: Any], result: @escaping FlutterResult) {
        guard let serializedModelSchemas = args["modelSchemas"] as? [[String: Any]],
              let serializedCustomTypeSchemas = (args["customTypeSchemas"] ?? []) as? [[String: Any]],
              let modelProviderVersion = args["modelProviderVersion"] as? String
        else {
            FlutterDataStoreErrorHandler.handleDataStoreError(
                error:
                    DataStoreError.decodingError(
                        "Received invalid request from Dart, modelSchemas and/or modelProviderVersion are not available. Request: " + args.description,
                        "Check the values that are being passed from Dart."
                    ),
                flutterResult: result
            )
            return
        }

        guard channel != nil else {
            return
        }

        let syncExpressionList = args["syncExpressions"] as? [[String: Any]] ?? []
        let syncInterval = args["syncInterval"] as? Double ?? DataStoreConfiguration.defaultSyncInterval
        let syncMaxRecords = args["syncMaxRecords"] as? UInt ?? DataStoreConfiguration.defaultSyncMaxRecords
        let syncPageSize = args["syncPageSize"] as? UInt ?? DataStoreConfiguration.defaultSyncPageSize

        do {
            let authModeStrategy = try getAuthModeStrategy(for: args["authModeStrategy"] as? String)

            let customTypeSchemaDependenciesOrder = try getCustomTypeSchemasDependenciesOrder(
                serializedCustomTypeSchemas: serializedCustomTypeSchemas
            )
            try registerCustomTypeSchemas(
                serializedCustomTypeSchemas: serializedCustomTypeSchemas,
                customTypeSchemaDependenciesOrder: customTypeSchemaDependenciesOrder
            )

            let modelSchemas: [ModelSchema] = try serializedModelSchemas.map {
                try FlutterModelSchema.init(serializedData: $0).convertToNativeModelSchema(customTypeSchemasRegistry: self.customTypeSchemaRegistry)
            }

            modelSchemas.forEach { modelSchema in
                modelSchemaRegistry.addModelSchema(modelName: modelSchema.name, modelSchema: modelSchema)
            }

            modelSchemaRegistry.version = modelProviderVersion

            let syncExpressions: [DataStoreSyncExpression] = try createSyncExpressions(syncExpressionList: syncExpressionList)

            dataStoreHubEventStreamHandler?.registerModelsForHub(
                modelSchemaRegistry: modelSchemaRegistry,
                customTypeSchemaRegistry: customTypeSchemaRegistry
            )

            let errorHandler: DataStoreErrorHandler = createErrorHandler(args: args)
            let conflictHandler: DataStoreConflictHandler = createConflictHandler(args: args)

            let dataStorePlugin = AWSDataStorePlugin(modelRegistration: modelSchemaRegistry,
                                                     configuration: .custom(
                                                        errorHandler: errorHandler,
                                                        conflictHandler: conflictHandler,
                                                        syncInterval: syncInterval,
                                                        syncMaxRecords: syncMaxRecords,
                                                        syncPageSize: syncPageSize,
                                                        syncExpressions: syncExpressions,
                                                        authModeStrategy: authModeStrategy))
            try Amplify.add(plugin: dataStorePlugin)

            Amplify.Logging.logLevel = .info
            print("Amplify configured with DataStore plugin")
            result(true)
        } catch ModelSchemaError.parse(let className, let fieldName, let desiredType) {
            FlutterDataStoreErrorHandler.handleDataStoreError(
                error: DataStoreError.decodingError(
                    "Invalid modelSchema " + className + "-" + fieldName + " cannot be cast to " + desiredType,
                    ErrorMessages.missingRecoverySuggestion),
                flutterResult: result)
            return
        } catch {
            if error is DataStoreError{
                FlutterDataStoreErrorHandler.handleDataStoreError(
                    error: error as! DataStoreError,
                    flutterResult: result)
            } else if error is ConfigurationError {
                let configError = error as! ConfigurationError
                var errorCode = "DataStoreException"
                if case .amplifyAlreadyConfigured = configError {
                    errorCode = "AmplifyAlreadyConfiguredException"
                }
                ErrorUtil.postErrorToFlutterChannel(
                    result: result,
                    errorCode: errorCode,
                    details: [
                        "message": configError.errorDescription,
                        "recoverySuggestion": configError.recoverySuggestion,
                        "underlyingError": configError.underlyingError != nil ? configError.underlyingError!.localizedDescription : ""
                    ]
                )
            } else{
                print("Failed to initialize DataStore with \(error)")
                result(false)
            }
            return
        }
    }

    func onQuery(args: [String: Any], flutterResult: @escaping FlutterResult) {
        do {
            let modelName = try FlutterDataStoreRequestUtils.getModelName(methodChannelArguments: args)
            let modelSchema = try FlutterDataStoreRequestUtils.getModelSchema(
                modelSchemaRegistry: modelSchemaRegistry,
                modelName: modelName
            )
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
                    do {
                        let serializedResults = try res.map { (queryResult) -> [String: Any] in
                            return try queryResult.toMap(
                                modelSchemaRegistry: modelSchemaRegistry,
                                customTypeSchemaRegistry: customTypeSchemaRegistry,
                                modelName: modelName
                            )
                        }
                        flutterResult(serializedResults)
                    } catch let error as DataStoreError {
                        print("Failed to parse query result with \(error)")
                        FlutterDataStoreErrorHandler.handleDataStoreError(
                            error: error,
                            flutterResult: flutterResult)
                    } catch {
                        print("An unexpected error occured when parsing query result with \(error)")
                        FlutterDataStoreErrorHandler.handleDataStoreError(error: DataStoreError(error: error),
                                                                          flutterResult: flutterResult)
                    }
                }
            }
        } catch let error as DataStoreError {
            print("Failed to parse query arguments with \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(
                error: error,
                flutterResult: flutterResult)
        } catch {
            print("An unexpected error occured when parsing query arguments: \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(error: DataStoreError(error: error),
                                                              flutterResult: flutterResult)
        }
    }

    // Initial Save fails for QueryPredicate.all, so we must pass nil instead
    // TODO: Amplify iOS should change .all initial save behavior to work.
    // Afterwards, we can remove this function and safely pass .all as our default queryPredicates
    // Relevant Amplify iOS issue: https://github.com/aws-amplify/amplify-ios/issues/1636
    func filterQueryPredicateAll(queryPredicates: QueryPredicate) -> QueryPredicate? {
        if let queryPredicateConstant = queryPredicates as? QueryPredicateConstant {
            switch queryPredicateConstant {
            case .all:
                return nil
            }
        }
        return queryPredicates
    }

    func onSave(args: [String: Any], flutterResult: @escaping FlutterResult) {
        do {
            let modelName = try FlutterDataStoreRequestUtils.getModelName(methodChannelArguments: args)
            let modelSchema = try FlutterDataStoreRequestUtils.getModelSchema(
                modelSchemaRegistry: modelSchemaRegistry,
                modelName: modelName
            )
            let queryPredicates = filterQueryPredicateAll(queryPredicates: try QueryPredicateBuilder.fromSerializedMap(args["queryPredicate"] as? [String: Any]))

            let serializedModelData = try FlutterDataStoreRequestUtils.getSerializedModelData(methodChannelArguments: args)

            let serializedModel = FlutterSerializedModel(map: try FlutterDataStoreRequestUtils.getJSONValue(serializedModelData), modelName: modelSchema.name)

            try bridge.onSave(
                serializedModel: serializedModel,
                modelSchema: modelSchema,
                where: queryPredicates
            ) { result in
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
        } catch let error as DataStoreError {
            print("Failed to parse save arguments with \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(
                error: error,
                flutterResult: flutterResult)
        } catch {
            print("An unexpected error occurred when parsing save arguments: \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(error: DataStoreError(error: error),
                                                              flutterResult: flutterResult)
        }
    }

    func onDelete(args: [String: Any], flutterResult: @escaping FlutterResult) {
        do {
            let modelName = try FlutterDataStoreRequestUtils.getModelName(methodChannelArguments: args)
            let modelSchema = try FlutterDataStoreRequestUtils.getModelSchema(
                modelSchemaRegistry: modelSchemaRegistry,
                modelName: modelName
            )
            let queryPredicatesMap = args["queryPredicate"] as? [String: Any]
            let queryPredicates = queryPredicatesMap != nil ? try QueryPredicateBuilder.fromSerializedMap(queryPredicatesMap) : nil

            let serializedModelData = try FlutterDataStoreRequestUtils.getSerializedModelData(methodChannelArguments: args)

            let serializedModel = FlutterSerializedModel(map: try FlutterDataStoreRequestUtils.getJSONValue(serializedModelData), modelName: modelSchema.name)

            try bridge.onDelete(
                serializedModel: serializedModel,
                modelSchema: modelSchema,
                where: queryPredicates) { result in
                switch result {
                case .failure(let error):
                    print("Delete API failed. Error = \(error)")
                    FlutterDataStoreErrorHandler.handleDataStoreError(error: error,
                                                                      flutterResult: flutterResult)
                case .success():
                    flutterResult(nil)
                }
            }
        } catch let error as DataStoreError {
            print("Failed to parse delete arguments with \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(
                error: error,
                flutterResult: flutterResult)
        } catch {
            print("An unexpected error occured when parsing delete arguments: \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(error: DataStoreError(error: error),
                                                              flutterResult: flutterResult)
            return
        }
    }

    public func onSetUpObserve(flutterResult: @escaping FlutterResult) {
        do {
            observeSubscription = try observeSubscription ?? bridge.onObserve().sink { completion in
                switch completion {
                case .failure(let error):
                    let flutterError = FlutterError(code: "DataStoreException",
                                                    message: ErrorMessages.defaultFallbackErrorMessage,
                                                    details: FlutterDataStoreErrorHandler.createSerializedError(error: error))
                    self.dataStoreObserveEventStreamHandler?.sendError(flutterError: flutterError)
                case .finished:
                    print("finished")
                }

            } receiveValue: { mutationEvent in
                do {
                    let serializedEvent = try mutationEvent.decodeModel(as: FlutterSerializedModel.self)
                    guard let eventType = EventType(rawValue: mutationEvent.mutationType) else {
                        print("Received mutation event for an unknown mutation type \(mutationEvent.mutationType).")
                        return
                    }
                    let flutterSubscriptionEvent = FlutterSubscriptionEvent.init(
                        item: serializedEvent,
                        eventType: eventType)
                    self.dataStoreObserveEventStreamHandler?.sendEvent(
                        flutterEvent: try flutterSubscriptionEvent.toJSON(
                            modelSchemaRegistry: self.modelSchemaRegistry,
                            customTypeSchemaRegistry: self.customTypeSchemaRegistry,
                            modelName: mutationEvent.modelName
                        )
                    )
                } catch {
                    print("Failed to parse the event \(error)")
                    // TODO communicate using datastore error handler?
                }
            }
            flutterResult(true)
        } catch {
            print("Failed to get the datastore plugin \(error)")
            flutterResult(false)
        }
    }

    func onClear(flutterResult: @escaping FlutterResult) {
        do {
            try bridge.onClear {result in
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
        } catch {
            print("An unexpected error occured: \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(error: DataStoreError(error: error),
                                                              flutterResult: flutterResult)
        }
    }

    func onStart(flutterResult: @escaping FlutterResult) {
        do {
            try bridge.onStart { result in
                switch result {
                case .failure(let error):
                    print("Start API failed. Error: \(error)")
                    FlutterDataStoreErrorHandler.handleDataStoreError(
                        error: error,
                        flutterResult: flutterResult)
                case .success():
                    print("Successfully started datastore cloud syncing")
                    flutterResult(nil)
                }
            }
        } catch {
            print("An unexpected error occured: \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(error: DataStoreError(error: error),
                                                              flutterResult: flutterResult)
        }
    }

    func onStop(flutterResult: @escaping FlutterResult) {
        do {
            try bridge.onStop { result in
                switch result {
                case .failure(let error):
                    print("Stop API failed. Error: \(error)")
                    FlutterDataStoreErrorHandler.handleDataStoreError(
                        error: error,
                        flutterResult: flutterResult)
                case .success():
                    print("Successfully stopped datastore cloud syncing")
                    flutterResult(nil)
                }
            }
        } catch {
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
        return res
    }

    private func createSyncExpressions(syncExpressionList: [[String: Any]]) throws -> [DataStoreSyncExpression] {
        return try syncExpressionList.map { syncExpression in
            let id = syncExpression["id"] as! String
            let modelName = syncExpression["modelName"] as! String
            let queryPredicate = try QueryPredicateBuilder.fromSerializedMap(syncExpression["queryPredicate"] as? [String: Any])
            let modelSchema = modelSchemaRegistry.modelSchemas[modelName]
            return DataStoreSyncExpression.syncExpression(modelSchema!) {
                var resolvedQueryPredicate = queryPredicate
                let semaphore = DispatchSemaphore(value: 0)
                self.channel!.invokeMethod("resolveQueryPredicate", arguments: id) { result in
                    do {
                        resolvedQueryPredicate = try QueryPredicateBuilder.fromSerializedMap(result as? [String: Any])
                    } catch {
                        print("Failed to resolve query predicate. Reverting to original query predicate.")
                    }
                    semaphore.signal()
                }
                semaphore.wait()
                return resolvedQueryPredicate
            }
        }
    }

    // Convert and register custom type schemas following the dependencies order.
    // Then convert and register custom type schemas that don't have any dependencies
    private func registerCustomTypeSchemas(
        serializedCustomTypeSchemas: [[String: Any]],
        customTypeSchemaDependenciesOrder: [String]
    ) throws {
        for schemaName in customTypeSchemaDependenciesOrder {
            guard let serializedSchema = serializedCustomTypeSchemas.first(where: { $0["name"] as? String == schemaName } ) else {
                throw DataStoreError.internalOperation(
                    "Cannot find serialized custom type schema for the given custom type name.",
                    "This should not happen, please open an issue at https://github.com/aws-amplify/amplify-flutter/issues"
                )
            }
            let schema: ModelSchema = try FlutterModelSchema.init(serializedData: serializedSchema, isModelType: false)
                .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemaRegistry)
            customTypeSchemaRegistry.addModelSchema(modelName: schemaName, modelSchema: schema)
        }

        for serializedCustomTypeSchema in serializedCustomTypeSchemas {
            guard let schemaName = serializedCustomTypeSchema["name"] as? String else {
                throw DataStoreError.decodingError(
                    "Cannot get schema name.",
                    FlutterDataStoreErrorRecoverySuggestion.decoding.rawValue
                )
            }
            if !customTypeSchemaDependenciesOrder.contains(schemaName) {
                let schema: ModelSchema = try FlutterModelSchema.init(serializedData: serializedCustomTypeSchema, isModelType: false)
                    .convertToNativeModelSchema(customTypeSchemasRegistry: customTypeSchemaRegistry)
                customTypeSchemaRegistry.addModelSchema(modelName: schemaName, modelSchema: schema)
            }
        }
    }

    // Resolve custom type dependencies order. The most dependent schema will be registered first.
    // Circular depdencies are not allowed.
    // The resolved order (array of CustomType names) contains only types that are on the both ends of a
    // dependent relationship
    private func getCustomTypeSchemasDependenciesOrder(serializedCustomTypeSchemas: [[String: Any]]) throws -> [String] {
        var schemasDependencies: [String: [String]] = [:]
        for serializedCustomTypeSchema in serializedCustomTypeSchemas {
            guard let fields = serializedCustomTypeSchema["fields"] as? [String: [String: Any]] else {
                throw DataStoreError.decodingError(
                    "Cannot get fields from serialized schema",
                    FlutterDataStoreErrorRecoverySuggestion.decoding.rawValue
                )
            }

            for (_, field) in fields {
                guard let type = field["type"] as? [String: String] else {
                    throw DataStoreError.decodingError(
                        "Cannot get field type from a field in serialized schema",
                        FlutterDataStoreErrorRecoverySuggestion.decoding.rawValue
                    )
                }

                if type["fieldType"] == "embedded" || type["fieldType"] == "embeddedCollection" {
                    guard let schemaName = serializedCustomTypeSchema["name"] as? String else {
                        throw DataStoreError.decodingError(
                            "Cannot get schema name.",
                            FlutterDataStoreErrorRecoverySuggestion.decoding.rawValue
                        )
                    }
                    if schemasDependencies[schemaName] == nil {
                        schemasDependencies[schemaName] = []
                    }
                    guard let customTypeName = type["ofCustomTypeName"] else {
                        throw DataStoreError.decodingError(
                            "Cannot get custom type name from a field that has custom type value",
                            FlutterDataStoreErrorRecoverySuggestion.decoding.rawValue
                        )
                    }
                    schemasDependencies[schemaName]?.append(customTypeName)
                }
            }
        }

        var result: [String] = []
        var unresolved: Set<String> = []

        for node in schemasDependencies.keys {
            if result.contains(node) {
                continue
            }
            try resolveCustomTypeSchemaOrder(
                startNode: node,
                dependenciesMap: schemasDependencies,
                result: &result,
                unresolved: &unresolved
            )
        }

        return result
    }

    private func resolveCustomTypeSchemaOrder(
        startNode: String,
        dependenciesMap: [String: [String]],
        result: inout [String],
        unresolved: inout Set<String>
    ) throws {
        unresolved.insert(startNode)
        for node in dependenciesMap[startNode] ?? [] {
            if !result.contains(node) {
                if unresolved.contains(node) {
                    throw DataStoreError.configuration(
                        "Cicularly dependent schemas are not supported.",
                        "Please check schema definition and avoid cicular dependencies."
                    )
                }
                try resolveCustomTypeSchemaOrder(
                    startNode: node,
                    dependenciesMap: dependenciesMap,
                    result: &result,
                    unresolved: &unresolved
                )
            }
        }

        result.append(startNode)
        unresolved.remove(startNode)
    }

    // TODO: Remove once all configure is moved to the bridge
    func getPlugin() throws -> AWSDataStorePlugin {
        return try Amplify.DataStore.getPlugin(for: "awsDataStorePlugin") as! AWSDataStorePlugin
    }

    func createErrorHandler(args: [String: Any]) -> DataStoreErrorHandler {
        var errorHandler: DataStoreErrorHandler
        if (args["hasErrorHandler"] as? Bool) == true {
            errorHandler = { error in
                let map: [String: Any] = [
                    "errorCode": "DataStoreException",
                    "errorMesage": ErrorMessages.defaultFallbackErrorMessage,
                    "details": FlutterDataStoreErrorHandler.createSerializedError(error: error)
                ]
                DispatchQueue.main.async {
                    self.channel!.invokeMethod("errorHandler", arguments: map)
                }
            }
        } else {
            errorHandler = { error in
                Amplify.Logging.error(error: error)
            }
        }
        return errorHandler
    }

    func createConflictHandler(args: [String: Any]) -> DataStoreConflictHandler {
        var conflictHandler: DataStoreConflictHandler
        if (args["hasConflictHandler"] as? Bool) == true {
            conflictHandler = { conflictData, onDecision in
                do {
                    guard
                        let modelName = conflictData.remote["__typename"] as? String,
                        let local = conflictData.local as? FlutterSerializedModel,
                        let remote = conflictData.remote as? FlutterSerializedModel
                    else {
                        throw DataStoreError.decodingError("Native ConflictData is invalid", "Check the values in ConflictData object.")
                    }

                    let map: [String: Any] = [
                        "modelName": modelName,
                        "local": try local.toMap(
                            modelSchemaRegistry: self.modelSchemaRegistry,
                            customTypeSchemaRegistry: self.customTypeSchemaRegistry,
                            modelName: modelName),
                        "remote": try remote.toMap(
                            modelSchemaRegistry: self.modelSchemaRegistry,
                            customTypeSchemaRegistry: self.customTypeSchemaRegistry,
                            modelName: modelName)
                    ]

                    DispatchQueue.main.async {
                        self.channel!.invokeMethod("conflictHandler", arguments: map) { result in
                            do {
                                guard
                                    let resultMap: [String: Any] = result as? [String: Any],
                                    let resolutionStrategy = resultMap["resolutionStrategy"] as? String
                                else {
                                    throw DataStoreError.decodingError("Flutter resultMap is invalid", "Check the values that are being passed from Dart.")
                                }

                                switch resolutionStrategy{
                                    case "applyRemote": onDecision(.applyRemote)
                                    case "retryLocal": onDecision(.retryLocal)
                                    case "retry":
                                        guard let modelMap = resultMap["customModel"] as? [String: Any]
                                        else {
                                            throw DataStoreError.decodingError("Flutter CustomModel map is invalid", "Check the values that are being passed from Dart.")
                                        }
                                        let serializedModel = try FlutterSerializedModel(map: FlutterDataStoreRequestUtils.getJSONValue(modelMap), modelName: modelName)
                                            onDecision(.retry(serializedModel))
                                    default:
                                        print("Unrecognized resolutionStrategy to resolve conflict. Applying default conflict resolution, applyRemote.")
                                        onDecision(.applyRemote)
                                }
                            } catch {
                                print("Error in conflict handler: \(error) Applying default conflict resolution, applyRemote.")
                                onDecision(.applyRemote)
                            }
                        }
                    }
                } catch {
                    print("Error in conflict handler: \(error) Applying default conflict resolution, applyRemote.")
                    onDecision(.applyRemote)
                }
            }
        } else {
            conflictHandler = { _, resolve in
                resolve(.applyRemote)
            }
        }
        return conflictHandler
    }
}
