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
    let flutterModelRegistration = FlutterModels()
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "com.amazonaws.amplify/datastore", binaryMessenger: registrar.messenger())
        let instance = SwiftAmplifyDataStorePlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        var arguments: [String: AnyObject] = [:]
        do {
            try arguments = checkArguments(args: call.arguments as Any)
        } catch {
            return // TODO
        }
        
        switch call.method {
        case "configure":
            onConfigure(args: arguments, result: result)
        case "query":
            try! createTempPosts()
            // onQuery(args: arguments, flutterResult: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    private func onConfigure(args: [String: AnyObject], result: @escaping FlutterResult) {
        guard let modelSchemaList = args["modelSchemas"] as? [[String: AnyObject]] else {
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
            // AmplifyModels is generated in the previous step
            let dataStorePlugin = AWSDataStorePlugin(modelRegistration: flutterModelRegistration)
            try Amplify.add(plugin: dataStorePlugin)
            Amplify.Logging.logLevel = .verbose
            print("Amplify configured with DataStore plugin")
            result(true)
        } catch {
            print("Failed to initialize Amplify with \(error)")
            result(false)
            return
        }
    }
    
    private func onQuery(args: [String: AnyObject], flutterResult: @escaping FlutterResult) {
        let modelName = args["modelName"] as! String
        do {
            let queryPredicates = try QueryPredicateBuilder.fromSerializedMap(serializedMap: args["queryPredicate"] as? [String : AnyObject])
            let querySortInput = QuerySortBuilder.fromSerializedList(serializedList: args["querySort"] as? [[String: AnyObject]])
            let queryPagination = QueryPaginationBuilder.fromSerializedMap(serializedMap: args["queryPagination"] as? [String: AnyObject])
            getPlugin().query(SerializedModel.self, modelSchema: flutterModelRegistration.modelSchemas[modelName]!, where: queryPredicates, sort: querySortInput, paginate: queryPagination) { (result) in
                switch result {
                case .failure(let error):
                    print("Query error = \(error)")
                case .success(let res):
                    print("Query result - \(res) ")
                    let serializedResults = res.map { (queryResult) -> [String: Any] in
                        return queryResult.toJSON()
                    }
                    flutterResult(serializedResults)
                    return
                }
            }
        } catch {
            print("Failed to parse query arguments with \(error)")
            flutterResult(false)
            return
        }
        flutterResult([])
    }
    
    private func createTempPosts() throws {
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
        models.forEach { model in
            getPlugin().save(model, modelSchema: flutterModelRegistration.modelSchemas["Post"]!) { (result) in
                switch result {
                case .failure(let error):
                    print("Save error = \(error)")
                case .success(let post):
                    print("Saved post - \(post)")
                }
            }
        }
    }
    
    private func checkArguments(args: Any) throws -> [String: AnyObject] {
        guard let res = args as? [String: AnyObject] else {
            throw DataStoreError.decodingError("Flutter method call arguments are not a map.",
                                               "Check the values that are being passed from Dart.")
        }
        return res;
    }
    
    private func getPlugin() -> AWSDataStorePlugin {
        let plugin = try! Amplify.DataStore.getPlugin(for: "awsDataStorePlugin") as! AWSDataStorePlugin
        return plugin
    }
    
}
