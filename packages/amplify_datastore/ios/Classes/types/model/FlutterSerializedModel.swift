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
    
    internal func jsonValue(for key: String) -> Any?? {
        return FlutterSerializedModel.extractJsonValue(value: values[key])
    }

    internal func jsonValue(for key: String, modelSchema: ModelSchema) -> Any?? {
        return FlutterSerializedModel.extractJsonValue(key: key, value: values[key], modelSchema: modelSchema)
    }
    
    private static func extractJsonValue(value: JSONValue?) -> Any?? {
        guard let value = value else { return nil }
        
        switch value {
        case .array(let deserializedValue):
            return deserializedValue
        case .boolean(let deserializedValue):
            return deserializedValue
        case .number(let deserializedValue):
            return deserializedValue
        case .object(let deserializedValue):
            return deserializedValue
        case .string(let deserializedValue):
            return deserializedValue
        case .null:
            return nil
        }
    }
    
    private static func extractJsonValue(key: String, value: JSONValue?, modelSchema: ModelSchema, returnTemporalType: Bool = true) -> Any?? {
        
        let field = modelSchema.field(withName: key)
            switch (field?.type, value) {
                case (.int, .number(let deserializedValue)):
                    return Int(deserializedValue)
                case (.dateTime, .string(let deserializedValue)), (.date, .string(let deserializedValue)), (.time, .string(let deserializedValue)):
                    
                    // If returning value for Amplify iOS library return FlutterTemporal
                    if(returnTemporalType) {
                        return FlutterTemporal(iso8601String: deserializedValue)
                    }
                    // Else returning value to be serialized to Flutter layer
                    else{
                        return deserializedValue
                    }
                    
                case (.timestamp, .number(let deserializedValue)):
                    return Int(deserializedValue)
                default:
                    return extractJsonValue(value: value);
            }
    }
    
    private static func deserializeValue(value: JSONValue?, fieldType: Codable.Type) -> Any?? {
        
        if fieldType is Int.Type,
           case .some(.number(let deserializedValue)) = value {
            return Int(deserializedValue)
        } else if fieldType is Temporal.DateTime.Type,
                  case .some(.string(let deserializedValue)) = value {
            return deserializedValue
        } else if fieldType is Temporal.Date.Type,
                  case .some(.string(let deserializedValue)) = value {
            return deserializedValue
        } else if fieldType is Temporal.Time.Type,
                  case .some(.string(let deserializedValue)) = value {
            return deserializedValue
        } else if fieldType is Int64.Type,
                  case .some(.number(let deserializedValue)) = value {
            return Int(deserializedValue)
        }

        // Rest of the fields get deserialized as is
        switch value {
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
        default:
            return nil
        }
    }

    private static func getModelSchema(flutterModelRegistration: FlutterModels, modelName: String) throws -> ModelSchema {
        do {
            return try FlutterDataStoreRequestUtils.getModelSchema(modelSchemas: flutterModelRegistration.modelSchemas, modelName: modelName)
        } catch let error as DataStoreError {
            print("Model \(modelName) is not registered.")
            throw error
        } catch {
            print("An unexpected error occured when deserializing data model: \(modelName)")
            throw error
        }
    }
    
    private static func generateSerializedData(values: [String: JSONValue], flutterModelRegistration: FlutterModels, modelName: String) throws -> [String: Any]{
        let modelSchema = try FlutterSerializedModel.getModelSchema(flutterModelRegistration: flutterModelRegistration, modelName: modelName)
        var result = [String: Any]()

        for(key, value) in values {
            let field = modelSchema.field(withName: key)

            if(value == nil){
                continue
            }

            if case .object(let deserializedValue) = value {
               // If a field that has many models
               if (deserializedValue["associatedField"] != nil && deserializedValue["associatedId"] != nil) {
                   result[key] = nil;
               }
               // If a field that has one or belongs to a model
               else if case .string(let modelId) = deserializedValue["id"],
                       case .model(let nextModelName) = field!.type {
                   result[key] = [
                       "id": modelId,
                       "modelName": nextModelName,
                       "serializedData": try generateSerializedData(values: deserializedValue, flutterModelRegistration: flutterModelRegistration, modelName: nextModelName)
                   ]
               }
            }
            
            else if case .collection = field?.type{
                continue
            } else if case .embeddedCollection(let fieldType, _) = field?.type{
                if case .array(let jsonArray) = value {
                    result[key] = jsonArray.map {
                        deserializeValue(value: $0, fieldType: fieldType)
                    }
                }
            }
            else {
                result[key] = extractJsonValue(key: key, value: values[key], modelSchema: modelSchema, returnTemporalType: false)!
            }
        }

        return result;
    }
    
    public func toMap(flutterModelRegistration: FlutterModels, modelName: String) throws -> [String: Any] {
        return [
            "id": id,
            "modelName": modelName,
            "serializedData": try FlutterSerializedModel.generateSerializedData(values: self.values, flutterModelRegistration: flutterModelRegistration, modelName: modelName)
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
