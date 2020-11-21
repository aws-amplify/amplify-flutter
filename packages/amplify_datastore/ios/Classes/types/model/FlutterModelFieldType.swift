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

public struct FlutterModelFieldType {
    public let fieldType : String
    public let ofModelName : String?
    
    
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
        
    }
    
    public func convertToNativeModelField() throws -> ModelFieldType {
        
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
                return ModelFieldType.collection(of: ofModelName)
            default:
                preconditionFailure("Could not create a ModelFieldType from \(fieldType)")
        }
    }
}
