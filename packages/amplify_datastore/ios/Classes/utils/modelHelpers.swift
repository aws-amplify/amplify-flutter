/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

public func convertToAmplifyPersistable(value: Any?) -> Persistable? {
    if value == nil {
        return nil
    }
    switch value {
    case is Int:
        return value as? Int
    case is Double:
        return value as? Double
    case is Bool:
        return value as? Bool
    case is String:
        return value as? String
    default:
        // TODO: This should probably be an error case
        return value as? Persistable
    }
}

public func convertToModelIdentifierFields(values: [[String: Any]]) throws -> [ModelIdentifierProtocol.Field] {
    if (values.isEmpty) {
        throw DataStoreError.decodingError("Model identifier should contain at least 1 field.", "Check the serialized model.")
    }

    return try values.map {
        guard
            let fieldName = $0.keys.first,
            let fieldValue = convertToAmplifyPersistable(value: $0.values.first) else {
            throw DataStoreError.decodingError("Model indentifier should contain 1 key-value pair.", "Check the serialized model.")
        }

        return (name: fieldName, value: fieldValue)
    }
}

public func getJSONValue(_ jsonDict: [String: Any]) throws -> [String: JSONValue] {
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
