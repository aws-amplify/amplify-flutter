// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol.
public final class FlutterSchemaRegistry: AmplifyModelRegistration {
    public var version: String = ""

    var modelSchemas: [String: ModelSchema] = [:]

    public func addModelSchema(modelName: String, modelSchema: ModelSchema) {
        modelSchemas[modelName] = modelSchema
    }

    public func registerModels(registry: ModelRegistry.Type) {
        modelSchemas.forEach { entry in
            ModelRegistry.register(modelType: FlutterSerializedModel.self,
                                   modelSchema: entry.value) { jsonString, decoder -> Model in
                let resolvedDecoder: JSONDecoder
                if let decoder = decoder {
                    resolvedDecoder = decoder
                } else {
                    resolvedDecoder = JSONDecoder(dateDecodingStrategy: ModelDateFormatting.decodingStrategy)
                }

                // Convert jsonstring to object
                let data = jsonString.data(using: .utf8)!
                let jsonValue = try resolvedDecoder.decode(JSONValue.self, from: data)

                var jsonObj: [String: JSONValue]?
                // the json string presents an array of objects
                if case .array(let jsonArray) = jsonValue,
                   case .object(let obj) = jsonArray[0]
                {
                    jsonObj = obj
                } else if case .object(let obj) = jsonValue {
                    jsonObj = obj
                }
                // the json string presents an object
                if let jsonObj = jsonObj
                {
                    let model = FlutterSerializedModel(map: jsonObj, modelName: entry.value.name)
                    return model
                }
                throw DataStoreError.decodingError(
                    "Error in decoding \(jsonString)", "Please create an issue to amplify-flutter repo.")
            }
        }
    }
}
