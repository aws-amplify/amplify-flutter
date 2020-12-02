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
import Foundation
import Amplify

struct FlutterSerializedModel: Model, JSONValueHolder {
    public let id: String

    public var values: [String: JSONValue]

    public init(id: String = UUID().uuidString, map: [String: JSONValue]) {
        self.id = id
        self.values = map
    }

    public init(from decoder: Decoder) throws {

        print("Decoder \(decoder)")
        let y = try decoder.container(keyedBy: CodingKeys.self)
        id = try y.decode(String.self, forKey: .id)
        
        let json = try JSONValue(from: decoder)
        let typeName = json["__typename"]
        let modified = FlutterSerializedModel.removeReservedNames(json)
        
        if case .object(var v) = modified {
            v["__typename"] = typeName
            values = v
        } else {
            values = [:]
        }
    }

    private static func removeReservedNames(_ jsonValue: JSONValue) -> JSONValue {
        
        if case .object(let jsonObject) = jsonValue {
            var modifiedJsonValue: [String: JSONValue] = [:]
            
            for key in jsonObject.keys {
                if key != "__typename" {
                    let modifiedItem = removeReservedNames(jsonObject[key]!)
                    modifiedJsonValue[key] = modifiedItem
                }
            }
            return .object(modifiedJsonValue)
        }
        if case .array(let jsonArray) = jsonValue {
            var modifiedArray:[JSONValue] = []
            for item in jsonArray {
                let modifiedItem = removeReservedNames(item)
                modifiedArray.append(modifiedItem)
            }
            return .array(modifiedArray)
        }
        return jsonValue
    }
    
    public func encode(to encoder: Encoder) throws {
        print("Encoder \(encoder)")
        var x = encoder.unkeyedContainer()
        try x.encode(values)
    }
    
    public func jsonValue(for key: String) -> Any?? {
        if key == "id" {
            return id
        }
        switch values[key] {
        case .some(.array(let deserializedValue)):
            return deserializedValue
        case .some(.boolean(let deserializedValue)):
            return deserializedValue
        case .some(.number(let deserializedValue)):
            return deserializedValue
        case .some(.object(let deserializedValue)):
            return deserializedValue
        case .some(.string(let deserializedValue)):
            return deserializedValue
        case .some(.null):
            return nil
        case .none:
            return nil
        }
    }
    
    public func jsonValue(for key: String, modelSchema: ModelSchema) -> Any?? {
        let field = modelSchema.field(withName: key)
        if case .int = field?.type,
           case .some(.number(let deserializedValue)) = values[key] {
            return Int(deserializedValue)
            
        } else if case .dateTime = field?.type,
                  case .some(.string(let deserializedValue)) = values[key] {
            
            return try? Temporal.DateTime(iso8601String: deserializedValue)
            
        } else if case .date = field?.type,
                  case .some(.string(let deserializedValue)) = values[key] {
            return try? Temporal.Date(iso8601String: deserializedValue)
            
        } else if case .time = field?.type,
                  case .some(.string(let deserializedValue)) = values[key] {
            return try? Temporal.Time(iso8601String: deserializedValue)
        }
        else if case  .timestamp = field?.type,
                  case .some(.number(let deserializedValue)) = values[key] {
            return NSNumber(value: deserializedValue)
        }

        
        return jsonValue(for: key)
    }
    
    private func generateSerializedData(modelSchema: ModelSchema) -> [String: Any]{
        
        var result = [String: Any]()
                
        for(key, value) in values {
            
            let field = modelSchema.field(withName: key)
            
            if(value == nil){
                continue
            }
            if case .model = field?.type{

                let map = jsonValue(for: key, modelSchema: modelSchema) as! [String: JSONValue]
                if case .string(let deserializedValue) = map["id"],
                    case .model(let name) = field!.type
                    {
                    result[key] = [
                        "id": deserializedValue,
                        "modelName": name,
                        "serializedData": [
                            "id": deserializedValue
                        ]
                    ]
                }
    
            }
            else if case .collection = field?.type{
                continue
            }
            else if case .dateTime = field?.type,
                case .some(.string(let deserializedValue)) = values[key] {

                result[key] = deserializedValue
            }
            else if case .date = field?.type,
                case .some(.string(let deserializedValue)) = values[key] {

                // Date returned in form : yyyy-mm-ddZ.  dropLast removes the Z
                result[key] = String(deserializedValue.dropLast())
            }
            else if case .time = field?.type,
                case .some(.string(let deserializedValue)) = values[key] {

                // Date returned in form : hh-mm-ss-ssssZ.  dropLast removes the Z
                result[key] = String(deserializedValue.dropLast())
            }
            else if case .timestamp = field?.type,
                case .some(.number(let deserializedValue)) = values[key] {
                
                result[key] = NSNumber(value: Int(deserializedValue) )
            }
            else{
                result[key] = jsonValue(for: key, modelSchema: modelSchema)!
            }
        }
        
        return result;
    }
    
    public func toMap(modelSchema: ModelSchema) -> [String: Any] {
        return [
            "id": id,
            "modelName": modelSchema.name,
            "serializedData": generateSerializedData(modelSchema: modelSchema)
        ]
    }
}

extension FlutterSerializedModel {

    public enum CodingKeys: String, ModelKey {
        case id
        case values
    }

    public static let keys = CodingKeys.self
}
