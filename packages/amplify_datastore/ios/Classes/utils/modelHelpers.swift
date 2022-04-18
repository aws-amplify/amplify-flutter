//
//  modelValueHelpers.swift
//  amplify_datastore
//
//  Created by Zhao, Hui on 4/13/22.
//

import Foundation
import Amplify

public func convertToAmplifyPersistable(value: Any?) -> Persistable? {
    if value == nil {
        return nil
    }
    switch value {
    case is Int:
        return value as! Int
    case is Double:
        return value as! Double
    case is Bool:
        return value as! Bool
    case is String:
        return value as! String
    default:
        // TODO: This should probably be an error case
        return value as? Persistable
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
