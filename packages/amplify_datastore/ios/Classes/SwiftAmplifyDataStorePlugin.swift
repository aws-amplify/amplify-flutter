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
            onQuery(args: arguments, result: result)
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
        
        let flutterModelRegistration = FlutterModels()
        
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
    
    private func onQuery(args: [String: AnyObject], result: @escaping FlutterResult) {
        result(false)
    }
    
    private func checkArguments(args: Any) throws -> [String: AnyObject] {
        guard let res = args as? [String: AnyObject] else {
            throw DataStoreError.decodingError("Flutter method call arguments are not a map.",
                                               "Check the values that are being passed from Dart.")
        }
        return res;
    }

}
