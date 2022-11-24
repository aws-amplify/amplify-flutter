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

import Foundation
import Amplify
import AmplifyPlugins

public enum FlutterDataStoreRequestUtils {
    static func getJSONValue(_ jsonDict: [String: Any]) throws -> [String: JSONValue] {
        guard let jsonData = try? JSONSerialization.data(withJSONObject: jsonDict) else {
            throw DataStoreError.decodingError("Unable to deserialize json data", "Check the model structure.")
        }
        guard let jsonValue = try? JSONDecoder().decode([String: JSONValue].self,
                                                        from: jsonData)
        else {
            throw DataStoreError.decodingError("Unable to decode json value", "Check the model structure.")
        }
        return jsonValue
    }

    static func getModelName(methodChannelArguments: [String: Any]) throws -> String {
        guard let modelName = methodChannelArguments["modelName"] as? String else {
            throw DataStoreError.decodingError(
                "The modelName was not passed in the arguments",
                "The request should include the modelName of type String")
        }
        return modelName
    }

    static func getModelSchema(modelSchemaRegistry: FlutterSchemaRegistry, modelName: String) throws -> ModelSchema {
        guard let modelSchema = modelSchemaRegistry.modelSchemas[modelName] else {
            throw DataStoreError.decodingError(
                "Schema for \(modelName) is not registered",
                "Ensure all schemas are correctly registered")
        }
        return modelSchema
    }

    static func getCustomTypeSchema(customTypeSchemaRegistry: FlutterSchemaRegistry, modelName: String) throws -> ModelSchema {
        return try (getModelSchema(modelSchemaRegistry: customTypeSchemaRegistry, modelName: modelName))
    }

    static func getSerializedModelData(methodChannelArguments: [String: Any]) throws -> [String: Any] {
        guard let serializedModelData = methodChannelArguments["serializedModel"] as? [String: Any] else {
            throw DataStoreError.decodingError(
                "The serializedModel was not passed in the arguments",
                "The request should include the serializedModel as a [String: Any] dictionary")
        }
        return serializedModelData
    }

    static func getModelID(serializedModelData: [String: Any]) throws -> String {
        guard let modelID = serializedModelData["id"] as? String else {
            throw DataStoreError.decodingError(
                "The serializedModel did not contain an id",
                "All models must contain an id field")
        }
        return modelID
    }
}
