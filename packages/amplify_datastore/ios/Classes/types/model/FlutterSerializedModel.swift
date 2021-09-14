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
            return FlutterTemporal(iso8601String: deserializedValue)
        } else if case .date = field?.type,
                  case .some(.string(let deserializedValue)) = values[key] {
            return FlutterTemporal(iso8601String: deserializedValue)
        } else if case .time = field?.type,
                  case .some(.string(let deserializedValue)) = values[key] {
            return FlutterTemporal(iso8601String: deserializedValue)
        } else if case .timestamp = field?.type,
                case .some(.number(let deserializedValue)) = values[key] {
            return NSNumber(value: deserializedValue)
        }
        
        return jsonValue(for: key)
    }
    
    private static func deserializeValue(value: JSONValue?, fieldType: Codable.Type?) -> Any? {
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

    private static func getSchema(
        modelSchemaRegistry: FlutterSchemaRegistry,
        customTypeSchemaRegistry: FlutterSchemaRegistry,
        modelName: String
    ) throws -> ModelSchema {
        do {
            return try FlutterDataStoreRequestUtils.getModelSchema(modelSchemaRegistry: modelSchemaRegistry, modelName: modelName)
        } catch DataStoreError.decodingError {
            print("Schema \(modelName) is not registered as ModelSchema in ModelProvider.")
            do {
                return try FlutterDataStoreRequestUtils.getCustomTypeSchema(customTypeSchemaRegistry: customTypeSchemaRegistry, modelName: modelName)
            } catch DataStoreError.decodingError {
                print("Schema \(modelName) is not registered as CustomTypeSchema in ModelProvider.")
                throw DataStoreError.decodingError(
                    "Schema for \(modelName) is not registered as ModelSchema or CustomTypeSchema.",
                    "Please ensure all schemas are correctly registered."
                )
            } catch {
                print("An unexpected error occured when deserializing data model: \(modelName)")
                throw error
            }
        } catch {
            print("An unexpected error occured when deserializing data model: \(modelName)")
            throw error
        }
    }

    private static func generateSerializedJsonData(
        values: [String: JSONValue],
        modelSchemaRegistry: FlutterSchemaRegistry,
        customTypeSchemaRegistry: FlutterSchemaRegistry,
        modelName: String
    ) throws -> [String: Any] {
        let schema = try getSchema(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemaRegistry,
            modelName: modelName
        )
        var result = [String: Any]()

        for (key, value) in values {
            let field = schema.field(withName: key)
            if case .object(let deserializedValue) = value {
                // If a field that has many models
                if (deserializedValue["associatedField"] != nil && deserializedValue["associatedId"] != nil) {
                    result[key] = Array<Any>();
                }
                // If a field that has one or belongs to a model
                else if case .string(let modelId) = deserializedValue["id"],
                        case .model(let nextModelName) = field!.type {
                    result[key] = [
                        "id": modelId,
                        "modelName": nextModelName,
                        "serializedData": try generateSerializedJsonData(
                            values: deserializedValue,
                            modelSchemaRegistry: modelSchemaRegistry,
                            customTypeSchemaRegistry: customTypeSchemaRegistry,
                            modelName: nextModelName
                        )
                    ]
                }
                // if embedded
                else if case .embedded(_, .some(let customTypeSchema)) = field?.type {
                    let customTypeName = customTypeSchema.name
                    result[key] = [
                        "customTypeName": customTypeName,
                        "serializedData": try FlutterSerializedModel.generateSerializedJsonData(
                            values: deserializedValue,
                            modelSchemaRegistry: modelSchemaRegistry,
                            customTypeSchemaRegistry: customTypeSchemaRegistry,
                            modelName: customTypeName
                        )
                    ]
                }
            } else if case .array(let jsonArray)  = value {
                var modifiedArray:[Any?] = []
                for item in jsonArray {
                    // List of CustomType
                    if case .object(let deserializedItem) = item,
                       case .embeddedCollection(_, .some(let customTypeSchema)) = field?.type {
                        let customTypeName = customTypeSchema.name
                        let parsedItem = [
                            "customTypeName": customTypeName,
                            "serializedData": try FlutterSerializedModel.generateSerializedJsonData(
                                values: deserializedItem,
                                modelSchemaRegistry: modelSchemaRegistry,
                                customTypeSchemaRegistry: customTypeSchemaRegistry,
                                modelName: customTypeName
                            )
                        ] as [String : Any]
                        modifiedArray.append(parsedItem)
                    }
                    // List of primitve types e.g. [String]
                    else {
                        modifiedArray.append(FlutterSerializedModel.deserializeValue(value: item, fieldType: nil))
                    }
                }
                result[key] = modifiedArray
            } else if case .string(let deserializedValue) = value {
                result[key] = deserializedValue
            } else if case .boolean(let deserializedValue) = value {
                result[key] = deserializedValue
            } else if case .number(let deserializedValue) = value {
                result[key] = deserializedValue
            } else if case .null = value {
                result[key] = nil
            }
        }

        return result;
    }

    private func generateSerializedData(
        modelSchemaRegistry: FlutterSchemaRegistry,
        customTypeSchemaRegistry: FlutterSchemaRegistry,
        modelName: String
    ) throws -> [String: Any]{
        let modelSchema = try FlutterSerializedModel.getSchema(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemaRegistry,
            modelName: modelName
        )
        var result = [String: Any]()

        for(key, value) in values {
            let field = modelSchema.field(withName: key)
            
            if(value == nil){
                continue
            }
            if case .model = field?.type {
                let map = jsonValue(for: key, modelSchema: modelSchema) as! [String: JSONValue]
                if case .string(let modelId) = map["id"],
                   case .model(let modelName) = field!.type
                {
                    result[key] = [
                        "id": modelId,
                        "modelName": modelName,
                        "serializedData": try FlutterSerializedModel.generateSerializedJsonData(
                            values: map,
                            modelSchemaRegistry: modelSchemaRegistry,
                            customTypeSchemaRegistry: customTypeSchemaRegistry,
                            modelName: modelName
                        )
                    ]
                }
            } else if case .collection = field?.type{
                continue
            } else if case .dateTime = field?.type,
                    case .some(.string(let deserializedValue)) = values[key] {

                result[key] = deserializedValue
            } else if case .date = field?.type,
                    case .some(.string(let deserializedValue)) = values[key] {

                result[key] = deserializedValue
            } else if case .time = field?.type,
                    case .some(.string(let deserializedValue)) = values[key] {

                result[key] = deserializedValue
            } else if case .timestamp = field?.type,
                    case .some(.number(let deserializedValue)) = values[key] {
                
                result[key] = NSNumber(value: Int(deserializedValue) )
            }
            else if case .embedded(_, .some(let customTypeScheam)) = field?.type,
                case .some(.object(let deserializedValue)) = values[key] {
                let customTypeName = customTypeScheam.name
                result[key] = [
                    "customTypeName": customTypeName,
                    "serializedData": try FlutterSerializedModel.generateSerializedJsonData(
                        values: deserializedValue,
                        modelSchemaRegistry: modelSchemaRegistry,
                        customTypeSchemaRegistry: customTypeSchemaRegistry,
                        modelName: customTypeName
                    )
                ]
            } else if case .embeddedCollection = field?.type {
                if case .array(let jsonArray) = value {
                    var modifiedArray:[Any?] = []
                    for item in jsonArray {
                        // List of CustomType
                        if case .object(let deserializedItem) = item,
                           case .embeddedCollection(_, .some(let customTypeSchema)) = field?.type {
                            let customTypeName = customTypeSchema.name
                            let parsedItem = [
                                "customTypeName": customTypeName,
                                "serializedData": try FlutterSerializedModel.generateSerializedJsonData(
                                    values: deserializedItem,
                                    modelSchemaRegistry: modelSchemaRegistry,
                                    customTypeSchemaRegistry: customTypeSchemaRegistry,
                                    modelName: customTypeName
                                )
                            ] as [String : Any]
                            modifiedArray.append(parsedItem)
                        }
                        // List of primitve types e.g. [String]
                        else {
                            modifiedArray.append(FlutterSerializedModel.deserializeValue(value: item, fieldType: nil))
                        }
                    }
                    result[key] = modifiedArray
                }
            } else{
                result[key] = jsonValue(for: key, modelSchema: modelSchema)!
            }
        }

        return result;
    }
    
    public func toMap(
        modelSchemaRegistry: FlutterSchemaRegistry,
        customTypeSchemaRegistry: FlutterSchemaRegistry,
        modelName: String
    ) throws -> [String: Any] {
        return [
            "id": id,
            "modelName": modelName,
            "serializedData": try generateSerializedData(
                modelSchemaRegistry: modelSchemaRegistry,
                customTypeSchemaRegistry: customTypeSchemaRegistry,
                modelName: modelName
            )
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
