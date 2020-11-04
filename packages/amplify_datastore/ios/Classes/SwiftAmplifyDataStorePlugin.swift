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
            // try! createTempPosts()
            onQuery(args: arguments, flutterResult: result)
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
            guard let modelName = args["modelName"] as? String else {
                FlutterDataStoreErrorHandler.prepareError(
                    flutterResult: flutterResult,
                    msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                    errorMap: ["MALFORMED_REQUEST": "modelName was not passed in the arguments." ])
                return
            }
            guard let modelSchema = flutterModelRegistration.modelSchemas[modelName] else {
                FlutterDataStoreErrorHandler.prepareError(
                    flutterResult: flutterResult,
                    msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                    errorMap: ["MALFORMED_REQUEST": "schema for model \(modelName) is not registered." ])
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
            FlutterDataStoreErrorHandler.prepareError(
                flutterResult: flutterResult,
                msg: FlutterDataStoreErrorMessage.MALFORMED.rawValue,
                errorMap: ["UNKNOWN": "\(error.localizedDescription).\nAn unrecognized error has occurred. See logs for details." ])
            return
        }
    }
    
    private func createTempPosts() throws {
        _ = try getPlugin().clear()
        func getJSONValue(_ jsonDict: [String: Any]) -> [String: JSONValue]{
            guard let jsonData = try? JSONSerialization.data(withJSONObject: jsonDict) else {
                print("JSON error")
                return [:]
            }
            guard let jsonValue = try? JSONDecoder().decode(Dictionary<String, JSONValue>.self,
                                                            from: jsonData) else {
                print("JSON error")
                return [:]
            }
            return jsonValue
        }
        
        let models = [SerializedModel(map: getJSONValue(["id": UUID().uuidString,
                                                         "title": "Title 1",
                                                         "rating": 5,
                                                         "created": "2020-02-20T20:20:20-08:00"] as [String : Any])),
                      SerializedModel(map: getJSONValue(["id": UUID().uuidString,
                                                         "title": "Title 2",
                                                         "rating": 3] as [String : Any])),
                      SerializedModel(map: getJSONValue(["id": UUID().uuidString,
                                                         "title": "Title 3",
                                                         "rating": 2,
                                                         "created": "2020-02-02T20:20:20-08:00"] as [String : Any])),
                      SerializedModel(map: getJSONValue(["id": UUID().uuidString,
                                                         "title": "Title 4",
                                                         "created": "2020-02-22T20:20:20-08:00"] as [String : Any]))]
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
