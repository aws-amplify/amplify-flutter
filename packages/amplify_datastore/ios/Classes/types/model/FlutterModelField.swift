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
    public let type: FlutterModelFieldType
    public let isRequired: Bool
    public let isArray: Bool
    public let isReadOnly: Bool
    public let association: FlutterModelAssociation?
    public let authRules: [FlutterAuthRule]?
    
    init(serializedData: [String: Any]) throws {

        guard let name = serializedData["name"] as? String
        else {
            throw ModelSchemaError.parse(
                className: "FlutterModelField",
                fieldName: "name",
                desiredType: "String")
        }
        self.name = name

        guard let inputTypeMap = serializedData["type"] as? [String: Any] else {
            throw ModelSchemaError.parse(
                className: "FlutterModelField",
                fieldName: "type",
                desiredType: "[String: Any]")
        }
        self.type = try FlutterModelFieldType(serializedData: inputTypeMap)

        guard let isRequired = serializedData["isRequired"] as? Bool
        else {
            throw ModelSchemaError.parse(
                className: "FlutterModelField",
                fieldName: "isRequired",
                desiredType: "Bool")
        }
        self.isRequired = isRequired

        guard let isArray = serializedData["isArray"] as? Bool
        else {
            throw ModelSchemaError.parse(
                className: "FlutterModelField",
                fieldName: "isArray",
                desiredType: "Bool")
        }
        self.isArray = isArray
        
        guard let isReadOnly = serializedData["isReadOnly"] as? Bool
        else {
            throw ModelSchemaError.parse(
                className: "FlutterModelField",
                fieldName: "isReadOnly",
                desiredType: "Bool")
        }
        self.isReadOnly = isReadOnly

        if let inputAssociationMap = serializedData["association"] as? [String : Any]{
            self.association = try FlutterModelAssociation(serializedData: inputAssociationMap)
        }
        else{
            self.association = nil
        }

        if let inputAuthRulesMap = serializedData["authRules"] as? [[String:String]]{
            self.authRules = try inputAuthRulesMap.map{
                try FlutterAuthRule(serializedData: $0)
            }
        }
        else{
            self.authRules = nil
        }
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

    private func convertFlutterAuthRules(flutterAuthRules : [FlutterAuthRule]?) -> [AuthRule]?{

        if let flutterAuthRules = flutterAuthRules{
            var result: [AuthRule] = [AuthRule]();

            for flutterAuthRule in flutterAuthRules {
                result.append( flutterAuthRule.convertToNativeAuthRule() );
            }

            return result;
        }
        else{
            return nil;
        }
    }

    public func convertToNativeModelField(customTypeSchemasRegistry: FlutterSchemaRegistry) throws -> ModelField {
        return ModelField.init(
            name: name,
            type: try type.convertToNativeModelField(customTypeSchemaRegistry: customTypeSchemasRegistry),
            isRequired: isRequired,
            isReadOnly: isReadOnly,
            isArray: isArray,
            association: association?.convertToNativeModelAssociation(),
            authRules: authRules?.map{
                $0.convertToNativeAuthRule()
                } ?? [AuthRule]()
        )
    }

}

typealias FlutterModelFields = [String: FlutterModelField]
