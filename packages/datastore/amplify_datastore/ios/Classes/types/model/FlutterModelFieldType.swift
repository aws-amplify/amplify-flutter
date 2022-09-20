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
import amplify_flutter_ios

public struct FlutterModelFieldType {
    public let fieldType : String
    public let ofModelName : String?
    public let ofCustomTypeName: String?
    
    
    init(serializedData: [String: Any]) throws {
        
        guard let fieldType = serializedData["fieldType"] as? String
        else {
            throw ModelSchemaError.parse(
                className: "FlutterModelFieldType",
                fieldName: "fieldType",
                desiredType: "String")
        }
        self.fieldType = fieldType
        
        self.ofModelName = serializedData["ofModelName"] as? String
        self.ofCustomTypeName = serializedData["ofCustomTypeName"] as? String
    }
    
    public func convertToNativeModelField(customTypeSchemaRegistry: FlutterSchemaRegistry) throws -> ModelFieldType {
        
        switch fieldType {
            case "string":
                return ModelFieldType.string
            case "int":
                return ModelFieldType.int
            case "double":
                return ModelFieldType.double
            case "date":
                return ModelFieldType.date
            case "dateTime":
                return ModelFieldType.dateTime
            case "time":
                return ModelFieldType.time
            case "timestamp":
                return ModelFieldType.timestamp
            case "bool":
                return ModelFieldType.bool
            case "enumeration":
                return ModelFieldType.string
            case "model":
                guard let ofModelName = ofModelName
                else {
                    throw ModelSchemaError.parse(
                        className: "FlutterModelFieldType",
                        fieldName: "ofModelName",
                        desiredType: "String")
                }
                return ModelFieldType.model(name: ofModelName)
            case "collection" :
                guard let ofModelName = ofModelName
                else {
                    throw ModelSchemaError.parse(
                        className: "FlutterModelFieldType",
                        fieldName: "ofModelName",
                        desiredType: "String")
                }
                do {
                    let embeddedType = try getPrimitiveTypeForEmbeddedCollection(typeName: ofModelName)
                    return ModelFieldType.embeddedCollection(of: embeddedType, schema: nil)
                } catch {
                    return ModelFieldType.collection(of: ofModelName)
                }
            case "embedded":
                guard let customTypeName = self.ofCustomTypeName else {
                    throw FlutterDataStoreError.acquireSchemaForHub
                }
                // For embedded CustomType, link its schema to the FieldType
                return ModelFieldType.embedded(
                    type: JSONValue.self,
                    schema: try FlutterDataStoreRequestUtils.getCustomTypeSchema(
                        customTypeSchemaRegistry: customTypeSchemaRegistry,
                        modelName: customTypeName
                    )
                )
            case "embeddedCollection":
                guard let customTypeName = self.ofCustomTypeName else {
                    throw FlutterDataStoreError.acquireSchemaForHub
                }
                // For embedded CustomType, link its schema to the FieldType
                // embeddedCollection may also present a list of primitive type e.g. [String]
                // there won't be a schema to be linked for primitive types
                return ModelFieldType.embeddedCollection(
                    of: JSONValue.self,
                    schema: try FlutterDataStoreRequestUtils.getCustomTypeSchema(
                        customTypeSchemaRegistry: customTypeSchemaRegistry,
                        modelName: customTypeName
                    )
                )
            default:
                preconditionFailure("Could not create a ModelFieldType from \(fieldType)")
        }
    }

    func getPrimitiveTypeForEmbeddedCollection(typeName: String) throws -> Codable.Type {
        switch typeName {
        case "int":
            return Int.self
        case "string":
            return String.self
        case "double":
            return Double.self
        case "bool":
            return Bool.self
        case "dateTime":
            return Temporal.DateTime.self
        case "time":
            return Temporal.Time.self
        case "date":
            return Temporal.Date.self
        case "timestamp":
            return Int64.self
        case "enumeration":
            return String.self
        default:
            throw DataStoreError.decodingError(typeName + "is not a known primitive type",
                                               ErrorMessages.missingRecoverySuggestion)
        }
    }
}
