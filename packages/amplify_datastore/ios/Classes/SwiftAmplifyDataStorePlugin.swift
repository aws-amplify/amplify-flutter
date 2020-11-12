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

public class SwiftAmplifyDataStorePlugin: NSObject, FlutterPlugin {
    
    private let bridge: DataStoreBridge
    private let flutterModelRegistration: FlutterModels
    
    init(bridge: DataStoreBridge = DataStoreBridge(), flutterModelRegistration: FlutterModels = FlutterModels()) {
        self.bridge = bridge
        self.flutterModelRegistration = flutterModelRegistration
    }
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/datastore", binaryMessenger: registrar.messenger())
        let instance = SwiftAmplifyDataStorePlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        var arguments: [String: Any] = [:]
        do {
            try arguments = checkArguments(args: call.arguments as Any)
        } catch {
            FlutterDataStoreErrorHandler.prepareError(
                flutterResult: result,
                msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                errorMap: ["UNKNOWN": "\(error.localizedDescription).\nAn unrecognized error has occurred. See logs for details." ])
            return
        }
        
        switch call.method {
        case "configure":
            onConfigure(args: arguments, result: result)
        case "query":
            onQuery(args: arguments, flutterResult: result)
        case "save":
            onSave(args: arguments, flutterResult: result)
        case "delete":
            onDelete(args: arguments, flutterResult: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    private func onConfigure(args: [String: Any], result: @escaping FlutterResult) {
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
            Amplify.Logging.logLevel = .verbose
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
            let modelName = try FlutterDataStoreRequestUtils.getModelName(args: args)
            let modelSchema = try FlutterDataStoreRequestUtils.getModelSchema(modelSchemas: flutterModelRegistration.modelSchemas, modelName: modelName)
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
        }
        catch let error as DataStoreError {
            print("Failed to parse query arguments with \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(
                error: error,
                flutterResult: flutterResult,
                msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue
            )
        }
        catch {
            print("An unexpected error occured when parsing query arguments: \(error)")
            FlutterDataStoreErrorHandler.prepareError(
                flutterResult: flutterResult,
                msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                errorMap: ["UNKNOWN": "\(error.localizedDescription).\nAn unrecognized error has occurred. See logs for details." ])
            return
        }
    }
    
    func onSave(args: [String: Any], flutterResult: @escaping FlutterResult) {
        
        do {
            let modelName = try FlutterDataStoreRequestUtils.getModelName(args: args)
            let modelSchema = try FlutterDataStoreRequestUtils.getModelSchema(modelSchemas: flutterModelRegistration.modelSchemas, modelName: modelName)
            let serializedModelData = try FlutterDataStoreRequestUtils.getSerializedModelData(args: args)
            let modelID = try FlutterDataStoreRequestUtils.getModelID(serializedModelData: serializedModelData)
            
            var queryPredicate: QueryPredicate?
            if let queryPredicateData = args["queryPredicate"] as? [String: Any] {
                queryPredicate = try QueryPredicateBuilder.fromSerializedMap(queryPredicateData)
            }
            
            let serializedModel = SerializedModel(id: modelID, map: try FlutterDataStoreRequestUtils.getJSONValue(serializedModelData))
           
            try bridge.onSave(
                serializedModel: serializedModel,
                modelSchema: modelSchema,
                when: queryPredicate
            ) { (result) in
                switch result {
                case .failure(let error):
                    print("Save API failed. Error: \(error)")
                    FlutterDataStoreErrorHandler.handleDataStoreError(
                        error: error,
                        flutterResult: flutterResult,
                        msg: FlutterDataStoreErrorMessage.SAVE_FAILED.rawValue
                    )
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
                flutterResult: flutterResult,
                msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue
            )
        }
        catch {
            print("An unexpected error occured when parsing save arguments: \(error)")
            FlutterDataStoreErrorHandler.prepareError(
                flutterResult: flutterResult,
                msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                errorMap: ["UNKNOWN": "\(error.localizedDescription).\nAn unrecognized error has occurred. See logs for details." ])
            return
        }
    }

    func onDelete(args: [String: Any], flutterResult: @escaping FlutterResult) {
        do {
            let modelName = try FlutterDataStoreRequestUtils.getModelName(args: args)
            let modelSchema = try FlutterDataStoreRequestUtils.getModelSchema(modelSchemas: flutterModelRegistration.modelSchemas, modelName: modelName)
            let serializedModelData = try FlutterDataStoreRequestUtils.getSerializedModelData(args: args)
            let modelID = try FlutterDataStoreRequestUtils.getModelID(serializedModelData: serializedModelData)
            
            let serializedModel = SerializedModel(id: modelID, map: try FlutterDataStoreRequestUtils.getJSONValue(serializedModelData))
            
            try bridge.onDelete(
                serializedModel: serializedModel,
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
            
        }
        catch let error as DataStoreError {
            print("Failed to parse delete arguments with \(error)")
            FlutterDataStoreErrorHandler.handleDataStoreError(
                error: error,
                flutterResult: flutterResult,
                msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue
            )
        }
        catch {
            print("An unexpected error occured when parsing delete arguments: \(error)")
            FlutterDataStoreErrorHandler.prepareError(
                flutterResult: flutterResult,
                msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                errorMap: ["UNKNOWN": "\(error.localizedDescription).\nAn unrecognized error has occurred. See logs for details." ])
            return
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
