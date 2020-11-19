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

public struct FlutterModelField {
    
    public let name: String
    public let type: ModelFieldType
    public let isRequired: Bool
    public let isArray: Bool
    public let attributes: [ModelFieldAttribute] = []
    public let association: ModelAssociation? = nil
    public let authRules: AuthRules = []
    
    init(serializedData: [String: Any]) {
        self.name = serializedData["name"] as! String
        self.type = ModelFieldType.from(type: FlutterModelField.deserializeFieldType(type: serializedData["type"] as! String))
        self.isRequired = serializedData["isRequired"] as! Bool
        self.isArray = serializedData["isArray"] as! Bool
    }
    
    static func deserializeFieldType(type: String) -> Any.Type {
        if type == "String" {
            return String.self
        }
        if type == "Integer" {
            return Int64.self
        }
        if type == "Double" {
            return Double.self
        }
        if type == "Boolean" {
            return Bool.self
        }
        if type == "DateTime" {
            return String.self
        }
        if type == "Time" {
            return String.self
        }
        if type == "Date" {
            return String.self
        }
        // TODO: Serialize all fields when we do configure()
        //        if let enumType = type as? EnumPersistable.Type {
        //            return .enum(type: enumType)
        //        }
        //        if let modelType = type as? Model.Type {
        //            return .model(name: modelType.modelName)
        //        }
        //        if let embeddedType = type as? Codable.Type {
        //            return .embedded(type: embeddedType, schema: nil)
        //        }
        preconditionFailure("Could not create a ModelFieldType from \(String(describing: type)) MetaType")
    }
    
public func convertToNativeModelField() -> ModelField {
        return ModelField.init(
            name: name,
            type: type,
            isRequired: isRequired,
            isArray: isArray,
            attributes: attributes,
            association: association,
            authRules: authRules)
    }
}

typealias FlutterModelFields = [String: FlutterModelField]
