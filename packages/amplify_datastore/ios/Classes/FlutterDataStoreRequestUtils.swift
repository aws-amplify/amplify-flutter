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

import Foundation
import Amplify
import AmplifyPlugins

public class RequestUtils {
    
    static func getJSONValue(_ jsonDict: [String: Any]) -> [String: JSONValue]{
        guard let jsonData = try? JSONSerialization.data(withJSONObject: jsonDict) else {
            print("JSON error")
            return [:]
        }
        guard let jsonValue = try? JSONDecoder().decode(Dictionary<String, JSONValue>.self,
                                                        from: jsonData)
            else {
                print("JSON error")
                return [:]
        }
        return jsonValue
    }
    
    static func getModelName(args: [String: Any]) throws -> String {
        guard let modelName = args["modelName"] as? String else {
            throw DataStoreError.decodingError(
                "The modelName was not passed in the arguments",
                "The request should include the modelName of type String")
        }
        return modelName
    }
    
    static func getModelSchema(modelSchemas: [String: ModelSchema], modelName: String) throws ->  ModelSchema {
        guard let modelSchema = modelSchemas[modelName] else {
            throw DataStoreError.decodingError(
                "ModelSchema for Model \(modelName) is not registered",
                "Ensure all the ModelSchemas are correctly registerd")
        }
        return modelSchema
    }
    
    static func getSerializedModelData(args: [String: Any]) throws -> [String: Any] {
        guard let serializedModelData = args["serializedModel"] as? [String: Any] else {
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
