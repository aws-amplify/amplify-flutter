// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Flutter
import Foundation
import Amplify

public struct FlutterSerializedModel: Model, ModelIdentifiable, JSONValueHolder {
    public typealias IdentifierFormat = ModelIdentifierFormat.Custom
    public typealias IdentifierProtocol = ModelIdentifier<FlutterSerializedModel, ModelIdentifierFormat.Custom>

    public var values: [String: JSONValue]
    var _modelName: String

    public var modelName: String {
        _modelName
    }

    public init(map: [String: JSONValue], modelName: String) {
        self.values = map
        self._modelName = modelName
    }

    public init(from decoder: Decoder) throws {
        let json = try JSONValue(from: decoder)
        let typeName = json["__typename"]
        let modified = FlutterSerializedModel.removeReservedNames(json)

        self._modelName = try { () -> String in
            switch typeName {
            case .some(.string(let deserializedValue)):
                return deserializedValue
            default:
                throw DataStoreError.decodingError(
                    "__typename was missing decoding JSON payload to FlutterSerializedModel",
                    "please open an issue at https://github.com/aws-amplify/amplify-flutter/issues"
                )
            }
        }()

        if case .object(var v) = modified {
            v["__typename"] = typeName
            values = v
        } else {
            self.values = [:]
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
            var modifiedArray: [JSONValue] = []
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
        return FlutterSerializedModel.extractJsonValue(value: values[key])
    }

    public func jsonValue(for key: String, modelSchema: ModelSchema) -> Any?? {
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
            if returnTemporalType {
                return FlutterTemporal(iso8601String: deserializedValue)
            }
            // Else returning value to be serialized to Flutter layer
            else{
                return deserializedValue
            }

        case (.timestamp, .number(let deserializedValue)):
            return Int(deserializedValue)
        default:
            return extractJsonValue(value: value)
        }
    }

    private static func deserializeValue(value: JSONValue?, fieldType: Codable.Type) -> Any?? {
        if fieldType is Int.Type,
           case .some(.number(let deserializedValue)) = value
        {
            return Int(deserializedValue)
        } else if fieldType is Temporal.DateTime.Type,
                  case .some(.string(let deserializedValue)) = value
        {
            return deserializedValue
        } else if fieldType is Temporal.Date.Type,
                  case .some(.string(let deserializedValue)) = value
        {
            return deserializedValue
        } else if fieldType is Temporal.Time.Type,
                  case .some(.string(let deserializedValue)) = value
        {
            return deserializedValue
        } else if fieldType is Int64.Type,
                  case .some(.number(let deserializedValue)) = value
        {
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
            do {
                return try FlutterDataStoreRequestUtils.getCustomTypeSchema(customTypeSchemaRegistry: customTypeSchemaRegistry, modelName: modelName)
            } catch DataStoreError.decodingError {
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

    private static func generateSerializedData(
        values: [String: JSONValue],
        modelSchemaRegistry: FlutterSchemaRegistry,
        customTypeSchemaRegistry: FlutterSchemaRegistry,
        modelName: String
    ) throws -> [String: Any] {
        let modelSchema = try FlutterSerializedModel.getSchema(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemaRegistry,
            modelName: modelName
        )
        var result = [String: Any]()

        for (key, value) in values {
            let field = modelSchema.field(withName: key)

            if value == nil{
                continue
            }

            if case let .object(deserializedValue) = value {
                // If a field that has many models
                if deserializedValue["associatedField"] != nil && deserializedValue["associatedId"] != nil {
                    result[key] = nil
                }
                // If a field that has one or belongs to a model
                else if case .model(let nextModelName) = field!.type {
                    let attachNestedModel = try FlutterSerializedModel.hasValidNestedModelData(
                        modelName: nextModelName,
                        nestedModelData: deserializedValue,
                        modelSchemaRegistry: modelSchemaRegistry,
                        customTypeSchemaRegistry: customTypeSchemaRegistry
                    )

                    if !attachNestedModel {
                        continue
                    }

                    result[key] = [
                        "modelName": nextModelName,
                        "serializedData": try generateSerializedData(
                            values: deserializedValue,
                            modelSchemaRegistry: modelSchemaRegistry,
                            customTypeSchemaRegistry: customTypeSchemaRegistry,
                            modelName: nextModelName
                        )
                    ]
                }
                // if a field has a single CustomType value presented as JSONValue.object
                else if case .embedded(_, .some(let customTypeSchema)) = field?.type,
                        case .some(.object(let deserializedValue)) = values[key]
                {
                    let customTypeName = customTypeSchema.name
                    result[key] = [
                        "customTypeName": customTypeName,
                        "serializedData": try FlutterSerializedModel.generateSerializedData(
                            values: deserializedValue,
                            modelSchemaRegistry: modelSchemaRegistry,
                            customTypeSchemaRegistry: customTypeSchemaRegistry,
                            modelName: customTypeName
                        )
                    ]
                }
            } else if case .collection = field?.type{
                continue
            } else if case .embeddedCollection(let fieldType, _) = field?.type,
                      case .array(let jsonArray) = value
            {
                var deserializedArray: [Any??] = []
                for item in jsonArray {
                    if case .object(let deserializedItem) = item,
                       case .embeddedCollection(_, .some(let customTypeSchema)) = field?.type
                    {
                        let customTypeName = customTypeSchema.name
                        deserializedArray.append([
                            "customTypeName": customTypeName,
                            "serializedData": try FlutterSerializedModel.generateSerializedData(
                                values: deserializedItem,
                                modelSchemaRegistry: modelSchemaRegistry,
                                customTypeSchemaRegistry: customTypeSchemaRegistry,
                                modelName: customTypeName
                            )
                        ])
                    } else {
                        deserializedArray.append(deserializeValue(value: item, fieldType: fieldType))
                    }
                }
                result[key] = deserializedArray
            } else {
                result[key] = extractJsonValue(key: key, value: values[key], modelSchema: modelSchema, returnTemporalType: false)!
            }
        }

        return result
    }

    private static func hasValidNestedModelData(
        modelName: String,
        nestedModelData: [String: JSONValue?],
        modelSchemaRegistry: FlutterSchemaRegistry,
        customTypeSchemaRegistry: FlutterSchemaRegistry
    ) throws -> Bool {
        let modelSchema = try FlutterSerializedModel.getSchema(
            modelSchemaRegistry: modelSchemaRegistry,
            customTypeSchemaRegistry: customTypeSchemaRegistry,
            modelName: modelName
        )

        return modelSchema.primaryKey.fields
            .map { $0.name }
            .allSatisfy {
                guard let value = nestedModelData[$0] else {
                    return false
                }

                if case .null = value {
                    return false
                }

                return true
            }
    }

    public func toMap(
        modelSchemaRegistry: FlutterSchemaRegistry,
        customTypeSchemaRegistry: FlutterSchemaRegistry,
        modelName: String
    ) throws -> [String: Any] {
        return [
            "modelName": modelName,
            "serializedData": try FlutterSerializedModel.generateSerializedData(
                values: values,
                modelSchemaRegistry: modelSchemaRegistry,
                customTypeSchemaRegistry: customTypeSchemaRegistry,
                modelName: modelName
            )
        ]
    }
}

public extension FlutterSerializedModel {
    enum CodingKeys: String, ModelKey {
        case values
    }

    static let keys = CodingKeys.self
}
